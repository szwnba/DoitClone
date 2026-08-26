.class public Lim/doit/pro/activity/TaskContextViewPagerActivity;
.super Lim/doit/pro/activity/BaseViewPagerActivity;
.source "TaskContextViewPagerActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lim/doit/pro/activity/TaskContextViewPagerActivity$ListAdapter;,
        Lim/doit/pro/activity/TaskContextViewPagerActivity$LoadingTask;,
        Lim/doit/pro/activity/TaskContextViewPagerActivity$LoadingTaskNotShowProgress;,
        Lim/doit/pro/activity/TaskContextViewPagerActivity$TaskContextViewHolder;
    }
.end annotation


# instance fields
.field private mListView:Lcom/mobeta/android/dslv/DragSortListView;

.field private mListViewEmptyView:Lim/doit/pro/ui/component/ListViewEmptyView;

.field private mLoadingTask:Lim/doit/pro/activity/TaskContextViewPagerActivity$LoadingTask;

.field private mTaskContext:Lim/doit/pro/model/TaskContext;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lim/doit/pro/activity/BaseViewPagerActivity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lim/doit/pro/activity/TaskContextViewPagerActivity;)Lim/doit/pro/model/TaskContext;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lim/doit/pro/activity/TaskContextViewPagerActivity;->mTaskContext:Lim/doit/pro/model/TaskContext;

    return-object v0
.end method

.method static synthetic access$1(Lim/doit/pro/activity/TaskContextViewPagerActivity;)Lim/doit/pro/ui/component/ListViewEmptyView;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lim/doit/pro/activity/TaskContextViewPagerActivity;->mListViewEmptyView:Lim/doit/pro/ui/component/ListViewEmptyView;

    return-object v0
.end method

