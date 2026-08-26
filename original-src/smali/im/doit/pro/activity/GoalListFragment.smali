.class public Lim/doit/pro/activity/GoalListFragment;
.super Lim/doit/pro/activity/BaseListFragment;
.source "GoalListFragment.java"

# interfaces
.implements Lim/doit/pro/ui/component/pullrefresh/OnRefreshListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lim/doit/pro/activity/GoalListFragment$DoitListActionMode;,
        Lim/doit/pro/activity/GoalListFragment$GoalListViewAdapter;,
        Lim/doit/pro/activity/GoalListFragment$LoadingGoalNotShowProgress;,
        Lim/doit/pro/activity/GoalListFragment$LoadingGoals;
    }
.end annotation


# instance fields
.field protected isAcionModeDone:Z

.field protected mActionMode:Landroid/view/ActionMode;

.field private mActionModeCallback:Lim/doit/pro/activity/GoalListFragment$DoitListActionMode;

.field private mArgs:Landroid/os/Bundle;

.field private mBox:Lim/doit/pro/model/Box;

.field private mIsCreateView:Z

.field private mLayoutView:Landroid/view/View;

.field private mListAdapter:Lim/doit/pro/activity/GoalListFragment$GoalListViewAdapter;

.field private mListView:Lcom/mobeta/android/dslv/DragSortListView;

.field private mListViewEmptyView:Lim/doit/pro/ui/component/ListViewEmptyView;

.field private mLoadingGoals:Lim/doit/pro/activity/GoalListFragment$LoadingGoals;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Lim/doit/pro/activity/BaseListFragment;-><init>()V

    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Lim/doit/pro/activity/GoalListFragment;->isAcionModeDone:Z

    .line 35
    return-void
.end method

.method static synthetic access$0(Lim/doit/pro/activity/GoalListFragment;)Lim/doit/pro/model/Box;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lim/doit/pro/activity/GoalListFragment;->mBox:Lim/doit/pro/model/Box;

    return-object v0
.end method

.method static synthetic access$1(Lim/doit/pro/activity/GoalListFragment;)Lim/doit/pro/activity/GoalListFragment$GoalListViewAdapter;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lim/doit/pro/activity/GoalListFragment;->mListAdapter:Lim/doit/pro/activity/GoalListFragment$GoalListViewAdapter;

    return-object v0
.end method

.method static synthetic access$2(Lim/doit/pro/activity/GoalListFragment;)Lim/doit/pro/ui/component/ListViewEmptyView;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lim/doit/pro/activity/GoalListFragment;->mListViewEmptyView:Lim/doit/pro/ui/component/ListViewEmptyView;

    return-object v0
.end method

