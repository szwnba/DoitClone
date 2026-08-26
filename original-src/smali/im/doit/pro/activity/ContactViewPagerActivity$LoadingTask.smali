.class Lim/doit/pro/activity/ContactViewPagerActivity$LoadingTask;
.super Lim/doit/pro/asynctask/DoitAsyncTask;
.source "ContactViewPagerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/activity/ContactViewPagerActivity;
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
.field final synthetic this$0:Lim/doit/pro/activity/ContactViewPagerActivity;


# direct methods
.method private constructor <init>(Lim/doit/pro/activity/ContactViewPagerActivity;)V
    .locals 0

    .prologue
    .line 170
    iput-object p1, p0, Lim/doit/pro/activity/ContactViewPagerActivity$LoadingTask;->this$0:Lim/doit/pro/activity/ContactViewPagerActivity;

    invoke-direct {p0}, Lim/doit/pro/asynctask/DoitAsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lim/doit/pro/activity/ContactViewPagerActivity;Lim/doit/pro/activity/ContactViewPagerActivity$LoadingTask;)V
    .locals 0

    .prologue
    .line 170
    invoke-direct {p0, p1}, Lim/doit/pro/activity/ContactViewPagerActivity$LoadingTask;-><init>(Lim/doit/pro/activity/ContactViewPagerActivity;)V

    return-void
.end method

.method synthetic constructor <init>(Lim/doit/pro/activity/ContactViewPagerActivity;Lim/doit/pro/activity/ContactViewPagerActivity$LoadingTask;Lim/doit/pro/activity/ContactViewPagerActivity$LoadingTask;)V
    .locals 0

    .prologue
    .line 170
    invoke-direct {p0, p1}, Lim/doit/pro/activity/ContactViewPagerActivity$LoadingTask;-><init>(Lim/doit/pro/activity/ContactViewPagerActivity;)V

    return-void
.end method

