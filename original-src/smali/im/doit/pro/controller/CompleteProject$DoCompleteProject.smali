.class Lim/doit/pro/controller/CompleteProject$DoCompleteProject;
.super Lim/doit/pro/asynctask/DoitAsyncTask;
.source "CompleteProject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/controller/CompleteProject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DoCompleteProject"
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
.field private mIsMarkTaskComplete:Z

.field final synthetic this$0:Lim/doit/pro/controller/CompleteProject;


# direct methods
.method public constructor <init>(Lim/doit/pro/controller/CompleteProject;Z)V
    .locals 1
    .param p2, "isMarkTaskComplete"    # Z

    .prologue
    .line 72
    iput-object p1, p0, Lim/doit/pro/controller/CompleteProject$DoCompleteProject;->this$0:Lim/doit/pro/controller/CompleteProject;

    invoke-direct {p0}, Lim/doit/pro/asynctask/DoitAsyncTask;-><init>()V

    .line 70
    const/4 v0, 0x1

    iput-boolean v0, p0, Lim/doit/pro/controller/CompleteProject$DoCompleteProject;->mIsMarkTaskComplete:Z

    .line 73
    iput-boolean p2, p0, Lim/doit/pro/controller/CompleteProject$DoCompleteProject;->mIsMarkTaskComplete:Z

    .line 74
    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lim/doit/pro/controller/CompleteProject$DoCompleteProject;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 84
    iget-boolean v0, p0, Lim/doit/pro/controller/CompleteProject$DoCompleteProject;->mIsMarkTaskComplete:Z

    if-eqz v0, :cond_0

    .line 85
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v0

    iget-object v0, v0, Lim/doit/pro/db/Persist;->taskDao:Lim/doit/pro/db/persist/TaskDao;

    iget-object v1, p0, Lim/doit/pro/controller/CompleteProject$DoCompleteProject;->this$0:Lim/doit/pro/controller/CompleteProject;

    invoke-static {v1}, Lim/doit/pro/controller/CompleteProject;->access$1(Lim/doit/pro/controller/CompleteProject;)Lim/doit/pro/model/Project;

    move-result-object v1

    invoke-virtual {v1}, Lim/doit/pro/model/Project;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/db/persist/TaskDao;->completeByProject(Ljava/lang/String;)V

    .line 89
    :goto_0
    iget-object v0, p0, Lim/doit/pro/controller/CompleteProject$DoCompleteProject;->this$0:Lim/doit/pro/controller/CompleteProject;

    invoke-static {v0}, Lim/doit/pro/controller/CompleteProject;->access$2(Lim/doit/pro/controller/CompleteProject;)V

    .line 90
    const/4 v0, 0x0

    return-object v0

    .line 87
    :cond_0
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v0

    iget-object v0, v0, Lim/doit/pro/db/Persist;->taskDao:Lim/doit/pro/db/persist/TaskDao;

    iget-object v1, p0, Lim/doit/pro/controller/CompleteProject$DoCompleteProject;->this$0:Lim/doit/pro/controller/CompleteProject;

    invoke-static {v1}, Lim/doit/pro/controller/CompleteProject;->access$1(Lim/doit/pro/controller/CompleteProject;)Lim/doit/pro/model/Project;

    move-result-object v1

    invoke-virtual {v1}, Lim/doit/pro/model/Project;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/db/persist/TaskDao;->trashByProject(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lim/doit/pro/controller/CompleteProject$DoCompleteProject;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 95
    invoke-super {p0, p1}, Lim/doit/pro/asynctask/DoitAsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 96
    iget-object v0, p0, Lim/doit/pro/controller/CompleteProject$DoCompleteProject;->this$0:Lim/doit/pro/controller/CompleteProject;

    invoke-static {v0}, Lim/doit/pro/controller/CompleteProject;->access$0(Lim/doit/pro/controller/CompleteProject;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lim/doit/pro/ui/component/DProgressDialog;->closeDialog(Landroid/app/Activity;)V

    .line 97
    iget-object v0, p0, Lim/doit/pro/controller/CompleteProject$DoCompleteProject;->this$0:Lim/doit/pro/controller/CompleteProject;

    invoke-static {v0}, Lim/doit/pro/controller/CompleteProject;->access$3(Lim/doit/pro/controller/CompleteProject;)V

    .line 98
    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 78
    invoke-super {p0}, Lim/doit/pro/asynctask/DoitAsyncTask;->onPreExecute()V

    .line 79
    iget-object v0, p0, Lim/doit/pro/controller/CompleteProject$DoCompleteProject;->this$0:Lim/doit/pro/controller/CompleteProject;

    invoke-static {v0}, Lim/doit/pro/controller/CompleteProject;->access$0(Lim/doit/pro/controller/CompleteProject;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lim/doit/pro/ui/component/DProgressDialog;->show(Landroid/app/Activity;)Lim/doit/pro/ui/component/DProgressDialog;

    .line 80
    return-void
.end method
