package com.doit.clone.ui.settings

import android.content.Context
import android.content.Intent
import android.os.Bundle
import androidx.appcompat.app.AppCompatActivity
import com.doit.clone.Graph
import com.doit.clone.R
import com.doit.clone.data.repo.SettingsRepository
import com.doit.clone.databinding.ActivitySettingsBinding
import com.doit.clone.reminder.ReminderReceiver
import com.doit.clone.reminder.ReminderScheduler
import com.doit.clone.ui.common.Pickers
import com.doit.clone.util.DateUtils
import java.util.Calendar

/** 设置 —— 分块结构移植自原版 activity_settings（通用 / 支持） */
class SettingsActivity : AppCompatActivity() {

    private lateinit var binding: ActivitySettingsBinding

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        binding = ActivitySettingsBinding.inflate(layoutInflater)
        setContentView(binding.root)
        binding.toolbar.setNavigationOnClickListener { finish() }

        refresh()
        binding.cellWeekStart.setOnClickListener { pickWeekStart() }
        binding.cellDateFormat.setOnClickListener { pickDateFormat() }
        binding.cellPlanTime.setOnClickListener { pickTime(isPlan = true) }
        binding.cellReviewTime.setOnClickListener { pickTime(isPlan = false) }
        binding.switchQuickadd.setOnCheckedChangeListener { _, checked ->
            Graph.settings.quickAddNotification = checked
            if (checked) ReminderReceiver.notifyQuickAdd(this) else ReminderReceiver.cancelQuickAdd(this)
        }
    }

    private fun refresh() {
        binding.valueWeekStart.text = DateUtils.weekdayName(Graph.settings.weekStartsOn)
        binding.valueDateFormat.text = Graph.settings.dateFormat
        binding.valuePlanTime.text = Graph.settings.dailyPlanTime
        binding.valueReviewTime.text = Graph.settings.dailyReviewTime
        binding.switchQuickadd.isChecked = Graph.settings.quickAddNotification
    }

    private fun pickWeekStart() {
        val days = listOf(Calendar.SUNDAY, Calendar.MONDAY, Calendar.TUESDAY, Calendar.WEDNESDAY,
            Calendar.THURSDAY, Calendar.FRIDAY, Calendar.SATURDAY)
        Pickers.radio(this, getString(R.string.settings_week_start),
            days.map { DateUtils.weekdayName(it) }, days.indexOf(Graph.settings.weekStartsOn)) { idx ->
            Graph.settings.weekStartsOn = days[idx]
            refresh()
        }
    }

    private fun pickDateFormat() {
        val options = SettingsRepository.DATE_FORMAT_OPTIONS
        Pickers.radio(this, getString(R.string.settings_date_format), options,
            options.indexOf(Graph.settings.dateFormat)) { idx ->
            Graph.settings.dateFormat = options[idx]
            refresh()
        }
    }

    private fun pickTime(isPlan: Boolean) {
        val current = if (isPlan) Graph.settings.dailyPlanTime else Graph.settings.dailyReviewTime
        val hm = DateUtils.parseHm(current) ?: (8 to 0)
        Pickers.timePicker(this, hm.first, hm.second) { h, m ->
            val value = String.format("%02d:%02d", h, m)
            if (isPlan) Graph.settings.dailyPlanTime = value
            else Graph.settings.dailyReviewTime = value
            ReminderScheduler.rescheduleAll(this)
            refresh()
        }
    }

    companion object {
        fun intent(context: Context): Intent = Intent(context, SettingsActivity::class.java)
    }
}
