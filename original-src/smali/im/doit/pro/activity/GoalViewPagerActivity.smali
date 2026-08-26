.class public Lim/doit/pro/activity/GoalViewPagerActivity;
.super Lim/doit/pro/activity/BaseViewPagerActivity;
.source "GoalViewPagerActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lim/doit/pro/activity/GoalViewPagerActivity$LoadingTask;,
        Lim/doit/pro/activity/GoalViewPagerActivity$LoadingTaskNotShowProgress;,
        Lim/doit/pro/activity/GoalViewPagerActivity$ViewAdapter;
    }
.end annotation


# instance fields
.field private mGoal:Lim/doit/pro/model/Goal;

.field private mListView:Lcom/mobeta/android/dslv/DragSortListView;

.field private mListViewEmptyView:Lim/doit/pro/ui/component/ListViewEmptyView;

.field private mLoadingTask:Lim/doit/pro/activity/GoalViewPagerActivity$LoadingTask;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lim/doit/pro/activity/BaseViewPagerActivity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lim/doit/pro/activity/GoalViewPagerActivity;)Lim/doit/pro/model/Goal;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lim/doit/pro/activity/GoalViewPagerActivity;->mGoal:Lim/doit/pro/model/Goal;

    return-object v0
.end method

.method static synthetic access$1(Lim/doit/pro/activity/GoalViewPagerActivity;)Lim/doit/pro/ui/component/ListViewEmptyView;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lim/doit/pro/activity/GoalViewPagerActivity;->mListViewEmptyView:Lim/doit/pro/ui/component/ListViewEmptyView;

    return-object v0
.end method

