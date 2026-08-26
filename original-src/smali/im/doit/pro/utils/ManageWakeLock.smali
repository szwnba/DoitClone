.class public Lim/doit/pro/utils/ManageWakeLock;
.super Ljava/lang/Object;
.source "ManageWakeLock.java"


# static fields
.field public static final TAG_FULL:Ljava/lang/String; = "im.doit.util.ManageWakeLock.full"

.field public static final TAG_PARTIAL:Ljava/lang/String; = "im.doit.util.ManageWakeLock.partial"

.field private static volatile mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

.field private static volatile mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 13
    sput-object v0, Lim/doit/pro/utils/ManageWakeLock;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 14
    sput-object v0, Lim/doit/pro/utils/ManageWakeLock;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 16
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized acquireFull(Landroid/content/Context;)V
    .locals 2
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    .line 19
    const-class v1, Lim/doit/pro/utils/ManageWakeLock;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lim/doit/pro/utils/ManageWakeLock;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 36
    :goto_0
    monitor-exit v1

    return-void

    .line 35
    :cond_0
    const/4 v0, 0x3

    :try_start_1
    invoke-static {p0, v0}, Lim/doit/pro/receiver/ClearAllReceiver;->setCancel(Landroid/content/Context;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 19
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized acquirePartial(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    const-class v0, Lim/doit/pro/utils/ManageWakeLock;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lim/doit/pro/utils/ManageWakeLock;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 47
    :cond_0
    monitor-exit v0

    return-void

    .line 39
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized releaseAll()V
    .locals 2

    .prologue
    .line 70
    const-class v1, Lim/doit/pro/utils/ManageWakeLock;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lim/doit/pro/utils/ManageWakeLock;->releaseFull()V

    .line 71
    invoke-static {}, Lim/doit/pro/utils/ManageWakeLock;->releasePartial()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    monitor-exit v1

    return-void

    .line 70
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized releaseFull()V
    .locals 2

    .prologue
    .line 50
    const-class v1, Lim/doit/pro/utils/ManageWakeLock;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lim/doit/pro/utils/ManageWakeLock;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 51
    sget-object v0, Lim/doit/pro/utils/ManageWakeLock;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 52
    const/4 v0, 0x0

    sput-object v0, Lim/doit/pro/utils/ManageWakeLock;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    :cond_0
    monitor-exit v1

    return-void

    .line 50
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized releaseFull(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 57
    const-class v3, Lim/doit/pro/utils/ManageWakeLock;

    monitor-enter v3

    :try_start_0
    const-string v2, "keyguard"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    .line 58
    .local v1, "keyguardManager":Landroid/app/KeyguardManager;
    const-string v2, "TAG"

    invoke-virtual {v1, v2}, Landroid/app/KeyguardManager;->newKeyguardLock(Ljava/lang/String;)Landroid/app/KeyguardManager$KeyguardLock;

    move-result-object v0

    .line 59
    .local v0, "keyguardLock":Landroid/app/KeyguardManager$KeyguardLock;
    invoke-virtual {v0}, Landroid/app/KeyguardManager$KeyguardLock;->disableKeyguard()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    monitor-exit v3

    return-void

    .line 57
    .end local v0    # "keyguardLock":Landroid/app/KeyguardManager$KeyguardLock;
    .end local v1    # "keyguardManager":Landroid/app/KeyguardManager;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public static declared-synchronized releasePartial()V
    .locals 2

    .prologue
    .line 63
    const-class v1, Lim/doit/pro/utils/ManageWakeLock;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lim/doit/pro/utils/ManageWakeLock;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 64
    sget-object v0, Lim/doit/pro/utils/ManageWakeLock;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 65
    const/4 v0, 0x0

    sput-object v0, Lim/doit/pro/utils/ManageWakeLock;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    :cond_0
    monitor-exit v1

    return-void

    .line 63
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