.method static synthetic access$2(Lim/doit/pro/activity/TaskContextViewPagerActivity;Lim/doit/pro/activity/TaskContextViewPagerActivity$LoadingTask;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lim/doit/pro/activity/TaskContextViewPagerActivity;->mLoadingTask:Lim/doit/pro/activity/TaskContextViewPagerActivity$LoadingTask;

    return-void
.end method

.method private initData()V
    .locals 2

    .prologue
    .line 69
    invoke-virtual {p0}, Lim/doit/pro/activity/TaskContextViewPagerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 70
    const-string v1, "taskContext"

    .line 69
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lim/doit/pro/model/TaskContext;

    iput-object v0, p0, Lim/doit/pro/activity/TaskContextViewPagerActivity;->mTaskContext:Lim/doit/pro/model/TaskContext;

    .line 71
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

    .line 220
    iget-object v2, p0, Lim/doit/pro/activity/TaskContextViewPagerActivity;->mBoxGrouper:Lim/doit/pro/activity/listview/group/DoitListViewGrouper;

    if-nez v2, :cond_0

    .line 221
    new-instance v2, Lim/doit/pro/activity/listview/group/DoitListViewGrouper;

    invoke-direct {v2}, Lim/doit/pro/activity/listview/group/DoitListViewGrouper;-><init>()V

    iput-object v2, p0, Lim/doit/pro/activity/TaskContextViewPagerActivity;->mBoxGrouper:Lim/doit/pro/activity/listview/group/DoitListViewGrouper;

    .line 224
    :cond_0
    iget-object v2, p0, Lim/doit/pro/activity/TaskContextViewPagerActivity;->mTagFilter:Lim/doit/pro/ui/model/TagFilter;

    invoke-static {v2, p1}, Lim/doit/pro/utils/TaskUtils;->filterDatasByTags(Lim/doit/pro/ui/model/TagFilter;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    .line 225
    .local v0, "entitiesByTagFitler":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/BaseEntityWithPos;>;"
    iget-object v2, p0, Lim/doit/pro/activity/TaskContextViewPagerActivity;->mBoxGrouper:Lim/doit/pro/activity/listview/group/DoitListViewGrouper;

    .line 226
    iget-object v3, p0, Lim/doit/pro/activity/TaskContextViewPagerActivity;->mTaskContext:Lim/doit/pro/model/TaskContext;

    invoke-static {v3}, Lim/doit/pro/utils/BoxUtils;->getDefaultGroupBy(Lim/doit/pro/model/TaskContext;)Lim/doit/pro/model/enums/GroupByType;

    move-result-object v3

    .line 225
    invoke-virtual {v2, v3, v0}, Lim/doit/pro/activity/listview/group/DoitListViewGrouper;->group(Lim/doit/pro/model/enums/GroupByType;Ljava/util/ArrayList;)Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;

    move-result-object v1

    .line 227
    .local v1, "result":Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;
    invoke-virtual {v1, p1}, Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;->setEntities(Ljava/util/ArrayList;)V

    .line 228
    iget-object v2, p0, Lim/doit/pro/activity/TaskContextViewPagerActivity;->mTagFilter:Lim/doit/pro/ui/model/TagFilter;

    if-eqz v2, :cond_2

    .line 229
    iget-object v2, p0, Lim/doit/pro/activity/TaskContextViewPagerActivity;->mTagFilter:Lim/doit/pro/ui/model/TagFilter;

    invoke-virtual {v2}, Lim/doit/pro/ui/model/TagFilter;->getTags()Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v2}, Lim/doit/pro/utils/CollectionUtils;->isNotEmpty(Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lim/doit/pro/activity/TaskContextViewPagerActivity;->mTagFilter:Lim/doit/pro/ui/model/TagFilter;

    .line 230
    invoke-virtual {v2}, Lim/doit/pro/ui/model/TagFilter;->isUntagged()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 231
    :cond_1
    invoke-virtual {v1}, Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;->getGroupers()Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lim/doit/pro/activity/TaskContextViewPagerActivity;->mTagFilter:Lim/doit/pro/ui/model/TagFilter;

    invoke-virtual {v2, v4, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 232
    invoke-virtual {v1}, Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;->getChildren()Ljava/util/ArrayList;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v4, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 234
    :cond_2
    invoke-virtual {v1}, Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;->getGroupers()Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lim/doit/pro/activity/TaskContextViewPagerActivity;->mTaskContext:Lim/doit/pro/model/TaskContext;

    invoke-virtual {v2, v4, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 235
    invoke-virtual {v1}, Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;->getChildren()Ljava/util/ArrayList;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v4, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 236
    return-object v1
.end method

.method protected initView()V
    .locals 3

    .prologue
    .line 75
    invoke-super {p0}, Lim/doit/pro/activity/BaseViewPagerActivity;->initView()V

    .line 76
    const v1, 0x7f0b006f

    invoke-virtual {p0, v1}, Lim/doit/pro/activity/TaskContextViewPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lim/doit/pro/ui/component/ListViewEmptyView;

    iput-object v1, p0, Lim/doit/pro/activity/TaskContextViewPagerActivity;->mListViewEmptyView:Lim/doit/pro/ui/component/ListViewEmptyView;

    .line 77
    const v1, 0x7f0b0069

    invoke-virtual {p0, v1}, Lim/doit/pro/activity/TaskContextViewPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/mobeta/android/dslv/DragSortListView;

    iput-object v1, p0, Lim/doit/pro/activity/TaskContextViewPagerActivity;->mListView:Lcom/mobeta/android/dslv/DragSortListView;

    .line 78
    new-instance v1, Lim/doit/pro/activity/TaskContextViewPagerActivity$ListAdapter;

    iget-object v2, p0, Lim/doit/pro/activity/TaskContextViewPagerActivity;->mListView:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-direct {v1, p0, p0, v2}, Lim/doit/pro/activity/TaskContextViewPagerActivity$ListAdapter;-><init>(Lim/doit/pro/activity/TaskContextViewPagerActivity;Landroid/content/Context;Lcom/mobeta/android/dslv/DragSortListView;)V

    iput-object v1, p0, Lim/doit/pro/activity/TaskContextViewPagerActivity;->mListAdapter:Lim/doit/pro/activity/listview/ListViewAdapter;

    .line 79
    iget-object v1, p0, Lim/doit/pro/activity/TaskContextViewPagerActivity;->mListView:Lcom/mobeta/android/dslv/DragSortListView;

    iget-object v2, p0, Lim/doit/pro/activity/TaskContextViewPagerActivity;->mListAdapter:Lim/doit/pro/activity/listview/ListViewAdapter;

    invoke-virtual {v1, v2}, Lcom/mobeta/android/dslv/DragSortListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 80
    new-instance v0, Lcom/mobeta/android/dslv/DoitDragSortController;

    .line 81
    iget-object v1, p0, Lim/doit/pro/activity/TaskContextViewPagerActivity;->mListView:Lcom/mobeta/android/dslv/DragSortListView;

    iget-object v2, p0, Lim/doit/pro/activity/TaskContextViewPagerActivity;->mListAdapter:Lim/doit/pro/activity/listview/ListViewAdapter;

    .line 80
    invoke-direct {v0, v1, v2}, Lcom/mobeta/android/dslv/DoitDragSortController;-><init>(Lcom/mobeta/android/dslv/DragSortListView;Lim/doit/pro/activity/listview/ListViewAdapter;)V

    .line 82
    .local v0, "controller":Lcom/mobeta/android/dslv/DoitDragSortController;
    iget-object v1, p0, Lim/doit/pro/activity/TaskContextViewPagerActivity;->mListView:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-virtual {v1, v0}, Lcom/mobeta/android/dslv/DragSortListView;->setFloatViewManager(Lcom/mobeta/android/dslv/DragSortListView$FloatViewManager;)V

    .line 83
    iget-object v1, p0, Lim/doit/pro/activity/TaskContextViewPagerActivity;->mListView:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-virtual {v1, v0}, Lcom/mobeta/android/dslv/DragSortListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 85
    iget-object v1, p0, Lim/doit/pro/activity/TaskContextViewPagerActivity;->mListView:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-virtual {p0, v1}, Lim/doit/pro/activity/TaskContextViewPagerActivity;->initPullToRefreshView(Landroid/widget/ListView;)V

    .line 86
    return-void
.end method

.method protected initViewContent()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 90
    invoke-super {p0}, Lim/doit/pro/activity/BaseViewPagerActivity;->initViewContent()V

    .line 91
    invoke-virtual {p0}, Lim/doit/pro/activity/TaskContextViewPagerActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iget-object v1, p0, Lim/doit/pro/activity/TaskContextViewPagerActivity;->mTaskContext:Lim/doit/pro/model/TaskContext;

    invoke-virtual {v1}, Lim/doit/pro/model/TaskContext;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 92
    new-instance v0, Lim/doit/pro/activity/TaskContextViewPagerActivity$LoadingTask;

    invoke-direct {v0, p0, v2, v2}, Lim/doit/pro/activity/TaskContextViewPagerActivity$LoadingTask;-><init>(Lim/doit/pro/activity/TaskContextViewPagerActivity;Lim/doit/pro/activity/TaskContextViewPagerActivity$LoadingTask;Lim/doit/pro/activity/TaskContextViewPagerActivity$LoadingTask;)V

    iput-object v0, p0, Lim/doit/pro/activity/TaskContextViewPagerActivity;->mLoadingTask:Lim/doit/pro/activity/TaskContextViewPagerActivity$LoadingTask;

    .line 93
    iget-object v0, p0, Lim/doit/pro/activity/TaskContextViewPagerActivity;->mLoadingTask:Lim/doit/pro/activity/TaskContextViewPagerActivity$LoadingTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lim/doit/pro/activity/TaskContextViewPagerActivity$LoadingTask;->execute([Ljava/lang/Object;)Lim/doit/pro/asynctask/DoitAsyncTask;

    .line 94
    return-void
.end method

.method protected loadingTaskNotShowProgress()V
    .locals 2

    .prologue
    .line 164
    iget-object v0, p0, Lim/doit/pro/activity/TaskContextViewPagerActivity;->mLoadingTask:Lim/doit/pro/activity/TaskContextViewPagerActivity$LoadingTask;

    if-eqz v0, :cond_0

    .line 175
    :goto_0
    return-void

    .line 167
    :cond_0
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v0

    iget-object v0, v0, Lim/doit/pro/db/Persist;->taskContextDao:Lim/doit/pro/db/persist/TaskContextDao;

    iget-object v1, p0, Lim/doit/pro/activity/TaskContextViewPagerActivity;->mTaskContext:Lim/doit/pro/model/TaskContext;

    .line 168
    invoke-virtual {v1}, Lim/doit/pro/model/TaskContext;->getUuid()Ljava/lang/String;

    move-result-object v1

    .line 167
    invoke-virtual {v0, v1}, Lim/doit/pro/db/persist/TaskContextDao;->findByUUID(Ljava/lang/String;)Lim/doit/pro/model/BaseEntity;

    move-result-object v0

    check-cast v0, Lim/doit/pro/model/TaskContext;

    iput-object v0, p0, Lim/doit/pro/activity/TaskContextViewPagerActivity;->mTaskContext:Lim/doit/pro/model/TaskContext;

    .line 169
    iget-object v0, p0, Lim/doit/pro/activity/TaskContextViewPagerActivity;->mTaskContext:Lim/doit/pro/model/TaskContext;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lim/doit/pro/activity/TaskContextViewPagerActivity;->mTaskContext:Lim/doit/pro/model/TaskContext;

    invoke-virtual {v0}, Lim/doit/pro/model/TaskContext;->isDeleted()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 170
    :cond_1
    invoke-virtual {p0}, Lim/doit/pro/activity/TaskContextViewPagerActivity;->finish()V

    goto :goto_0

    .line 173
    :cond_2
    new-instance v0, Lim/doit/pro/activity/TaskContextViewPagerActivity$LoadingTaskNotShowProgress;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lim/doit/pro/activity/TaskContextViewPagerActivity$LoadingTaskNotShowProgress;-><init>(Lim/doit/pro/activity/TaskContextViewPagerActivity;Lim/doit/pro/activity/TaskContextViewPagerActivity$LoadingTaskNotShowProgress;)V

    iput-object v0, p0, Lim/doit/pro/activity/TaskContextViewPagerActivity;->mLoadingTask:Lim/doit/pro/activity/TaskContextViewPagerActivity$LoadingTask;

    .line 174
    iget-object v0, p0, Lim/doit/pro/activity/TaskContextViewPagerActivity;->mLoadingTask:Lim/doit/pro/activity/TaskContextViewPagerActivity$LoadingTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lim/doit/pro/activity/TaskContextViewPagerActivity$LoadingTask;->execute([Ljava/lang/Object;)Lim/doit/pro/asynctask/DoitAsyncTask;

    goto :goto_0
.end method

.method protected onAddClick()V
    .locals 3

    .prologue
    .line 241
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lim/doit/pro/activity/TaskDetailActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 242
    .local v0, "addIntent":Landroid/content/Intent;
    const-string v1, "taskContext"

    iget-object v2, p0, Lim/doit/pro/activity/TaskContextViewPagerActivity;->mTaskContext:Lim/doit/pro/model/TaskContext;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 243
    invoke-virtual {p0, v0}, Lim/doit/pro/activity/TaskContextViewPagerActivity;->startActivity(Landroid/content/Intent;)V

    .line 244
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 43
    invoke-super {p0, p1}, Lim/doit/pro/activity/BaseViewPagerActivity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    const v0, 0x7f030044

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/TaskContextViewPagerActivity;->setContentView(I)V

    .line 45
    invoke-direct {p0}, Lim/doit/pro/activity/TaskContextViewPagerActivity;->initData()V

    .line 46
    invoke-virtual {p0}, Lim/doit/pro/activity/TaskContextViewPagerActivity;->initView()V

    .line 47
    invoke-virtual {p0}, Lim/doit/pro/activity/TaskContextViewPagerActivity;->initViewContent()V

    .line 48
    invoke-virtual {p0}, Lim/doit/pro/activity/TaskContextViewPagerActivity;->initListener()V

    .line 49
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 62
    iget-object v0, p0, Lim/doit/pro/activity/TaskContextViewPagerActivity;->mLoadingTask:Lim/doit/pro/activity/TaskContextViewPagerActivity$LoadingTask;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lim/doit/pro/activity/TaskContextViewPagerActivity;->mLoadingTask:Lim/doit/pro/activity/TaskContextViewPagerActivity$LoadingTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lim/doit/pro/activity/TaskContextViewPagerActivity$LoadingTask;->cancel(Z)Z

    .line 65
    :cond_0
    invoke-super {p0}, Lim/doit/pro/activity/BaseViewPagerActivity;->onDestroy()V

    .line 66
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 53
    invoke-super {p0}, Lim/doit/pro/activity/BaseViewPagerActivity;->onResume()V

    .line 54
    iget-boolean v0, p0, Lim/doit/pro/activity/TaskContextViewPagerActivity;->mIsCreateView:Z

    if-nez v0, :cond_0

    .line 55
    invoke-virtual {p0}, Lim/doit/pro/activity/TaskContextViewPagerActivity;->loadingTaskNotShowProgress()V

    .line 57
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lim/doit/pro/activity/TaskContextViewPagerActivity;->mIsCreateView:Z

    .line 58
    return-void
.end method
