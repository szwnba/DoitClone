package com.doit.clone.smartadd

import com.doit.clone.model.Attribute
import com.doit.clone.model.Priority
import com.doit.clone.util.DateUtils
import java.util.Calendar

data class ParsedTask(
    val title: String,
    val startAt: Long?,
    val endAt: Long?,
    val tags: List<String>,
    val priority: Int,
    val attribute: Attribute,
    val allDay: Boolean
)

/**
 * SmartAdd 自然语言解析（还原原版 SmartAddActivity 的文本规则）：
 *   日期词：今天 / 明天 / 后天 / 大后天 / N天后 / 周X / 星期X / 礼拜X / 下周X
 *   时间：9:30、9点、9点30、下午3点、晚上8:00
 *   时间段：9:00-11:00
 *   标签：#标签
 *   优先级：!高 !中 !低
 * 例：「明天 9:00-11:00 交报告 #工作 !高」
 */
object SmartAddParser {

    private val TAG_REGEX = Regex("#([^\\s#，,]+)")
    private val PRIORITY_REGEX = Regex("!(高|中|低)")
    private val DAY_OFFSET_REGEX = Regex("(\\d+)\\s*[天日]\\s*后")
    private val WEEKDAY_REGEX = Regex("下?(?:周|星期|礼拜)([一二三四五六日天])")
    private val TIME_RANGE_REGEX = Regex("(上午|早上|中午|下午|傍晚|晚上)?(\\d{1,2})[:：点时](\\d{1,2})?\\s*[-—~至到]\\s*(上午|早上|中午|下午|傍晚|晚上)?(\\d{1,2})[:：点时](\\d{1,2})?")
    private val TIME_REGEX = Regex("(上午|早上|中午|下午|傍晚|晚上)?(\\d{1,2})[:：点时](\\d{1,2})?分?")

    private val weekdayMap = mapOf(
        "日" to Calendar.SUNDAY, "天" to Calendar.SUNDAY,
        "一" to Calendar.MONDAY, "二" to Calendar.TUESDAY, "三" to Calendar.WEDNESDAY,
        "四" to Calendar.THURSDAY, "五" to Calendar.FRIDAY, "六" to Calendar.SATURDAY
    )

