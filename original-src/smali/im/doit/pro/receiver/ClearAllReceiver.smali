.class public Lim/doit/pro/receiver/ClearAllReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ClearAllReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static declared-synchronized clearAll()V
    .locals 2

    .prologue
    .line 30
    const-class v0, Lim/doit/pro/receiver/ClearAllReceiver;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    invoke-static {v1}, Lim/doit/pro/receiver/ClearAllReceiver;->clearAll(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    monitor-exit v0

    return-void

    .line 30
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized clearAll(Z)V
    .locals 2
    .param p0, "reenableKeyguard"    # Z

    .prologue
    .line 23
    const-class v1, Lim/doit/pro/receiver/ClearAllReceiver;

    monitor-enter v1

    if-eqz p0, :cond_0

    .line 24
    :try_start_0
    invoke-static {}, Lim/doit/pro/utils/ManageKeyguard;->reenableKeyguard()V

    .line 26
    :cond_0
    invoke-static {}, Lim/doit/pro/utils/ManageWakeLock;->releaseAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    monitor-exit v1

    return-void

    .line 23
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static getPendingIntent(Landroid/content/Context;)Landroid/app/PendingIntent;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 34
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lim/doit/pro/receiver/ClearAllReceiver;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p0, v2, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized removeCancel(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    const-class v2, Lim/doit/pro/receiver/ClearAllReceiver;

    monitor-enter v2

    :try_start_0
    const-string v1, "alarm"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 46
    .local v0, "am":Landroid/app/AlarmManager;
    invoke-static {p0}, Lim/doit/pro/receiver/ClearAllReceiver;->getPendingIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    monitor-exit v2

    return-void

    .line 45
    .end local v0    # "am":Landroid/app/AlarmManager;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static declared-synchronized setCancel(Landroid/content/Context;I)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "timeout"    # I

    .prologue
    .line 38
    const-class v2, Lim/doit/pro/receiver/ClearAllReceiver;

    monitor-enter v2

    :try_start_0
    invoke-static {p0}, Lim/doit/pro/receiver/ClearAllReceiver;->removeCancel(Landroid/content/Context;)V

    .line 39
    const-string v1, "alarm"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 40
    .local v0, "am":Landroid/app/AlarmManager;
    const/4 v1, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    mul-int/lit16 v3, p1, 0x3e8

    int-to-long v6, v3

    add-long/2addr v4, v6

    .line 41
    invoke-static {p0}, Lim/doit/pro/receiver/ClearAllReceiver;->getPendingIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v3

    .line 40
    invoke-virtual {v0, v1, v4, v5, v3}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    monitor-exit v2

    return-void

    .line 38
    .end local v0    # "am":Landroid/app/AlarmManager;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 19
    invoke-static {}, Lim/doit/pro/receiver/ClearAllReceiver;->clearAll()V

    .line 20
    return-void
.end method
