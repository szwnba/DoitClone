.class public Lim/doit/pro/activity/ProjectListFragment;
.super Lim/doit/pro/activity/BaseListFragment;
.source "ProjectListFragment.java"

# interfaces
.implements Lim/doit/pro/ui/component/pullrefresh/OnRefreshListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lim/doit/pro/activity/ProjectListFragment$DoitListActionMode;,
        Lim/doit/pro/activity/ProjectListFragment$LoadingProjects;,
        Lim/doit/pro/activity/ProjectListFragment$LoadingProjectsNotShowProgress;,
        Lim/doit/pro/activity/ProjectListFragment$ProjectListViewAdapter;
    }
.end annotation


# instance fields
.field protected isAcionModeDone:Z

.field protected mActionMode:Landroid/view/ActionMode;

.field private mActionModeCallback:Lim/doit/pro/activity/ProjectListFragment$DoitListActionMode;

.field private mArgs:Landroid/os/Bundle;

.field private mBox:Lim/doit/pro/model/Box;

.field private mIsCreateView:Z

.field private mLayoutView:Landroid/view/View;

.field private mListAdapter:Lim/doit/pro/activity/ProjectListFragment$ProjectListViewAdapter;

.field private mListView:Lcom/mobeta/android/dslv/DragSortListView;

.field private mListViewEmptyView:Lim/doit/pro/ui/component/ListViewEmptyView;

.field private mLoadingProjects:Lim/doit/pro/activity/ProjectListFragment$LoadingProjects;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Lim/doit/pro/activity/BaseListFragment;-><init>()V

    .line 62
    const/4 v0, 0x1

    iput-boolean v0, p0, Lim/doit/pro/activity/ProjectListFragment;->isAcionModeDone:Z

    .line 46
    return-void
.end method

.method static synthetic access$0(Lim/doit/pro/activity/ProjectListFragment;)Lim/doit/pro/model/Box;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lim/doit/pro/activity/ProjectListFragment;->mBox:Lim/doit/pro/model/Box;

    return-object v0
.end method

.method static synthetic access$1(Lim/doit/pro/activity/ProjectListFragment;)Lim/doit/pro/activity/ProjectListFragment$ProjectListViewAdapter;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lim/doit/pro/activity/ProjectListFragment;->mListAdapter:Lim/doit/pro/activity/ProjectListFragment$ProjectListViewAdapter;

    return-object v0
.end method

.method static synthetic access$10(Lim/doit/pro/activity/ProjectListFragment;)V
    .locals 0

    .prologue
    .line 275
    invoke-direct {p0}, Lim/doit/pro/activity/ProjectListFragment;->loadingProjectsNotShowProgress()V

    return-void
.end method

.method static synthetic access$2(Lim/doit/pro/activity/ProjectListFragment;)Lim/doit/pro/ui/component/ListViewEmptyView;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lim/doit/pro/activity/ProjectListFragment;->mListViewEmptyView:Lim/doit/pro/ui/component/ListViewEmptyView;

    return-object v0
.end method

