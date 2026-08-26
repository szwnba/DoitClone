.class public Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher;
.super Ljava/lang/Object;
.source "PullToRefreshAttacher.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "PullToRefreshAttacher"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mEnvironmentDelegate:Lim/doit/pro/ui/component/pullrefresh/EnvironmentDelegate;

.field private mHandlingTouchEventFromDown:Z

.field private mHeaderTransformer:Lim/doit/pro/ui/component/pullrefresh/HeaderTransformer;

.field private mHeaderView:Landroid/view/View;

.field private mHeaderViewListener:Lim/doit/pro/ui/component/pullrefresh/HeaderViewListener;

.field private mInitialMotionX:F

.field private mInitialMotionY:F

.field private mIsBeingDragged:Z

.field private mIsDestroyed:Z

.field private mIsRefreshing:Z

.field private mLastMotionY:F

.field private mOnRefreshListener:Lim/doit/pro/ui/component/pullrefresh/OnRefreshListener;

.field private mPullBeginY:F

.field private final mRect:Landroid/graphics/Rect;

.field private final mRefreshMinimize:Z

.field private final mRefreshMinimizeDelay:I

.field private final mRefreshMinimizeRunnable:Ljava/lang/Runnable;

.field private final mRefreshOnUp:Z

.field private final mRefreshScrollDistance:F

.field private final mRefreshableViews:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/view/View;",
            "Lim/doit/pro/ui/component/pullrefresh/ViewDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private final mTouchSlop:I

.field private mViewBeingDragged:Landroid/view/View;

