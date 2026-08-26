.class public Lim/doit/pro/activity/FilterListFragment;
.super Lim/doit/pro/activity/BaseFragment;
.source "FilterListFragment.java"

# interfaces
.implements Lim/doit/pro/ui/component/pullrefresh/OnRefreshListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lim/doit/pro/activity/FilterListFragment$ListViewAdapter;,
        Lim/doit/pro/activity/FilterListFragment$LoadingFilters;,
        Lim/doit/pro/activity/FilterListFragment$LoadingFiltersAfterSync;
    }
.end annotation


# instance fields
.field private mArgs:Landroid/os/Bundle;

.field private mBox:Lim/doit/pro/model/Box;

.field private mLayoutView:Landroid/view/View;

.field private mListAdapter:Lim/doit/pro/activity/FilterListFragment$ListViewAdapter;

.field private mListView:Landroid/widget/ListView;

.field private mListViewEmptyView:Lim/doit/pro/ui/component/ListViewEmptyView;

.field private mLoadingFilters:Lim/doit/pro/activity/FilterListFragment$LoadingFilters;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lim/doit/pro/activity/BaseFragment;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lim/doit/pro/activity/FilterListFragment;)Lim/doit/pro/activity/FilterListFragment$ListViewAdapter;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lim/doit/pro/activity/FilterListFragment;->mListAdapter:Lim/doit/pro/activity/FilterListFragment$ListViewAdapter;

    return-object v0
.end method

.method static synthetic access$1(Lim/doit/pro/activity/FilterListFragment;)Lim/doit/pro/ui/component/ListViewEmptyView;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lim/doit/pro/activity/FilterListFragment;->mListViewEmptyView:Lim/doit/pro/ui/component/ListViewEmptyView;

    return-object v0
.end method

