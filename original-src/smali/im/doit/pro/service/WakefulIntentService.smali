.class public abstract Lim/doit/pro/service/WakefulIntentService;
.super Landroid/app/IntentService;
.source "WakefulIntentService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lim/doit/pro/service/WakefulIntentService$AlarmListener;
    }
.end annotation


# static fields
.field public static final LAST_ALARM:Ljava/lang/String; = "lastAlarm"

.field public static final NAME:Ljava/lang/String; = "com.commonsware.cwac.wakeful.WakefulIntentService"

.field private static volatile lockStatic:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    sput-object v0, Lim/doit/pro/service/WakefulIntentService;->lockStatic:Landroid/os/PowerManager$WakeLock;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 72
    invoke-direct {p0, p1}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 73
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lim/doit/pro/service/WakefulIntentService;->setIntentRedelivery(Z)V

    .line 74
    return-void
.end method

.method private static declared-synchronized getLock(Landroid/content/Context;)Landroid/os/PowerManager$WakeLock;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    const-class v2, Lim/doit/pro/service/WakefulIntentService;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lim/doit/pro/service/WakefulIntentService;->lockStatic:Landroid/os/PowerManager$WakeLock;

    if-nez v1, :cond_0

    .line 36
    const-string v1, "power"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 38
    .local v0, "mgr":Landroid/os/PowerManager;
    const/4 v1, 0x1

    const-string v3, "com.commonsware.cwac.wakeful.WakefulIntentService"

    invoke-virtual {v0, v1, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    sput-object v1, Lim/doit/pro/service/WakefulIntentService;->lockStatic:Landroid/os/PowerManager$WakeLock;

    .line 39
    sget-object v1, Lim/doit/pro/service/WakefulIntentService;->lockStatic:Landroid/os/PowerManager$WakeLock;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 42
    .end local v0    # "mgr":Landroid/os/PowerManager;
    :cond_0
    sget-object v1, Lim/doit/pro/service/WakefulIntentService;->lockStatic:Landroid/os/PowerManager$WakeLock;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-object v1

    .line 35
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static scheduleAlarms(Lim/doit/pro/service/WakefulIntentService$AlarmListener;Landroid/content/Context;)V
    .locals 1
    .param p0, "listener"    # Lim/doit/pro/service/WakefulIntentService$AlarmListener;
    .param p1, "ctxt"    # Landroid/content/Context;

    .prologue
    .line 55
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lim/doit/pro/service/WakefulIntentService;->scheduleAlarms(Lim/doit/pro/service/WakefulIntentService$AlarmListener;Landroid/content/Context;Z)V

    .line 56
    return-void
.end method

.method public static scheduleAlarms(Lim/doit/pro/service/WakefulIntentService$AlarmListener;Landroid/content/Context;Z)V
    .locals 11
    .param p0, "listener"    # Lim/doit/pro/service/WakefulIntentService$AlarmListener;
    .param p1, "ctxt"    # Landroid/content/Context;
    .param p2, "force"    # Z

    .prologue
    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    .line 59
    const-string v6, "com.commonsware.cwac.wakeful.WakefulIntentService"

    invoke-virtual {p1, v6, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 60
    .local v5, "prefs":Landroid/content/SharedPreferences;
    const-string v6, "lastAlarm"

    invoke-interface {v5, v6, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 62
    .local v2, "lastAlarm":J
    cmp-long v6, v2, v8

    if-eqz v6, :cond_0

    if-nez p2, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    cmp-long v6, v6, v2

    if-lez v6, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-interface {p0}, Lim/doit/pro/service/WakefulIntentService$AlarmListener;->getMaxAge()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-lez v6, :cond_1

    .line 63
    :cond_0
    const-string v6, "alarm"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    .line 64
    .local v1, "mgr":Landroid/app/AlarmManager;
    new-instance v0, Landroid/content/Intent;

    const-class v6, Lim/doit/pro/receiver/AlarmReceiver;

    invoke-direct {v0, p1, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 65
    .local v0, "i":Landroid/content/Intent;
    invoke-static {p1, v10, v0, v10}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 67
    .local v4, "pi":Landroid/app/PendingIntent;
    invoke-interface {p0, v1, v4, p1}, Lim/doit/pro/service/WakefulIntentService$AlarmListener;->scheduleAlarms(Landroid/app/AlarmManager;Landroid/app/PendingIntent;Landroid/content/Context;)V

    .line 69
    .end local v0    # "i":Landroid/content/Intent;
    .end local v1    # "mgr":Landroid/app/AlarmManager;
    .end local v4    # "pi":Landroid/app/PendingIntent;
    :cond_1
    return-void
.end method

.method public static sendWakefulWork(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "i"    # Landroid/content/Intent;

    .prologue
    .line 46
    invoke-static {p0}, Lim/doit/pro/service/WakefulIntentService;->getLock(Landroid/content/Context;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 47
    invoke-virtual {p0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 48
    return-void
.end method

.method public static sendWakefulWork(Landroid/content/Context;Ljava/lang/Class;)V
    .locals 1
    .param p0, "ctxt"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 51
    .local p1, "clsService":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p0, v0}, Lim/doit/pro/service/WakefulIntentService;->sendWakefulWork(Landroid/content/Context;Landroid/content/Intent;)V

    .line 52
    return-void
.end method


# virtual methods
.method protected abstract doWakefulWork(Landroid/content/Intent;)V
.end method

.method protected final onHandleIntent(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 91
    :try_start_0
    invoke-virtual {p0, p1}, Lim/doit/pro/service/WakefulIntentService;->doWakefulWork(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    invoke-static {}, Lim/doit/pro/utils/ManageWakeLock;->releasePartial()V

    .line 96
    return-void

    .line 92
    :catchall_0
    move-exception v0

    .line 93
    invoke-static {}, Lim/doit/pro/utils/ManageWakeLock;->releasePartial()V

    .line 95
    throw v0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 78
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_0

    .line 79
    invoke-virtual {p0}, Lim/doit/pro/service/WakefulIntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lim/doit/pro/service/WakefulIntentService;->getLock(Landroid/content/Context;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 83
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/IntentService;->onStartCommand(Landroid/content/Intent;II)I

    .line 85
    const/4 v0, 0x3

    return v0
.end method
