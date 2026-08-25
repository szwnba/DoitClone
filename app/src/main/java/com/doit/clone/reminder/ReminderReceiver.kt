package com.doit.clone.reminder

import android.app.PendingIntent
import android.content.BroadcastReceiver
import android.content.Context
import android.content.Intent
import androidx.core.app.NotificationCompat
import androidx.core.app.NotificationManagerCompat
import com.doit.clone.Graph
import com.doit.clone.R
import com.doit.clone.smartadd.SmartAddActivity
import com.doit.clone.ui.daily.DailyPlanActivity
import com.doit.clone.ui.daily.DailyReviewActivity
import com.doit.clone.ui.task.TaskDetailActivity
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.launch
import java.util.Calendar

class ReminderReceiver : BroadcastReceiver() {

    override fun onReceive(context: Context, intent: Intent) {
        when (intent.action) {
            ACTION_COMPLETE -> {
                val uuid = intent.getStringExtra(ReminderScheduler.EXTRA_UUID) ?: return
                val pending = goAsync()
                CoroutineScope(Dispatchers.IO).launch {
                    try {
                        Graph.taskRepo.toggleComplete(uuid)
                        ReminderScheduler.rescheduleAll(context)
                    } finally {
                        pending.finish()
                    }
                }
                return
            }
            ReminderScheduler.ACTION_SNOOZE -> {
                val uuid = intent.getStringExtra(ReminderScheduler.EXTRA_UUID) ?: return
                val at = Calendar.getInstance().apply { add(Calendar.MINUTE, 10) }.timeInMillis
                ReminderScheduler.scheduleSnooze(context, at, uuid, null)
                return
            }
        }

        val kind = intent.getStringExtra(ReminderScheduler.EXTRA_KIND) ?: return
        val pendingResult = goAsync()

        CoroutineScope(Dispatchers.IO).launch {
            try {
                when (kind) {
                    ReminderScheduler.KIND_TASK -> {
                        val uuid = intent.getStringExtra(ReminderScheduler.EXTRA_UUID)
                        if (uuid != null) {
                            val task = Graph.taskRepo.get(uuid)
                            if (task != null && !task.completed && !task.trashed) {
                                notifyTask(context, task.title, task.uuid)
                            }
                        }
                    }
                    ReminderScheduler.KIND_PLAN -> notifyDaily(
                        context,
                        context.getString(R.string.daily_plan_notif_title),
                        context.getString(R.string.daily_plan_notif_text),
                        DailyPlanActivity.intent(context)
                    )
                    ReminderScheduler.KIND_REVIEW -> notifyDaily(
                        context,
                        context.getString(R.string.daily_review_notif_title),
                        context.getString(R.string.daily_review_notif_text),
                        DailyReviewActivity.intent(context)
                    )
                }
                ReminderScheduler.rescheduleAll(context)
            } finally {
                pendingResult.finish()
            }
        }
    }

    private fun notifyTask(context: Context, title: String, uuid: String) {
        val contentPi = PendingIntent.getActivity(
            context, uuid.hashCode(),
            TaskDetailActivity.intent(context, uuid),
            PendingIntent.FLAG_UPDATE_CURRENT or PendingIntent.FLAG_IMMUTABLE
        )
        val completePi = PendingIntent.getBroadcast(
            context, ("done$uuid").hashCode(),
            Intent(context, ReminderReceiver::class.java)
                .setAction(ACTION_COMPLETE)
                .putExtra(ReminderScheduler.EXTRA_UUID, uuid),
            PendingIntent.FLAG_UPDATE_CURRENT or PendingIntent.FLAG_IMMUTABLE
        )
        val snoozePi = PendingIntent.getBroadcast(
            context, ("snz$uuid").hashCode(),
            Intent(context, ReminderReceiver::class.java)
                .setAction(ReminderScheduler.ACTION_SNOOZE)
                .putExtra(ReminderScheduler.EXTRA_UUID, uuid),
            PendingIntent.FLAG_UPDATE_CURRENT or PendingIntent.FLAG_IMMUTABLE
        )

        val notification = NotificationCompat.Builder(context, ReminderScheduler.CHANNEL_TASKS)
            .setSmallIcon(R.drawable.ic_alarm)
            .setContentTitle(title)
            .setAutoCancel(true)
            .setContentIntent(contentPi)
            .addAction(0, context.getString(R.string.reminder_complete), completePi)
            .addAction(0, context.getString(R.string.reminder_snooze), snoozePi)
            .build()
        notifySafely(context, uuid.hashCode(), notification)
    }

    private fun notifyDaily(context: Context, title: String, text: String, contentIntent: Intent) {
        val contentPi = PendingIntent.getActivity(
            context, title.hashCode(), contentIntent,
            PendingIntent.FLAG_UPDATE_CURRENT or PendingIntent.FLAG_IMMUTABLE
        )
        val notification = NotificationCompat.Builder(context, ReminderScheduler.CHANNEL_DAILY)
            .setSmallIcon(R.drawable.ic_alarm)
            .setContentTitle(title)
            .setContentText(text)
            .setAutoCancel(true)
            .setContentIntent(contentPi)
            .build()
        notifySafely(context, title.hashCode(), notification)
    }

    private fun notifySafely(context: Context, id: Int, notification: android.app.Notification) {
        try {
            NotificationManagerCompat.from(context).notify(id, notification)
        } catch (e: SecurityException) {
            // 用户未授予通知权限（Android 13+）
        }
    }

    companion object {
        const val ACTION_COMPLETE = "com.doit.clone.action.COMPLETE"

        /** 常驻通知栏的快速添加入口（还原原版 SmartAdd 的通知栏触发方式） */
        fun notifyQuickAdd(context: Context) {
            val pi = PendingIntent.getActivity(
                context, 0,
                Intent(context, SmartAddActivity::class.java),
                PendingIntent.FLAG_UPDATE_CURRENT or PendingIntent.FLAG_IMMUTABLE
            )
            val notification = NotificationCompat.Builder(context, ReminderScheduler.CHANNEL_DAILY)
                .setSmallIcon(R.drawable.ic_add)
                .setContentTitle(context.getString(R.string.quick_add_notification_title))
                .setContentText(context.getString(R.string.quick_add_notification_text))
                .setOngoing(true)
                .setContentIntent(pi)
                .build()
            notifySafely(context, 9999, notification)
        }

        fun cancelQuickAdd(context: Context) {
            NotificationManagerCompat.from(context).cancel(9999)
        }

        private fun notifySafely(context: Context, id: Int, notification: android.app.Notification) {
            try {
                NotificationManagerCompat.from(context).notify(id, notification)
            } catch (e: SecurityException) {
            }
        }
    }
}
