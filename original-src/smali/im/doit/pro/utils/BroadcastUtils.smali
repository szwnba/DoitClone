.class public Lim/doit/pro/utils/BroadcastUtils;
.super Ljava/lang/Object;
.source "BroadcastUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static sendReminder(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 15
    new-instance v0, Landroid/content/Intent;

    const-string v1, "im.doit.pro.receiver.ReminderComputeReceiver"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 16
    .local v0, "filter":Landroid/content/Intent;
    const-string v1, "COMPUTE"

    .line 17
    const-string v2, "send"

    .line 16
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 18
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 19
    return-void
.end method

.method public static sendSyncManyBroadcast(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 37
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "im.doit.pro.receiver.DoitSyncReceiver"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 38
    const-string v1, "sync_type"

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 39
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 40
    return-void
.end method

.method public static sendSyncManyBroadcastBySystem()V
    .locals 1

    .prologue
    .line 29
    invoke-static {}, Lim/doit/pro/utils/UserUtils;->isValidPro()Z

    move-result v0

    if-nez v0, :cond_0

    .line 33
    :goto_0
    return-void

    .line 32
    :cond_0
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->context()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lim/doit/pro/utils/BroadcastUtils;->sendSyncManyBroadcast(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static updateAndSendReminder()V
    .locals 3

    .prologue
    .line 22
    new-instance v0, Landroid/content/Intent;

    const-string v1, "im.doit.pro.receiver.ReminderComputeReceiver"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 23
    .local v0, "filter":Landroid/content/Intent;
    const-string v1, "COMPUTE"

    .line 24
    const-string v2, "update_and_send"

    .line 23
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 25
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->context()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 26
    return-void
.end method

.method public static updateTodayDailyPlanAlarm(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    invoke-static {}, Lim/doit/pro/utils/UserUtils;->isNotReminderDailyPlan()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 44
    invoke-static {p0}, Lim/doit/pro/service/DoitService;->cancelDailyPlanAlarm(Landroid/content/Context;)V

    .line 51
    :goto_0
    return-void

    .line 47
    :cond_0
    new-instance v0, Landroid/content/Intent;

    .line 48
    const-class v1, Lim/doit/pro/receiver/SetTodayDailyPlanAlarmReceiver;

    .line 47
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 49
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "im.doit.pro.receiver.SetTodayDailyPlanAlarmReceiver"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 50
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static updateTodayDailyReviewAlarm(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 54
    invoke-static {}, Lim/doit/pro/utils/UserUtils;->isNotReminderDailyReview()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 55
    invoke-static {p0}, Lim/doit/pro/service/DoitService;->cancelDailyReviewAlarm(Landroid/content/Context;)V

    .line 62
    :goto_0
    return-void

    .line 58
    :cond_0
    new-instance v0, Landroid/content/Intent;

    .line 59
    const-class v1, Lim/doit/pro/receiver/SetTodayDailyReviewAlarmReceiver;

    .line 58
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 60
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "im.doit.pro.receiver.SetTodayDailyReviewAlarmReceiver"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 61
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method
