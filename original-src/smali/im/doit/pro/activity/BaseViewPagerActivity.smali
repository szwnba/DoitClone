.class public abstract Lim/doit/pro/activity/BaseViewPagerActivity;
.super Lim/doit/pro/activity/BaseActivityRegisterSyncFinish;
.source "BaseViewPagerActivity.java"

# interfaces
.implements Lim/doit/pro/ui/component/pullrefresh/OnRefreshListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lim/doit/pro/activity/BaseViewPagerActivity$TagFilterAndGroupTask;
    }
.end annotation


# instance fields
.field protected mBoxGrouper:Lim/doit/pro/activity/listview/group/DoitListViewGrouper;

.field protected mIsCreateView:Z

.field protected mListAdapter:Lim/doit/pro/activity/listview/ListViewAdapter;

.field protected mPullToRefreshLayout:Lim/doit/pro/ui/component/pullrefresh/PullToRefreshLayout;

.field protected mTagFilter:Lim/doit/pro/ui/model/TagFilter;

.field protected mTagFilterAndGroupTask:Lim/doit/pro/activity/BaseViewPagerActivity$TagFilterAndGroupTask;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lim/doit/pro/activity/BaseActivityRegisterSyncFinish;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lim/doit/pro/activity/BaseViewPagerActivity;Lim/doit/pro/ui/model/TagFilter;)V
    .locals 0

    .prologue
    .line 289
    invoke-direct {p0, p1}, Lim/doit/pro/activity/BaseViewPagerActivity;->setTagFitler(Lim/doit/pro/ui/model/TagFilter;)V

    return-void
.end method

.method private onSyncManyClick()V
    .locals 2

    .prologue
    .line 298
    iget-object v0, p0, Lim/doit/pro/activity/BaseViewPagerActivity;->mPullToRefreshLayout:Lim/doit/pro/ui/component/pullrefresh/PullToRefreshLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshLayout;->setRefreshing(Z)V

    .line 299
    invoke-virtual {p0}, Lim/doit/pro/activity/BaseViewPagerActivity;->sendSyncManyBroadcast()V

    .line 300
    return-void
.end method

