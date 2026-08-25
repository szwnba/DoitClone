package com.doit.clone.util

import java.text.SimpleDateFormat
import java.util.Calendar
import java.util.Date
import java.util.Locale

object DateUtils {

    fun cal(millis: Long): Calendar = Calendar.getInstance().apply { timeInMillis = millis }

    fun now(): Calendar = Calendar.getInstance()

    fun startOfDay(c: Calendar): Calendar = (c.clone() as Calendar).apply {
        set(Calendar.HOUR_OF_DAY, 0); set(Calendar.MINUTE, 0)
        set(Calendar.SECOND, 0); set(Calendar.MILLISECOND, 0)
    }

    fun endOfDay(c: Calendar): Calendar = (c.clone() as Calendar).apply {
        set(Calendar.HOUR_OF_DAY, 23); set(Calendar.MINUTE, 59)
        set(Calendar.SECOND, 59); set(Calendar.MILLISECOND, 999)
    }

    fun dayStart(millis: Long): Long = startOfDay(cal(millis)).timeInMillis
    fun dayEnd(millis: Long): Long = endOfDay(cal(millis)).timeInMillis

    fun startOfToday(): Long = startOfDay(now()).timeInMillis
    fun endOfToday(): Long = endOfDay(now()).timeInMillis

    fun startOfTomorrow(): Long = addDays(startOfToday(), 1)
    fun endOfTomorrow(): Long = endOfDay(cal(addDays(startOfToday(), 1))).timeInMillis

    /** 后天 0 点（日程箱下界，对应原版 scheduled() 的 startOfToday+2 天） */
    fun startOfAfterTomorrow(): Long = addDays(startOfToday(), 2)

    fun addDays(millis: Long, days: Int): Long = cal(millis).apply { add(Calendar.DAY_OF_YEAR, days) }.timeInMillis

    fun sameDay(a: Long, b: Long): Boolean = dayStart(a) == dayStart(b)

    fun format(millis: Long, pattern: String): String =
        SimpleDateFormat(pattern, Locale.getDefault()).format(Date(millis))

    fun formatTime(millis: Long): String = format(millis, "HH:mm")

    /**
     * 友好日期：今天/明天/后天/周X，否则按用户设置的日期格式；
     * 跨年时附加年份。用于列表行与分组头。
     */
    fun friendlyDate(millis: Long, pattern: String): String {
        val today = startOfToday()
        val target = dayStart(millis)
        return when (target) {
            today -> "今天"
            today + 86_400_000L -> "明天"
            today + 2 * 86_400_000L -> "后天"
            else -> {
                val c = cal(millis)
                val now = Calendar.getInstance()
                val fmt = if (c.get(Calendar.YEAR) != now.get(Calendar.YEAR)) "yyyy年M月d日" else pattern
                format(millis, fmt)
            }
        }
    }

    /** 周几名称（1=周日 … 7=周六，Calendar 约定） */
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

    fun parseHm(text: String): Pair<Int, Int>? {
        val m = Regex("^(\\d{1,2})[:：](\\d{1,2})$").find(text.trim()) ?: return null
        val h = m.groupValues[1].toIntOrNull() ?: return null
        val min = m.groupValues[2].toIntOrNull() ?: return null
        if (h !in 0..23 || min !in 0..59) return null
        return h to min
    }

    /** 按每周起始日（Calendar.DAY_OF_WEEK）返回 7 个周几名称的有序列表 */
    fun weekdayNames(weekStart: Int): List<String> {
        val order = mutableListOf<Int>()
        var d = weekStart
        repeat(7) { order.add(d); d = if (d == 7) 1 else d + 1 }
        return order.map { weekdayName(it) }
    }
}
