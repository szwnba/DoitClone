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
import com.doit.clone.model.BoxType
import com.doit.clone.model.Priority
import com.doit.clone.util.DateUtils

/**
 * 任务列表适配器：还原原版 layout_listview_task + TaskViewHolder 行为——
 * 今日/下一步箱显示"立即处理"圆钮，其他箱显示完成复选框；
 * 明日/日程箱显示"移到今天"按钮；多选模式下复选框变为选择指示器。
 */
class TaskListAdapter(
    private val listener: Listener,
    private val dateFormat: String,
    private val box: BoxType
) : ListAdapter<Row, RecyclerView.ViewHolder>(DIFF) {

    interface Listener {
        fun onToggle(task: TaskEntity)                 // 完成或立即处理（按箱子）
        fun onMarkToday(task: TaskEntity)              // 移到今天
        fun onClick(task: TaskEntity)                  // 打开详情
        fun onLongClick(task: TaskEntity)              // 进入多选
        fun onSelectionChanged(count: Int)             // 多选数量变化
    }

    /** 多选状态（由 Fragment 驱动） */
    var selectionMode: Boolean = false
        private set
    val selected: MutableSet<String> = mutableSetOf()

    fun startSelection(task: TaskEntity) {
        selectionMode = true
        selected.clear()
        selected.add(task.uuid)
        notifyDataSetChanged()
        listener.onSelectionChanged(selected.size)
    }

    fun stopSelection() {
        selectionMode = false
        selected.clear()
        notifyDataSetChanged()
        listener.onSelectionChanged(0)
    }

    fun selectAll() {
        currentList.filterIsInstance<Row.TaskRow>().forEach { selected.add(it.task.uuid) }
        notifyDataSetChanged()
        listener.onSelectionChanged(selected.size)
    }

    private fun toggleSelection(task: TaskEntity) {
        if (selected.contains(task.uuid)) selected.remove(task.uuid) else selected.add(task.uuid)
        if (selected.isEmpty()) {
            // 全部取消选择则退出多选
            selectionMode = false
        }
        notifyDataSetChanged()
        listener.onSelectionChanged(selected.size)
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
            is Row.Header -> {
                val b = (holder as HeaderVH).b
                b.headerTitle.text = row.label
                b.headerCount.text = if (row.count > 0) row.count.toString() else ""
            }
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

        // 属性行：还原原版 setRepeatViewContent/setStartAtViewContent——重复任务显示重复图标并隐藏开始时间
        val attrParts = mutableListOf<String>()
        if (task.repeater == null) {
            task.startAt?.let { st ->
                attrParts.add(
                    if (task.allDay) DateUtils.friendlyDate(st, dateFormat)
                    else DateUtils.friendlyDate(st, dateFormat) + " " + DateUtils.formatTime(st)
                )
            }
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

        // ===== 三按钮互斥（还原 TaskViewHolder 规则） =====
        val useDoitNow = !selectionMode && (box == BoxType.TODAY || box == BoxType.NEXT) && !task.completed
        b.doitnowBtn.visibility = if (useDoitNow) View.VISIBLE else View.GONE
        b.completeBtn.visibility = if (useDoitNow) View.GONE else View.VISIBLE
        b.markTodayBtn.visibility =
            if (!selectionMode && !task.completed &&
                (box == BoxType.TOMORROW || box == BoxType.SCHEDULED)
            ) View.VISIBLE else View.GONE

        if (selectionMode) {
            b.completeBtn.isSelected = selected.contains(task.uuid)
        } else if (useDoitNow) {
            b.doitnowBtn.isSelected = task.now
        } else {
            b.completeBtn.isSelected = task.completed
        }
        b.markTodayBtn.isSelected = false

        b.priorityBar.setBackgroundColor(priorityColor(b.root.context, task.priority))
        b.attrRepeat.visibility = if (task.repeater != null) View.VISIBLE else View.GONE
        b.notesIcon.visibility = if (!task.notes.isNullOrBlank()) View.VISIBLE else View.GONE

        // ===== 点击行为（还原原版：多选优先） =====
        b.doitnowBtn.setOnClickListener {
            if (selectionMode) toggleSelection(task) else listener.onToggle(task)
        }
        b.completeBtn.setOnClickListener {
            if (selectionMode) toggleSelection(task) else listener.onToggle(task)
        }
        b.markTodayBtn.setOnClickListener { listener.onMarkToday(task) }
        b.root.setOnClickListener {
            if (selectionMode) toggleSelection(task) else listener.onClick(task)
        }
        b.root.setOnLongClickListener {
            if (selectionMode) toggleSelection(task) else listener.onLongClick(task)
            true
        }
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
