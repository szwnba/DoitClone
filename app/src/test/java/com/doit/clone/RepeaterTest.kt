package com.doit.clone

import com.doit.clone.repeat.Repeater
import org.junit.Assert.assertEquals
import org.junit.Assert.assertNull
import org.junit.Test
import java.util.Calendar

/** 重复规则引擎测试：五种模式的下一 occurrence 计算 */
class RepeaterTest {

    private fun calOf(y: Int, mo: Int, d: Int, h: Int = 9, mi: Int = 0): Calendar =
        Calendar.getInstance().apply {
            set(y, mo - 1, d, h, mi, 0)
            set(Calendar.MILLISECOND, 0)
        }

    @Test
    fun daily_advancesOneDay() {
        val next = Repeater.Daily.nextAfter(calOf(2026, 8, 25))
        assertEquals(calOf(2026, 8, 26).timeInMillis, next.timeInMillis)
    }

    @Test
    fun dailyN_advancesNDays() {
        val next = Repeater.DailyN(3).nextAfter(calOf(2026, 8, 25))
        assertEquals(calOf(2026, 8, 28).timeInMillis, next.timeInMillis)
    }

    @Test
    fun weekly_findsNextSelectedWeekday() {
        // 2026-08-25 是周二；每周一、周五 → 下一个是周五 8-28
        val next = Repeater.Weekly(setOf(Calendar.MONDAY, Calendar.FRIDAY)).nextAfter(calOf(2026, 8, 25))
        assertEquals(calOf(2026, 8, 28).timeInMillis, next.timeInMillis)
    }

    @Test
    fun weekly_sameDayNotIncluded() {
        // 周二锚点 + 只选周二 → 下周二 9-01
        val next = Repeater.Weekly(setOf(Calendar.TUESDAY)).nextAfter(calOf(2026, 8, 25))
        assertEquals(calOf(2026, 9, 1).timeInMillis, next.timeInMillis)
    }

    @Test
    fun monthlyDate_advancesToNextSelectedDate() {
        // 8-25 锚点，每月 1、15 号 → 下一个 9-1
        val next = Repeater.MonthlyDate(setOf(1, 15)).nextAfter(calOf(2026, 8, 25))
        assertEquals(calOf(2026, 9, 1).timeInMillis, next.timeInMillis)
    }

    @Test
    fun monthlyWeek_findsNthWeekday() {
        // 每月第 2 个周三：2026-08 的第 2 个周三是 8-12，锚点 8-25 已过 → 9-9
        val next = Repeater.MonthlyWeek(2, Calendar.WEDNESDAY).nextAfter(calOf(2026, 8, 25))
        assertEquals(calOf(2026, 9, 9).timeInMillis, next.timeInMillis)
    }

    @Test
    fun yearly_advancesOneYear() {
        val next = Repeater.Yearly(3, 15).nextAfter(calOf(2026, 8, 25))
        assertEquals(calOf(2027, 3, 15).timeInMillis, next.timeInMillis)
    }

    @Test
    fun serialize_roundTrip() {
        val cases = listOf(
            Repeater.Daily,
            Repeater.DailyN(3),
            Repeater.Weekly(setOf(Calendar.MONDAY, Calendar.FRIDAY)),
            Repeater.MonthlyDate(setOf(1, 15)),
            Repeater.MonthlyWeek(2, Calendar.WEDNESDAY),
            Repeater.Yearly(3, 15)
        )
        for (r in cases) {
            val parsed = Repeater.deserialize(r.serialize())
            assertEquals("序列化往返失败: ${r.serialize()}", r, parsed)
        }
        assertNull(Repeater.deserialize(null))
        assertNull(Repeater.deserialize("garbage"))
    }

    @Test
    fun monthlyDate_skipsMonthsMissingDay31() {
        // 锚点 1-31，选 31 号 → 2 月没有 31 号，应跳到 3-31
        val next = Repeater.MonthlyDate(setOf(31)).nextAfter(calOf(2026, 1, 31))
        assertEquals(calOf(2026, 3, 31).timeInMillis, next.timeInMillis)
    }
}
