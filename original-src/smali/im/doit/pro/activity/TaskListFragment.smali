.class public Lim/doit/pro/activity/TaskListFragment;
.super Lim/doit/pro/activity/BaseListFragment;
.source "TaskListFragment.java"

# interfaces
.implements Lim/doit/pro/ui/component/pullrefresh/OnRefreshListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lim/doit/pro/activity/TaskListFragment$ArchiveTasks;,
        Lim/doit/pro/activity/TaskListFragment$EmptyTasks;,
        Lim/doit/pro/activity/TaskListFragment$ListAdapter;,
        Lim/doit/pro/activity/TaskListFragment$LoadingTask;,
        Lim/doit/pro/activity/TaskListFragment$LoadingTaskNotShowProgress;,
        Lim/doit/pro/activity/TaskListFragment$TagFilterAndGroupTask;
    }
.end annotation


# instance fields
.field private isCreateView:Z

.field private layoutView:Landroid/view/View;

.field private loadingTask:Lim/doit/pro/activity/TaskListFragment$LoadingTask;

.field private mArchiveTasks:Lim/doit/pro/activity/TaskListFragment$ArchiveTasks;

.field private mArgs:Landroid/os/Bundle;

.field private mBox:Lim/doit/pro/model/Box;

.field private mEmptyTasks:Lim/doit/pro/activity/TaskListFragment$EmptyTasks;

.field private mListAdapter:Lim/doit/pro/activity/listview/ListViewAdapter;

.field private mListView:Lcom/mobeta/android/dslv/DragSortListView;

.field private mListViewEmptyWrap:Lim/doit/pro/ui/component/ListViewEmptyView;

.field private mTagFilter:Lim/doit/pro/ui/model/TagFilter;

.field private mTagFilterAndGroupTask:Lim/doit/pro/activity/TaskListFragment$TagFilterAndGroupTask;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 47
    invoke-direct {p0}, Lim/doit/pro/activity/BaseListFragment;-><init>()V

    .line 62
    iput-object v0, p0, Lim/doit/pro/activity/TaskListFragment;->loadingTask:Lim/doit/pro/activity/TaskListFragment$LoadingTask;

    .line 63
    iput-object v0, p0, Lim/doit/pro/activity/TaskListFragment;->mArchiveTasks:Lim/doit/pro/activity/TaskListFragment$ArchiveTasks;

    .line 64
    iput-object v0, p0, Lim/doit/pro/activity/TaskListFragment;->mEmptyTasks:Lim/doit/pro/activity/TaskListFragment$EmptyTasks;

    .line 65
    iput-object v0, p0, Lim/doit/pro/activity/TaskListFragment;->mTagFilterAndGroupTask:Lim/doit/pro/activity/TaskListFragment$TagFilterAndGroupTask;

    .line 47
    return-void
.end method

