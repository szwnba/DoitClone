.class public Lim/doit/pro/activity/BaseViewPagerActivity$TagFilterAndGroupTask;
.super Lim/doit/pro/asynctask/DoitAsyncTask;
.source "BaseViewPagerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/activity/BaseViewPagerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
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
.field final synthetic this$0:Lim/doit/pro/activity/BaseViewPagerActivity;


# direct methods
.method protected constructor <init>(Lim/doit/pro/activity/BaseViewPagerActivity;)V
    .locals 0

    .prologue
    .line 227
    iput-object p1, p0, Lim/doit/pro/activity/BaseViewPagerActivity$TagFilterAndGroupTask;->this$0:Lim/doit/pro/activity/BaseViewPagerActivity;

    invoke-direct {p0}, Lim/doit/pro/asynctask/DoitAsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;
    .locals 3
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 232
    iget-object v2, p0, Lim/doit/pro/activity/BaseViewPagerActivity$TagFilterAndGroupTask;->this$0:Lim/doit/pro/activity/BaseViewPagerActivity;

    iget-object v2, v2, Lim/doit/pro/activity/BaseViewPagerActivity;->mListAdapter:Lim/doit/pro/activity/listview/ListViewAdapter;

    invoke-virtual {v2}, Lim/doit/pro/activity/listview/ListViewAdapter;->getEntities()Ljava/util/ArrayList;

    move-result-object v0

    .line 233
    .local v0, "entities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/BaseEntityWithPos;>;"
    iget-object v2, p0, Lim/doit/pro/activity/BaseViewPagerActivity$TagFilterAndGroupTask;->this$0:Lim/doit/pro/activity/BaseViewPagerActivity;

    invoke-virtual {v2, v0}, Lim/doit/pro/activity/BaseViewPagerActivity;->filterAndGroupDatas(Ljava/util/ArrayList;)Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;

    move-result-object v1

    .line 234
    .local v1, "result":Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;
    invoke-virtual {v1, v0}, Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;->setEntities(Ljava/util/ArrayList;)V

    .line 235
    return-object v1
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lim/doit/pro/activity/BaseViewPagerActivity$TagFilterAndGroupTask;->doInBackground([Ljava/lang/Void;)Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;)V
    .locals 2
    .param p1, "result"    # Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;

    .prologue
    .line 240
    iget-object v0, p0, Lim/doit/pro/activity/BaseViewPagerActivity$TagFilterAndGroupTask;->this$0:Lim/doit/pro/activity/BaseViewPagerActivity;

    iget-object v0, v0, Lim/doit/pro/activity/BaseViewPagerActivity;->mListAdapter:Lim/doit/pro/activity/listview/ListViewAdapter;

    invoke-virtual {v0, p1}, Lim/doit/pro/activity/listview/ListViewAdapter;->setDatasAndRefreshView(Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;)V

    .line 241
    iget-object v0, p0, Lim/doit/pro/activity/BaseViewPagerActivity$TagFilterAndGroupTask;->this$0:Lim/doit/pro/activity/BaseViewPagerActivity;

    const/4 v1, 0x0

    iput-object v1, v0, Lim/doit/pro/activity/BaseViewPagerActivity;->mTagFilterAndGroupTask:Lim/doit/pro/activity/BaseViewPagerActivity$TagFilterAndGroupTask;

    .line 242
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;

    invoke-virtual {p0, p1}, Lim/doit/pro/activity/BaseViewPagerActivity$TagFilterAndGroupTask;->onPostExecute(Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;)V

    return-void
.end method
