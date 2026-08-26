.class public Lim/doit/pro/activity/DailyPlanOnNextActivity;
.super Lim/doit/pro/activity/DSwipeBackBaseActivity;
.source "DailyPlanOnNextActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lim/doit/pro/activity/DailyPlanOnNextActivity$ListAdapter;,
        Lim/doit/pro/activity/DailyPlanOnNextActivity$LoadingTask;,
        Lim/doit/pro/activity/DailyPlanOnNextActivity$LoadingTaskNotShowProgress;
    }
.end annotation


# instance fields
.field private doneBtn:Landroid/widget/Button;

.field private mBox:Lim/doit/pro/model/Box;

.field private mBoxGrouper:Lim/doit/pro/activity/listview/group/DoitListViewGrouper;

.field private mIsCreateView:Z

.field private mListAdapter:Lim/doit/pro/activity/listview/ListViewAdapter;

.field private mListView:Lcom/mobeta/android/dslv/DragSortListView;

.field private mListViewEmptyWrap:Lim/doit/pro/ui/component/ListViewEmptyView;

.field private mLoadingTask:Lim/doit/pro/activity/DailyPlanOnNextActivity$LoadingTask;

.field private mTaskIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private onDoneClick:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Lim/doit/pro/activity/DSwipeBackBaseActivity;-><init>()V

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lim/doit/pro/activity/DailyPlanOnNextActivity;->mTaskIds:Ljava/util/ArrayList;

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lim/doit/pro/activity/DailyPlanOnNextActivity;->mLoadingTask:Lim/doit/pro/activity/DailyPlanOnNextActivity$LoadingTask;

    .line 258
    new-instance v0, Lim/doit/pro/activity/DailyPlanOnNextActivity$1;

    invoke-direct {v0, p0}, Lim/doit/pro/activity/DailyPlanOnNextActivity$1;-><init>(Lim/doit/pro/activity/DailyPlanOnNextActivity;)V

    iput-object v0, p0, Lim/doit/pro/activity/DailyPlanOnNextActivity;->onDoneClick:Landroid/view/View$OnClickListener;

    .line 38
    return-void
.end method

