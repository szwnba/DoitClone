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

/** 任务列表适配器：支持分组头、完成态、优先级条、逾期标红 */
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

        val subtitleParts = mutableListOf<String>()
        task.startAt?.let { st ->
            subtitleParts.add(
                if (task.allDay) DateUtils.friendlyDate(st, dateFormat)
                else DateUtils.friendlyDate(st, dateFormat) + " " + DateUtils.formatTime(st)
            )
        }
        task.endAt?.let { en ->
            val text = "截止 " + DateUtils.friendlyDate(en, dateFormat) +
                if (task.allDay.not()) " " + DateUtils.formatTime(en) else ""
            subtitleParts.add(text)
        }
        row.projectName?.let { subtitleParts.add(it) }
        row.contextName?.let { subtitleParts.add("@$it") }
        task.tags?.takeIf { it.isNotBlank() }?.split(",")?.filter { it.isNotBlank() }
            ?.forEach { subtitleParts.add("#$it") }
        b.taskSubtitle.text = subtitleParts.joinToString(" · ")
        b.taskSubtitle.visibility = if (subtitleParts.isEmpty()) View.GONE else View.VISIBLE

        if (task.endAt != null && !task.completed && task.endAt < System.currentTimeMillis()) {
            b.taskDue.text = "逾期"
            b.taskDue.setTextColor(ContextCompat.getColor(b.root.context, R.color.overdue))
        } else {
            b.taskDue.text = null
        }

        b.taskCheckbox.isChecked = task.completed
        b.priorityBar.setBackgroundColor(Priority.colorRes(task.priority))

        b.taskCheckbox.setOnClickListener { listener.onToggle(task) }
        b.root.setOnClickListener { listener.onClick(task) }
        b.root.setOnLongClickListener { listener.onLongClick(task); true }
    }

    companion object {
        private const val TYPE_HEADER = 0
        private const val TYPE_TASK = 1
    }
}