.method static synthetic access$0(Lim/doit/pro/activity/TaskListFragment;Lim/doit/pro/activity/TaskListFragment$ArchiveTasks;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lim/doit/pro/activity/TaskListFragment;->mArchiveTasks:Lim/doit/pro/activity/TaskListFragment$ArchiveTasks;

    return-void
.end method

.method static synthetic access$1(Lim/doit/pro/activity/TaskListFragment;Lim/doit/pro/activity/TaskListFragment$EmptyTasks;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lim/doit/pro/activity/TaskListFragment;->mEmptyTasks:Lim/doit/pro/activity/TaskListFragment$EmptyTasks;

    return-void
.end method

.method static synthetic access$10(Lim/doit/pro/activity/TaskListFragment;)Lim/doit/pro/activity/TaskListFragment$EmptyTasks;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lim/doit/pro/activity/TaskListFragment;->mEmptyTasks:Lim/doit/pro/activity/TaskListFragment$EmptyTasks;

    return-object v0
.end method

.method static synthetic access$11(Lim/doit/pro/activity/TaskListFragment;)V
    .locals 0

    .prologue
    .line 306
    invoke-direct {p0}, Lim/doit/pro/activity/TaskListFragment;->setPullEnable()V

    return-void
.end method

.method static synthetic access$12(Lim/doit/pro/activity/TaskListFragment;)V
    .locals 0

    .prologue
    .line 237
    invoke-direct {p0}, Lim/doit/pro/activity/TaskListFragment;->loadingTaskNotShowProgress()V

    return-void
.end method

.method static synthetic access$2(Lim/doit/pro/activity/TaskListFragment;)Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;
    .locals 1

    .prologue
    .line 483
    invoke-direct {p0}, Lim/doit/pro/activity/TaskListFragment;->prepareDatas()Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3(Lim/doit/pro/activity/TaskListFragment;)Lim/doit/pro/activity/listview/ListViewAdapter;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lim/doit/pro/activity/TaskListFragment;->mListAdapter:Lim/doit/pro/activity/listview/ListViewAdapter;

    return-object v0
.end method

.method static synthetic access$4(Lim/doit/pro/activity/TaskListFragment;)Lim/doit/pro/ui/component/ListViewEmptyView;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lim/doit/pro/activity/TaskListFragment;->mListViewEmptyWrap:Lim/doit/pro/ui/component/ListViewEmptyView;

    return-object v0
.end method

.method static synthetic access$5(Lim/doit/pro/activity/TaskListFragment;Lim/doit/pro/activity/TaskListFragment$LoadingTask;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lim/doit/pro/activity/TaskListFragment;->loadingTask:Lim/doit/pro/activity/TaskListFragment$LoadingTask;

    return-void
.end method

.method static synthetic access$6(Lim/doit/pro/activity/TaskListFragment;Ljava/util/ArrayList;)Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;
    .locals 1

    .prologue
    .line 493
    invoke-direct {p0, p1}, Lim/doit/pro/activity/TaskListFragment;->filterAndGroupDatas(Ljava/util/ArrayList;)Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$7(Lim/doit/pro/activity/TaskListFragment;Lim/doit/pro/activity/TaskListFragment$TagFilterAndGroupTask;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lim/doit/pro/activity/TaskListFragment;->mTagFilterAndGroupTask:Lim/doit/pro/activity/TaskListFragment$TagFilterAndGroupTask;

    return-void
.end method

.method static synthetic access$8(Lim/doit/pro/activity/TaskListFragment;)Lim/doit/pro/model/Box;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lim/doit/pro/activity/TaskListFragment;->mBox:Lim/doit/pro/model/Box;

    return-object v0
.end method

.method static synthetic access$9(Lim/doit/pro/activity/TaskListFragment;)Lim/doit/pro/activity/TaskListFragment$ArchiveTasks;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lim/doit/pro/activity/TaskListFragment;->mArchiveTasks:Lim/doit/pro/activity/TaskListFragment$ArchiveTasks;

    return-object v0
.end method

.method private filterAndGroupDatas(Ljava/util/ArrayList;)Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;
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

    .line 495
    iget-object v2, p0, Lim/doit/pro/activity/TaskListFragment;->mBox:Lim/doit/pro/model/Box;

    iget-object v3, p0, Lim/doit/pro/activity/TaskListFragment;->mBox:Lim/doit/pro/model/Box;

    invoke-static {v3}, Lim/doit/pro/utils/BoxUtils;->getDefaultGroupBy(Lim/doit/pro/model/Box;)Lim/doit/pro/model/enums/GroupByType;

    move-result-object v3

    invoke-virtual {v2, v3}, Lim/doit/pro/model/Box;->setGroupBy(Lim/doit/pro/model/enums/GroupByType;)V

    .line 497
    iget-object v2, p0, Lim/doit/pro/activity/TaskListFragment;->mTagFilter:Lim/doit/pro/ui/model/TagFilter;

    invoke-static {v2, p1}, Lim/doit/pro/utils/TaskUtils;->filterDatasByTags(Lim/doit/pro/ui/model/TagFilter;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    .line 498
    .local v0, "entitiesByTagFitler":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/BaseEntityWithPos;>;"
    iget-object v2, p0, Lim/doit/pro/activity/TaskListFragment;->mBoxGrouper:Lim/doit/pro/activity/listview/group/DoitListViewGrouper;

    iget-object v3, p0, Lim/doit/pro/activity/TaskListFragment;->mBox:Lim/doit/pro/model/Box;

    invoke-virtual {v2, v3, v0}, Lim/doit/pro/activity/listview/group/DoitListViewGrouper;->group(Lim/doit/pro/model/Box;Ljava/util/ArrayList;)Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;

    move-result-object v1

    .line 500
    .local v1, "result":Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;
    iget-object v2, p0, Lim/doit/pro/activity/TaskListFragment;->mTagFilter:Lim/doit/pro/ui/model/TagFilter;

    if-eqz v2, :cond_1

    .line 501
    iget-object v2, p0, Lim/doit/pro/activity/TaskListFragment;->mTagFilter:Lim/doit/pro/ui/model/TagFilter;

    invoke-virtual {v2}, Lim/doit/pro/ui/model/TagFilter;->getTags()Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v2}, Lim/doit/pro/utils/CollectionUtils;->isNotEmpty(Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lim/doit/pro/activity/TaskListFragment;->mTagFilter:Lim/doit/pro/ui/model/TagFilter;

    .line 502
    invoke-virtual {v2}, Lim/doit/pro/ui/model/TagFilter;->isUntagged()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 503
    :cond_0
    invoke-virtual {v1}, Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;->getGroupers()Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lim/doit/pro/activity/TaskListFragment;->mTagFilter:Lim/doit/pro/ui/model/TagFilter;

    invoke-virtual {v2, v4, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 504
    invoke-virtual {v1}, Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;->getChildren()Ljava/util/ArrayList;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v4, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 506
    :cond_1
    return-object v1
.end method

.method public static getInstance(Landroid/os/Bundle;)Lim/doit/pro/activity/TaskListFragment;
    .locals 1
    .param p0, "args"    # Landroid/os/Bundle;

    .prologue
    .line 68
    new-instance v0, Lim/doit/pro/activity/TaskListFragment;

    invoke-direct {v0}, Lim/doit/pro/activity/TaskListFragment;-><init>()V

    .line 69
    .local v0, "fragment":Lim/doit/pro/activity/TaskListFragment;
    iput-object p0, v0, Lim/doit/pro/activity/TaskListFragment;->mArgs:Landroid/os/Bundle;

    .line 70
    return-object v0
.end method

.method private initData()V
    .locals 2

    .prologue
    .line 246
    iget-object v0, p0, Lim/doit/pro/activity/TaskListFragment;->mArgs:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lim/doit/pro/activity/TaskListFragment;->mArgs:Landroid/os/Bundle;

    const-string v1, "box"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lim/doit/pro/model/Box;

    iput-object v0, p0, Lim/doit/pro/activity/TaskListFragment;->mBox:Lim/doit/pro/model/Box;

    .line 249
    :cond_0
    return-void
.end method

.method private initEmptyViewContent()V
    .locals 3

    .prologue
    .line 271
    const v2, 0x7f0c0194

    invoke-static {v2}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v1

    .local v1, "emptyTitle":Ljava/lang/String;
    const/4 v0, 0x0

    .line 272
    .local v0, "emptyBody":Ljava/lang/String;
    iget-object v2, p0, Lim/doit/pro/activity/TaskListFragment;->mBox:Lim/doit/pro/model/Box;

    invoke-virtual {v2}, Lim/doit/pro/model/Box;->isInbox()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 273
    const v2, 0x7f0c0187

    invoke-static {v2}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v0

    .line 293
    :cond_0
    :goto_0
    iget-object v2, p0, Lim/doit/pro/activity/TaskListFragment;->mListViewEmptyWrap:Lim/doit/pro/ui/component/ListViewEmptyView;

    invoke-virtual {v2, v1}, Lim/doit/pro/ui/component/ListViewEmptyView;->setTitle(Ljava/lang/String;)V

    .line 294
    iget-object v2, p0, Lim/doit/pro/activity/TaskListFragment;->mListViewEmptyWrap:Lim/doit/pro/ui/component/ListViewEmptyView;

    invoke-virtual {v2, v0}, Lim/doit/pro/ui/component/ListViewEmptyView;->setBody(Ljava/lang/String;)V

    .line 295
    return-void

    .line 274
    :cond_1
    iget-object v2, p0, Lim/doit/pro/activity/TaskListFragment;->mBox:Lim/doit/pro/model/Box;

    invoke-virtual {v2}, Lim/doit/pro/model/Box;->isToday()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 275
    const v2, 0x7f0c0188

    invoke-static {v2}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v0

    .line 276
    goto :goto_0

    :cond_2
    iget-object v2, p0, Lim/doit/pro/activity/TaskListFragment;->mBox:Lim/doit/pro/model/Box;

    invoke-virtual {v2}, Lim/doit/pro/model/Box;->isNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 277
    const v2, 0x7f0c0189

    invoke-static {v2}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v0

    .line 278
    goto :goto_0

    :cond_3
    iget-object v2, p0, Lim/doit/pro/activity/TaskListFragment;->mBox:Lim/doit/pro/model/Box;

    invoke-virtual {v2}, Lim/doit/pro/model/Box;->isTomorrow()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 279
    const v2, 0x7f0c018a

    invoke-static {v2}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v0

    .line 280
    goto :goto_0

    :cond_4
    iget-object v2, p0, Lim/doit/pro/activity/TaskListFragment;->mBox:Lim/doit/pro/model/Box;

    invoke-virtual {v2}, Lim/doit/pro/model/Box;->isScheduled()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 281
    const v2, 0x7f0c018b

    invoke-static {v2}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v0

    .line 282
    goto :goto_0

    :cond_5
    iget-object v2, p0, Lim/doit/pro/activity/TaskListFragment;->mBox:Lim/doit/pro/model/Box;

    invoke-virtual {v2}, Lim/doit/pro/model/Box;->isSomeday()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 283
    const v2, 0x7f0c018c

    invoke-static {v2}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v0

    .line 284
    goto :goto_0

    :cond_6
    iget-object v2, p0, Lim/doit/pro/activity/TaskListFragment;->mBox:Lim/doit/pro/model/Box;

    invoke-virtual {v2}, Lim/doit/pro/model/Box;->isWaiting()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 285
    const v2, 0x7f0c018d

    invoke-static {v2}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v0

    .line 286
    goto :goto_0

    :cond_7
    iget-object v2, p0, Lim/doit/pro/activity/TaskListFragment;->mBox:Lim/doit/pro/model/Box;

    invoke-virtual {v2}, Lim/doit/pro/model/Box;->isCompleted()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 287
    const v2, 0x7f0c0195

    invoke-static {v2}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v1

    .line 288
    const v2, 0x7f0c018e

    invoke-static {v2}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v0

    .line 289
    goto/16 :goto_0

    :cond_8
    iget-object v2, p0, Lim/doit/pro/activity/TaskListFragment;->mBox:Lim/doit/pro/model/Box;

    invoke-virtual {v2}, Lim/doit/pro/model/Box;->isTrash()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 290
    const v2, 0x7f0c0196

    invoke-static {v2}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v1

    .line 291
    const v2, 0x7f0c018f

    invoke-static {v2}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method private initListener()V
    .locals 2

    .prologue
    .line 318
    iget-object v0, p0, Lim/doit/pro/activity/TaskListFragment;->mListAdapter:Lim/doit/pro/activity/listview/ListViewAdapter;

    .line 319
    new-instance v1, Lim/doit/pro/activity/TaskListFragment$5;

    invoke-direct {v1, p0}, Lim/doit/pro/activity/TaskListFragment$5;-><init>(Lim/doit/pro/activity/TaskListFragment;)V

    invoke-virtual {v0, v1}, Lim/doit/pro/activity/listview/ListViewAdapter;->setOnPullRefreshEnabledListener(Lim/doit/pro/activity/listview/ListViewAdapter$OnPullRefreshEnabledListener;)V

    .line 326
    iget-object v0, p0, Lim/doit/pro/activity/TaskListFragment;->mListAdapter:Lim/doit/pro/activity/listview/ListViewAdapter;

    .line 327
    new-instance v1, Lim/doit/pro/activity/TaskListFragment$6;

    invoke-direct {v1, p0}, Lim/doit/pro/activity/TaskListFragment$6;-><init>(Lim/doit/pro/activity/TaskListFragment;)V

    invoke-virtual {v0, v1}, Lim/doit/pro/activity/listview/ListViewAdapter;->setUpdateSubtitleTextListener(Lim/doit/pro/activity/listener/OnUpdateActionBarSubtitleListener;)V

    .line 335
    iget-object v0, p0, Lim/doit/pro/activity/TaskListFragment;->mListAdapter:Lim/doit/pro/activity/listview/ListViewAdapter;

    new-instance v1, Lim/doit/pro/activity/TaskListFragment$7;

    invoke-direct {v1, p0}, Lim/doit/pro/activity/TaskListFragment$7;-><init>(Lim/doit/pro/activity/TaskListFragment;)V

    invoke-virtual {v0, v1}, Lim/doit/pro/activity/listview/ListViewAdapter;->setReloadDataListener(Lim/doit/pro/activity/listview/ListViewAdapter$OnReloadDataLisetner;)V

    .line 342
    iget-object v0, p0, Lim/doit/pro/activity/TaskListFragment;->mListAdapter:Lim/doit/pro/activity/listview/ListViewAdapter;

    .line 343
    new-instance v1, Lim/doit/pro/activity/TaskListFragment$8;

    invoke-direct {v1, p0}, Lim/doit/pro/activity/TaskListFragment$8;-><init>(Lim/doit/pro/activity/TaskListFragment;)V

    invoke-virtual {v0, v1}, Lim/doit/pro/activity/listview/ListViewAdapter;->setOnDeleteTagFilterListener(Lim/doit/pro/activity/listview/ListViewAdapter$OnDeleteTagFilterListener;)V

    .line 350
    iget-object v0, p0, Lim/doit/pro/activity/TaskListFragment;->mListAdapter:Lim/doit/pro/activity/listview/ListViewAdapter;

    .line 351
    new-instance v1, Lim/doit/pro/activity/TaskListFragment$9;

    invoke-direct {v1, p0}, Lim/doit/pro/activity/TaskListFragment$9;-><init>(Lim/doit/pro/activity/TaskListFragment;)V

    invoke-virtual {v0, v1}, Lim/doit/pro/activity/listview/ListViewAdapter;->setOnUpdateGroupByStatusListener(Lim/doit/pro/activity/listview/ListViewAdapter$OnUpdateGroupByStatusListener;)V

    .line 361
    return-void
.end method

.method private initPullToRefreshView()V
    .locals 4

    .prologue
    .line 298
    iget-object v0, p0, Lim/doit/pro/activity/TaskListFragment;->layoutView:Landroid/view/View;

    .line 299
    const v1, 0x7f0b006e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshLayout;

    .line 298
    iput-object v0, p0, Lim/doit/pro/activity/TaskListFragment;->mPullToRefreshLayout:Lim/doit/pro/ui/component/pullrefresh/PullToRefreshLayout;

    .line 300
    invoke-virtual {p0}, Lim/doit/pro/activity/TaskListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lim/doit/pro/ui/component/pullrefresh/ActionBarPullToRefresh;->from(Landroid/app/Activity;)Lim/doit/pro/ui/component/pullrefresh/ActionBarPullToRefresh$SetupWizard;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    .line 301
    const v3, 0x7f0b0069

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/pullrefresh/ActionBarPullToRefresh$SetupWizard;->theseChildrenArePullable([I)Lim/doit/pro/ui/component/pullrefresh/ActionBarPullToRefresh$SetupWizard;

    move-result-object v0

    invoke-virtual {v0, p0}, Lim/doit/pro/ui/component/pullrefresh/ActionBarPullToRefresh$SetupWizard;->listener(Lim/doit/pro/ui/component/pullrefresh/OnRefreshListener;)Lim/doit/pro/ui/component/pullrefresh/ActionBarPullToRefresh$SetupWizard;

    move-result-object v0

    .line 302
    iget-object v1, p0, Lim/doit/pro/activity/TaskListFragment;->mPullToRefreshLayout:Lim/doit/pro/ui/component/pullrefresh/PullToRefreshLayout;

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/pullrefresh/ActionBarPullToRefresh$SetupWizard;->setup(Lim/doit/pro/ui/component/pullrefresh/PullToRefreshLayout;)V

    .line 303
    invoke-direct {p0}, Lim/doit/pro/activity/TaskListFragment;->setPullEnable()V

    .line 304
    return-void
.end method

.method private initView()V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .prologue
    .line 253
    iget-object v1, p0, Lim/doit/pro/activity/TaskListFragment;->layoutView:Landroid/view/View;

    .line 254
    const v2, 0x7f0b006f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lim/doit/pro/ui/component/ListViewEmptyView;

    .line 253
    iput-object v1, p0, Lim/doit/pro/activity/TaskListFragment;->mListViewEmptyWrap:Lim/doit/pro/ui/component/ListViewEmptyView;

    .line 255
    invoke-direct {p0}, Lim/doit/pro/activity/TaskListFragment;->initEmptyViewContent()V

    .line 257
    iget-object v1, p0, Lim/doit/pro/activity/TaskListFragment;->layoutView:Landroid/view/View;

    const v2, 0x7f0b0069

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/mobeta/android/dslv/DragSortListView;

    iput-object v1, p0, Lim/doit/pro/activity/TaskListFragment;->mListView:Lcom/mobeta/android/dslv/DragSortListView;

    .line 258
    iget-object v1, p0, Lim/doit/pro/activity/TaskListFragment;->mListView:Lcom/mobeta/android/dslv/DragSortListView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/mobeta/android/dslv/DragSortListView;->setItemsCanFocus(Z)V

    .line 259
    new-instance v1, Lim/doit/pro/activity/TaskListFragment$ListAdapter;

    invoke-virtual {p0}, Lim/doit/pro/activity/TaskListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lim/doit/pro/activity/TaskListFragment;->mListView:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-direct {v1, p0, v2, v3}, Lim/doit/pro/activity/TaskListFragment$ListAdapter;-><init>(Lim/doit/pro/activity/TaskListFragment;Landroid/app/Activity;Lcom/mobeta/android/dslv/DragSortListView;)V

    iput-object v1, p0, Lim/doit/pro/activity/TaskListFragment;->mListAdapter:Lim/doit/pro/activity/listview/ListViewAdapter;

    .line 260
    iget-object v1, p0, Lim/doit/pro/activity/TaskListFragment;->mListAdapter:Lim/doit/pro/activity/listview/ListViewAdapter;

    iget-object v2, p0, Lim/doit/pro/activity/TaskListFragment;->mBox:Lim/doit/pro/model/Box;

    invoke-virtual {v2}, Lim/doit/pro/model/Box;->isShowOne()Z

    move-result v2

    invoke-virtual {v1, v2}, Lim/doit/pro/activity/listview/ListViewAdapter;->setShowOne(Z)V

    .line 262
    new-instance v0, Lcom/mobeta/android/dslv/DoitDragSortController;

    .line 263
    iget-object v1, p0, Lim/doit/pro/activity/TaskListFragment;->mListView:Lcom/mobeta/android/dslv/DragSortListView;

    iget-object v2, p0, Lim/doit/pro/activity/TaskListFragment;->mListAdapter:Lim/doit/pro/activity/listview/ListViewAdapter;

    .line 262
    invoke-direct {v0, v1, v2}, Lcom/mobeta/android/dslv/DoitDragSortController;-><init>(Lcom/mobeta/android/dslv/DragSortListView;Lim/doit/pro/activity/listview/ListViewAdapter;)V

    .line 264
    .local v0, "controller":Lcom/mobeta/android/dslv/DoitDragSortController;
    iget-object v1, p0, Lim/doit/pro/activity/TaskListFragment;->mListView:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-virtual {v1, v0}, Lcom/mobeta/android/dslv/DragSortListView;->setFloatViewManager(Lcom/mobeta/android/dslv/DragSortListView$FloatViewManager;)V

    .line 265
    iget-object v1, p0, Lim/doit/pro/activity/TaskListFragment;->mListView:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-virtual {v1, v0}, Lcom/mobeta/android/dslv/DragSortListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 266
    iget-object v1, p0, Lim/doit/pro/activity/TaskListFragment;->mListView:Lcom/mobeta/android/dslv/DragSortListView;

    iget-object v2, p0, Lim/doit/pro/activity/TaskListFragment;->mListAdapter:Lim/doit/pro/activity/listview/ListViewAdapter;

    invoke-virtual {v1, v2}, Lcom/mobeta/android/dslv/DragSortListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 268
    return-void
.end method

.method private loadingTaskAndShowProgress()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 230
    iget-object v0, p0, Lim/doit/pro/activity/TaskListFragment;->loadingTask:Lim/doit/pro/activity/TaskListFragment$LoadingTask;

    if-eqz v0, :cond_0

    .line 235
    :goto_0
    return-void

    .line 233
    :cond_0
    new-instance v0, Lim/doit/pro/activity/TaskListFragment$LoadingTask;

    invoke-direct {v0, p0, v1, v1}, Lim/doit/pro/activity/TaskListFragment$LoadingTask;-><init>(Lim/doit/pro/activity/TaskListFragment;Lim/doit/pro/activity/TaskListFragment$LoadingTask;Lim/doit/pro/activity/TaskListFragment$LoadingTask;)V

    iput-object v0, p0, Lim/doit/pro/activity/TaskListFragment;->loadingTask:Lim/doit/pro/activity/TaskListFragment$LoadingTask;

    .line 234
    iget-object v0, p0, Lim/doit/pro/activity/TaskListFragment;->loadingTask:Lim/doit/pro/activity/TaskListFragment$LoadingTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lim/doit/pro/activity/TaskListFragment$LoadingTask;->execute([Ljava/lang/Object;)Lim/doit/pro/asynctask/DoitAsyncTask;

    goto :goto_0
.end method

.method private loadingTaskNotShowProgress()V
    .locals 2

    .prologue
    .line 238
    iget-object v0, p0, Lim/doit/pro/activity/TaskListFragment;->loadingTask:Lim/doit/pro/activity/TaskListFragment$LoadingTask;

    if-eqz v0, :cond_0

    .line 243
    :goto_0
    return-void

    .line 241
    :cond_0
    new-instance v0, Lim/doit/pro/activity/TaskListFragment$LoadingTaskNotShowProgress;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lim/doit/pro/activity/TaskListFragment$LoadingTaskNotShowProgress;-><init>(Lim/doit/pro/activity/TaskListFragment;Lim/doit/pro/activity/TaskListFragment$LoadingTaskNotShowProgress;)V

    iput-object v0, p0, Lim/doit/pro/activity/TaskListFragment;->loadingTask:Lim/doit/pro/activity/TaskListFragment$LoadingTask;

    .line 242
    iget-object v0, p0, Lim/doit/pro/activity/TaskListFragment;->loadingTask:Lim/doit/pro/activity/TaskListFragment$LoadingTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lim/doit/pro/activity/TaskListFragment$LoadingTask;->execute([Ljava/lang/Object;)Lim/doit/pro/asynctask/DoitAsyncTask;

    goto :goto_0
.end method

.method private prepareDatas()Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;
    .locals 3

    .prologue
    .line 484
    iget-object v2, p0, Lim/doit/pro/activity/TaskListFragment;->mBox:Lim/doit/pro/model/Box;

    invoke-static {v2}, Lim/doit/pro/utils/QueryUtils;->findDatasByBox(Lim/doit/pro/model/Box;)Ljava/util/ArrayList;

    move-result-object v0

    .line 485
    .local v0, "entities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/BaseEntityWithPos;>;"
    iget-object v2, p0, Lim/doit/pro/activity/TaskListFragment;->mBoxGrouper:Lim/doit/pro/activity/listview/group/DoitListViewGrouper;

    if-nez v2, :cond_0

    .line 486
    new-instance v2, Lim/doit/pro/activity/listview/group/DoitListViewGrouper;

    invoke-direct {v2}, Lim/doit/pro/activity/listview/group/DoitListViewGrouper;-><init>()V

    iput-object v2, p0, Lim/doit/pro/activity/TaskListFragment;->mBoxGrouper:Lim/doit/pro/activity/listview/group/DoitListViewGrouper;

    .line 488
    :cond_0
    invoke-direct {p0, v0}, Lim/doit/pro/activity/TaskListFragment;->filterAndGroupDatas(Ljava/util/ArrayList;)Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;

    move-result-object v1

    .line 489
    .local v1, "result":Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;
    invoke-virtual {v1, v0}, Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;->setEntities(Ljava/util/ArrayList;)V

    .line 490
    return-object v1
.end method

.method private setPullEnable()V
    .locals 2

    .prologue
    .line 307
    iget-object v0, p0, Lim/doit/pro/activity/TaskListFragment;->mPullToRefreshLayout:Lim/doit/pro/ui/component/pullrefresh/PullToRefreshLayout;

    if-nez v0, :cond_0

    .line 315
    :goto_0
    return-void

    .line 310
    :cond_0
    iget-object v0, p0, Lim/doit/pro/activity/TaskListFragment;->mListAdapter:Lim/doit/pro/activity/listview/ListViewAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lim/doit/pro/activity/TaskListFragment;->mListAdapter:Lim/doit/pro/activity/listview/ListViewAdapter;

    invoke-virtual {v0}, Lim/doit/pro/activity/listview/ListViewAdapter;->getSelectedCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 311
    iget-object v0, p0, Lim/doit/pro/activity/TaskListFragment;->mPullToRefreshLayout:Lim/doit/pro/ui/component/pullrefresh/PullToRefreshLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshLayout;->setEnabled(Z)V

    goto :goto_0

    .line 313
    :cond_1
    iget-object v0, p0, Lim/doit/pro/activity/TaskListFragment;->mPullToRefreshLayout:Lim/doit/pro/ui/component/pullrefresh/PullToRefreshLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshLayout;->setEnabled(Z)V

    goto :goto_0
.end method


# virtual methods
.method protected afterSync()V
    .locals 0

    .prologue
    .line 217
    invoke-super {p0}, Lim/doit/pro/activity/BaseListFragment;->afterSync()V

    .line 218
    invoke-direct {p0}, Lim/doit/pro/activity/TaskListFragment;->loadingTaskNotShowProgress()V

    .line 219
    return-void
.end method

.method public archiveTasks()V
    .locals 4

    .prologue
    .line 101
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 102
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "dialog_message"

    const v3, 0x7f0c0193

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 103
    const-string v2, "dialog_positive_button"

    const v3, 0x7f0c002c

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 104
    const-string v2, "dialog_negative_button"

    const v3, 0x7f0c0027

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 105
    invoke-virtual {p0}, Lim/doit/pro/activity/TaskListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v0}, Lim/doit/pro/utils/AlertDialogUtils;->showDialog(Landroid/app/Activity;Landroid/os/Bundle;)Lim/doit/pro/ui/component/DMessageDialog;

    move-result-object v1

    .line 107
    .local v1, "dialog":Lim/doit/pro/ui/component/DMessageDialog;
    new-instance v2, Lim/doit/pro/activity/TaskListFragment$1;

    invoke-direct {v2, p0}, Lim/doit/pro/activity/TaskListFragment$1;-><init>(Lim/doit/pro/activity/TaskListFragment;)V

    invoke-virtual {v1, v2}, Lim/doit/pro/ui/component/DMessageDialog;->setOnPositiveButtonClickListener(Lim/doit/pro/ui/component/DMessageDialog$OnButtonClickListener;)Lim/doit/pro/ui/component/DMessageDialog;

    move-result-object v2

    .line 117
    new-instance v3, Lim/doit/pro/activity/TaskListFragment$2;

    invoke-direct {v3, p0}, Lim/doit/pro/activity/TaskListFragment$2;-><init>(Lim/doit/pro/activity/TaskListFragment;)V

    invoke-virtual {v2, v3}, Lim/doit/pro/ui/component/DMessageDialog;->setOnNegativeButtonClickListener(Lim/doit/pro/ui/component/DMessageDialog$OnButtonClickListener;)Lim/doit/pro/ui/component/DMessageDialog;

    .line 128
    invoke-virtual {p0}, Lim/doit/pro/activity/TaskListFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "DIALOG_TAG_ARCHIVE_TASKS"

    invoke-virtual {v1, v2, v3}, Lim/doit/pro/ui/component/DMessageDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 129
    return-void
.end method

.method protected dismissDialog()V
    .locals 1

    .prologue
    .line 511
    invoke-virtual {p0}, Lim/doit/pro/activity/TaskListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lim/doit/pro/ui/component/DProgressDialog;->closeDialog(Landroid/app/Activity;)V

    .line 512
    return-void
.end method

.method public emptyTasks()V
    .locals 4

    .prologue
    .line 133
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 134
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "dialog_message"

    const v3, 0x7f0c0192

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 135
    const-string v2, "dialog_positive_button"

    const v3, 0x7f0c002c

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 136
    const-string v2, "dialog_negative_button"

    const v3, 0x7f0c0027

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 137
    invoke-virtual {p0}, Lim/doit/pro/activity/TaskListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v0}, Lim/doit/pro/utils/AlertDialogUtils;->showDialog(Landroid/app/Activity;Landroid/os/Bundle;)Lim/doit/pro/ui/component/DMessageDialog;

    move-result-object v1

    .line 139
    .local v1, "dialog":Lim/doit/pro/ui/component/DMessageDialog;
    new-instance v2, Lim/doit/pro/activity/TaskListFragment$3;

    invoke-direct {v2, p0}, Lim/doit/pro/activity/TaskListFragment$3;-><init>(Lim/doit/pro/activity/TaskListFragment;)V

    invoke-virtual {v1, v2}, Lim/doit/pro/ui/component/DMessageDialog;->setOnPositiveButtonClickListener(Lim/doit/pro/ui/component/DMessageDialog$OnButtonClickListener;)Lim/doit/pro/ui/component/DMessageDialog;

    move-result-object v2

    .line 149
    new-instance v3, Lim/doit/pro/activity/TaskListFragment$4;

    invoke-direct {v3, p0}, Lim/doit/pro/activity/TaskListFragment$4;-><init>(Lim/doit/pro/activity/TaskListFragment;)V

    invoke-virtual {v2, v3}, Lim/doit/pro/ui/component/DMessageDialog;->setOnNegativeButtonClickListener(Lim/doit/pro/ui/component/DMessageDialog$OnButtonClickListener;)Lim/doit/pro/ui/component/DMessageDialog;

    .line 160
    invoke-virtual {p0}, Lim/doit/pro/activity/TaskListFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "DIALOG_TAG_EMPTY_TASKS"

    invoke-virtual {v1, v2, v3}, Lim/doit/pro/ui/component/DMessageDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 161
    return-void
.end method

.method public finishActionMode()V
    .locals 1

    .prologue
    .line 521
    iget-object v0, p0, Lim/doit/pro/activity/TaskListFragment;->mListAdapter:Lim/doit/pro/activity/listview/ListViewAdapter;

    if-eqz v0, :cond_0

    .line 522
    iget-object v0, p0, Lim/doit/pro/activity/TaskListFragment;->mListAdapter:Lim/doit/pro/activity/listview/ListViewAdapter;

    invoke-virtual {v0}, Lim/doit/pro/activity/listview/ListViewAdapter;->finishActionMode()V

    .line 524
    :cond_0
    return-void
.end method

.method public getTagFilter()Lim/doit/pro/ui/model/TagFilter;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lim/doit/pro/activity/TaskListFragment;->mTagFilter:Lim/doit/pro/ui/model/TagFilter;

    return-object v0
.end method

.method public getTags()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 164
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 165
    .local v0, "tags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v1, p0, Lim/doit/pro/activity/TaskListFragment;->mListAdapter:Lim/doit/pro/activity/listview/ListViewAdapter;

    if-nez v1, :cond_0

    .line 168
    .end local v0    # "tags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_0
    return-object v0

    .restart local v0    # "tags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    iget-object v1, p0, Lim/doit/pro/activity/TaskListFragment;->mListAdapter:Lim/doit/pro/activity/listview/ListViewAdapter;

    invoke-virtual {v1}, Lim/doit/pro/activity/listview/ListViewAdapter;->getTags()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method protected groupBy()V
    .locals 2

    .prologue
    .line 222
    iget-object v0, p0, Lim/doit/pro/activity/TaskListFragment;->mTagFilterAndGroupTask:Lim/doit/pro/activity/TaskListFragment$TagFilterAndGroupTask;

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lim/doit/pro/activity/TaskListFragment;->mTagFilterAndGroupTask:Lim/doit/pro/activity/TaskListFragment$TagFilterAndGroupTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lim/doit/pro/activity/TaskListFragment$TagFilterAndGroupTask;->cancel(Z)Z

    .line 225
    :cond_0
    new-instance v0, Lim/doit/pro/activity/TaskListFragment$TagFilterAndGroupTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lim/doit/pro/activity/TaskListFragment$TagFilterAndGroupTask;-><init>(Lim/doit/pro/activity/TaskListFragment;Lim/doit/pro/activity/TaskListFragment$TagFilterAndGroupTask;)V

    iput-object v0, p0, Lim/doit/pro/activity/TaskListFragment;->mTagFilterAndGroupTask:Lim/doit/pro/activity/TaskListFragment$TagFilterAndGroupTask;

    .line 226
    iget-object v0, p0, Lim/doit/pro/activity/TaskListFragment;->mTagFilterAndGroupTask:Lim/doit/pro/activity/TaskListFragment$TagFilterAndGroupTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lim/doit/pro/activity/TaskListFragment$TagFilterAndGroupTask;->execute([Ljava/lang/Object;)Lim/doit/pro/asynctask/DoitAsyncTask;

    .line 227
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 187
    const/4 v0, 0x1

    iput-boolean v0, p0, Lim/doit/pro/activity/TaskListFragment;->isCreateView:Z

    .line 188
    if-eqz p3, :cond_0

    .line 189
    iput-object p3, p0, Lim/doit/pro/activity/TaskListFragment;->mArgs:Landroid/os/Bundle;

    .line 191
    :cond_0
    invoke-direct {p0}, Lim/doit/pro/activity/TaskListFragment;->initData()V

    .line 192
    const v0, 0x7f030042

    .line 193
    const/4 v1, 0x0

    .line 192
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lim/doit/pro/activity/TaskListFragment;->layoutView:Landroid/view/View;

    .line 194
    invoke-direct {p0}, Lim/doit/pro/activity/TaskListFragment;->initView()V

    .line 195
    invoke-direct {p0}, Lim/doit/pro/activity/TaskListFragment;->initListener()V

    .line 196
    invoke-direct {p0}, Lim/doit/pro/activity/TaskListFragment;->loadingTaskAndShowProgress()V

    .line 197
    iget-object v0, p0, Lim/doit/pro/activity/TaskListFragment;->layoutView:Landroid/view/View;

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 81
    iget-object v0, p0, Lim/doit/pro/activity/TaskListFragment;->loadingTask:Lim/doit/pro/activity/TaskListFragment$LoadingTask;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lim/doit/pro/activity/TaskListFragment;->loadingTask:Lim/doit/pro/activity/TaskListFragment$LoadingTask;

    invoke-virtual {v0, v1}, Lim/doit/pro/activity/TaskListFragment$LoadingTask;->cancel(Z)Z

    .line 84
    :cond_0
    iget-object v0, p0, Lim/doit/pro/activity/TaskListFragment;->mArchiveTasks:Lim/doit/pro/activity/TaskListFragment$ArchiveTasks;

    if-eqz v0, :cond_1

    .line 85
    iget-object v0, p0, Lim/doit/pro/activity/TaskListFragment;->mArchiveTasks:Lim/doit/pro/activity/TaskListFragment$ArchiveTasks;

    invoke-virtual {v0, v1}, Lim/doit/pro/activity/TaskListFragment$ArchiveTasks;->cancel(Z)Z

    .line 87
    :cond_1
    iget-object v0, p0, Lim/doit/pro/activity/TaskListFragment;->mEmptyTasks:Lim/doit/pro/activity/TaskListFragment$EmptyTasks;

    if-eqz v0, :cond_2

    .line 88
    iget-object v0, p0, Lim/doit/pro/activity/TaskListFragment;->mEmptyTasks:Lim/doit/pro/activity/TaskListFragment$EmptyTasks;

    invoke-virtual {v0, v1}, Lim/doit/pro/activity/TaskListFragment$EmptyTasks;->cancel(Z)Z

    .line 90
    :cond_2
    iget-object v0, p0, Lim/doit/pro/activity/TaskListFragment;->mTagFilterAndGroupTask:Lim/doit/pro/activity/TaskListFragment$TagFilterAndGroupTask;

    if-eqz v0, :cond_3

    .line 91
    iget-object v0, p0, Lim/doit/pro/activity/TaskListFragment;->mTagFilterAndGroupTask:Lim/doit/pro/activity/TaskListFragment$TagFilterAndGroupTask;

    invoke-virtual {v0, v1}, Lim/doit/pro/activity/TaskListFragment$TagFilterAndGroupTask;->cancel(Z)Z

    .line 93
    :cond_3
    invoke-super {p0}, Lim/doit/pro/activity/BaseListFragment;->onDestroy()V

    .line 94
    return-void
.end method

.method public onRefreshStarted(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 516
    invoke-virtual {p0}, Lim/doit/pro/activity/TaskListFragment;->sendSyncManyBroadcast()V

    .line 517
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 208
    invoke-super {p0}, Lim/doit/pro/activity/BaseListFragment;->onResume()V

    .line 209
    iget-boolean v0, p0, Lim/doit/pro/activity/TaskListFragment;->isCreateView:Z

    if-nez v0, :cond_0

    .line 210
    invoke-direct {p0}, Lim/doit/pro/activity/TaskListFragment;->loadingTaskNotShowProgress()V

    .line 212
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lim/doit/pro/activity/TaskListFragment;->isCreateView:Z

    .line 213
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 75
    invoke-super {p0, p1}, Lim/doit/pro/activity/BaseListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 76
    const-string v0, "box"

    iget-object v1, p0, Lim/doit/pro/activity/TaskListFragment;->mBox:Lim/doit/pro/model/Box;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 77
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 202
    invoke-super {p0, p1, p2}, Lim/doit/pro/activity/BaseListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 203
    invoke-direct {p0}, Lim/doit/pro/activity/TaskListFragment;->initPullToRefreshView()V

    .line 204
    return-void
.end method

.method public setShowOne(Z)V
    .locals 1
    .param p1, "showOne"    # Z

    .prologue
    .line 97
    iget-object v0, p0, Lim/doit/pro/activity/TaskListFragment;->mListAdapter:Lim/doit/pro/activity/listview/ListViewAdapter;

    invoke-virtual {v0, p1}, Lim/doit/pro/activity/listview/ListViewAdapter;->setShowOneAndRefresView(Z)V

    .line 98
    return-void
.end method

.method public setTagFitler(Lim/doit/pro/ui/model/TagFilter;)V
    .locals 2
    .param p1, "tagFilter"    # Lim/doit/pro/ui/model/TagFilter;

    .prologue
    .line 172
    iput-object p1, p0, Lim/doit/pro/activity/TaskListFragment;->mTagFilter:Lim/doit/pro/ui/model/TagFilter;

    .line 173
    iget-object v0, p0, Lim/doit/pro/activity/TaskListFragment;->mTagFilterAndGroupTask:Lim/doit/pro/activity/TaskListFragment$TagFilterAndGroupTask;

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lim/doit/pro/activity/TaskListFragment;->mTagFilterAndGroupTask:Lim/doit/pro/activity/TaskListFragment$TagFilterAndGroupTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lim/doit/pro/activity/TaskListFragment$TagFilterAndGroupTask;->cancel(Z)Z

    .line 176
    :cond_0
    new-instance v0, Lim/doit/pro/activity/TaskListFragment$TagFilterAndGroupTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lim/doit/pro/activity/TaskListFragment$TagFilterAndGroupTask;-><init>(Lim/doit/pro/activity/TaskListFragment;Lim/doit/pro/activity/TaskListFragment$TagFilterAndGroupTask;)V

    iput-object v0, p0, Lim/doit/pro/activity/TaskListFragment;->mTagFilterAndGroupTask:Lim/doit/pro/activity/TaskListFragment$TagFilterAndGroupTask;

    .line 177
    iget-object v0, p0, Lim/doit/pro/activity/TaskListFragment;->mTagFilterAndGroupTask:Lim/doit/pro/activity/TaskListFragment$TagFilterAndGroupTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lim/doit/pro/activity/TaskListFragment$TagFilterAndGroupTask;->execute([Ljava/lang/Object;)Lim/doit/pro/asynctask/DoitAsyncTask;

    .line 178
    return-void
.end method
