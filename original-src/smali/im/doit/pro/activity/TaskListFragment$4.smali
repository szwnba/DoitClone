.class Lim/doit/pro/activity/TaskListFragment$4;
.super Ljava/lang/Object;
.source "TaskListFragment.java"

# interfaces
.implements Lim/doit/pro/ui/component/DMessageDialog$OnButtonClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/activity/TaskListFragment;->emptyTasks()V
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
    iput-object p1, p0, Lim/doit/pro/activity/TaskListFragment$4;->this$0:Lim/doit/pro/activity/TaskListFragment;

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 153
    iget-object v0, p0, Lim/doit/pro/activity/TaskListFragment$4;->this$0:Lim/doit/pro/activity/TaskListFragment;

    invoke-static {v0}, Lim/doit/pro/activity/TaskListFragment;->access$10(Lim/doit/pro/activity/TaskListFragment;)Lim/doit/pro/activity/TaskListFragment$EmptyTasks;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 158
    :goto_0
    return-void

    .line 156
    :cond_0
    iget-object v0, p0, Lim/doit/pro/activity/TaskListFragment$4;->this$0:Lim/doit/pro/activity/TaskListFragment;

    new-instance v1, Lim/doit/pro/activity/TaskListFragment$EmptyTasks;

    iget-object v2, p0, Lim/doit/pro/activity/TaskListFragment$4;->this$0:Lim/doit/pro/activity/TaskListFragment;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lim/doit/pro/activity/TaskListFragment$EmptyTasks;-><init>(Lim/doit/pro/activity/TaskListFragment;Lim/doit/pro/activity/TaskListFragment$EmptyTasks;)V

    invoke-static {v0, v1}, Lim/doit/pro/activity/TaskListFragment;->access$1(Lim/doit/pro/activity/TaskListFragment;Lim/doit/pro/activity/TaskListFragment$EmptyTasks;)V

    .line 157
    iget-object v0, p0, Lim/doit/pro/activity/TaskListFragment$4;->this$0:Lim/doit/pro/activity/TaskListFragment;

    invoke-static {v0}, Lim/doit/pro/activity/TaskListFragment;->access$10(Lim/doit/pro/activity/TaskListFragment;)Lim/doit/pro/activity/TaskListFragment$EmptyTasks;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lim/doit/pro/activity/TaskListFragment$EmptyTasks;->execute([Ljava/lang/Object;)Lim/doit/pro/asynctask/DoitAsyncTask;

    goto :goto_0
.end method
