.class public Lim/doit/pro/activity/NoticeActivity;
.super Lim/doit/pro/activity/BaseActivityRegisterSyncFinish;
.source "NoticeActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lim/doit/pro/activity/NoticeActivity$EmptyNotices;,
        Lim/doit/pro/activity/NoticeActivity$ListAdapter;,
        Lim/doit/pro/activity/NoticeActivity$LoadingNotices;,
        Lim/doit/pro/activity/NoticeActivity$LoadingNoticesNotShowProgress;,
        Lim/doit/pro/activity/NoticeActivity$NoticeVo;
    }
.end annotation


# instance fields
.field private mEmptyNotices:Lim/doit/pro/activity/NoticeActivity$EmptyNotices;

.field private mIsCreateView:Z

.field private mListAdapter:Lim/doit/pro/activity/NoticeActivity$ListAdapter;

.field private mListView:Landroid/widget/ListView;

.field private mListViewEmptyView:Lim/doit/pro/ui/component/ListViewEmptyView;

.field private mLoadingNotices:Lim/doit/pro/activity/NoticeActivity$LoadingNotices;

.field private mNoticeVos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lim/doit/pro/activity/NoticeActivity$NoticeVo;",
            ">;"
        }
    .end annotation
.end field

.field private showNoticeIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Lim/doit/pro/activity/BaseActivityRegisterSyncFinish;-><init>()V

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lim/doit/pro/activity/NoticeActivity;->showNoticeIds:Ljava/util/ArrayList;

    .line 42
    return-void
.end method

