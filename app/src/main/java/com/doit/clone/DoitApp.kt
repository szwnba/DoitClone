package com.doit.clone

import android.app.Application
import android.app.NotificationChannel
import android.app.NotificationManager
import android.content.Context
import com.doit.clone.data.db.DoitDatabase
import com.doit.clone.data.repo.OrganizeRepository
import com.doit.clone.data.repo.SettingsRepository
import com.doit.clone.data.repo.TaskRepository
import com.doit.clone.reminder.ReminderScheduler

/** 手动依赖注入容器 */
object Graph {
    lateinit var db: DoitDatabase
        private set
    lateinit var taskRepo: TaskRepository
        private set
    lateinit var organizeRepo: OrganizeRepository
        private set
    lateinit var settings: SettingsRepository
        private set

    private var initialized = false

    fun init(context: Context) {
        if (initialized) return
        synchronized(this) {
            if (initialized) return
            db = DoitDatabase.build(context)
            taskRepo = TaskRepository(db.taskDao(), db.subTaskDao())
            organizeRepo = OrganizeRepository(db.projectDao(), db.goalDao(), db.contextDao(), db.filterDao(), db.taskDao())
            settings = SettingsRepository(context)
            initialized = true
        }
    }
}

class DoitApp : Application() {

    override fun onCreate() {
        super.onCreate()
        Graph.init(this)
        createChannels()
        ReminderScheduler.rescheduleAll(this)
    }

    private fun createChannels() {
        val manager = getSystemService(Context.NOTIFICATION_SERVICE) as NotificationManager
        manager.createNotificationChannel(
            NotificationChannel(
                ReminderScheduler.CHANNEL_TASKS,
                getString(R.string.reminder_channel_name),
                NotificationManager.IMPORTANCE_HIGH
            )
        )
        manager.createNotificationChannel(
            NotificationChannel(
                ReminderScheduler.CHANNEL_DAILY,
                "每日计划与回顾",
                NotificationManager.IMPORTANCE_DEFAULT
            )
        )
    }
}
