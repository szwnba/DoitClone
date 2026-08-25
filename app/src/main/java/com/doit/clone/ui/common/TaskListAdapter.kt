package com.doit.clone.ui.common

import android.graphics.Paint
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.core.content.ContextCompat
import androidx.recyclerview.widget.DiffUtil
import androidx.recyclerview.widget.ListAdapter
import androidx.recyclerview.widget.RecyclerView
import com.doit.clone.R
import com.doit.clone.data.db.entity.TaskEntity
import com.doit.clone.databinding.ItemGroupHeaderBinding
import com.doit.clone.databinding.ItemTaskBinding
import com.doit.clone.model.Priority
import com.doit.clone.util.DateUtils

/**
 * 任务列表适配器：原版 layout_listview_task 结构——
 * 左侧优先级色条 + 复选框（原版图标）+ 标题 + 属性行（重复图标/时间/项目/截止）。
 */
class TaskListAdapter(
    private val listener: Listener,
    private val dateFormat: String
) : ListAdapter<Row, RecyclerView.ViewHolder>(DIFF) {

    interface Listener {
        fun onToggle(task: TaskEntity)
        fun onClick(task: TaskEntity)
        fun onLongClick(task: TaskEntity)
    }

    private object DIFF : DiffUtil.ItemCallback<Row>() {
        override fun areItemsTheSame(oldItem: Row, newItem: Row): Boolean = when {
            oldItem is Row.TaskRow && newItem is Row.TaskRow -> oldItem.task.uuid == newItem.task.uuid
            oldItem is Row.Header && newItem is Row.Header -> oldItem.key == newItem.key
            else -> false
        }

        override fun areContentsTheSame(oldItem: Row, newItem: Row): Boolean = oldItem == newItem
    }

    class HeaderVH(val b: ItemGroupHeaderBinding) : RecyclerView.ViewHolder(b.root)
    class TaskVH(val b: ItemTaskBinding) : RecyclerView.ViewHolder(b.root)

    override fun getItemViewType(position: Int): Int = when (getItem(position)) {
        is Row.Header -> TYPE_HEADER
        is Row.TaskRow -> TYPE_TASK
    }

    override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RecyclerView.ViewHolder =
        if (viewType == TYPE_HEADER) {
            HeaderVH(ItemGroupHeaderBinding.inflate(LayoutInflater.from(parent.context), parent, false))
        } else {
            TaskVH(ItemTaskBinding.inflate(LayoutInflater.from(parent.context), parent, false))
        }

    override fun onBindViewHolder(holder: RecyclerView.ViewHolder, position: Int) {
        when (val row = getItem(position)) {
            is Row.Header -> (holder as HeaderVH).b.headerTitle.text = row.label
            is Row.TaskRow -> bindTask(holder as TaskVH, row)
        }
    }

    private fun bindTask(holder: TaskVH, row: Row.TaskRow) {
        val b = holder.b
        val task = row.task

        b.taskTitle.text = task.title
        b.taskTitle.paintFlags = if (task.completed) {
            b.taskTitle.paintFlags or Paint.STRIKE_THRU_TEXT_FLAG
        } else {
            b.taskTitle.paintFlags and Paint.STRIKE_THRU_TEXT_FLAG.inv()
        }

        val attrParts = mutableListOf<String>()
        task.startAt?.let { st ->
            attrParts.add(
                if (task.allDay) DateUtils.friendlyDate(st, dateFormat)
                else DateUtils.friendlyDate(st, dateFormat) + " " + DateUtils.formatTime(st)
            )
        }
        row.contextName?.let { attrParts.add(it) }
        row.projectName?.let { attrParts.add(it) }
        task.tags?.takeIf { it.isNotBlank() }?.split(",")?.filter { it.isNotBlank() }
            ?.forEach { attrParts.add("#$it") }
        b.taskSubtitle.text = attrParts.joinToString("  ")

        if (task.endAt != null && !task.completed && task.endAt < System.currentTimeMillis()) {
            b.taskDue.text = "逾期"
            b.taskDue.setTextColor(ContextCompat.getColor(b.root.context, R.color.overdue))
        } else {
            b.taskDue.text = task.endAt?.let { "截止 " + DateUtils.friendlyDate(it, dateFormat) }
            b.taskDue.setTextColor(
                ContextCompat.getColor(b.root.context, R.color.task_list_item_attribute_normal_color)
            )
        }

        b.taskCheckbox.setImageResource(
            if (task.completed) R.drawable.icon_checkbox_completed else R.drawable.icon_checkbox_uncompleted
        )
        b.priorityBar.setBackgroundColor(priorityColor(b.root.context, task.priority))
        b.attrRepeat.visibility = if (task.repeater != null) View.VISIBLE else View.GONE
        b.notesIcon.visibility = if (!task.notes.isNullOrBlank()) View.VISIBLE else View.GONE

        b.taskCheckbox.setOnClickListener { listener.onToggle(task) }
        b.root.setOnClickListener { listener.onClick(task) }
        b.root.setOnLongClickListener { listener.onLongClick(task); true }
    }

    /** 原版优先级四色：高=橙红 中=蓝 低=浅蓝 无=灰 */
    private fun priorityColor(context: android.content.Context, value: Int): Int = when (value) {
        Priority.HIGH -> ContextCompat.getColor(context, R.color.pri_h)
        Priority.MIDDLE -> ContextCompat.getColor(context, R.color.pri_m)
        Priority.LOW -> ContextCompat.getColor(context, R.color.pri_l)
        else -> ContextCompat.getColor(context, R.color.pri_n)
    }

    companion object {
        private const val TYPE_HEADER = 0
        private const val TYPE_TASK = 1
    }
}
