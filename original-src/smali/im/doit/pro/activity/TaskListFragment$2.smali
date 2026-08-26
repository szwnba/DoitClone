.class Lim/doit/pro/activity/TaskListFragment$2;
.super Ljava/lang/Object;
.source "TaskListFragment.java"

# interfaces
.implements Lim/doit/pro/ui/component/DMessageDialog$OnButtonClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/activity/TaskListFragment;->archiveTasks()V
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
    iput-object p1, p0, Lim/doit/pro/activity/TaskListFragment$2;->this$0:Lim/doit/pro/activity/TaskListFragment;

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 121
    iget-object v0, p0, Lim/doit/pro/activity/TaskListFragment$2;->this$0:Lim/doit/pro/activity/TaskListFragment;

    invoke-static {v0}, Lim/doit/pro/activity/TaskListFragment;->access$9(Lim/doit/pro/activity/TaskListFragment;)Lim/doit/pro/activity/TaskListFragment$ArchiveTasks;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 126
    :goto_0
    return-void

    .line 124
    :cond_0
    iget-object v0, p0, Lim/doit/pro/activity/TaskListFragment$2;->this$0:Lim/doit/pro/activity/TaskListFragment;

    new-instance v1, Lim/doit/pro/activity/TaskListFragment$ArchiveTasks;

    iget-object v2, p0, Lim/doit/pro/activity/TaskListFragment$2;->this$0:Lim/doit/pro/activity/TaskListFragment;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lim/doit/pro/activity/TaskListFragment$ArchiveTasks;-><init>(Lim/doit/pro/activity/TaskListFragment;Lim/doit/pro/activity/TaskListFragment$ArchiveTasks;)V

    invoke-static {v0, v1}, Lim/doit/pro/activity/TaskListFragment;->access$0(Lim/doit/pro/activity/TaskListFragment;Lim/doit/pro/activity/TaskListFragment$ArchiveTasks;)V

    .line 125
    iget-object v0, p0, Lim/doit/pro/activity/TaskListFragment$2;->this$0:Lim/doit/pro/activity/TaskListFragment;

    invoke-static {v0}, Lim/doit/pro/activity/TaskListFragment;->access$9(Lim/doit/pro/activity/TaskListFragment;)Lim/doit/pro/activity/TaskListFragment$ArchiveTasks;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lim/doit/pro/activity/TaskListFragment$ArchiveTasks;->execute([Ljava/lang/Object;)Lim/doit/pro/asynctask/DoitAsyncTask;

    goto :goto_0
.end method
