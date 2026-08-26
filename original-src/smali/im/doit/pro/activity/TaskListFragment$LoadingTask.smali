.class Lim/doit/pro/activity/TaskListFragment$LoadingTask;
.super Lim/doit/pro/asynctask/DoitAsyncTask;
.source "TaskListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/activity/TaskListFragment;
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
.field final synthetic this$0:Lim/doit/pro/activity/TaskListFragment;


# direct methods
.method private constructor <init>(Lim/doit/pro/activity/TaskListFragment;)V
    .locals 0

    .prologue
    .line 431
    iput-object p1, p0, Lim/doit/pro/activity/TaskListFragment$LoadingTask;->this$0:Lim/doit/pro/activity/TaskListFragment;

    invoke-direct {p0}, Lim/doit/pro/asynctask/DoitAsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lim/doit/pro/activity/TaskListFragment;Lim/doit/pro/activity/TaskListFragment$LoadingTask;)V
    .locals 0

    .prologue
    .line 431
    invoke-direct {p0, p1}, Lim/doit/pro/activity/TaskListFragment$LoadingTask;-><init>(Lim/doit/pro/activity/TaskListFragment;)V

    return-void
.end method

.method synthetic constructor <init>(Lim/doit/pro/activity/TaskListFragment;Lim/doit/pro/activity/TaskListFragment$LoadingTask;Lim/doit/pro/activity/TaskListFragment$LoadingTask;)V
    .locals 0

    .prologue
    .line 431
    invoke-direct {p0, p1}, Lim/doit/pro/activity/TaskListFragment$LoadingTask;-><init>(Lim/doit/pro/activity/TaskListFragment;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 441
    iget-object v0, p0, Lim/doit/pro/activity/TaskListFragment$LoadingTask;->this$0:Lim/doit/pro/activity/TaskListFragment;

    invoke-static {v0}, Lim/doit/pro/activity/TaskListFragment;->access$2(Lim/doit/pro/activity/TaskListFragment;)Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;

    move-result-object v0

    return-object v0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lim/doit/pro/activity/TaskListFragment$LoadingTask;->doInBackground([Ljava/lang/Void;)Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;)V
    .locals 2
    .param p1, "result"    # Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;

    .prologue
    .line 446
    iget-object v0, p0, Lim/doit/pro/activity/TaskListFragment$LoadingTask;->this$0:Lim/doit/pro/activity/TaskListFragment;

    invoke-static {v0}, Lim/doit/pro/activity/TaskListFragment;->access$3(Lim/doit/pro/activity/TaskListFragment;)Lim/doit/pro/activity/listview/ListViewAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lim/doit/pro/activity/listview/ListViewAdapter;->setDatasAndRefreshView(Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;)V

    .line 447
    invoke-virtual {p1}, Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;->getEntities()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lim/doit/pro/utils/CollectionUtils;->isNotEmpty(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 448
    iget-object v0, p0, Lim/doit/pro/activity/TaskListFragment$LoadingTask;->this$0:Lim/doit/pro/activity/TaskListFragment;

    invoke-static {v0}, Lim/doit/pro/activity/TaskListFragment;->access$4(Lim/doit/pro/activity/TaskListFragment;)Lim/doit/pro/ui/component/ListViewEmptyView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/ListViewEmptyView;->setVisibility(I)V

    .line 452
    :goto_0
    iget-object v0, p0, Lim/doit/pro/activity/TaskListFragment$LoadingTask;->this$0:Lim/doit/pro/activity/TaskListFragment;

    invoke-virtual {v0}, Lim/doit/pro/activity/TaskListFragment;->dismissDialog()V

    .line 453
    iget-object v0, p0, Lim/doit/pro/activity/TaskListFragment$LoadingTask;->this$0:Lim/doit/pro/activity/TaskListFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lim/doit/pro/activity/TaskListFragment;->access$5(Lim/doit/pro/activity/TaskListFragment;Lim/doit/pro/activity/TaskListFragment$LoadingTask;)V

    .line 454
    return-void

    .line 450
    :cond_0
    iget-object v0, p0, Lim/doit/pro/activity/TaskListFragment$LoadingTask;->this$0:Lim/doit/pro/activity/TaskListFragment;

    invoke-static {v0}, Lim/doit/pro/activity/TaskListFragment;->access$4(Lim/doit/pro/activity/TaskListFragment;)Lim/doit/pro/ui/component/ListViewEmptyView;

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

    invoke-virtual {p0, p1}, Lim/doit/pro/activity/TaskListFragment$LoadingTask;->onPostExecute(Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 436
    iget-object v0, p0, Lim/doit/pro/activity/TaskListFragment$LoadingTask;->this$0:Lim/doit/pro/activity/TaskListFragment;

    invoke-virtual {v0}, Lim/doit/pro/activity/TaskListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lim/doit/pro/ui/component/DProgressDialog;->show(Landroid/app/Activity;)Lim/doit/pro/ui/component/DProgressDialog;

    .line 437
    return-void
.end method
