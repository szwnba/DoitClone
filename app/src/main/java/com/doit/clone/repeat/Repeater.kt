package com.doit.clone.repeat

import java.util.Calendar

/**
 * 重复规则。五种模式还原自原版 Repeater 体系：
 * 每天 / 每N天 / 每周（多选星期） / 每月按日期 / 每月第N周的周几 / 每年。
 * 序列化格式（存 tasks.repeater 列）：
 *   d | d:n | w:1,3,5 | md:1,15 | mw:2:3 | y:3-15
 */
sealed class Repeater {

    abstract fun nextAfter(anchor: Calendar): Calendar
    abstract fun serialize(): String
    abstract fun describe(): String

    object Daily : Repeater() {
        override fun nextAfter(anchor: Calendar) = step(anchor, 1)
        override fun serialize() = "d"
        override fun describe() = "每天"
    }

    data class DailyN(val n: Int) : Repeater() {
        override fun nextAfter(anchor: Calendar) = step(anchor, n)
        override fun serialize() = "d:$n"
        override fun describe() = "每 $n 天"
    }

    /** days 使用 Calendar.DAY_OF_WEEK 常量（1=周日 … 7=周六） */
    data class Weekly(val days: Set<Int>) : Repeater() {
        override fun nextAfter(anchor: Calendar): Calendar {
            var c = step(anchor, 1)
            var guard = 0
            while (c.get(Calendar.DAY_OF_WEEK) !in days && guard++ < 8) c = step(c, 1)
            return c
        }

        override fun serialize() = "w:" + days.sorted().joinToString(",")
        override fun describe() = "每周 " + days.sorted().joinToString("、") { weekdayName(it) }
    }

    data class MonthlyDate(val dates: Set<Int>) : Repeater() {
        override fun nextAfter(anchor: Calendar): Calendar {
            var c = step(anchor, 1)
            var guard = 0
            while (guard++ < 62) {
                if (c.get(Calendar.DAY_OF_MONTH) in dates) return c
                c = step(c, 1)
            }
            return c
        }

        override fun serialize() = "md:" + dates.sorted().joinToString(",")
        override fun describe() = "每月 " + dates.sorted().joinToString("、") + " 号"
    }

    /** weekOfMonth: 1..5；day: Calendar.DAY_OF_WEEK */
    data class MonthlyWeek(val weekOfMonth: Int, val day: Int) : Repeater() {
        override fun nextAfter(anchor: Calendar): Calendar {
            var c = step(anchor, 1)
            var guard = 0
            while (guard++ < 62) {
                if (c.get(Calendar.DAY_OF_WEEK) == day && weekOfMonthOf(c) == weekOfMonth) return c
                c = step(c, 1)
            }
            return c
        }

        override fun serialize() = "mw:$weekOfMonth:$day"
        override fun describe() = "每月第 $weekOfMonth 个${weekdayName(day)}"
    }

    data class Yearly(val month: Int, val day: Int) : Repeater() {
        override fun nextAfter(anchor: Calendar): Calendar {
            var c = (anchor.clone() as Calendar).apply { add(Calendar.YEAR, 1) }
            c.set(Calendar.MONTH, month - 1)
            c.set(Calendar.DAY_OF_MONTH, day)
            if (c.timeInMillis <= anchor.timeInMillis) {
                c = (anchor.clone() as Calendar).apply { add(Calendar.YEAR, 2) }
                c.set(Calendar.MONTH, month - 1)
                c.set(Calendar.DAY_OF_MONTH, day)
            }
            return c
        }

        override fun serialize() = "y:$month-$day"
        override fun describe() = "每年 $month 月 $day 日"
    }

    companion object {
        fun deserialize(raw: String?): Repeater? {
            if (raw.isNullOrBlank()) return null
            val parts = raw.trim().split(":")
            return try {
                when (parts[0]) {
                    "d" -> if (parts.size == 2) DailyN(parts[1].toInt()) else Daily
                    "w" -> Weekly(parts[1].split(",").map { it.trim().toInt() }.toSet())
                    "md" -> MonthlyDate(parts[1].split(",").map { it.trim().toInt() }.toSet())
                    "mw" -> MonthlyWeek(parts[1].toInt(), parts[2].toInt())
                    "y" -> {
                        val md = parts[1].split("-")
                        Yearly(md[0].toInt(), md[1].toInt())
                    }
                    else -> null
                }
            } catch (e: Exception) {
                null
            }
        }

        private fun step(c: Calendar, days: Int): Calendar =
            (c.clone() as Calendar).apply { add(Calendar.DAY_OF_YEAR, days) }

        private fun weekOfMonthOf(c: Calendar): Int =
            (c.get(Calendar.DAY_OF_MONTH) + 6) / 7

        fun weekdayName(day: Int): String = when (day) {
            Calendar.SUNDAY -> "周日"
            Calendar.MONDAY -> "周一"
            Calendar.TUESDAY -> "周二"
            Calendar.WEDNESDAY -> "周三"
            Calendar.THURSDAY -> "周四"
            Calendar.FRIDAY -> "周五"
            Calendar.SATURDAY -> "周六"
            else -> ""
        }
    }
}
