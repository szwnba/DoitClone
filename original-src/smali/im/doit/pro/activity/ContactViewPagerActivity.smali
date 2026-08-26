.class public Lim/doit/pro/activity/ContactViewPagerActivity;
.super Lim/doit/pro/activity/BaseViewPagerActivity;
.source "ContactViewPagerActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lim/doit/pro/activity/ContactViewPagerActivity$LoadingTask;,
        Lim/doit/pro/activity/ContactViewPagerActivity$LoadingTaskNotShowProgress;
    }
.end annotation


# instance fields
.field private mBoxGrouper:Lim/doit/pro/activity/listview/group/DoitListViewGrouper;

.field private mContact:Lim/doit/pro/model/Contact;

.field private mContactUuid:Ljava/lang/String;

.field private mListView:Lcom/mobeta/android/dslv/DragSortListView;

.field private mListViewEmptyWrap:Lim/doit/pro/ui/component/ListViewEmptyView;

.field private mLoadingTask:Lim/doit/pro/activity/ContactViewPagerActivity$LoadingTask;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lim/doit/pro/activity/BaseViewPagerActivity;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lim/doit/pro/activity/ContactViewPagerActivity;->mLoadingTask:Lim/doit/pro/activity/ContactViewPagerActivity$LoadingTask;

    .line 29
    return-void
.end method

.method static synthetic access$0(Lim/doit/pro/activity/ContactViewPagerActivity;)Lim/doit/pro/model/Contact;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lim/doit/pro/activity/ContactViewPagerActivity;->mContact:Lim/doit/pro/model/Contact;

    return-object v0
.end method

.method static synthetic access$1(Lim/doit/pro/activity/ContactViewPagerActivity;)Lim/doit/pro/activity/listview/group/DoitListViewGrouper;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lim/doit/pro/activity/ContactViewPagerActivity;->mBoxGrouper:Lim/doit/pro/activity/listview/group/DoitListViewGrouper;

    return-object v0
.end method

