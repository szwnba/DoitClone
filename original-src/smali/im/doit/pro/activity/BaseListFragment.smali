.class public abstract Lim/doit/pro/activity/BaseListFragment;
.super Lim/doit/pro/activity/BaseFragment;
.source "BaseListFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lim/doit/pro/activity/BaseListFragment$DismissDialogReceiver;
    }
.end annotation


# instance fields
.field private mDismissDialogReceiver:Lim/doit/pro/activity/BaseListFragment$DismissDialogReceiver;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lim/doit/pro/activity/BaseFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract dismissDialog()V
.end method

.method public abstract finishActionMode()V
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 18
    invoke-super {p0, p1}, Lim/doit/pro/activity/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 19
    new-instance v0, Lim/doit/pro/activity/BaseListFragment$DismissDialogReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lim/doit/pro/activity/BaseListFragment$DismissDialogReceiver;-><init>(Lim/doit/pro/activity/BaseListFragment;Lim/doit/pro/activity/BaseListFragment$DismissDialogReceiver;)V

    iput-object v0, p0, Lim/doit/pro/activity/BaseListFragment;->mDismissDialogReceiver:Lim/doit/pro/activity/BaseListFragment$DismissDialogReceiver;

    .line 20
    invoke-virtual {p0}, Lim/doit/pro/activity/BaseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lim/doit/pro/activity/BaseListFragment;->mDismissDialogReceiver:Lim/doit/pro/activity/BaseListFragment$DismissDialogReceiver;

    .line 21
    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "im.doit.pro.activity.DISMISS_DIALOG"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 20
    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 22
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 26
    iget-object v0, p0, Lim/doit/pro/activity/BaseListFragment;->mDismissDialogReceiver:Lim/doit/pro/activity/BaseListFragment$DismissDialogReceiver;

    if-eqz v0, :cond_0

    .line 27
    invoke-virtual {p0}, Lim/doit/pro/activity/BaseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lim/doit/pro/activity/BaseListFragment;->mDismissDialogReceiver:Lim/doit/pro/activity/BaseListFragment$DismissDialogReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 29
    :cond_0
    invoke-super {p0}, Lim/doit/pro/activity/BaseFragment;->onDestroy()V

    .line 30
    return-void
.end method