.method private dismissDialog()V
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lim/doit/pro/activity/ContactViewPagerActivity$LoadingTask;->this$0:Lim/doit/pro/activity/ContactViewPagerActivity;

    invoke-static {v0}, Lim/doit/pro/ui/component/DProgressDialog;->closeDialog(Landroid/app/Activity;)V

    .line 209
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;
    .locals 6
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 180
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v4

    iget-object v4, v4, Lim/doit/pro/db/Persist;->taskDao:Lim/doit/pro/db/persist/TaskDao;

    .line 181
    iget-object v5, p0, Lim/doit/pro/activity/ContactViewPagerActivity$LoadingTask;->this$0:Lim/doit/pro/activity/ContactViewPagerActivity;

    invoke-static {v5}, Lim/doit/pro/activity/ContactViewPagerActivity;->access$0(Lim/doit/pro/activity/ContactViewPagerActivity;)Lim/doit/pro/model/Contact;

    move-result-object v5

    invoke-virtual {v4, v5}, Lim/doit/pro/db/persist/TaskDao;->findByReceivedTasks(Lim/doit/pro/model/Contact;)Ljava/util/ArrayList;

    move-result-object v1

    .line 182
    .local v1, "receivedTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/Task;>;"
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v4

    iget-object v4, v4, Lim/doit/pro/db/Persist;->taskDao:Lim/doit/pro/db/persist/TaskDao;

    .line 183
    iget-object v5, p0, Lim/doit/pro/activity/ContactViewPagerActivity$LoadingTask;->this$0:Lim/doit/pro/activity/ContactViewPagerActivity;

    invoke-static {v5}, Lim/doit/pro/activity/ContactViewPagerActivity;->access$0(Lim/doit/pro/activity/ContactViewPagerActivity;)Lim/doit/pro/model/Contact;

    move-result-object v5

    invoke-virtual {v4, v5}, Lim/doit/pro/db/persist/TaskDao;->findBySentTasks(Lim/doit/pro/model/Contact;)Ljava/util/ArrayList;

    move-result-object v3

    .line 184
    .local v3, "sentTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/Task;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 185
    .local v0, "entities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/BaseEntityWithPos;>;"
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 186
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 187
    iget-object v4, p0, Lim/doit/pro/activity/ContactViewPagerActivity$LoadingTask;->this$0:Lim/doit/pro/activity/ContactViewPagerActivity;

    invoke-static {v4}, Lim/doit/pro/activity/ContactViewPagerActivity;->access$1(Lim/doit/pro/activity/ContactViewPagerActivity;)Lim/doit/pro/activity/listview/group/DoitListViewGrouper;

    move-result-object v4

    if-nez v4, :cond_0

    .line 188
    iget-object v4, p0, Lim/doit/pro/activity/ContactViewPagerActivity$LoadingTask;->this$0:Lim/doit/pro/activity/ContactViewPagerActivity;

    new-instance v5, Lim/doit/pro/activity/listview/group/DoitListViewGrouper;

    invoke-direct {v5}, Lim/doit/pro/activity/listview/group/DoitListViewGrouper;-><init>()V

    invoke-static {v4, v5}, Lim/doit/pro/activity/ContactViewPagerActivity;->access$2(Lim/doit/pro/activity/ContactViewPagerActivity;Lim/doit/pro/activity/listview/group/DoitListViewGrouper;)V

    .line 190
    :cond_0
    iget-object v4, p0, Lim/doit/pro/activity/ContactViewPagerActivity$LoadingTask;->this$0:Lim/doit/pro/activity/ContactViewPagerActivity;

    invoke-virtual {v4, v0}, Lim/doit/pro/activity/ContactViewPagerActivity;->filterAndGroupDatas(Ljava/util/ArrayList;)Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;

    move-result-object v2

    .line 191
    .local v2, "result":Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;
    return-object v2
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lim/doit/pro/activity/ContactViewPagerActivity$LoadingTask;->doInBackground([Ljava/lang/Void;)Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;)V
    .locals 2
    .param p1, "result"    # Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;

    .prologue
    .line 196
    iget-object v0, p0, Lim/doit/pro/activity/ContactViewPagerActivity$LoadingTask;->this$0:Lim/doit/pro/activity/ContactViewPagerActivity;

    iget-object v0, v0, Lim/doit/pro/activity/ContactViewPagerActivity;->mListAdapter:Lim/doit/pro/activity/listview/ListViewAdapter;

    invoke-virtual {v0, p1}, Lim/doit/pro/activity/listview/ListViewAdapter;->setDatasAndRefreshView(Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;)V

    .line 197
    invoke-virtual {p1}, Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;->getEntities()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lim/doit/pro/utils/CollectionUtils;->isNotEmpty(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lim/doit/pro/activity/ContactViewPagerActivity$LoadingTask;->this$0:Lim/doit/pro/activity/ContactViewPagerActivity;

    invoke-static {v0}, Lim/doit/pro/activity/ContactViewPagerActivity;->access$3(Lim/doit/pro/activity/ContactViewPagerActivity;)Lim/doit/pro/ui/component/ListViewEmptyView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/ListViewEmptyView;->setVisibility(I)V

    .line 202
    :goto_0
    iget-object v0, p0, Lim/doit/pro/activity/ContactViewPagerActivity$LoadingTask;->this$0:Lim/doit/pro/activity/ContactViewPagerActivity;

    invoke-static {v0}, Lim/doit/pro/activity/ContactViewPagerActivity;->access$4(Lim/doit/pro/activity/ContactViewPagerActivity;)V

    .line 203
    invoke-direct {p0}, Lim/doit/pro/activity/ContactViewPagerActivity$LoadingTask;->dismissDialog()V

    .line 204
    iget-object v0, p0, Lim/doit/pro/activity/ContactViewPagerActivity$LoadingTask;->this$0:Lim/doit/pro/activity/ContactViewPagerActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lim/doit/pro/activity/ContactViewPagerActivity;->access$5(Lim/doit/pro/activity/ContactViewPagerActivity;Lim/doit/pro/activity/ContactViewPagerActivity$LoadingTask;)V

    .line 205
    return-void

    .line 200
    :cond_0
    iget-object v0, p0, Lim/doit/pro/activity/ContactViewPagerActivity$LoadingTask;->this$0:Lim/doit/pro/activity/ContactViewPagerActivity;

    invoke-static {v0}, Lim/doit/pro/activity/ContactViewPagerActivity;->access$3(Lim/doit/pro/activity/ContactViewPagerActivity;)Lim/doit/pro/ui/component/ListViewEmptyView;

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

    invoke-virtual {p0, p1}, Lim/doit/pro/activity/ContactViewPagerActivity$LoadingTask;->onPostExecute(Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lim/doit/pro/activity/ContactViewPagerActivity$LoadingTask;->this$0:Lim/doit/pro/activity/ContactViewPagerActivity;

    invoke-static {v0}, Lim/doit/pro/ui/component/DProgressDialog;->show(Landroid/app/Activity;)Lim/doit/pro/ui/component/DProgressDialog;

    .line 176
    return-void
.end method
