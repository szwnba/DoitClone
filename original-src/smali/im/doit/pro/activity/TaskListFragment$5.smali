.class Lim/doit/pro/activity/TaskListFragment$5;
.super Ljava/lang/Object;
.source "TaskListFragment.java"

# interfaces
.implements Lim/doit/pro/activity/listview/ListViewAdapter$OnPullRefreshEnabledListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/activity/TaskListFragment;->initListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/activity/TaskListFragment;


# direct methods
.method constructor <init>(Lim/doit/pro/activity/TaskListFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lim/doit/pro/activity/TaskListFragment$5;->this$0:Lim/doit/pro/activity/TaskListFragment;

    .line 319
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 323
    iget-object v0, p0, Lim/doit/pro/activity/TaskListFragment$5;->this$0:Lim/doit/pro/activity/TaskListFragment;

    invoke-static {v0}, Lim/doit/pro/activity/TaskListFragment;->access$11(Lim/doit/pro/activity/TaskListFragment;)V

    .line 324
    return-void
.end method
