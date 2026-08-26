package com.doit.clone.ui.common

import com.doit.clone.data.db.entity.TaskEntity
import com.doit.clone.model.GroupByType
import com.doit.clone.model.Priority
import com.doit.clone.util.DateUtils

/** 列表行模型：分组头 或 任务 */
sealed class Row {
    data class Header(val key: String, val label: String, val count: Int = 0) : Row()
    data class TaskRow(
        val task: TaskEntity,
        val projectName: String?,
        val contextName: String?
    ) : Row()
}

/**
 * 任务分组器。各箱子可用维度还原自原版 BoxUtils.getGroupBys。
 */
object TaskGrouper {

    /** 每个箱子支持的分组选项（原版映射，等待箱的"按联系人"以"按截止时间"替代） */
    fun optionsFor(boxName: String): List<GroupByType> = when (boxName) {
        "TODAY" -> listOf(GroupByType.NONE, GroupByType.START_AT, GroupByType.END_AT, GroupByType.CONTEXT, GroupByType.PROJECT, GroupByType.PRIORITY)
        "NEXT" -> listOf(GroupByType.NONE, GroupByType.PROJECT, GroupByType.CONTEXT, GroupByType.PRIORITY, GroupByType.END_AT)
        "TOMORROW" -> listOf(GroupByType.NONE, GroupByType.START_AT, GroupByType.END_AT, GroupByType.CONTEXT, GroupByType.PROJECT, GroupByType.PRIORITY)
        "SCHEDULED" -> listOf(GroupByType.NONE, GroupByType.START_AT, GroupByType.END_AT, GroupByType.PROJECT, GroupByType.PRIORITY)
        "SOMEDAY" -> listOf(GroupByType.NONE, GroupByType.PRIORITY, GroupByType.END_AT, GroupByType.CONTEXT, GroupByType.PROJECT)
        "WAITING" -> listOf(GroupByType.NONE, GroupByType.END_AT, GroupByType.CONTEXT, GroupByType.PROJECT, GroupByType.PRIORITY)
        "COMPLETED" -> listOf(GroupByType.NONE, GroupByType.COMPLETED_AT, GroupByType.CONTEXT, GroupByType.PROJECT)
        else -> listOf(GroupByType.NONE)
    }

    fun label(type: GroupByType): String = when (type) {
        GroupByType.NONE -> "不分组"
        GroupByType.START_AT -> "按开始时间"
        GroupByType.END_AT -> "按截止时间"
        GroupByType.CONTEXT -> "按情境"
        GroupByType.PROJECT -> "按项目"
        GroupByType.PRIORITY -> "按优先级"
        GroupByType.COMPLETED_AT -> "按完成时间"
    }

    fun group(
        tasks: List<TaskEntity>,
        groupBy: GroupByType,
        projectName: (String?) -> String?,
        contextName: (String?) -> String?,
        dateFormat: String
    ): List<Row> {
        if (groupBy == GroupByType.NONE) {
            return tasks.map { Row.TaskRow(it, projectName(it.projectUuid), contextName(it.contextUuid)) }
        }
        val keyed = tasks.map { task ->
            val (key, label) = when (groupBy) {
                GroupByType.START_AT -> dateBucket(task.startAt, dateFormat)
                GroupByType.END_AT -> dateBucket(task.endAt, dateFormat)
                GroupByType.PRIORITY -> (task.priority * -1).toString() to Priority.label(task.priority)
                GroupByType.CONTEXT -> (task.contextUuid ?: "none") to (contextName(task.contextUuid) ?: "未分配情境")
                GroupByType.PROJECT -> (task.projectUuid ?: "none") to (projectName(task.projectUuid) ?: "未分配项目")
                GroupByType.COMPLETED_AT -> dateBucket(task.completedAt, dateFormat)
                else -> "" to ""
            }
            Triple(key, label, task)
        }
        // 分组内保持传入顺序（DAO 已排好），组间按 key 稳定排序
        val order = linkedMapOf<String, String>()
        keyed.forEach { (k, label, _) -> if (!order.containsKey(k)) order[k] = label }
        val sortedKeys = order.keys.sortedWith { a, b ->
            // 日期类 key 用 ISO 前缀可比；数字/字符串直接比
            a.compareTo(b)
        }
        val result = mutableListOf<Row>()
        for (k in sortedKeys) {
            val groupCount = keyed.count { it.first == k }
            result.add(Row.Header(k, order[k]!!, groupCount))
            keyed.filter { it.first == k }.forEach { (_, _, task) ->
                result.add(Row.TaskRow(task, projectName(task.projectUuid), contextName(task.contextUuid)))
            }
        }
        return result
    }

    private fun dateBucket(millis: Long?, dateFormat: String): Pair<String, String> {
        if (millis == null) return "9999" to "未设置"
        val dayStart = DateUtils.dayStart(millis)
        val todayStart = DateUtils.startOfToday()
        return when {
            dayStart < todayStart -> "0000" to "已逾期"
            dayStart == todayStart -> DateUtils.format(millis, "yyyy-MM-dd") to "今天"
            else -> DateUtils.format(millis, "yyyy-MM-dd") to DateUtils.friendlyDate(millis, dateFormat)
        }
    }
}