.method static synthetic access$0(Lim/doit/pro/activity/NoticeActivity;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lim/doit/pro/activity/NoticeActivity;->showNoticeIds:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1(Lim/doit/pro/activity/NoticeActivity;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lim/doit/pro/activity/NoticeActivity;->mNoticeVos:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2(Lim/doit/pro/activity/NoticeActivity;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lim/doit/pro/activity/NoticeActivity;->mNoticeVos:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$3(Lim/doit/pro/activity/NoticeActivity;)Lim/doit/pro/ui/component/ListViewEmptyView;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lim/doit/pro/activity/NoticeActivity;->mListViewEmptyView:Lim/doit/pro/ui/component/ListViewEmptyView;

    return-object v0
.end method

.method static synthetic access$4(Lim/doit/pro/activity/NoticeActivity;)Lim/doit/pro/activity/NoticeActivity$ListAdapter;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lim/doit/pro/activity/NoticeActivity;->mListAdapter:Lim/doit/pro/activity/NoticeActivity$ListAdapter;

    return-object v0
.end method

.method static synthetic access$5(Lim/doit/pro/activity/NoticeActivity;Lim/doit/pro/activity/NoticeActivity$LoadingNotices;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lim/doit/pro/activity/NoticeActivity;->mLoadingNotices:Lim/doit/pro/activity/NoticeActivity$LoadingNotices;

    return-void
.end method

.method static synthetic access$6(Lim/doit/pro/activity/NoticeActivity;)V
    .locals 0

    .prologue
    .line 121
    invoke-direct {p0}, Lim/doit/pro/activity/NoticeActivity;->initData()V

    return-void
.end method

.method static synthetic access$7(Lim/doit/pro/activity/NoticeActivity;Lim/doit/pro/activity/NoticeActivity$EmptyNotices;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lim/doit/pro/activity/NoticeActivity;->mEmptyNotices:Lim/doit/pro/activity/NoticeActivity$EmptyNotices;

    return-void
.end method

.method static synthetic access$8(Lim/doit/pro/activity/NoticeActivity;)V
    .locals 0

    .prologue
    .line 865
    invoke-direct {p0}, Lim/doit/pro/activity/NoticeActivity;->loadingNoticesNotShowProgress()V

    return-void
.end method

.method static synthetic access$9(Lim/doit/pro/activity/NoticeActivity;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 886
    invoke-direct {p0, p1, p2}, Lim/doit/pro/activity/NoticeActivity;->isShowViewBtn(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private init()V
    .locals 0

    .prologue
    .line 117
    invoke-direct {p0}, Lim/doit/pro/activity/NoticeActivity;->initView()V

    .line 118
    invoke-direct {p0}, Lim/doit/pro/activity/NoticeActivity;->initData()V

    .line 119
    return-void
.end method

.method private initActionBar()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 135
    invoke-virtual {p0}, Lim/doit/pro/activity/NoticeActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 136
    .local v0, "actionBar":Landroid/app/ActionBar;
    const v1, 0x7f0c01c1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    .line 137
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 138
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 139
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 140
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayUseLogoEnabled(Z)V

    .line 141
    return-void
.end method

.method private initData()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 122
    new-instance v0, Lim/doit/pro/activity/NoticeActivity$LoadingNotices;

    invoke-direct {v0, p0, v1, v1}, Lim/doit/pro/activity/NoticeActivity$LoadingNotices;-><init>(Lim/doit/pro/activity/NoticeActivity;Lim/doit/pro/activity/NoticeActivity$LoadingNotices;Lim/doit/pro/activity/NoticeActivity$LoadingNotices;)V

    iput-object v0, p0, Lim/doit/pro/activity/NoticeActivity;->mLoadingNotices:Lim/doit/pro/activity/NoticeActivity$LoadingNotices;

    .line 123
    iget-object v0, p0, Lim/doit/pro/activity/NoticeActivity;->mLoadingNotices:Lim/doit/pro/activity/NoticeActivity$LoadingNotices;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lim/doit/pro/activity/NoticeActivity$LoadingNotices;->execute([Ljava/lang/Object;)Lim/doit/pro/asynctask/DoitAsyncTask;

    .line 124
    return-void
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 127
    invoke-direct {p0}, Lim/doit/pro/activity/NoticeActivity;->initActionBar()V

    .line 128
    const v0, 0x7f0b006f

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/NoticeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lim/doit/pro/ui/component/ListViewEmptyView;

    iput-object v0, p0, Lim/doit/pro/activity/NoticeActivity;->mListViewEmptyView:Lim/doit/pro/ui/component/ListViewEmptyView;

    .line 129
    const v0, 0x7f0b0069

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/NoticeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lim/doit/pro/activity/NoticeActivity;->mListView:Landroid/widget/ListView;

    .line 130
    new-instance v0, Lim/doit/pro/activity/NoticeActivity$ListAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lim/doit/pro/activity/NoticeActivity$ListAdapter;-><init>(Lim/doit/pro/activity/NoticeActivity;Lim/doit/pro/activity/NoticeActivity$ListAdapter;)V

    iput-object v0, p0, Lim/doit/pro/activity/NoticeActivity;->mListAdapter:Lim/doit/pro/activity/NoticeActivity$ListAdapter;

    .line 131
    iget-object v0, p0, Lim/doit/pro/activity/NoticeActivity;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lim/doit/pro/activity/NoticeActivity;->mListAdapter:Lim/doit/pro/activity/NoticeActivity$ListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 132
    return-void
.end method

.method private isShowViewBtn(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "repeatNo"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 887
    invoke-static {p1}, Lim/doit/pro/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 903
    :cond_0
    :goto_0
    return v2

    .line 890
    :cond_1
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v4

    iget-object v4, v4, Lim/doit/pro/db/Persist;->taskDao:Lim/doit/pro/db/persist/TaskDao;

    invoke-virtual {v4, p1, p2}, Lim/doit/pro/db/persist/TaskDao;->findByUUIDAndRepeatNo(Ljava/lang/String;Ljava/lang/String;)Lim/doit/pro/model/Task;

    move-result-object v1

    .line 892
    .local v1, "task":Lim/doit/pro/model/Task;
    if-eqz v1, :cond_2

    .line 893
    invoke-virtual {v1}, Lim/doit/pro/model/Task;->isNotDeleted()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1}, Lim/doit/pro/model/Task;->isNotHidden()Z

    move-result v4

    if-eqz v4, :cond_0

    move v2, v3

    .line 894
    goto :goto_0

    .line 897
    :cond_2
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v4

    iget-object v4, v4, Lim/doit/pro/db/Persist;->projectDao:Lim/doit/pro/db/persist/ProjectDao;

    invoke-virtual {v4, p1}, Lim/doit/pro/db/persist/ProjectDao;->findByUUID(Ljava/lang/String;)Lim/doit/pro/model/BaseEntity;

    move-result-object v0

    check-cast v0, Lim/doit/pro/model/Project;

    .line 898
    .local v0, "project":Lim/doit/pro/model/Project;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lim/doit/pro/model/Project;->isNotDeleted()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 899
    invoke-virtual {v0}, Lim/doit/pro/model/Project;->isNotArchived()Z

    move-result v4

    if-eqz v4, :cond_0

    move v2, v3

    .line 900
    goto :goto_0
.end method

.method private loadingNoticesNotShowProgress()V
    .locals 2

    .prologue
    .line 866
    iget-object v0, p0, Lim/doit/pro/activity/NoticeActivity;->mLoadingNotices:Lim/doit/pro/activity/NoticeActivity$LoadingNotices;

    if-eqz v0, :cond_0

    .line 871
    :goto_0
    return-void

    .line 869
    :cond_0
    new-instance v0, Lim/doit/pro/activity/NoticeActivity$LoadingNoticesNotShowProgress;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lim/doit/pro/activity/NoticeActivity$LoadingNoticesNotShowProgress;-><init>(Lim/doit/pro/activity/NoticeActivity;Lim/doit/pro/activity/NoticeActivity$LoadingNoticesNotShowProgress;)V

    iput-object v0, p0, Lim/doit/pro/activity/NoticeActivity;->mLoadingNotices:Lim/doit/pro/activity/NoticeActivity$LoadingNotices;

    .line 870
    iget-object v0, p0, Lim/doit/pro/activity/NoticeActivity;->mLoadingNotices:Lim/doit/pro/activity/NoticeActivity$LoadingNotices;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lim/doit/pro/activity/NoticeActivity$LoadingNotices;->execute([Ljava/lang/Object;)Lim/doit/pro/asynctask/DoitAsyncTask;

    goto :goto_0
.end method


# virtual methods
.method protected afterSync(Z)V
    .locals 0
    .param p1, "isSuccess"    # Z

    .prologue
    .line 113
    invoke-direct {p0}, Lim/doit/pro/activity/NoticeActivity;->loadingNoticesNotShowProgress()V

    .line 114
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 84
    invoke-super {p0, p1}, Lim/doit/pro/activity/BaseActivityRegisterSyncFinish;->onCreate(Landroid/os/Bundle;)V

    .line 85
    const/4 v0, 0x1

    iput-boolean v0, p0, Lim/doit/pro/activity/NoticeActivity;->mIsCreateView:Z

    .line 86
    const v0, 0x7f030032

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/NoticeActivity;->setContentView(I)V

    .line 87
    invoke-direct {p0}, Lim/doit/pro/activity/NoticeActivity;->init()V

    .line 88
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 102
    iget-object v0, p0, Lim/doit/pro/activity/NoticeActivity;->mLoadingNotices:Lim/doit/pro/activity/NoticeActivity$LoadingNotices;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lim/doit/pro/activity/NoticeActivity;->mLoadingNotices:Lim/doit/pro/activity/NoticeActivity$LoadingNotices;

    invoke-virtual {v0, v1}, Lim/doit/pro/activity/NoticeActivity$LoadingNotices;->cancel(Z)Z

    .line 105
    :cond_0
    iget-object v0, p0, Lim/doit/pro/activity/NoticeActivity;->mEmptyNotices:Lim/doit/pro/activity/NoticeActivity$EmptyNotices;

    if-eqz v0, :cond_1

    .line 106
    iget-object v0, p0, Lim/doit/pro/activity/NoticeActivity;->mEmptyNotices:Lim/doit/pro/activity/NoticeActivity$EmptyNotices;

    invoke-virtual {v0, v1}, Lim/doit/pro/activity/NoticeActivity$EmptyNotices;->cancel(Z)Z

    .line 108
    :cond_1
    invoke-super {p0}, Lim/doit/pro/activity/BaseActivityRegisterSyncFinish;->onDestroy()V

    .line 109
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v1, 0x1

    .line 67
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 68
    .local v0, "id":I
    const v2, 0x102002c

    if-ne v0, v2, :cond_1

    .line 69
    invoke-virtual {p0}, Lim/doit/pro/activity/NoticeActivity;->finish()V

    .line 79
    :cond_0
    :goto_0
    return v1

    .line 71
    :cond_1
    const v2, 0x7f0b021a

    if-ne v0, v2, :cond_2

    .line 72
    iget-object v2, p0, Lim/doit/pro/activity/NoticeActivity;->mEmptyNotices:Lim/doit/pro/activity/NoticeActivity$EmptyNotices;

    if-nez v2, :cond_0

    .line 75
    new-instance v2, Lim/doit/pro/activity/NoticeActivity$EmptyNotices;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lim/doit/pro/activity/NoticeActivity$EmptyNotices;-><init>(Lim/doit/pro/activity/NoticeActivity;Lim/doit/pro/activity/NoticeActivity$EmptyNotices;)V

    iput-object v2, p0, Lim/doit/pro/activity/NoticeActivity;->mEmptyNotices:Lim/doit/pro/activity/NoticeActivity$EmptyNotices;

    .line 76
    iget-object v2, p0, Lim/doit/pro/activity/NoticeActivity;->mEmptyNotices:Lim/doit/pro/activity/NoticeActivity$EmptyNotices;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lim/doit/pro/activity/NoticeActivity$EmptyNotices;->execute([Ljava/lang/Object;)Lim/doit/pro/asynctask/DoitAsyncTask;

    goto :goto_0

    .line 79
    :cond_2
    invoke-super {p0, p1}, Lim/doit/pro/activity/BaseActivityRegisterSyncFinish;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 59
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 60
    invoke-virtual {p0}, Lim/doit/pro/activity/NoticeActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 61
    .local v0, "inflater":Landroid/view/MenuInflater;
    const v1, 0x7f0e0007

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 62
    invoke-super {p0, p1}, Lim/doit/pro/activity/BaseActivityRegisterSyncFinish;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 92
    invoke-super {p0}, Lim/doit/pro/activity/BaseActivityRegisterSyncFinish;->onResume()V

    .line 93
    invoke-static {}, Lim/doit/pro/utils/NotificationUtils;->cancelNewMessage()V

    .line 94
    iget-boolean v0, p0, Lim/doit/pro/activity/NoticeActivity;->mIsCreateView:Z

    if-nez v0, :cond_0

    .line 95
    invoke-direct {p0}, Lim/doit/pro/activity/NoticeActivity;->loadingNoticesNotShowProgress()V

    .line 97
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lim/doit/pro/activity/NoticeActivity;->mIsCreateView:Z

    .line 98
    return-void
.end method
