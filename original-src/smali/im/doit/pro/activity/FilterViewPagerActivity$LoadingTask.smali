.class Lim/doit/pro/activity/FilterViewPagerActivity$LoadingTask;
.super Lim/doit/pro/asynctask/DoitAsyncTask;
.source "FilterViewPagerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/activity/FilterViewPagerActivity;
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
.field final synthetic this$0:Lim/doit/pro/activity/FilterViewPagerActivity;


# direct methods
.method private constructor <init>(Lim/doit/pro/activity/FilterViewPagerActivity;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lim/doit/pro/activity/FilterViewPagerActivity$LoadingTask;->this$0:Lim/doit/pro/activity/FilterViewPagerActivity;

    invoke-direct {p0}, Lim/doit/pro/asynctask/DoitAsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lim/doit/pro/activity/FilterViewPagerActivity;Lim/doit/pro/activity/FilterViewPagerActivity$LoadingTask;)V
    .locals 0

    .prologue
    .line 101
    invoke-direct {p0, p1}, Lim/doit/pro/activity/FilterViewPagerActivity$LoadingTask;-><init>(Lim/doit/pro/activity/FilterViewPagerActivity;)V

    return-void
.end method

.method synthetic constructor <init>(Lim/doit/pro/activity/FilterViewPagerActivity;Lim/doit/pro/activity/FilterViewPagerActivity$LoadingTask;Lim/doit/pro/activity/FilterViewPagerActivity$LoadingTask;)V
    .locals 0

    .prologue
    .line 101
    invoke-direct {p0, p1}, Lim/doit/pro/activity/FilterViewPagerActivity$LoadingTask;-><init>(Lim/doit/pro/activity/FilterViewPagerActivity;)V

    return-void
.end method

.method private dismissDialog()V
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lim/doit/pro/activity/FilterViewPagerActivity$LoadingTask;->this$0:Lim/doit/pro/activity/FilterViewPagerActivity;

    invoke-static {v0}, Lim/doit/pro/ui/component/DProgressDialog;->closeDialog(Landroid/app/Activity;)V

    .line 130
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;
    .locals 3
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 112
    .local v0, "entities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/BaseEntityWithPos;>;"
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v1

    iget-object v1, v1, Lim/doit/pro/db/Persist;->taskDao:Lim/doit/pro/db/persist/TaskDao;

    iget-object v2, p0, Lim/doit/pro/activity/FilterViewPagerActivity$LoadingTask;->this$0:Lim/doit/pro/activity/FilterViewPagerActivity;

    invoke-static {v2}, Lim/doit/pro/activity/FilterViewPagerActivity;->access$0(Lim/doit/pro/activity/FilterViewPagerActivity;)Lim/doit/pro/model/Filter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lim/doit/pro/db/persist/TaskDao;->findByFilter(Lim/doit/pro/model/Filter;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 113
    iget-object v1, p0, Lim/doit/pro/activity/FilterViewPagerActivity$LoadingTask;->this$0:Lim/doit/pro/activity/FilterViewPagerActivity;

    invoke-virtual {v1, v0}, Lim/doit/pro/activity/FilterViewPagerActivity;->filterAndGroupDatas(Ljava/util/ArrayList;)Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;

    move-result-object v1

    return-object v1
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lim/doit/pro/activity/FilterViewPagerActivity$LoadingTask;->doInBackground([Ljava/lang/Void;)Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;)V
    .locals 2
    .param p1, "listDatas"    # Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;

    .prologue
    .line 118
    iget-object v0, p0, Lim/doit/pro/activity/FilterViewPagerActivity$LoadingTask;->this$0:Lim/doit/pro/activity/FilterViewPagerActivity;

    iget-object v0, v0, Lim/doit/pro/activity/FilterViewPagerActivity;->mListAdapter:Lim/doit/pro/activity/listview/ListViewAdapter;

    invoke-virtual {v0, p1}, Lim/doit/pro/activity/listview/ListViewAdapter;->setDatasAndRefreshView(Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;)V

    .line 119
    invoke-virtual {p1}, Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;->getEntities()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lim/doit/pro/utils/CollectionUtils;->isNotEmpty(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lim/doit/pro/activity/FilterViewPagerActivity$LoadingTask;->this$0:Lim/doit/pro/activity/FilterViewPagerActivity;

    invoke-static {v0}, Lim/doit/pro/activity/FilterViewPagerActivity;->access$1(Lim/doit/pro/activity/FilterViewPagerActivity;)Lim/doit/pro/ui/component/ListViewEmptyView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/ListViewEmptyView;->setVisibility(I)V

    .line 124
    :goto_0
    invoke-direct {p0}, Lim/doit/pro/activity/FilterViewPagerActivity$LoadingTask;->dismissDialog()V

    .line 125
    iget-object v0, p0, Lim/doit/pro/activity/FilterViewPagerActivity$LoadingTask;->this$0:Lim/doit/pro/activity/FilterViewPagerActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lim/doit/pro/activity/FilterViewPagerActivity;->access$2(Lim/doit/pro/activity/FilterViewPagerActivity;Lim/doit/pro/activity/FilterViewPagerActivity$LoadingTask;)V

    .line 126
    return-void

    .line 122
    :cond_0
    iget-object v0, p0, Lim/doit/pro/activity/FilterViewPagerActivity$LoadingTask;->this$0:Lim/doit/pro/activity/FilterViewPagerActivity;

    invoke-static {v0}, Lim/doit/pro/activity/FilterViewPagerActivity;->access$1(Lim/doit/pro/activity/FilterViewPagerActivity;)Lim/doit/pro/ui/component/ListViewEmptyView;

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

    invoke-virtual {p0, p1}, Lim/doit/pro/activity/FilterViewPagerActivity$LoadingTask;->onPostExecute(Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lim/doit/pro/activity/FilterViewPagerActivity$LoadingTask;->this$0:Lim/doit/pro/activity/FilterViewPagerActivity;

    invoke-static {v0}, Lim/doit/pro/ui/component/DProgressDialog;->show(Landroid/app/Activity;)Lim/doit/pro/ui/component/DProgressDialog;

    .line 107
    return-void
.end method