.method private setTagFitler(Lim/doit/pro/ui/model/TagFilter;)V
    .locals 2
    .param p1, "tagFilter"    # Lim/doit/pro/ui/model/TagFilter;

    .prologue
    .line 290
    iput-object p1, p0, Lim/doit/pro/activity/BaseViewPagerActivity;->mTagFilter:Lim/doit/pro/ui/model/TagFilter;

    .line 291
    iget-object v0, p0, Lim/doit/pro/activity/BaseViewPagerActivity;->mTagFilterAndGroupTask:Lim/doit/pro/activity/BaseViewPagerActivity$TagFilterAndGroupTask;

    if-nez v0, :cond_0

    .line 292
    new-instance v0, Lim/doit/pro/activity/BaseViewPagerActivity$TagFilterAndGroupTask;

    invoke-direct {v0, p0}, Lim/doit/pro/activity/BaseViewPagerActivity$TagFilterAndGroupTask;-><init>(Lim/doit/pro/activity/BaseViewPagerActivity;)V

    iput-object v0, p0, Lim/doit/pro/activity/BaseViewPagerActivity;->mTagFilterAndGroupTask:Lim/doit/pro/activity/BaseViewPagerActivity$TagFilterAndGroupTask;

    .line 293
    iget-object v0, p0, Lim/doit/pro/activity/BaseViewPagerActivity;->mTagFilterAndGroupTask:Lim/doit/pro/activity/BaseViewPagerActivity$TagFilterAndGroupTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lim/doit/pro/activity/BaseViewPagerActivity$TagFilterAndGroupTask;->execute([Ljava/lang/Object;)Lim/doit/pro/asynctask/DoitAsyncTask;

    .line 295
    :cond_0
    return-void
.end method

.method private showTagFitlerDialog()V
    .locals 3

    .prologue
    .line 247
    iget-object v2, p0, Lim/doit/pro/activity/BaseViewPagerActivity;->mListAdapter:Lim/doit/pro/activity/listview/ListViewAdapter;

    invoke-virtual {v2}, Lim/doit/pro/activity/listview/ListViewAdapter;->getTags()Ljava/util/ArrayList;

    move-result-object v1

    .line 248
    .local v1, "tags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Lim/doit/pro/ui/component/TagFilterDialog;

    invoke-direct {v0, p0}, Lim/doit/pro/ui/component/TagFilterDialog;-><init>(Landroid/content/Context;)V

    .line 249
    .local v0, "tagFilterDialog":Lim/doit/pro/ui/component/TagFilterDialog;
    iget-object v2, p0, Lim/doit/pro/activity/BaseViewPagerActivity;->mTagFilter:Lim/doit/pro/ui/model/TagFilter;

    invoke-virtual {v0, v2, v1}, Lim/doit/pro/ui/component/TagFilterDialog;->showDialog(Lim/doit/pro/ui/model/TagFilter;Ljava/util/ArrayList;)V

    .line 251
    new-instance v2, Lim/doit/pro/activity/BaseViewPagerActivity$6;

    invoke-direct {v2, p0}, Lim/doit/pro/activity/BaseViewPagerActivity$6;-><init>(Lim/doit/pro/activity/BaseViewPagerActivity;)V

    invoke-virtual {v0, v2}, Lim/doit/pro/ui/component/TagFilterDialog;->setOnTagFilterFinishListener(Lim/doit/pro/ui/component/TagFilterDialog$OnTagFilterFinishListener;)V

    .line 287
    return-void
.end method


# virtual methods
.method protected afterSync(Z)V
    .locals 0
    .param p1, "isSuccess"    # Z

    .prologue
    .line 140
    invoke-virtual {p0}, Lim/doit/pro/activity/BaseViewPagerActivity;->finishPullToRefresh()V

    .line 141
    invoke-virtual {p0}, Lim/doit/pro/activity/BaseViewPagerActivity;->loadingTaskNotShowProgress()V

    .line 142
    return-void
.end method

.method protected abstract filterAndGroupDatas(Ljava/util/ArrayList;)Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lim/doit/pro/model/BaseEntityWithPos;",
            ">;)",
            "Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;"
        }
    .end annotation
.end method

.method protected finishPullToRefresh()V
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lim/doit/pro/activity/BaseViewPagerActivity;->mPullToRefreshLayout:Lim/doit/pro/ui/component/pullrefresh/PullToRefreshLayout;

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, Lim/doit/pro/activity/BaseViewPagerActivity;->mPullToRefreshLayout:Lim/doit/pro/ui/component/pullrefresh/PullToRefreshLayout;

    invoke-virtual {v0}, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshLayout;->setRefreshComplete()V

    .line 306
    :cond_0
    return-void
.end method

.method protected initActionBar()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 175
    invoke-virtual {p0}, Lim/doit/pro/activity/BaseViewPagerActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 176
    .local v0, "actionBar":Landroid/app/ActionBar;
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 177
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 178
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 179
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayUseLogoEnabled(Z)V

    .line 180
    return-void
.end method