.method static synthetic access$0(Lim/doit/pro/activity/DailyPlanOnNextActivity;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lim/doit/pro/activity/DailyPlanOnNextActivity;->mTaskIds:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1(Lim/doit/pro/activity/DailyPlanOnNextActivity;)Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;
    .locals 1

    .prologue
    .line 182
    invoke-direct {p0}, Lim/doit/pro/activity/DailyPlanOnNextActivity;->prepareDatas()Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2(Lim/doit/pro/activity/DailyPlanOnNextActivity;)Lim/doit/pro/activity/listview/ListViewAdapter;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lim/doit/pro/activity/DailyPlanOnNextActivity;->mListAdapter:Lim/doit/pro/activity/listview/ListViewAdapter;

    return-object v0
.end method

.method static synthetic access$3(Lim/doit/pro/activity/DailyPlanOnNextActivity;)Lcom/mobeta/android/dslv/DragSortListView;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lim/doit/pro/activity/DailyPlanOnNextActivity;->mListView:Lcom/mobeta/android/dslv/DragSortListView;

    return-object v0
.end method

.method static synthetic access$4(Lim/doit/pro/activity/DailyPlanOnNextActivity;)Lim/doit/pro/ui/component/ListViewEmptyView;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lim/doit/pro/activity/DailyPlanOnNextActivity;->mListViewEmptyWrap:Lim/doit/pro/ui/component/ListViewEmptyView;

    return-object v0
.end method

.method static synthetic access$5(Lim/doit/pro/activity/DailyPlanOnNextActivity;)V
    .locals 0

    .prologue
    .line 199
    invoke-direct {p0}, Lim/doit/pro/activity/DailyPlanOnNextActivity;->dismissDialog()V

    return-void
.end method

.method static synthetic access$6(Lim/doit/pro/activity/DailyPlanOnNextActivity;Lim/doit/pro/activity/DailyPlanOnNextActivity$LoadingTask;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lim/doit/pro/activity/DailyPlanOnNextActivity;->mLoadingTask:Lim/doit/pro/activity/DailyPlanOnNextActivity$LoadingTask;

    return-void
.end method

.method static synthetic access$7(Lim/doit/pro/activity/DailyPlanOnNextActivity;)V
    .locals 0

    .prologue
    .line 139
    invoke-direct {p0}, Lim/doit/pro/activity/DailyPlanOnNextActivity;->loadingTaskNotShowProgress()V

    return-void
.end method

.method private dismissDialog()V
    .locals 0

    .prologue
    .line 200
    invoke-static {p0}, Lim/doit/pro/ui/component/DProgressDialog;->closeDialog(Landroid/app/Activity;)V

    .line 201
    return-void
.end method

.method private filterAndGroupDatas(Ljava/util/ArrayList;)Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;
    .locals 3
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

    .prologue
    .line 194
    .local p1, "entities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/BaseEntityWithPos;>;"
    iget-object v1, p0, Lim/doit/pro/activity/DailyPlanOnNextActivity;->mBox:Lim/doit/pro/model/Box;

    iget-object v2, p0, Lim/doit/pro/activity/DailyPlanOnNextActivity;->mBox:Lim/doit/pro/model/Box;

    invoke-static {v2}, Lim/doit/pro/utils/BoxUtils;->getDefaultGroupBy(Lim/doit/pro/model/Box;)Lim/doit/pro/model/enums/GroupByType;

    move-result-object v2

    invoke-virtual {v1, v2}, Lim/doit/pro/model/Box;->setGroupBy(Lim/doit/pro/model/enums/GroupByType;)V

    .line 195
    iget-object v1, p0, Lim/doit/pro/activity/DailyPlanOnNextActivity;->mBoxGrouper:Lim/doit/pro/activity/listview/group/DoitListViewGrouper;

    iget-object v2, p0, Lim/doit/pro/activity/DailyPlanOnNextActivity;->mBox:Lim/doit/pro/model/Box;

    invoke-virtual {v1, v2, p1}, Lim/doit/pro/activity/listview/group/DoitListViewGrouper;->group(Lim/doit/pro/model/Box;Ljava/util/ArrayList;)Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;

    move-result-object v0

    .line 196
    .local v0, "result":Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;
    return-object v0
.end method

.method private init()V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0}, Lim/doit/pro/activity/DailyPlanOnNextActivity;->initData()V

    .line 80
    invoke-direct {p0}, Lim/doit/pro/activity/DailyPlanOnNextActivity;->initView()V

    .line 81
    invoke-direct {p0}, Lim/doit/pro/activity/DailyPlanOnNextActivity;->initViewContent()V

    .line 82
    invoke-direct {p0}, Lim/doit/pro/activity/DailyPlanOnNextActivity;->initListener()V

    .line 83
    return-void
.end method

.method private initActionBar()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 116
    invoke-virtual {p0}, Lim/doit/pro/activity/DailyPlanOnNextActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 117
    .local v0, "actionBar":Landroid/app/ActionBar;
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 118
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 119
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 120
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayUseLogoEnabled(Z)V

    .line 121
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 122
    const v1, 0x7f03006f

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setCustomView(I)V

    .line 124
    const v1, 0x7f0b014e

    invoke-virtual {p0, v1}, Lim/doit/pro/activity/DailyPlanOnNextActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lim/doit/pro/activity/DailyPlanOnNextActivity;->doneBtn:Landroid/widget/Button;

    .line 125
    return-void
.end method

.method private initData()V
    .locals 2

    .prologue
    .line 86
    const/4 v0, 0x1

    iput-boolean v0, p0, Lim/doit/pro/activity/DailyPlanOnNextActivity;->mIsCreateView:Z

    .line 87
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v0

    iget-object v0, v0, Lim/doit/pro/db/Persist;->boxDao:Lim/doit/pro/db/persist/BoxDao;

    sget-object v1, Lim/doit/pro/model/enums/BoxType;->next:Lim/doit/pro/model/enums/BoxType;

    invoke-virtual {v0, v1}, Lim/doit/pro/db/persist/BoxDao;->findByType(Lim/doit/pro/model/enums/BoxType;)Lim/doit/pro/model/Box;

    move-result-object v0

    iput-object v0, p0, Lim/doit/pro/activity/DailyPlanOnNextActivity;->mBox:Lim/doit/pro/model/Box;

    .line 88
    return-void
.end method

.method private initEmptyViewContent()V
    .locals 3

    .prologue
    .line 109
    const v2, 0x7f0c0194

    invoke-static {v2}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v1

    .local v1, "emptyTitle":Ljava/lang/String;
    const/4 v0, 0x0

    .line 110
    .local v0, "emptyBody":Ljava/lang/String;
    const v2, 0x7f0c0189

    invoke-static {v2}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v0

    .line 111
    iget-object v2, p0, Lim/doit/pro/activity/DailyPlanOnNextActivity;->mListViewEmptyWrap:Lim/doit/pro/ui/component/ListViewEmptyView;

    invoke-virtual {v2, v1}, Lim/doit/pro/ui/component/ListViewEmptyView;->setTitle(Ljava/lang/String;)V

    .line 112
    iget-object v2, p0, Lim/doit/pro/activity/DailyPlanOnNextActivity;->mListViewEmptyWrap:Lim/doit/pro/ui/component/ListViewEmptyView;

    invoke-virtual {v2, v0}, Lim/doit/pro/ui/component/ListViewEmptyView;->setBody(Ljava/lang/String;)V

    .line 113
    return-void
.end method

.method private initListener()V
    .locals 2

    .prologue
    .line 255
    iget-object v0, p0, Lim/doit/pro/activity/DailyPlanOnNextActivity;->doneBtn:Landroid/widget/Button;

    iget-object v1, p0, Lim/doit/pro/activity/DailyPlanOnNextActivity;->onDoneClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 256
    return-void
.end method

.method private initView()V
    .locals 3

    .prologue
    .line 91
    invoke-direct {p0}, Lim/doit/pro/activity/DailyPlanOnNextActivity;->initActionBar()V

    .line 93
    const v1, 0x7f0b006f

    invoke-virtual {p0, v1}, Lim/doit/pro/activity/DailyPlanOnNextActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lim/doit/pro/ui/component/ListViewEmptyView;

    iput-object v1, p0, Lim/doit/pro/activity/DailyPlanOnNextActivity;->mListViewEmptyWrap:Lim/doit/pro/ui/component/ListViewEmptyView;

    .line 94
    invoke-direct {p0}, Lim/doit/pro/activity/DailyPlanOnNextActivity;->initEmptyViewContent()V

    .line 96
    const v1, 0x7f0b0069

    invoke-virtual {p0, v1}, Lim/doit/pro/activity/DailyPlanOnNextActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/mobeta/android/dslv/DragSortListView;

    iput-object v1, p0, Lim/doit/pro/activity/DailyPlanOnNextActivity;->mListView:Lcom/mobeta/android/dslv/DragSortListView;

    .line 97
    new-instance v1, Lim/doit/pro/activity/DailyPlanOnNextActivity$ListAdapter;

    iget-object v2, p0, Lim/doit/pro/activity/DailyPlanOnNextActivity;->mListView:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-direct {v1, p0, p0, v2}, Lim/doit/pro/activity/DailyPlanOnNextActivity$ListAdapter;-><init>(Lim/doit/pro/activity/DailyPlanOnNextActivity;Landroid/app/Activity;Lcom/mobeta/android/dslv/DragSortListView;)V

    iput-object v1, p0, Lim/doit/pro/activity/DailyPlanOnNextActivity;->mListAdapter:Lim/doit/pro/activity/listview/ListViewAdapter;

    .line 99
    new-instance v0, Lcom/mobeta/android/dslv/DoitDragSortController;

    .line 100
    iget-object v1, p0, Lim/doit/pro/activity/DailyPlanOnNextActivity;->mListView:Lcom/mobeta/android/dslv/DragSortListView;

    iget-object v2, p0, Lim/doit/pro/activity/DailyPlanOnNextActivity;->mListAdapter:Lim/doit/pro/activity/listview/ListViewAdapter;

    .line 99
    invoke-direct {v0, v1, v2}, Lcom/mobeta/android/dslv/DoitDragSortController;-><init>(Lcom/mobeta/android/dslv/DragSortListView;Lim/doit/pro/activity/listview/ListViewAdapter;)V

    .line 101
    .local v0, "controller":Lcom/mobeta/android/dslv/DoitDragSortController;
    iget-object v1, p0, Lim/doit/pro/activity/DailyPlanOnNextActivity;->mListView:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-virtual {v1, v0}, Lcom/mobeta/android/dslv/DragSortListView;->setFloatViewManager(Lcom/mobeta/android/dslv/DragSortListView$FloatViewManager;)V

    .line 102
    iget-object v1, p0, Lim/doit/pro/activity/DailyPlanOnNextActivity;->mListView:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-virtual {v1, v0}, Lcom/mobeta/android/dslv/DragSortListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 103
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mobeta/android/dslv/DoitDragSortController;->setSortEnabled(Z)V

    .line 105
    iget-object v1, p0, Lim/doit/pro/activity/DailyPlanOnNextActivity;->mListView:Lcom/mobeta/android/dslv/DragSortListView;

    iget-object v2, p0, Lim/doit/pro/activity/DailyPlanOnNextActivity;->mListAdapter:Lim/doit/pro/activity/listview/ListViewAdapter;

    invoke-virtual {v1, v2}, Lcom/mobeta/android/dslv/DragSortListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 106
    return-void
.end method

.method private initViewContent()V
    .locals 0

    .prologue
    .line 128
    invoke-direct {p0}, Lim/doit/pro/activity/DailyPlanOnNextActivity;->loadingTaskAndShowProgress()V

    .line 129
    return-void
.end method

.method private loadingTaskAndShowProgress()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 132
    iget-object v0, p0, Lim/doit/pro/activity/DailyPlanOnNextActivity;->mLoadingTask:Lim/doit/pro/activity/DailyPlanOnNextActivity$LoadingTask;

    if-eqz v0, :cond_0

    .line 137
    :goto_0
    return-void

    .line 135
    :cond_0
    new-instance v0, Lim/doit/pro/activity/DailyPlanOnNextActivity$LoadingTask;

    invoke-direct {v0, p0, v1, v1}, Lim/doit/pro/activity/DailyPlanOnNextActivity$LoadingTask;-><init>(Lim/doit/pro/activity/DailyPlanOnNextActivity;Lim/doit/pro/activity/DailyPlanOnNextActivity$LoadingTask;Lim/doit/pro/activity/DailyPlanOnNextActivity$LoadingTask;)V

    iput-object v0, p0, Lim/doit/pro/activity/DailyPlanOnNextActivity;->mLoadingTask:Lim/doit/pro/activity/DailyPlanOnNextActivity$LoadingTask;

    .line 136
    iget-object v0, p0, Lim/doit/pro/activity/DailyPlanOnNextActivity;->mLoadingTask:Lim/doit/pro/activity/DailyPlanOnNextActivity$LoadingTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lim/doit/pro/activity/DailyPlanOnNextActivity$LoadingTask;->execute([Ljava/lang/Object;)Lim/doit/pro/asynctask/DoitAsyncTask;

    goto :goto_0
.end method

.method private loadingTaskNotShowProgress()V
    .locals 2

    .prologue
    .line 140
    iget-object v0, p0, Lim/doit/pro/activity/DailyPlanOnNextActivity;->mLoadingTask:Lim/doit/pro/activity/DailyPlanOnNextActivity$LoadingTask;

    if-eqz v0, :cond_0

    .line 145
    :goto_0
    return-void

    .line 143
    :cond_0
    new-instance v0, Lim/doit/pro/activity/DailyPlanOnNextActivity$LoadingTaskNotShowProgress;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lim/doit/pro/activity/DailyPlanOnNextActivity$LoadingTaskNotShowProgress;-><init>(Lim/doit/pro/activity/DailyPlanOnNextActivity;Lim/doit/pro/activity/DailyPlanOnNextActivity$LoadingTaskNotShowProgress;)V

    iput-object v0, p0, Lim/doit/pro/activity/DailyPlanOnNextActivity;->mLoadingTask:Lim/doit/pro/activity/DailyPlanOnNextActivity$LoadingTask;

    .line 144
    iget-object v0, p0, Lim/doit/pro/activity/DailyPlanOnNextActivity;->mLoadingTask:Lim/doit/pro/activity/DailyPlanOnNextActivity$LoadingTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lim/doit/pro/activity/DailyPlanOnNextActivity$LoadingTask;->execute([Ljava/lang/Object;)Lim/doit/pro/asynctask/DoitAsyncTask;

    goto :goto_0
.end method

.method private prepareDatas()Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;
    .locals 3

    .prologue
    .line 183
    iget-object v2, p0, Lim/doit/pro/activity/DailyPlanOnNextActivity;->mBox:Lim/doit/pro/model/Box;

    invoke-static {v2}, Lim/doit/pro/utils/QueryUtils;->findDatasByBox(Lim/doit/pro/model/Box;)Ljava/util/ArrayList;

    move-result-object v0

    .line 184
    .local v0, "entities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/BaseEntityWithPos;>;"
    iget-object v2, p0, Lim/doit/pro/activity/DailyPlanOnNextActivity;->mBoxGrouper:Lim/doit/pro/activity/listview/group/DoitListViewGrouper;

    if-nez v2, :cond_0

    .line 185
    new-instance v2, Lim/doit/pro/activity/listview/group/DoitListViewGrouper;

    invoke-direct {v2}, Lim/doit/pro/activity/listview/group/DoitListViewGrouper;-><init>()V

    iput-object v2, p0, Lim/doit/pro/activity/DailyPlanOnNextActivity;->mBoxGrouper:Lim/doit/pro/activity/listview/group/DoitListViewGrouper;

    .line 187
    :cond_0
    invoke-direct {p0, v0}, Lim/doit/pro/activity/DailyPlanOnNextActivity;->filterAndGroupDatas(Ljava/util/ArrayList;)Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;

    move-result-object v1

    .line 188
    .local v1, "result":Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;
    invoke-virtual {v1, v0}, Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;->setEntities(Ljava/util/ArrayList;)V

    .line 189
    return-object v1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 56
    invoke-super {p0, p1}, Lim/doit/pro/activity/DSwipeBackBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 57
    const v0, 0x7f030021

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/DailyPlanOnNextActivity;->setContentView(I)V

    .line 58
    invoke-direct {p0}, Lim/doit/pro/activity/DailyPlanOnNextActivity;->init()V

    .line 59
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lim/doit/pro/activity/DailyPlanOnNextActivity;->mLoadingTask:Lim/doit/pro/activity/DailyPlanOnNextActivity$LoadingTask;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lim/doit/pro/activity/DailyPlanOnNextActivity;->mLoadingTask:Lim/doit/pro/activity/DailyPlanOnNextActivity$LoadingTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lim/doit/pro/activity/DailyPlanOnNextActivity$LoadingTask;->cancel(Z)Z

    .line 75
    :cond_0
    invoke-super {p0}, Lim/doit/pro/activity/DSwipeBackBaseActivity;->onDestroy()V

    .line 76
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 63
    invoke-super {p0}, Lim/doit/pro/activity/DSwipeBackBaseActivity;->onResume()V

    .line 64
    iget-boolean v0, p0, Lim/doit/pro/activity/DailyPlanOnNextActivity;->mIsCreateView:Z

    if-nez v0, :cond_0

    .line 65
    invoke-direct {p0}, Lim/doit/pro/activity/DailyPlanOnNextActivity;->loadingTaskNotShowProgress()V

    .line 67
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lim/doit/pro/activity/DailyPlanOnNextActivity;->mIsCreateView:Z

    .line 68
    return-void
.end method
