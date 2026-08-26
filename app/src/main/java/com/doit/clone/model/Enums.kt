package com.doit.clone.model

/**
 * 箱子类型，pos 顺序还原自原版 BoxUtils.prepareBoxesForView 的排序。
 */
enum class BoxType(val pos: Int) {
    INBOX(1),
    GROUP_FOCUS(2),
    TODAY(4),
    NEXT(5),
    TOMORROW(6),
    SCHEDULED(7),
    SOMEDAY(8),
    WAITING(9),
    GROUP_ORGANIZE(10),
    PROJECTS(11),
    GOALS(12),
    CONTEXTS(13),
    FILTERS(14),
    GROUP_DONE(15),
    COMPLETED(16),
    TRASH(17);

    val isGroupHeader: Boolean get() = this == GROUP_FOCUS || this == GROUP_ORGANIZE || this == GROUP_DONE
    val isOrganizeEntry: Boolean get() = this == PROJECTS || this == GOALS || this == CONTEXTS || this == FILTERS

    companion object {
        fun from(name: String): BoxType? = entries.firstOrNull { it.name == name }
    }
}

/**
 * 任务属性。时间箱由 attribute=PLAN + startAt 推导（原版 TaskDaoHelper 语义）：
 * 今日 = PLAN 且 startAt <= 今天末；明日 = PLAN 且 startAt 在明天区间；
 * 日程 = PLAN 且 startAt >= 后天 或带重复规则。
 */
enum class Attribute {
    INBOX, NEXT, PLAN, NOPLAN, WAITING;

    companion object {
        fun from(name: String?): Attribute? =
            name?.let { n -> entries.firstOrNull { it.name == n } }
    }
}

enum class GroupByType {
    NONE, START_AT, END_AT, CONTEXT, PROJECT, PRIORITY, COMPLETED_AT
}

object Priority {
    /** 原版取值：低=1 中=2 高=3（还原 setTaskPriority） */
    const val NONE = 0
    const val LOW = 1
    const val MIDDLE = 2
    const val HIGH = 3

    fun label(value: Int): String = when (value) {
        HIGH -> "高"
        MIDDLE -> "中"
        LOW -> "低"
        else -> "无"
    }

    fun colorRes(value: Int): Int = when (value) {
        HIGH -> 0xFFC05318.toInt()
        MIDDLE -> 0xFF207CC2.toInt()
        LOW -> 0xFF85C3F2.toInt()
        else -> 0xFFD3D4D6.toInt()
    }
}
