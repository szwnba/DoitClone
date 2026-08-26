.class Lim/doit/pro/activity/BaseFragment$SyncFinishReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BaseFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/activity/BaseFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SyncFinishReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/activity/BaseFragment;


# direct methods
.method private constructor <init>(Lim/doit/pro/activity/BaseFragment;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lim/doit/pro/activity/BaseFragment$SyncFinishReceiver;->this$0:Lim/doit/pro/activity/BaseFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lim/doit/pro/activity/BaseFragment;Lim/doit/pro/activity/BaseFragment$SyncFinishReceiver;)V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lim/doit/pro/activity/BaseFragment$SyncFinishReceiver;-><init>(Lim/doit/pro/activity/BaseFragment;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 72
    iget-object v0, p0, Lim/doit/pro/activity/BaseFragment$SyncFinishReceiver;->this$0:Lim/doit/pro/activity/BaseFragment;

    invoke-virtual {v0}, Lim/doit/pro/activity/BaseFragment;->afterSync()V

    .line 73
    return-void
.end method
