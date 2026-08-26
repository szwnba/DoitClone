.class Lim/doit/pro/controller/TrashGoal$DoTrashGoal;
.super Lim/doit/pro/asynctask/DoitAsyncTask;
.source "TrashGoal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/controller/TrashGoal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DoTrashGoal"
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
.field final synthetic this$0:Lim/doit/pro/controller/TrashGoal;


# direct methods
.method private constructor <init>(Lim/doit/pro/controller/TrashGoal;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lim/doit/pro/controller/TrashGoal$DoTrashGoal;->this$0:Lim/doit/pro/controller/TrashGoal;

    invoke-direct {p0}, Lim/doit/pro/asynctask/DoitAsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lim/doit/pro/controller/TrashGoal;Lim/doit/pro/controller/TrashGoal$DoTrashGoal;)V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lim/doit/pro/controller/TrashGoal$DoTrashGoal;-><init>(Lim/doit/pro/controller/TrashGoal;)V

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lim/doit/pro/controller/TrashGoal$DoTrashGoal;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 72
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v0

    iget-object v0, v0, Lim/doit/pro/db/Persist;->taskDao:Lim/doit/pro/db/persist/TaskDao;

    iget-object v1, p0, Lim/doit/pro/controller/TrashGoal$DoTrashGoal;->this$0:Lim/doit/pro/controller/TrashGoal;

    invoke-static {v1}, Lim/doit/pro/controller/TrashGoal;->access$1(Lim/doit/pro/controller/TrashGoal;)Lim/doit/pro/model/Goal;

    move-result-object v1

    invoke-virtual {v1}, Lim/doit/pro/model/Goal;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/db/persist/TaskDao;->trashByGoal(Ljava/lang/String;)V

    .line 73
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v0

    iget-object v0, v0, Lim/doit/pro/db/Persist;->projectDao:Lim/doit/pro/db/persist/ProjectDao;

    iget-object v1, p0, Lim/doit/pro/controller/TrashGoal$DoTrashGoal;->this$0:Lim/doit/pro/controller/TrashGoal;

    invoke-static {v1}, Lim/doit/pro/controller/TrashGoal;->access$1(Lim/doit/pro/controller/TrashGoal;)Lim/doit/pro/model/Goal;

    move-result-object v1

    invoke-virtual {v1}, Lim/doit/pro/model/Goal;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/db/persist/ProjectDao;->trashByGoal(Ljava/lang/String;)V

    .line 74
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v0

    iget-object v0, v0, Lim/doit/pro/db/Persist;->goalDao:Lim/doit/pro/db/persist/GoalDao;

    iget-object v1, p0, Lim/doit/pro/controller/TrashGoal$DoTrashGoal;->this$0:Lim/doit/pro/controller/TrashGoal;

    invoke-static {v1}, Lim/doit/pro/controller/TrashGoal;->access$1(Lim/doit/pro/controller/TrashGoal;)Lim/doit/pro/model/Goal;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/db/persist/GoalDao;->trash(Lim/doit/pro/model/Goal;)V

    .line 75
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lim/doit/pro/controller/TrashGoal$DoTrashGoal;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 80
    invoke-super {p0, p1}, Lim/doit/pro/asynctask/DoitAsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 81
    iget-object v0, p0, Lim/doit/pro/controller/TrashGoal$DoTrashGoal;->this$0:Lim/doit/pro/controller/TrashGoal;

    invoke-static {v0}, Lim/doit/pro/controller/TrashGoal;->access$0(Lim/doit/pro/controller/TrashGoal;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lim/doit/pro/ui/component/DProgressDialog;->closeDialog(Landroid/app/Activity;)V

    .line 82
    iget-object v0, p0, Lim/doit/pro/controller/TrashGoal$DoTrashGoal;->this$0:Lim/doit/pro/controller/TrashGoal;

    invoke-static {v0}, Lim/doit/pro/controller/TrashGoal;->access$2(Lim/doit/pro/controller/TrashGoal;)V

    .line 83
    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 66
    invoke-super {p0}, Lim/doit/pro/asynctask/DoitAsyncTask;->onPreExecute()V

    .line 67
    iget-object v0, p0, Lim/doit/pro/controller/TrashGoal$DoTrashGoal;->this$0:Lim/doit/pro/controller/TrashGoal;

    invoke-static {v0}, Lim/doit/pro/controller/TrashGoal;->access$0(Lim/doit/pro/controller/TrashGoal;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lim/doit/pro/ui/component/DProgressDialog;->show(Landroid/app/Activity;)Lim/doit/pro/ui/component/DProgressDialog;

    .line 68
    return-void
.end method
