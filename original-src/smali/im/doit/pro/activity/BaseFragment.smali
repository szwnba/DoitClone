.class public abstract Lim/doit/pro/activity/BaseFragment;
.super Landroid/app/Fragment;
.source "BaseFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lim/doit/pro/activity/BaseFragment$SyncFinishReceiver;
    }
.end annotation


# instance fields
.field protected mBoxGrouper:Lim/doit/pro/activity/listview/group/DoitListViewGrouper;

.field protected mPullToRefreshLayout:Lim/doit/pro/ui/component/pullrefresh/PullToRefreshLayout;

.field private mSyncFinishReceiver:Lim/doit/pro/activity/BaseFragment$SyncFinishReceiver;

.field protected mUpdateSubtitleTextListener:Lim/doit/pro/activity/listener/OnUpdateActionBarSubtitleListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected afterSync()V
    .locals 0

    .prologue
    .line 24
    invoke-virtual {p0}, Lim/doit/pro/activity/BaseFragment;->finishPullToRefresh()V

    .line 25
    return-void
.end method

.method protected finishPullToRefresh()V
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lim/doit/pro/activity/BaseFragment;->mPullToRefreshLayout:Lim/doit/pro/ui/component/pullrefresh/PullToRefreshLayout;

    if-eqz v0, :cond_0

    .line 29
    iget-object v0, p0, Lim/doit/pro/activity/BaseFragment;->mPullToRefreshLayout:Lim/doit/pro/ui/component/pullrefresh/PullToRefreshLayout;

    invoke-virtual {v0}, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshLayout;->setRefreshComplete()V

    .line 31
    :cond_0
    return-void
.end method

.method protected isActivityFinish()Z
    .locals 2

    .prologue
    .line 34
    invoke-virtual {p0}, Lim/doit/pro/activity/BaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 35
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 36
    :cond_0
    const/4 v1, 0x1

    .line 38
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 43
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 44
    check-cast p1, Lim/doit/pro/activity/listener/OnUpdateActionBarSubtitleListener;

    .end local p1    # "activity":Landroid/app/Activity;
    iput-object p1, p0, Lim/doit/pro/activity/BaseFragment;->mUpdateSubtitleTextListener:Lim/doit/pro/activity/listener/OnUpdateActionBarSubtitleListener;

    .line 45
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 57
    iget-object v0, p0, Lim/doit/pro/activity/BaseFragment;->mSyncFinishReceiver:Lim/doit/pro/activity/BaseFragment$SyncFinishReceiver;

    if-eqz v0, :cond_0

    .line 58
    invoke-virtual {p0}, Lim/doit/pro/activity/BaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lim/doit/pro/activity/BaseFragment;->mSyncFinishReceiver:Lim/doit/pro/activity/BaseFragment$SyncFinishReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 60
    :cond_0
    invoke-virtual {p0}, Lim/doit/pro/activity/BaseFragment;->finishPullToRefresh()V

    .line 61
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 62
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 49
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 50
    new-instance v0, Lim/doit/pro/activity/BaseFragment$SyncFinishReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lim/doit/pro/activity/BaseFragment$SyncFinishReceiver;-><init>(Lim/doit/pro/activity/BaseFragment;Lim/doit/pro/activity/BaseFragment$SyncFinishReceiver;)V

    iput-object v0, p0, Lim/doit/pro/activity/BaseFragment;->mSyncFinishReceiver:Lim/doit/pro/activity/BaseFragment$SyncFinishReceiver;

    .line 51
    invoke-virtual {p0}, Lim/doit/pro/activity/BaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lim/doit/pro/activity/BaseFragment;->mSyncFinishReceiver:Lim/doit/pro/activity/BaseFragment$SyncFinishReceiver;

    .line 52
    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "im.doit.pro.service.DoitSyncService.SYNC_FINISH"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 51
    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 53
    return-void
.end method

.method protected sendSyncManyBroadcast()V
    .locals 1

    .prologue
    .line 65
    invoke-virtual {p0}, Lim/doit/pro/activity/BaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lim/doit/pro/utils/BroadcastUtils;->sendSyncManyBroadcast(Landroid/content/Context;)V

    .line 66
    return-void
.end method
