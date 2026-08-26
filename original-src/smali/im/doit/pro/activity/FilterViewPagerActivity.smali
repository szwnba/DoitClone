.class public Lim/doit/pro/activity/FilterViewPagerActivity;
.super Lim/doit/pro/activity/BaseViewPagerActivity;
.source "FilterViewPagerActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lim/doit/pro/activity/FilterViewPagerActivity$ListAdapter;,
        Lim/doit/pro/activity/FilterViewPagerActivity$LoadingTask;,
        Lim/doit/pro/activity/FilterViewPagerActivity$LoadingTaskNotShowProgress;
    }
.end annotation


# instance fields
.field private mFilter:Lim/doit/pro/model/Filter;

.field private mListView:Lcom/mobeta/android/dslv/DragSortListView;

.field private mListViewEmptyView:Lim/doit/pro/ui/component/ListViewEmptyView;

.field private mLoadingTask:Lim/doit/pro/activity/FilterViewPagerActivity$LoadingTask;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lim/doit/pro/activity/BaseViewPagerActivity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lim/doit/pro/activity/FilterViewPagerActivity;)Lim/doit/pro/model/Filter;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lim/doit/pro/activity/FilterViewPagerActivity;->mFilter:Lim/doit/pro/model/Filter;

    return-object v0
.end method

.method static synthetic access$1(Lim/doit/pro/activity/FilterViewPagerActivity;)Lim/doit/pro/ui/component/ListViewEmptyView;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lim/doit/pro/activity/FilterViewPagerActivity;->mListViewEmptyView:Lim/doit/pro/ui/component/ListViewEmptyView;

    return-object v0
.end method

