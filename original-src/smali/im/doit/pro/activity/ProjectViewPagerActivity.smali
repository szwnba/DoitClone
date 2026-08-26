.class public Lim/doit/pro/activity/ProjectViewPagerActivity;
.super Lim/doit/pro/activity/BaseViewPagerActivity;
.source "ProjectViewPagerActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lim/doit/pro/activity/ProjectViewPagerActivity$ListAdapter;,
        Lim/doit/pro/activity/ProjectViewPagerActivity$LoadingTask;,
        Lim/doit/pro/activity/ProjectViewPagerActivity$LoadingTaskNotShowProgress;
    }
.end annotation


# instance fields
.field private mListView:Lcom/mobeta/android/dslv/DragSortListView;

.field private mListViewEmptyView:Lim/doit/pro/ui/component/ListViewEmptyView;

.field private mLoadingTask:Lim/doit/pro/activity/ProjectViewPagerActivity$LoadingTask;

.field private mProject:Lim/doit/pro/model/Project;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lim/doit/pro/activity/BaseViewPagerActivity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lim/doit/pro/activity/ProjectViewPagerActivity;)Lim/doit/pro/model/Project;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lim/doit/pro/activity/ProjectViewPagerActivity;->mProject:Lim/doit/pro/model/Project;

    return-object v0
.end method

.method static synthetic access$1(Lim/doit/pro/activity/ProjectViewPagerActivity;)Lim/doit/pro/ui/component/ListViewEmptyView;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lim/doit/pro/activity/ProjectViewPagerActivity;->mListViewEmptyView:Lim/doit/pro/ui/component/ListViewEmptyView;

    return-object v0
.end method

.method static synthetic access$2(Lim/doit/pro/activity/ProjectViewPagerActivity;)V
    .locals 0

    .prologue
    .line 199
    invoke-direct {p0}, Lim/doit/pro/activity/ProjectViewPagerActivity;->setSubtitle()V

    return-void
.end method