    fun parse(input: String, now: Calendar = DateUtils.now()): ParsedTask {
        var text = input.trim()

        // 1. 标签
        val tags = TAG_REGEX.findAll(text).map { it.groupValues[1] }.toList()
        text = text.replace(TAG_REGEX, " ")

        // 2. 优先级
        var priority = Priority.NONE
        PRIORITY_REGEX.find(text)?.let {
            priority = when (it.groupValues[1]) {
                "高" -> Priority.HIGH
                "中" -> Priority.MIDDLE
                "低" -> Priority.LOW
                else -> Priority.NONE
            }
            text = text.replaceFirst(it.value, " ")
        }

        // 3. 时间段（优先于单时间）
        var startCal: Calendar? = null
        var endCal: Calendar? = null
        TIME_RANGE_REGEX.find(text)?.let { m ->
            val dayBase = Calendar.getInstance()
            startCal = applyTime(dayBase, m.groupValues[1], m.groupValues[2], m.groupValues[3])
            endCal = applyTime(dayBase, m.groupValues[4], m.groupValues[5], m.groupValues[6])
            text = text.replaceFirst(m.value, " ")
        }

        // 4. 单时间
        var hasTime = startCal != null
        if (startCal == null) {
            TIME_REGEX.find(text)?.let { m ->
                startCal = applyTime(Calendar.getInstance(), m.groupValues[1], m.groupValues[2], m.groupValues[3])
                hasTime = true
                text = text.replaceFirst(m.value, " ")
            }
        }

        // 5. 日期
        var dateCal: Calendar? = null
        var matched = true
        while (matched) {
            matched = false
            when {
                DAY_OFFSET_REGEX.containsMatchIn(text) -> {
                    val m = DAY_OFFSET_REGEX.find(text)!!
                    dateCal = dayAtOffset(m.groupValues[1].toInt())
                    text = text.replaceFirst(m.value, " "); matched = true
                }
                text.contains("大后天") -> {
                    dateCal = dayAtOffset(3); text = text.replace("大后天", " "); matched = true
                }
                text.contains("后天") -> {
                    dateCal = dayAtOffset(2); text = text.replace("后天", " "); matched = true
                }
                text.contains("明天") -> {
                    dateCal = dayAtOffset(1); text = text.replace("明天", " "); matched = true
                }
                text.contains("明日") -> {
                    dateCal = dayAtOffset(1); text = text.replace("明日", " "); matched = true
                }
                text.contains("今天") -> {
                    dateCal = dayAtOffset(0); text = text.replace("今天", " "); matched = true
                }
                text.contains("今儿") -> {
                    dateCal = dayAtOffset(0); text = text.replace("今儿", " "); matched = true
                }
                WEEKDAY_REGEX.containsMatchIn(text) -> {
                    val m = WEEKDAY_REGEX.find(text)!!
                    val nextWeek = m.value.startsWith("下")
                    val target = weekdayMap[m.groupValues[1]]!!
                    val c = DateUtils.cal(DateUtils.startOfToday())
                    if (nextWeek) {
                        c.add(Calendar.DAY_OF_YEAR, 7)
                        while (c.get(Calendar.DAY_OF_WEEK) != target) c.add(Calendar.DAY_OF_YEAR, 1)
                    } else {
                        while (c.get(Calendar.DAY_OF_WEEK) != target) c.add(Calendar.DAY_OF_YEAR, 1)
                    }
                    dateCal = c
                    text = text.replaceFirst(m.value, " ")
                    matched = true
                }
            }
        }

        // 6. 合并日期 + 时间
        val title = text.replace(Regex("\\s+"), " ").trim()
        var startAt: Long? = null
        var endAt: Long? = null
        var allDay = true
        var attribute = Attribute.INBOX

        if (dateCal != null) {
            attribute = Attribute.PLAN
            val base = dateCal!!
            if (hasTime && startCal != null) {
                base.set(Calendar.HOUR_OF_DAY, startCal!!.get(Calendar.HOUR_OF_DAY))
                base.set(Calendar.MINUTE, startCal!!.get(Calendar.MINUTE))
                allDay = false
                endCal?.let {
                    it.set(Calendar.YEAR, base.get(Calendar.YEAR))
                    it.set(Calendar.DAY_OF_YEAR, base.get(Calendar.DAY_OF_YEAR))
                    endAt = it.timeInMillis
                }
            }
            startAt = base.timeInMillis
        } else if (hasTime && startCal != null) {
            // 只有时间：已过则顺延到明天
            if (startCal!!.timeInMillis <= now.timeInMillis) startCal!!.add(Calendar.DAY_OF_YEAR, 1)
            startAt = startCal!!.timeInMillis
            endCal?.let {
                if (it.timeInMillis <= startAt!!) it.add(Calendar.DAY_OF_YEAR, 1)
                endAt = it.timeInMillis
            }
            allDay = false
            attribute = Attribute.PLAN
        }

        return ParsedTask(
            title = title.ifBlank { input.trim() },
            startAt = startAt,
            endAt = endAt,
            tags = tags,
            priority = priority,
            attribute = attribute,
            allDay = allDay
        )
    }

    private fun dayAtOffset(days: Int): Calendar =
        DateUtils.cal(DateUtils.addDays(DateUtils.startOfToday(), days))

    private fun applyTime(base: Calendar, prefix: String, hourStr: String, minuteStr: String?): Calendar {
        val c = (base.clone() as Calendar)
        var hour = hourStr.toIntOrNull() ?: 0
        val minute = minuteStr?.toIntOrNull() ?: 0
        when (prefix) {
            "下午", "傍晚", "晚上" -> if (hour < 12) hour += 12
            "中午" -> if (hour in 1..11) hour += 12
        }
        c.set(Calendar.HOUR_OF_DAY, hour.coerceIn(0, 23))
        c.set(Calendar.MINUTE, minute.coerceIn(0, 59))
        c.set(Calendar.SECOND, 0)
        c.clear(Calendar.MILLISECOND)
        return c
    }
}