.method protected initListener()V
    .locals 2

    .prologue
    .line 183
    iget-object v0, p0, Lim/doit/pro/activity/BaseViewPagerActivity;->mListAdapter:Lim/doit/pro/activity/listview/ListViewAdapter;

    .line 184
    new-instance v1, Lim/doit/pro/activity/BaseViewPagerActivity$1;

    invoke-direct {v1, p0}, Lim/doit/pro/activity/BaseViewPagerActivity$1;-><init>(Lim/doit/pro/activity/BaseViewPagerActivity;)V

    invoke-virtual {v0, v1}, Lim/doit/pro/activity/listview/ListViewAdapter;->setUpdateSubtitleTextListener(Lim/doit/pro/activity/listener/OnUpdateActionBarSubtitleListener;)V

    .line 191
    iget-object v0, p0, Lim/doit/pro/activity/BaseViewPagerActivity;->mListAdapter:Lim/doit/pro/activity/listview/ListViewAdapter;

    .line 192
    new-instance v1, Lim/doit/pro/activity/BaseViewPagerActivity$2;

    invoke-direct {v1, p0}, Lim/doit/pro/activity/BaseViewPagerActivity$2;-><init>(Lim/doit/pro/activity/BaseViewPagerActivity;)V

    invoke-virtual {v0, v1}, Lim/doit/pro/activity/listview/ListViewAdapter;->setOnDeleteTagFilterListener(Lim/doit/pro/activity/listview/ListViewAdapter$OnDeleteTagFilterListener;)V

    .line 199
    iget-object v0, p0, Lim/doit/pro/activity/BaseViewPagerActivity;->mListAdapter:Lim/doit/pro/activity/listview/ListViewAdapter;

    .line 200
    new-instance v1, Lim/doit/pro/activity/BaseViewPagerActivity$3;

    invoke-direct {v1, p0}, Lim/doit/pro/activity/BaseViewPagerActivity$3;-><init>(Lim/doit/pro/activity/BaseViewPagerActivity;)V

    invoke-virtual {v0, v1}, Lim/doit/pro/activity/listview/ListViewAdapter;->setOnPullRefreshEnabledListener(Lim/doit/pro/activity/listview/ListViewAdapter$OnPullRefreshEnabledListener;)V

    .line 207
    iget-object v0, p0, Lim/doit/pro/activity/BaseViewPagerActivity;->mListAdapter:Lim/doit/pro/activity/listview/ListViewAdapter;

    new-instance v1, Lim/doit/pro/activity/BaseViewPagerActivity$4;

    invoke-direct {v1, p0}, Lim/doit/pro/activity/BaseViewPagerActivity$4;-><init>(Lim/doit/pro/activity/BaseViewPagerActivity;)V

    invoke-virtual {v0, v1}, Lim/doit/pro/activity/listview/ListViewAdapter;->setReloadDataListener(Lim/doit/pro/activity/listview/ListViewAdapter$OnReloadDataLisetner;)V

    .line 214
    iget-object v0, p0, Lim/doit/pro/activity/BaseViewPagerActivity;->mListAdapter:Lim/doit/pro/activity/listview/ListViewAdapter;

    .line 215
    new-instance v1, Lim/doit/pro/activity/BaseViewPagerActivity$5;

    invoke-direct {v1, p0}, Lim/doit/pro/activity/BaseViewPagerActivity$5;-><init>(Lim/doit/pro/activity/BaseViewPagerActivity;)V

    invoke-virtual {v0, v1}, Lim/doit/pro/activity/listview/ListViewAdapter;->setOnUpdateGroupByStatusListener(Lim/doit/pro/activity/listview/ListViewAdapter$OnUpdateGroupByStatusListener;)V

    .line 225
    return-void
.end method

