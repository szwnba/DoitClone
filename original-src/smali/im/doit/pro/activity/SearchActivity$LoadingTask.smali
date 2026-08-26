.class Lim/doit/pro/activity/SearchActivity$LoadingTask;
.super Lim/doit/pro/asynctask/DoitAsyncTask;
.source "SearchActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/activity/SearchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadingTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lim/doit/pro/asynctask/DoitAsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/activity/SearchActivity;


# direct methods
.method private constructor <init>(Lim/doit/pro/activity/SearchActivity;)V
    .locals 0

    .prologue
    .line 216
    iput-object p1, p0, Lim/doit/pro/activity/SearchActivity$LoadingTask;->this$0:Lim/doit/pro/activity/SearchActivity;

    invoke-direct {p0}, Lim/doit/pro/asynctask/DoitAsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lim/doit/pro/activity/SearchActivity;Lim/doit/pro/activity/SearchActivity$LoadingTask;)V
    .locals 0

    .prologue
    .line 216
    invoke-direct {p0, p1}, Lim/doit/pro/activity/SearchActivity$LoadingTask;-><init>(Lim/doit/pro/activity/SearchActivity;)V

    return-void
.end method

.method synthetic constructor <init>(Lim/doit/pro/activity/SearchActivity;Lim/doit/pro/activity/SearchActivity$LoadingTask;Lim/doit/pro/activity/SearchActivity$LoadingTask;)V
    .locals 0

    .prologue
    .line 216
    invoke-direct {p0, p1}, Lim/doit/pro/activity/SearchActivity$LoadingTask;-><init>(Lim/doit/pro/activity/SearchActivity;)V

    return-void
.end method

.method private dimissDialog()V
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lim/doit/pro/activity/SearchActivity$LoadingTask;->this$0:Lim/doit/pro/activity/SearchActivity;

    invoke-static {v0}, Lim/doit/pro/ui/component/DProgressDialog;->closeDialog(Landroid/app/Activity;)V

    .line 281
    return-void
.end method

