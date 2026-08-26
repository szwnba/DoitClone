.class public Lim/doit/pro/receiver/ReminderComputeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ReminderComputeReceiver.java"


# static fields
.field public static final ACTION:Ljava/lang/String; = "im.doit.pro.receiver.ReminderComputeReceiver"

.field public static final COMPUTE:Ljava/lang/String; = "COMPUTE"

.field private static final EARLIER_TIME:I = 0x0

.field private static final REDMINER_REQUEST_CODE:I = 0xea

.field public static final REMINDER:Ljava/lang/String; = "REMINDER"

.field public static final SEND:Ljava/lang/String; = "send"

.field public static final UPDATE_AND_SEND:Ljava/lang/String; = "update_and_send"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static cancelAlarm(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 49
    .line 50
    const-string v3, "alarm"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 49
    check-cast v0, Landroid/app/AlarmManager;

    .line 51
    .local v0, "am":Landroid/app/AlarmManager;
    new-instance v1, Landroid/content/Intent;

    const-string v3, "im.doit.pro.receiver.ReminderSendReceiver"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 53
    .local v1, "intent":Landroid/content/Intent;
    const/16 v3, 0xea

    .line 54
    const/high16 v4, 0x20000000

    .line 52
    invoke-static {p0, v3, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 55
    .local v2, "sender":Landroid/app/PendingIntent;
    if-eqz v2, :cond_0

    .line 56
    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 58
    :cond_0
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 25
    const-string v6, "**ReminderComputeReceiver**"

    invoke-static {v6}, Lim/doit/pro/utils/Logger;->d(Ljava/lang/Object;)V

    .line 26
    const-string v6, "COMPUTE"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 27
    const-string v6, "update_and_send"

    const-string v7, "COMPUTE"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 28
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->clearReminderQueue()V

    .line 30
    :cond_0
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->getLastReminder()Lim/doit/pro/db/metadata/ReminderMessage;

    move-result-object v2

    .line 31
    .local v2, "reminder":Lim/doit/pro/db/metadata/ReminderMessage;
    if-nez v2, :cond_2

    .line 32
    invoke-static {p1}, Lim/doit/pro/receiver/ReminderComputeReceiver;->cancelAlarm(Landroid/content/Context;)V

    .line 46
    .end local v2    # "reminder":Lim/doit/pro/db/metadata/ReminderMessage;
    :cond_1
    :goto_0
    return-void

    .line 36
    .restart local v2    # "reminder":Lim/doit/pro/db/metadata/ReminderMessage;
    :cond_2
    const-string v6, "alarm"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 35
    check-cast v0, Landroid/app/AlarmManager;

    .line 37
    .local v0, "alarmManager":Landroid/app/AlarmManager;
    new-instance v3, Landroid/content/Intent;

    const-string v6, "im.doit.pro.receiver.ReminderSendReceiver"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 38
    .local v3, "service":Landroid/content/Intent;
    const-string v6, "REMINDER"

    invoke-virtual {v3, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 40
    const/16 v6, 0xea

    .line 41
    const/high16 v7, 0x10000000

    .line 39
    invoke-static {p1, v6, v3, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 42
    .local v1, "pi":Landroid/app/PendingIntent;
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 43
    iget-wide v6, v2, Lim/doit/pro/db/metadata/ReminderMessage;->reminderTime:J

    const-wide/16 v8, 0x0

    sub-long v4, v6, v8

    .line 44
    .local v4, "triggerTime":J
    const/4 v6, 0x0

    invoke-virtual {v0, v6, v4, v5, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_0
.end method
