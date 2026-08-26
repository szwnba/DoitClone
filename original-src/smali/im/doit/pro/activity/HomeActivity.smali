.class public Lim/doit/pro/activity/HomeActivity;
.super Lim/doit/pro/activity/BaseActivityRegisterSyncFinish;
.source "HomeActivity.java"

# interfaces
.implements Lim/doit/pro/activity/listener/OnUpdateActionBarSubtitleListener;
.implements Lim/doit/pro/ui/component/DHomeMenuList$OnHomeMenuListListener;
.implements Lim/doit/pro/ui/component/pullrefresh/OnRefreshListener;
.implements Lim/doit/pro/activity/listener/OnSwipeRightListener;
.implements Lim/doit/pro/ui/component/TagFilterDialog$OnTagFilterFinishListener;


# instance fields
.field private final FRAGMENT_TAG:Ljava/lang/String;

.field private mCheckVersion:Lim/doit/pro/asynctask/CheckVersion;

.field private mDHomeMenuList:Lim/doit/pro/ui/component/DHomeMenuList;

.field private mDetailSubTitle:Ljava/lang/String;

.field private mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

.field private mDrawerToggle:Landroid/support/v7/app/ActionBarDrawerToggle;

.field private mExitTimer:Ljava/util/Timer;

.field private mFragments:Landroid/app/FragmentManager;

.field private mGuideView:Landroid/widget/ImageView;

.field private mHandler:Landroid/os/Handler;

.field private mIsCreatedView:Z

.field private mIsExit:Z

.field private mMenuListView:Landroid/widget/ListView;

.field private mPullToRefreshLayout:Lim/doit/pro/ui/component/pullrefresh/PullToRefreshLayout;

.field private mRefreshDetail:Z

.field private mUpdateDetailRunnable:Ljava/lang/Runnable;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 67
    invoke-direct {p0}, Lim/doit/pro/activity/BaseActivityRegisterSyncFinish;-><init>()V

    .line 71
    const-string v0, "d_fragment"

    iput-object v0, p0, Lim/doit/pro/activity/HomeActivity;->FRAGMENT_TAG:Ljava/lang/String;

    .line 73
    iput-boolean v1, p0, Lim/doit/pro/activity/HomeActivity;->mIsCreatedView:Z

    .line 77
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lim/doit/pro/activity/HomeActivity;->mHandler:Landroid/os/Handler;

    .line 79
    iput-boolean v1, p0, Lim/doit/pro/activity/HomeActivity;->mRefreshDetail:Z

    .line 82
    const/4 v0, 0x0

    iput-boolean v0, p0, Lim/doit/pro/activity/HomeActivity;->mIsExit:Z

    .line 83
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lim/doit/pro/activity/HomeActivity;->mExitTimer:Ljava/util/Timer;

    .line 67
    return-void
.end method

.method static synthetic access$0(Lim/doit/pro/activity/HomeActivity;Z)V
    .locals 0

    .prologue
    .line 82
    iput-boolean p1, p0, Lim/doit/pro/activity/HomeActivity;->mIsExit:Z

    return-void
.end method

.method static synthetic access$1(Lim/doit/pro/activity/HomeActivity;)V
    .locals 0

    .prologue
    .line 569
    invoke-direct {p0}, Lim/doit/pro/activity/HomeActivity;->onSettingsClick()V

    return-void
.end method