.method static synthetic access$3(Lim/doit/pro/activity/GoalListFragment;Lim/doit/pro/activity/GoalListFragment$LoadingGoals;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lim/doit/pro/activity/GoalListFragment;->mLoadingGoals:Lim/doit/pro/activity/GoalListFragment$LoadingGoals;

    return-void
.end method

.method static synthetic access$4(Lim/doit/pro/activity/GoalListFragment;)V
    .locals 0

    .prologue
    .line 133
    invoke-direct {p0}, Lim/doit/pro/activity/GoalListFragment;->setPullEnable()V

    return-void
.end method

.method static synthetic access$5(Lim/doit/pro/activity/GoalListFragment;)Lim/doit/pro/activity/GoalListFragment$DoitListActionMode;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lim/doit/pro/activity/GoalListFragment;->mActionModeCallback:Lim/doit/pro/activity/GoalListFragment$DoitListActionMode;

    return-object v0
.end method

.method static synthetic access$6(Lim/doit/pro/activity/GoalListFragment;)V
    .locals 0

    .prologue
    .line 188
    invoke-direct {p0}, Lim/doit/pro/activity/GoalListFragment;->loadingGoalsNotShowProgress()V

    return-void
.end method

.method public static getInstance(Landroid/os/Bundle;)Lim/doit/pro/activity/GoalListFragment;
    .locals 1
    .param p0, "args"    # Landroid/os/Bundle;

    .prologue
    .line 55
    new-instance v0, Lim/doit/pro/activity/GoalListFragment;

    invoke-direct {v0}, Lim/doit/pro/activity/GoalListFragment;-><init>()V

    .line 56
    .local v0, "fragment":Lim/doit/pro/activity/GoalListFragment;
    iput-object p0, v0, Lim/doit/pro/activity/GoalListFragment;->mArgs:Landroid/os/Bundle;

    .line 57
    return-object v0
.end method

.method private initData()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 105
    iget-object v0, p0, Lim/doit/pro/activity/GoalListFragment;->mArgs:Landroid/os/Bundle;

    const-string v1, "box"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lim/doit/pro/model/Box;

    iput-object v0, p0, Lim/doit/pro/activity/GoalListFragment;->mBox:Lim/doit/pro/model/Box;

    .line 106
    new-instance v0, Lim/doit/pro/activity/GoalListFragment$LoadingGoals;

    invoke-direct {v0, p0, v2, v2}, Lim/doit/pro/activity/GoalListFragment$LoadingGoals;-><init>(Lim/doit/pro/activity/GoalListFragment;Lim/doit/pro/activity/GoalListFragment$LoadingGoals;Lim/doit/pro/activity/GoalListFragment$LoadingGoals;)V

    iput-object v0, p0, Lim/doit/pro/activity/GoalListFragment;->mLoadingGoals:Lim/doit/pro/activity/GoalListFragment$LoadingGoals;

    .line 107
    iget-object v0, p0, Lim/doit/pro/activity/GoalListFragment;->mLoadingGoals:Lim/doit/pro/activity/GoalListFragment$LoadingGoals;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lim/doit/pro/activity/GoalListFragment$LoadingGoals;->execute([Ljava/lang/Object;)Lim/doit/pro/asynctask/DoitAsyncTask;

    .line 108
    return-void
.end method

.method private initListener()V
    .locals 2

    .prologue
    .line 145
    iget-object v0, p0, Lim/doit/pro/activity/GoalListFragment;->mListAdapter:Lim/doit/pro/activity/GoalListFragment$GoalListViewAdapter;

    .line 146
    new-instance v1, Lim/doit/pro/activity/GoalListFragment$1;

    invoke-direct {v1, p0}, Lim/doit/pro/activity/GoalListFragment$1;-><init>(Lim/doit/pro/activity/GoalListFragment;)V

    invoke-virtual {v0, v1}, Lim/doit/pro/activity/GoalListFragment$GoalListViewAdapter;->setUpdateSubtitleTextListener(Lim/doit/pro/activity/listener/OnUpdateActionBarSubtitleListener;)V

    .line 156
    iget-object v0, p0, Lim/doit/pro/activity/GoalListFragment;->mListAdapter:Lim/doit/pro/activity/GoalListFragment$GoalListViewAdapter;

    new-instance v1, Lim/doit/pro/activity/GoalListFragment$2;

    invoke-direct {v1, p0}, Lim/doit/pro/activity/GoalListFragment$2;-><init>(Lim/doit/pro/activity/GoalListFragment;)V

    invoke-virtual {v0, v1}, Lim/doit/pro/activity/GoalListFragment$GoalListViewAdapter;->setOnItemSelectedListener(Lim/doit/pro/activity/listview/ListViewAdapter$OnItemSelectedListener;)V

    .line 179
    iget-object v0, p0, Lim/doit/pro/activity/GoalListFragment;->mListAdapter:Lim/doit/pro/activity/GoalListFragment$GoalListViewAdapter;

    new-instance v1, Lim/doit/pro/activity/GoalListFragment$3;

    invoke-direct {v1, p0}, Lim/doit/pro/activity/GoalListFragment$3;-><init>(Lim/doit/pro/activity/GoalListFragment;)V

    invoke-virtual {v0, v1}, Lim/doit/pro/activity/GoalListFragment$GoalListViewAdapter;->setReloadDataListener(Lim/doit/pro/activity/listview/ListViewAdapter$OnReloadDataLisetner;)V

    .line 186
    return-void
.end method

.method private initPullToRefreshView()V
    .locals 4

    .prologue
    .line 125
    iget-object v0, p0, Lim/doit/pro/activity/GoalListFragment;->mLayoutView:Landroid/view/View;

    .line 126
    const v1, 0x7f0b006e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshLayout;

    .line 125
    iput-object v0, p0, Lim/doit/pro/activity/GoalListFragment;->mPullToRefreshLayout:Lim/doit/pro/ui/component/pullrefresh/PullToRefreshLayout;

    .line 127
    invoke-virtual {p0}, Lim/doit/pro/activity/GoalListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lim/doit/pro/ui/component/pullrefresh/ActionBarPullToRefresh;->from(Landroid/app/Activity;)Lim/doit/pro/ui/component/pullrefresh/ActionBarPullToRefresh$SetupWizard;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    .line 128
    const v3, 0x7f0b0069

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/pullrefresh/ActionBarPullToRefresh$SetupWizard;->theseChildrenArePullable([I)Lim/doit/pro/ui/component/pullrefresh/ActionBarPullToRefresh$SetupWizard;

    move-result-object v0

    invoke-virtual {v0, p0}, Lim/doit/pro/ui/component/pullrefresh/ActionBarPullToRefresh$SetupWizard;->listener(Lim/doit/pro/ui/component/pullrefresh/OnRefreshListener;)Lim/doit/pro/ui/component/pullrefresh/ActionBarPullToRefresh$SetupWizard;

    move-result-object v0

    .line 129
    iget-object v1, p0, Lim/doit/pro/activity/GoalListFragment;->mPullToRefreshLayout:Lim/doit/pro/ui/component/pullrefresh/PullToRefreshLayout;

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/pullrefresh/ActionBarPullToRefresh$SetupWizard;->setup(Lim/doit/pro/ui/component/pullrefresh/PullToRefreshLayout;)V

    .line 130
    invoke-direct {p0}, Lim/doit/pro/activity/GoalListFragment;->setPullEnable()V

    .line 131
    return-void
.end method

.method private initView()V
    .locals 4

    .prologue
    .line 111
    new-instance v1, Lim/doit/pro/activity/GoalListFragment$DoitListActionMode;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lim/doit/pro/activity/GoalListFragment$DoitListActionMode;-><init>(Lim/doit/pro/activity/GoalListFragment;Lim/doit/pro/activity/GoalListFragment$DoitListActionMode;)V

    iput-object v1, p0, Lim/doit/pro/activity/GoalListFragment;->mActionModeCallback:Lim/doit/pro/activity/GoalListFragment$DoitListActionMode;

    .line 112
    iget-object v1, p0, Lim/doit/pro/activity/GoalListFragment;->mLayoutView:Landroid/view/View;

    .line 113
    const v2, 0x7f0b006f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lim/doit/pro/ui/component/ListViewEmptyView;

    .line 112
    iput-object v1, p0, Lim/doit/pro/activity/GoalListFragment;->mListViewEmptyView:Lim/doit/pro/ui/component/ListViewEmptyView;

    .line 114
    iget-object v1, p0, Lim/doit/pro/activity/GoalListFragment;->mLayoutView:Landroid/view/View;

    const v2, 0x7f0b0069

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/mobeta/android/dslv/DragSortListView;

    iput-object v1, p0, Lim/doit/pro/activity/GoalListFragment;->mListView:Lcom/mobeta/android/dslv/DragSortListView;

    .line 115
    new-instance v1, Lim/doit/pro/activity/GoalListFragment$GoalListViewAdapter;

    invoke-virtual {p0}, Lim/doit/pro/activity/GoalListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lim/doit/pro/activity/GoalListFragment;->mListView:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-direct {v1, p0, v2, v3}, Lim/doit/pro/activity/GoalListFragment$GoalListViewAdapter;-><init>(Lim/doit/pro/activity/GoalListFragment;Landroid/app/Activity;Lcom/mobeta/android/dslv/DragSortListView;)V

    iput-object v1, p0, Lim/doit/pro/activity/GoalListFragment;->mListAdapter:Lim/doit/pro/activity/GoalListFragment$GoalListViewAdapter;

    .line 116
    new-instance v0, Lcom/mobeta/android/dslv/DoitDragSortController;

    .line 117
    iget-object v1, p0, Lim/doit/pro/activity/GoalListFragment;->mListView:Lcom/mobeta/android/dslv/DragSortListView;

    iget-object v2, p0, Lim/doit/pro/activity/GoalListFragment;->mListAdapter:Lim/doit/pro/activity/GoalListFragment$GoalListViewAdapter;

    .line 116
    invoke-direct {v0, v1, v2}, Lcom/mobeta/android/dslv/DoitDragSortController;-><init>(Lcom/mobeta/android/dslv/DragSortListView;Lim/doit/pro/activity/listview/ListViewAdapter;)V

    .line 118
    .local v0, "listViewController":Lcom/mobeta/android/dslv/DoitDragSortController;
    iget-object v1, p0, Lim/doit/pro/activity/GoalListFragment;->mListView:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-virtual {v1, v0}, Lcom/mobeta/android/dslv/DragSortListView;->setFloatViewManager(Lcom/mobeta/android/dslv/DragSortListView$FloatViewManager;)V

    .line 119
    iget-object v1, p0, Lim/doit/pro/activity/GoalListFragment;->mListView:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-virtual {v1, v0}, Lcom/mobeta/android/dslv/DragSortListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 120
    iget-object v1, p0, Lim/doit/pro/activity/GoalListFragment;->mListView:Lcom/mobeta/android/dslv/DragSortListView;

    iget-object v2, p0, Lim/doit/pro/activity/GoalListFragment;->mListAdapter:Lim/doit/pro/activity/GoalListFragment$GoalListViewAdapter;

    invoke-virtual {v1, v2}, Lcom/mobeta/android/dslv/DragSortListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 121
    invoke-direct {p0}, Lim/doit/pro/activity/GoalListFragment;->initPullToRefreshView()V

    .line 122
    return-void
.end method

.method private loadingGoalsNotShowProgress()V
    .locals 2

    .prologue
    .line 189
    iget-object v0, p0, Lim/doit/pro/activity/GoalListFragment;->mLoadingGoals:Lim/doit/pro/activity/GoalListFragment$LoadingGoals;

    if-eqz v0, :cond_0

    .line 194
    :goto_0
    return-void

    .line 192
    :cond_0
    new-instance v0, Lim/doit/pro/activity/GoalListFragment$LoadingGoalNotShowProgress;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lim/doit/pro/activity/GoalListFragment$LoadingGoalNotShowProgress;-><init>(Lim/doit/pro/activity/GoalListFragment;Lim/doit/pro/activity/GoalListFragment$LoadingGoalNotShowProgress;)V

    iput-object v0, p0, Lim/doit/pro/activity/GoalListFragment;->mLoadingGoals:Lim/doit/pro/activity/GoalListFragment$LoadingGoals;

    .line 193
    iget-object v0, p0, Lim/doit/pro/activity/GoalListFragment;->mLoadingGoals:Lim/doit/pro/activity/GoalListFragment$LoadingGoals;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lim/doit/pro/activity/GoalListFragment$LoadingGoals;->execute([Ljava/lang/Object;)Lim/doit/pro/asynctask/DoitAsyncTask;

    goto :goto_0
.end method

.method private setPullEnable()V
    .locals 2

    .prologue
    .line 134
    iget-object v0, p0, Lim/doit/pro/activity/GoalListFragment;->mPullToRefreshLayout:Lim/doit/pro/ui/component/pullrefresh/PullToRefreshLayout;

    if-nez v0, :cond_0

    .line 142
    :goto_0
    return-void

    .line 137
    :cond_0
    iget-object v0, p0, Lim/doit/pro/activity/GoalListFragment;->mListAdapter:Lim/doit/pro/activity/GoalListFragment$GoalListViewAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lim/doit/pro/activity/GoalListFragment;->mListAdapter:Lim/doit/pro/activity/GoalListFragment$GoalListViewAdapter;

    invoke-virtual {v0}, Lim/doit/pro/activity/GoalListFragment$GoalListViewAdapter;->getSelectedCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 138
    iget-object v0, p0, Lim/doit/pro/activity/GoalListFragment;->mPullToRefreshLayout:Lim/doit/pro/ui/component/pullrefresh/PullToRefreshLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshLayout;->setEnabled(Z)V

    goto :goto_0

    .line 140
    :cond_1
    iget-object v0, p0, Lim/doit/pro/activity/GoalListFragment;->mPullToRefreshLayout:Lim/doit/pro/ui/component/pullrefresh/PullToRefreshLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshLayout;->setEnabled(Z)V

    goto :goto_0
.end method


# virtual methods
.method protected afterSync()V
    .locals 0

    .prologue
    .line 100
    invoke-super {p0}, Lim/doit/pro/activity/BaseListFragment;->afterSync()V

    .line 101
    invoke-direct {p0}, Lim/doit/pro/activity/GoalListFragment;->loadingGoalsNotShowProgress()V

    .line 102
    return-void
.end method

.method protected dismissDialog()V
    .locals 1

    .prologue
    .line 239
    invoke-virtual {p0}, Lim/doit/pro/activity/GoalListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lim/doit/pro/ui/component/DProgressDialog;->closeDialog(Landroid/app/Activity;)V

    .line 240
    return-void
.end method

.method public finishActionMode()V
    .locals 2

    .prologue
    .line 286
    iget-object v0, p0, Lim/doit/pro/activity/GoalListFragment;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 287
    invoke-virtual {p0}, Lim/doit/pro/activity/GoalListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lim/doit/pro/activity/GoalListFragment$4;

    invoke-direct {v1, p0}, Lim/doit/pro/activity/GoalListFragment$4;-><init>(Lim/doit/pro/activity/GoalListFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 294
    invoke-direct {p0}, Lim/doit/pro/activity/GoalListFragment;->setPullEnable()V

    .line 296
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 69
    const/4 v0, 0x1

    iput-boolean v0, p0, Lim/doit/pro/activity/GoalListFragment;->mIsCreateView:Z

    .line 70
    if-eqz p3, :cond_0

    .line 71
    iput-object p3, p0, Lim/doit/pro/activity/GoalListFragment;->mArgs:Landroid/os/Bundle;

    .line 73
    :cond_0
    const v0, 0x7f03002b

    .line 74
    const/4 v1, 0x0

    .line 73
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lim/doit/pro/activity/GoalListFragment;->mLayoutView:Landroid/view/View;

    .line 75
    invoke-direct {p0}, Lim/doit/pro/activity/GoalListFragment;->initData()V

    .line 76
    invoke-direct {p0}, Lim/doit/pro/activity/GoalListFragment;->initView()V

    .line 77
    invoke-direct {p0}, Lim/doit/pro/activity/GoalListFragment;->initListener()V

    .line 78
    iget-object v0, p0, Lim/doit/pro/activity/GoalListFragment;->mLayoutView:Landroid/view/View;

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Lim/doit/pro/activity/GoalListFragment;->mLoadingGoals:Lim/doit/pro/activity/GoalListFragment$LoadingGoals;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lim/doit/pro/activity/GoalListFragment;->mLoadingGoals:Lim/doit/pro/activity/GoalListFragment$LoadingGoals;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lim/doit/pro/activity/GoalListFragment$LoadingGoals;->cancel(Z)Z

    .line 95
    :cond_0
    invoke-super {p0}, Lim/doit/pro/activity/BaseListFragment;->onDestroy()V

    .line 96
    return-void
.end method

.method public onRefreshStarted(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 300
    invoke-virtual {p0}, Lim/doit/pro/activity/GoalListFragment;->sendSyncManyBroadcast()V

    .line 301
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 83
    invoke-super {p0}, Lim/doit/pro/activity/BaseListFragment;->onResume()V

    .line 84
    iget-boolean v0, p0, Lim/doit/pro/activity/GoalListFragment;->mIsCreateView:Z

    if-nez v0, :cond_0

    .line 85
    invoke-direct {p0}, Lim/doit/pro/activity/GoalListFragment;->loadingGoalsNotShowProgress()V

    .line 87
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lim/doit/pro/activity/GoalListFragment;->mIsCreateView:Z

    .line 88
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 62
    invoke-super {p0, p1}, Lim/doit/pro/activity/BaseListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 63
    const-string v0, "box"

    iget-object v1, p0, Lim/doit/pro/activity/GoalListFragment;->mBox:Lim/doit/pro/model/Box;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 64
    return-void
.end method
