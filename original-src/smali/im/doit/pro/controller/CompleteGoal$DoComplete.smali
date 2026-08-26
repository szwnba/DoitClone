.class public Lim/doit/pro/controller/CompleteGoal$DoComplete;
.super Lim/doit/pro/asynctask/DoitAsyncTask;
.source "CompleteGoal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/controller/CompleteGoal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DoComplete"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lim/doit/pro/asynctask/DoitAsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private mIsMakeChildrenComplete:Z

.field final synthetic this$0:Lim/doit/pro/controller/CompleteGoal;


# direct methods
.method public constructor <init>(Lim/doit/pro/controller/CompleteGoal;Z)V
    .locals 0
    .param p2, "isMakeChildrenComplete"    # Z

    .prologue
    .line 69
    iput-object p1, p0, Lim/doit/pro/controller/CompleteGoal$DoComplete;->this$0:Lim/doit/pro/controller/CompleteGoal;

    invoke-direct {p0}, Lim/doit/pro/asynctask/DoitAsyncTask;-><init>()V

    .line 70
    iput-boolean p2, p0, Lim/doit/pro/controller/CompleteGoal$DoComplete;->mIsMakeChildrenComplete:Z

    .line 71
    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lim/doit/pro/controller/CompleteGoal$DoComplete;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 81
    iget-boolean v0, p0, Lim/doit/pro/controller/CompleteGoal$DoComplete;->mIsMakeChildrenComplete:Z

    if-eqz v0, :cond_0

    .line 82
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v0

    iget-object v0, v0, Lim/doit/pro/db/Persist;->taskDao:Lim/doit/pro/db/persist/TaskDao;

    iget-object v1, p0, Lim/doit/pro/controller/CompleteGoal$DoComplete;->this$0:Lim/doit/pro/controller/CompleteGoal;

    invoke-static {v1}, Lim/doit/pro/controller/CompleteGoal;->access$1(Lim/doit/pro/controller/CompleteGoal;)Lim/doit/pro/model/Goal;

    move-result-object v1

    invoke-virtual {v1}, Lim/doit/pro/model/Goal;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/db/persist/TaskDao;->completeByGoal(Ljava/lang/String;)V

    .line 83
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v0

    iget-object v0, v0, Lim/doit/pro/db/Persist;->projectDao:Lim/doit/pro/db/persist/ProjectDao;

    iget-object v1, p0, Lim/doit/pro/controller/CompleteGoal$DoComplete;->this$0:Lim/doit/pro/controller/CompleteGoal;

    invoke-static {v1}, Lim/doit/pro/controller/CompleteGoal;->access$1(Lim/doit/pro/controller/CompleteGoal;)Lim/doit/pro/model/Goal;

    move-result-object v1

    invoke-virtual {v1}, Lim/doit/pro/model/Goal;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/db/persist/ProjectDao;->completeByGoal(Ljava/lang/String;)V

    .line 88
    :goto_0
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v0

    iget-object v0, v0, Lim/doit/pro/db/Persist;->goalDao:Lim/doit/pro/db/persist/GoalDao;

    iget-object v1, p0, Lim/doit/pro/controller/CompleteGoal$DoComplete;->this$0:Lim/doit/pro/controller/CompleteGoal;

    invoke-static {v1}, Lim/doit/pro/controller/CompleteGoal;->access$1(Lim/doit/pro/controller/CompleteGoal;)Lim/doit/pro/model/Goal;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/db/persist/GoalDao;->complete(Lim/doit/pro/model/Goal;)V

    .line 89
    const/4 v0, 0x0

    return-object v0

    .line 85
    :cond_0
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v0

    iget-object v0, v0, Lim/doit/pro/db/Persist;->taskDao:Lim/doit/pro/db/persist/TaskDao;

    iget-object v1, p0, Lim/doit/pro/controller/CompleteGoal$DoComplete;->this$0:Lim/doit/pro/controller/CompleteGoal;

    invoke-static {v1}, Lim/doit/pro/controller/CompleteGoal;->access$1(Lim/doit/pro/controller/CompleteGoal;)Lim/doit/pro/model/Goal;

    move-result-object v1

    invoke-virtual {v1}, Lim/doit/pro/model/Goal;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/db/persist/TaskDao;->trashByGoal(Ljava/lang/String;)V

    .line 86
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v0

    iget-object v0, v0, Lim/doit/pro/db/Persist;->projectDao:Lim/doit/pro/db/persist/ProjectDao;

    iget-object v1, p0, Lim/doit/pro/controller/CompleteGoal$DoComplete;->this$0:Lim/doit/pro/controller/CompleteGoal;

    invoke-static {v1}, Lim/doit/pro/controller/CompleteGoal;->access$1(Lim/doit/pro/controller/CompleteGoal;)Lim/doit/pro/model/Goal;

    move-result-object v1

    invoke-virtual {v1}, Lim/doit/pro/model/Goal;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/db/persist/ProjectDao;->trashByGoal(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lim/doit/pro/controller/CompleteGoal$DoComplete;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 94
    iget-object v0, p0, Lim/doit/pro/controller/CompleteGoal$DoComplete;->this$0:Lim/doit/pro/controller/CompleteGoal;

    invoke-static {v0}, Lim/doit/pro/controller/CompleteGoal;->access$0(Lim/doit/pro/controller/CompleteGoal;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lim/doit/pro/ui/component/DProgressDialog;->closeDialog(Landroid/app/Activity;)V

    .line 95
    iget-object v0, p0, Lim/doit/pro/controller/CompleteGoal$DoComplete;->this$0:Lim/doit/pro/controller/CompleteGoal;

    invoke-static {v0}, Lim/doit/pro/controller/CompleteGoal;->access$2(Lim/doit/pro/controller/CompleteGoal;)V

    .line 96
    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 75
    invoke-super {p0}, Lim/doit/pro/asynctask/DoitAsyncTask;->onPreExecute()V

    .line 76
    iget-object v0, p0, Lim/doit/pro/controller/CompleteGoal$DoComplete;->this$0:Lim/doit/pro/controller/CompleteGoal;

    invoke-static {v0}, Lim/doit/pro/controller/CompleteGoal;->access$0(Lim/doit/pro/controller/CompleteGoal;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lim/doit/pro/ui/component/DProgressDialog;->show(Landroid/app/Activity;)Lim/doit/pro/ui/component/DProgressDialog;

    .line 77
    return-void
.end method