.method static synthetic access$10(Lim/doit/pro/activity/HomeActivity;Landroid/app/Fragment;)Z
    .locals 1

    .prologue
    .line 363
    invoke-direct {p0, p1}, Lim/doit/pro/activity/HomeActivity;->isTaskListFragment(Landroid/app/Fragment;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$11(Lim/doit/pro/activity/HomeActivity;)V
    .locals 0

    .prologue
    .line 751
    invoke-direct {p0}, Lim/doit/pro/activity/HomeActivity;->removeGuide()V

    return-void
.end method

.method static synthetic access$2(Lim/doit/pro/activity/HomeActivity;)V
    .locals 0

    .prologue
    .line 541
    invoke-direct {p0}, Lim/doit/pro/activity/HomeActivity;->updateDetailActionBar()V

    return-void
.end method

.method static synthetic access$3(Lim/doit/pro/activity/HomeActivity;)Z
    .locals 1

    .prologue
    .line 79
    iget-boolean v0, p0, Lim/doit/pro/activity/HomeActivity;->mRefreshDetail:Z

    return v0
.end method

.method static synthetic access$4(Lim/doit/pro/activity/HomeActivity;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lim/doit/pro/activity/HomeActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$5(Lim/doit/pro/activity/HomeActivity;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lim/doit/pro/activity/HomeActivity;->mUpdateDetailRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$6(Lim/doit/pro/activity/HomeActivity;Z)V
    .locals 0

    .prologue
    .line 79
    iput-boolean p1, p0, Lim/doit/pro/activity/HomeActivity;->mRefreshDetail:Z

    return-void
.end method

.method static synthetic access$7(Lim/doit/pro/activity/HomeActivity;)V
    .locals 0

    .prologue
    .line 589
    invoke-direct {p0}, Lim/doit/pro/activity/HomeActivity;->reloadMenuListAndActionbar()V

    return-void
.end method

.method static synthetic access$8(Lim/doit/pro/activity/HomeActivity;)V
    .locals 0

    .prologue
    .line 499
    invoke-direct {p0}, Lim/doit/pro/activity/HomeActivity;->updateDetailFragment()V

    return-void
.end method

.method static synthetic access$9(Lim/doit/pro/activity/HomeActivity;)Landroid/app/FragmentManager;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lim/doit/pro/activity/HomeActivity;->mFragments:Landroid/app/FragmentManager;

    return-object v0
.end method

.method private buildDailyPlanReviewGuideView()Landroid/widget/ImageView;
    .locals 3

    .prologue
    .line 738
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 739
    .local v0, "guideGuide":Landroid/widget/ImageView;
    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 740
    invoke-static {}, Lim/doit/pro/utils/LocalSettings;->getLocalLang()Ljava/lang/String;

    move-result-object v1

    .line 741
    .local v1, "lang":Ljava/lang/String;
    invoke-static {v1}, Lim/doit/pro/utils/LocalSettings;->isCn(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 742
    const v2, 0x7f020134

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 748
    :goto_0
    return-object v0

    .line 743
    :cond_0
    invoke-static {v1}, Lim/doit/pro/utils/LocalSettings;->isJa(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 744
    const v2, 0x7f020136

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 746
    :cond_1
    const v2, 0x7f020135

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method private checkTimezoneEveryday()V
    .locals 4

    .prologue
    .line 670
    invoke-static {}, Lim/doit/pro/utils/LocalSettings;->getLastCheckTimezoneTime()J

    move-result-wide v0

    .line 671
    .local v0, "lastUpdated":J
    invoke-static {v0, v1}, Lim/doit/pro/utils/DateUtils;->checkTimeIntervalAboveDay(J)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 672
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lim/doit/pro/utils/LocalSettings;->updateCheckTimezoneTime(J)V

    .line 673
    invoke-direct {p0}, Lim/doit/pro/activity/HomeActivity;->showTimeZoneDiffDialog()V

    .line 675
    :cond_0
    return-void
.end method

.method private checkVersionEveryday()V
    .locals 4

    .prologue
    .line 659
    iget-object v2, p0, Lim/doit/pro/activity/HomeActivity;->mCheckVersion:Lim/doit/pro/asynctask/CheckVersion;

    if-eqz v2, :cond_1

    .line 667
    :cond_0
    :goto_0
    return-void

    .line 662
    :cond_1
    invoke-static {}, Lim/doit/pro/utils/LocalSettings;->getLastCheckVersionTime()J

    move-result-wide v0

    .line 663
    .local v0, "lastUpdated":J
    invoke-static {v0, v1}, Lim/doit/pro/utils/DateUtils;->checkTimeIntervalAboveDay(J)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 664
    new-instance v2, Lim/doit/pro/asynctask/CheckVersion;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3}, Lim/doit/pro/asynctask/CheckVersion;-><init>(Landroid/app/Activity;Z)V

    iput-object v2, p0, Lim/doit/pro/activity/HomeActivity;->mCheckVersion:Lim/doit/pro/asynctask/CheckVersion;

    .line 665
    iget-object v2, p0, Lim/doit/pro/activity/HomeActivity;->mCheckVersion:Lim/doit/pro/asynctask/CheckVersion;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lim/doit/pro/asynctask/CheckVersion;->execute([Ljava/lang/Object;)Lim/doit/pro/asynctask/DoitAsyncTask;

    goto :goto_0
.end method

.method private filterTasksWithTags(Lim/doit/pro/ui/model/TagFilter;)V
    .locals 4
    .param p1, "tagFilter"    # Lim/doit/pro/ui/model/TagFilter;

    .prologue
    .line 650
    iget-object v2, p0, Lim/doit/pro/activity/HomeActivity;->mFragments:Landroid/app/FragmentManager;

    const-string v3, "d_fragment"

    invoke-virtual {v2, v3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 651
    .local v0, "fragment":Landroid/app/Fragment;
    invoke-direct {p0, v0}, Lim/doit/pro/activity/HomeActivity;->isTaskListFragment(Landroid/app/Fragment;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 656
    :goto_0
    return-void

    :cond_0
    move-object v1, v0

    .line 654
    check-cast v1, Lim/doit/pro/activity/TaskListFragment;

    .line 655
    .local v1, "tf":Lim/doit/pro/activity/TaskListFragment;
    invoke-virtual {v1, p1}, Lim/doit/pro/activity/TaskListFragment;->setTagFitler(Lim/doit/pro/ui/model/TagFilter;)V

    goto :goto_0
.end method

.method private finishActionMode()V
    .locals 4

    .prologue
    .line 120
    iget-object v2, p0, Lim/doit/pro/activity/HomeActivity;->mFragments:Landroid/app/FragmentManager;

    const-string v3, "d_fragment"

    invoke-virtual {v2, v3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 121
    .local v0, "fragment":Landroid/app/Fragment;
    if-eqz v0, :cond_0

    instance-of v2, v0, Lim/doit/pro/activity/BaseListFragment;

    if-eqz v2, :cond_0

    .line 122
    iget-object v2, p0, Lim/doit/pro/activity/HomeActivity;->mFragments:Landroid/app/FragmentManager;

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .local v1, "transaction":Landroid/app/FragmentTransaction;
    move-object v2, v0

    .line 123
    check-cast v2, Lim/doit/pro/activity/BaseListFragment;

    invoke-virtual {v2}, Lim/doit/pro/activity/BaseListFragment;->finishActionMode()V

    .line 124
    invoke-virtual {v1, v0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 125
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 127
    .end local v1    # "transaction":Landroid/app/FragmentTransaction;
    :cond_0
    return-void
.end method

.method private finishPullToRefresh()V
    .locals 1

    .prologue
    .line 712
    iget-object v0, p0, Lim/doit/pro/activity/HomeActivity;->mPullToRefreshLayout:Lim/doit/pro/ui/component/pullrefresh/PullToRefreshLayout;

    if-eqz v0, :cond_0

    .line 713
    iget-object v0, p0, Lim/doit/pro/activity/HomeActivity;->mPullToRefreshLayout:Lim/doit/pro/ui/component/pullrefresh/PullToRefreshLayout;

    invoke-virtual {v0}, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshLayout;->setRefreshComplete()V

    .line 715
    :cond_0
    return-void
.end method

.method private init()V
    .locals 1

    .prologue
    .line 237
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/HomeActivity;->setSwipeBackEnable(Z)V

    .line 238
    invoke-direct {p0}, Lim/doit/pro/activity/HomeActivity;->initView()V

    .line 239
    invoke-direct {p0}, Lim/doit/pro/activity/HomeActivity;->initViewContent()V

    .line 240
    invoke-direct {p0}, Lim/doit/pro/activity/HomeActivity;->initListener()V

    .line 241
    invoke-static {p0}, Lim/doit/pro/utils/NotificationUtils;->showSmartAddOnBar(Landroid/content/Context;)V

    .line 242
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->refreshWidget()V

    .line 244
    invoke-direct {p0}, Lim/doit/pro/activity/HomeActivity;->syncMany()V

    .line 245
    return-void
.end method

.method private initActionBar()V
    .locals 7

    .prologue
    const v4, 0x7f020036

    const/4 v0, 0x1

    .line 444
    invoke-virtual {p0}, Lim/doit/pro/activity/HomeActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    .line 445
    .local v6, "actionBar":Landroid/app/ActionBar;
    invoke-virtual {v6, v0}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 446
    invoke-virtual {v6, v0}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 447
    invoke-virtual {v6, v0}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 448
    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Landroid/app/ActionBar;->setDisplayUseLogoEnabled(Z)V

    .line 450
    const v0, 0x7f0b008d

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout;

    iput-object v0, p0, Lim/doit/pro/activity/HomeActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    .line 451
    new-instance v0, Lim/doit/pro/activity/HomeActivity$3;

    iget-object v3, p0, Lim/doit/pro/activity/HomeActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    move-object v1, p0

    move-object v2, p0

    move v5, v4

    .line 452
    invoke-direct/range {v0 .. v5}, Lim/doit/pro/activity/HomeActivity$3;-><init>(Lim/doit/pro/activity/HomeActivity;Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;II)V

    .line 451
    iput-object v0, p0, Lim/doit/pro/activity/HomeActivity;->mDrawerToggle:Landroid/support/v7/app/ActionBarDrawerToggle;

    .line 467
    iget-object v0, p0, Lim/doit/pro/activity/HomeActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    iget-object v1, p0, Lim/doit/pro/activity/HomeActivity;->mDrawerToggle:Landroid/support/v7/app/ActionBarDrawerToggle;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->setDrawerListener(Landroid/support/v4/widget/DrawerLayout$DrawerListener;)V

    .line 468
    return-void
.end method

.method private initCurrentBox()V
    .locals 3

    .prologue
    .line 490
    invoke-virtual {p0}, Lim/doit/pro/activity/HomeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 491
    invoke-virtual {p0}, Lim/doit/pro/activity/HomeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "box"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 492
    invoke-virtual {p0}, Lim/doit/pro/activity/HomeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "box"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lim/doit/pro/model/Box;

    .line 493
    .local v0, "box":Lim/doit/pro/model/Box;
    invoke-virtual {p0, v0}, Lim/doit/pro/activity/HomeActivity;->changeBox(Lim/doit/pro/model/Box;)V

    .line 494
    invoke-direct {p0}, Lim/doit/pro/activity/HomeActivity;->updateDetailActionBar()V

    .line 496
    .end local v0    # "box":Lim/doit/pro/model/Box;
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lim/doit/pro/activity/HomeActivity;->mRefreshDetail:Z

    .line 497
    return-void
.end method

.method private initHomeMenuList()V
    .locals 2

    .prologue
    .line 471
    const v0, 0x7f0b008f

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lim/doit/pro/activity/HomeActivity;->mMenuListView:Landroid/widget/ListView;

    .line 472
    new-instance v0, Lim/doit/pro/ui/component/DHomeMenuList;

    iget-object v1, p0, Lim/doit/pro/activity/HomeActivity;->mMenuListView:Landroid/widget/ListView;

    invoke-direct {v0, p0, v1, p0}, Lim/doit/pro/ui/component/DHomeMenuList;-><init>(Landroid/app/Activity;Landroid/widget/ListView;Lim/doit/pro/ui/component/DHomeMenuList$OnHomeMenuListListener;)V

    iput-object v0, p0, Lim/doit/pro/activity/HomeActivity;->mDHomeMenuList:Lim/doit/pro/ui/component/DHomeMenuList;

    .line 473
    return-void
.end method

.method private initListener()V
    .locals 1

    .prologue
    .line 521
    const v0, 0x7f0b008e

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lim/doit/pro/ui/component/HomeMenuContent;

    .line 522
    invoke-virtual {v0, p0}, Lim/doit/pro/ui/component/HomeMenuContent;->setOnSwipeRightListener(Lim/doit/pro/activity/listener/OnSwipeRightListener;)V

    .line 524
    invoke-direct {p0}, Lim/doit/pro/activity/HomeActivity;->removeHandlerCallbacks()V

    .line 525
    new-instance v0, Lim/doit/pro/activity/HomeActivity$4;

    invoke-direct {v0, p0}, Lim/doit/pro/activity/HomeActivity$4;-><init>(Lim/doit/pro/activity/HomeActivity;)V

    iput-object v0, p0, Lim/doit/pro/activity/HomeActivity;->mUpdateDetailRunnable:Ljava/lang/Runnable;

    .line 532
    return-void
.end method

.method private initPullToRefreshView()V
    .locals 4

    .prologue
    .line 476
    new-instance v0, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshLayout;

    invoke-direct {v0, p0}, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lim/doit/pro/activity/HomeActivity;->mPullToRefreshLayout:Lim/doit/pro/ui/component/pullrefresh/PullToRefreshLayout;

    .line 477
    invoke-static {p0}, Lim/doit/pro/ui/component/pullrefresh/ActionBarPullToRefresh;->from(Landroid/app/Activity;)Lim/doit/pro/ui/component/pullrefresh/ActionBarPullToRefresh$SetupWizard;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    .line 478
    const v3, 0x7f0b008f

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/pullrefresh/ActionBarPullToRefresh$SetupWizard;->theseChildrenArePullable([I)Lim/doit/pro/ui/component/pullrefresh/ActionBarPullToRefresh$SetupWizard;

    move-result-object v0

    invoke-virtual {v0, p0}, Lim/doit/pro/ui/component/pullrefresh/ActionBarPullToRefresh$SetupWizard;->listener(Lim/doit/pro/ui/component/pullrefresh/OnRefreshListener;)Lim/doit/pro/ui/component/pullrefresh/ActionBarPullToRefresh$SetupWizard;

    move-result-object v0

    .line 479
    iget-object v1, p0, Lim/doit/pro/activity/HomeActivity;->mPullToRefreshLayout:Lim/doit/pro/ui/component/pullrefresh/PullToRefreshLayout;

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/pullrefresh/ActionBarPullToRefresh$SetupWizard;->setup(Lim/doit/pro/ui/component/pullrefresh/PullToRefreshLayout;)V

    .line 480
    return-void
.end method

.method private initView()V
    .locals 0

    .prologue
    .line 438
    invoke-direct {p0}, Lim/doit/pro/activity/HomeActivity;->initActionBar()V

    .line 439
    invoke-direct {p0}, Lim/doit/pro/activity/HomeActivity;->initHomeMenuList()V

    .line 440
    invoke-direct {p0}, Lim/doit/pro/activity/HomeActivity;->initPullToRefreshView()V

    .line 441
    return-void
.end method

.method private initViewContent()V
    .locals 2

    .prologue
    .line 483
    invoke-direct {p0}, Lim/doit/pro/activity/HomeActivity;->initCurrentBox()V

    .line 484
    invoke-direct {p0}, Lim/doit/pro/activity/HomeActivity;->updateDetailFragment()V

    .line 485
    iget-object v0, p0, Lim/doit/pro/activity/HomeActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    iget-object v1, p0, Lim/doit/pro/activity/HomeActivity;->mMenuListView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->closeDrawer(Landroid/view/View;)V

    .line 486
    return-void
.end method

.method private isTaskListFragment(Landroid/app/Fragment;)Z
    .locals 1
    .param p1, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 364
    if-eqz p1, :cond_0

    instance-of v0, p1, Lim/doit/pro/activity/TaskListFragment;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private justSupportPro()Z
    .locals 1

    .prologue
    .line 582
    invoke-static {}, Lim/doit/pro/utils/UserUtils;->isNotPro()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 583
    invoke-static {p0}, Lim/doit/pro/utils/AlertDialogUtils;->showJustForProDialog(Landroid/app/Activity;)Z

    .line 584
    const/4 v0, 0x1

    .line 586
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onAddClick()V
    .locals 3

    .prologue
    .line 393
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->currentBox()Lim/doit/pro/model/Box;

    move-result-object v1

    invoke-virtual {v1}, Lim/doit/pro/model/Box;->isProjects()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 394
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lim/doit/pro/activity/ProjectDetailActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 395
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "box"

    invoke-static {}, Lim/doit/pro/activity/DoitApp;->currentBox()Lim/doit/pro/model/Box;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 396
    invoke-virtual {p0, v0}, Lim/doit/pro/activity/HomeActivity;->startActivity(Landroid/content/Intent;)V

    .line 411
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 397
    :cond_1
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->currentBox()Lim/doit/pro/model/Box;

    move-result-object v1

    invoke-virtual {v1}, Lim/doit/pro/model/Box;->isGoals()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 398
    invoke-direct {p0}, Lim/doit/pro/activity/HomeActivity;->justSupportPro()Z

    move-result v1

    if-nez v1, :cond_0

    .line 401
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lim/doit/pro/activity/GoalDetailActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 402
    .restart local v0    # "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lim/doit/pro/activity/HomeActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 403
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_2
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->currentBox()Lim/doit/pro/model/Box;

    move-result-object v1

    invoke-virtual {v1}, Lim/doit/pro/model/Box;->isContexts()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 404
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lim/doit/pro/activity/TaskContextDetailActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 405
    .restart local v0    # "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lim/doit/pro/activity/HomeActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 407
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_3
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lim/doit/pro/activity/TaskDetailActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 408
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v1, "box"

    invoke-static {}, Lim/doit/pro/activity/DoitApp;->currentBox()Lim/doit/pro/model/Box;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 409
    invoke-virtual {p0, v0}, Lim/doit/pro/activity/HomeActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private onArchiveClick()V
    .locals 4

    .prologue
    .line 368
    iget-object v2, p0, Lim/doit/pro/activity/HomeActivity;->mFragments:Landroid/app/FragmentManager;

    const-string v3, "d_fragment"

    invoke-virtual {v2, v3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 369
    .local v0, "fragment":Landroid/app/Fragment;
    invoke-direct {p0, v0}, Lim/doit/pro/activity/HomeActivity;->isTaskListFragment(Landroid/app/Fragment;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 370
    check-cast v1, Lim/doit/pro/activity/TaskListFragment;

    .line 371
    .local v1, "tf":Lim/doit/pro/activity/TaskListFragment;
    invoke-virtual {v1}, Lim/doit/pro/activity/TaskListFragment;->archiveTasks()V

    .line 373
    .end local v1    # "tf":Lim/doit/pro/activity/TaskListFragment;
    :cond_0
    return-void
.end method

.method private onBackClick()V
    .locals 4

    .prologue
    .line 166
    iget-boolean v1, p0, Lim/doit/pro/activity/HomeActivity;->mIsExit:Z

    if-nez v1, :cond_0

    .line 167
    const/4 v1, 0x1

    iput-boolean v1, p0, Lim/doit/pro/activity/HomeActivity;->mIsExit:Z

    .line 168
    const v1, 0x7f0c0271

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lim/doit/pro/utils/ToastUtils;->show(II)V

    .line 169
    new-instance v0, Lim/doit/pro/activity/HomeActivity$1;

    invoke-direct {v0, p0}, Lim/doit/pro/activity/HomeActivity$1;-><init>(Lim/doit/pro/activity/HomeActivity;)V

    .line 175
    .local v0, "task":Ljava/util/TimerTask;
    iget-object v1, p0, Lim/doit/pro/activity/HomeActivity;->mExitTimer:Ljava/util/Timer;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v0, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 179
    .end local v0    # "task":Ljava/util/TimerTask;
    :goto_0
    return-void

    .line 177
    :cond_0
    invoke-virtual {p0}, Lim/doit/pro/activity/HomeActivity;->finish()V

    goto :goto_0
.end method

.method private onContactListClick()V
    .locals 2

    .prologue
    .line 346
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lim/doit/pro/activity/ContactListActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 347
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lim/doit/pro/activity/HomeActivity;->startActivity(Landroid/content/Intent;)V

    .line 348
    return-void
.end method

.method private onDailyPlanClick()V
    .locals 2

    .prologue
    .line 414
    invoke-direct {p0}, Lim/doit/pro/activity/HomeActivity;->justSupportPro()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 419
    :goto_0
    return-void

    .line 417
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lim/doit/pro/activity/DailyPlanActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 418
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lim/doit/pro/activity/HomeActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private onDailyReviewClick()V
    .locals 2

    .prologue
    .line 422
    invoke-direct {p0}, Lim/doit/pro/activity/HomeActivity;->justSupportPro()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 427
    :goto_0
    return-void

    .line 425
    :cond_0
    new-instance v0, Lim/doit/pro/ui/component/PlanDailyReview;

    invoke-direct {v0, p0}, Lim/doit/pro/ui/component/PlanDailyReview;-><init>(Landroid/app/Activity;)V

    .line 426
    .local v0, "playDailyReview":Lim/doit/pro/ui/component/PlanDailyReview;
    invoke-virtual {v0}, Lim/doit/pro/ui/component/PlanDailyReview;->start()V

    goto :goto_0
.end method

.method private onEmptyClick()V
    .locals 4

    .prologue
    .line 356
    iget-object v2, p0, Lim/doit/pro/activity/HomeActivity;->mFragments:Landroid/app/FragmentManager;

    const-string v3, "d_fragment"

    invoke-virtual {v2, v3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 357
    .local v0, "fragment":Landroid/app/Fragment;
    invoke-direct {p0, v0}, Lim/doit/pro/activity/HomeActivity;->isTaskListFragment(Landroid/app/Fragment;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 358
    check-cast v1, Lim/doit/pro/activity/TaskListFragment;

    .line 359
    .local v1, "tf":Lim/doit/pro/activity/TaskListFragment;
    invoke-virtual {v1}, Lim/doit/pro/activity/TaskListFragment;->emptyTasks()V

    .line 361
    .end local v1    # "tf":Lim/doit/pro/activity/TaskListFragment;
    :cond_0
    return-void
.end method

.method private onGcalSyncClick()V
    .locals 1

    .prologue
    .line 575
    invoke-direct {p0}, Lim/doit/pro/activity/HomeActivity;->justSupportPro()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 579
    :goto_0
    return-void

    .line 578
    :cond_0
    invoke-static {p0}, Lim/doit/pro/utils/AlertDialogUtils;->showClickGcalSyncDialog(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method private onNextBoxShowModeClick()V
    .locals 4

    .prologue
    .line 382
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->currentBox()Lim/doit/pro/model/Box;

    move-result-object v3

    invoke-static {}, Lim/doit/pro/activity/DoitApp;->currentBox()Lim/doit/pro/model/Box;

    move-result-object v2

    invoke-virtual {v2}, Lim/doit/pro/model/Box;->isShowOne()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v3, v2}, Lim/doit/pro/model/Box;->setShowOne(Z)V

    .line 383
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v2

    iget-object v2, v2, Lim/doit/pro/db/Persist;->boxDao:Lim/doit/pro/db/persist/BoxDao;

    invoke-static {}, Lim/doit/pro/activity/DoitApp;->currentBox()Lim/doit/pro/model/Box;

    move-result-object v3

    invoke-virtual {v2, v3}, Lim/doit/pro/db/persist/BoxDao;->updateAndNotSaveLog(Lim/doit/pro/model/Box;)V

    .line 384
    iget-object v2, p0, Lim/doit/pro/activity/HomeActivity;->mFragments:Landroid/app/FragmentManager;

    const-string v3, "d_fragment"

    invoke-virtual {v2, v3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 385
    .local v0, "fragment":Landroid/app/Fragment;
    invoke-direct {p0, v0}, Lim/doit/pro/activity/HomeActivity;->isTaskListFragment(Landroid/app/Fragment;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 386
    check-cast v1, Lim/doit/pro/activity/TaskListFragment;

    .line 387
    .local v1, "tf":Lim/doit/pro/activity/TaskListFragment;
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->currentBox()Lim/doit/pro/model/Box;

    move-result-object v2

    invoke-virtual {v2}, Lim/doit/pro/model/Box;->isShowOne()Z

    move-result v2

    invoke-virtual {v1, v2}, Lim/doit/pro/activity/TaskListFragment;->setShowOne(Z)V

    .line 389
    .end local v1    # "tf":Lim/doit/pro/activity/TaskListFragment;
    :cond_0
    invoke-virtual {p0}, Lim/doit/pro/activity/HomeActivity;->invalidateOptionsMenu()V

    .line 390
    return-void

    .line 382
    .end local v0    # "fragment":Landroid/app/Fragment;
    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private onNoticeClick()V
    .locals 2

    .prologue
    .line 351
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lim/doit/pro/activity/NoticeActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 352
    .local v0, "noticeIntent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lim/doit/pro/activity/HomeActivity;->startActivity(Landroid/content/Intent;)V

    .line 353
    return-void
.end method

.method private onSearchClick()V
    .locals 2

    .prologue
    .line 376
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lim/doit/pro/activity/SearchActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 377
    .local v0, "searchIntent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lim/doit/pro/activity/HomeActivity;->startActivity(Landroid/content/Intent;)V

    .line 378
    return-void
.end method

.method private onSettingsClick()V
    .locals 2

    .prologue
    .line 570
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lim/doit/pro/activity/SettingsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 571
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lim/doit/pro/activity/HomeActivity;->startActivity(Landroid/content/Intent;)V

    .line 572
    return-void
.end method

.method private onSyncManyClick()V
    .locals 2

    .prologue
    .line 561
    iget-object v0, p0, Lim/doit/pro/activity/HomeActivity;->mPullToRefreshLayout:Lim/doit/pro/ui/component/pullrefresh/PullToRefreshLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshLayout;->setRefreshing(Z)V

    .line 562
    invoke-direct {p0}, Lim/doit/pro/activity/HomeActivity;->sendSyncManyBroadcast()V

    .line 563
    return-void
.end method

.method private reloadMenuListAndActionbar()V
    .locals 2

    .prologue
    .line 590
    iget-object v0, p0, Lim/doit/pro/activity/HomeActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    iget-object v1, p0, Lim/doit/pro/activity/HomeActivity;->mMenuListView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->isDrawerOpen(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 591
    invoke-direct {p0}, Lim/doit/pro/activity/HomeActivity;->updateMenuListActionBar()V

    .line 592
    iget-object v0, p0, Lim/doit/pro/activity/HomeActivity;->mDHomeMenuList:Lim/doit/pro/ui/component/DHomeMenuList;

    invoke-virtual {v0}, Lim/doit/pro/ui/component/DHomeMenuList;->reloadDataAndRefresh()V

    .line 594
    :cond_0
    return-void
.end method

.method private removeGuide()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 752
    iget-object v0, p0, Lim/doit/pro/activity/HomeActivity;->mWindowManager:Landroid/view/WindowManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lim/doit/pro/activity/HomeActivity;->mGuideView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 753
    iget-object v0, p0, Lim/doit/pro/activity/HomeActivity;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lim/doit/pro/activity/HomeActivity;->mGuideView:Landroid/widget/ImageView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 754
    iput-object v2, p0, Lim/doit/pro/activity/HomeActivity;->mWindowManager:Landroid/view/WindowManager;

    .line 755
    iput-object v2, p0, Lim/doit/pro/activity/HomeActivity;->mGuideView:Landroid/widget/ImageView;

    .line 757
    :cond_0
    return-void
.end method

.method private removeHandlerCallbacks()V
    .locals 2

    .prologue
    .line 760
    iget-object v0, p0, Lim/doit/pro/activity/HomeActivity;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lim/doit/pro/activity/HomeActivity;->mUpdateDetailRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 761
    iget-object v0, p0, Lim/doit/pro/activity/HomeActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lim/doit/pro/activity/HomeActivity;->mUpdateDetailRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 763
    :cond_0
    return-void
.end method

.method private sendSyncManyBroadcast()V
    .locals 0

    .prologue
    .line 566
    invoke-static {p0}, Lim/doit/pro/utils/BroadcastUtils;->sendSyncManyBroadcast(Landroid/content/Context;)V

    .line 567
    return-void
.end method

.method private setActionbarAvatarViewContent(Landroid/view/Menu;)V
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 263
    const v2, 0x7f0b0057

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 264
    .local v1, "myAvatar":Landroid/view/MenuItem;
    new-instance v0, Lim/doit/pro/ui/component/DRoundedAvatarView;

    invoke-direct {v0, p0}, Lim/doit/pro/ui/component/DRoundedAvatarView;-><init>(Landroid/content/Context;)V

    .line 266
    .local v0, "avatarView":Lim/doit/pro/ui/component/DRoundedAvatarView;
    const v2, 0x7f020037

    invoke-virtual {v0, v2}, Lim/doit/pro/ui/component/DRoundedAvatarView;->setBackgroundResource(I)V

    .line 268
    const v2, 0x7f090035

    invoke-static {v2}, Lim/doit/pro/activity/utils/ViewUtils;->getDimens(I)F

    move-result v2

    float-to-int v2, v2

    .line 269
    const v3, 0x7f090036

    invoke-static {v3}, Lim/doit/pro/activity/utils/ViewUtils;->getDimens(I)F

    move-result v3

    float-to-int v3, v3

    .line 267
    invoke-virtual {v0, v2, v3}, Lim/doit/pro/ui/component/DRoundedAvatarView;->setSize(II)V

    .line 271
    const v2, 0x7f080040

    invoke-static {v2}, Lim/doit/pro/activity/utils/ViewUtils;->getColor(I)I

    move-result v2

    .line 270
    invoke-virtual {v0, v2}, Lim/doit/pro/ui/component/DRoundedAvatarView;->setNameColor(I)V

    .line 273
    const v2, 0x7f090037

    invoke-static {v2}, Lim/doit/pro/activity/utils/ViewUtils;->getDimens(I)F

    move-result v2

    float-to-int v2, v2

    .line 272
    invoke-virtual {v0, v2}, Lim/doit/pro/ui/component/DRoundedAvatarView;->setNameTextSize(I)V

    .line 274
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->user()Lim/doit/pro/model/User;

    move-result-object v2

    invoke-virtual {v2}, Lim/doit/pro/model/User;->getAvatar()Landroid/graphics/Bitmap;

    move-result-object v2

    if-nez v2, :cond_0

    .line 276
    const v2, 0x7f080041

    invoke-static {v2}, Lim/doit/pro/activity/utils/ViewUtils;->getColor(I)I

    move-result v2

    .line 275
    invoke-virtual {v0, v2}, Lim/doit/pro/ui/component/DRoundedAvatarView;->setBorderColor(I)V

    .line 278
    :cond_0
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->user()Lim/doit/pro/model/User;

    move-result-object v2

    invoke-virtual {v2}, Lim/doit/pro/model/User;->getAvatar()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {}, Lim/doit/pro/activity/DoitApp;->user()Lim/doit/pro/model/User;

    move-result-object v3

    .line 279
    invoke-virtual {v3}, Lim/doit/pro/model/User;->getEmail()Ljava/lang/String;

    move-result-object v3

    .line 278
    invoke-virtual {v0, v2, v3}, Lim/doit/pro/ui/component/DRoundedAvatarView;->setAvatar(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 280
    new-instance v2, Lim/doit/pro/activity/HomeActivity$2;

    invoke-direct {v2, p0}, Lim/doit/pro/activity/HomeActivity$2;-><init>(Lim/doit/pro/activity/HomeActivity;)V

    invoke-virtual {v0, v2}, Lim/doit/pro/ui/component/DRoundedAvatarView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 287
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    .line 288
    return-void
.end method

.method private setActionbarNoticeViewContent(Landroid/view/Menu;)V
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 253
    const v1, 0x7f0b0220

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 254
    .local v0, "noticeBtn":Landroid/view/MenuItem;
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v1

    iget-object v1, v1, Lim/doit/pro/db/Persist;->noticeDao:Lim/doit/pro/db/persist/NoticeDao;

    invoke-virtual {v1}, Lim/doit/pro/db/persist/NoticeDao;->haveNewNotice()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 255
    const v1, 0x7f020078

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 259
    :goto_0
    return-void

    .line 257
    :cond_0
    const v1, 0x7f020077

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method private showGroupByDialog()V
    .locals 5

    .prologue
    .line 597
    new-instance v1, Lim/doit/pro/ui/component/GroupByDialog;

    invoke-direct {v1, p0}, Lim/doit/pro/ui/component/GroupByDialog;-><init>(Landroid/content/Context;)V

    .line 598
    .local v1, "dialog":Lim/doit/pro/ui/component/GroupByDialog;
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->currentBox()Lim/doit/pro/model/Box;

    move-result-object v0

    .line 599
    .local v0, "box":Lim/doit/pro/model/Box;
    invoke-static {v0}, Lim/doit/pro/utils/BoxUtils;->getDefaultGroupBy(Lim/doit/pro/model/Box;)Lim/doit/pro/model/enums/GroupByType;

    move-result-object v3

    .line 600
    .local v3, "selectedGroupBy":Lim/doit/pro/model/enums/GroupByType;
    invoke-static {v0}, Lim/doit/pro/utils/BoxUtils;->getGroupBys(Lim/doit/pro/model/Box;)Ljava/util/ArrayList;

    move-result-object v2

    .line 601
    .local v2, "groupBys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/enums/GroupByType;>;"
    invoke-virtual {v1, v3, v2}, Lim/doit/pro/ui/component/GroupByDialog;->showDialog(Lim/doit/pro/model/enums/GroupByType;Ljava/util/ArrayList;)V

    .line 602
    new-instance v4, Lim/doit/pro/activity/HomeActivity$5;

    invoke-direct {v4, p0}, Lim/doit/pro/activity/HomeActivity$5;-><init>(Lim/doit/pro/activity/HomeActivity;)V

    invoke-virtual {v1, v4}, Lim/doit/pro/ui/component/GroupByDialog;->setOnGroupByFinishListener(Lim/doit/pro/ui/component/GroupByDialog$OnGroupByFinishListener;)V

    .line 616
    return-void
.end method

.method private showGuide(Landroid/widget/ImageView;)V
    .locals 3
    .param p1, "guideView"    # Landroid/widget/ImageView;

    .prologue
    const/4 v2, -0x1

    .line 718
    invoke-direct {p0}, Lim/doit/pro/activity/HomeActivity;->removeGuide()V

    .line 719
    iput-object p1, p0, Lim/doit/pro/activity/HomeActivity;->mGuideView:Landroid/widget/ImageView;

    .line 720
    const-string v1, "window"

    invoke-virtual {p0, v1}, Lim/doit/pro/activity/HomeActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Lim/doit/pro/activity/HomeActivity;->mWindowManager:Landroid/view/WindowManager;

    .line 721
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 722
    .local v0, "windowParams":Landroid/view/WindowManager$LayoutParams;
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 723
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 724
    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 726
    iget-object v1, p0, Lim/doit/pro/activity/HomeActivity;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lim/doit/pro/activity/HomeActivity;->mGuideView:Landroid/widget/ImageView;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 728
    iget-object v1, p0, Lim/doit/pro/activity/HomeActivity;->mGuideView:Landroid/widget/ImageView;

    new-instance v2, Lim/doit/pro/activity/HomeActivity$7;

    invoke-direct {v2, p0}, Lim/doit/pro/activity/HomeActivity$7;-><init>(Lim/doit/pro/activity/HomeActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 735
    return-void
.end method

.method private showTagFitlerDialog()V
    .locals 6

    .prologue
    .line 619
    iget-object v4, p0, Lim/doit/pro/activity/HomeActivity;->mFragments:Landroid/app/FragmentManager;

    const-string v5, "d_fragment"

    invoke-virtual {v4, v5}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    .line 620
    .local v1, "fragment":Landroid/app/Fragment;
    invoke-direct {p0, v1}, Lim/doit/pro/activity/HomeActivity;->isTaskListFragment(Landroid/app/Fragment;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 628
    :goto_0
    return-void

    :cond_0
    move-object v3, v1

    .line 623
    check-cast v3, Lim/doit/pro/activity/TaskListFragment;

    .line 624
    .local v3, "tf":Lim/doit/pro/activity/TaskListFragment;
    invoke-virtual {v3}, Lim/doit/pro/activity/TaskListFragment;->getTags()Ljava/util/ArrayList;

    move-result-object v2

    .line 625
    .local v2, "tags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Lim/doit/pro/ui/component/TagFilterDialog;

    invoke-direct {v0, p0}, Lim/doit/pro/ui/component/TagFilterDialog;-><init>(Landroid/content/Context;)V

    .line 626
    .local v0, "dialog":Lim/doit/pro/ui/component/TagFilterDialog;
    invoke-virtual {v3}, Lim/doit/pro/activity/TaskListFragment;->getTagFilter()Lim/doit/pro/ui/model/TagFilter;

    move-result-object v4

    invoke-virtual {v0, v4, v2}, Lim/doit/pro/ui/component/TagFilterDialog;->showDialog(Lim/doit/pro/ui/model/TagFilter;Ljava/util/ArrayList;)V

    .line 627
    invoke-virtual {v0, p0}, Lim/doit/pro/ui/component/TagFilterDialog;->setOnTagFilterFinishListener(Lim/doit/pro/ui/component/TagFilterDialog$OnTagFilterFinishListener;)V

    goto :goto_0
.end method

.method private showTimeZoneDiffDialog()V
    .locals 8

    .prologue
    .line 678
    invoke-static {}, Lim/doit/pro/utils/UserUtils;->getTimeZone()Ljava/lang/String;

    move-result-object v4

    .line 679
    .local v4, "userTimeZone":Ljava/lang/String;
    invoke-static {}, Lim/doit/pro/utils/DateUtils;->getGMTOffset()Ljava/lang/String;

    move-result-object v2

    .line 680
    .local v2, "localTimeZone":Ljava/lang/String;
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 681
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 683
    .local v0, "bundle":Landroid/os/Bundle;
    const v5, 0x7f0c0092

    invoke-static {v5}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    .line 684
    aput-object v4, v6, v7

    const/4 v7, 0x1

    aput-object v2, v6, v7

    .line 682
    invoke-static {v5, v6}, Lim/doit/pro/activity/utils/ViewUtils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 685
    .local v3, "message":Ljava/lang/String;
    const-string v5, "dialog_message_str"

    invoke-virtual {v0, v5, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 686
    const-string v5, "dialog_negative_button"

    const v6, 0x7f0c0027

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 687
    invoke-static {p0, v0}, Lim/doit/pro/utils/AlertDialogUtils;->showDialog(Landroid/app/Activity;Landroid/os/Bundle;)Lim/doit/pro/ui/component/DMessageDialog;

    move-result-object v1

    .line 689
    .local v1, "dialog":Lim/doit/pro/ui/component/DMessageDialog;
    new-instance v5, Lim/doit/pro/activity/HomeActivity$6;

    invoke-direct {v5, p0}, Lim/doit/pro/activity/HomeActivity$6;-><init>(Lim/doit/pro/activity/HomeActivity;)V

    invoke-virtual {v1, v5}, Lim/doit/pro/ui/component/DMessageDialog;->setOnNegativeButtonClickListener(Lim/doit/pro/ui/component/DMessageDialog$OnButtonClickListener;)Lim/doit/pro/ui/component/DMessageDialog;

    .line 700
    iget-object v5, p0, Lim/doit/pro/activity/HomeActivity;->mFragments:Landroid/app/FragmentManager;

    const-string v6, "DIALOG_TAG_TIMEZONE_DIFF"

    invoke-virtual {v1, v5, v6}, Lim/doit/pro/ui/component/DMessageDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 702
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "dialog":Lim/doit/pro/ui/component/DMessageDialog;
    .end local v3    # "message":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private syncMany()V
    .locals 0

    .prologue
    .line 248
    invoke-static {}, Lim/doit/pro/utils/BroadcastUtils;->sendSyncManyBroadcastBySystem()V

    .line 249
    return-void
.end method

.method private updateDetailActionBar()V
    .locals 2

    .prologue
    .line 542
    invoke-virtual {p0}, Lim/doit/pro/activity/HomeActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 543
    .local v0, "actionBar":Landroid/app/ActionBar;
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->currentBox()Lim/doit/pro/model/Box;

    move-result-object v1

    invoke-virtual {v1}, Lim/doit/pro/model/Box;->getNameResId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    .line 544
    invoke-direct {p0}, Lim/doit/pro/activity/HomeActivity;->updateDetailSubtitle()V

    .line 545
    invoke-virtual {p0}, Lim/doit/pro/activity/HomeActivity;->invalidateOptionsMenu()V

    .line 546
    return-void
.end method

.method private updateDetailFragment()V
    .locals 6

    .prologue
    .line 500
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->currentBox()Lim/doit/pro/model/Box;

    move-result-object v1

    .line 501
    .local v1, "box":Lim/doit/pro/model/Box;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 502
    .local v0, "args":Landroid/os/Bundle;
    const-string v4, "box"

    invoke-static {}, Lim/doit/pro/activity/DoitApp;->currentBox()Lim/doit/pro/model/Box;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 503
    iget-object v4, p0, Lim/doit/pro/activity/HomeActivity;->mFragments:Landroid/app/FragmentManager;

    invoke-virtual {v4}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v3

    .line 505
    .local v3, "ft":Landroid/app/FragmentTransaction;
    invoke-virtual {v1}, Lim/doit/pro/model/Box;->isProjects()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 506
    invoke-static {v0}, Lim/doit/pro/activity/ProjectListFragment;->getInstance(Landroid/os/Bundle;)Lim/doit/pro/activity/ProjectListFragment;

    move-result-object v2

    .line 516
    .local v2, "fragment":Landroid/app/Fragment;
    :goto_0
    const v4, 0x7f0b008e

    const-string v5, "d_fragment"

    invoke-virtual {v3, v4, v2, v5}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 517
    invoke-virtual {v3}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 518
    return-void

    .line 507
    .end local v2    # "fragment":Landroid/app/Fragment;
    :cond_0
    invoke-virtual {v1}, Lim/doit/pro/model/Box;->isGoals()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 508
    invoke-static {v0}, Lim/doit/pro/activity/GoalListFragment;->getInstance(Landroid/os/Bundle;)Lim/doit/pro/activity/GoalListFragment;

    move-result-object v2

    .line 509
    .restart local v2    # "fragment":Landroid/app/Fragment;
    goto :goto_0

    .end local v2    # "fragment":Landroid/app/Fragment;
    :cond_1
    invoke-virtual {v1}, Lim/doit/pro/model/Box;->isContexts()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 510
    invoke-static {v0}, Lim/doit/pro/activity/TaskContextListFragment;->getInstance(Landroid/os/Bundle;)Lim/doit/pro/activity/TaskContextListFragment;

    move-result-object v2

    .line 511
    .restart local v2    # "fragment":Landroid/app/Fragment;
    goto :goto_0

    .end local v2    # "fragment":Landroid/app/Fragment;
    :cond_2
    invoke-virtual {v1}, Lim/doit/pro/model/Box;->isFilters()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 512
    invoke-static {v0}, Lim/doit/pro/activity/FilterListFragment;->getInstance(Landroid/os/Bundle;)Lim/doit/pro/activity/FilterListFragment;

    move-result-object v2

    .line 513
    .restart local v2    # "fragment":Landroid/app/Fragment;
    goto :goto_0

    .line 514
    .end local v2    # "fragment":Landroid/app/Fragment;
    :cond_3
    invoke-static {v0}, Lim/doit/pro/activity/TaskListFragment;->getInstance(Landroid/os/Bundle;)Lim/doit/pro/activity/TaskListFragment;

    move-result-object v2

    .restart local v2    # "fragment":Landroid/app/Fragment;
    goto :goto_0
.end method

.method private updateDetailSubtitle()V
    .locals 2

    .prologue
    .line 549
    iget-object v0, p0, Lim/doit/pro/activity/HomeActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    iget-object v1, p0, Lim/doit/pro/activity/HomeActivity;->mMenuListView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->isDrawerOpen(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 553
    :goto_0
    return-void

    .line 552
    :cond_0
    invoke-virtual {p0}, Lim/doit/pro/activity/HomeActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iget-object v1, p0, Lim/doit/pro/activity/HomeActivity;->mDetailSubTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateMenuListActionBar()V
    .locals 2

    .prologue
    .line 535
    invoke-virtual {p0}, Lim/doit/pro/activity/HomeActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 536
    .local v0, "actionBar":Landroid/app/ActionBar;
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->currentBox()Lim/doit/pro/model/Box;

    move-result-object v1

    invoke-virtual {v1}, Lim/doit/pro/model/Box;->getNameResId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    .line 537
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->user()Lim/doit/pro/model/User;

    move-result-object v1

    invoke-virtual {v1}, Lim/doit/pro/model/User;->getEmail()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 538
    invoke-virtual {p0}, Lim/doit/pro/activity/HomeActivity;->invalidateOptionsMenu()V

    .line 539
    return-void
.end method


# virtual methods
.method protected afterSync(Z)V
    .locals 1
    .param p1, "isSuccess"    # Z

    .prologue
    .line 706
    const-string v0, "stop sync ui"

    invoke-static {v0}, Lim/doit/pro/utils/Logger;->d(Ljava/lang/Object;)V

    .line 707
    invoke-direct {p0}, Lim/doit/pro/activity/HomeActivity;->finishPullToRefresh()V

    .line 708
    invoke-direct {p0}, Lim/doit/pro/activity/HomeActivity;->reloadMenuListAndActionbar()V

    .line 709
    return-void
.end method

.method public changeBox(Lim/doit/pro/model/Box;)V
    .locals 2
    .param p1, "box"    # Lim/doit/pro/model/Box;

    .prologue
    .line 113
    invoke-direct {p0}, Lim/doit/pro/activity/HomeActivity;->finishActionMode()V

    .line 114
    invoke-static {p1}, Lim/doit/pro/activity/DoitApp;->setCurrentBox(Lim/doit/pro/model/Box;)V

    .line 115
    const/4 v0, 0x1

    iput-boolean v0, p0, Lim/doit/pro/activity/HomeActivity;->mRefreshDetail:Z

    .line 116
    iget-object v0, p0, Lim/doit/pro/activity/HomeActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    iget-object v1, p0, Lim/doit/pro/activity/HomeActivity;->mMenuListView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->closeDrawer(Landroid/view/View;)V

    .line 117
    return-void
.end method

.method public closeMenuList()V
    .locals 2

    .prologue
    .line 131
    const/4 v0, 0x0

    iput-boolean v0, p0, Lim/doit/pro/activity/HomeActivity;->mRefreshDetail:Z

    .line 132
    iget-object v0, p0, Lim/doit/pro/activity/HomeActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    iget-object v1, p0, Lim/doit/pro/activity/HomeActivity;->mMenuListView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->closeDrawer(Landroid/view/View;)V

    .line 133
    return-void
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lim/doit/pro/activity/HomeActivity;->mPullToRefreshLayout:Lim/doit/pro/ui/component/pullrefresh/PullToRefreshLayout;

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lim/doit/pro/activity/HomeActivity;->mPullToRefreshLayout:Lim/doit/pro/ui/component/pullrefresh/PullToRefreshLayout;

    invoke-virtual {v0}, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshLayout;->onDetachedFromWindow()V

    .line 226
    :cond_0
    invoke-super {p0}, Lim/doit/pro/activity/BaseActivityRegisterSyncFinish;->finish()V

    .line 227
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 183
    invoke-super {p0, p1}, Lim/doit/pro/activity/BaseActivityRegisterSyncFinish;->onCreate(Landroid/os/Bundle;)V

    .line 184
    const/4 v1, 0x1

    iput-boolean v1, p0, Lim/doit/pro/activity/HomeActivity;->mIsCreatedView:Z

    .line 185
    const v1, 0x7f03002d

    invoke-virtual {p0, v1}, Lim/doit/pro/activity/HomeActivity;->setContentView(I)V

    .line 186
    invoke-static {}, Lim/doit/pro/utils/PrefUtils;->isShowDailyPlanReviewGuide()Z

    move-result v0

    .line 187
    .local v0, "isShowGuide":Z
    if-eqz v0, :cond_0

    .line 188
    invoke-direct {p0}, Lim/doit/pro/activity/HomeActivity;->buildDailyPlanReviewGuideView()Landroid/widget/ImageView;

    move-result-object v1

    invoke-direct {p0, v1}, Lim/doit/pro/activity/HomeActivity;->showGuide(Landroid/widget/ImageView;)V

    .line 189
    const/4 v1, 0x0

    invoke-static {v1}, Lim/doit/pro/utils/PrefUtils;->saveShowDailyPlanReviewGuide(Z)V

    .line 191
    :cond_0
    invoke-virtual {p0}, Lim/doit/pro/activity/HomeActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    iput-object v1, p0, Lim/doit/pro/activity/HomeActivity;->mFragments:Landroid/app/FragmentManager;

    .line 192
    invoke-direct {p0}, Lim/doit/pro/activity/HomeActivity;->init()V

    .line 193
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 137
    invoke-super {p0, p1}, Lim/doit/pro/activity/BaseActivityRegisterSyncFinish;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 231
    invoke-direct {p0}, Lim/doit/pro/activity/HomeActivity;->finishPullToRefresh()V

    .line 232
    invoke-direct {p0}, Lim/doit/pro/activity/HomeActivity;->removeHandlerCallbacks()V

    .line 233
    invoke-super {p0}, Lim/doit/pro/activity/BaseActivityRegisterSyncFinish;->onDestroy()V

    .line 234
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 158
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 159
    invoke-direct {p0}, Lim/doit/pro/activity/HomeActivity;->onBackClick()V

    .line 160
    const/4 v0, 0x0

    .line 162
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lim/doit/pro/activity/BaseActivityRegisterSyncFinish;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 197
    invoke-super {p0, p1}, Lim/doit/pro/activity/BaseActivityRegisterSyncFinish;->onNewIntent(Landroid/content/Intent;)V

    .line 198
    invoke-virtual {p0, p1}, Lim/doit/pro/activity/HomeActivity;->setIntent(Landroid/content/Intent;)V

    .line 199
    invoke-direct {p0}, Lim/doit/pro/activity/HomeActivity;->init()V

    .line 200
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v1, 0x1

    .line 294
    iget-object v2, p0, Lim/doit/pro/activity/HomeActivity;->mDrawerToggle:Landroid/support/v7/app/ActionBarDrawerToggle;

    invoke-virtual {v2, p1}, Landroid/support/v7/app/ActionBarDrawerToggle;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 342
    :goto_0
    return v1

    .line 298
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 299
    .local v0, "id":I
    const v2, 0x7f0b020c

    if-ne v0, v2, :cond_1

    .line 300
    invoke-direct {p0}, Lim/doit/pro/activity/HomeActivity;->onAddClick()V

    goto :goto_0

    .line 302
    :cond_1
    const v2, 0x7f0b021c

    if-ne v0, v2, :cond_2

    .line 303
    invoke-direct {p0}, Lim/doit/pro/activity/HomeActivity;->onDailyPlanClick()V

    goto :goto_0

    .line 305
    :cond_2
    const v2, 0x7f0b021d

    if-ne v0, v2, :cond_3

    .line 306
    invoke-direct {p0}, Lim/doit/pro/activity/HomeActivity;->onDailyReviewClick()V

    goto :goto_0

    .line 308
    :cond_3
    const v2, 0x7f0b0222

    if-ne v0, v2, :cond_4

    .line 309
    invoke-direct {p0}, Lim/doit/pro/activity/HomeActivity;->onSettingsClick()V

    goto :goto_0

    .line 311
    :cond_4
    const v2, 0x7f0b0223

    if-ne v0, v2, :cond_5

    .line 312
    invoke-direct {p0}, Lim/doit/pro/activity/HomeActivity;->onGcalSyncClick()V

    goto :goto_0

    .line 314
    :cond_5
    const v2, 0x7f0b020e

    if-ne v0, v2, :cond_6

    .line 315
    invoke-direct {p0}, Lim/doit/pro/activity/HomeActivity;->onSyncManyClick()V

    goto :goto_0

    .line 317
    :cond_6
    const v2, 0x7f0b021f

    if-ne v0, v2, :cond_7

    .line 318
    invoke-direct {p0}, Lim/doit/pro/activity/HomeActivity;->showGroupByDialog()V

    goto :goto_0

    .line 320
    :cond_7
    const v2, 0x7f0b020f

    if-ne v0, v2, :cond_8

    .line 321
    invoke-direct {p0}, Lim/doit/pro/activity/HomeActivity;->showTagFitlerDialog()V

    goto :goto_0

    .line 323
    :cond_8
    const v2, 0x7f0b0210

    if-ne v0, v2, :cond_9

    .line 324
    invoke-direct {p0}, Lim/doit/pro/activity/HomeActivity;->onSearchClick()V

    goto :goto_0

    .line 326
    :cond_9
    const v2, 0x7f0b021e

    if-ne v0, v2, :cond_a

    .line 327
    invoke-direct {p0}, Lim/doit/pro/activity/HomeActivity;->onNextBoxShowModeClick()V

    goto :goto_0

    .line 329
    :cond_a
    const v2, 0x7f0b021b

    if-ne v0, v2, :cond_b

    .line 330
    invoke-direct {p0}, Lim/doit/pro/activity/HomeActivity;->onArchiveClick()V

    goto :goto_0

    .line 332
    :cond_b
    const v2, 0x7f0b021a

    if-ne v0, v2, :cond_c

    .line 333
    invoke-direct {p0}, Lim/doit/pro/activity/HomeActivity;->onEmptyClick()V

    goto :goto_0

    .line 335
    :cond_c
    const v2, 0x7f0b0220

    if-ne v0, v2, :cond_d

    .line 336
    invoke-direct {p0}, Lim/doit/pro/activity/HomeActivity;->onNoticeClick()V

    goto :goto_0

    .line 338
    :cond_d
    const v2, 0x7f0b0221

    if-ne v0, v2, :cond_e

    .line 339
    invoke-direct {p0}, Lim/doit/pro/activity/HomeActivity;->onContactListClick()V

    goto/16 :goto_0

    .line 342
    :cond_e
    invoke-super {p0, p1}, Lim/doit/pro/activity/BaseActivityRegisterSyncFinish;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto/16 :goto_0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 214
    iget-object v0, p0, Lim/doit/pro/activity/HomeActivity;->mCheckVersion:Lim/doit/pro/asynctask/CheckVersion;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lim/doit/pro/activity/HomeActivity;->mCheckVersion:Lim/doit/pro/asynctask/CheckVersion;

    invoke-virtual {v0}, Lim/doit/pro/asynctask/CheckVersion;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 215
    iget-object v0, p0, Lim/doit/pro/activity/HomeActivity;->mCheckVersion:Lim/doit/pro/asynctask/CheckVersion;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lim/doit/pro/asynctask/CheckVersion;->cancel(Z)Z

    .line 216
    const/4 v0, 0x0

    iput-object v0, p0, Lim/doit/pro/activity/HomeActivity;->mCheckVersion:Lim/doit/pro/asynctask/CheckVersion;

    .line 218
    :cond_0
    invoke-super {p0}, Lim/doit/pro/activity/BaseActivityRegisterSyncFinish;->onPause()V

    .line 219
    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 431
    invoke-super {p0, p1}, Lim/doit/pro/activity/BaseActivityRegisterSyncFinish;->onPostCreate(Landroid/os/Bundle;)V

    .line 432
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-ge v0, v1, :cond_0

    .line 433
    iget-object v0, p0, Lim/doit/pro/activity/HomeActivity;->mDrawerToggle:Landroid/support/v7/app/ActionBarDrawerToggle;

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBarDrawerToggle;->syncState()V

    .line 435
    :cond_0
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 142
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 143
    invoke-virtual {p0}, Lim/doit/pro/activity/HomeActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 144
    .local v0, "inflater":Landroid/view/MenuInflater;
    iget-object v1, p0, Lim/doit/pro/activity/HomeActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    iget-object v2, p0, Lim/doit/pro/activity/HomeActivity;->mMenuListView:Landroid/widget/ListView;

    invoke-virtual {v1, v2}, Landroid/support/v4/widget/DrawerLayout;->isDrawerOpen(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 145
    const v1, 0x7f0e0006

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 146
    invoke-direct {p0, p1}, Lim/doit/pro/activity/HomeActivity;->setActionbarNoticeViewContent(Landroid/view/Menu;)V

    .line 147
    invoke-direct {p0, p1}, Lim/doit/pro/activity/HomeActivity;->setActionbarAvatarViewContent(Landroid/view/Menu;)V

    .line 152
    :goto_0
    invoke-super {p0, p1}, Lim/doit/pro/activity/BaseActivityRegisterSyncFinish;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1

    .line 149
    :cond_0
    const v1, 0x7f0e0005

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 150
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->currentBox()Lim/doit/pro/model/Box;

    move-result-object v1

    invoke-static {p1, v1}, Lim/doit/pro/activity/utils/ListUIHelper;->initBoxTaskListMenuBtns(Landroid/view/Menu;Lim/doit/pro/model/Box;)V

    goto :goto_0
.end method

.method public onRefreshStarted(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 557
    invoke-direct {p0}, Lim/doit/pro/activity/HomeActivity;->sendSyncManyBroadcast()V

    .line 558
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 203
    invoke-super {p0}, Lim/doit/pro/activity/BaseActivityRegisterSyncFinish;->onResume()V

    .line 204
    iget-boolean v0, p0, Lim/doit/pro/activity/HomeActivity;->mIsCreatedView:Z

    if-nez v0, :cond_0

    .line 205
    invoke-direct {p0}, Lim/doit/pro/activity/HomeActivity;->reloadMenuListAndActionbar()V

    .line 207
    :cond_0
    invoke-direct {p0}, Lim/doit/pro/activity/HomeActivity;->checkTimezoneEveryday()V

    .line 208
    invoke-direct {p0}, Lim/doit/pro/activity/HomeActivity;->checkVersionEveryday()V

    .line 209
    const/4 v0, 0x0

    iput-boolean v0, p0, Lim/doit/pro/activity/HomeActivity;->mIsCreatedView:Z

    .line 210
    return-void
.end method

.method public onSwipeRight()V
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Lim/doit/pro/activity/HomeActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    iget-object v1, p0, Lim/doit/pro/activity/HomeActivity;->mMenuListView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->isDrawerOpen(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 101
    iget-object v0, p0, Lim/doit/pro/activity/HomeActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    iget-object v1, p0, Lim/doit/pro/activity/HomeActivity;->mMenuListView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->openDrawer(Landroid/view/View;)V

    .line 103
    :cond_0
    return-void
.end method

.method public selectAllTags()V
    .locals 1

    .prologue
    .line 639
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lim/doit/pro/activity/HomeActivity;->filterTasksWithTags(Lim/doit/pro/ui/model/TagFilter;)V

    .line 640
    return-void
.end method

.method public selectTagsComplete(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 632
    .local p1, "tags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Lim/doit/pro/ui/model/TagFilter;

    invoke-direct {v0}, Lim/doit/pro/ui/model/TagFilter;-><init>()V

    .line 633
    .local v0, "tagFilter":Lim/doit/pro/ui/model/TagFilter;
    invoke-virtual {v0, p1}, Lim/doit/pro/ui/model/TagFilter;->setTags(Ljava/util/ArrayList;)V

    .line 634
    invoke-direct {p0, v0}, Lim/doit/pro/activity/HomeActivity;->filterTasksWithTags(Lim/doit/pro/ui/model/TagFilter;)V

    .line 635
    return-void
.end method

.method public selectUntagged()V
    .locals 2

    .prologue
    .line 644
    new-instance v0, Lim/doit/pro/ui/model/TagFilter;

    invoke-direct {v0}, Lim/doit/pro/ui/model/TagFilter;-><init>()V

    .line 645
    .local v0, "tagFilter":Lim/doit/pro/ui/model/TagFilter;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/model/TagFilter;->setUntagged(Z)V

    .line 646
    invoke-direct {p0, v0}, Lim/doit/pro/activity/HomeActivity;->filterTasksWithTags(Lim/doit/pro/ui/model/TagFilter;)V

    .line 647
    return-void
.end method

.method public updateActionBarSubTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 107
    iput-object p1, p0, Lim/doit/pro/activity/HomeActivity;->mDetailSubTitle:Ljava/lang/String;

    .line 108
    invoke-direct {p0}, Lim/doit/pro/activity/HomeActivity;->updateDetailSubtitle()V

    .line 109
    return-void
.end method
