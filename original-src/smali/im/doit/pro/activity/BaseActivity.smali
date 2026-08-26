.class public Lim/doit/pro/activity/BaseActivity;
.super Landroid/app/Activity;
.source "BaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lim/doit/pro/activity/BaseActivity$SyncErrorReceiver;
    }
.end annotation


# instance fields
.field protected mApp:Lim/doit/pro/activity/DoitApp;

.field private mSyncErrorReceiver:Lim/doit/pro/activity/BaseActivity$SyncErrorReceiver;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private initFlurryAgent()V
    .locals 3

    .prologue
    .line 45
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/flurry/android/FlurryAgent;->setReportLocation(Z)V

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->getVersionName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    invoke-static {}, Lim/doit/pro/utils/Config;->getConfig()Lim/doit/pro/utils/Config;

    move-result-object v1

    invoke-virtual {v1, p0}, Lim/doit/pro/utils/Config;->isDebug(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 49
    const-string v1, ", is dev "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    :cond_0
    const-string v1, ", server : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lim/doit/pro/utils/PrefUtils;->getServer()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/flurry/android/FlurryAgent;->setVersionName(Ljava/lang/String;)V

    .line 53
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->user()Lim/doit/pro/model/User;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 54
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->user()Lim/doit/pro/model/User;

    move-result-object v1

    invoke-virtual {v1}, Lim/doit/pro/model/User;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/flurry/android/FlurryAgent;->setUserId(Ljava/lang/String;)V

    .line 56
    :cond_1
    const-string v1, "JTMBWCVNFKF98PJ7J48N"

    invoke-static {p0, v1}, Lcom/flurry/android/FlurryAgent;->onStartSession(Landroid/content/Context;Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method private showLockView()V
    .locals 2

    .prologue
    .line 144
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lim/doit/pro/activity/LockActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 145
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lim/doit/pro/activity/BaseActivity;->startActivity(Landroid/content/Intent;)V

    .line 146
    return-void
.end method


# virtual methods
.method protected alertVersionTooOldDialog()V
    .locals 0

    .prologue
    .line 119
    invoke-static {p0}, Lim/doit/pro/utils/AlertDialogUtils;->alertVersionTooOldDialog(Landroid/app/Activity;)V

    .line 120
    return-void
.end method

.method protected goToScreen()V
    .locals 3

    .prologue
    .line 109
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 110
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "android.intent.category.HOME"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 111
    invoke-virtual {p0, v1}, Lim/doit/pro/activity/BaseActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    invoke-virtual {p0}, Lim/doit/pro/activity/BaseActivity;->finish()V

    .line 116
    return-void

    .line 112
    :catch_0
    move-exception v0

    .line 113
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected isShowLockView()Z
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lim/doit/pro/activity/BaseActivity;->mApp:Lim/doit/pro/activity/DoitApp;

    invoke-virtual {v0}, Lim/doit/pro/activity/DoitApp;->isAppResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lim/doit/pro/utils/LocalSettings;->isShowGenstureLock()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    invoke-static {}, Lim/doit/pro/utils/LocalSettings;->getGenstureLockKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lim/doit/pro/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 32
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    invoke-direct {p0}, Lim/doit/pro/activity/BaseActivity;->initFlurryAgent()V

    .line 34
    new-instance v0, Lim/doit/pro/activity/BaseActivity$SyncErrorReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lim/doit/pro/activity/BaseActivity$SyncErrorReceiver;-><init>(Lim/doit/pro/activity/BaseActivity;Lim/doit/pro/activity/BaseActivity$SyncErrorReceiver;)V

    iput-object v0, p0, Lim/doit/pro/activity/BaseActivity;->mSyncErrorReceiver:Lim/doit/pro/activity/BaseActivity$SyncErrorReceiver;

    .line 35
    iget-object v0, p0, Lim/doit/pro/activity/BaseActivity;->mSyncErrorReceiver:Lim/doit/pro/activity/BaseActivity$SyncErrorReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    .line 36
    const-string v2, "im.doit.pro.service.DoitSyncService.SYNC_ERROR"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 35
    invoke-virtual {p0, v0, v1}, Lim/doit/pro/activity/BaseActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 38
    invoke-static {}, Lim/doit/pro/utils/PrefUtils;->getTooOldVersion()I

    move-result v0

    invoke-static {}, Lim/doit/pro/activity/DoitApp;->getVersionCode()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 39
    invoke-virtual {p0}, Lim/doit/pro/activity/BaseActivity;->alertVersionTooOldDialog()V

    .line 41
    :cond_0
    invoke-virtual {p0}, Lim/doit/pro/activity/BaseActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lim/doit/pro/activity/DoitApp;

    iput-object v0, p0, Lim/doit/pro/activity/BaseActivity;->mApp:Lim/doit/pro/activity/DoitApp;

    .line 42
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lim/doit/pro/activity/BaseActivity;->mSyncErrorReceiver:Lim/doit/pro/activity/BaseActivity$SyncErrorReceiver;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lim/doit/pro/activity/BaseActivity;->mSyncErrorReceiver:Lim/doit/pro/activity/BaseActivity$SyncErrorReceiver;

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/BaseActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 103
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 104
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 61
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 62
    invoke-virtual {p0}, Lim/doit/pro/activity/BaseActivity;->isShowLockView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    invoke-direct {p0}, Lim/doit/pro/activity/BaseActivity;->showLockView()V

    .line 69
    :goto_0
    return-void

    .line 64
    :cond_0
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->isLogin()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 65
    iget-object v0, p0, Lim/doit/pro/activity/BaseActivity;->mApp:Lim/doit/pro/activity/DoitApp;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lim/doit/pro/activity/DoitApp;->saveAppResumed(Z)V

    goto :goto_0

    .line 67
    :cond_1
    invoke-virtual {p0}, Lim/doit/pro/activity/BaseActivity;->toLogin()V

    goto :goto_0
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 89
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 90
    invoke-static {p0}, Lcom/flurry/android/FlurryAgent;->onEndSession(Landroid/content/Context;)V

    .line 91
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->isApplicationInForeground()Z

    move-result v0

    if-nez v0, :cond_0

    .line 92
    const-string v0, "doit app not in foreground."

    invoke-static {v0}, Lim/doit/pro/utils/Logger;->d(Ljava/lang/Object;)V

    .line 93
    invoke-static {}, Lim/doit/pro/utils/BroadcastUtils;->sendSyncManyBroadcastBySystem()V

    .line 94
    iget-object v0, p0, Lim/doit/pro/activity/BaseActivity;->mApp:Lim/doit/pro/activity/DoitApp;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lim/doit/pro/activity/DoitApp;->saveAppResumed(Z)V

    .line 96
    :cond_0
    return-void
.end method

.method protected toLogin()V
    .locals 4

    .prologue
    const/high16 v3, 0x10000000

    const/high16 v2, 0x4000000

    .line 72
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->isLoginAgain()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 73
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lim/doit/pro/activity/LoginAgainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 74
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 75
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 76
    invoke-virtual {p0, v0}, Lim/doit/pro/activity/BaseActivity;->startActivity(Landroid/content/Intent;)V

    .line 77
    invoke-virtual {p0}, Lim/doit/pro/activity/BaseActivity;->finish()V

    .line 85
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 78
    :cond_1
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->isLogin()Z

    move-result v1

    if-nez v1, :cond_0

    .line 79
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lim/doit/pro/activity/LoginActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 80
    .restart local v0    # "intent":Landroid/content/Intent;
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 81
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 82
    invoke-virtual {p0, v0}, Lim/doit/pro/activity/BaseActivity;->startActivity(Landroid/content/Intent;)V

    .line 83
    invoke-virtual {p0}, Lim/doit/pro/activity/BaseActivity;->finish()V

    goto :goto_0
.end method