.method protected initPullToRefreshView(Landroid/widget/ListView;)V
    .locals 4
    .param p1, "listView"    # Landroid/widget/ListView;

    .prologue
    .line 153
    const v0, 0x7f0b006e

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/BaseViewPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshLayout;

    iput-object v0, p0, Lim/doit/pro/activity/BaseViewPagerActivity;->mPullToRefreshLayout:Lim/doit/pro/ui/component/pullrefresh/PullToRefreshLayout;

    .line 154
    invoke-static {p0}, Lim/doit/pro/ui/component/pullrefresh/ActionBarPullToRefresh;->from(Landroid/app/Activity;)Lim/doit/pro/ui/component/pullrefresh/ActionBarPullToRefresh$SetupWizard;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    .line 155
    const v3, 0x7f0b0069

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/pullrefresh/ActionBarPullToRefresh$SetupWizard;->theseChildrenArePullable([I)Lim/doit/pro/ui/component/pullrefresh/ActionBarPullToRefresh$SetupWizard;

    move-result-object v0

    invoke-virtual {v0, p0}, Lim/doit/pro/ui/component/pullrefresh/ActionBarPullToRefresh$SetupWizard;->listener(Lim/doit/pro/ui/component/pullrefresh/OnRefreshListener;)Lim/doit/pro/ui/component/pullrefresh/ActionBarPullToRefresh$SetupWizard;

    move-result-object v0

    .line 156
    iget-object v1, p0, Lim/doit/pro/activity/BaseViewPagerActivity;->mPullToRefreshLayout:Lim/doit/pro/ui/component/pullrefresh/PullToRefreshLayout;

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/pullrefresh/ActionBarPullToRefresh$SetupWizard;->setup(Lim/doit/pro/ui/component/pullrefresh/PullToRefreshLayout;)V

    .line 157
    invoke-virtual {p0}, Lim/doit/pro/activity/BaseViewPagerActivity;->setPullEnable()V

    .line 158
    return-void
.end method

.method protected initView()V
    .locals 0

    .prologue
    .line 149
    invoke-virtual {p0}, Lim/doit/pro/activity/BaseViewPagerActivity;->initActionBar()V

    .line 150
    return-void
.end method

.method protected initViewContent()V
    .locals 0

    .prologue
    .line 172
    return-void
.end method

.method protected isNotShowSearch()Z
    .locals 1

    .prologue
    .line 131
    const/4 v0, 0x0

    return v0
.end method

.method protected isNotShowTagFitler()Z
    .locals 1

    .prologue
    .line 127
    const/4 v0, 0x0

    return v0
.end method

.method protected isNowShowMore()Z
    .locals 1

    .prologue
    .line 135
    const/4 v0, 0x0

    return v0
.end method

.method protected abstract loadingTaskNotShowProgress()V
.end method

.method protected abstract onAddClick()V
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 58
    invoke-super {p0, p1}, Lim/doit/pro/activity/BaseActivityRegisterSyncFinish;->onCreate(Landroid/os/Bundle;)V

    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Lim/doit/pro/activity/BaseViewPagerActivity;->mIsCreateView:Z

    .line 60
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 78
    invoke-super {p0, p1}, Lim/doit/pro/activity/BaseActivityRegisterSyncFinish;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 69
    iget-object v0, p0, Lim/doit/pro/activity/BaseViewPagerActivity;->mTagFilterAndGroupTask:Lim/doit/pro/activity/BaseViewPagerActivity$TagFilterAndGroupTask;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lim/doit/pro/activity/BaseViewPagerActivity;->mTagFilterAndGroupTask:Lim/doit/pro/activity/BaseViewPagerActivity$TagFilterAndGroupTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lim/doit/pro/activity/BaseViewPagerActivity$TagFilterAndGroupTask;->cancel(Z)Z

    .line 72
    :cond_0
    invoke-virtual {p0}, Lim/doit/pro/activity/BaseViewPagerActivity;->finishPullToRefresh()V

    .line 73
    invoke-super {p0}, Lim/doit/pro/activity/BaseActivityRegisterSyncFinish;->onDestroy()V

    .line 74
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v2, 0x1

    .line 100
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 101
    .local v0, "id":I
    const v3, 0x102002c

    if-ne v0, v3, :cond_0

    .line 102
    invoke-virtual {p0}, Lim/doit/pro/activity/BaseViewPagerActivity;->finish()V

    .line 118
    :goto_0
    return v2

    .line 104
    :cond_0
    const v3, 0x7f0b020c

    if-ne v0, v3, :cond_1

    .line 105
    invoke-virtual {p0}, Lim/doit/pro/activity/BaseViewPagerActivity;->onAddClick()V

    goto :goto_0

    .line 107
    :cond_1
    const v3, 0x7f0b020f

    if-ne v0, v3, :cond_2

    .line 108
    invoke-direct {p0}, Lim/doit/pro/activity/BaseViewPagerActivity;->showTagFitlerDialog()V

    goto :goto_0

    .line 110
    :cond_2
    const v3, 0x7f0b0210

    if-ne v0, v3, :cond_3

    .line 111
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lim/doit/pro/activity/SearchActivity;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 112
    .local v1, "searchIntent":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lim/doit/pro/activity/BaseViewPagerActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 114
    .end local v1    # "searchIntent":Landroid/content/Intent;
    :cond_3
    const v3, 0x7f0b020e

    if-ne v0, v3, :cond_4

    .line 115
    invoke-direct {p0}, Lim/doit/pro/activity/BaseViewPagerActivity;->onSyncManyClick()V

    goto :goto_0

    .line 118
    :cond_4
    invoke-super {p0, p1}, Lim/doit/pro/activity/BaseActivityRegisterSyncFinish;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v2, 0x0

    .line 83
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 84
    invoke-virtual {p0}, Lim/doit/pro/activity/BaseViewPagerActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 85
    .local v0, "inflater":Landroid/view/MenuInflater;
    const/high16 v1, 0x7f0e0000

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 86
    invoke-virtual {p0}, Lim/doit/pro/activity/BaseViewPagerActivity;->isNowShowMore()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 87
    const v1, 0x7f0b020d

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 89
    :cond_0
    invoke-virtual {p0}, Lim/doit/pro/activity/BaseViewPagerActivity;->isNotShowTagFitler()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 90
    const v1, 0x7f0b020f

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 92
    :cond_1
    invoke-virtual {p0}, Lim/doit/pro/activity/BaseViewPagerActivity;->isNotShowSearch()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 93
    const v1, 0x7f0b0210

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 95
    :cond_2
    invoke-super {p0, p1}, Lim/doit/pro/activity/BaseActivityRegisterSyncFinish;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1
.end method

.method public onRefreshStarted(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 123
    invoke-virtual {p0}, Lim/doit/pro/activity/BaseViewPagerActivity;->sendSyncManyBroadcast()V

    .line 124
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 64
    invoke-super {p0}, Lim/doit/pro/activity/BaseActivityRegisterSyncFinish;->onResume()V

    .line 65
    return-void
.end method

.method protected sendSyncManyBroadcast()V
    .locals 0

    .prologue
    .line 145
    invoke-static {p0}, Lim/doit/pro/utils/BroadcastUtils;->sendSyncManyBroadcast(Landroid/content/Context;)V

    .line 146
    return-void
.end method

.method protected setPullEnable()V
    .locals 2

    .prologue
    .line 161
    iget-object v0, p0, Lim/doit/pro/activity/BaseViewPagerActivity;->mPullToRefreshLayout:Lim/doit/pro/ui/component/pullrefresh/PullToRefreshLayout;

    if-nez v0, :cond_0

    .line 169
    :goto_0
    return-void

    .line 164
    :cond_0
    iget-object v0, p0, Lim/doit/pro/activity/BaseViewPagerActivity;->mListAdapter:Lim/doit/pro/activity/listview/ListViewAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lim/doit/pro/activity/BaseViewPagerActivity;->mListAdapter:Lim/doit/pro/activity/listview/ListViewAdapter;

    invoke-virtual {v0}, Lim/doit/pro/activity/listview/ListViewAdapter;->getSelectedCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 165
    iget-object v0, p0, Lim/doit/pro/activity/BaseViewPagerActivity;->mPullToRefreshLayout:Lim/doit/pro/ui/component/pullrefresh/PullToRefreshLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshLayout;->setEnabled(Z)V

    goto :goto_0

    .line 167
    :cond_1
    iget-object v0, p0, Lim/doit/pro/activity/BaseViewPagerActivity;->mPullToRefreshLayout:Lim/doit/pro/ui/component/pullrefresh/PullToRefreshLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshLayout;->setEnabled(Z)V

    goto :goto_0
.end method
