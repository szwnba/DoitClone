.class public Lim/doit/pro/utils/ManageKeyguard;
.super Ljava/lang/Object;
.source "ManageKeyguard.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lim/doit/pro/utils/ManageKeyguard$LaunchOnKeyguardExit;
    }
.end annotation


# static fields
.field private static mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

.field private static mKeyguardManager:Landroid/app/KeyguardManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 12
    sput-object v0, Lim/doit/pro/utils/ManageKeyguard;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 13
    sput-object v0, Lim/doit/pro/utils/ManageKeyguard;->mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized disableKeyguard(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    const-class v1, Lim/doit/pro/utils/ManageKeyguard;

    monitor-enter v1

    :try_start_0
    invoke-static {p0}, Lim/doit/pro/utils/ManageKeyguard;->initialize(Landroid/content/Context;)V

    .line 23
    sget-object v0, Lim/doit/pro/utils/ManageKeyguard;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 24
    sget-object v0, Lim/doit/pro/utils/ManageKeyguard;->mKeyguardManager:Landroid/app/KeyguardManager;

    const-string v2, "DOITIM"

    invoke-virtual {v0, v2}, Landroid/app/KeyguardManager;->newKeyguardLock(Ljava/lang/String;)Landroid/app/KeyguardManager$KeyguardLock;

    move-result-object v0

    sput-object v0, Lim/doit/pro/utils/ManageKeyguard;->mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    .line 25
    sget-object v0, Lim/doit/pro/utils/ManageKeyguard;->mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    invoke-virtual {v0}, Landroid/app/KeyguardManager$KeyguardLock;->disableKeyguard()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    :goto_0
    monitor-exit v1

    return-void

    .line 27
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    sput-object v0, Lim/doit/pro/utils/ManageKeyguard;->mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 22
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized exitKeyguardSecurely(Lim/doit/pro/utils/ManageKeyguard$LaunchOnKeyguardExit;)V
    .locals 3
    .param p0, "callback"    # Lim/doit/pro/utils/ManageKeyguard$LaunchOnKeyguardExit;

    .prologue
    .line 48
    const-class v1, Lim/doit/pro/utils/ManageKeyguard;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lim/doit/pro/utils/ManageKeyguard;->inKeyguardRestrictedInputMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    sget-object v0, Lim/doit/pro/utils/ManageKeyguard;->mKeyguardManager:Landroid/app/KeyguardManager;

    new-instance v2, Lim/doit/pro/utils/ManageKeyguard$1;

    invoke-direct {v2, p0}, Lim/doit/pro/utils/ManageKeyguard$1;-><init>(Lim/doit/pro/utils/ManageKeyguard$LaunchOnKeyguardExit;)V

    invoke-virtual {v0, v2}, Landroid/app/KeyguardManager;->exitKeyguardSecurely(Landroid/app/KeyguardManager$OnKeyguardExitResult;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    :goto_0
    monitor-exit v1

    return-void

    .line 59
    :cond_0
    :try_start_1
    invoke-interface {p0}, Lim/doit/pro/utils/ManageKeyguard$LaunchOnKeyguardExit;->LaunchOnKeyguardExitSuccess()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 48
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized inKeyguardRestrictedInputMode()Z
    .locals 2

    .prologue
    .line 32
    const-class v1, Lim/doit/pro/utils/ManageKeyguard;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lim/doit/pro/utils/ManageKeyguard;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-eqz v0, :cond_0

    .line 33
    sget-object v0, Lim/doit/pro/utils/ManageKeyguard;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 35
    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 32
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized initialize(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 16
    const-class v1, Lim/doit/pro/utils/ManageKeyguard;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lim/doit/pro/utils/ManageKeyguard;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-nez v0, :cond_0

    .line 17
    const-string v0, "keyguard"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    sput-object v0, Lim/doit/pro/utils/ManageKeyguard;->mKeyguardManager:Landroid/app/KeyguardManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    :cond_0
    monitor-exit v1

    return-void

    .line 16
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized reenableKeyguard()V
    .locals 2

    .prologue
    .line 39
    const-class v1, Lim/doit/pro/utils/ManageKeyguard;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lim/doit/pro/utils/ManageKeyguard;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-eqz v0, :cond_0

    .line 40
    sget-object v0, Lim/doit/pro/utils/ManageKeyguard;->mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    if-eqz v0, :cond_0

    .line 41
    sget-object v0, Lim/doit/pro/utils/ManageKeyguard;->mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    invoke-virtual {v0}, Landroid/app/KeyguardManager$KeyguardLock;->reenableKeyguard()V

    .line 42
    const/4 v0, 0x0

    sput-object v0, Lim/doit/pro/utils/ManageKeyguard;->mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    :cond_0
    monitor-exit v1

    return-void

    .line 39
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