.method private findTasksBySearch()Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lim/doit/pro/model/Task;",
            ">;"
        }
    .end annotation

    .prologue
    .line 243
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v5

    iget-object v5, v5, Lim/doit/pro/db/Persist;->taskDao:Lim/doit/pro/db/persist/TaskDao;

    .line 244
    iget-object v6, p0, Lim/doit/pro/activity/SearchActivity$LoadingTask;->this$0:Lim/doit/pro/activity/SearchActivity;

    invoke-static {v6}, Lim/doit/pro/activity/SearchActivity;->access$0(Lim/doit/pro/activity/SearchActivity;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lim/doit/pro/db/persist/TaskDao;->findBySearch(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 245
    .local v4, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/Task;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 246
    .local v3, "taskIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_1

    .line 249
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v5

    iget-object v5, v5, Lim/doit/pro/db/Persist;->subTaskDao:Lim/doit/pro/db/persist/SubTaskDao;

    .line 250
    iget-object v6, p0, Lim/doit/pro/activity/SearchActivity$LoadingTask;->this$0:Lim/doit/pro/activity/SearchActivity;

    invoke-static {v6}, Lim/doit/pro/activity/SearchActivity;->access$0(Lim/doit/pro/activity/SearchActivity;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lim/doit/pro/db/persist/SubTaskDao;->findBySearch(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 251
    .local v1, "subTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/SubTask;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_2

    .line 262
    new-instance v5, Lim/doit/pro/activity/listview/sort/ComparatorByPos;

    invoke-direct {v5}, Lim/doit/pro/activity/listview/sort/ComparatorByPos;-><init>()V

    invoke-static {v4, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 263
    return-object v4

    .line 246
    .end local v1    # "subTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/SubTask;>;"
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lim/doit/pro/model/Task;

    .line 247
    .local v0, "item":Lim/doit/pro/model/Task;
    invoke-virtual {v0}, Lim/doit/pro/model/Task;->getUniqUuid()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 251
    .end local v0    # "item":Lim/doit/pro/model/Task;
    .restart local v1    # "subTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/SubTask;>;"
    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lim/doit/pro/model/SubTask;

    .line 252
    .local v0, "item":Lim/doit/pro/model/SubTask;
    invoke-virtual {v0}, Lim/doit/pro/model/SubTask;->getTaskUniqUuid()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 255
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v6

    iget-object v6, v6, Lim/doit/pro/db/Persist;->taskDao:Lim/doit/pro/db/persist/TaskDao;

    .line 256
    invoke-virtual {v0}, Lim/doit/pro/model/SubTask;->getTask()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Lim/doit/pro/model/SubTask;->getRepeatNo()Ljava/lang/String;

    move-result-object v8

    .line 255
    invoke-virtual {v6, v7, v8}, Lim/doit/pro/db/persist/TaskDao;->findByUUIDAndRepeatNo(Ljava/lang/String;Ljava/lang/String;)Lim/doit/pro/model/Task;

    move-result-object v2

    .line 257
    .local v2, "task":Lim/doit/pro/model/Task;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lim/doit/pro/model/Task;->isDeleted()Z

    move-result v6

    if-nez v6, :cond_0

    .line 260
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;
    .locals 7
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 226
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 227
    .local v0, "entities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/BaseEntityWithPos;>;"
    iget-object v5, p0, Lim/doit/pro/activity/SearchActivity$LoadingTask;->this$0:Lim/doit/pro/activity/SearchActivity;

    invoke-static {v5}, Lim/doit/pro/activity/SearchActivity;->access$0(Lim/doit/pro/activity/SearchActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lim/doit/pro/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 228
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v5

    iget-object v5, v5, Lim/doit/pro/db/Persist;->goalDao:Lim/doit/pro/db/persist/GoalDao;

    .line 229
    iget-object v6, p0, Lim/doit/pro/activity/SearchActivity$LoadingTask;->this$0:Lim/doit/pro/activity/SearchActivity;

    invoke-static {v6}, Lim/doit/pro/activity/SearchActivity;->access$0(Lim/doit/pro/activity/SearchActivity;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lim/doit/pro/db/persist/GoalDao;->findBySearch(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 230
    .local v1, "goals":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/Goal;>;"
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v5

    iget-object v5, v5, Lim/doit/pro/db/Persist;->projectDao:Lim/doit/pro/db/persist/ProjectDao;

    .line 231
    iget-object v6, p0, Lim/doit/pro/activity/SearchActivity$LoadingTask;->this$0:Lim/doit/pro/activity/SearchActivity;

    invoke-static {v6}, Lim/doit/pro/activity/SearchActivity;->access$0(Lim/doit/pro/activity/SearchActivity;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lim/doit/pro/db/persist/ProjectDao;->findBySearch(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 232
    .local v2, "projects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/Project;>;"
    invoke-direct {p0}, Lim/doit/pro/activity/SearchActivity$LoadingTask;->findTasksBySearch()Ljava/util/ArrayList;

    move-result-object v4

    .line 233
    .local v4, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/Task;>;"
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 234
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 235
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 237
    .end local v1    # "goals":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/Goal;>;"
    .end local v2    # "projects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/Project;>;"
    .end local v4    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/Task;>;"
    :cond_0
    iget-object v5, p0, Lim/doit/pro/activity/SearchActivity$LoadingTask;->this$0:Lim/doit/pro/activity/SearchActivity;

    invoke-virtual {v5, v0}, Lim/doit/pro/activity/SearchActivity;->filterAndGroupDatas(Ljava/util/ArrayList;)Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;

    move-result-object v3

    .line 238
    .local v3, "result":Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;
    return-object v3
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lim/doit/pro/activity/SearchActivity$LoadingTask;->doInBackground([Ljava/lang/Void;)Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;)V
    .locals 2
    .param p1, "result"    # Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;

    .prologue
    .line 268
    iget-object v0, p0, Lim/doit/pro/activity/SearchActivity$LoadingTask;->this$0:Lim/doit/pro/activity/SearchActivity;

    invoke-static {v0}, Lim/doit/pro/activity/SearchActivity;->access$1(Lim/doit/pro/activity/SearchActivity;)Lim/doit/pro/activity/listview/ListViewAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lim/doit/pro/activity/listview/ListViewAdapter;->setDatasAndRefreshView(Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;)V

    .line 269
    invoke-virtual {p1}, Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;->getEntities()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lim/doit/pro/utils/CollectionUtils;->isNotEmpty(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 270
    iget-object v0, p0, Lim/doit/pro/activity/SearchActivity$LoadingTask;->this$0:Lim/doit/pro/activity/SearchActivity;

    invoke-static {v0}, Lim/doit/pro/activity/SearchActivity;->access$0(Lim/doit/pro/activity/SearchActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lim/doit/pro/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 271
    :cond_0
    iget-object v0, p0, Lim/doit/pro/activity/SearchActivity$LoadingTask;->this$0:Lim/doit/pro/activity/SearchActivity;

    invoke-static {v0}, Lim/doit/pro/activity/SearchActivity;->access$2(Lim/doit/pro/activity/SearchActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 275
    :goto_0
    invoke-direct {p0}, Lim/doit/pro/activity/SearchActivity$LoadingTask;->dimissDialog()V

    .line 276
    iget-object v0, p0, Lim/doit/pro/activity/SearchActivity$LoadingTask;->this$0:Lim/doit/pro/activity/SearchActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lim/doit/pro/activity/SearchActivity;->access$3(Lim/doit/pro/activity/SearchActivity;Lim/doit/pro/activity/SearchActivity$LoadingTask;)V

    .line 277
    return-void

    .line 273
    :cond_1
    iget-object v0, p0, Lim/doit/pro/activity/SearchActivity$LoadingTask;->this$0:Lim/doit/pro/activity/SearchActivity;

    invoke-static {v0}, Lim/doit/pro/activity/SearchActivity;->access$2(Lim/doit/pro/activity/SearchActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;

    invoke-virtual {p0, p1}, Lim/doit/pro/activity/SearchActivity$LoadingTask;->onPostExecute(Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lim/doit/pro/activity/SearchActivity$LoadingTask;->this$0:Lim/doit/pro/activity/SearchActivity;

    invoke-static {v0}, Lim/doit/pro/ui/component/DProgressDialog;->show(Landroid/app/Activity;)Lim/doit/pro/ui/component/DProgressDialog;

    .line 222
    return-void
.end method