.method static synthetic access$2(Lim/doit/pro/activity/GoalViewPagerActivity;Lim/doit/pro/activity/GoalViewPagerActivity$LoadingTask;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lim/doit/pro/activity/GoalViewPagerActivity;->mLoadingTask:Lim/doit/pro/activity/GoalViewPagerActivity$LoadingTask;

    return-void
.end method

.method static synthetic access$3(Lim/doit/pro/activity/GoalViewPagerActivity;)V
    .locals 0

    .prologue
    .line 289
    invoke-direct {p0}, Lim/doit/pro/activity/GoalViewPagerActivity;->completeGoal()V

    return-void
.end method

.method static synthetic access$4(Lim/doit/pro/activity/GoalViewPagerActivity;Z)V
    .locals 0

    .prologue
    .line 322
    invoke-direct {p0, p1}, Lim/doit/pro/activity/GoalViewPagerActivity;->completeGoal(Z)V

    return-void
.end method

.method private completeGoal()V
    .locals 5

    .prologue
    .line 290
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v3

    iget-object v3, v3, Lim/doit/pro/db/Persist;->taskDao:Lim/doit/pro/db/persist/TaskDao;

    iget-object v4, p0, Lim/doit/pro/activity/GoalViewPagerActivity;->mGoal:Lim/doit/pro/model/Goal;

    invoke-virtual {v4}, Lim/doit/pro/model/Goal;->getUuid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lim/doit/pro/db/persist/TaskDao;->countLiveInGoal(Ljava/lang/String;)I

    move-result v1

    .line 291
    .local v1, "count":I
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v3

    iget-object v3, v3, Lim/doit/pro/db/Persist;->projectDao:Lim/doit/pro/db/persist/ProjectDao;

    iget-object v4, p0, Lim/doit/pro/activity/GoalViewPagerActivity;->mGoal:Lim/doit/pro/model/Goal;

    invoke-virtual {v4}, Lim/doit/pro/model/Goal;->getUuid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lim/doit/pro/db/persist/ProjectDao;->countLiveInGoal(Ljava/lang/String;)I

    move-result v3

    add-int/2addr v1, v3

    .line 292
    if-lez v1, :cond_0

    .line 293
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 294
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v3, "dialog_message"

    .line 295
    const v4, 0x7f0c01b6

    .line 294
    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 296
    const-string v3, "dialog_positive_button"

    const v4, 0x7f0c003c

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 297
    const-string v3, "dialog_negative_button"

    .line 298
    const v4, 0x7f0c003b

    .line 297
    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 299
    invoke-static {p0, v0}, Lim/doit/pro/utils/AlertDialogUtils;->createDialog(Landroid/app/Activity;Landroid/os/Bundle;)Lim/doit/pro/ui/component/DMessageDialog;

    move-result-object v2

    .line 302
    .local v2, "dialog":Lim/doit/pro/ui/component/DMessageDialog;
    new-instance v3, Lim/doit/pro/activity/GoalViewPagerActivity$1;

    invoke-direct {v3, p0}, Lim/doit/pro/activity/GoalViewPagerActivity$1;-><init>(Lim/doit/pro/activity/GoalViewPagerActivity;)V

    .line 301
    invoke-virtual {v2, v3}, Lim/doit/pro/ui/component/DMessageDialog;->setOnPositiveButtonClickListener(Lim/doit/pro/ui/component/DMessageDialog$OnButtonClickListener;)Lim/doit/pro/ui/component/DMessageDialog;

    move-result-object v3

    .line 309
    new-instance v4, Lim/doit/pro/activity/GoalViewPagerActivity$2;

    invoke-direct {v4, p0}, Lim/doit/pro/activity/GoalViewPagerActivity$2;-><init>(Lim/doit/pro/activity/GoalViewPagerActivity;)V

    .line 308
    invoke-virtual {v3, v4}, Lim/doit/pro/ui/component/DMessageDialog;->setOnNegativeButtonClickListener(Lim/doit/pro/ui/component/DMessageDialog$OnButtonClickListener;)Lim/doit/pro/ui/component/DMessageDialog;

    .line 316
    invoke-virtual {p0}, Lim/doit/pro/activity/GoalViewPagerActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const-string v4, "dialog"

    invoke-virtual {v2, v3, v4}, Lim/doit/pro/ui/component/DMessageDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 320
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v2    # "dialog":Lim/doit/pro/ui/component/DMessageDialog;
    :goto_0
    return-void

    .line 318
    :cond_0
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lim/doit/pro/activity/GoalViewPagerActivity;->completeGoal(Z)V

    goto :goto_0
.end method

.method private completeGoal(Z)V
    .locals 3
    .param p1, "isMakeChildrenComplete"    # Z

    .prologue
    .line 323
    new-instance v0, Lim/doit/pro/controller/CompleteGoal;

    invoke-direct {v0}, Lim/doit/pro/controller/CompleteGoal;-><init>()V

    iget-object v1, p0, Lim/doit/pro/activity/GoalViewPagerActivity;->mGoal:Lim/doit/pro/model/Goal;

    .line 324
    new-instance v2, Lim/doit/pro/activity/GoalViewPagerActivity$3;

    invoke-direct {v2, p0}, Lim/doit/pro/activity/GoalViewPagerActivity$3;-><init>(Lim/doit/pro/activity/GoalViewPagerActivity;)V

    .line 323
    invoke-virtual {v0, p0, v1, v2}, Lim/doit/pro/controller/CompleteGoal;->complete(Landroid/app/Activity;Lim/doit/pro/model/Goal;Lim/doit/pro/controller/CompleteGoal$CompleteGoalFinishListener;)V

    .line 331
    return-void
.end method

.method private initData()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 76
    invoke-virtual {p0}, Lim/doit/pro/activity/GoalViewPagerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "goal"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lim/doit/pro/model/Goal;

    iput-object v0, p0, Lim/doit/pro/activity/GoalViewPagerActivity;->mGoal:Lim/doit/pro/model/Goal;

    .line 77
    new-instance v0, Lim/doit/pro/activity/GoalViewPagerActivity$LoadingTask;

    invoke-direct {v0, p0, v2, v2}, Lim/doit/pro/activity/GoalViewPagerActivity$LoadingTask;-><init>(Lim/doit/pro/activity/GoalViewPagerActivity;Lim/doit/pro/activity/GoalViewPagerActivity$LoadingTask;Lim/doit/pro/activity/GoalViewPagerActivity$LoadingTask;)V

    iput-object v0, p0, Lim/doit/pro/activity/GoalViewPagerActivity;->mLoadingTask:Lim/doit/pro/activity/GoalViewPagerActivity$LoadingTask;

    .line 78
    iget-object v0, p0, Lim/doit/pro/activity/GoalViewPagerActivity;->mLoadingTask:Lim/doit/pro/activity/GoalViewPagerActivity$LoadingTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lim/doit/pro/activity/GoalViewPagerActivity$LoadingTask;->execute([Ljava/lang/Object;)Lim/doit/pro/asynctask/DoitAsyncTask;

    .line 79
    return-void
.end method


# virtual methods
.method protected filterAndGroupDatas(Ljava/util/ArrayList;)Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;
    .locals 5
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
    .local p1, "entities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/BaseEntityWithPos;>;"
    const/4 v4, 0x0

    .line 159
    iget-object v2, p0, Lim/doit/pro/activity/GoalViewPagerActivity;->mBoxGrouper:Lim/doit/pro/activity/listview/group/DoitListViewGrouper;

    if-nez v2, :cond_0

    .line 160
    new-instance v2, Lim/doit/pro/activity/listview/group/DoitListViewGrouper;

    invoke-direct {v2}, Lim/doit/pro/activity/listview/group/DoitListViewGrouper;-><init>()V

    iput-object v2, p0, Lim/doit/pro/activity/GoalViewPagerActivity;->mBoxGrouper:Lim/doit/pro/activity/listview/group/DoitListViewGrouper;

    .line 163
    :cond_0
    iget-object v2, p0, Lim/doit/pro/activity/GoalViewPagerActivity;->mTagFilter:Lim/doit/pro/ui/model/TagFilter;

    invoke-static {v2, p1}, Lim/doit/pro/utils/TaskUtils;->filterDatasByTags(Lim/doit/pro/ui/model/TagFilter;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    .line 164
    .local v0, "entitiesByTagFitler":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/BaseEntityWithPos;>;"
    iget-object v2, p0, Lim/doit/pro/activity/GoalViewPagerActivity;->mBoxGrouper:Lim/doit/pro/activity/listview/group/DoitListViewGrouper;

    .line 165
    iget-object v3, p0, Lim/doit/pro/activity/GoalViewPagerActivity;->mGoal:Lim/doit/pro/model/Goal;

    invoke-static {v3}, Lim/doit/pro/utils/BoxUtils;->getDefaultGroupBy(Lim/doit/pro/model/Goal;)Lim/doit/pro/model/enums/GroupByType;

    move-result-object v3

    .line 164
    invoke-virtual {v2, v3, v0}, Lim/doit/pro/activity/listview/group/DoitListViewGrouper;->group(Lim/doit/pro/model/enums/GroupByType;Ljava/util/ArrayList;)Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;

    move-result-object v1

    .line 166
    .local v1, "result":Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;
    invoke-virtual {v1, p1}, Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;->setEntities(Ljava/util/ArrayList;)V

    .line 167
    iget-object v2, p0, Lim/doit/pro/activity/GoalViewPagerActivity;->mTagFilter:Lim/doit/pro/ui/model/TagFilter;

    if-eqz v2, :cond_2

    .line 168
    iget-object v2, p0, Lim/doit/pro/activity/GoalViewPagerActivity;->mTagFilter:Lim/doit/pro/ui/model/TagFilter;

    invoke-virtual {v2}, Lim/doit/pro/ui/model/TagFilter;->getTags()Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v2}, Lim/doit/pro/utils/CollectionUtils;->isNotEmpty(Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lim/doit/pro/activity/GoalViewPagerActivity;->mTagFilter:Lim/doit/pro/ui/model/TagFilter;

    .line 169
    invoke-virtual {v2}, Lim/doit/pro/ui/model/TagFilter;->isUntagged()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 170
    :cond_1
    invoke-virtual {v1}, Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;->getGroupers()Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lim/doit/pro/activity/GoalViewPagerActivity;->mTagFilter:Lim/doit/pro/ui/model/TagFilter;

    invoke-virtual {v2, v4, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 171
    invoke-virtual {v1}, Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;->getChildren()Ljava/util/ArrayList;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v4, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 173
    :cond_2
    invoke-virtual {v1}, Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;->getGroupers()Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lim/doit/pro/activity/GoalViewPagerActivity;->mGoal:Lim/doit/pro/model/Goal;

    invoke-virtual {v2, v4, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 174
    invoke-virtual {v1}, Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;->getChildren()Ljava/util/ArrayList;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v4, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 175
    return-object v1
.end method

.method protected initView()V
    .locals 3

    .prologue
    .line 82
    invoke-super {p0}, Lim/doit/pro/activity/BaseViewPagerActivity;->initView()V

    .line 83
    const v1, 0x7f0b006f

    invoke-virtual {p0, v1}, Lim/doit/pro/activity/GoalViewPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lim/doit/pro/ui/component/ListViewEmptyView;

    iput-object v1, p0, Lim/doit/pro/activity/GoalViewPagerActivity;->mListViewEmptyView:Lim/doit/pro/ui/component/ListViewEmptyView;

    .line 84
    const v1, 0x7f0b0069

    invoke-virtual {p0, v1}, Lim/doit/pro/activity/GoalViewPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/mobeta/android/dslv/DragSortListView;

    iput-object v1, p0, Lim/doit/pro/activity/GoalViewPagerActivity;->mListView:Lcom/mobeta/android/dslv/DragSortListView;

    .line 85
    new-instance v1, Lim/doit/pro/activity/GoalViewPagerActivity$ViewAdapter;

    iget-object v2, p0, Lim/doit/pro/activity/GoalViewPagerActivity;->mListView:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-direct {v1, p0, p0, v2}, Lim/doit/pro/activity/GoalViewPagerActivity$ViewAdapter;-><init>(Lim/doit/pro/activity/GoalViewPagerActivity;Landroid/content/Context;Lcom/mobeta/android/dslv/DragSortListView;)V

    iput-object v1, p0, Lim/doit/pro/activity/GoalViewPagerActivity;->mListAdapter:Lim/doit/pro/activity/listview/ListViewAdapter;

    .line 86
    iget-object v1, p0, Lim/doit/pro/activity/GoalViewPagerActivity;->mListView:Lcom/mobeta/android/dslv/DragSortListView;

    iget-object v2, p0, Lim/doit/pro/activity/GoalViewPagerActivity;->mListAdapter:Lim/doit/pro/activity/listview/ListViewAdapter;

    invoke-virtual {v1, v2}, Lcom/mobeta/android/dslv/DragSortListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 88
    new-instance v0, Lcom/mobeta/android/dslv/DoitDragSortController;

    .line 89
    iget-object v1, p0, Lim/doit/pro/activity/GoalViewPagerActivity;->mListView:Lcom/mobeta/android/dslv/DragSortListView;

    iget-object v2, p0, Lim/doit/pro/activity/GoalViewPagerActivity;->mListAdapter:Lim/doit/pro/activity/listview/ListViewAdapter;

    .line 88
    invoke-direct {v0, v1, v2}, Lcom/mobeta/android/dslv/DoitDragSortController;-><init>(Lcom/mobeta/android/dslv/DragSortListView;Lim/doit/pro/activity/listview/ListViewAdapter;)V

    .line 90
    .local v0, "controller":Lcom/mobeta/android/dslv/DoitDragSortController;
    iget-object v1, p0, Lim/doit/pro/activity/GoalViewPagerActivity;->mListView:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-virtual {v1, v0}, Lcom/mobeta/android/dslv/DragSortListView;->setFloatViewManager(Lcom/mobeta/android/dslv/DragSortListView$FloatViewManager;)V

    .line 91
    iget-object v1, p0, Lim/doit/pro/activity/GoalViewPagerActivity;->mListView:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-virtual {v1, v0}, Lcom/mobeta/android/dslv/DragSortListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 93
    iget-object v1, p0, Lim/doit/pro/activity/GoalViewPagerActivity;->mListView:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-virtual {p0, v1}, Lim/doit/pro/activity/GoalViewPagerActivity;->initPullToRefreshView(Landroid/widget/ListView;)V

    .line 94
    return-void
.end method

.method protected initViewContent()V
    .locals 2

    .prologue
    .line 98
    invoke-super {p0}, Lim/doit/pro/activity/BaseViewPagerActivity;->initViewContent()V

    .line 99
    invoke-virtual {p0}, Lim/doit/pro/activity/GoalViewPagerActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iget-object v1, p0, Lim/doit/pro/activity/GoalViewPagerActivity;->mGoal:Lim/doit/pro/model/Goal;

    invoke-virtual {v1}, Lim/doit/pro/model/Goal;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 100
    return-void
.end method

.method protected loadingTaskNotShowProgress()V
    .locals 2

    .prologue
    .line 104
    iget-object v0, p0, Lim/doit/pro/activity/GoalViewPagerActivity;->mLoadingTask:Lim/doit/pro/activity/GoalViewPagerActivity$LoadingTask;

    if-eqz v0, :cond_0

    .line 114
    :goto_0
    return-void

    .line 107
    :cond_0
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v0

    iget-object v0, v0, Lim/doit/pro/db/Persist;->goalDao:Lim/doit/pro/db/persist/GoalDao;

    iget-object v1, p0, Lim/doit/pro/activity/GoalViewPagerActivity;->mGoal:Lim/doit/pro/model/Goal;

    invoke-virtual {v1}, Lim/doit/pro/model/Goal;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/db/persist/GoalDao;->findByUUID(Ljava/lang/String;)Lim/doit/pro/model/BaseEntity;

    move-result-object v0

    check-cast v0, Lim/doit/pro/model/Goal;

    iput-object v0, p0, Lim/doit/pro/activity/GoalViewPagerActivity;->mGoal:Lim/doit/pro/model/Goal;

    .line 108
    iget-object v0, p0, Lim/doit/pro/activity/GoalViewPagerActivity;->mGoal:Lim/doit/pro/model/Goal;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lim/doit/pro/activity/GoalViewPagerActivity;->mGoal:Lim/doit/pro/model/Goal;

    invoke-virtual {v0}, Lim/doit/pro/model/Goal;->isDeleted()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lim/doit/pro/activity/GoalViewPagerActivity;->mGoal:Lim/doit/pro/model/Goal;

    invoke-virtual {v0}, Lim/doit/pro/model/Goal;->isArchived()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 109
    :cond_1
    invoke-virtual {p0}, Lim/doit/pro/activity/GoalViewPagerActivity;->finish()V

    goto :goto_0

    .line 112
    :cond_2
    new-instance v0, Lim/doit/pro/activity/GoalViewPagerActivity$LoadingTaskNotShowProgress;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lim/doit/pro/activity/GoalViewPagerActivity$LoadingTaskNotShowProgress;-><init>(Lim/doit/pro/activity/GoalViewPagerActivity;Lim/doit/pro/activity/GoalViewPagerActivity$LoadingTaskNotShowProgress;)V

    iput-object v0, p0, Lim/doit/pro/activity/GoalViewPagerActivity;->mLoadingTask:Lim/doit/pro/activity/GoalViewPagerActivity$LoadingTask;

    .line 113
    iget-object v0, p0, Lim/doit/pro/activity/GoalViewPagerActivity;->mLoadingTask:Lim/doit/pro/activity/GoalViewPagerActivity$LoadingTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lim/doit/pro/activity/GoalViewPagerActivity$LoadingTask;->execute([Ljava/lang/Object;)Lim/doit/pro/asynctask/DoitAsyncTask;

    goto :goto_0
.end method

.method protected onAddClick()V
    .locals 3

    .prologue
    .line 335
    invoke-static {}, Lim/doit/pro/utils/UserUtils;->isNotPro()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 336
    invoke-static {p0}, Lim/doit/pro/utils/AlertDialogUtils;->showJustForProDialog(Landroid/app/Activity;)Z

    .line 344
    :goto_0
    return-void

    .line 339
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lim/doit/pro/activity/TaskDetailActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 340
    .local v0, "addIntent":Landroid/content/Intent;
    iget-object v1, p0, Lim/doit/pro/activity/GoalViewPagerActivity;->mGoal:Lim/doit/pro/model/Goal;

    invoke-virtual {v1}, Lim/doit/pro/model/Goal;->isNotDead()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 341
    const-string v1, "goal"

    iget-object v2, p0, Lim/doit/pro/activity/GoalViewPagerActivity;->mGoal:Lim/doit/pro/model/Goal;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 343
    :cond_1
    invoke-virtual {p0, v0}, Lim/doit/pro/activity/GoalViewPagerActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 50
    invoke-super {p0, p1}, Lim/doit/pro/activity/BaseViewPagerActivity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    const v0, 0x7f03002c

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/GoalViewPagerActivity;->setContentView(I)V

    .line 52
    invoke-direct {p0}, Lim/doit/pro/activity/GoalViewPagerActivity;->initData()V

    .line 53
    invoke-virtual {p0}, Lim/doit/pro/activity/GoalViewPagerActivity;->initView()V

    .line 54
    invoke-virtual {p0}, Lim/doit/pro/activity/GoalViewPagerActivity;->initViewContent()V

    .line 55
    invoke-virtual {p0}, Lim/doit/pro/activity/GoalViewPagerActivity;->initListener()V

    .line 56
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 69
    iget-object v0, p0, Lim/doit/pro/activity/GoalViewPagerActivity;->mLoadingTask:Lim/doit/pro/activity/GoalViewPagerActivity$LoadingTask;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lim/doit/pro/activity/GoalViewPagerActivity;->mLoadingTask:Lim/doit/pro/activity/GoalViewPagerActivity$LoadingTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lim/doit/pro/activity/GoalViewPagerActivity$LoadingTask;->cancel(Z)Z

    .line 72
    :cond_0
    invoke-super {p0}, Lim/doit/pro/activity/BaseViewPagerActivity;->onDestroy()V

    .line 73
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 60
    invoke-super {p0}, Lim/doit/pro/activity/BaseViewPagerActivity;->onResume()V

    .line 61
    iget-boolean v0, p0, Lim/doit/pro/activity/GoalViewPagerActivity;->mIsCreateView:Z

    if-nez v0, :cond_0

    .line 62
    invoke-virtual {p0}, Lim/doit/pro/activity/GoalViewPagerActivity;->loadingTaskNotShowProgress()V

    .line 64
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lim/doit/pro/activity/GoalViewPagerActivity;->mIsCreateView:Z

    .line 65
    return-void
.end method
