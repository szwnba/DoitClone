package com.doit.clone.reminder

import android.content.BroadcastReceiver
import android.content.Context
import android.content.Intent
import com.doit.clone.Graph

class BootReceiver : BroadcastReceiver() {
    override fun onReceive(context: Context, intent: Intent) {
        if (intent.action == Intent.ACTION_BOOT_COMPLETED) {
            Graph.init(context)
            ReminderScheduler.rescheduleAll(context)
        }
    }
}
