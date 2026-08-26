.class Lim/doit/pro/activity/TaskContextListFragment$LoadingContexts;
.super Lim/doit/pro/asynctask/DoitAsyncTask;
.source "TaskContextListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/activity/TaskContextListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadingContexts"
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
.field final synthetic this$0:Lim/doit/pro/activity/TaskContextListFragment;


# direct methods
.method private constructor <init>(Lim/doit/pro/activity/TaskContextListFragment;)V
    .locals 0

    .prologue
    .line 186
    iput-object p1, p0, Lim/doit/pro/activity/TaskContextListFragment$LoadingContexts;->this$0:Lim/doit/pro/activity/TaskContextListFragment;

    invoke-direct {p0}, Lim/doit/pro/asynctask/DoitAsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lim/doit/pro/activity/TaskContextListFragment;Lim/doit/pro/activity/TaskContextListFragment$LoadingContexts;)V
    .locals 0

    .prologue
    .line 186
    invoke-direct {p0, p1}, Lim/doit/pro/activity/TaskContextListFragment$LoadingContexts;-><init>(Lim/doit/pro/activity/TaskContextListFragment;)V

    return-void
.end method

.method synthetic constructor <init>(Lim/doit/pro/activity/TaskContextListFragment;Lim/doit/pro/activity/TaskContextListFragment$LoadingContexts;Lim/doit/pro/activity/TaskContextListFragment$LoadingContexts;)V
    .locals 0

    .prologue
    .line 186
    invoke-direct {p0, p1}, Lim/doit/pro/activity/TaskContextListFragment$LoadingContexts;-><init>(Lim/doit/pro/activity/TaskContextListFragment;)V

    return-void
.end method

.method private dismissDialog()V
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lim/doit/pro/activity/TaskContextListFragment$LoadingContexts;->this$0:Lim/doit/pro/activity/TaskContextListFragment;

    invoke-virtual {v0}, Lim/doit/pro/activity/TaskContextListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lim/doit/pro/ui/component/DProgressDialog;->closeDialog(Landroid/app/Activity;)V

    .line 219
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;
    .locals 3
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 196
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 197
    .local v0, "entities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/BaseEntityWithPos;>;"
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v2

    iget-object v2, v2, Lim/doit/pro/db/Persist;->taskContextDao:Lim/doit/pro/db/persist/TaskContextDao;

    invoke-virtual {v2}, Lim/doit/pro/db/persist/TaskContextDao;->findAllNotDeleted()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 198
    new-instance v2, Lim/doit/pro/activity/listview/sort/ComparatorByPos;

    invoke-direct {v2}, Lim/doit/pro/activity/listview/sort/ComparatorByPos;-><init>()V

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 199
    new-instance v1, Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;

    invoke-direct {v1}, Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;-><init>()V

    .line 200
    .local v1, "result":Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;
    invoke-virtual {v1, v0}, Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;->addGrouper(Ljava/util/ArrayList;)V

    .line 201
    invoke-virtual {v1, v0}, Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;->setEntities(Ljava/util/ArrayList;)V

    .line 202
    return-object v1
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lim/doit/pro/activity/TaskContextListFragment$LoadingContexts;->doInBackground([Ljava/lang/Void;)Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;)V
    .locals 2
    .param p1, "result"    # Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;

    .prologue
    .line 207
    iget-object v0, p0, Lim/doit/pro/activity/TaskContextListFragment$LoadingContexts;->this$0:Lim/doit/pro/activity/TaskContextListFragment;

    invoke-static {v0}, Lim/doit/pro/activity/TaskContextListFragment;->access$0(Lim/doit/pro/activity/TaskContextListFragment;)Lim/doit/pro/activity/listview/ListViewAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lim/doit/pro/activity/listview/ListViewAdapter;->setDatasAndRefreshView(Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;)V

    .line 208
    invoke-virtual {p1}, Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;->getEntities()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lim/doit/pro/utils/CollectionUtils;->isNotEmpty(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lim/doit/pro/activity/TaskContextListFragment$LoadingContexts;->this$0:Lim/doit/pro/activity/TaskContextListFragment;

    invoke-static {v0}, Lim/doit/pro/activity/TaskContextListFragment;->access$1(Lim/doit/pro/activity/TaskContextListFragment;)Lim/doit/pro/ui/component/ListViewEmptyView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/ListViewEmptyView;->setVisibility(I)V

    .line 213
    :goto_0
    invoke-direct {p0}, Lim/doit/pro/activity/TaskContextListFragment$LoadingContexts;->dismissDialog()V

    .line 214
    iget-object v0, p0, Lim/doit/pro/activity/TaskContextListFragment$LoadingContexts;->this$0:Lim/doit/pro/activity/TaskContextListFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lim/doit/pro/activity/TaskContextListFragment;->access$2(Lim/doit/pro/activity/TaskContextListFragment;Lim/doit/pro/activity/TaskContextListFragment$LoadingContexts;)V

    .line 215
    return-void

    .line 211
    :cond_0
    iget-object v0, p0, Lim/doit/pro/activity/TaskContextListFragment$LoadingContexts;->this$0:Lim/doit/pro/activity/TaskContextListFragment;

    invoke-static {v0}, Lim/doit/pro/activity/TaskContextListFragment;->access$1(Lim/doit/pro/activity/TaskContextListFragment;)Lim/doit/pro/ui/component/ListViewEmptyView;

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

    invoke-virtual {p0, p1}, Lim/doit/pro/activity/TaskContextListFragment$LoadingContexts;->onPostExecute(Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lim/doit/pro/activity/TaskContextListFragment$LoadingContexts;->this$0:Lim/doit/pro/activity/TaskContextListFragment;

    invoke-virtual {v0}, Lim/doit/pro/activity/TaskContextListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lim/doit/pro/ui/component/DProgressDialog;->show(Landroid/app/Activity;)Lim/doit/pro/ui/component/DProgressDialog;

    .line 192
    return-void
.end method
