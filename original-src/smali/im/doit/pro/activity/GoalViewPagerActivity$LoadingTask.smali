.class Lim/doit/pro/activity/GoalViewPagerActivity$LoadingTask;
.super Lim/doit/pro/asynctask/DoitAsyncTask;
.source "GoalViewPagerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/activity/GoalViewPagerActivity;
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
.field final synthetic this$0:Lim/doit/pro/activity/GoalViewPagerActivity;


# direct methods
.method private constructor <init>(Lim/doit/pro/activity/GoalViewPagerActivity;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lim/doit/pro/activity/GoalViewPagerActivity$LoadingTask;->this$0:Lim/doit/pro/activity/GoalViewPagerActivity;

    invoke-direct {p0}, Lim/doit/pro/asynctask/DoitAsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lim/doit/pro/activity/GoalViewPagerActivity;Lim/doit/pro/activity/GoalViewPagerActivity$LoadingTask;)V
    .locals 0

    .prologue
    .line 122
    invoke-direct {p0, p1}, Lim/doit/pro/activity/GoalViewPagerActivity$LoadingTask;-><init>(Lim/doit/pro/activity/GoalViewPagerActivity;)V

    return-void
.end method

.method synthetic constructor <init>(Lim/doit/pro/activity/GoalViewPagerActivity;Lim/doit/pro/activity/GoalViewPagerActivity$LoadingTask;Lim/doit/pro/activity/GoalViewPagerActivity$LoadingTask;)V
    .locals 0

    .prologue
    .line 122
    invoke-direct {p0, p1}, Lim/doit/pro/activity/GoalViewPagerActivity$LoadingTask;-><init>(Lim/doit/pro/activity/GoalViewPagerActivity;)V

    return-void
.end method

.method private dismissDialog()V
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lim/doit/pro/activity/GoalViewPagerActivity$LoadingTask;->this$0:Lim/doit/pro/activity/GoalViewPagerActivity;

    invoke-static {v0}, Lim/doit/pro/ui/component/DProgressDialog;->closeDialog(Landroid/app/Activity;)V

    .line 152
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;
    .locals 3
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 133
    iget-object v2, p0, Lim/doit/pro/activity/GoalViewPagerActivity$LoadingTask;->this$0:Lim/doit/pro/activity/GoalViewPagerActivity;

    invoke-static {v2}, Lim/doit/pro/activity/GoalViewPagerActivity;->access$0(Lim/doit/pro/activity/GoalViewPagerActivity;)Lim/doit/pro/model/Goal;

    move-result-object v2

    invoke-static {v2}, Lim/doit/pro/utils/QueryUtils;->findDatasByGoal(Lim/doit/pro/model/Goal;)Ljava/util/ArrayList;

    move-result-object v0

    .line 134
    .local v0, "entities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/BaseEntityWithPos;>;"
    iget-object v2, p0, Lim/doit/pro/activity/GoalViewPagerActivity$LoadingTask;->this$0:Lim/doit/pro/activity/GoalViewPagerActivity;

    invoke-virtual {v2, v0}, Lim/doit/pro/activity/GoalViewPagerActivity;->filterAndGroupDatas(Ljava/util/ArrayList;)Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;

    move-result-object v1

    .line 135
    .local v1, "result":Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;
    return-object v1
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lim/doit/pro/activity/GoalViewPagerActivity$LoadingTask;->doInBackground([Ljava/lang/Void;)Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;)V
    .locals 2
    .param p1, "listDatas"    # Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;

    .prologue
    .line 140
    iget-object v0, p0, Lim/doit/pro/activity/GoalViewPagerActivity$LoadingTask;->this$0:Lim/doit/pro/activity/GoalViewPagerActivity;

    iget-object v0, v0, Lim/doit/pro/activity/GoalViewPagerActivity;->mListAdapter:Lim/doit/pro/activity/listview/ListViewAdapter;

    invoke-virtual {v0, p1}, Lim/doit/pro/activity/listview/ListViewAdapter;->setDatasAndRefreshView(Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;)V

    .line 141
    invoke-virtual {p1}, Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;->getGroupers()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 142
    iget-object v0, p0, Lim/doit/pro/activity/GoalViewPagerActivity$LoadingTask;->this$0:Lim/doit/pro/activity/GoalViewPagerActivity;

    invoke-static {v0}, Lim/doit/pro/activity/GoalViewPagerActivity;->access$1(Lim/doit/pro/activity/GoalViewPagerActivity;)Lim/doit/pro/ui/component/ListViewEmptyView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/ListViewEmptyView;->setVisibility(I)V

    .line 146
    :goto_0
    invoke-direct {p0}, Lim/doit/pro/activity/GoalViewPagerActivity$LoadingTask;->dismissDialog()V

    .line 147
    iget-object v0, p0, Lim/doit/pro/activity/GoalViewPagerActivity$LoadingTask;->this$0:Lim/doit/pro/activity/GoalViewPagerActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lim/doit/pro/activity/GoalViewPagerActivity;->access$2(Lim/doit/pro/activity/GoalViewPagerActivity;Lim/doit/pro/activity/GoalViewPagerActivity$LoadingTask;)V

    .line 148
    return-void

    .line 144
    :cond_0
    iget-object v0, p0, Lim/doit/pro/activity/GoalViewPagerActivity$LoadingTask;->this$0:Lim/doit/pro/activity/GoalViewPagerActivity;

    invoke-static {v0}, Lim/doit/pro/activity/GoalViewPagerActivity;->access$1(Lim/doit/pro/activity/GoalViewPagerActivity;)Lim/doit/pro/ui/component/ListViewEmptyView;

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

    invoke-virtual {p0, p1}, Lim/doit/pro/activity/GoalViewPagerActivity$LoadingTask;->onPostExecute(Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lim/doit/pro/activity/GoalViewPagerActivity$LoadingTask;->this$0:Lim/doit/pro/activity/GoalViewPagerActivity;

    invoke-static {v0}, Lim/doit/pro/ui/component/DProgressDialog;->show(Landroid/app/Activity;)Lim/doit/pro/ui/component/DProgressDialog;

    .line 128
    return-void
.end method
