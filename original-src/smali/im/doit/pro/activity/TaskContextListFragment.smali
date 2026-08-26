.class public Lim/doit/pro/activity/TaskContextListFragment;
.super Lim/doit/pro/activity/BaseListFragment;
.source "TaskContextListFragment.java"

# interfaces
.implements Lim/doit/pro/ui/component/pullrefresh/OnRefreshListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lim/doit/pro/activity/TaskContextListFragment$DoitListActionMode;,
        Lim/doit/pro/activity/TaskContextListFragment$ListAdapter;,
        Lim/doit/pro/activity/TaskContextListFragment$LoadingContexts;,
        Lim/doit/pro/activity/TaskContextListFragment$LoadingTaskNotShowProgress;
    }
.end annotation


# instance fields
.field protected isAcionModeDone:Z

.field private isCreateView:Z

.field protected mActionMode:Landroid/view/ActionMode;

.field private mActionModeCallback:Lim/doit/pro/activity/TaskContextListFragment$DoitListActionMode;

.field private mArgs:Landroid/os/Bundle;

.field private mBox:Lim/doit/pro/model/Box;

.field private mLayoutView:Landroid/view/View;

.field private mListAdapter:Lim/doit/pro/activity/listview/ListViewAdapter;

.field private mListView:Lcom/mobeta/android/dslv/DragSortListView;

.field private mListViewEmptyView:Lim/doit/pro/ui/component/ListViewEmptyView;

.field private mLoadingContexts:Lim/doit/pro/activity/TaskContextListFragment$LoadingContexts;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Lim/doit/pro/activity/BaseListFragment;-><init>()V

    .line 52
    const/4 v0, 0x1

    iput-boolean v0, p0, Lim/doit/pro/activity/TaskContextListFragment;->isAcionModeDone:Z

    .line 36
    return-void
.end method

.method static synthetic access$0(Lim/doit/pro/activity/TaskContextListFragment;)Lim/doit/pro/activity/listview/ListViewAdapter;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lim/doit/pro/activity/TaskContextListFragment;->mListAdapter:Lim/doit/pro/activity/listview/ListViewAdapter;

    return-object v0
.end method

.method static synthetic access$1(Lim/doit/pro/activity/TaskContextListFragment;)Lim/doit/pro/ui/component/ListViewEmptyView;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lim/doit/pro/activity/TaskContextListFragment;->mListViewEmptyView:Lim/doit/pro/ui/component/ListViewEmptyView;

    return-object v0
.end method

