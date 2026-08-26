.class Lim/doit/pro/activity/TaskDetailFragment$OnSortSubTaskClickListener$1;
.super Ljava/lang/Object;
.source "TaskDetailFragment.java"

# interfaces
.implements Lim/doit/pro/ui/component/SubTaskSortDialog$OnSortSubTaskFinishListner;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/activity/TaskDetailFragment$OnSortSubTaskClickListener;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lim/doit/pro/activity/TaskDetailFragment$OnSortSubTaskClickListener;


# direct methods
.method constructor <init>(Lim/doit/pro/activity/TaskDetailFragment$OnSortSubTaskClickListener;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lim/doit/pro/activity/TaskDetailFragment$OnSortSubTaskClickListener$1;->this$1:Lim/doit/pro/activity/TaskDetailFragment$OnSortSubTaskClickListener;

    .line 1631
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public finish(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lim/doit/pro/model/SubTask;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1635
    .local p1, "subTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/SubTask;>;"
    iget-object v0, p0, Lim/doit/pro/activity/TaskDetailFragment$OnSortSubTaskClickListener$1;->this$1:Lim/doit/pro/activity/TaskDetailFragment$OnSortSubTaskClickListener;

    invoke-static {v0}, Lim/doit/pro/activity/TaskDetailFragment$OnSortSubTaskClickListener;->access$1(Lim/doit/pro/activity/TaskDetailFragment$OnSortSubTaskClickListener;)Lim/doit/pro/activity/TaskDetailFragment;

    move-result-object v0

    invoke-static {v0}, Lim/doit/pro/activity/TaskDetailFragment;->access$0(Lim/doit/pro/activity/TaskDetailFragment;)Lim/doit/pro/model/Task;

    move-result-object v0

    invoke-virtual {v0, p1}, Lim/doit/pro/model/Task;->setSubTasks(Ljava/util/ArrayList;)V

    .line 1636
    iget-object v0, p0, Lim/doit/pro/activity/TaskDetailFragment$OnSortSubTaskClickListener$1;->this$1:Lim/doit/pro/activity/TaskDetailFragment$OnSortSubTaskClickListener;

    invoke-static {v0}, Lim/doit/pro/activity/TaskDetailFragment$OnSortSubTaskClickListener;->access$1(Lim/doit/pro/activity/TaskDetailFragment$OnSortSubTaskClickListener;)Lim/doit/pro/activity/TaskDetailFragment;

    move-result-object v0

    invoke-static {v0}, Lim/doit/pro/activity/TaskDetailFragment;->access$4(Lim/doit/pro/activity/TaskDetailFragment;)V

    .line 1637
    return-void
.end method
