.class Lim/doit/pro/controller/DeleteTaskContext$DoDeleteTaskContext;
.super Lim/doit/pro/asynctask/DoitAsyncTask;
.source "DeleteTaskContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/controller/DeleteTaskContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DoDeleteTaskContext"
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
.field final synthetic this$0:Lim/doit/pro/controller/DeleteTaskContext;


# direct methods
.method private constructor <init>(Lim/doit/pro/controller/DeleteTaskContext;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lim/doit/pro/controller/DeleteTaskContext$DoDeleteTaskContext;->this$0:Lim/doit/pro/controller/DeleteTaskContext;

    invoke-direct {p0}, Lim/doit/pro/asynctask/DoitAsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lim/doit/pro/controller/DeleteTaskContext;Lim/doit/pro/controller/DeleteTaskContext$DoDeleteTaskContext;)V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lim/doit/pro/controller/DeleteTaskContext$DoDeleteTaskContext;-><init>(Lim/doit/pro/controller/DeleteTaskContext;)V

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lim/doit/pro/controller/DeleteTaskContext$DoDeleteTaskContext;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 68
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v0

    iget-object v0, v0, Lim/doit/pro/db/Persist;->taskDao:Lim/doit/pro/db/persist/TaskDao;

    iget-object v1, p0, Lim/doit/pro/controller/DeleteTaskContext$DoDeleteTaskContext;->this$0:Lim/doit/pro/controller/DeleteTaskContext;

    invoke-static {v1}, Lim/doit/pro/controller/DeleteTaskContext;->access$1(Lim/doit/pro/controller/DeleteTaskContext;)Lim/doit/pro/model/TaskContext;

    move-result-object v1

    invoke-virtual {v1}, Lim/doit/pro/model/TaskContext;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/db/persist/TaskDao;->clearTaskContext(Ljava/lang/String;)V

    .line 69
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v0

    iget-object v0, v0, Lim/doit/pro/db/Persist;->projectDao:Lim/doit/pro/db/persist/ProjectDao;

    iget-object v1, p0, Lim/doit/pro/controller/DeleteTaskContext$DoDeleteTaskContext;->this$0:Lim/doit/pro/controller/DeleteTaskContext;

    invoke-static {v1}, Lim/doit/pro/controller/DeleteTaskContext;->access$1(Lim/doit/pro/controller/DeleteTaskContext;)Lim/doit/pro/model/TaskContext;

    move-result-object v1

    invoke-virtual {v1}, Lim/doit/pro/model/TaskContext;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/db/persist/ProjectDao;->clearProjectContext(Ljava/lang/String;)V

    .line 70
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v0

    iget-object v0, v0, Lim/doit/pro/db/Persist;->taskContextDao:Lim/doit/pro/db/persist/TaskContextDao;

    iget-object v1, p0, Lim/doit/pro/controller/DeleteTaskContext$DoDeleteTaskContext;->this$0:Lim/doit/pro/controller/DeleteTaskContext;

    invoke-static {v1}, Lim/doit/pro/controller/DeleteTaskContext;->access$1(Lim/doit/pro/controller/DeleteTaskContext;)Lim/doit/pro/model/TaskContext;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/db/persist/TaskContextDao;->delete(Lim/doit/pro/model/TaskContext;)V

    .line 71
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lim/doit/pro/controller/DeleteTaskContext$DoDeleteTaskContext;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 76
    invoke-super {p0, p1}, Lim/doit/pro/asynctask/DoitAsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 77
    iget-object v0, p0, Lim/doit/pro/controller/DeleteTaskContext$DoDeleteTaskContext;->this$0:Lim/doit/pro/controller/DeleteTaskContext;

    invoke-static {v0}, Lim/doit/pro/controller/DeleteTaskContext;->access$0(Lim/doit/pro/controller/DeleteTaskContext;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lim/doit/pro/ui/component/DProgressDialog;->closeDialog(Landroid/app/Activity;)V

    .line 78
    iget-object v0, p0, Lim/doit/pro/controller/DeleteTaskContext$DoDeleteTaskContext;->this$0:Lim/doit/pro/controller/DeleteTaskContext;

    invoke-static {v0}, Lim/doit/pro/controller/DeleteTaskContext;->access$2(Lim/doit/pro/controller/DeleteTaskContext;)V

    .line 79
    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 62
    invoke-super {p0}, Lim/doit/pro/asynctask/DoitAsyncTask;->onPreExecute()V

    .line 63
    iget-object v0, p0, Lim/doit/pro/controller/DeleteTaskContext$DoDeleteTaskContext;->this$0:Lim/doit/pro/controller/DeleteTaskContext;

    invoke-static {v0}, Lim/doit/pro/controller/DeleteTaskContext;->access$0(Lim/doit/pro/controller/DeleteTaskContext;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lim/doit/pro/ui/component/DProgressDialog;->show(Landroid/app/Activity;)Lim/doit/pro/ui/component/DProgressDialog;

    .line 64
    return-void
.end method
