.class Lim/doit/pro/controller/TrashProject$DoTrashProject;
.super Lim/doit/pro/asynctask/DoitAsyncTask;
.source "TrashProject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/controller/TrashProject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DoTrashProject"
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
.field final synthetic this$0:Lim/doit/pro/controller/TrashProject;


# direct methods
.method private constructor <init>(Lim/doit/pro/controller/TrashProject;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lim/doit/pro/controller/TrashProject$DoTrashProject;->this$0:Lim/doit/pro/controller/TrashProject;

    invoke-direct {p0}, Lim/doit/pro/asynctask/DoitAsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lim/doit/pro/controller/TrashProject;Lim/doit/pro/controller/TrashProject$DoTrashProject;)V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lim/doit/pro/controller/TrashProject$DoTrashProject;-><init>(Lim/doit/pro/controller/TrashProject;)V

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lim/doit/pro/controller/TrashProject$DoTrashProject;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 74
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v0

    iget-object v0, v0, Lim/doit/pro/db/Persist;->taskDao:Lim/doit/pro/db/persist/TaskDao;

    iget-object v1, p0, Lim/doit/pro/controller/TrashProject$DoTrashProject;->this$0:Lim/doit/pro/controller/TrashProject;

    invoke-static {v1}, Lim/doit/pro/controller/TrashProject;->access$1(Lim/doit/pro/controller/TrashProject;)Lim/doit/pro/model/Project;

    move-result-object v1

    invoke-virtual {v1}, Lim/doit/pro/model/Project;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/db/persist/TaskDao;->trashByProject(Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lim/doit/pro/controller/TrashProject$DoTrashProject;->this$0:Lim/doit/pro/controller/TrashProject;

    invoke-static {v0}, Lim/doit/pro/controller/TrashProject;->access$2(Lim/doit/pro/controller/TrashProject;)V

    .line 76
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lim/doit/pro/controller/TrashProject$DoTrashProject;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 81
    invoke-super {p0, p1}, Lim/doit/pro/asynctask/DoitAsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 82
    iget-object v0, p0, Lim/doit/pro/controller/TrashProject$DoTrashProject;->this$0:Lim/doit/pro/controller/TrashProject;

    invoke-static {v0}, Lim/doit/pro/controller/TrashProject;->access$0(Lim/doit/pro/controller/TrashProject;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lim/doit/pro/ui/component/DProgressDialog;->closeDialog(Landroid/app/Activity;)V

    .line 83
    iget-object v0, p0, Lim/doit/pro/controller/TrashProject$DoTrashProject;->this$0:Lim/doit/pro/controller/TrashProject;

    invoke-static {v0}, Lim/doit/pro/controller/TrashProject;->access$3(Lim/doit/pro/controller/TrashProject;)V

    .line 84
    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 68
    invoke-super {p0}, Lim/doit/pro/asynctask/DoitAsyncTask;->onPreExecute()V

    .line 69
    iget-object v0, p0, Lim/doit/pro/controller/TrashProject$DoTrashProject;->this$0:Lim/doit/pro/controller/TrashProject;

    invoke-static {v0}, Lim/doit/pro/controller/TrashProject;->access$0(Lim/doit/pro/controller/TrashProject;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lim/doit/pro/ui/component/DProgressDialog;->show(Landroid/app/Activity;)Lim/doit/pro/ui/component/DProgressDialog;

    .line 70
    return-void
.end method