.method static synthetic access$2(Lim/doit/pro/activity/TaskContextListFragment;Lim/doit/pro/activity/TaskContextListFragment$LoadingContexts;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lim/doit/pro/activity/TaskContextListFragment;->mLoadingContexts:Lim/doit/pro/activity/TaskContextListFragment$LoadingContexts;

    return-void
.end method

.method static synthetic access$3(Lim/doit/pro/activity/TaskContextListFragment;)V
    .locals 0

    .prologue
    .line 134
    invoke-direct {p0}, Lim/doit/pro/activity/TaskContextListFragment;->setPullEnable()V

    return-void
.end method

.method static synthetic access$4(Lim/doit/pro/activity/TaskContextListFragment;)Lim/doit/pro/activity/TaskContextListFragment$DoitListActionMode;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lim/doit/pro/activity/TaskContextListFragment;->mActionModeCallback:Lim/doit/pro/activity/TaskContextListFragment$DoitListActionMode;

    return-object v0
.end method

.method static synthetic access$5(Lim/doit/pro/activity/TaskContextListFragment;)V
    .locals 0

    .prologue
    .line 223
    invoke-direct {p0}, Lim/doit/pro/activity/TaskContextListFragment;->loadingTaskNotShowProgress()V

    return-void
.end method

.method public static getInstance(Landroid/os/Bundle;)Lim/doit/pro/activity/TaskContextListFragment;
    .locals 1
    .param p0, "args"    # Landroid/os/Bundle;

    .prologue
    .line 56
    new-instance v0, Lim/doit/pro/activity/TaskContextListFragment;

    invoke-direct {v0}, Lim/doit/pro/activity/TaskContextListFragment;-><init>()V

    .line 57
    .local v0, "fragment":Lim/doit/pro/activity/TaskContextListFragment;
    iput-object p0, v0, Lim/doit/pro/activity/TaskContextListFragment;->mArgs:Landroid/os/Bundle;

    .line 58
    return-object v0
.end method

.method private initData()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 106
    iget-object v0, p0, Lim/doit/pro/activity/TaskContextListFragment;->mArgs:Landroid/os/Bundle;

    const-string v1, "box"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lim/doit/pro/model/Box;

    iput-object v0, p0, Lim/doit/pro/activity/TaskContextListFragment;->mBox:Lim/doit/pro/model/Box;

    .line 107
    new-instance v0, Lim/doit/pro/activity/TaskContextListFragment$LoadingContexts;

    invoke-direct {v0, p0, v2, v2}, Lim/doit/pro/activity/TaskContextListFragment$LoadingContexts;-><init>(Lim/doit/pro/activity/TaskContextListFragment;Lim/doit/pro/activity/TaskContextListFragment$LoadingContexts;Lim/doit/pro/activity/TaskContextListFragment$LoadingContexts;)V

    iput-object v0, p0, Lim/doit/pro/activity/TaskContextListFragment;->mLoadingContexts:Lim/doit/pro/activity/TaskContextListFragment$LoadingContexts;

    .line 108
    iget-object v0, p0, Lim/doit/pro/activity/TaskContextListFragment;->mLoadingContexts:Lim/doit/pro/activity/TaskContextListFragment$LoadingContexts;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lim/doit/pro/activity/TaskContextListFragment$LoadingContexts;->execute([Ljava/lang/Object;)Lim/doit/pro/asynctask/DoitAsyncTask;

    .line 109
    return-void
.end method

.method private initListener()V
    .locals 2

    .prologue
    .line 146
    iget-object v0, p0, Lim/doit/pro/activity/TaskContextListFragment;->mListAdapter:Lim/doit/pro/activity/listview/ListViewAdapter;

    new-instance v1, Lim/doit/pro/activity/TaskContextListFragment$1;

    invoke-direct {v1, p0}, Lim/doit/pro/activity/TaskContextListFragment$1;-><init>(Lim/doit/pro/activity/TaskContextListFragment;)V

    invoke-virtual {v0, v1}, Lim/doit/pro/activity/listview/ListViewAdapter;->setOnItemSelectedListener(Lim/doit/pro/activity/listview/ListViewAdapter$OnItemSelectedListener;)V

    .line 169
    iget-object v0, p0, Lim/doit/pro/activity/TaskContextListFragment;->mListAdapter:Lim/doit/pro/activity/listview/ListViewAdapter;

    .line 170
    new-instance v1, Lim/doit/pro/activity/TaskContextListFragment$2;

    invoke-direct {v1, p0}, Lim/doit/pro/activity/TaskContextListFragment$2;-><init>(Lim/doit/pro/activity/TaskContextListFragment;)V

    invoke-virtual {v0, v1}, Lim/doit/pro/activity/listview/ListViewAdapter;->setUpdateSubtitleTextListener(Lim/doit/pro/activity/listener/OnUpdateActionBarSubtitleListener;)V

    .line 177
    iget-object v0, p0, Lim/doit/pro/activity/TaskContextListFragment;->mListAdapter:Lim/doit/pro/activity/listview/ListViewAdapter;

    new-instance v1, Lim/doit/pro/activity/TaskContextListFragment$3;

    invoke-direct {v1, p0}, Lim/doit/pro/activity/TaskContextListFragment$3;-><init>(Lim/doit/pro/activity/TaskContextListFragment;)V

    invoke-virtual {v0, v1}, Lim/doit/pro/activity/listview/ListViewAdapter;->setReloadDataListener(Lim/doit/pro/activity/listview/ListViewAdapter$OnReloadDataLisetner;)V

    .line 184
    return-void
.end method

.method private initPullToRefreshView()V
    .locals 4

    .prologue
    .line 126
    iget-object v0, p0, Lim/doit/pro/activity/TaskContextListFragment;->mLayoutView:Landroid/view/View;

    .line 127
    const v1, 0x7f0b006e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshLayout;

    .line 126
    iput-object v0, p0, Lim/doit/pro/activity/TaskContextListFragment;->mPullToRefreshLayout:Lim/doit/pro/ui/component/pullrefresh/PullToRefreshLayout;

    .line 128
    invoke-virtual {p0}, Lim/doit/pro/activity/TaskContextListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lim/doit/pro/ui/component/pullrefresh/ActionBarPullToRefresh;->from(Landroid/app/Activity;)Lim/doit/pro/ui/component/pullrefresh/ActionBarPullToRefresh$SetupWizard;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    .line 129
    const v3, 0x7f0b0069

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/pullrefresh/ActionBarPullToRefresh$SetupWizard;->theseChildrenArePullable([I)Lim/doit/pro/ui/component/pullrefresh/ActionBarPullToRefresh$SetupWizard;

    move-result-object v0

    invoke-virtual {v0, p0}, Lim/doit/pro/ui/component/pullrefresh/ActionBarPullToRefresh$SetupWizard;->listener(Lim/doit/pro/ui/component/pullrefresh/OnRefreshListener;)Lim/doit/pro/ui/component/pullrefresh/ActionBarPullToRefresh$SetupWizard;

    move-result-object v0

    .line 130
    iget-object v1, p0, Lim/doit/pro/activity/TaskContextListFragment;->mPullToRefreshLayout:Lim/doit/pro/ui/component/pullrefresh/PullToRefreshLayout;

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/pullrefresh/ActionBarPullToRefresh$SetupWizard;->setup(Lim/doit/pro/ui/component/pullrefresh/PullToRefreshLayout;)V

    .line 131
    invoke-direct {p0}, Lim/doit/pro/activity/TaskContextListFragment;->setPullEnable()V

    .line 132
    return-void
.end method

.method private initView()V
    .locals 4

    .prologue
    .line 112
    new-instance v1, Lim/doit/pro/activity/TaskContextListFragment$DoitListActionMode;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lim/doit/pro/activity/TaskContextListFragment$DoitListActionMode;-><init>(Lim/doit/pro/activity/TaskContextListFragment;Lim/doit/pro/activity/TaskContextListFragment$DoitListActionMode;)V

    iput-object v1, p0, Lim/doit/pro/activity/TaskContextListFragment;->mActionModeCallback:Lim/doit/pro/activity/TaskContextListFragment$DoitListActionMode;

    .line 113
    iget-object v1, p0, Lim/doit/pro/activity/TaskContextListFragment;->mLayoutView:Landroid/view/View;

    .line 114
    const v2, 0x7f0b006f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lim/doit/pro/ui/component/ListViewEmptyView;

    .line 113
    iput-object v1, p0, Lim/doit/pro/activity/TaskContextListFragment;->mListViewEmptyView:Lim/doit/pro/ui/component/ListViewEmptyView;

    .line 115
    iget-object v1, p0, Lim/doit/pro/activity/TaskContextListFragment;->mLayoutView:Landroid/view/View;

    const v2, 0x7f0b0069

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/mobeta/android/dslv/DragSortListView;

    iput-object v1, p0, Lim/doit/pro/activity/TaskContextListFragment;->mListView:Lcom/mobeta/android/dslv/DragSortListView;

    .line 116
    new-instance v1, Lim/doit/pro/activity/TaskContextListFragment$ListAdapter;

    invoke-virtual {p0}, Lim/doit/pro/activity/TaskContextListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lim/doit/pro/activity/TaskContextListFragment;->mListView:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-direct {v1, p0, v2, v3}, Lim/doit/pro/activity/TaskContextListFragment$ListAdapter;-><init>(Lim/doit/pro/activity/TaskContextListFragment;Landroid/app/Activity;Lcom/mobeta/android/dslv/DragSortListView;)V

    iput-object v1, p0, Lim/doit/pro/activity/TaskContextListFragment;->mListAdapter:Lim/doit/pro/activity/listview/ListViewAdapter;

    .line 117
    new-instance v0, Lcom/mobeta/android/dslv/DoitDragSortController;

    .line 118
    iget-object v1, p0, Lim/doit/pro/activity/TaskContextListFragment;->mListView:Lcom/mobeta/android/dslv/DragSortListView;

    iget-object v2, p0, Lim/doit/pro/activity/TaskContextListFragment;->mListAdapter:Lim/doit/pro/activity/listview/ListViewAdapter;

    .line 117
    invoke-direct {v0, v1, v2}, Lcom/mobeta/android/dslv/DoitDragSortController;-><init>(Lcom/mobeta/android/dslv/DragSortListView;Lim/doit/pro/activity/listview/ListViewAdapter;)V

    .line 119
    .local v0, "listViewController":Lcom/mobeta/android/dslv/DoitDragSortController;
    iget-object v1, p0, Lim/doit/pro/activity/TaskContextListFragment;->mListView:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-virtual {v1, v0}, Lcom/mobeta/android/dslv/DragSortListView;->setFloatViewManager(Lcom/mobeta/android/dslv/DragSortListView$FloatViewManager;)V

    .line 120
    iget-object v1, p0, Lim/doit/pro/activity/TaskContextListFragment;->mListView:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-virtual {v1, v0}, Lcom/mobeta/android/dslv/DragSortListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 121
    iget-object v1, p0, Lim/doit/pro/activity/TaskContextListFragment;->mListView:Lcom/mobeta/android/dslv/DragSortListView;

    iget-object v2, p0, Lim/doit/pro/activity/TaskContextListFragment;->mListAdapter:Lim/doit/pro/activity/listview/ListViewAdapter;

    invoke-virtual {v1, v2}, Lcom/mobeta/android/dslv/DragSortListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 122
    invoke-direct {p0}, Lim/doit/pro/activity/TaskContextListFragment;->initPullToRefreshView()V

    .line 123
    return-void
.end method

.method private loadingTaskNotShowProgress()V
    .locals 2

    .prologue
    .line 224
    iget-object v0, p0, Lim/doit/pro/activity/TaskContextListFragment;->mLoadingContexts:Lim/doit/pro/activity/TaskContextListFragment$LoadingContexts;

    if-eqz v0, :cond_0

    .line 229
    :goto_0
    return-void

    .line 227
    :cond_0
    new-instance v0, Lim/doit/pro/activity/TaskContextListFragment$LoadingTaskNotShowProgress;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lim/doit/pro/activity/TaskContextListFragment$LoadingTaskNotShowProgress;-><init>(Lim/doit/pro/activity/TaskContextListFragment;Lim/doit/pro/activity/TaskContextListFragment$LoadingTaskNotShowProgress;)V

    iput-object v0, p0, Lim/doit/pro/activity/TaskContextListFragment;->mLoadingContexts:Lim/doit/pro/activity/TaskContextListFragment$LoadingContexts;

    .line 228
    iget-object v0, p0, Lim/doit/pro/activity/TaskContextListFragment;->mLoadingContexts:Lim/doit/pro/activity/TaskContextListFragment$LoadingContexts;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lim/doit/pro/activity/TaskContextListFragment$LoadingContexts;->execute([Ljava/lang/Object;)Lim/doit/pro/asynctask/DoitAsyncTask;

    goto :goto_0
.end method

.method private setPullEnable()V
    .locals 2

    .prologue
    .line 135
    iget-object v0, p0, Lim/doit/pro/activity/TaskContextListFragment;->mPullToRefreshLayout:Lim/doit/pro/ui/component/pullrefresh/PullToRefreshLayout;

    if-nez v0, :cond_0

    .line 143
    :goto_0
    return-void

    .line 138
    :cond_0
    iget-object v0, p0, Lim/doit/pro/activity/TaskContextListFragment;->mListAdapter:Lim/doit/pro/activity/listview/ListViewAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lim/doit/pro/activity/TaskContextListFragment;->mListAdapter:Lim/doit/pro/activity/listview/ListViewAdapter;

    invoke-virtual {v0}, Lim/doit/pro/activity/listview/ListViewAdapter;->getSelectedCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 139
    iget-object v0, p0, Lim/doit/pro/activity/TaskContextListFragment;->mPullToRefreshLayout:Lim/doit/pro/ui/component/pullrefresh/PullToRefreshLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshLayout;->setEnabled(Z)V

    goto :goto_0

    .line 141
    :cond_1
    iget-object v0, p0, Lim/doit/pro/activity/TaskContextListFragment;->mPullToRefreshLayout:Lim/doit/pro/ui/component/pullrefresh/PullToRefreshLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshLayout;->setEnabled(Z)V

    goto :goto_0
.end method


# virtual methods
.method protected afterSync()V
    .locals 0

    .prologue
    .line 101
    invoke-super {p0}, Lim/doit/pro/activity/BaseListFragment;->afterSync()V

    .line 102
    invoke-direct {p0}, Lim/doit/pro/activity/TaskContextListFragment;->loadingTaskNotShowProgress()V

    .line 103
    return-void
.end method

.method protected dismissDialog()V
    .locals 1

    .prologue
    .line 300
    invoke-virtual {p0}, Lim/doit/pro/activity/TaskContextListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lim/doit/pro/ui/component/DProgressDialog;->closeDialog(Landroid/app/Activity;)V

    .line 301
    return-void
.end method

.method public finishActionMode()V
    .locals 2

    .prologue
    .line 281
    iget-object v0, p0, Lim/doit/pro/activity/TaskContextListFragment;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 282
    invoke-virtual {p0}, Lim/doit/pro/activity/TaskContextListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lim/doit/pro/activity/TaskContextListFragment$4;

    invoke-direct {v1, p0}, Lim/doit/pro/activity/TaskContextListFragment$4;-><init>(Lim/doit/pro/activity/TaskContextListFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 289
    invoke-direct {p0}, Lim/doit/pro/activity/TaskContextListFragment;->setPullEnable()V

    .line 291
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 70
    const/4 v0, 0x1

    iput-boolean v0, p0, Lim/doit/pro/activity/TaskContextListFragment;->isCreateView:Z

    .line 71
    if-eqz p3, :cond_0

    .line 72
    iput-object p3, p0, Lim/doit/pro/activity/TaskContextListFragment;->mArgs:Landroid/os/Bundle;

    .line 74
    :cond_0
    const v0, 0x7f03001f

    .line 75
    const/4 v1, 0x0

    .line 74
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lim/doit/pro/activity/TaskContextListFragment;->mLayoutView:Landroid/view/View;

    .line 76
    invoke-direct {p0}, Lim/doit/pro/activity/TaskContextListFragment;->initData()V

    .line 77
    invoke-direct {p0}, Lim/doit/pro/activity/TaskContextListFragment;->initView()V

    .line 78
    invoke-direct {p0}, Lim/doit/pro/activity/TaskContextListFragment;->initListener()V

    .line 79
    iget-object v0, p0, Lim/doit/pro/activity/TaskContextListFragment;->mLayoutView:Landroid/view/View;

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 93
    iget-object v0, p0, Lim/doit/pro/activity/TaskContextListFragment;->mLoadingContexts:Lim/doit/pro/activity/TaskContextListFragment$LoadingContexts;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lim/doit/pro/activity/TaskContextListFragment;->mLoadingContexts:Lim/doit/pro/activity/TaskContextListFragment$LoadingContexts;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lim/doit/pro/activity/TaskContextListFragment$LoadingContexts;->cancel(Z)Z

    .line 96
    :cond_0
    invoke-super {p0}, Lim/doit/pro/activity/BaseListFragment;->onDestroy()V

    .line 97
    return-void
.end method

.method public onRefreshStarted(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 295
    invoke-virtual {p0}, Lim/doit/pro/activity/TaskContextListFragment;->sendSyncManyBroadcast()V

    .line 296
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 84
    invoke-super {p0}, Lim/doit/pro/activity/BaseListFragment;->onResume()V

    .line 85
    iget-boolean v0, p0, Lim/doit/pro/activity/TaskContextListFragment;->isCreateView:Z

    if-nez v0, :cond_0

    .line 86
    invoke-direct {p0}, Lim/doit/pro/activity/TaskContextListFragment;->loadingTaskNotShowProgress()V

    .line 88
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lim/doit/pro/activity/TaskContextListFragment;->isCreateView:Z

    .line 89
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 63
    invoke-super {p0, p1}, Lim/doit/pro/activity/BaseListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 64
    const-string v0, "box"

    iget-object v1, p0, Lim/doit/pro/activity/TaskContextListFragment;->mBox:Lim/doit/pro/model/Box;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 65
    return-void
.end method
