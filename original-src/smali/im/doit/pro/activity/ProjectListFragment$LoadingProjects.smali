.class Lim/doit/pro/activity/ProjectListFragment$LoadingProjects;
.super Lim/doit/pro/asynctask/DoitAsyncTask;
.source "ProjectListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/activity/ProjectListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadingProjects"
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
.field final synthetic this$0:Lim/doit/pro/activity/ProjectListFragment;


# direct methods
.method private constructor <init>(Lim/doit/pro/activity/ProjectListFragment;)V
    .locals 0

    .prologue
    .line 289
    iput-object p1, p0, Lim/doit/pro/activity/ProjectListFragment$LoadingProjects;->this$0:Lim/doit/pro/activity/ProjectListFragment;

    invoke-direct {p0}, Lim/doit/pro/asynctask/DoitAsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lim/doit/pro/activity/ProjectListFragment;Lim/doit/pro/activity/ProjectListFragment$LoadingProjects;)V
    .locals 0

    .prologue
    .line 289
    invoke-direct {p0, p1}, Lim/doit/pro/activity/ProjectListFragment$LoadingProjects;-><init>(Lim/doit/pro/activity/ProjectListFragment;)V

    return-void
.end method

.method synthetic constructor <init>(Lim/doit/pro/activity/ProjectListFragment;Lim/doit/pro/activity/ProjectListFragment$LoadingProjects;Lim/doit/pro/activity/ProjectListFragment$LoadingProjects;)V
    .locals 0

    .prologue
    .line 289
    invoke-direct {p0, p1}, Lim/doit/pro/activity/ProjectListFragment$LoadingProjects;-><init>(Lim/doit/pro/activity/ProjectListFragment;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;
    .locals 4
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 299
    iget-object v2, p0, Lim/doit/pro/activity/ProjectListFragment$LoadingProjects;->this$0:Lim/doit/pro/activity/ProjectListFragment;

    invoke-static {v2}, Lim/doit/pro/activity/ProjectListFragment;->access$0(Lim/doit/pro/activity/ProjectListFragment;)Lim/doit/pro/model/Box;

    move-result-object v2

    iget-object v3, p0, Lim/doit/pro/activity/ProjectListFragment$LoadingProjects;->this$0:Lim/doit/pro/activity/ProjectListFragment;

    invoke-static {v3}, Lim/doit/pro/activity/ProjectListFragment;->access$0(Lim/doit/pro/activity/ProjectListFragment;)Lim/doit/pro/model/Box;

    move-result-object v3

    invoke-static {v3}, Lim/doit/pro/utils/BoxUtils;->getDefaultGroupBy(Lim/doit/pro/model/Box;)Lim/doit/pro/model/enums/GroupByType;

    move-result-object v3

    invoke-virtual {v2, v3}, Lim/doit/pro/model/Box;->setGroupBy(Lim/doit/pro/model/enums/GroupByType;)V

    .line 300
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 301
    .local v0, "entities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/BaseEntityWithPos;>;"
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v2

    iget-object v2, v2, Lim/doit/pro/db/Persist;->projectDao:Lim/doit/pro/db/persist/ProjectDao;

    invoke-virtual {v2}, Lim/doit/pro/db/persist/ProjectDao;->findAllNotDead()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 302
    iget-object v2, p0, Lim/doit/pro/activity/ProjectListFragment$LoadingProjects;->this$0:Lim/doit/pro/activity/ProjectListFragment;

    iget-object v2, v2, Lim/doit/pro/activity/ProjectListFragment;->mBoxGrouper:Lim/doit/pro/activity/listview/group/DoitListViewGrouper;

    if-nez v2, :cond_0

    .line 303
    iget-object v2, p0, Lim/doit/pro/activity/ProjectListFragment$LoadingProjects;->this$0:Lim/doit/pro/activity/ProjectListFragment;

    new-instance v3, Lim/doit/pro/activity/listview/group/DoitListViewGrouper;

    invoke-direct {v3}, Lim/doit/pro/activity/listview/group/DoitListViewGrouper;-><init>()V

    iput-object v3, v2, Lim/doit/pro/activity/ProjectListFragment;->mBoxGrouper:Lim/doit/pro/activity/listview/group/DoitListViewGrouper;

    .line 305
    :cond_0
    iget-object v2, p0, Lim/doit/pro/activity/ProjectListFragment$LoadingProjects;->this$0:Lim/doit/pro/activity/ProjectListFragment;

    iget-object v2, v2, Lim/doit/pro/activity/ProjectListFragment;->mBoxGrouper:Lim/doit/pro/activity/listview/group/DoitListViewGrouper;

    iget-object v3, p0, Lim/doit/pro/activity/ProjectListFragment$LoadingProjects;->this$0:Lim/doit/pro/activity/ProjectListFragment;

    invoke-static {v3}, Lim/doit/pro/activity/ProjectListFragment;->access$0(Lim/doit/pro/activity/ProjectListFragment;)Lim/doit/pro/model/Box;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lim/doit/pro/activity/listview/group/DoitListViewGrouper;->group(Lim/doit/pro/model/Box;Ljava/util/ArrayList;)Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;

    move-result-object v1

    .line 307
    .local v1, "result":Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;
    invoke-virtual {v1, v0}, Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;->setEntities(Ljava/util/ArrayList;)V

    .line 308
    return-object v1
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lim/doit/pro/activity/ProjectListFragment$LoadingProjects;->doInBackground([Ljava/lang/Void;)Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;)V
    .locals 2
    .param p1, "listDatas"    # Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;

    .prologue
    .line 313
    iget-object v0, p0, Lim/doit/pro/activity/ProjectListFragment$LoadingProjects;->this$0:Lim/doit/pro/activity/ProjectListFragment;

    invoke-static {v0}, Lim/doit/pro/activity/ProjectListFragment;->access$1(Lim/doit/pro/activity/ProjectListFragment;)Lim/doit/pro/activity/ProjectListFragment$ProjectListViewAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lim/doit/pro/activity/ProjectListFragment$ProjectListViewAdapter;->setDatasAndRefreshView(Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;)V

    .line 314
    invoke-virtual {p1}, Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;->getEntities()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lim/doit/pro/utils/CollectionUtils;->isNotEmpty(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 315
    iget-object v0, p0, Lim/doit/pro/activity/ProjectListFragment$LoadingProjects;->this$0:Lim/doit/pro/activity/ProjectListFragment;

    invoke-static {v0}, Lim/doit/pro/activity/ProjectListFragment;->access$2(Lim/doit/pro/activity/ProjectListFragment;)Lim/doit/pro/ui/component/ListViewEmptyView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/ListViewEmptyView;->setVisibility(I)V

    .line 319
    :goto_0
    iget-object v0, p0, Lim/doit/pro/activity/ProjectListFragment$LoadingProjects;->this$0:Lim/doit/pro/activity/ProjectListFragment;

    invoke-virtual {v0}, Lim/doit/pro/activity/ProjectListFragment;->dismissDialog()V

    .line 320
    iget-object v0, p0, Lim/doit/pro/activity/ProjectListFragment$LoadingProjects;->this$0:Lim/doit/pro/activity/ProjectListFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lim/doit/pro/activity/ProjectListFragment;->access$3(Lim/doit/pro/activity/ProjectListFragment;Lim/doit/pro/activity/ProjectListFragment$LoadingProjects;)V

    .line 321
    return-void

    .line 317
    :cond_0
    iget-object v0, p0, Lim/doit/pro/activity/ProjectListFragment$LoadingProjects;->this$0:Lim/doit/pro/activity/ProjectListFragment;

    invoke-static {v0}, Lim/doit/pro/activity/ProjectListFragment;->access$2(Lim/doit/pro/activity/ProjectListFragment;)Lim/doit/pro/ui/component/ListViewEmptyView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/ListViewEmptyView;->setVisibility(I)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;

    invoke-virtual {p0, p1}, Lim/doit/pro/activity/ProjectListFragment$LoadingProjects;->onPostExecute(Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lim/doit/pro/activity/ProjectListFragment$LoadingProjects;->this$0:Lim/doit/pro/activity/ProjectListFragment;

    invoke-virtual {v0}, Lim/doit/pro/activity/ProjectListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lim/doit/pro/ui/component/DProgressDialog;->show(Landroid/app/Activity;)Lim/doit/pro/ui/component/DProgressDialog;

    .line 295
    return-void
.end method