.method static synthetic access$3(Lim/doit/pro/activity/ProjectViewPagerActivity;Lim/doit/pro/activity/ProjectViewPagerActivity$LoadingTask;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lim/doit/pro/activity/ProjectViewPagerActivity;->mLoadingTask:Lim/doit/pro/activity/ProjectViewPagerActivity$LoadingTask;

    return-void
.end method

.method private init()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Lim/doit/pro/activity/ProjectViewPagerActivity;->initData()V

    .line 58
    invoke-virtual {p0}, Lim/doit/pro/activity/ProjectViewPagerActivity;->initView()V

    .line 59
    invoke-virtual {p0}, Lim/doit/pro/activity/ProjectViewPagerActivity;->initViewContent()V

    .line 60
    invoke-virtual {p0}, Lim/doit/pro/activity/ProjectViewPagerActivity;->initListener()V

    .line 61
    return-void
.end method

.method private initData()V
    .locals 2

    .prologue
    .line 97
    invoke-virtual {p0}, Lim/doit/pro/activity/ProjectViewPagerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "project"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lim/doit/pro/model/Project;

    iput-object v0, p0, Lim/doit/pro/activity/ProjectViewPagerActivity;->mProject:Lim/doit/pro/model/Project;

    .line 98
    return-void
.end method

.method private setSubtitle()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 200
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v2

    iget-object v2, v2, Lim/doit/pro/db/Persist;->taskDao:Lim/doit/pro/db/persist/TaskDao;

    .line 201
    iget-object v3, p0, Lim/doit/pro/activity/ProjectViewPagerActivity;->mProject:Lim/doit/pro/model/Project;

    invoke-virtual {v3}, Lim/doit/pro/model/Project;->getUuid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lim/doit/pro/db/persist/TaskDao;->countNotCompletedByProject(Ljava/lang/String;)I

    move-result v0

    .line 202
    .local v0, "count":I
    const/4 v1, 0x0

    .line 203
    .local v1, "subtitle":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 204
    const/4 v1, 0x0

    .line 212
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lim/doit/pro/activity/ProjectViewPagerActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 213
    return-void

    .line 205
    :cond_1
    if-le v0, v4, :cond_2

    .line 207
    const v2, 0x7f0c022e

    invoke-static {v2}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    .line 206
    invoke-static {v2, v3}, Lim/doit/pro/activity/utils/ViewUtils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 208
    goto :goto_0

    :cond_2
    if-ne v0, v4, :cond_0

    .line 210
    const v2, 0x7f0c022f

    invoke-static {v2}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    .line 209
    invoke-static {v2, v3}, Lim/doit/pro/activity/utils/ViewUtils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
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

    .line 180
    iget-object v2, p0, Lim/doit/pro/activity/ProjectViewPagerActivity;->mBoxGrouper:Lim/doit/pro/activity/listview/group/DoitListViewGrouper;

    if-nez v2, :cond_0

    .line 181
    new-instance v2, Lim/doit/pro/activity/listview/group/DoitListViewGrouper;

    invoke-direct {v2}, Lim/doit/pro/activity/listview/group/DoitListViewGrouper;-><init>()V

    iput-object v2, p0, Lim/doit/pro/activity/ProjectViewPagerActivity;->mBoxGrouper:Lim/doit/pro/activity/listview/group/DoitListViewGrouper;

    .line 184
    :cond_0
    iget-object v2, p0, Lim/doit/pro/activity/ProjectViewPagerActivity;->mTagFilter:Lim/doit/pro/ui/model/TagFilter;

    invoke-static {v2, p1}, Lim/doit/pro/utils/TaskUtils;->filterDatasByTags(Lim/doit/pro/ui/model/TagFilter;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    .line 185
    .local v0, "entitiesByTagFitler":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/BaseEntityWithPos;>;"
    iget-object v2, p0, Lim/doit/pro/activity/ProjectViewPagerActivity;->mBoxGrouper:Lim/doit/pro/activity/listview/group/DoitListViewGrouper;

    .line 186
    iget-object v3, p0, Lim/doit/pro/activity/ProjectViewPagerActivity;->mProject:Lim/doit/pro/model/Project;

    invoke-static {v3}, Lim/doit/pro/utils/BoxUtils;->getDefaultGroupBy(Lim/doit/pro/model/Project;)Lim/doit/pro/model/enums/GroupByType;

    move-result-object v3

    .line 185
    invoke-virtual {v2, v3, v0}, Lim/doit/pro/activity/listview/group/DoitListViewGrouper;->group(Lim/doit/pro/model/enums/GroupByType;Ljava/util/ArrayList;)Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;

    move-result-object v1

    .line 187
    .local v1, "result":Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;
    invoke-virtual {v1, p1}, Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;->setEntities(Ljava/util/ArrayList;)V

    .line 188
    iget-object v2, p0, Lim/doit/pro/activity/ProjectViewPagerActivity;->mTagFilter:Lim/doit/pro/ui/model/TagFilter;

    if-eqz v2, :cond_2

    .line 189
    iget-object v2, p0, Lim/doit/pro/activity/ProjectViewPagerActivity;->mTagFilter:Lim/doit/pro/ui/model/TagFilter;

    invoke-virtual {v2}, Lim/doit/pro/ui/model/TagFilter;->getTags()Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v2}, Lim/doit/pro/utils/CollectionUtils;->isNotEmpty(Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lim/doit/pro/activity/ProjectViewPagerActivity;->mTagFilter:Lim/doit/pro/ui/model/TagFilter;

    .line 190
    invoke-virtual {v2}, Lim/doit/pro/ui/model/TagFilter;->isUntagged()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 191
    :cond_1
    invoke-virtual {v1}, Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;->getGroupers()Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lim/doit/pro/activity/ProjectViewPagerActivity;->mTagFilter:Lim/doit/pro/ui/model/TagFilter;

    invoke-virtual {v2, v4, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 192
    invoke-virtual {v1}, Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;->getChildren()Ljava/util/ArrayList;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v4, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 194
    :cond_2
    invoke-virtual {v1}, Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;->getGroupers()Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lim/doit/pro/activity/ProjectViewPagerActivity;->mProject:Lim/doit/pro/model/Project;

    invoke-virtual {v2, v4, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 195
    invoke-virtual {v1}, Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;->getChildren()Ljava/util/ArrayList;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v4, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 196
    return-object v1
.end method

.method protected initView()V
    .locals 3

    .prologue
    .line 102
    invoke-super {p0}, Lim/doit/pro/activity/BaseViewPagerActivity;->initView()V

    .line 103
    const v1, 0x7f0b0069

    invoke-virtual {p0, v1}, Lim/doit/pro/activity/ProjectViewPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/mobeta/android/dslv/DragSortListView;

    iput-object v1, p0, Lim/doit/pro/activity/ProjectViewPagerActivity;->mListView:Lcom/mobeta/android/dslv/DragSortListView;

    .line 104
    new-instance v1, Lim/doit/pro/activity/ProjectViewPagerActivity$ListAdapter;

    iget-object v2, p0, Lim/doit/pro/activity/ProjectViewPagerActivity;->mListView:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-direct {v1, p0, p0, v2}, Lim/doit/pro/activity/ProjectViewPagerActivity$ListAdapter;-><init>(Lim/doit/pro/activity/ProjectViewPagerActivity;Landroid/content/Context;Lcom/mobeta/android/dslv/DragSortListView;)V

    iput-object v1, p0, Lim/doit/pro/activity/ProjectViewPagerActivity;->mListAdapter:Lim/doit/pro/activity/listview/ListViewAdapter;

    .line 105
    iget-object v1, p0, Lim/doit/pro/activity/ProjectViewPagerActivity;->mListView:Lcom/mobeta/android/dslv/DragSortListView;

    iget-object v2, p0, Lim/doit/pro/activity/ProjectViewPagerActivity;->mListAdapter:Lim/doit/pro/activity/listview/ListViewAdapter;

    invoke-virtual {v1, v2}, Lcom/mobeta/android/dslv/DragSortListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 106
    new-instance v0, Lcom/mobeta/android/dslv/DoitDragSortController;

    .line 107
    iget-object v1, p0, Lim/doit/pro/activity/ProjectViewPagerActivity;->mListView:Lcom/mobeta/android/dslv/DragSortListView;

    iget-object v2, p0, Lim/doit/pro/activity/ProjectViewPagerActivity;->mListAdapter:Lim/doit/pro/activity/listview/ListViewAdapter;

    .line 106
    invoke-direct {v0, v1, v2}, Lcom/mobeta/android/dslv/DoitDragSortController;-><init>(Lcom/mobeta/android/dslv/DragSortListView;Lim/doit/pro/activity/listview/ListViewAdapter;)V

    .line 108
    .local v0, "controller":Lcom/mobeta/android/dslv/DoitDragSortController;
    iget-object v1, p0, Lim/doit/pro/activity/ProjectViewPagerActivity;->mListView:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-virtual {v1, v0}, Lcom/mobeta/android/dslv/DragSortListView;->setFloatViewManager(Lcom/mobeta/android/dslv/DragSortListView$FloatViewManager;)V

    .line 109
    iget-object v1, p0, Lim/doit/pro/activity/ProjectViewPagerActivity;->mListView:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-virtual {v1, v0}, Lcom/mobeta/android/dslv/DragSortListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 110
    const v1, 0x7f0b006f

    invoke-virtual {p0, v1}, Lim/doit/pro/activity/ProjectViewPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lim/doit/pro/ui/component/ListViewEmptyView;

    iput-object v1, p0, Lim/doit/pro/activity/ProjectViewPagerActivity;->mListViewEmptyView:Lim/doit/pro/ui/component/ListViewEmptyView;

    .line 111
    iget-object v1, p0, Lim/doit/pro/activity/ProjectViewPagerActivity;->mListView:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-virtual {p0, v1}, Lim/doit/pro/activity/ProjectViewPagerActivity;->initPullToRefreshView(Landroid/widget/ListView;)V

    .line 112
    return-void
.end method

.method protected initViewContent()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 116
    invoke-super {p0}, Lim/doit/pro/activity/BaseViewPagerActivity;->initViewContent()V

    .line 117
    invoke-virtual {p0}, Lim/doit/pro/activity/ProjectViewPagerActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const v1, 0x7f0c00ea

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    .line 118
    new-instance v0, Lim/doit/pro/activity/ProjectViewPagerActivity$LoadingTask;

    invoke-direct {v0, p0, v2, v2}, Lim/doit/pro/activity/ProjectViewPagerActivity$LoadingTask;-><init>(Lim/doit/pro/activity/ProjectViewPagerActivity;Lim/doit/pro/activity/ProjectViewPagerActivity$LoadingTask;Lim/doit/pro/activity/ProjectViewPagerActivity$LoadingTask;)V

    iput-object v0, p0, Lim/doit/pro/activity/ProjectViewPagerActivity;->mLoadingTask:Lim/doit/pro/activity/ProjectViewPagerActivity$LoadingTask;

    .line 119
    iget-object v0, p0, Lim/doit/pro/activity/ProjectViewPagerActivity;->mLoadingTask:Lim/doit/pro/activity/ProjectViewPagerActivity$LoadingTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lim/doit/pro/activity/ProjectViewPagerActivity$LoadingTask;->execute([Ljava/lang/Object;)Lim/doit/pro/asynctask/DoitAsyncTask;

    .line 120
    return-void
.end method

.method protected loadingTaskNotShowProgress()V
    .locals 2

    .prologue
    .line 124
    iget-object v0, p0, Lim/doit/pro/activity/ProjectViewPagerActivity;->mLoadingTask:Lim/doit/pro/activity/ProjectViewPagerActivity$LoadingTask;

    if-eqz v0, :cond_0

    .line 134
    :goto_0
    return-void

    .line 127
    :cond_0
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v0

    iget-object v0, v0, Lim/doit/pro/db/Persist;->projectDao:Lim/doit/pro/db/persist/ProjectDao;

    iget-object v1, p0, Lim/doit/pro/activity/ProjectViewPagerActivity;->mProject:Lim/doit/pro/model/Project;

    invoke-virtual {v1}, Lim/doit/pro/model/Project;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/db/persist/ProjectDao;->findByUUID(Ljava/lang/String;)Lim/doit/pro/model/BaseEntity;

    move-result-object v0

    check-cast v0, Lim/doit/pro/model/Project;

    iput-object v0, p0, Lim/doit/pro/activity/ProjectViewPagerActivity;->mProject:Lim/doit/pro/model/Project;

    .line 128
    iget-object v0, p0, Lim/doit/pro/activity/ProjectViewPagerActivity;->mProject:Lim/doit/pro/model/Project;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lim/doit/pro/activity/ProjectViewPagerActivity;->mProject:Lim/doit/pro/model/Project;

    invoke-virtual {v0}, Lim/doit/pro/model/Project;->isDeleted()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lim/doit/pro/activity/ProjectViewPagerActivity;->mProject:Lim/doit/pro/model/Project;

    invoke-virtual {v0}, Lim/doit/pro/model/Project;->isArchived()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 129
    :cond_1
    invoke-virtual {p0}, Lim/doit/pro/activity/ProjectViewPagerActivity;->finish()V

    goto :goto_0

    .line 132
    :cond_2
    new-instance v0, Lim/doit/pro/activity/ProjectViewPagerActivity$LoadingTaskNotShowProgress;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lim/doit/pro/activity/ProjectViewPagerActivity$LoadingTaskNotShowProgress;-><init>(Lim/doit/pro/activity/ProjectViewPagerActivity;Lim/doit/pro/activity/ProjectViewPagerActivity$LoadingTaskNotShowProgress;)V

    iput-object v0, p0, Lim/doit/pro/activity/ProjectViewPagerActivity;->mLoadingTask:Lim/doit/pro/activity/ProjectViewPagerActivity$LoadingTask;

    .line 133
    iget-object v0, p0, Lim/doit/pro/activity/ProjectViewPagerActivity;->mLoadingTask:Lim/doit/pro/activity/ProjectViewPagerActivity$LoadingTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lim/doit/pro/activity/ProjectViewPagerActivity$LoadingTask;->execute([Ljava/lang/Object;)Lim/doit/pro/asynctask/DoitAsyncTask;

    goto :goto_0
.end method

.method protected onAddClick()V
    .locals 3

    .prologue
    .line 89
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lim/doit/pro/activity/TaskDetailActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 90
    .local v0, "addIntent":Landroid/content/Intent;
    iget-object v1, p0, Lim/doit/pro/activity/ProjectViewPagerActivity;->mProject:Lim/doit/pro/model/Project;

    invoke-virtual {v1}, Lim/doit/pro/model/Project;->isNotDead()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 91
    const-string v1, "project"

    iget-object v2, p0, Lim/doit/pro/activity/ProjectViewPagerActivity;->mProject:Lim/doit/pro/model/Project;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 93
    :cond_0
    invoke-virtual {p0, v0}, Lim/doit/pro/activity/ProjectViewPagerActivity;->startActivity(Landroid/content/Intent;)V

    .line 94
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 51
    invoke-super {p0, p1}, Lim/doit/pro/activity/BaseViewPagerActivity;->onCreate(Landroid/os/Bundle;)V

    .line 52
    const v0, 0x7f030035

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/ProjectViewPagerActivity;->setContentView(I)V

    .line 53
    invoke-direct {p0}, Lim/doit/pro/activity/ProjectViewPagerActivity;->init()V

    .line 54
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Lim/doit/pro/activity/ProjectViewPagerActivity;->mLoadingTask:Lim/doit/pro/activity/ProjectViewPagerActivity$LoadingTask;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lim/doit/pro/activity/ProjectViewPagerActivity;->mLoadingTask:Lim/doit/pro/activity/ProjectViewPagerActivity$LoadingTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lim/doit/pro/activity/ProjectViewPagerActivity$LoadingTask;->cancel(Z)Z

    .line 84
    :cond_0
    invoke-super {p0}, Lim/doit/pro/activity/BaseViewPagerActivity;->onDestroy()V

    .line 85
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 65
    invoke-super {p0, p1}, Lim/doit/pro/activity/BaseViewPagerActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 66
    invoke-virtual {p0, p1}, Lim/doit/pro/activity/ProjectViewPagerActivity;->setIntent(Landroid/content/Intent;)V

    .line 67
    invoke-direct {p0}, Lim/doit/pro/activity/ProjectViewPagerActivity;->init()V

    .line 68
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 72
    invoke-super {p0}, Lim/doit/pro/activity/BaseViewPagerActivity;->onResume()V

    .line 73
    iget-boolean v0, p0, Lim/doit/pro/activity/ProjectViewPagerActivity;->mIsCreateView:Z

    if-nez v0, :cond_0

    .line 74
    invoke-virtual {p0}, Lim/doit/pro/activity/ProjectViewPagerActivity;->loadingTaskNotShowProgress()V

    .line 76
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lim/doit/pro/activity/ProjectViewPagerActivity;->mIsCreateView:Z

    .line 77
    return-void
.end method
