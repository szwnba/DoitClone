.class public abstract Lim/doit/pro/activity/BaseActivityRegisterSyncFinish;
.super Lim/doit/pro/activity/DSwipeBackBaseActivity;
.source "BaseActivityRegisterSyncFinish.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lim/doit/pro/activity/BaseActivityRegisterSyncFinish$SyncFinishReceiver;
    }
.end annotation


# instance fields
.field private mSyncFinishReceiver:Lim/doit/pro/activity/BaseActivityRegisterSyncFinish$SyncFinishReceiver;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lim/doit/pro/activity/DSwipeBackBaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract afterSync(Z)V
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 21
    invoke-super {p0, p1}, Lim/doit/pro/activity/DSwipeBackBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 22
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 41
    invoke-super {p0}, Lim/doit/pro/activity/DSwipeBackBaseActivity;->onDestroy()V

    .line 42
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lim/doit/pro/activity/BaseActivityRegisterSyncFinish;->mSyncFinishReceiver:Lim/doit/pro/activity/BaseActivityRegisterSyncFinish$SyncFinishReceiver;

    if-eqz v0, :cond_0

    .line 34
    iget-object v0, p0, Lim/doit/pro/activity/BaseActivityRegisterSyncFinish;->mSyncFinishReceiver:Lim/doit/pro/activity/BaseActivityRegisterSyncFinish$SyncFinishReceiver;

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/BaseActivityRegisterSyncFinish;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 36
    :cond_0
    invoke-super {p0}, Lim/doit/pro/activity/DSwipeBackBaseActivity;->onPause()V

    .line 37
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 26
    invoke-super {p0}, Lim/doit/pro/activity/DSwipeBackBaseActivity;->onResume()V

    .line 27
    new-instance v0, Lim/doit/pro/activity/BaseActivityRegisterSyncFinish$SyncFinishReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lim/doit/pro/activity/BaseActivityRegisterSyncFinish$SyncFinishReceiver;-><init>(Lim/doit/pro/activity/BaseActivityRegisterSyncFinish;Lim/doit/pro/activity/BaseActivityRegisterSyncFinish$SyncFinishReceiver;)V

    iput-object v0, p0, Lim/doit/pro/activity/BaseActivityRegisterSyncFinish;->mSyncFinishReceiver:Lim/doit/pro/activity/BaseActivityRegisterSyncFinish$SyncFinishReceiver;

    .line 28
    iget-object v0, p0, Lim/doit/pro/activity/BaseActivityRegisterSyncFinish;->mSyncFinishReceiver:Lim/doit/pro/activity/BaseActivityRegisterSyncFinish$SyncFinishReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "im.doit.pro.service.DoitSyncService.SYNC_FINISH"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lim/doit/pro/activity/BaseActivityRegisterSyncFinish;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 29
    return-void
.end method
