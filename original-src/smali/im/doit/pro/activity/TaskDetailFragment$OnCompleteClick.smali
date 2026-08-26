.class Lim/doit/pro/activity/TaskDetailFragment$OnCompleteClick;
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
    name = "OnCompleteClick"
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/activity/TaskDetailFragment;


# direct methods
.method private constructor <init>(Lim/doit/pro/activity/TaskDetailFragment;)V
    .locals 0

    .prologue
    .line 1220
    iput-object p1, p0, Lim/doit/pro/activity/TaskDetailFragment$OnCompleteClick;->this$0:Lim/doit/pro/activity/TaskDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lim/doit/pro/activity/TaskDetailFragment;Lim/doit/pro/activity/TaskDetailFragment$OnCompleteClick;)V
    .locals 0

    .prologue
    .line 1220
    invoke-direct {p0, p1}, Lim/doit/pro/activity/TaskDetailFragment$OnCompleteClick;-><init>(Lim/doit/pro/activity/TaskDetailFragment;)V

    return-void
.end method

.method static synthetic access$0(Lim/doit/pro/activity/TaskDetailFragment$OnCompleteClick;)V
    .locals 0

    .prologue
    .line 1250
    invoke-direct {p0}, Lim/doit/pro/activity/TaskDetailFragment$OnCompleteClick;->setViewContentAfterCompletedStatusChange()V

    return-void
.end method

.method static synthetic access$2(Lim/doit/pro/activity/TaskDetailFragment$OnCompleteClick;)Lim/doit/pro/activity/TaskDetailFragment;
    .locals 1

    .prologue
    .line 1220
    iget-object v0, p0, Lim/doit/pro/activity/TaskDetailFragment$OnCompleteClick;->this$0:Lim/doit/pro/activity/TaskDetailFragment;

    return-object v0
.end method

