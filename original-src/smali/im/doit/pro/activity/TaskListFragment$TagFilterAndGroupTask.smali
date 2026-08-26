.class Lim/doit/pro/activity/TaskListFragment$TagFilterAndGroupTask;
.super Lim/doit/pro/asynctask/DoitAsyncTask;
.source "TaskListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/activity/TaskListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TagFilterAndGroupTask"
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
.field final synthetic this$0:Lim/doit/pro/activity/TaskListFragment;


# direct methods
.method private constructor <init>(Lim/doit/pro/activity/TaskListFragment;)V
    .locals 0

    .prologue
    .line 464
    iput-object p1, p0, Lim/doit/pro/activity/TaskListFragment$TagFilterAndGroupTask;->this$0:Lim/doit/pro/activity/TaskListFragment;

    invoke-direct {p0}, Lim/doit/pro/asynctask/DoitAsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lim/doit/pro/activity/TaskListFragment;Lim/doit/pro/activity/TaskListFragment$TagFilterAndGroupTask;)V
    .locals 0

    .prologue
    .line 464
    invoke-direct {p0, p1}, Lim/doit/pro/activity/TaskListFragment$TagFilterAndGroupTask;-><init>(Lim/doit/pro/activity/TaskListFragment;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;
    .locals 3
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 469
    iget-object v2, p0, Lim/doit/pro/activity/TaskListFragment$TagFilterAndGroupTask;->this$0:Lim/doit/pro/activity/TaskListFragment;

    invoke-static {v2}, Lim/doit/pro/activity/TaskListFragment;->access$3(Lim/doit/pro/activity/TaskListFragment;)Lim/doit/pro/activity/listview/ListViewAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lim/doit/pro/activity/listview/ListViewAdapter;->getEntities()Ljava/util/ArrayList;

    move-result-object v0

    .line 470
    .local v0, "entities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/BaseEntityWithPos;>;"
    iget-object v2, p0, Lim/doit/pro/activity/TaskListFragment$TagFilterAndGroupTask;->this$0:Lim/doit/pro/activity/TaskListFragment;

    invoke-static {v2, v0}, Lim/doit/pro/activity/TaskListFragment;->access$6(Lim/doit/pro/activity/TaskListFragment;Ljava/util/ArrayList;)Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;

    move-result-object v1

    .line 471
    .local v1, "result":Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;
    invoke-virtual {v1, v0}, Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;->setEntities(Ljava/util/ArrayList;)V

    .line 472
    return-object v1
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lim/doit/pro/activity/TaskListFragment$TagFilterAndGroupTask;->doInBackground([Ljava/lang/Void;)Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;)V
    .locals 2
    .param p1, "result"    # Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;

    .prologue
    .line 477
    iget-object v0, p0, Lim/doit/pro/activity/TaskListFragment$TagFilterAndGroupTask;->this$0:Lim/doit/pro/activity/TaskListFragment;

    invoke-static {v0}, Lim/doit/pro/activity/TaskListFragment;->access$3(Lim/doit/pro/activity/TaskListFragment;)Lim/doit/pro/activity/listview/ListViewAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lim/doit/pro/activity/listview/ListViewAdapter;->setDatasAndRefreshView(Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;)V

    .line 478
    iget-object v0, p0, Lim/doit/pro/activity/TaskListFragment$TagFilterAndGroupTask;->this$0:Lim/doit/pro/activity/TaskListFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lim/doit/pro/activity/TaskListFragment;->access$7(Lim/doit/pro/activity/TaskListFragment;Lim/doit/pro/activity/TaskListFragment$TagFilterAndGroupTask;)V

    .line 479
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;

    invoke-virtual {p0, p1}, Lim/doit/pro/activity/TaskListFragment$TagFilterAndGroupTask;->onPostExecute(Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;)V

    return-void
.end method