.method static synthetic access$3(Lim/doit/pro/activity/ProjectListFragment;Lim/doit/pro/activity/ProjectListFragment$LoadingProjects;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lim/doit/pro/activity/ProjectListFragment;->mLoadingProjects:Lim/doit/pro/activity/ProjectListFragment$LoadingProjects;

    return-void
.end method

.method static synthetic access$4(Lim/doit/pro/activity/ProjectListFragment;)V
    .locals 0

    .prologue
    .line 223
    invoke-direct {p0}, Lim/doit/pro/activity/ProjectListFragment;->setPullEnable()V

    return-void
.end method

.method static synthetic access$5(Lim/doit/pro/activity/ProjectListFragment;)V
    .locals 0

    .prologue
    .line 434
    invoke-direct {p0}, Lim/doit/pro/activity/ProjectListFragment;->activateProject()V

    return-void
.end method

.method static synthetic access$6(Lim/doit/pro/activity/ProjectListFragment;)V
    .locals 0

    .prologue
    .line 451
    invoke-direct {p0}, Lim/doit/pro/activity/ProjectListFragment;->showMoveToDailog()V

    return-void
.end method

.method static synthetic access$7(Lim/doit/pro/activity/ProjectListFragment;)V
    .locals 0

    .prologue
    .line 458
    invoke-direct {p0}, Lim/doit/pro/activity/ProjectListFragment;->showSelectTaskContextDialog()V

    return-void
.end method

.method static synthetic access$8(Lim/doit/pro/activity/ProjectListFragment;)V
    .locals 0

    .prologue
    .line 479
    invoke-direct {p0}, Lim/doit/pro/activity/ProjectListFragment;->showSelectGoalDialog()V

    return-void
.end method

.method static synthetic access$9(Lim/doit/pro/activity/ProjectListFragment;)Lim/doit/pro/activity/ProjectListFragment$DoitListActionMode;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lim/doit/pro/activity/ProjectListFragment;->mActionModeCallback:Lim/doit/pro/activity/ProjectListFragment$DoitListActionMode;

    return-object v0
.end method

.method private activateProject()V
    .locals 5

    .prologue
    .line 435
    iget-object v3, p0, Lim/doit/pro/activity/ProjectListFragment;->mListAdapter:Lim/doit/pro/activity/ProjectListFragment$ProjectListViewAdapter;

    .line 436
    invoke-virtual {v3}, Lim/doit/pro/activity/ProjectListFragment$ProjectListViewAdapter;->getSelectedItems()Ljava/util/ArrayList;

    move-result-object v2

    .line 437
    .local v2, "selectedItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/BaseEntityWithPos;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 447
    invoke-virtual {p0}, Lim/doit/pro/activity/ProjectListFragment;->finishActionMode()V

    .line 448
    invoke-direct {p0}, Lim/doit/pro/activity/ProjectListFragment;->loadingProjectsNotShowProgress()V

    .line 449
    return-void

    .line 437
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lim/doit/pro/model/BaseEntityWithPos;

    .line 438
    .local v0, "item":Lim/doit/pro/model/BaseEntityWithPos;
    invoke-virtual {v0}, Lim/doit/pro/model/BaseEntityWithPos;->isProject()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v1, v0

    .line 439
    check-cast v1, Lim/doit/pro/model/Project;

    .line 440
    .local v1, "project":Lim/doit/pro/model/Project;
    invoke-virtual {v1}, Lim/doit/pro/model/Project;->isActive()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 441
    invoke-static {v1}, Lim/doit/pro/utils/ProjectUtils;->inactiveProject(Lim/doit/pro/model/Project;)V

    goto :goto_0

    .line 443
    :cond_2
    invoke-static {v1}, Lim/doit/pro/utils/ProjectUtils;->activeProject(Lim/doit/pro/model/Project;)V

    goto :goto_0
.end method

.method public static getInstance(Landroid/os/Bundle;)Lim/doit/pro/activity/ProjectListFragment;
    .locals 1
    .param p0, "args"    # Landroid/os/Bundle;

    .prologue
    .line 66
    new-instance v0, Lim/doit/pro/activity/ProjectListFragment;

    invoke-direct {v0}, Lim/doit/pro/activity/ProjectListFragment;-><init>()V

    .line 67
    .local v0, "fragment":Lim/doit/pro/activity/ProjectListFragment;
    iput-object p0, v0, Lim/doit/pro/activity/ProjectListFragment;->mArgs:Landroid/os/Bundle;

    .line 68
    return-object v0
.end method

.method private initData()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 194
    iget-object v0, p0, Lim/doit/pro/activity/ProjectListFragment;->mArgs:Landroid/os/Bundle;

    const-string v1, "box"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lim/doit/pro/model/Box;

    iput-object v0, p0, Lim/doit/pro/activity/ProjectListFragment;->mBox:Lim/doit/pro/model/Box;

    .line 195
    new-instance v0, Lim/doit/pro/activity/ProjectListFragment$LoadingProjects;

    invoke-direct {v0, p0, v2, v2}, Lim/doit/pro/activity/ProjectListFragment$LoadingProjects;-><init>(Lim/doit/pro/activity/ProjectListFragment;Lim/doit/pro/activity/ProjectListFragment$LoadingProjects;Lim/doit/pro/activity/ProjectListFragment$LoadingProjects;)V

    iput-object v0, p0, Lim/doit/pro/activity/ProjectListFragment;->mLoadingProjects:Lim/doit/pro/activity/ProjectListFragment$LoadingProjects;

    .line 196
    iget-object v0, p0, Lim/doit/pro/activity/ProjectListFragment;->mLoadingProjects:Lim/doit/pro/activity/ProjectListFragment$LoadingProjects;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lim/doit/pro/activity/ProjectListFragment$LoadingProjects;->execute([Ljava/lang/Object;)Lim/doit/pro/asynctask/DoitAsyncTask;

    .line 197
    return-void
.end method

.method private initListener()V
    .locals 2

    .prologue
    .line 235
    iget-object v0, p0, Lim/doit/pro/activity/ProjectListFragment;->mListAdapter:Lim/doit/pro/activity/ProjectListFragment$ProjectListViewAdapter;

    .line 236
    new-instance v1, Lim/doit/pro/activity/ProjectListFragment$1;

    invoke-direct {v1, p0}, Lim/doit/pro/activity/ProjectListFragment$1;-><init>(Lim/doit/pro/activity/ProjectListFragment;)V

    invoke-virtual {v0, v1}, Lim/doit/pro/activity/ProjectListFragment$ProjectListViewAdapter;->setUpdateSubtitleTextListener(Lim/doit/pro/activity/listener/OnUpdateActionBarSubtitleListener;)V

    .line 243
    iget-object v0, p0, Lim/doit/pro/activity/ProjectListFragment;->mListAdapter:Lim/doit/pro/activity/ProjectListFragment$ProjectListViewAdapter;

    new-instance v1, Lim/doit/pro/activity/ProjectListFragment$2;

    invoke-direct {v1, p0}, Lim/doit/pro/activity/ProjectListFragment$2;-><init>(Lim/doit/pro/activity/ProjectListFragment;)V

    invoke-virtual {v0, v1}, Lim/doit/pro/activity/ProjectListFragment$ProjectListViewAdapter;->setOnItemSelectedListener(Lim/doit/pro/activity/listview/ListViewAdapter$OnItemSelectedListener;)V

    .line 266
    iget-object v0, p0, Lim/doit/pro/activity/ProjectListFragment;->mListAdapter:Lim/doit/pro/activity/ProjectListFragment$ProjectListViewAdapter;

    new-instance v1, Lim/doit/pro/activity/ProjectListFragment$3;

    invoke-direct {v1, p0}, Lim/doit/pro/activity/ProjectListFragment$3;-><init>(Lim/doit/pro/activity/ProjectListFragment;)V

    invoke-virtual {v0, v1}, Lim/doit/pro/activity/ProjectListFragment$ProjectListViewAdapter;->setReloadDataListener(Lim/doit/pro/activity/listview/ListViewAdapter$OnReloadDataLisetner;)V

    .line 273
    return-void
.end method

.method private initPullToRefreshView()V
    .locals 4

    .prologue
    .line 215
    iget-object v0, p0, Lim/doit/pro/activity/ProjectListFragment;->mLayoutView:Landroid/view/View;

    .line 216
    const v1, 0x7f0b006e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshLayout;

    .line 215
    iput-object v0, p0, Lim/doit/pro/activity/ProjectListFragment;->mPullToRefreshLayout:Lim/doit/pro/ui/component/pullrefresh/PullToRefreshLayout;

    .line 217
    invoke-virtual {p0}, Lim/doit/pro/activity/ProjectListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lim/doit/pro/ui/component/pullrefresh/ActionBarPullToRefresh;->from(Landroid/app/Activity;)Lim/doit/pro/ui/component/pullrefresh/ActionBarPullToRefresh$SetupWizard;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    .line 218
    const v3, 0x7f0b0069

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/pullrefresh/ActionBarPullToRefresh$SetupWizard;->theseChildrenArePullable([I)Lim/doit/pro/ui/component/pullrefresh/ActionBarPullToRefresh$SetupWizard;

    move-result-object v0

    invoke-virtual {v0, p0}, Lim/doit/pro/ui/component/pullrefresh/ActionBarPullToRefresh$SetupWizard;->listener(Lim/doit/pro/ui/component/pullrefresh/OnRefreshListener;)Lim/doit/pro/ui/component/pullrefresh/ActionBarPullToRefresh$SetupWizard;

    move-result-object v0

    .line 219
    iget-object v1, p0, Lim/doit/pro/activity/ProjectListFragment;->mPullToRefreshLayout:Lim/doit/pro/ui/component/pullrefresh/PullToRefreshLayout;

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/pullrefresh/ActionBarPullToRefresh$SetupWizard;->setup(Lim/doit/pro/ui/component/pullrefresh/PullToRefreshLayout;)V

    .line 220
    invoke-direct {p0}, Lim/doit/pro/activity/ProjectListFragment;->setPullEnable()V

    .line 221
    return-void
.end method

.method private initView()V
    .locals 4

    .prologue
    .line 200
    new-instance v1, Lim/doit/pro/activity/ProjectListFragment$DoitListActionMode;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lim/doit/pro/activity/ProjectListFragment$DoitListActionMode;-><init>(Lim/doit/pro/activity/ProjectListFragment;Lim/doit/pro/activity/ProjectListFragment$DoitListActionMode;)V

    iput-object v1, p0, Lim/doit/pro/activity/ProjectListFragment;->mActionModeCallback:Lim/doit/pro/activity/ProjectListFragment$DoitListActionMode;

    .line 201
    iget-object v1, p0, Lim/doit/pro/activity/ProjectListFragment;->mLayoutView:Landroid/view/View;

    .line 202
    const v2, 0x7f0b006f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lim/doit/pro/ui/component/ListViewEmptyView;

    .line 201
    iput-object v1, p0, Lim/doit/pro/activity/ProjectListFragment;->mListViewEmptyView:Lim/doit/pro/ui/component/ListViewEmptyView;

    .line 203
    iget-object v1, p0, Lim/doit/pro/activity/ProjectListFragment;->mLayoutView:Landroid/view/View;

    const v2, 0x7f0b0069

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/mobeta/android/dslv/DragSortListView;

    iput-object v1, p0, Lim/doit/pro/activity/ProjectListFragment;->mListView:Lcom/mobeta/android/dslv/DragSortListView;

    .line 204
    new-instance v1, Lim/doit/pro/activity/ProjectListFragment$ProjectListViewAdapter;

    invoke-virtual {p0}, Lim/doit/pro/activity/ProjectListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lim/doit/pro/activity/ProjectListFragment;->mListView:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-direct {v1, p0, v2, v3}, Lim/doit/pro/activity/ProjectListFragment$ProjectListViewAdapter;-><init>(Lim/doit/pro/activity/ProjectListFragment;Landroid/content/Context;Lcom/mobeta/android/dslv/DragSortListView;)V

    iput-object v1, p0, Lim/doit/pro/activity/ProjectListFragment;->mListAdapter:Lim/doit/pro/activity/ProjectListFragment$ProjectListViewAdapter;

    .line 205
    new-instance v0, Lcom/mobeta/android/dslv/DoitDragSortController;

    .line 206
    iget-object v1, p0, Lim/doit/pro/activity/ProjectListFragment;->mListView:Lcom/mobeta/android/dslv/DragSortListView;

    iget-object v2, p0, Lim/doit/pro/activity/ProjectListFragment;->mListAdapter:Lim/doit/pro/activity/ProjectListFragment$ProjectListViewAdapter;

    .line 205
    invoke-direct {v0, v1, v2}, Lcom/mobeta/android/dslv/DoitDragSortController;-><init>(Lcom/mobeta/android/dslv/DragSortListView;Lim/doit/pro/activity/listview/ListViewAdapter;)V

    .line 207
    .local v0, "controller":Lcom/mobeta/android/dslv/DoitDragSortController;
    iget-object v1, p0, Lim/doit/pro/activity/ProjectListFragment;->mListView:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-virtual {v1, v0}, Lcom/mobeta/android/dslv/DragSortListView;->setFloatViewManager(Lcom/mobeta/android/dslv/DragSortListView$FloatViewManager;)V

    .line 208
    iget-object v1, p0, Lim/doit/pro/activity/ProjectListFragment;->mListView:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-virtual {v1, v0}, Lcom/mobeta/android/dslv/DragSortListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 209
    iget-object v1, p0, Lim/doit/pro/activity/ProjectListFragment;->mListView:Lcom/mobeta/android/dslv/DragSortListView;

    iget-object v2, p0, Lim/doit/pro/activity/ProjectListFragment;->mListAdapter:Lim/doit/pro/activity/ProjectListFragment$ProjectListViewAdapter;

    invoke-virtual {v1, v2}, Lcom/mobeta/android/dslv/DragSortListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 211
    invoke-direct {p0}, Lim/doit/pro/activity/ProjectListFragment;->initPullToRefreshView()V

    .line 212
    return-void
.end method

.method private loadingProjectsNotShowProgress()V
    .locals 2

    .prologue
    .line 276
    iget-object v0, p0, Lim/doit/pro/activity/ProjectListFragment;->mLoadingProjects:Lim/doit/pro/activity/ProjectListFragment$LoadingProjects;

    if-eqz v0, :cond_0

    .line 281
    :goto_0
    return-void

    .line 279
    :cond_0
    new-instance v0, Lim/doit/pro/activity/ProjectListFragment$LoadingProjectsNotShowProgress;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lim/doit/pro/activity/ProjectListFragment$LoadingProjectsNotShowProgress;-><init>(Lim/doit/pro/activity/ProjectListFragment;Lim/doit/pro/activity/ProjectListFragment$LoadingProjectsNotShowProgress;)V

    iput-object v0, p0, Lim/doit/pro/activity/ProjectListFragment;->mLoadingProjects:Lim/doit/pro/activity/ProjectListFragment$LoadingProjects;

    .line 280
    iget-object v0, p0, Lim/doit/pro/activity/ProjectListFragment;->mLoadingProjects:Lim/doit/pro/activity/ProjectListFragment$LoadingProjects;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lim/doit/pro/activity/ProjectListFragment$LoadingProjects;->execute([Ljava/lang/Object;)Lim/doit/pro/asynctask/DoitAsyncTask;

    goto :goto_0
.end method

.method private setPullEnable()V
    .locals 2

    .prologue
    .line 224
    iget-object v0, p0, Lim/doit/pro/activity/ProjectListFragment;->mPullToRefreshLayout:Lim/doit/pro/ui/component/pullrefresh/PullToRefreshLayout;

    if-nez v0, :cond_0

    .line 232
    :goto_0
    return-void

    .line 227
    :cond_0
    iget-object v0, p0, Lim/doit/pro/activity/ProjectListFragment;->mListAdapter:Lim/doit/pro/activity/ProjectListFragment$ProjectListViewAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lim/doit/pro/activity/ProjectListFragment;->mListAdapter:Lim/doit/pro/activity/ProjectListFragment$ProjectListViewAdapter;

    invoke-virtual {v0}, Lim/doit/pro/activity/ProjectListFragment$ProjectListViewAdapter;->getSelectedCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 228
    iget-object v0, p0, Lim/doit/pro/activity/ProjectListFragment;->mPullToRefreshLayout:Lim/doit/pro/ui/component/pullrefresh/PullToRefreshLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshLayout;->setEnabled(Z)V

    goto :goto_0

    .line 230
    :cond_1
    iget-object v0, p0, Lim/doit/pro/activity/ProjectListFragment;->mPullToRefreshLayout:Lim/doit/pro/ui/component/pullrefresh/PullToRefreshLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshLayout;->setEnabled(Z)V

    goto :goto_0
.end method

.method private showMoveToDailog()V
    .locals 2

    .prologue
    .line 452
    invoke-virtual {p0}, Lim/doit/pro/activity/ProjectListFragment;->isActivityFinish()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 456
    :goto_0
    return-void

    .line 455
    :cond_0
    invoke-virtual {p0}, Lim/doit/pro/activity/ProjectListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lim/doit/pro/activity/ProjectListFragment;->mListAdapter:Lim/doit/pro/activity/ProjectListFragment$ProjectListViewAdapter;

    invoke-static {v0, v1}, Lim/doit/pro/utils/AlertDialogUtils;->showListViewMoveDailog(Landroid/app/Activity;Lim/doit/pro/activity/listview/ListViewAdapter;)V

    goto :goto_0
.end method

.method private showSelectGoalDialog()V
    .locals 4

    .prologue
    .line 480
    invoke-virtual {p0}, Lim/doit/pro/activity/ProjectListFragment;->isActivityFinish()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 500
    :goto_0
    return-void

    .line 483
    :cond_0
    invoke-static {}, Lim/doit/pro/utils/UserUtils;->isNotPro()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 484
    invoke-virtual {p0}, Lim/doit/pro/activity/ProjectListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lim/doit/pro/utils/AlertDialogUtils;->showJustForProDialog(Landroid/app/Activity;)Z

    goto :goto_0

    .line 487
    :cond_1
    new-instance v1, Lim/doit/pro/ui/component/SelectGoalDialog;

    invoke-virtual {p0}, Lim/doit/pro/activity/ProjectListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lim/doit/pro/ui/component/SelectGoalDialog;-><init>(Landroid/app/Activity;)V

    .line 488
    .local v1, "dialog":Lim/doit/pro/ui/component/SelectGoalDialog;
    new-instance v2, Lim/doit/pro/activity/ProjectListFragment$6;

    invoke-direct {v2, p0}, Lim/doit/pro/activity/ProjectListFragment$6;-><init>(Lim/doit/pro/activity/ProjectListFragment;)V

    invoke-virtual {v1, v2}, Lim/doit/pro/ui/component/SelectGoalDialog;->setOnGoalFinishListner(Lim/doit/pro/ui/component/SelectGoalDialog$OnGoalFinishListner;)V

    .line 495
    const/4 v0, 0x0

    .line 496
    .local v0, "defaultGoal":Ljava/lang/String;
    iget-object v2, p0, Lim/doit/pro/activity/ProjectListFragment;->mListAdapter:Lim/doit/pro/activity/ProjectListFragment$ProjectListViewAdapter;

    invoke-virtual {v2}, Lim/doit/pro/activity/ProjectListFragment$ProjectListViewAdapter;->getSelectedCount()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 497
    iget-object v2, p0, Lim/doit/pro/activity/ProjectListFragment;->mListAdapter:Lim/doit/pro/activity/ProjectListFragment$ProjectListViewAdapter;

    invoke-virtual {v2}, Lim/doit/pro/activity/ProjectListFragment$ProjectListViewAdapter;->getSelectedItems()Ljava/util/ArrayList;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lim/doit/pro/model/BaseEntityWithPos;

    invoke-virtual {v2}, Lim/doit/pro/model/BaseEntityWithPos;->getGoal()Ljava/lang/String;

    move-result-object v0

    .line 499
    :cond_2
    invoke-virtual {v1, v0}, Lim/doit/pro/ui/component/SelectGoalDialog;->showDialog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private showSelectTaskContextDialog()V
    .locals 4

    .prologue
    .line 459
    invoke-virtual {p0}, Lim/doit/pro/activity/ProjectListFragment;->isActivityFinish()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 477
    :goto_0
    return-void

    .line 462
    :cond_0
    new-instance v1, Lim/doit/pro/ui/component/SelectTaskContextDialog;

    .line 463
    invoke-virtual {p0}, Lim/doit/pro/activity/ProjectListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 462
    invoke-direct {v1, v2}, Lim/doit/pro/ui/component/SelectTaskContextDialog;-><init>(Landroid/app/Activity;)V

    .line 464
    .local v1, "dialog":Lim/doit/pro/ui/component/SelectTaskContextDialog;
    new-instance v2, Lim/doit/pro/activity/ProjectListFragment$5;

    invoke-direct {v2, p0}, Lim/doit/pro/activity/ProjectListFragment$5;-><init>(Lim/doit/pro/activity/ProjectListFragment;)V

    invoke-virtual {v1, v2}, Lim/doit/pro/ui/component/SelectTaskContextDialog;->setOnTaskContextFinishListner(Lim/doit/pro/ui/component/SelectTaskContextDialog$OnTaskContextFinishListner;)V

    .line 471
    const/4 v0, 0x0

    .line 472
    .local v0, "defaultTaskContext":Ljava/lang/String;
    iget-object v2, p0, Lim/doit/pro/activity/ProjectListFragment;->mListAdapter:Lim/doit/pro/activity/ProjectListFragment$ProjectListViewAdapter;

    invoke-virtual {v2}, Lim/doit/pro/activity/ProjectListFragment$ProjectListViewAdapter;->getSelectedCount()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 473
    iget-object v2, p0, Lim/doit/pro/activity/ProjectListFragment;->mListAdapter:Lim/doit/pro/activity/ProjectListFragment$ProjectListViewAdapter;

    invoke-virtual {v2}, Lim/doit/pro/activity/ProjectListFragment$ProjectListViewAdapter;->getSelectedItems()Ljava/util/ArrayList;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lim/doit/pro/model/BaseEntityWithPos;

    .line 474
    invoke-virtual {v2}, Lim/doit/pro/model/BaseEntityWithPos;->getBaseContext()Ljava/lang/String;

    move-result-object v0

    .line 476
    :cond_1
    invoke-virtual {v1, v0}, Lim/doit/pro/ui/component/SelectTaskContextDialog;->showDialog(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected afterSync()V
    .locals 0

    .prologue
    .line 111
    invoke-super {p0}, Lim/doit/pro/activity/BaseListFragment;->afterSync()V

    .line 112
    invoke-direct {p0}, Lim/doit/pro/activity/ProjectListFragment;->loadingProjectsNotShowProgress()V

    .line 113
    return-void
.end method

.method protected dismissDialog()V
    .locals 1

    .prologue
    .line 327
    invoke-virtual {p0}, Lim/doit/pro/activity/ProjectListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lim/doit/pro/ui/component/DProgressDialog;->closeDialog(Landroid/app/Activity;)V

    .line 328
    return-void
.end method

.method public finishActionMode()V
    .locals 2

    .prologue
    .line 422
    iget-object v0, p0, Lim/doit/pro/activity/ProjectListFragment;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 423
    invoke-virtual {p0}, Lim/doit/pro/activity/ProjectListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lim/doit/pro/activity/ProjectListFragment$4;

    invoke-direct {v1, p0}, Lim/doit/pro/activity/ProjectListFragment$4;-><init>(Lim/doit/pro/activity/ProjectListFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 430
    invoke-direct {p0}, Lim/doit/pro/activity/ProjectListFragment;->setPullEnable()V

    .line 432
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 80
    const/4 v0, 0x1

    iput-boolean v0, p0, Lim/doit/pro/activity/ProjectListFragment;->mIsCreateView:Z

    .line 81
    if-eqz p3, :cond_0

    .line 82
    iput-object p3, p0, Lim/doit/pro/activity/ProjectListFragment;->mArgs:Landroid/os/Bundle;

    .line 84
    :cond_0
    const v0, 0x7f030034

    .line 85
    const/4 v1, 0x0

    .line 84
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lim/doit/pro/activity/ProjectListFragment;->mLayoutView:Landroid/view/View;

    .line 86
    invoke-direct {p0}, Lim/doit/pro/activity/ProjectListFragment;->initData()V

    .line 87
    invoke-direct {p0}, Lim/doit/pro/activity/ProjectListFragment;->initView()V

    .line 88
    invoke-direct {p0}, Lim/doit/pro/activity/ProjectListFragment;->initListener()V

    .line 89
    iget-object v0, p0, Lim/doit/pro/activity/ProjectListFragment;->mLayoutView:Landroid/view/View;

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lim/doit/pro/activity/ProjectListFragment;->mLoadingProjects:Lim/doit/pro/activity/ProjectListFragment$LoadingProjects;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lim/doit/pro/activity/ProjectListFragment;->mLoadingProjects:Lim/doit/pro/activity/ProjectListFragment$LoadingProjects;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lim/doit/pro/activity/ProjectListFragment$LoadingProjects;->cancel(Z)Z

    .line 106
    :cond_0
    invoke-super {p0}, Lim/doit/pro/activity/BaseListFragment;->onDestroy()V

    .line 107
    return-void
.end method

.method public onRefreshStarted(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 504
    invoke-virtual {p0}, Lim/doit/pro/activity/ProjectListFragment;->sendSyncManyBroadcast()V

    .line 505
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 94
    invoke-super {p0}, Lim/doit/pro/activity/BaseListFragment;->onResume()V

    .line 95
    iget-boolean v0, p0, Lim/doit/pro/activity/ProjectListFragment;->mIsCreateView:Z

    if-nez v0, :cond_0

    .line 96
    invoke-direct {p0}, Lim/doit/pro/activity/ProjectListFragment;->loadingProjectsNotShowProgress()V

    .line 98
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lim/doit/pro/activity/ProjectListFragment;->mIsCreateView:Z

    .line 99
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 73
    invoke-super {p0, p1}, Lim/doit/pro/activity/BaseListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 74
    const-string v0, "box"

    iget-object v1, p0, Lim/doit/pro/activity/ProjectListFragment;->mBox:Lim/doit/pro/model/Box;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 75
    return-void
.end method