.method private setViewContentAfterCompletedStatusChange()V
    .locals 1

    .prologue
    .line 1251
    iget-object v0, p0, Lim/doit/pro/activity/TaskDetailFragment$OnCompleteClick;->this$0:Lim/doit/pro/activity/TaskDetailFragment;

    invoke-static {v0}, Lim/doit/pro/activity/TaskDetailFragment;->access$7(Lim/doit/pro/activity/TaskDetailFragment;)V

    .line 1252
    iget-object v0, p0, Lim/doit/pro/activity/TaskDetailFragment$OnCompleteClick;->this$0:Lim/doit/pro/activity/TaskDetailFragment;

    invoke-static {v0}, Lim/doit/pro/activity/TaskDetailFragment;->access$8(Lim/doit/pro/activity/TaskDetailFragment;)V

    .line 1253
    iget-object v0, p0, Lim/doit/pro/activity/TaskDetailFragment$OnCompleteClick;->this$0:Lim/doit/pro/activity/TaskDetailFragment;

    invoke-static {v0}, Lim/doit/pro/activity/TaskDetailFragment;->access$9(Lim/doit/pro/activity/TaskDetailFragment;)V

    .line 1254
    iget-object v0, p0, Lim/doit/pro/activity/TaskDetailFragment$OnCompleteClick;->this$0:Lim/doit/pro/activity/TaskDetailFragment;

    invoke-static {v0}, Lim/doit/pro/activity/TaskDetailFragment;->access$10(Lim/doit/pro/activity/TaskDetailFragment;)V

    .line 1255
    iget-object v0, p0, Lim/doit/pro/activity/TaskDetailFragment$OnCompleteClick;->this$0:Lim/doit/pro/activity/TaskDetailFragment;

    invoke-static {v0}, Lim/doit/pro/activity/TaskDetailFragment;->access$11(Lim/doit/pro/activity/TaskDetailFragment;)V

    .line 1256
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1223
    const/4 v1, 0x1

    .line 1224
    .local v1, "isSaveSuccess":Z
    iget-object v2, p0, Lim/doit/pro/activity/TaskDetailFragment$OnCompleteClick;->this$0:Lim/doit/pro/activity/TaskDetailFragment;

    invoke-static {v2}, Lim/doit/pro/activity/TaskDetailFragment;->access$0(Lim/doit/pro/activity/TaskDetailFragment;)Lim/doit/pro/model/Task;

    move-result-object v2

    invoke-virtual {v2}, Lim/doit/pro/model/Task;->isChanged()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1225
    iget-object v2, p0, Lim/doit/pro/activity/TaskDetailFragment$OnCompleteClick;->this$0:Lim/doit/pro/activity/TaskDetailFragment;

    invoke-virtual {v2}, Lim/doit/pro/activity/TaskDetailFragment;->saveTask()Z

    move-result v1

    .line 1227
    :cond_0
    if-nez v1, :cond_1

    .line 1248
    :goto_0
    return-void

    .line 1230
    :cond_1
    iget-object v2, p0, Lim/doit/pro/activity/TaskDetailFragment$OnCompleteClick;->this$0:Lim/doit/pro/activity/TaskDetailFragment;

    invoke-static {v2}, Lim/doit/pro/activity/TaskDetailFragment;->access$0(Lim/doit/pro/activity/TaskDetailFragment;)Lim/doit/pro/model/Task;

    move-result-object v2

    invoke-virtual {v2}, Lim/doit/pro/model/Task;->isNotCompleted()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1231
    new-instance v0, Lim/doit/pro/controller/CompleteTask;

    invoke-direct {v0}, Lim/doit/pro/controller/CompleteTask;-><init>()V

    .line 1232
    .local v0, "completeTask":Lim/doit/pro/controller/CompleteTask;
    iget-object v2, p0, Lim/doit/pro/activity/TaskDetailFragment$OnCompleteClick;->this$0:Lim/doit/pro/activity/TaskDetailFragment;

    invoke-virtual {v2}, Lim/doit/pro/activity/TaskDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lim/doit/pro/activity/TaskDetailFragment$OnCompleteClick;->this$0:Lim/doit/pro/activity/TaskDetailFragment;

    invoke-static {v3}, Lim/doit/pro/activity/TaskDetailFragment;->access$0(Lim/doit/pro/activity/TaskDetailFragment;)Lim/doit/pro/model/Task;

    move-result-object v3

    .line 1233
    new-instance v4, Lim/doit/pro/activity/TaskDetailFragment$OnCompleteClick$1;

    invoke-direct {v4, p0}, Lim/doit/pro/activity/TaskDetailFragment$OnCompleteClick$1;-><init>(Lim/doit/pro/activity/TaskDetailFragment$OnCompleteClick;)V

    .line 1232
    invoke-virtual {v0, v2, v3, v4}, Lim/doit/pro/controller/CompleteTask;->complete(Landroid/app/Activity;Lim/doit/pro/model/Task;Lim/doit/pro/controller/CompleteTask$CompleteTaskFinishListener;)V

    goto :goto_0

    .line 1243
    .end local v0    # "completeTask":Lim/doit/pro/controller/CompleteTask;
    :cond_2
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v2

    iget-object v2, v2, Lim/doit/pro/db/Persist;->taskDao:Lim/doit/pro/db/persist/TaskDao;

    iget-object v3, p0, Lim/doit/pro/activity/TaskDetailFragment$OnCompleteClick;->this$0:Lim/doit/pro/activity/TaskDetailFragment;

    invoke-static {v3}, Lim/doit/pro/activity/TaskDetailFragment;->access$0(Lim/doit/pro/activity/TaskDetailFragment;)Lim/doit/pro/model/Task;

    move-result-object v3

    invoke-virtual {v2, v3}, Lim/doit/pro/db/persist/TaskDao;->uncomplete(Lim/doit/pro/model/Task;)V

    .line 1244
    invoke-direct {p0}, Lim/doit/pro/activity/TaskDetailFragment$OnCompleteClick;->setViewContentAfterCompletedStatusChange()V

    .line 1245
    iget-object v2, p0, Lim/doit/pro/activity/TaskDetailFragment$OnCompleteClick;->this$0:Lim/doit/pro/activity/TaskDetailFragment;

    invoke-static {v2}, Lim/doit/pro/activity/TaskDetailFragment;->access$0(Lim/doit/pro/activity/TaskDetailFragment;)Lim/doit/pro/model/Task;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lim/doit/pro/model/Task;->setChanged(Z)V

    .line 1246
    iget-object v2, p0, Lim/doit/pro/activity/TaskDetailFragment$OnCompleteClick;->this$0:Lim/doit/pro/activity/TaskDetailFragment;

    invoke-static {v2}, Lim/doit/pro/activity/TaskDetailFragment;->access$6(Lim/doit/pro/activity/TaskDetailFragment;)Lim/doit/pro/activity/TaskDetailFragment$TaskChangeListener;

    move-result-object v2

    iget-object v3, p0, Lim/doit/pro/activity/TaskDetailFragment$OnCompleteClick;->this$0:Lim/doit/pro/activity/TaskDetailFragment;

    invoke-static {v3}, Lim/doit/pro/activity/TaskDetailFragment;->access$0(Lim/doit/pro/activity/TaskDetailFragment;)Lim/doit/pro/model/Task;

    move-result-object v3

    invoke-interface {v2, v3}, Lim/doit/pro/activity/TaskDetailFragment$TaskChangeListener;->onTaskComplete(Lim/doit/pro/model/Task;)V

    goto :goto_0
.end method
