.class public Lim/doit/pro/asynctask/DeleteTaskContextTask;
.super Lim/doit/pro/asynctask/DoitAsyncTask;
.source "DeleteTaskContextTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lim/doit/pro/asynctask/DeleteTaskContextTask$OnDeleteTaskContextFinishListener;
    }
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
.field private mOnDeleteTaskContextFinishListener:Lim/doit/pro/asynctask/DeleteTaskContextTask$OnDeleteTaskContextFinishListener;

.field private mTaskContext:Lim/doit/pro/model/TaskContext;


# direct methods
.method public constructor <init>(Lim/doit/pro/model/TaskContext;)V
    .locals 0
    .param p1, "taskContext"    # Lim/doit/pro/model/TaskContext;

    .prologue
    .line 20
    invoke-direct {p0}, Lim/doit/pro/asynctask/DoitAsyncTask;-><init>()V

    .line 21
    iput-object p1, p0, Lim/doit/pro/asynctask/DeleteTaskContextTask;->mTaskContext:Lim/doit/pro/model/TaskContext;

    .line 22
    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lim/doit/pro/asynctask/DeleteTaskContextTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 26
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v0

    iget-object v0, v0, Lim/doit/pro/db/Persist;->taskDao:Lim/doit/pro/db/persist/TaskDao;

    iget-object v1, p0, Lim/doit/pro/asynctask/DeleteTaskContextTask;->mTaskContext:Lim/doit/pro/model/TaskContext;

    invoke-virtual {v1}, Lim/doit/pro/model/TaskContext;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/db/persist/TaskDao;->clearTaskContext(Ljava/lang/String;)V

    .line 27
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v0

    iget-object v0, v0, Lim/doit/pro/db/Persist;->projectDao:Lim/doit/pro/db/persist/ProjectDao;

    iget-object v1, p0, Lim/doit/pro/asynctask/DeleteTaskContextTask;->mTaskContext:Lim/doit/pro/model/TaskContext;

    invoke-virtual {v1}, Lim/doit/pro/model/TaskContext;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/db/persist/ProjectDao;->clearProjectContext(Ljava/lang/String;)V

    .line 28
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v0

    iget-object v0, v0, Lim/doit/pro/db/Persist;->taskContextDao:Lim/doit/pro/db/persist/TaskContextDao;

    iget-object v1, p0, Lim/doit/pro/asynctask/DeleteTaskContextTask;->mTaskContext:Lim/doit/pro/model/TaskContext;

    invoke-virtual {v0, v1}, Lim/doit/pro/db/persist/TaskContextDao;->delete(Lim/doit/pro/model/TaskContext;)V

    .line 29
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lim/doit/pro/asynctask/DeleteTaskContextTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 34
    iget-object v0, p0, Lim/doit/pro/asynctask/DeleteTaskContextTask;->mOnDeleteTaskContextFinishListener:Lim/doit/pro/asynctask/DeleteTaskContextTask$OnDeleteTaskContextFinishListener;

    if-eqz v0, :cond_0

    .line 35
    iget-object v0, p0, Lim/doit/pro/asynctask/DeleteTaskContextTask;->mOnDeleteTaskContextFinishListener:Lim/doit/pro/asynctask/DeleteTaskContextTask$OnDeleteTaskContextFinishListener;

    invoke-interface {v0}, Lim/doit/pro/asynctask/DeleteTaskContextTask$OnDeleteTaskContextFinishListener;->onFinish()V

    .line 37
    :cond_0
    invoke-super {p0, p1}, Lim/doit/pro/asynctask/DoitAsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 38
    return-void
.end method

.method public setOnDeleteTaskContextFinishListener(Lim/doit/pro/asynctask/DeleteTaskContextTask$OnDeleteTaskContextFinishListener;)V
    .locals 0
    .param p1, "l"    # Lim/doit/pro/asynctask/DeleteTaskContextTask$OnDeleteTaskContextFinishListener;

    .prologue
    .line 13
    iput-object p1, p0, Lim/doit/pro/asynctask/DeleteTaskContextTask;->mOnDeleteTaskContextFinishListener:Lim/doit/pro/asynctask/DeleteTaskContextTask$OnDeleteTaskContextFinishListener;

    .line 14
    return-void
.end method
