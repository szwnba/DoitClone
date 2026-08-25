package com.doit.clone.reminder

import android.app.AlarmManager
import android.app.PendingIntent
import android.content.Context
import android.content.Intent
import android.os.Build
import com.doit.clone.Graph
import com.doit.clone.data.db.entity.TaskEntity
import com.doit.clone.util.DateUtils
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.SupervisorJob
import kotlinx.coroutines.launch
import java.util.Calendar

/**
 * 提醒调度：任务提醒（reminders 列为 CSV 的 "HH:mm"）+ 每日计划/回顾的每日提醒。
 * 每次数据变化或开机后调用 rescheduleAll，总是只挂"最早的一个"闹钟；
 * 触发后在 Receiver 里通知并重新挂下一个，避免维护长列表。
 */
object ReminderScheduler {

    const val CHANNEL_TASKS = "doit_task_reminders"
    const val CHANNEL_DAILY = "doit_daily"

    const val RC_TASK = 1
    const val RC_PLAN = 2
    const val RC_REVIEW = 3
    const val RC_SNOOZE_BASE = 1000

    const val EXTRA_UUID = "uuid"
    const val EXTRA_TIME = "time_label"
    const val EXTRA_KIND = "kind"
    const val KIND_TASK = "task"
    const val KIND_PLAN = "plan"
    const val KIND_REVIEW = "review"
    const val ACTION_SNOOZE = "com.doit.clone.action.SNOOZE"

    private val scope = CoroutineScope(SupervisorJob() + Dispatchers.Default)

    fun rescheduleAll(context: Context) {
        scope.launch {
            val tasks = Graph.taskRepo.allWithReminders()
            val now = System.currentTimeMillis()
            val next: Pair<TaskEntity, Long>? = tasks
                .mapNotNull { t -> computeNextFire(t, now)?.let { t to it } }
                .minByOrNull { it.second }

            next?.let { (task, at) ->
                scheduleAlarm(
                    context, at,
                    Intent(context, ReminderReceiver::class.java).putExtra(EXTRA_KIND, KIND_TASK)
                        .putExtra(EXTRA_UUID, task.uuid)
                        .putExtra(EXTRA_TIME, task.reminders),
                    RC_TASK
                )
            } ?: run {
                cancel(context, RC_TASK)
            }

            scheduleDaily(context, Graph.settings.dailyPlanTime, RC_PLAN, KIND_PLAN)
            scheduleDaily(context, Graph.settings.dailyReviewTime, RC_REVIEW, KIND_REVIEW)
        }
    }

    /** 单个任务的下一个触发时刻（未来才算），无则 null */
    fun computeNextFire(task: TaskEntity, now: Long): Long? {
        val times = task.reminders?.split(",")?.mapNotNull { DateUtils.parseHm(it) } ?: return null
        val baseDay = task.startAt ?: return null
        var best: Long? = null
        for ((h, m) in times) {
            val fire = DateUtils.cal(DateUtils.dayStart(baseDay)).apply {
                set(Calendar.HOUR_OF_DAY, h)
                set(Calendar.MINUTE, m)
            }.timeInMillis
            if (fire > now && (best == null || fire < best)) best = fire
        }
        return best
    }

    private fun scheduleDaily(context: Context, hm: String, rc: Int, kind: String) {
        val parsed = DateUtils.parseHm(hm) ?: return
        val cal = DateUtils.cal(DateUtils.startOfToday()).apply {
            set(Calendar.HOUR_OF_DAY, parsed.first)
            set(Calendar.MINUTE, parsed.second)
        }
        if (cal.timeInMillis <= System.currentTimeMillis()) cal.add(Calendar.DAY_OF_YEAR, 1)
        scheduleAlarm(
            context, cal.timeInMillis,
            Intent(context, ReminderReceiver::class.java).putExtra(EXTRA_KIND, kind),
            rc
        )
    }

    fun scheduleAlarm(context: Context, at: Long, intent: Intent, rc: Int) {
        val am = context.getSystemService(Context.ALARM_SERVICE) as AlarmManager
        val pi = PendingIntent.getBroadcast(
            context, rc, intent,
            PendingIntent.FLAG_UPDATE_CURRENT or PendingIntent.FLAG_IMMUTABLE
        )
        val canExact = Build.VERSION.SDK_INT < 31 || am.canScheduleExactAlarms()
        if (canExact) {
            am.setExactAndAllowWhileIdle(AlarmManager.RTC_WAKEUP, at, pi)
        } else {
            am.setWindow(AlarmManager.RTC_WAKEUP, at, 10 * 60_000L, pi)
        }
    }

    fun scheduleSnooze(context: Context, at: Long, uuid: String, timeLabel: String?) {
        val intent = Intent(context, ReminderReceiver::class.java)
            .putExtra(EXTRA_KIND, KIND_TASK)
            .putExtra(EXTRA_UUID, uuid)
            .putExtra(EXTRA_TIME, timeLabel)
        scheduleAlarm(context, at, intent, RC_SNOOZE_BASE + uuid.hashCode() % 100000)
    }

    fun cancel(context: Context, rc: Int) {
        val am = context.getSystemService(Context.ALARM_SERVICE) as AlarmManager
        val pi = PendingIntent.getBroadcast(
            context, rc, Intent(context, ReminderReceiver::class.java),
            PendingIntent.FLAG_UPDATE_CURRENT or PendingIntent.FLAG_IMMUTABLE
        )
        am.cancel(pi)
    }
}
