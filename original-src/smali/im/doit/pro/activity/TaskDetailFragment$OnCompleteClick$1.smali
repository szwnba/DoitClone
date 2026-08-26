.class Lim/doit/pro/activity/TaskDetailFragment$OnCompleteClick$1;
.super Ljava/lang/Object;
.source "TaskDetailFragment.java"

# interfaces
.implements Lim/doit/pro/controller/CompleteTask$CompleteTaskFinishListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/activity/TaskDetailFragment$OnCompleteClick;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lim/doit/pro/activity/TaskDetailFragment$OnCompleteClick;


# direct methods
.method constructor <init>(Lim/doit/pro/activity/TaskDetailFragment$OnCompleteClick;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lim/doit/pro/activity/TaskDetailFragment$OnCompleteClick$1;->this$1:Lim/doit/pro/activity/TaskDetailFragment$OnCompleteClick;

    .line 1233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .prologue
    .line 1237
    iget-object v0, p0, Lim/doit/pro/activity/TaskDetailFragment$OnCompleteClick$1;->this$1:Lim/doit/pro/activity/TaskDetailFragment$OnCompleteClick;

    invoke-static {v0}, Lim/doit/pro/activity/TaskDetailFragment$OnCompleteClick;->access$0(Lim/doit/pro/activity/TaskDetailFragment$OnCompleteClick;)V

    .line 1238
    iget-object v0, p0, Lim/doit/pro/activity/TaskDetailFragment$OnCompleteClick$1;->this$1:Lim/doit/pro/activity/TaskDetailFragment$OnCompleteClick;

    invoke-static {v0}, Lim/doit/pro/activity/TaskDetailFragment$OnCompleteClick;->access$2(Lim/doit/pro/activity/TaskDetailFragment$OnCompleteClick;)Lim/doit/pro/activity/TaskDetailFragment;

    move-result-object v0

    invoke-static {v0}, Lim/doit/pro/activity/TaskDetailFragment;->access$0(Lim/doit/pro/activity/TaskDetailFragment;)Lim/doit/pro/model/Task;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lim/doit/pro/model/Task;->setChanged(Z)V

    .line 1239
    iget-object v0, p0, Lim/doit/pro/activity/TaskDetailFragment$OnCompleteClick$1;->this$1:Lim/doit/pro/activity/TaskDetailFragment$OnCompleteClick;

    invoke-static {v0}, Lim/doit/pro/activity/TaskDetailFragment$OnCompleteClick;->access$2(Lim/doit/pro/activity/TaskDetailFragment$OnCompleteClick;)Lim/doit/pro/activity/TaskDetailFragment;

    move-result-object v0

    invoke-static {v0}, Lim/doit/pro/activity/TaskDetailFragment;->access$6(Lim/doit/pro/activity/TaskDetailFragment;)Lim/doit/pro/activity/TaskDetailFragment$TaskChangeListener;

    move-result-object v0

    iget-object v1, p0, Lim/doit/pro/activity/TaskDetailFragment$OnCompleteClick$1;->this$1:Lim/doit/pro/activity/TaskDetailFragment$OnCompleteClick;

    invoke-static {v1}, Lim/doit/pro/activity/TaskDetailFragment$OnCompleteClick;->access$2(Lim/doit/pro/activity/TaskDetailFragment$OnCompleteClick;)Lim/doit/pro/activity/TaskDetailFragment;

    move-result-object v1

    invoke-static {v1}, Lim/doit/pro/activity/TaskDetailFragment;->access$0(Lim/doit/pro/activity/TaskDetailFragment;)Lim/doit/pro/model/Task;

    move-result-object v1

    invoke-interface {v0, v1}, Lim/doit/pro/activity/TaskDetailFragment$TaskChangeListener;->onTaskComplete(Lim/doit/pro/model/Task;)V

    .line 1240
    return-void
.end method
