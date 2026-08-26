.class Lim/doit/pro/activity/TaskDetailFragment$OnSortSubTaskClickListener;
.super Ljava/lang/Object;
.source "TaskDetailFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/activity/TaskDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnSortSubTaskClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/activity/TaskDetailFragment;


# direct methods
.method private constructor <init>(Lim/doit/pro/activity/TaskDetailFragment;)V
    .locals 0

    .prologue
    .line 1625
    iput-object p1, p0, Lim/doit/pro/activity/TaskDetailFragment$OnSortSubTaskClickListener;->this$0:Lim/doit/pro/activity/TaskDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lim/doit/pro/activity/TaskDetailFragment;Lim/doit/pro/activity/TaskDetailFragment$OnSortSubTaskClickListener;)V
    .locals 0

    .prologue
    .line 1625
    invoke-direct {p0, p1}, Lim/doit/pro/activity/TaskDetailFragment$OnSortSubTaskClickListener;-><init>(Lim/doit/pro/activity/TaskDetailFragment;)V

    return-void
.end method

.method static synthetic access$1(Lim/doit/pro/activity/TaskDetailFragment$OnSortSubTaskClickListener;)Lim/doit/pro/activity/TaskDetailFragment;
    .locals 1

    .prologue
    .line 1625
    iget-object v0, p0, Lim/doit/pro/activity/TaskDetailFragment$OnSortSubTaskClickListener;->this$0:Lim/doit/pro/activity/TaskDetailFragment;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1628
    iget-object v1, p0, Lim/doit/pro/activity/TaskDetailFragment$OnSortSubTaskClickListener;->this$0:Lim/doit/pro/activity/TaskDetailFragment;

    invoke-static {v1}, Lim/doit/pro/activity/TaskDetailFragment;->access$3(Lim/doit/pro/activity/TaskDetailFragment;)V

    .line 1629
    new-instance v0, Lim/doit/pro/ui/component/SubTaskSortDialog;

    iget-object v1, p0, Lim/doit/pro/activity/TaskDetailFragment$OnSortSubTaskClickListener;->this$0:Lim/doit/pro/activity/TaskDetailFragment;

    invoke-virtual {v1}, Lim/doit/pro/activity/TaskDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 1630
    iget-object v2, p0, Lim/doit/pro/activity/TaskDetailFragment$OnSortSubTaskClickListener;->this$0:Lim/doit/pro/activity/TaskDetailFragment;

    invoke-static {v2}, Lim/doit/pro/activity/TaskDetailFragment;->access$5(Lim/doit/pro/activity/TaskDetailFragment;)Z

    move-result v2

    iget-object v3, p0, Lim/doit/pro/activity/TaskDetailFragment$OnSortSubTaskClickListener;->this$0:Lim/doit/pro/activity/TaskDetailFragment;

    invoke-static {v3}, Lim/doit/pro/activity/TaskDetailFragment;->access$0(Lim/doit/pro/activity/TaskDetailFragment;)Lim/doit/pro/model/Task;

    move-result-object v3

    invoke-virtual {v3}, Lim/doit/pro/model/Task;->getSubTasks()Ljava/util/ArrayList;

    move-result-object v3

    .line 1629
    invoke-direct {v0, v1, v2, v3}, Lim/doit/pro/ui/component/SubTaskSortDialog;-><init>(Landroid/app/Activity;ZLjava/util/ArrayList;)V

    .line 1631
    .local v0, "dialog":Lim/doit/pro/ui/component/SubTaskSortDialog;
    new-instance v1, Lim/doit/pro/activity/TaskDetailFragment$OnSortSubTaskClickListener$1;

    invoke-direct {v1, p0}, Lim/doit/pro/activity/TaskDetailFragment$OnSortSubTaskClickListener$1;-><init>(Lim/doit/pro/activity/TaskDetailFragment$OnSortSubTaskClickListener;)V

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/SubTaskSortDialog;->setOnSortSubTaskFinishListner(Lim/doit/pro/ui/component/SubTaskSortDialog$OnSortSubTaskFinishListner;)V

    .line 1639
    return-void
.end method
