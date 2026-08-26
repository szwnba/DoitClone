.class Lim/doit/pro/activity/TaskDetailFragment$OnTaskContextClick$1;
.super Ljava/lang/Object;
.source "TaskDetailFragment.java"

# interfaces
.implements Lim/doit/pro/ui/component/SelectTaskContextDialog$OnTaskContextFinishListner;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/activity/TaskDetailFragment$OnTaskContextClick;->click(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lim/doit/pro/activity/TaskDetailFragment$OnTaskContextClick;


# direct methods
.method constructor <init>(Lim/doit/pro/activity/TaskDetailFragment$OnTaskContextClick;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lim/doit/pro/activity/TaskDetailFragment$OnTaskContextClick$1;->this$1:Lim/doit/pro/activity/TaskDetailFragment$OnTaskContextClick;

    .line 1494
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public finish(Ljava/lang/String;)V
    .locals 1
    .param p1, "taskContext"    # Ljava/lang/String;

    .prologue
    .line 1498
    iget-object v0, p0, Lim/doit/pro/activity/TaskDetailFragment$OnTaskContextClick$1;->this$1:Lim/doit/pro/activity/TaskDetailFragment$OnTaskContextClick;

    invoke-static {v0}, Lim/doit/pro/activity/TaskDetailFragment$OnTaskContextClick;->access$1(Lim/doit/pro/activity/TaskDetailFragment$OnTaskContextClick;)Lim/doit/pro/activity/TaskDetailFragment;

    move-result-object v0

    invoke-static {v0}, Lim/doit/pro/activity/TaskDetailFragment;->access$0(Lim/doit/pro/activity/TaskDetailFragment;)Lim/doit/pro/model/Task;

    move-result-object v0

    invoke-virtual {v0, p1}, Lim/doit/pro/model/Task;->setContext(Ljava/lang/String;)V

    .line 1499
    iget-object v0, p0, Lim/doit/pro/activity/TaskDetailFragment$OnTaskContextClick$1;->this$1:Lim/doit/pro/activity/TaskDetailFragment$OnTaskContextClick;

    invoke-static {v0}, Lim/doit/pro/activity/TaskDetailFragment$OnTaskContextClick;->access$1(Lim/doit/pro/activity/TaskDetailFragment$OnTaskContextClick;)Lim/doit/pro/activity/TaskDetailFragment;

    move-result-object v0

    invoke-static {v0}, Lim/doit/pro/activity/TaskDetailFragment;->access$1(Lim/doit/pro/activity/TaskDetailFragment;)Z

    .line 1500
    iget-object v0, p0, Lim/doit/pro/activity/TaskDetailFragment$OnTaskContextClick$1;->this$1:Lim/doit/pro/activity/TaskDetailFragment$OnTaskContextClick;

    invoke-static {v0}, Lim/doit/pro/activity/TaskDetailFragment$OnTaskContextClick;->access$1(Lim/doit/pro/activity/TaskDetailFragment$OnTaskContextClick;)Lim/doit/pro/activity/TaskDetailFragment;

    move-result-object v0

    invoke-static {v0}, Lim/doit/pro/activity/TaskDetailFragment;->access$19(Lim/doit/pro/activity/TaskDetailFragment;)V

    .line 1501
    return-void
.end method
