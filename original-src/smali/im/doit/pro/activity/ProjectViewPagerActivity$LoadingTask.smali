.class Lim/doit/pro/activity/ProjectViewPagerActivity$LoadingTask;
.super Lim/doit/pro/asynctask/DoitAsyncTask;
.source "ProjectViewPagerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/activity/ProjectViewPagerActivity;
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
.field final synthetic this$0:Lim/doit/pro/activity/ProjectViewPagerActivity;


# direct methods
.method private constructor <init>(Lim/doit/pro/activity/ProjectViewPagerActivity;)V
    .locals 0

    .prologue
    .line 142
    iput-object p1, p0, Lim/doit/pro/activity/ProjectViewPagerActivity$LoadingTask;->this$0:Lim/doit/pro/activity/ProjectViewPagerActivity;

    invoke-direct {p0}, Lim/doit/pro/asynctask/DoitAsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lim/doit/pro/activity/ProjectViewPagerActivity;Lim/doit/pro/activity/ProjectViewPagerActivity$LoadingTask;)V
    .locals 0

    .prologue
    .line 142
    invoke-direct {p0, p1}, Lim/doit/pro/activity/ProjectViewPagerActivity$LoadingTask;-><init>(Lim/doit/pro/activity/ProjectViewPagerActivity;)V

    return-void
.end method

.method synthetic constructor <init>(Lim/doit/pro/activity/ProjectViewPagerActivity;Lim/doit/pro/activity/ProjectViewPagerActivity$LoadingTask;Lim/doit/pro/activity/ProjectViewPagerActivity$LoadingTask;)V
    .locals 0

    .prologue
    .line 142
    invoke-direct {p0, p1}, Lim/doit/pro/activity/ProjectViewPagerActivity$LoadingTask;-><init>(Lim/doit/pro/activity/ProjectViewPagerActivity;)V

    return-void
.end method

.method private dimissDialog()V
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lim/doit/pro/activity/ProjectViewPagerActivity$LoadingTask;->this$0:Lim/doit/pro/activity/ProjectViewPagerActivity;

    invoke-static {v0}, Lim/doit/pro/ui/component/DProgressDialog;->closeDialog(Landroid/app/Activity;)V

    .line 173
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;
    .locals 3
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 153
    iget-object v2, p0, Lim/doit/pro/activity/ProjectViewPagerActivity$LoadingTask;->this$0:Lim/doit/pro/activity/ProjectViewPagerActivity;

    invoke-static {v2}, Lim/doit/pro/activity/ProjectViewPagerActivity;->access$0(Lim/doit/pro/activity/ProjectViewPagerActivity;)Lim/doit/pro/model/Project;

    move-result-object v2

    invoke-static {v2}, Lim/doit/pro/utils/QueryUtils;->findDatasByProject(Lim/doit/pro/model/Project;)Ljava/util/ArrayList;

    move-result-object v0

    .line 154
    .local v0, "entities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/BaseEntityWithPos;>;"
    iget-object v2, p0, Lim/doit/pro/activity/ProjectViewPagerActivity$LoadingTask;->this$0:Lim/doit/pro/activity/ProjectViewPagerActivity;

    invoke-virtual {v2, v0}, Lim/doit/pro/activity/ProjectViewPagerActivity;->filterAndGroupDatas(Ljava/util/ArrayList;)Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;

    move-result-object v1

    .line 155
    .local v1, "result":Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;
    return-object v1
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lim/doit/pro/activity/ProjectViewPagerActivity$LoadingTask;->doInBackground([Ljava/lang/Void;)Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;)V
    .locals 2
    .param p1, "listDatas"    # Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;

    .prologue
    .line 160
    iget-object v0, p0, Lim/doit/pro/activity/ProjectViewPagerActivity$LoadingTask;->this$0:Lim/doit/pro/activity/ProjectViewPagerActivity;

    iget-object v0, v0, Lim/doit/pro/activity/ProjectViewPagerActivity;->mListAdapter:Lim/doit/pro/activity/listview/ListViewAdapter;

    invoke-virtual {v0, p1}, Lim/doit/pro/activity/listview/ListViewAdapter;->setDatasAndRefreshView(Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;)V

    .line 161
    invoke-virtual {p1}, Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;->getGroupers()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 162
    iget-object v0, p0, Lim/doit/pro/activity/ProjectViewPagerActivity$LoadingTask;->this$0:Lim/doit/pro/activity/ProjectViewPagerActivity;

    invoke-static {v0}, Lim/doit/pro/activity/ProjectViewPagerActivity;->access$1(Lim/doit/pro/activity/ProjectViewPagerActivity;)Lim/doit/pro/ui/component/ListViewEmptyView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/ListViewEmptyView;->setVisibility(I)V

    .line 166
    :goto_0
    iget-object v0, p0, Lim/doit/pro/activity/ProjectViewPagerActivity$LoadingTask;->this$0:Lim/doit/pro/activity/ProjectViewPagerActivity;

    invoke-static {v0}, Lim/doit/pro/activity/ProjectViewPagerActivity;->access$2(Lim/doit/pro/activity/ProjectViewPagerActivity;)V

    .line 167
    invoke-direct {p0}, Lim/doit/pro/activity/ProjectViewPagerActivity$LoadingTask;->dimissDialog()V

    .line 168
    iget-object v0, p0, Lim/doit/pro/activity/ProjectViewPagerActivity$LoadingTask;->this$0:Lim/doit/pro/activity/ProjectViewPagerActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lim/doit/pro/activity/ProjectViewPagerActivity;->access$3(Lim/doit/pro/activity/ProjectViewPagerActivity;Lim/doit/pro/activity/ProjectViewPagerActivity$LoadingTask;)V

    .line 169
    return-void

    .line 164
    :cond_0
    iget-object v0, p0, Lim/doit/pro/activity/ProjectViewPagerActivity$LoadingTask;->this$0:Lim/doit/pro/activity/ProjectViewPagerActivity;

    invoke-static {v0}, Lim/doit/pro/activity/ProjectViewPagerActivity;->access$1(Lim/doit/pro/activity/ProjectViewPagerActivity;)Lim/doit/pro/ui/component/ListViewEmptyView;

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

    invoke-virtual {p0, p1}, Lim/doit/pro/activity/ProjectViewPagerActivity$LoadingTask;->onPostExecute(Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lim/doit/pro/activity/ProjectViewPagerActivity$LoadingTask;->this$0:Lim/doit/pro/activity/ProjectViewPagerActivity;

    invoke-static {v0}, Lim/doit/pro/ui/component/DProgressDialog;->show(Landroid/app/Activity;)Lim/doit/pro/ui/component/DProgressDialog;

    .line 148
    return-void
.end method
