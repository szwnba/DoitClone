package com.doit.clone.ui.home

import android.view.LayoutInflater
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.doit.clone.R
import com.doit.clone.data.repo.TaskRepository.BoxCounts
import com.doit.clone.databinding.ItemDrawerBoxBinding
import com.doit.clone.databinding.ItemDrawerGroupBinding
import com.doit.clone.model.BoxType
import com.doit.clone.util.gone
import com.doit.clone.util.visible

/** 抽屉菜单项（还原原版 DHomeMenuList 的分组结构） */
sealed class DrawerItem {
    data class Group(val title: String) : DrawerItem()
    data class Box(
        val type: BoxType,
        val name: String,
        val count: Int = -1,
        val overdueCount: Int = -1
    ) : DrawerItem()
}

class DrawerAdapter(
    private val onClick: (BoxType) -> Unit
) : RecyclerView.Adapter<RecyclerView.ViewHolder>() {

    private var items: List<DrawerItem> = emptyList()
    private var selected: BoxType = BoxType.TODAY

    fun submit(newItems: List<DrawerItem>, selectedBox: BoxType) {
        items = newItems
        selected = selectedBox
        notifyDataSetChanged()
    }

    class GroupVH(private val b: ItemDrawerGroupBinding) : RecyclerView.ViewHolder(b.root) {
        fun bind(item: DrawerItem.Group) {
            b.groupTitle.text = item.title
        }
    }

    class BoxVH(private val b: ItemDrawerBoxBinding, private val onClick: (BoxType) -> Unit) :
        RecyclerView.ViewHolder(b.root) {
        fun bind(item: DrawerItem.Box, selected: Boolean) {
            b.boxName.text = item.name
            b.boxIcon.setImageResource(iconOf(item.type))
            if (item.count >= 0) {
                b.boxBadge.visible()
                b.boxBadge.text = item.count.toString()
            } else {
                b.boxBadge.gone()
            }
            if (item.overdueCount > 0) {
                b.boxBadgeOverdue.visible()
                b.boxBadgeOverdue.text = item.overdueCount.toString()
            } else {
                b.boxBadgeOverdue.gone()
            }
            b.root.isActivated = selected
            b.root.setOnClickListener { onClick(item.type) }
        }
    }

    override fun getItemViewType(position: Int): Int = when (items[position]) {
        is DrawerItem.Group -> TYPE_GROUP
        is DrawerItem.Box -> TYPE_BOX
    }

    override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RecyclerView.ViewHolder =
        if (viewType == TYPE_GROUP) {
            GroupVH(ItemDrawerGroupBinding.inflate(LayoutInflater.from(parent.context), parent, false))
        } else {
            BoxVH(ItemDrawerBoxBinding.inflate(LayoutInflater.from(parent.context), parent, false), onClick)
        }

    override fun getItemCount() = items.size

    override fun onBindViewHolder(holder: RecyclerView.ViewHolder, position: Int) {
        when (val item = items[position]) {
            is DrawerItem.Group -> (holder as GroupVH).bind(item)
            is DrawerItem.Box -> (holder as BoxVH).bind(item, item.type == selected)
        }
    }

    companion object {
        private const val TYPE_GROUP = 0
        private const val TYPE_BOX = 1

        fun buildItems(counts: BoxCounts): List<DrawerItem> = listOf(
            DrawerItem.Box(BoxType.INBOX, "收件箱", counts.inbox),
            DrawerItem.Group("专注"),
            DrawerItem.Box(BoxType.TODAY, "今日待办", counts.today, counts.todayOverdue),
            DrawerItem.Box(BoxType.NEXT, "下一步"),
            DrawerItem.Box(BoxType.TOMORROW, "明日待办"),
            DrawerItem.Box(BoxType.SCHEDULED, "日程"),
            DrawerItem.Box(BoxType.SOMEDAY, "将来/也许"),
            DrawerItem.Box(BoxType.WAITING, "等待", counts.waiting, counts.waitingOverdue),
            DrawerItem.Group("整理"),
            DrawerItem.Box(BoxType.PROJECTS, "项目"),
            DrawerItem.Box(BoxType.GOALS, "目标"),
            DrawerItem.Box(BoxType.CONTEXTS, "情境"),
            DrawerItem.Box(BoxType.FILTERS, "过滤器"),
            DrawerItem.Group("完成"),
            DrawerItem.Box(BoxType.COMPLETED, "已完成", counts.completed),
            DrawerItem.Box(BoxType.TRASH, "垃圾桶", counts.trash)
        )

        fun iconOf(type: BoxType): Int = when (type) {
            BoxType.INBOX -> R.drawable.ic_inbox
            BoxType.TODAY -> R.drawable.ic_today
            BoxType.NEXT -> R.drawable.ic_next
            BoxType.TOMORROW -> R.drawable.ic_tomorrow
            BoxType.SCHEDULED -> R.drawable.ic_scheduled
            BoxType.SOMEDAY -> R.drawable.ic_someday
            BoxType.WAITING -> R.drawable.ic_waiting
            BoxType.PROJECTS -> R.drawable.ic_projects
            BoxType.GOALS -> R.drawable.ic_goals
            BoxType.CONTEXTS -> R.drawable.ic_contexts
            BoxType.FILTERS -> R.drawable.ic_filters
            BoxType.COMPLETED -> R.drawable.ic_completed
            BoxType.TRASH -> R.drawable.ic_trash
            else -> R.drawable.ic_inbox
        }
    }
}