.field private final mViewLocationResult:[I


# direct methods
.method protected constructor <init>(Landroid/app/Activity;Lim/doit/pro/ui/component/pullrefresh/Options;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "options"    # Lim/doit/pro/ui/component/pullrefresh/Options;

    .prologue
    const/4 v3, 0x0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-boolean v3, p0, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher;->mIsDestroyed:Z

    .line 68
    const/4 v1, 0x2

    new-array v1, v1, [I

    iput-object v1, p0, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher;->mViewLocationResult:[I

    .line 69
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher;->mRect:Landroid/graphics/Rect;

    .line 638
    new-instance v1, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher$1;

    invoke-direct {v1, p0}, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher$1;-><init>(Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher;)V

    iput-object v1, p0, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher;->mRefreshMinimizeRunnable:Ljava/lang/Runnable;

    .line 72
    if-nez p1, :cond_0

    .line 73
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "activity cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 75
    :cond_0
    if-nez p2, :cond_1

    .line 76
    const-string v1, "PullToRefreshAttacher"

    const-string v2, "Given null options so using default options."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    new-instance p2, Lim/doit/pro/ui/component/pullrefresh/Options;

    .end local p2    # "options":Lim/doit/pro/ui/component/pullrefresh/Options;
    invoke-direct {p2}, Lim/doit/pro/ui/component/pullrefresh/Options;-><init>()V

    .line 80
    .restart local p2    # "options":Lim/doit/pro/ui/component/pullrefresh/Options;
    :cond_1
    iput-object p1, p0, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher;->mActivity:Landroid/app/Activity;

    .line 81
    new-instance v1, Ljava/util/WeakHashMap;

    invoke-direct {v1}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v1, p0, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher;->mRefreshableViews:Ljava/util/WeakHashMap;

    .line 84
    iget v1, p2, Lim/doit/pro/ui/component/pullrefresh/Options;->refreshScrollDistance:F

    iput v1, p0, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher;->mRefreshScrollDistance:F

    .line 85
    iget-boolean v1, p2, Lim/doit/pro/ui/component/pullrefresh/Options;->refreshOnUp:Z

    iput-boolean v1, p0, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher;->mRefreshOnUp:Z

    .line 86
    iget v1, p2, Lim/doit/pro/ui/component/pullrefresh/Options;->refreshMinimizeDelay:I

    iput v1, p0, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher;->mRefreshMinimizeDelay:I

    .line 87
    iget-boolean v1, p2, Lim/doit/pro/ui/component/pullrefresh/Options;->refreshMinimize:Z

    iput-boolean v1, p0, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher;->mRefreshMinimize:Z

    .line 90
    iget-object v1, p2, Lim/doit/pro/ui/component/pullrefresh/Options;->environmentDelegate:Lim/doit/pro/ui/component/pullrefresh/EnvironmentDelegate;

    if-eqz v1, :cond_2

    .line 91
    iget-object v1, p2, Lim/doit/pro/ui/component/pullrefresh/Options;->environmentDelegate:Lim/doit/pro/ui/component/pullrefresh/EnvironmentDelegate;

    .line 90
    :goto_0
    iput-object v1, p0, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher;->mEnvironmentDelegate:Lim/doit/pro/ui/component/pullrefresh/EnvironmentDelegate;

    .line 95
    iget-object v1, p2, Lim/doit/pro/ui/component/pullrefresh/Options;->headerTransformer:Lim/doit/pro/ui/component/pullrefresh/HeaderTransformer;

    if-eqz v1, :cond_3

    .line 96
    iget-object v1, p2, Lim/doit/pro/ui/component/pullrefresh/Options;->headerTransformer:Lim/doit/pro/ui/component/pullrefresh/HeaderTransformer;

    .line 95
    :goto_1
    iput-object v1, p0, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher;->mHeaderTransformer:Lim/doit/pro/ui/component/pullrefresh/HeaderTransformer;

    .line 100
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher;->mTouchSlop:I

    .line 103
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 107
    .local v0, "decorView":Landroid/view/ViewGroup;
    iget-object v1, p0, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher;->mEnvironmentDelegate:Lim/doit/pro/ui/component/pullrefresh/EnvironmentDelegate;

    invoke-interface {v1, p1}, Lim/doit/pro/ui/component/pullrefresh/EnvironmentDelegate;->getContextForInflater(Landroid/app/Activity;)Landroid/content/Context;

    move-result-object v1

    .line 106
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 108
    iget v2, p2, Lim/doit/pro/ui/component/pullrefresh/Options;->headerLayout:I

    .line 107
    invoke-virtual {v1, v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 106
    iput-object v1, p0, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher;->mHeaderView:Landroid/view/View;

    .line 109
    iget-object v1, p0, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher;->mHeaderView:Landroid/view/View;

    if-nez v1, :cond_4

    .line 110
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Must supply valid layout id for header."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 92
    .end local v0    # "decorView":Landroid/view/ViewGroup;
    :cond_2
    invoke-virtual {p0}, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher;->createDefaultEnvironmentDelegate()Lim/doit/pro/ui/component/pullrefresh/EnvironmentDelegate;

    move-result-object v1

    goto :goto_0

    .line 97
    :cond_3
    invoke-virtual {p0}, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher;->createDefaultHeaderTransformer()Lim/doit/pro/ui/component/pullrefresh/HeaderTransformer;

    move-result-object v1

    goto :goto_1

    .line 113
    .restart local v0    # "decorView":Landroid/view/ViewGroup;
    :cond_4
    iget-object v1, p0, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher;->mHeaderView:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 116
    iget-object v1, p0, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher;->mHeaderTransformer:Lim/doit/pro/ui/component/pullrefresh/HeaderTransformer;

    iget-object v2, p0, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher;->mHeaderView:Landroid/view/View;

    invoke-virtual {v1, p1, v2}, Lim/doit/pro/ui/component/pullrefresh/HeaderTransformer;->onViewCreated(Landroid/app/Activity;Landroid/view/View;)V

    .line 119
    new-instance v1, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher$2;

    invoke-direct {v1, p0, v0}, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher$2;-><init>(Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher;Landroid/view/ViewGroup;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 131
    return-void
.end method

.method static synthetic access$0(Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher;)Landroid/view/View;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher;->mHeaderView:Landroid/view/View;

    return-object v0
.end method

.method private canRefresh(Z)Z
    .locals 1
    .param p1, "fromTouch"    # Z

    .prologue
    .line 534
    iget-boolean v0, p0, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher;->mIsRefreshing:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher;->mOnRefreshListener:Lim/doit/pro/ui/component/pullrefresh/OnRefreshListener;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkScrollForRefresh(Landroid/view/View;)Z
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x1

    .line 501
    iget-boolean v1, p0, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher;->mIsBeingDragged:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher;->mRefreshOnUp:Z

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 502
    iget v1, p0, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher;->mLastMotionY:F

    iget v2, p0, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher;->mPullBeginY:F

    sub-float/2addr v1, v2

    invoke-direct {p0, p1}, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher;->getScrollNeededForRefresh(Landroid/view/View;)F

    move-result v2

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_0

    .line 503
    invoke-direct {p0, p1, v0, v0}, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher;->setRefreshingInt(Landroid/view/View;ZZ)V

    .line 507
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getScrollNeededForRefresh(Landroid/view/View;)F
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 538
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher;->mRefreshScrollDistance:F

    mul-float/2addr v0, v1

    return v0
.end method

.method private isDestroyed()Z
    .locals 2

    .prologue
    .line 582
    iget-boolean v0, p0, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher;->mIsDestroyed:Z

    if-eqz v0, :cond_0

    .line 583
    const-string v0, "PullToRefreshAttacher"

    const-string v1, "PullToRefreshAttacher is destroyed."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    :cond_0
    iget-boolean v0, p0, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher;->mIsDestroyed:Z

    return v0
.end method

.method private reset(Z)V
    .locals 2
    .param p1, "fromTouch"    # Z

    .prologue
    .line 543
    const/4 v0, 0x0

    iput-boolean v0, p0, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher;->mIsRefreshing:Z

    .line 546
    iget-boolean v0, p0, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher;->mRefreshMinimize:Z

    if-eqz v0, :cond_0

    .line 547
    invoke-virtual {p0}, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher;->getHeaderView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher;->mRefreshMinimizeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 551
    :cond_0
    invoke-virtual {p0}, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher;->hideHeaderView()V

    .line 552
    return-void
.end method

.method private setRefreshingInt(Landroid/view/View;ZZ)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "refreshing"    # Z
    .param p3, "fromTouch"    # Z

    .prologue
    .line 511
    invoke-direct {p0}, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 526
    :cond_0
    :goto_0
    return-void

    .line 515
    :cond_1
    iget-boolean v0, p0, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher;->mIsRefreshing:Z

    if-eq v0, p2, :cond_0

    .line 519
    invoke-virtual {p0}, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher;->resetTouch()V

    .line 521
    if-eqz p2, :cond_2

    invoke-direct {p0, p3}, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher;->canRefresh(Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 522
    invoke-direct {p0, p1, p3}, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher;->startRefresh(Landroid/view/View;Z)V

    goto :goto_0

    .line 524
    :cond_2
    invoke-direct {p0, p3}, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher;->reset(Z)V

    goto :goto_0
.end method

.method private startRefresh(Landroid/view/View;Z)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "fromTouch"    # Z

    .prologue
    .line 556
    const/4 v0, 0x1

    iput-boolean v0, p0, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher;->mIsRefreshing:Z

    .line 559
    if-eqz p2, :cond_0

    .line 560
    iget-object v0, p0, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher;->mOnRefreshListener:Lim/doit/pro/ui/component/pullrefresh/OnRefreshListener;

    if-eqz v0, :cond_0

    .line 561
    iget-object v0, p0, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher;->mOnRefreshListener:Lim/doit/pro/ui/component/pullrefresh/OnRefreshListener;

    invoke-interface {v0, p1}, Lim/doit/pro/ui/component/pullrefresh/OnRefreshListener;->onRefreshStarted(Landroid/view/View;)V

    .line 566
    :cond_0
    iget-object v0, p0, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher;->mHeaderTransformer:Lim/doit/pro/ui/component/pullrefresh/HeaderTransformer;

    invoke-virtual {v0}, Lim/doit/pro/ui/component/pullrefresh/HeaderTransformer;->onRefreshStarted()V

    .line 569
    invoke-virtual {p0}, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher;->showHeaderView()V

    .line 572
    iget-boolean v0, p0, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher;->mRefreshMinimize:Z

    if-eqz v0, :cond_1

    .line 573
    iget v0, p0, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher;->mRefreshMinimizeDelay:I

    if-lez v0, :cond_2

    .line 574
    invoke-virtual {p0}, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher;->getHeaderView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher;->mRefreshMinimizeRunnable:Ljava/lang/Runnable;

    iget v2, p0, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher;->mRefreshMinimizeDelay:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 579
    :cond_1
    :goto_0
    return-void

    .line 576
    :cond_2
    invoke-virtual {p0}, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher;->getHeaderView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher;->mRefreshMinimizeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method


# virtual methods
.method protected addHeaderViewToActivity(Landroid/view/View;)V
    .locals 7
    .param p1, "headerView"    # Landroid/view/View;

    .prologue
    .line 590
    iget-object v3, p0, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 593
    const/4 v1, -0x1

    .line 594
    .local v1, "width":I
    const/4 v2, -0x2

    .line 595
    .local v2, "height":I
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .line 596
    .local v6, "requestedLp":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v6, :cond_0

    .line 597
    iget v1, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 598
    iget v2, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 602
    :cond_0
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    .line 603
    const/16 v3, 0x3e8

    .line 604
    const/16 v4, 0x18

    .line 605
    const/4 v5, -0x3

    .line 602
    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 606
    .local v0, "wlp":Landroid/view/WindowManager$LayoutParams;
    const/4 v3, 0x0

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 607
    iget-object v3, p0, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher;->mRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 608
    const/16 v3, 0x30

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 611
    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 612
    iget-object v3, p0, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3, p1, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 613
    return-void
.end method

.method addRefreshableView(Landroid/view/View;Lim/doit/pro/ui/component/pullrefresh/ViewDelegate;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "viewDelegate"    # Lim/doit/pro/ui/component/pullrefresh/ViewDelegate;

    .prologue
    .line 139
    invoke-direct {p0}, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    :goto_0
    return-void

    .line 142
    :cond_0
    if-nez p1, :cond_1

    .line 143
    const-string v0, "PullToRefreshAttacher"

    const-string v1, "Refreshable View is null."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 148
    :cond_1
    if-nez p2, :cond_2

    .line 149
    invoke-static {p1}, Lim/doit/pro/ui/component/pullrefresh/InstanceCreationUtils;->getBuiltInViewDelegate(Landroid/view/View;)Lim/doit/pro/ui/component/pullrefresh/ViewDelegate;

    move-result-object p2

    .line 153
    :cond_2
    iget-object v0, p0, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher;->mRefreshableViews:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method clearRefreshableViews()V
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher;->mRefreshableViews:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->clear()V

    .line 169
    return-void
.end method

.method protected createDefaultEnvironmentDelegate()Lim/doit/pro/ui/component/pullrefresh/EnvironmentDelegate;
    .locals 1

    .prologue
    .line 478
    new-instance v0, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher$3;

    invoke-direct {v0, p0}, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher$3;-><init>(Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher;)V

    return-object v0
.end method

.method protected createDefaultHeaderTransformer()Lim/doit/pro/ui/component/pullrefresh/HeaderTransformer;
    .locals 1

    .prologue
    .line 497
    new-instance v0, Lim/doit/pro/ui/component/pullrefresh/DefaultHeaderTransformer;

    invoke-direct {v0}, Lim/doit/pro/ui/component/pullrefresh/DefaultHeaderTransformer;-><init>()V

    return-object v0
.end method

.method destroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 217
    iget-boolean v0, p0, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher;->mIsDestroyed:Z

    if-eqz v0, :cond_0

    .line 232
    :goto_0
    return-void

    .line 220
    :cond_0
    iget-object v0, p0, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher;->mHeaderView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher;->removeHeaderViewFromActivity(Landroid/view/View;)V

    .line 223
    invoke-virtual {p0}, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher;->clearRefreshableViews()V

    .line 225
    iput-object v1, p0, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher;->mActivity:Landroid/app/Activity;

    .line 226
    iput-object v1, p0, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher;->mHeaderView:Landroid/view/View;

    .line 227
    iput-object v1, p0, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher;->mHeaderViewListener:Lim/doit/pro/ui/component/pullrefresh/HeaderViewListener;

    .line 228
    iput-object v1, p0, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher;->mEnvironmentDelegate:Lim/doit/pro/ui/component/pullrefresh/EnvironmentDelegate;

    .line 229
    iput-object v1, p0, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher;->mHeaderTransformer:Lim/doit/pro/ui/component/pullrefresh/HeaderTransformer;

    .line 231
    const/4 v0, 0x1

    iput-boolean v0, p0, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher;->mIsDestroyed:Z

    goto :goto_0
.end method

.method protected final getAttachedActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 474
    iget-object v0, p0, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method getHeaderTransformer()Lim/doit/pro/ui/component/pullrefresh/HeaderTransformer;
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher;->mHeaderTransformer:Lim/doit/pro/ui/component/pullrefresh/HeaderTransformer;

    return-object v0
.end method

.method final getHeaderView()Landroid/view/View;
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher;->mHeaderView:Landroid/view/View;

    return-object v0
.end method

.method hideHeaderView()V
    .locals 3

    .prologue
    .line 465
    iget-object v0, p0, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher;->mHeaderTransformer:Lim/doit/pro/ui/component/pullrefresh/HeaderTransformer;

    invoke-virtual {v0}, Lim/doit/pro/ui/component/pullrefresh/HeaderTransformer;->hideHeaderView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 466
    iget-object v0, p0, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher;->mHeaderViewListener:Lim/doit/pro/ui/component/pullrefresh/HeaderViewListener;

    if-eqz v0, :cond_0

    .line 467
    iget-object v0, p0, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher;->mHeaderViewListener:Lim/doit/pro/ui/component/pullrefresh/HeaderViewListener;

    iget-object v1, p0, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher;->mHeaderView:Landroid/view/View;

    .line 468
    const/4 v2, 0x2

    .line 467
    invoke-interface {v0, v1, v2}, Lim/doit/pro/ui/component/pullrefresh/HeaderViewListener;->onStateChanged(Landroid/view/View;I)V

    .line 471
    :cond_0
    return-void
.end method

.method final isRefreshing()Z
    .locals 1

    .prologue
    .line 196
    iget-boolean v0, p0, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher;->mIsRefreshing:Z

    return v0
.end method

.method final isViewBeingDragged(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x0

    .line 315
    invoke-virtual {p1}, Landroid/view/View;->isShown()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher;->mRefreshableViews:Ljava/util/WeakHashMap;

    invoke-virtual {v6, p1}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 317
    iget-object v6, p0, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher;->mViewLocationResult:[I

    invoke-virtual {p1, v6}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 318
    iget-object v6, p0, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher;->mViewLocationResult:[I

    aget v3, v6, v5

    .local v3, "viewLeft":I
    iget-object v6, p0, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher;->mViewLocationResult:[I

    const/4 v7, 0x1

    aget v4, v6, v7

    .line 319
    .local v4, "viewTop":I
    iget-object v6, p0, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher;->mRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v7

    add-int/2addr v7, v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v8

    add-int/2addr v8, v4

    invoke-virtual {v6, v3, v4, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 323
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v6

    float-to-int v1, v6

    .local v1, "rawX":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    float-to-int v2, v6

    .line 324
    .local v2, "rawY":I
    iget-object v6, p0, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 326
    iget-object v6, p0, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher;->mRefreshableViews:Ljava/util/WeakHashMap;

    invoke-virtual {v6, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lim/doit/pro/ui/component/pullrefresh/ViewDelegate;

    .line 327
    .local v0, "delegate":Lim/doit/pro/ui/component/pullrefresh/ViewDelegate;
    if-eqz v0, :cond_0

    .line 329
    iget-object v5, p0, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher;->mRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    sub-int v5, v1, v5

    int-to-float v5, v5

    iget-object v6, p0, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher;->mRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    sub-int v6, v2, v6

    int-to-float v6, v6

    invoke-interface {v0, p1, v5, v6}, Lim/doit/pro/ui/component/pullrefresh/ViewDelegate;->isReadyForPull(Landroid/view/View;FF)Z

    move-result v5

    .line 333
    .end local v0    # "delegate":Lim/doit/pro/ui/component/pullrefresh/ViewDelegate;
    .end local v1    # "rawX":I
    .end local v2    # "rawY":I
    .end local v3    # "viewLeft":I
    .end local v4    # "viewTop":I
    :cond_0
    return v5
.end method

.method minimizeHeader()V
    .locals 3

    .prologue
    .line 403
    invoke-direct {p0}, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 410
    :cond_0
    :goto_0
    return-void

    .line 405
    :cond_1
    iget-object v0, p0, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher;->mHeaderTransformer:Lim/doit/pro/ui/component/pullrefresh/HeaderTransformer;

    invoke-virtual {v0}, Lim/doit/pro/ui/component/pullrefresh/HeaderTransformer;->onRefreshMinimized()V

    .line 407
    iget-object v0, p0, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher;->mHeaderViewListener:Lim/doit/pro/ui/component/pullrefresh/HeaderViewListener;

    if-eqz v0, :cond_0

    .line 408
    iget-object v0, p0, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher;->mHeaderViewListener:Lim/doit/pro/ui/component/pullrefresh/HeaderViewListener;

    iget-object v1, p0, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher;->mHeaderView:Landroid/view/View;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lim/doit/pro/ui/component/pullrefresh/HeaderViewListener;->onStateChanged(Landroid/view/View;I)V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 178
    iget-object v0, p0, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher;->mHeaderTransformer:Lim/doit/pro/ui/component/pullrefresh/HeaderTransformer;

    iget-object v1, p0, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1, p1}, Lim/doit/pro/ui/component/pullrefresh/HeaderTransformer;->onConfigurationChanged(Landroid/app/Activity;Landroid/content/res/Configuration;)V

    .line 179
    return-void
.end method

.method final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v7, 0x1

    .line 264
    invoke-virtual {p0}, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher;->isRefreshing()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 265
    const/4 v5, 0x0

    .line 311
    :goto_0
    return v5

    .line 268
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .local v1, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 270
    .local v3, "y":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 311
    :cond_1
    :goto_1
    iget-boolean v5, p0, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher;->mIsBeingDragged:Z

    goto :goto_0

    .line 274
    :pswitch_0
    iget-boolean v5, p0, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher;->mIsBeingDragged:Z

    if-nez v5, :cond_1

    iget v5, p0, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher;->mInitialMotionY:F

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-lez v5, :cond_1

    .line 275
    iget v5, p0, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher;->mInitialMotionY:F

    sub-float v4, v3, v5

    .line 276
    .local v4, "yDiff":F
    iget v5, p0, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher;->mInitialMotionX:F

    sub-float v2, v1, v5

    .line 278
    .local v2, "xDiff":F
    cmpl-float v5, v4, v2

    if-lez v5, :cond_2

    iget v5, p0, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher;->mTouchSlop:I

    int-to-float v5, v5

    cmpl-float v5, v4, v5

    if-lez v5, :cond_2

    .line 279
    iput-boolean v7, p0, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher;->mIsBeingDragged:Z

    .line 280
    invoke-virtual {p0, v3}, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher;->onPullStarted(F)V

    goto :goto_1

    .line 281
    :cond_2
    iget v5, p0, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher;->mTouchSlop:I

    neg-int v5, v5

    int-to-float v5, v5

    cmpg-float v5, v4, v5

    if-gez v5, :cond_1

    .line 282
    invoke-virtual {p0}, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher;->resetTouch()V

    goto :goto_1

    .line 290
    .end local v2    # "xDiff":F
    .end local v4    # "yDiff":F
    :pswitch_1
    invoke-direct {p0, v7}, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher;->canRefresh(Z)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 291
    iget-object v5, p0, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher;->mRefreshableViews:Ljava/util/WeakHashMap;

    invoke-virtual {v5}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 292
    .local v0, "view":Landroid/view/View;
    invoke-virtual {p0, v0, p1}, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher;->isViewBeingDragged(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 293
    iput v1, p0, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher;->mInitialMotionX:F

    .line 294
    iput v3, p0, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher;->mInitialMotionY:F

    .line 295
    iput-object v0, p0, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher;->mViewBeingDragged:Landroid/view/View;

    goto :goto_2

    .line 304
    .end local v0    # "view":Landroid/view/View;
    :pswitch_2
    invoke-virtual {p0}, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher;->resetTouch()V

    goto :goto_1

    .line 270
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method onPull(Landroid/view/View;F)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "y"    # F

    .prologue
    const/4 v3, 0x1

    .line 431
    invoke-direct {p0, p1}, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher;->getScrollNeededForRefresh(Landroid/view/View;)F

    move-result v0

    .line 432
    .local v0, "pxScrollForRefresh":F
    iget v2, p0, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher;->mPullBeginY:F

    sub-float v1, p2, v2

    .line 434
    .local v1, "scrollLength":F
    cmpg-float v2, v1, v0

    if-gez v2, :cond_0

    .line 435
    iget-object v2, p0, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher;->mHeaderTransformer:Lim/doit/pro/ui/component/pullrefresh/HeaderTransformer;

    div-float v3, v1, v0

    invoke-virtual {v2, v3}, Lim/doit/pro/ui/component/pullrefresh/HeaderTransformer;->onPulled(F)V

    .line 443
    :goto_0
    return-void

    .line 437
    :cond_0
    iget-boolean v2, p0, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher;->mRefreshOnUp:Z

    if-eqz v2, :cond_1

    .line 438
    iget-object v2, p0, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher;->mHeaderTransformer:Lim/doit/pro/ui/component/pullrefresh/HeaderTransformer;

    invoke-virtual {v2}, Lim/doit/pro/ui/component/pullrefresh/HeaderTransformer;->onReleaseToRefresh()V

    goto :goto_0

    .line 440
    :cond_1
    invoke-direct {p0, p1, v3, v3}, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher;->setRefreshingInt(Landroid/view/View;ZZ)V

    goto :goto_0
.end method

.method onPullEnded()V
    .locals 1

    .prologue
    .line 449
    iget-boolean v0, p0, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher;->mIsRefreshing:Z

    if-nez v0, :cond_0

    .line 450
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher;->reset(Z)V

    .line 452
    :cond_0
    return-void
.end method

.method onPullStarted(F)V
    .locals 0
    .param p1, "y"    # F

    .prologue
    .line 422
    invoke-virtual {p0}, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher;->showHeaderView()V

    .line 423
    iput p1, p0, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher;->mPullBeginY:F

    .line 424
    return-void
.end method

.method final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 342
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_0

    .line 343
    iput-boolean v2, p0, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher;->mHandlingTouchEventFromDown:Z

    .line 348
    :cond_0
    iget-boolean v4, p0, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher;->mHandlingTouchEventFromDown:Z

    if-eqz v4, :cond_2

    iget-boolean v4, p0, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher;->mIsBeingDragged:Z

    if-nez v4, :cond_2

    .line 349
    invoke-virtual {p0, p1}, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 399
    :cond_1
    :goto_0
    return v2

    .line 353
    :cond_2
    iget-object v4, p0, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher;->mViewBeingDragged:Landroid/view/View;

    if-nez v4, :cond_3

    move v2, v3

    .line 354
    goto :goto_0

    .line 357
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    goto :goto_0

    .line 390
    :pswitch_0
    iget-object v3, p0, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher;->mViewBeingDragged:Landroid/view/View;

    invoke-direct {p0, v3}, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher;->checkScrollForRefresh(Landroid/view/View;)Z

    .line 391
    iget-boolean v3, p0, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher;->mIsBeingDragged:Z

    if-eqz v3, :cond_4

    .line 392
    invoke-virtual {p0}, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher;->onPullEnded()V

    .line 394
    :cond_4
    invoke-virtual {p0}, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher;->resetTouch()V

    goto :goto_0

    .line 360
    :pswitch_1
    invoke-virtual {p0}, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher;->isRefreshing()Z

    move-result v4

    if-eqz v4, :cond_5

    move v2, v3

    .line 361
    goto :goto_0

    .line 364
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    .line 366
    .local v0, "y":F
    iget-boolean v3, p0, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher;->mIsBeingDragged:Z

    if-eqz v3, :cond_1

    iget v3, p0, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher;->mLastMotionY:F

    cmpl-float v3, v0, v3

    if-eqz v3, :cond_1

    .line 367
    iget v3, p0, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher;->mLastMotionY:F

    sub-float v1, v0, v3

    .line 374
    .local v1, "yDx":F
    iget v3, p0, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher;->mTouchSlop:I

    neg-int v3, v3

    int-to-float v3, v3

    cmpl-float v3, v1, v3

    if-ltz v3, :cond_6

    .line 375
    iget-object v3, p0, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher;->mViewBeingDragged:Landroid/view/View;

    invoke-virtual {p0, v3, v0}, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher;->onPull(Landroid/view/View;F)V

    .line 377
    const/4 v3, 0x0

    cmpl-float v3, v1, v3

    if-lez v3, :cond_1

    .line 378
    iput v0, p0, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher;->mLastMotionY:F

    goto :goto_0

    .line 381
    :cond_6
    invoke-virtual {p0}, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher;->onPullEnded()V

    .line 382
    invoke-virtual {p0}, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher;->resetTouch()V

    goto :goto_0

    .line 357
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected removeHeaderViewFromActivity(Landroid/view/View;)V
    .locals 1
    .param p1, "headerView"    # Landroid/view/View;

    .prologue
    .line 633
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 634
    iget-object v0, p0, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 636
    :cond_0
    return-void
.end method

.method resetTouch()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 413
    iput-boolean v0, p0, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher;->mIsBeingDragged:Z

    .line 414
    iput-boolean v0, p0, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher;->mHandlingTouchEventFromDown:Z

    .line 415
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher;->mPullBeginY:F

    iput v0, p0, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher;->mLastMotionY:F

    iput v0, p0, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher;->mInitialMotionY:F

    .line 416
    return-void
.end method

.method final setHeaderViewListener(Lim/doit/pro/ui/component/pullrefresh/HeaderViewListener;)V
    .locals 0
    .param p1, "listener"    # Lim/doit/pro/ui/component/pullrefresh/HeaderViewListener;

    .prologue
    .line 239
    iput-object p1, p0, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher;->mHeaderViewListener:Lim/doit/pro/ui/component/pullrefresh/HeaderViewListener;

    .line 240
    return-void
.end method

.method setOnRefreshListener(Lim/doit/pro/ui/component/pullrefresh/OnRefreshListener;)V
    .locals 0
    .param p1, "listener"    # Lim/doit/pro/ui/component/pullrefresh/OnRefreshListener;

    .prologue
    .line 213
    iput-object p1, p0, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher;->mOnRefreshListener:Lim/doit/pro/ui/component/pullrefresh/OnRefreshListener;

    .line 214
    return-void
.end method

.method final setRefreshComplete()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 206
    const/4 v0, 0x0

    invoke-direct {p0, v0, v1, v1}, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher;->setRefreshingInt(Landroid/view/View;ZZ)V

    .line 207
    return-void
.end method

.method final setRefreshing(Z)V
    .locals 2
    .param p1, "refreshing"    # Z

    .prologue
    .line 189
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher;->setRefreshingInt(Landroid/view/View;ZZ)V

    .line 190
    return-void
.end method

.method showHeaderView()V
    .locals 3

    .prologue
    .line 455
    iget-object v0, p0, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher;->mHeaderView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher;->updateHeaderViewPosition(Landroid/view/View;)V

    .line 456
    iget-object v0, p0, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher;->mHeaderTransformer:Lim/doit/pro/ui/component/pullrefresh/HeaderTransformer;

    invoke-virtual {v0}, Lim/doit/pro/ui/component/pullrefresh/HeaderTransformer;->showHeaderView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 457
    iget-object v0, p0, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher;->mHeaderViewListener:Lim/doit/pro/ui/component/pullrefresh/HeaderViewListener;

    if-eqz v0, :cond_0

    .line 458
    iget-object v0, p0, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher;->mHeaderViewListener:Lim/doit/pro/ui/component/pullrefresh/HeaderViewListener;

    iget-object v1, p0, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher;->mHeaderView:Landroid/view/View;

    .line 459
    const/4 v2, 0x0

    .line 458
    invoke-interface {v0, v1, v2}, Lim/doit/pro/ui/component/pullrefresh/HeaderViewListener;->onStateChanged(Landroid/view/View;I)V

    .line 462
    :cond_0
    return-void
.end method

.method protected updateHeaderViewPosition(Landroid/view/View;)V
    .locals 3
    .param p1, "headerView"    # Landroid/view/View;

    .prologue
    .line 617
    iget-object v1, p0, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 619
    const/4 v0, 0x0

    .line 620
    .local v0, "wlp":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    instance-of v1, v1, Landroid/view/WindowManager$LayoutParams;

    if-eqz v1, :cond_2

    .line 621
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .end local v0    # "wlp":Landroid/view/WindowManager$LayoutParams;
    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    .line 626
    .restart local v0    # "wlp":Landroid/view/WindowManager$LayoutParams;
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v2, p0, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher;->mRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    if-eq v1, v2, :cond_1

    .line 627
    iget-object v1, p0, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher;->mRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 628
    iget-object v1, p0, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 630
    :cond_1
    return-void

    .line 622
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Landroid/view/WindowManager$LayoutParams;

    if-eqz v1, :cond_0

    .line 623
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "wlp":Landroid/view/WindowManager$LayoutParams;
    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    .restart local v0    # "wlp":Landroid/view/WindowManager$LayoutParams;
    goto :goto_0
.end method

.method useViewDelegate(Ljava/lang/Class;Lim/doit/pro/ui/component/pullrefresh/ViewDelegate;)V
    .locals 3
    .param p2, "delegate"    # Lim/doit/pro/ui/component/pullrefresh/ViewDelegate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lim/doit/pro/ui/component/pullrefresh/ViewDelegate;",
            ")V"
        }
    .end annotation

    .prologue
    .line 157
    .local p1, "viewClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v1, p0, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher;->mRefreshableViews:Ljava/util/WeakHashMap;

    invoke-virtual {v1}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 162
    return-void

    .line 157
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 158
    .local v0, "view":Landroid/view/View;
    invoke-virtual {p1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 159
    iget-object v2, p0, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher;->mRefreshableViews:Ljava/util/WeakHashMap;

    invoke-virtual {v2, v0, p2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