.method static synthetic access$2(Lim/doit/pro/activity/FilterListFragment;Lim/doit/pro/activity/FilterListFragment$LoadingFilters;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lim/doit/pro/activity/FilterListFragment;->mLoadingFilters:Lim/doit/pro/activity/FilterListFragment$LoadingFilters;

    return-void
.end method

.method public static getInstance(Landroid/os/Bundle;)Lim/doit/pro/activity/FilterListFragment;
    .locals 1
    .param p0, "args"    # Landroid/os/Bundle;

    .prologue
    .line 52
    new-instance v0, Lim/doit/pro/activity/FilterListFragment;

    invoke-direct {v0}, Lim/doit/pro/activity/FilterListFragment;-><init>()V

    .line 53
    .local v0, "fragment":Lim/doit/pro/activity/FilterListFragment;
    iput-object p0, v0, Lim/doit/pro/activity/FilterListFragment;->mArgs:Landroid/os/Bundle;

    .line 54
    return-object v0
.end method

.method private initData()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 92
    iget-object v0, p0, Lim/doit/pro/activity/FilterListFragment;->mArgs:Landroid/os/Bundle;

    const-string v1, "box"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lim/doit/pro/model/Box;

    iput-object v0, p0, Lim/doit/pro/activity/FilterListFragment;->mBox:Lim/doit/pro/model/Box;

    .line 93
    new-instance v0, Lim/doit/pro/activity/FilterListFragment$LoadingFilters;

    invoke-direct {v0, p0, v2, v2}, Lim/doit/pro/activity/FilterListFragment$LoadingFilters;-><init>(Lim/doit/pro/activity/FilterListFragment;Lim/doit/pro/activity/FilterListFragment$LoadingFilters;Lim/doit/pro/activity/FilterListFragment$LoadingFilters;)V

    iput-object v0, p0, Lim/doit/pro/activity/FilterListFragment;->mLoadingFilters:Lim/doit/pro/activity/FilterListFragment$LoadingFilters;

    .line 94
    iget-object v0, p0, Lim/doit/pro/activity/FilterListFragment;->mLoadingFilters:Lim/doit/pro/activity/FilterListFragment$LoadingFilters;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lim/doit/pro/activity/FilterListFragment$LoadingFilters;->execute([Ljava/lang/Object;)Lim/doit/pro/asynctask/DoitAsyncTask;

    .line 95
    return-void
.end method

.method private initListener()V
    .locals 2

    .prologue
    .line 115
    iget-object v0, p0, Lim/doit/pro/activity/FilterListFragment;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 116
    iget-object v0, p0, Lim/doit/pro/activity/FilterListFragment;->mListView:Landroid/widget/ListView;

    new-instance v1, Lim/doit/pro/activity/FilterListFragment$1;

    invoke-direct {v1, p0}, Lim/doit/pro/activity/FilterListFragment$1;-><init>(Lim/doit/pro/activity/FilterListFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 126
    return-void
.end method

.method private initPullToRefreshView()V
    .locals 4

    .prologue
    .line 107
    iget-object v0, p0, Lim/doit/pro/activity/FilterListFragment;->mLayoutView:Landroid/view/View;

    .line 108
    const v1, 0x7f0b006e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshLayout;

    .line 107
    iput-object v0, p0, Lim/doit/pro/activity/FilterListFragment;->mPullToRefreshLayout:Lim/doit/pro/ui/component/pullrefresh/PullToRefreshLayout;

    .line 109
    invoke-virtual {p0}, Lim/doit/pro/activity/FilterListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lim/doit/pro/ui/component/pullrefresh/ActionBarPullToRefresh;->from(Landroid/app/Activity;)Lim/doit/pro/ui/component/pullrefresh/ActionBarPullToRefresh$SetupWizard;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    .line 110
    const v3, 0x7f0b0069

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/pullrefresh/ActionBarPullToRefresh$SetupWizard;->theseChildrenArePullable([I)Lim/doit/pro/ui/component/pullrefresh/ActionBarPullToRefresh$SetupWizard;

    move-result-object v0

    invoke-virtual {v0, p0}, Lim/doit/pro/ui/component/pullrefresh/ActionBarPullToRefresh$SetupWizard;->listener(Lim/doit/pro/ui/component/pullrefresh/OnRefreshListener;)Lim/doit/pro/ui/component/pullrefresh/ActionBarPullToRefresh$SetupWizard;

    move-result-object v0

    .line 111
    iget-object v1, p0, Lim/doit/pro/activity/FilterListFragment;->mPullToRefreshLayout:Lim/doit/pro/ui/component/pullrefresh/PullToRefreshLayout;

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/pullrefresh/ActionBarPullToRefresh$SetupWizard;->setup(Lim/doit/pro/ui/component/pullrefresh/PullToRefreshLayout;)V

    .line 112
    return-void
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 98
    iget-object v0, p0, Lim/doit/pro/activity/FilterListFragment;->mLayoutView:Landroid/view/View;

    .line 99
    const v1, 0x7f0b006f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lim/doit/pro/ui/component/ListViewEmptyView;

    .line 98
    iput-object v0, p0, Lim/doit/pro/activity/FilterListFragment;->mListViewEmptyView:Lim/doit/pro/ui/component/ListViewEmptyView;

    .line 100
    iget-object v0, p0, Lim/doit/pro/activity/FilterListFragment;->mLayoutView:Landroid/view/View;

    const v1, 0x7f0b0069

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lim/doit/pro/activity/FilterListFragment;->mListView:Landroid/widget/ListView;

    .line 101
    new-instance v0, Lim/doit/pro/activity/FilterListFragment$ListViewAdapter;

    invoke-virtual {p0}, Lim/doit/pro/activity/FilterListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lim/doit/pro/activity/FilterListFragment$ListViewAdapter;-><init>(Lim/doit/pro/activity/FilterListFragment;Landroid/content/Context;)V

    iput-object v0, p0, Lim/doit/pro/activity/FilterListFragment;->mListAdapter:Lim/doit/pro/activity/FilterListFragment$ListViewAdapter;

    .line 102
    iget-object v0, p0, Lim/doit/pro/activity/FilterListFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lim/doit/pro/activity/FilterListFragment;->mListAdapter:Lim/doit/pro/activity/FilterListFragment$ListViewAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 103
    invoke-direct {p0}, Lim/doit/pro/activity/FilterListFragment;->initPullToRefreshView()V

    .line 104
    return-void
.end method


# virtual methods
.method protected afterSync()V
    .locals 2

    .prologue
    .line 87
    invoke-super {p0}, Lim/doit/pro/activity/BaseFragment;->afterSync()V

    .line 88
    new-instance v0, Lim/doit/pro/activity/FilterListFragment$LoadingFiltersAfterSync;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lim/doit/pro/activity/FilterListFragment$LoadingFiltersAfterSync;-><init>(Lim/doit/pro/activity/FilterListFragment;Lim/doit/pro/activity/FilterListFragment$LoadingFiltersAfterSync;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lim/doit/pro/activity/FilterListFragment$LoadingFiltersAfterSync;->execute([Ljava/lang/Object;)Lim/doit/pro/asynctask/DoitAsyncTask;

    .line 89
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 66
    if-eqz p3, :cond_0

    .line 67
    iput-object p3, p0, Lim/doit/pro/activity/FilterListFragment;->mArgs:Landroid/os/Bundle;

    .line 69
    :cond_0
    const v0, 0x7f030027

    .line 70
    const/4 v1, 0x0

    .line 69
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lim/doit/pro/activity/FilterListFragment;->mLayoutView:Landroid/view/View;

    .line 71
    invoke-direct {p0}, Lim/doit/pro/activity/FilterListFragment;->initData()V

    .line 72
    invoke-direct {p0}, Lim/doit/pro/activity/FilterListFragment;->initView()V

    .line 73
    invoke-direct {p0}, Lim/doit/pro/activity/FilterListFragment;->initListener()V

    .line 74
    iget-object v0, p0, Lim/doit/pro/activity/FilterListFragment;->mLayoutView:Landroid/view/View;

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Lim/doit/pro/activity/FilterListFragment;->mLoadingFilters:Lim/doit/pro/activity/FilterListFragment$LoadingFilters;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lim/doit/pro/activity/FilterListFragment;->mLoadingFilters:Lim/doit/pro/activity/FilterListFragment$LoadingFilters;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lim/doit/pro/activity/FilterListFragment$LoadingFilters;->cancel(Z)Z

    .line 82
    :cond_0
    invoke-super {p0}, Lim/doit/pro/activity/BaseFragment;->onDestroy()V

    .line 83
    return-void
.end method

.method public onRefreshStarted(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 543
    invoke-virtual {p0}, Lim/doit/pro/activity/FilterListFragment;->sendSyncManyBroadcast()V

    .line 544
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 59
    invoke-super {p0, p1}, Lim/doit/pro/activity/BaseFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 60
    const-string v0, "box"

    iget-object v1, p0, Lim/doit/pro/activity/FilterListFragment;->mBox:Lim/doit/pro/model/Box;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 61
    return-void
.end method