.method static synthetic access$2(Lim/doit/pro/activity/ContactViewPagerActivity;Lim/doit/pro/activity/listview/group/DoitListViewGrouper;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lim/doit/pro/activity/ContactViewPagerActivity;->mBoxGrouper:Lim/doit/pro/activity/listview/group/DoitListViewGrouper;

    return-void
.end method

.method static synthetic access$3(Lim/doit/pro/activity/ContactViewPagerActivity;)Lim/doit/pro/ui/component/ListViewEmptyView;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lim/doit/pro/activity/ContactViewPagerActivity;->mListViewEmptyWrap:Lim/doit/pro/ui/component/ListViewEmptyView;

    return-object v0
.end method

.method static synthetic access$4(Lim/doit/pro/activity/ContactViewPagerActivity;)V
    .locals 0

    .prologue
    .line 122
    invoke-direct {p0}, Lim/doit/pro/activity/ContactViewPagerActivity;->setActionbarSubtitle()V

    return-void
.end method

.method static synthetic access$5(Lim/doit/pro/activity/ContactViewPagerActivity;Lim/doit/pro/activity/ContactViewPagerActivity$LoadingTask;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lim/doit/pro/activity/ContactViewPagerActivity;->mLoadingTask:Lim/doit/pro/activity/ContactViewPagerActivity$LoadingTask;

    return-void
.end method

.method private getSubTitleText()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    .line 127
    iget-object v1, p0, Lim/doit/pro/activity/ContactViewPagerActivity;->mListAdapter:Lim/doit/pro/activity/listview/ListViewAdapter;

    invoke-virtual {v1}, Lim/doit/pro/activity/listview/ListViewAdapter;->getEntities()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v1}, Lim/doit/pro/utils/CollectionUtils;->isEmpty(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 128
    const/4 v1, 0x0

    .line 134
    :goto_0
    return-object v1

    .line 130
    :cond_0
    iget-object v1, p0, Lim/doit/pro/activity/ContactViewPagerActivity;->mListAdapter:Lim/doit/pro/activity/listview/ListViewAdapter;

    invoke-virtual {v1}, Lim/doit/pro/activity/listview/ListViewAdapter;->getEntities()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 131
    .local v0, "count":I
    if-le v0, v2, :cond_1

    .line 132
    const v1, 0x7f0c0227

    invoke-static {v1}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lim/doit/pro/activity/utils/ViewUtils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 135
    :cond_1
    const v1, 0x7f0c0228

    invoke-static {v1}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lim/doit/pro/activity/utils/ViewUtils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private init()V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Lim/doit/pro/activity/ContactViewPagerActivity;->initData()V

    .line 79
    invoke-virtual {p0}, Lim/doit/pro/activity/ContactViewPagerActivity;->initView()V

    .line 80
    invoke-virtual {p0}, Lim/doit/pro/activity/ContactViewPagerActivity;->initViewContent()V

    .line 81
    invoke-virtual {p0}, Lim/doit/pro/activity/ContactViewPagerActivity;->initListener()V

    .line 82
    invoke-direct {p0}, Lim/doit/pro/activity/ContactViewPagerActivity;->loadingTaskAndShowProgress()V

    .line 83
    return-void
.end method

.method private initActionbarViewContent()V
    .locals 3

    .prologue
    .line 115
    invoke-virtual {p0}, Lim/doit/pro/activity/ContactViewPagerActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 116
    .local v0, "actionBar":Landroid/app/ActionBar;
    iget-object v2, p0, Lim/doit/pro/activity/ContactViewPagerActivity;->mContact:Lim/doit/pro/model/Contact;

    invoke-virtual {v2}, Lim/doit/pro/model/Contact;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lim/doit/pro/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lim/doit/pro/activity/ContactViewPagerActivity;->mContact:Lim/doit/pro/model/Contact;

    .line 117
    invoke-virtual {v2}, Lim/doit/pro/model/Contact;->getEmail()Ljava/lang/String;

    move-result-object v1

    .line 118
    .local v1, "title":Ljava/lang/String;
    :goto_0
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 119
    invoke-direct {p0}, Lim/doit/pro/activity/ContactViewPagerActivity;->setActionbarSubtitle()V

    .line 120
    return-void

    .line 117
    .end local v1    # "title":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lim/doit/pro/activity/ContactViewPagerActivity;->mContact:Lim/doit/pro/model/Contact;

    invoke-virtual {v2}, Lim/doit/pro/model/Contact;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private initData()V
    .locals 2

    .prologue
    .line 103
    const/4 v0, 0x1

    iput-boolean v0, p0, Lim/doit/pro/activity/ContactViewPagerActivity;->mIsCreateView:Z

    .line 104
    invoke-virtual {p0}, Lim/doit/pro/activity/ContactViewPagerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "uuid"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lim/doit/pro/activity/ContactViewPagerActivity;->mContactUuid:Ljava/lang/String;

    .line 105
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v0

    iget-object v0, v0, Lim/doit/pro/db/Persist;->contactDao:Lim/doit/pro/db/persist/ContactDao;

    iget-object v1, p0, Lim/doit/pro/activity/ContactViewPagerActivity;->mContactUuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lim/doit/pro/db/persist/ContactDao;->findByUUID(Ljava/lang/String;)Lim/doit/pro/model/BaseEntity;

    move-result-object v0

    check-cast v0, Lim/doit/pro/model/Contact;

    iput-object v0, p0, Lim/doit/pro/activity/ContactViewPagerActivity;->mContact:Lim/doit/pro/model/Contact;

    .line 106
    return-void
.end method

.method private initEmptyViewContent()V
    .locals 2

    .prologue
    .line 140
    iget-object v0, p0, Lim/doit/pro/activity/ContactViewPagerActivity;->mListViewEmptyWrap:Lim/doit/pro/ui/component/ListViewEmptyView;

    .line 141
    const v1, 0x7f0c019f

    invoke-static {v1}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v1

    .line 140
    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/ListViewEmptyView;->setTitle(Ljava/lang/String;)V

    .line 142
    return-void
.end method

.method private loadingTaskAndShowProgress()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 145
    iget-object v0, p0, Lim/doit/pro/activity/ContactViewPagerActivity;->mLoadingTask:Lim/doit/pro/activity/ContactViewPagerActivity$LoadingTask;

    if-eqz v0, :cond_0

    .line 150
    :goto_0
    return-void

    .line 148
    :cond_0
    new-instance v0, Lim/doit/pro/activity/ContactViewPagerActivity$LoadingTask;

    invoke-direct {v0, p0, v1, v1}, Lim/doit/pro/activity/ContactViewPagerActivity$LoadingTask;-><init>(Lim/doit/pro/activity/ContactViewPagerActivity;Lim/doit/pro/activity/ContactViewPagerActivity$LoadingTask;Lim/doit/pro/activity/ContactViewPagerActivity$LoadingTask;)V

    iput-object v0, p0, Lim/doit/pro/activity/ContactViewPagerActivity;->mLoadingTask:Lim/doit/pro/activity/ContactViewPagerActivity$LoadingTask;

    .line 149
    iget-object v0, p0, Lim/doit/pro/activity/ContactViewPagerActivity;->mLoadingTask:Lim/doit/pro/activity/ContactViewPagerActivity$LoadingTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lim/doit/pro/activity/ContactViewPagerActivity$LoadingTask;->execute([Ljava/lang/Object;)Lim/doit/pro/asynctask/DoitAsyncTask;

    goto :goto_0
.end method

.method private reloadDataAndRefresh()V
    .locals 2

    .prologue
    .line 162
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v0

    iget-object v0, v0, Lim/doit/pro/db/Persist;->contactDao:Lim/doit/pro/db/persist/ContactDao;

    iget-object v1, p0, Lim/doit/pro/activity/ContactViewPagerActivity;->mContactUuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lim/doit/pro/db/persist/ContactDao;->findByUUID(Ljava/lang/String;)Lim/doit/pro/model/BaseEntity;

    move-result-object v0

    check-cast v0, Lim/doit/pro/model/Contact;

    iput-object v0, p0, Lim/doit/pro/activity/ContactViewPagerActivity;->mContact:Lim/doit/pro/model/Contact;

    .line 163
    iget-object v0, p0, Lim/doit/pro/activity/ContactViewPagerActivity;->mContact:Lim/doit/pro/model/Contact;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lim/doit/pro/activity/ContactViewPagerActivity;->mContact:Lim/doit/pro/model/Contact;

    invoke-virtual {v0}, Lim/doit/pro/model/Contact;->getDeleted()Ljava/util/Calendar;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 164
    :cond_0
    invoke-virtual {p0}, Lim/doit/pro/activity/ContactViewPagerActivity;->finish()V

    .line 168
    :goto_0
    return-void

    .line 167
    :cond_1
    invoke-virtual {p0}, Lim/doit/pro/activity/ContactViewPagerActivity;->loadingTaskNotShowProgress()V

    goto :goto_0
.end method

.method private setActionbarSubtitle()V
    .locals 2

    .prologue
    .line 123
    invoke-virtual {p0}, Lim/doit/pro/activity/ContactViewPagerActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-direct {p0}, Lim/doit/pro/activity/ContactViewPagerActivity;->getSubTitleText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 124
    return-void
.end method


# virtual methods
.method protected afterSync(Z)V
    .locals 0
    .param p1, "isSuccess"    # Z

    .prologue
    .line 42
    invoke-virtual {p0}, Lim/doit/pro/activity/ContactViewPagerActivity;->finishPullToRefresh()V

    .line 43
    invoke-direct {p0}, Lim/doit/pro/activity/ContactViewPagerActivity;->reloadDataAndRefresh()V

    .line 44
    return-void
.end method

.method protected filterAndGroupDatas(Ljava/util/ArrayList;)Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;
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
    .line 229
    .local p1, "entities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/BaseEntityWithPos;>;"
    iget-object v1, p0, Lim/doit/pro/activity/ContactViewPagerActivity;->mBoxGrouper:Lim/doit/pro/activity/listview/group/DoitListViewGrouper;

    .line 230
    sget-object v2, Lim/doit/pro/model/enums/GroupByType;->contact:Lim/doit/pro/model/enums/GroupByType;

    .line 229
    invoke-virtual {v1, v2, p1}, Lim/doit/pro/activity/listview/group/DoitListViewGrouper;->group(Lim/doit/pro/model/enums/GroupByType;Ljava/util/ArrayList;)Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;

    move-result-object v0

    .line 231
    .local v0, "result":Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;
    invoke-virtual {v0, p1}, Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;->setEntities(Ljava/util/ArrayList;)V

    .line 232
    return-object v0
.end method

.method protected initView()V
    .locals 3

    .prologue
    .line 87
    invoke-super {p0}, Lim/doit/pro/activity/BaseViewPagerActivity;->initView()V

    .line 88
    const v1, 0x7f0b0069

    invoke-virtual {p0, v1}, Lim/doit/pro/activity/ContactViewPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/mobeta/android/dslv/DragSortListView;

    iput-object v1, p0, Lim/doit/pro/activity/ContactViewPagerActivity;->mListView:Lcom/mobeta/android/dslv/DragSortListView;

    .line 89
    new-instance v1, Lim/doit/pro/activity/listview/ListViewAdapter;

    iget-object v2, p0, Lim/doit/pro/activity/ContactViewPagerActivity;->mListView:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-direct {v1, p0, v2}, Lim/doit/pro/activity/listview/ListViewAdapter;-><init>(Landroid/app/Activity;Lcom/mobeta/android/dslv/DragSortListView;)V

    iput-object v1, p0, Lim/doit/pro/activity/ContactViewPagerActivity;->mListAdapter:Lim/doit/pro/activity/listview/ListViewAdapter;

    .line 90
    new-instance v0, Lcom/mobeta/android/dslv/DoitDragSortController;

    .line 91
    iget-object v1, p0, Lim/doit/pro/activity/ContactViewPagerActivity;->mListView:Lcom/mobeta/android/dslv/DragSortListView;

    iget-object v2, p0, Lim/doit/pro/activity/ContactViewPagerActivity;->mListAdapter:Lim/doit/pro/activity/listview/ListViewAdapter;

    .line 90
    invoke-direct {v0, v1, v2}, Lcom/mobeta/android/dslv/DoitDragSortController;-><init>(Lcom/mobeta/android/dslv/DragSortListView;Lim/doit/pro/activity/listview/ListViewAdapter;)V

    .line 92
    .local v0, "controller":Lcom/mobeta/android/dslv/DoitDragSortController;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mobeta/android/dslv/DoitDragSortController;->setSortEnabled(Z)V

    .line 93
    iget-object v1, p0, Lim/doit/pro/activity/ContactViewPagerActivity;->mListView:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-virtual {v1, v0}, Lcom/mobeta/android/dslv/DragSortListView;->setFloatViewManager(Lcom/mobeta/android/dslv/DragSortListView$FloatViewManager;)V

    .line 94
    iget-object v1, p0, Lim/doit/pro/activity/ContactViewPagerActivity;->mListView:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-virtual {v1, v0}, Lcom/mobeta/android/dslv/DragSortListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 95
    iget-object v1, p0, Lim/doit/pro/activity/ContactViewPagerActivity;->mListView:Lcom/mobeta/android/dslv/DragSortListView;

    iget-object v2, p0, Lim/doit/pro/activity/ContactViewPagerActivity;->mListAdapter:Lim/doit/pro/activity/listview/ListViewAdapter;

    invoke-virtual {v1, v2}, Lcom/mobeta/android/dslv/DragSortListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 97
    const v1, 0x7f0b006f

    invoke-virtual {p0, v1}, Lim/doit/pro/activity/ContactViewPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lim/doit/pro/ui/component/ListViewEmptyView;

    iput-object v1, p0, Lim/doit/pro/activity/ContactViewPagerActivity;->mListViewEmptyWrap:Lim/doit/pro/ui/component/ListViewEmptyView;

    .line 99
    iget-object v1, p0, Lim/doit/pro/activity/ContactViewPagerActivity;->mListView:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-virtual {p0, v1}, Lim/doit/pro/activity/ContactViewPagerActivity;->initPullToRefreshView(Landroid/widget/ListView;)V

    .line 100
    return-void
.end method

.method protected initViewContent()V
    .locals 0

    .prologue
    .line 110
    invoke-direct {p0}, Lim/doit/pro/activity/ContactViewPagerActivity;->initActionbarViewContent()V

    .line 111
    invoke-direct {p0}, Lim/doit/pro/activity/ContactViewPagerActivity;->initEmptyViewContent()V

    .line 112
    return-void
.end method

.method protected isNowShowMore()Z
    .locals 1

    .prologue
    .line 237
    const/4 v0, 0x1

    return v0
.end method

.method protected loadingTaskNotShowProgress()V
    .locals 2

    .prologue
    .line 154
    iget-object v0, p0, Lim/doit/pro/activity/ContactViewPagerActivity;->mLoadingTask:Lim/doit/pro/activity/ContactViewPagerActivity$LoadingTask;

    if-eqz v0, :cond_0

    .line 159
    :goto_0
    return-void

    .line 157
    :cond_0
    new-instance v0, Lim/doit/pro/activity/ContactViewPagerActivity$LoadingTaskNotShowProgress;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lim/doit/pro/activity/ContactViewPagerActivity$LoadingTaskNotShowProgress;-><init>(Lim/doit/pro/activity/ContactViewPagerActivity;Lim/doit/pro/activity/ContactViewPagerActivity$LoadingTaskNotShowProgress;)V

    iput-object v0, p0, Lim/doit/pro/activity/ContactViewPagerActivity;->mLoadingTask:Lim/doit/pro/activity/ContactViewPagerActivity$LoadingTask;

    .line 158
    iget-object v0, p0, Lim/doit/pro/activity/ContactViewPagerActivity;->mLoadingTask:Lim/doit/pro/activity/ContactViewPagerActivity$LoadingTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lim/doit/pro/activity/ContactViewPagerActivity$LoadingTask;->execute([Ljava/lang/Object;)Lim/doit/pro/asynctask/DoitAsyncTask;

    goto :goto_0
.end method

.method protected onAddClick()V
    .locals 3

    .prologue
    .line 221
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lim/doit/pro/activity/SendTaskActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 222
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "uuid"

    iget-object v2, p0, Lim/doit/pro/activity/ContactViewPagerActivity;->mContactUuid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 223
    invoke-virtual {p0, v0}, Lim/doit/pro/activity/ContactViewPagerActivity;->startActivity(Landroid/content/Intent;)V

    .line 224
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 48
    invoke-super {p0, p1}, Lim/doit/pro/activity/BaseViewPagerActivity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    const v0, 0x7f03001e

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/ContactViewPagerActivity;->setContentView(I)V

    .line 50
    invoke-direct {p0}, Lim/doit/pro/activity/ContactViewPagerActivity;->init()V

    .line 51
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Lim/doit/pro/activity/ContactViewPagerActivity;->mLoadingTask:Lim/doit/pro/activity/ContactViewPagerActivity$LoadingTask;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lim/doit/pro/activity/ContactViewPagerActivity;->mLoadingTask:Lim/doit/pro/activity/ContactViewPagerActivity$LoadingTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lim/doit/pro/activity/ContactViewPagerActivity$LoadingTask;->cancel(Z)Z

    .line 74
    :cond_0
    invoke-super {p0}, Lim/doit/pro/activity/BaseViewPagerActivity;->onDestroy()V

    .line 75
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 55
    invoke-super {p0, p1}, Lim/doit/pro/activity/BaseViewPagerActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 56
    invoke-virtual {p0, p1}, Lim/doit/pro/activity/ContactViewPagerActivity;->setIntent(Landroid/content/Intent;)V

    .line 57
    invoke-direct {p0}, Lim/doit/pro/activity/ContactViewPagerActivity;->init()V

    .line 58
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 62
    invoke-super {p0}, Lim/doit/pro/activity/BaseViewPagerActivity;->onResume()V

    .line 63
    iget-boolean v0, p0, Lim/doit/pro/activity/ContactViewPagerActivity;->mIsCreateView:Z

    if-nez v0, :cond_0

    .line 64
    invoke-direct {p0}, Lim/doit/pro/activity/ContactViewPagerActivity;->reloadDataAndRefresh()V

    .line 66
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lim/doit/pro/activity/ContactViewPagerActivity;->mIsCreateView:Z

    .line 67
    return-void
.end method
