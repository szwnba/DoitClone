.class Lim/doit/pro/activity/TaskListFragment$ArchiveTasks;
.super Lim/doit/pro/asynctask/DoitAsyncTask;
.source "TaskListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/activity/TaskListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ArchiveTasks"
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
.field final synthetic this$0:Lim/doit/pro/activity/TaskListFragment;


# direct methods
.method private constructor <init>(Lim/doit/pro/activity/TaskListFragment;)V
    .locals 0

    .prologue
    .line 363
    iput-object p1, p0, Lim/doit/pro/activity/TaskListFragment$ArchiveTasks;->this$0:Lim/doit/pro/activity/TaskListFragment;

    invoke-direct {p0}, Lim/doit/pro/asynctask/DoitAsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lim/doit/pro/activity/TaskListFragment;Lim/doit/pro/activity/TaskListFragment$ArchiveTasks;)V
    .locals 0

    .prologue
    .line 363
    invoke-direct {p0, p1}, Lim/doit/pro/activity/TaskListFragment$ArchiveTasks;-><init>(Lim/doit/pro/activity/TaskListFragment;)V

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lim/doit/pro/activity/TaskListFragment$ArchiveTasks;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 6
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 372
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v4

    iget-object v4, v4, Lim/doit/pro/db/Persist;->taskDao:Lim/doit/pro/db/persist/TaskDao;

    invoke-virtual {v4}, Lim/doit/pro/db/persist/TaskDao;->findCompleted()Ljava/util/ArrayList;

    move-result-object v3

    .line 373
    .local v3, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/Task;>;"
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v4

    iget-object v4, v4, Lim/doit/pro/db/Persist;->projectDao:Lim/doit/pro/db/persist/ProjectDao;

    .line 374
    invoke-virtual {v4}, Lim/doit/pro/db/persist/ProjectDao;->findCompleted()Ljava/util/ArrayList;

    move-result-object v2

    .line 375
    .local v2, "projects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/Project;>;"
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v4

    iget-object v4, v4, Lim/doit/pro/db/Persist;->goalDao:Lim/doit/pro/db/persist/GoalDao;

    invoke-virtual {v4}, Lim/doit/pro/db/persist/GoalDao;->findCompleted()Ljava/util/ArrayList;

    move-result-object v0

    .line 376
    .local v0, "goals":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/Goal;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_0

    .line 379
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 382
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_2

    .line 385
    const/4 v4, 0x0

    return-object v4

    .line 376
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lim/doit/pro/model/Task;

    .line 377
    .local v1, "item":Lim/doit/pro/model/Task;
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v5

    iget-object v5, v5, Lim/doit/pro/db/Persist;->taskDao:Lim/doit/pro/db/persist/TaskDao;

    invoke-virtual {v5, v1}, Lim/doit/pro/db/persist/TaskDao;->archive(Lim/doit/pro/model/Task;)V

    goto :goto_0

    .line 379
    .end local v1    # "item":Lim/doit/pro/model/Task;
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lim/doit/pro/model/Project;

    .line 380
    .local v1, "item":Lim/doit/pro/model/Project;
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v5

    iget-object v5, v5, Lim/doit/pro/db/Persist;->projectDao:Lim/doit/pro/db/persist/ProjectDao;

    invoke-virtual {v5, v1}, Lim/doit/pro/db/persist/ProjectDao;->archive(Lim/doit/pro/model/Project;)V

    goto :goto_1

    .line 382
    .end local v1    # "item":Lim/doit/pro/model/Project;
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lim/doit/pro/model/Goal;

    .line 383
    .local v1, "item":Lim/doit/pro/model/Goal;
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v5

    iget-object v5, v5, Lim/doit/pro/db/Persist;->goalDao:Lim/doit/pro/db/persist/GoalDao;

    invoke-virtual {v5, v1}, Lim/doit/pro/db/persist/GoalDao;->archive(Lim/doit/pro/model/Goal;)V

    goto :goto_2
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lim/doit/pro/activity/TaskListFragment$ArchiveTasks;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    const/4 v2, 0x0

    .line 390
    iget-object v0, p0, Lim/doit/pro/activity/TaskListFragment$ArchiveTasks;->this$0:Lim/doit/pro/activity/TaskListFragment;

    invoke-virtual {v0}, Lim/doit/pro/activity/TaskListFragment;->dismissDialog()V

    .line 391
    new-instance v0, Lim/doit/pro/activity/TaskListFragment$LoadingTaskNotShowProgress;

    iget-object v1, p0, Lim/doit/pro/activity/TaskListFragment$ArchiveTasks;->this$0:Lim/doit/pro/activity/TaskListFragment;

    invoke-direct {v0, v1, v2}, Lim/doit/pro/activity/TaskListFragment$LoadingTaskNotShowProgress;-><init>(Lim/doit/pro/activity/TaskListFragment;Lim/doit/pro/activity/TaskListFragment$LoadingTaskNotShowProgress;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lim/doit/pro/activity/TaskListFragment$LoadingTaskNotShowProgress;->execute([Ljava/lang/Object;)Lim/doit/pro/asynctask/DoitAsyncTask;

    .line 392
    iget-object v0, p0, Lim/doit/pro/activity/TaskListFragment$ArchiveTasks;->this$0:Lim/doit/pro/activity/TaskListFragment;

    invoke-static {v0, v2}, Lim/doit/pro/activity/TaskListFragment;->access$0(Lim/doit/pro/activity/TaskListFragment;Lim/doit/pro/activity/TaskListFragment$ArchiveTasks;)V

    .line 393
    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 367
    iget-object v0, p0, Lim/doit/pro/activity/TaskListFragment$ArchiveTasks;->this$0:Lim/doit/pro/activity/TaskListFragment;

    invoke-virtual {v0}, Lim/doit/pro/activity/TaskListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lim/doit/pro/ui/component/DProgressDialog;->show(Landroid/app/Activity;)Lim/doit/pro/ui/component/DProgressDialog;

    .line 368
    return-void
.end method
