package com.doit.clone

import com.doit.clone.model.Attribute
import com.doit.clone.model.Priority
import com.doit.clone.smartadd.SmartAddParser
import com.doit.clone.util.DateUtils
import org.junit.Assert.assertEquals
import org.junit.Assert.assertNotNull
import org.junit.Test
import java.util.Calendar

/** SmartAdd 自然语言解析测试 */
class SmartAddParserTest {

    private val now = DateUtils.cal(DateUtils.startOfToday() + 12 * 3600_000L) // 今天中午

    @Test
    fun plainText_becomesInboxTask() {
        val r = SmartAddParser.parse("买牛奶", now)
        assertEquals("买牛奶", r.title)
        assertEquals(Attribute.INBOX, r.attribute)
        assertEquals(null, r.startAt)
        assertEquals(Priority.NONE, r.priority)
    }

    @Test
    fun tomorrowWithTime_parsesDateAndRange() {
        val r = SmartAddParser.parse("明天 9:00-11:00 交报告", now)
        assertEquals("交报告", r.title)
        assertEquals(Attribute.PLAN, r.attribute)
        assertNotNull(r.startAt)
        assertEquals(DateUtils.startOfToday() + 86_400_000L + 9 * 3600_000L, r.startAt)
        assertEquals(DateUtils.startOfToday() + 86_400_000L + 11 * 3600_000L, r.endAt)
        assertEquals(false, r.allDay)
    }

    @Test
    fun tagsAndPriority_extracted() {
        val r = SmartAddParser.parse("写周报 #工作 #重要 !高", now)
        assertEquals("写周报", r.title)
        assertEquals(listOf("工作", "重要"), r.tags)
        assertEquals(Priority.HIGH, r.priority)
    }

    @Test
    fun lowPriority_marker() {
        val r = SmartAddParser.parse("浇花 !低", now)
        assertEquals(Priority.LOW, r.priority)
    }

    @Test
    fun allDayTomorrow_noTime() {
        val r = SmartAddParser.parse("后天 体检", now)
        assertEquals("体检", r.title)
        assertEquals(Attribute.PLAN, r.attribute)
        assertEquals(DateUtils.startOfToday() + 2 * 86_400_000L, r.startAt)
        assertEquals(true, r.allDay)
    }

    @Test
    fun afternoonPrefix_addsTwelveHours() {
        val r = SmartAddParser.parse("下午3点 开会", now)
        assertEquals("开会", r.title)
        assertNotNull(r.startAt)
        val cal = DateUtils.cal(r.startAt!!)
        assertEquals(15, cal.get(Calendar.HOUR_OF_DAY))
        assertEquals(false, r.allDay)
    }

    @Test
    fun weekday_picksThisOrNextWeek() {
        val r = SmartAddParser.parse("周五 提交报销", now)
        assertEquals("提交报销", r.title)
        assertNotNull(r.startAt)
        val cal = DateUtils.cal(r.startAt!!)
        assertEquals(Calendar.FRIDAY, cal.get(Calendar.DAY_OF_WEEK))
        // 必须是今天或未来的周五
        assert(r.startAt!! >= DateUtils.startOfToday())
    }

    @Test
    fun nextWeek_picksFuture() {
        val r = SmartAddParser.parse("下周三 团建", now)
        assertEquals("团建", r.title)
        assert(r.startAt!! > DateUtils.startOfToday() + 6 * 86_400_000L) // 至少 7 天后
    }

    @Test
    fun nDaysLater() {
        val r = SmartAddParser.parse("3天后 取快递", now)
        assertEquals("取快递", r.title)
        assertEquals(DateUtils.startOfToday() + 3 * 86_400_000L, r.startAt)
    }

    @Test
    fun timeOnly_pastTimeRollsToTomorrow() {
        // now 是中午，早上 8 点已过 → 顺延到明天 8 点
        val r = SmartAddParser.parse("8:00 晨会", now)
        assertEquals("晨会", r.title)
        val expected = DateUtils.startOfToday() + 86_400_000L + 8 * 3600_000L
        assertEquals(expected, r.startAt)
    }
}
