package com.doit.clone.data.repo

import android.content.Context
import android.content.SharedPreferences
import com.doit.clone.model.GroupByType
import java.util.Calendar

/** 轻量偏好设置：周起始、日期格式、每日计划/回顾时间、通知栏快速添加 */
class SettingsRepository(context: Context) {

    private val prefs: SharedPreferences =
        context.getSharedPreferences("doit_settings", Context.MODE_PRIVATE)

    var weekStartsOn: Int
        get() = prefs.getInt(KEY_WEEK_START, Calendar.MONDAY)
        set(value) = prefs.edit().putInt(KEY_WEEK_START, value).apply()

    var dateFormat: String
        get() = prefs.getString(KEY_DATE_FORMAT, "yyyy-MM-dd") ?: "yyyy-MM-dd"
        set(value) = prefs.edit().putString(KEY_DATE_FORMAT, value).apply()

    var dailyPlanTime: String
        get() = prefs.getString(KEY_PLAN_TIME, "08:00") ?: "08:00"
        set(value) = prefs.edit().putString(KEY_PLAN_TIME, value).apply()

    var dailyReviewTime: String
        get() = prefs.getString(KEY_REVIEW_TIME, "20:00") ?: "20:00"
        set(value) = prefs.edit().putString(KEY_REVIEW_TIME, value).apply()

    var quickAddNotification: Boolean
        get() = prefs.getBoolean(KEY_QUICK_ADD, true)
        set(value) = prefs.edit().putBoolean(KEY_QUICK_ADD, value).apply()

    /** 每个箱子记忆的分组方式 */
    fun groupBy(box: String): GroupByType {
        val name = prefs.getString("groupby_$box", null) ?: return defaultGroupBy(box)
        return GroupByType.entries.firstOrNull { it.name == name } ?: defaultGroupBy(box)
    }

    fun setGroupBy(box: String, type: GroupByType) {
        prefs.edit().putString("groupby_$box", type.name).apply()
    }

    /** 默认分组还原自原版 BoxUtils.getDefaultGroupBy */
    private fun defaultGroupBy(box: String): GroupByType = when (box) {
        "TODAY" -> GroupByType.START_AT
        "NEXT" -> GroupByType.PROJECT
        "TOMORROW" -> GroupByType.START_AT
        "SCHEDULED" -> GroupByType.START_AT
        "SOMEDAY" -> GroupByType.PRIORITY
        "WAITING" -> GroupByType.END_AT
        "COMPLETED" -> GroupByType.COMPLETED_AT
        else -> GroupByType.NONE
    }

    companion object {
        private const val KEY_WEEK_START = "week_starts_on"
        private const val KEY_DATE_FORMAT = "date_format"
        private const val KEY_PLAN_TIME = "daily_plan_time"
        private const val KEY_REVIEW_TIME = "daily_review_time"
        private const val KEY_QUICK_ADD = "quick_add_notification"

        val DATE_FORMAT_OPTIONS = listOf("yyyy-MM-dd", "yyyy/M/d", "M月d日", "MM/dd/yyyy")
    }
}