.method static synthetic access$2(Lim/doit/pro/activity/FilterViewPagerActivity;Lim/doit/pro/activity/FilterViewPagerActivity$LoadingTask;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lim/doit/pro/activity/FilterViewPagerActivity;->mLoadingTask:Lim/doit/pro/activity/FilterViewPagerActivity$LoadingTask;

    return-void
.end method

.method private initData()V
    .locals 2

    .prologue
    .line 70
    invoke-virtual {p0}, Lim/doit/pro/activity/FilterViewPagerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "filter"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lim/doit/pro/model/Filter;

    iput-object v0, p0, Lim/doit/pro/activity/FilterViewPagerActivity;->mFilter:Lim/doit/pro/model/Filter;

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

    .line 138
    iget-object v2, p0, Lim/doit/pro/activity/FilterViewPagerActivity;->mTagFilter:Lim/doit/pro/ui/model/TagFilter;

    invoke-static {v2, p1}, Lim/doit/pro/utils/TaskUtils;->filterDatasByTags(Lim/doit/pro/ui/model/TagFilter;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    .line 140
    .local v0, "entitiesByTagFitler":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/BaseEntityWithPos;>;"
    iget-object v2, p0, Lim/doit/pro/activity/FilterViewPagerActivity;->mFilter:Lim/doit/pro/model/Filter;

    invoke-static {v2, v0}, Lim/doit/pro/utils/QueryUtils;->groupAndSortDatasByFilter(Lim/doit/pro/model/Filter;Ljava/util/ArrayList;)Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;

    move-result-object v1

    .line 141
    .local v1, "result":Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;
    invoke-virtual {v1, p1}, Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;->setEntities(Ljava/util/ArrayList;)V

    .line 142
    iget-object v2, p0, Lim/doit/pro/activity/FilterViewPagerActivity;->mTagFilter:Lim/doit/pro/ui/model/TagFilter;

    if-eqz v2, :cond_1

    .line 143
    iget-object v2, p0, Lim/doit/pro/activity/FilterViewPagerActivity;->mTagFilter:Lim/doit/pro/ui/model/TagFilter;

    invoke-virtual {v2}, Lim/doit/pro/ui/model/TagFilter;->getTags()Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v2}, Lim/doit/pro/utils/CollectionUtils;->isNotEmpty(Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lim/doit/pro/activity/FilterViewPagerActivity;->mTagFilter:Lim/doit/pro/ui/model/TagFilter;

    .line 144
    invoke-virtual {v2}, Lim/doit/pro/ui/model/TagFilter;->isUntagged()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 145
    :cond_0
    invoke-virtual {v1}, Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;->getGroupers()Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lim/doit/pro/activity/FilterViewPagerActivity;->mTagFilter:Lim/doit/pro/ui/model/TagFilter;

    invoke-virtual {v2, v4, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 146
    invoke-virtual {v1}, Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;->getChildren()Ljava/util/ArrayList;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v4, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 148
    :cond_1
    return-object v1
.end method

.method protected initView()V
    .locals 3

    .prologue
    .line 75
    invoke-super {p0}, Lim/doit/pro/activity/BaseViewPagerActivity;->initView()V

    .line 76
    const v1, 0x7f0b006f

    invoke-virtual {p0, v1}, Lim/doit/pro/activity/FilterViewPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lim/doit/pro/ui/component/ListViewEmptyView;

    iput-object v1, p0, Lim/doit/pro/activity/FilterViewPagerActivity;->mListViewEmptyView:Lim/doit/pro/ui/component/ListViewEmptyView;

    .line 77
    const v1, 0x7f0b0069

    invoke-virtual {p0, v1}, Lim/doit/pro/activity/FilterViewPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/mobeta/android/dslv/DragSortListView;

    iput-object v1, p0, Lim/doit/pro/activity/FilterViewPagerActivity;->mListView:Lcom/mobeta/android/dslv/DragSortListView;

    .line 78
    new-instance v1, Lim/doit/pro/activity/FilterViewPagerActivity$ListAdapter;

    iget-object v2, p0, Lim/doit/pro/activity/FilterViewPagerActivity;->mListView:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-direct {v1, p0, p0, v2}, Lim/doit/pro/activity/FilterViewPagerActivity$ListAdapter;-><init>(Lim/doit/pro/activity/FilterViewPagerActivity;Landroid/content/Context;Lcom/mobeta/android/dslv/DragSortListView;)V

    iput-object v1, p0, Lim/doit/pro/activity/FilterViewPagerActivity;->mListAdapter:Lim/doit/pro/activity/listview/ListViewAdapter;

    .line 79
    iget-object v1, p0, Lim/doit/pro/activity/FilterViewPagerActivity;->mListView:Lcom/mobeta/android/dslv/DragSortListView;

    iget-object v2, p0, Lim/doit/pro/activity/FilterViewPagerActivity;->mListAdapter:Lim/doit/pro/activity/listview/ListViewAdapter;

    invoke-virtual {v1, v2}, Lcom/mobeta/android/dslv/DragSortListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 80
    new-instance v0, Lcom/mobeta/android/dslv/DoitDragSortController;

    .line 81
    iget-object v1, p0, Lim/doit/pro/activity/FilterViewPagerActivity;->mListView:Lcom/mobeta/android/dslv/DragSortListView;

    iget-object v2, p0, Lim/doit/pro/activity/FilterViewPagerActivity;->mListAdapter:Lim/doit/pro/activity/listview/ListViewAdapter;

    .line 80
    invoke-direct {v0, v1, v2}, Lcom/mobeta/android/dslv/DoitDragSortController;-><init>(Lcom/mobeta/android/dslv/DragSortListView;Lim/doit/pro/activity/listview/ListViewAdapter;)V

    .line 82
    .local v0, "controller":Lcom/mobeta/android/dslv/DoitDragSortController;
    iget-object v1, p0, Lim/doit/pro/activity/FilterViewPagerActivity;->mListView:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-virtual {v1, v0}, Lcom/mobeta/android/dslv/DragSortListView;->setFloatViewManager(Lcom/mobeta/android/dslv/DragSortListView$FloatViewManager;)V

    .line 83
    iget-object v1, p0, Lim/doit/pro/activity/FilterViewPagerActivity;->mListView:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-virtual {v1, v0}, Lcom/mobeta/android/dslv/DragSortListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 85
    iget-object v1, p0, Lim/doit/pro/activity/FilterViewPagerActivity;->mListView:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-virtual {p0, v1}, Lim/doit/pro/activity/FilterViewPagerActivity;->initPullToRefreshView(Landroid/widget/ListView;)V

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
    invoke-virtual {p0}, Lim/doit/pro/activity/FilterViewPagerActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iget-object v1, p0, Lim/doit/pro/activity/FilterViewPagerActivity;->mFilter:Lim/doit/pro/model/Filter;

    invoke-virtual {v1}, Lim/doit/pro/model/Filter;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 92
    new-instance v0, Lim/doit/pro/activity/FilterViewPagerActivity$LoadingTask;

    invoke-direct {v0, p0, v2, v2}, Lim/doit/pro/activity/FilterViewPagerActivity$LoadingTask;-><init>(Lim/doit/pro/activity/FilterViewPagerActivity;Lim/doit/pro/activity/FilterViewPagerActivity$LoadingTask;Lim/doit/pro/activity/FilterViewPagerActivity$LoadingTask;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lim/doit/pro/activity/FilterViewPagerActivity$LoadingTask;->execute([Ljava/lang/Object;)Lim/doit/pro/asynctask/DoitAsyncTask;

    .line 93
    return-void
.end method

.method protected loadingTaskNotShowProgress()V
    .locals 2

    .prologue
    .line 153
    iget-object v0, p0, Lim/doit/pro/activity/FilterViewPagerActivity;->mLoadingTask:Lim/doit/pro/activity/FilterViewPagerActivity$LoadingTask;

    if-eqz v0, :cond_0

    .line 164
    :goto_0
    return-void

    .line 156
    :cond_0
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v0

    iget-object v0, v0, Lim/doit/pro/db/Persist;->filterDao:Lim/doit/pro/db/persist/FilterDao;

    iget-object v1, p0, Lim/doit/pro/activity/FilterViewPagerActivity;->mFilter:Lim/doit/pro/model/Filter;

    invoke-virtual {v1}, Lim/doit/pro/model/Filter;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/db/persist/FilterDao;->findByUUID(Ljava/lang/String;)Lim/doit/pro/model/BaseEntity;

    move-result-object v0

    check-cast v0, Lim/doit/pro/model/Filter;

    iput-object v0, p0, Lim/doit/pro/activity/FilterViewPagerActivity;->mFilter:Lim/doit/pro/model/Filter;

    .line 157
    iget-object v0, p0, Lim/doit/pro/activity/FilterViewPagerActivity;->mFilter:Lim/doit/pro/model/Filter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lim/doit/pro/activity/FilterViewPagerActivity;->mFilter:Lim/doit/pro/model/Filter;

    invoke-virtual {v0}, Lim/doit/pro/model/Filter;->getDeleted()Ljava/util/Calendar;

    move-result-object v0

    if-nez v0, :cond_1

    .line 158
    iget-object v0, p0, Lim/doit/pro/activity/FilterViewPagerActivity;->mFilter:Lim/doit/pro/model/Filter;

    invoke-virtual {v0}, Lim/doit/pro/model/Filter;->getHidden()Ljava/util/Calendar;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 159
    :cond_1
    invoke-virtual {p0}, Lim/doit/pro/activity/FilterViewPagerActivity;->finish()V

    goto :goto_0

    .line 162
    :cond_2
    new-instance v0, Lim/doit/pro/activity/FilterViewPagerActivity$LoadingTaskNotShowProgress;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lim/doit/pro/activity/FilterViewPagerActivity$LoadingTaskNotShowProgress;-><init>(Lim/doit/pro/activity/FilterViewPagerActivity;Lim/doit/pro/activity/FilterViewPagerActivity$LoadingTaskNotShowProgress;)V

    iput-object v0, p0, Lim/doit/pro/activity/FilterViewPagerActivity;->mLoadingTask:Lim/doit/pro/activity/FilterViewPagerActivity$LoadingTask;

    .line 163
    iget-object v0, p0, Lim/doit/pro/activity/FilterViewPagerActivity;->mLoadingTask:Lim/doit/pro/activity/FilterViewPagerActivity$LoadingTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lim/doit/pro/activity/FilterViewPagerActivity$LoadingTask;->execute([Ljava/lang/Object;)Lim/doit/pro/asynctask/DoitAsyncTask;

    goto :goto_0
.end method

.method protected onAddClick()V
    .locals 2

    .prologue
    .line 65
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lim/doit/pro/activity/TaskDetailActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 66
    .local v0, "addIntent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lim/doit/pro/activity/FilterViewPagerActivity;->startActivity(Landroid/content/Intent;)V

    .line 67
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 38
    invoke-super {p0, p1}, Lim/doit/pro/activity/BaseViewPagerActivity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    const v0, 0x7f030028

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/FilterViewPagerActivity;->setContentView(I)V

    .line 40
    invoke-direct {p0}, Lim/doit/pro/activity/FilterViewPagerActivity;->initData()V

    .line 41
    invoke-virtual {p0}, Lim/doit/pro/activity/FilterViewPagerActivity;->initView()V

    .line 42
    invoke-virtual {p0}, Lim/doit/pro/activity/FilterViewPagerActivity;->initViewContent()V

    .line 43
    invoke-virtual {p0}, Lim/doit/pro/activity/FilterViewPagerActivity;->initListener()V

    .line 44
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 57
    iget-object v0, p0, Lim/doit/pro/activity/FilterViewPagerActivity;->mLoadingTask:Lim/doit/pro/activity/FilterViewPagerActivity$LoadingTask;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lim/doit/pro/activity/FilterViewPagerActivity;->mLoadingTask:Lim/doit/pro/activity/FilterViewPagerActivity$LoadingTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lim/doit/pro/activity/FilterViewPagerActivity$LoadingTask;->cancel(Z)Z

    .line 60
    :cond_0
    invoke-super {p0}, Lim/doit/pro/activity/BaseViewPagerActivity;->onDestroy()V

    .line 61
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 48
    invoke-super {p0}, Lim/doit/pro/activity/BaseViewPagerActivity;->onResume()V

    .line 49
    iget-boolean v0, p0, Lim/doit/pro/activity/FilterViewPagerActivity;->mIsCreateView:Z

    if-nez v0, :cond_0

    .line 50
    invoke-virtual {p0}, Lim/doit/pro/activity/FilterViewPagerActivity;->loadingTaskNotShowProgress()V

    .line 52
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lim/doit/pro/activity/FilterViewPagerActivity;->mIsCreateView:Z

    .line 53
    return-void
.end method
