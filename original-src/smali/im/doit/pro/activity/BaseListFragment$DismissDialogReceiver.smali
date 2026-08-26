.class Lim/doit/pro/activity/BaseListFragment$DismissDialogReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BaseListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/activity/BaseListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DismissDialogReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/activity/BaseListFragment;


# direct methods
.method private constructor <init>(Lim/doit/pro/activity/BaseListFragment;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lim/doit/pro/activity/BaseListFragment$DismissDialogReceiver;->this$0:Lim/doit/pro/activity/BaseListFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lim/doit/pro/activity/BaseListFragment;Lim/doit/pro/activity/BaseListFragment$DismissDialogReceiver;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lim/doit/pro/activity/BaseListFragment$DismissDialogReceiver;-><init>(Lim/doit/pro/activity/BaseListFragment;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 38
    iget-object v0, p0, Lim/doit/pro/activity/BaseListFragment$DismissDialogReceiver;->this$0:Lim/doit/pro/activity/BaseListFragment;

    invoke-virtual {v0}, Lim/doit/pro/activity/BaseListFragment;->dismissDialog()V

    .line 39
    return-void
.end method
