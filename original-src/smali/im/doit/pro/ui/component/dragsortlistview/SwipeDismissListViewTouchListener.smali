.class public Lim/doit/pro/ui/component/dragsortlistview/SwipeDismissListViewTouchListener;
.super Ljava/lang/Object;
.source "SwipeDismissListViewTouchListener.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lim/doit/pro/ui/component/dragsortlistview/SwipeDismissListViewTouchListener$DismissCallbacks;,
        Lim/doit/pro/ui/component/dragsortlistview/SwipeDismissListViewTouchListener$PendingDismissData;
    }
.end annotation


# instance fields
.field private mAnimationTime:J

.field private mCallbacks:Lim/doit/pro/ui/component/dragsortlistview/SwipeDismissListViewTouchListener$DismissCallbacks;

.field private mDismissAnimationRefCount:I

.field private mDownPosition:I

.field private mDownView:Landroid/view/View;

.field private mDownX:F

.field private mListView:Landroid/widget/ListView;

.field private mMaxFlingVelocity:I

.field private mMinFlingVelocity:I

.field private mPaused:Z

.field private mPendingDismisses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lim/doit/pro/ui/component/dragsortlistview/SwipeDismissListViewTouchListener$PendingDismissData;",
            ">;"
        }
    .end annotation
.end field

.field private mSlop:I

.field private mSwiping:Z

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mViewWidth:I


# direct methods
.method public constructor <init>(Landroid/widget/ListView;Lim/doit/pro/ui/component/dragsortlistview/SwipeDismissListViewTouchListener$DismissCallbacks;)V
    .locals 4
    .param p1, "listView"    # Landroid/widget/ListView;
    .param p2, "callbacks"    # Lim/doit/pro/ui/component/dragsortlistview/SwipeDismissListViewTouchListener$DismissCallbacks;

    .prologue
    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    const/4 v1, 0x1

    iput v1, p0, Lim/doit/pro/ui/component/dragsortlistview/SwipeDismissListViewTouchListener;->mViewWidth:I

    .line 81
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lim/doit/pro/ui/component/dragsortlistview/SwipeDismissListViewTouchListener;->mPendingDismisses:Ljava/util/List;

    .line 82
    const/4 v1, 0x0

    iput v1, p0, Lim/doit/pro/ui/component/dragsortlistview/SwipeDismissListViewTouchListener;->mDismissAnimationRefCount:I

    .line 119
    invoke-virtual {p1}, Landroid/widget/ListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 120
    .local v0, "vc":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lim/doit/pro/ui/component/dragsortlistview/SwipeDismissListViewTouchListener;->mSlop:I

    .line 121
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    mul-int/lit8 v1, v1, 0x10

    iput v1, p0, Lim/doit/pro/ui/component/dragsortlistview/SwipeDismissListViewTouchListener;->mMinFlingVelocity:I

    .line 122
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Lim/doit/pro/ui/component/dragsortlistview/SwipeDismissListViewTouchListener;->mMaxFlingVelocity:I

    .line 123
    invoke-virtual {p1}, Landroid/widget/ListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 124
    const/high16 v2, 0x10e0000

    .line 123
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v2, v1

    iput-wide v2, p0, Lim/doit/pro/ui/component/dragsortlistview/SwipeDismissListViewTouchListener;->mAnimationTime:J

    .line 125
    iput-object p1, p0, Lim/doit/pro/ui/component/dragsortlistview/SwipeDismissListViewTouchListener;->mListView:Landroid/widget/ListView;

    .line 126
    iput-object p2, p0, Lim/doit/pro/ui/component/dragsortlistview/SwipeDismissListViewTouchListener;->mCallbacks:Lim/doit/pro/ui/component/dragsortlistview/SwipeDismissListViewTouchListener$DismissCallbacks;

    .line 127
    return-void
.end method

.method static synthetic access$0(Lim/doit/pro/ui/component/dragsortlistview/SwipeDismissListViewTouchListener;Landroid/view/View;I)V
    .locals 0

    .prologue
    .line 354
    invoke-direct {p0, p1, p2}, Lim/doit/pro/ui/component/dragsortlistview/SwipeDismissListViewTouchListener;->performDismiss(Landroid/view/View;I)V

    return-void
.end method

.method static synthetic access$1(Lim/doit/pro/ui/component/dragsortlistview/SwipeDismissListViewTouchListener;)I
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lim/doit/pro/ui/component/dragsortlistview/SwipeDismissListViewTouchListener;->mDismissAnimationRefCount:I

    return v0
.end method

.method static synthetic access$2(Lim/doit/pro/ui/component/dragsortlistview/SwipeDismissListViewTouchListener;I)V
    .locals 0

    .prologue
    .line 82
    iput p1, p0, Lim/doit/pro/ui/component/dragsortlistview/SwipeDismissListViewTouchListener;->mDismissAnimationRefCount:I

    return-void
.end method

.method static synthetic access$3(Lim/doit/pro/ui/component/dragsortlistview/SwipeDismissListViewTouchListener;)Ljava/util/List;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lim/doit/pro/ui/component/dragsortlistview/SwipeDismissListViewTouchListener;->mPendingDismisses:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$4(Lim/doit/pro/ui/component/dragsortlistview/SwipeDismissListViewTouchListener;)Lim/doit/pro/ui/component/dragsortlistview/SwipeDismissListViewTouchListener$DismissCallbacks;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lim/doit/pro/ui/component/dragsortlistview/SwipeDismissListViewTouchListener;->mCallbacks:Lim/doit/pro/ui/component/dragsortlistview/SwipeDismissListViewTouchListener$DismissCallbacks;

    return-object v0
.end method

.method static synthetic access$5(Lim/doit/pro/ui/component/dragsortlistview/SwipeDismissListViewTouchListener;)Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lim/doit/pro/ui/component/dragsortlistview/SwipeDismissListViewTouchListener;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method private dismiss(Landroid/view/View;IZ)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "dismissRight"    # Z

    .prologue
    .line 310
    iget v0, p0, Lim/doit/pro/ui/component/dragsortlistview/SwipeDismissListViewTouchListener;->mDismissAnimationRefCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lim/doit/pro/ui/component/dragsortlistview/SwipeDismissListViewTouchListener;->mDismissAnimationRefCount:I

    .line 311
    if-nez p1, :cond_0

    .line 314
    iget-object v0, p0, Lim/doit/pro/ui/component/dragsortlistview/SwipeDismissListViewTouchListener;->mCallbacks:Lim/doit/pro/ui/component/dragsortlistview/SwipeDismissListViewTouchListener$DismissCallbacks;

    iget-object v1, p0, Lim/doit/pro/ui/component/dragsortlistview/SwipeDismissListViewTouchListener;->mListView:Landroid/widget/ListView;

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput p2, v2, v3

    invoke-interface {v0, v1, v2}, Lim/doit/pro/ui/component/dragsortlistview/SwipeDismissListViewTouchListener$DismissCallbacks;->onDismiss(Landroid/widget/ListView;[I)V

    .line 328
    :goto_0
    return-void

    .line 318
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 319
    if-eqz p3, :cond_1

    iget v0, p0, Lim/doit/pro/ui/component/dragsortlistview/SwipeDismissListViewTouchListener;->mViewWidth:I

    :goto_1
    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 320
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 321
    iget-wide v2, p0, Lim/doit/pro/ui/component/dragsortlistview/SwipeDismissListViewTouchListener;->mAnimationTime:J

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 322
    new-instance v1, Lim/doit/pro/ui/component/dragsortlistview/SwipeDismissListViewTouchListener$2;

    invoke-direct {v1, p0, p1, p2}, Lim/doit/pro/ui/component/dragsortlistview/SwipeDismissListViewTouchListener$2;-><init>(Lim/doit/pro/ui/component/dragsortlistview/SwipeDismissListViewTouchListener;Landroid/view/View;I)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    .line 319
    :cond_1
    iget v0, p0, Lim/doit/pro/ui/component/dragsortlistview/SwipeDismissListViewTouchListener;->mViewWidth:I

    neg-int v0, v0

    goto :goto_1
.end method

.method private getViewForPosition(I)Landroid/view/View;
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 331
    .line 332
    iget-object v1, p0, Lim/doit/pro/ui/component/dragsortlistview/SwipeDismissListViewTouchListener;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    iget-object v2, p0, Lim/doit/pro/ui/component/dragsortlistview/SwipeDismissListViewTouchListener;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v2

    sub-int/2addr v1, v2

    .line 331
    sub-int v0, p1, v1

    .line 333
    .local v0, "index":I
    if-ltz v0, :cond_0

    iget-object v1, p0, Lim/doit/pro/ui/component/dragsortlistview/SwipeDismissListViewTouchListener;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 334
    iget-object v1, p0, Lim/doit/pro/ui/component/dragsortlistview/SwipeDismissListViewTouchListener;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 333
    :goto_0
    return-object v1

    .line 335
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private performDismiss(Landroid/view/View;I)V
    .locals 6
    .param p1, "dismissView"    # Landroid/view/View;
    .param p2, "dismissPosition"    # I

    .prologue
    const/4 v5, 0x1

    .line 359
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 360
    .local v1, "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 362
    .local v2, "originalHeight":I
    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x0

    aput v2, v3, v4

    aput v5, v3, v5

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v3

    iget-wide v4, p0, Lim/doit/pro/ui/component/dragsortlistview/SwipeDismissListViewTouchListener;->mAnimationTime:J

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 364
    .local v0, "animator":Landroid/animation/ValueAnimator;
    new-instance v3, Lim/doit/pro/ui/component/dragsortlistview/SwipeDismissListViewTouchListener$3;

    invoke-direct {v3, p0, v2}, Lim/doit/pro/ui/component/dragsortlistview/SwipeDismissListViewTouchListener$3;-><init>(Lim/doit/pro/ui/component/dragsortlistview/SwipeDismissListViewTouchListener;I)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 394
    new-instance v3, Lim/doit/pro/ui/component/dragsortlistview/SwipeDismissListViewTouchListener$4;

    invoke-direct {v3, p0, v1, p1}, Lim/doit/pro/ui/component/dragsortlistview/SwipeDismissListViewTouchListener$4;-><init>(Lim/doit/pro/ui/component/dragsortlistview/SwipeDismissListViewTouchListener;Landroid/view/ViewGroup$LayoutParams;Landroid/view/View;)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 402
    iget-object v3, p0, Lim/doit/pro/ui/component/dragsortlistview/SwipeDismissListViewTouchListener;->mPendingDismisses:Ljava/util/List;

    new-instance v4, Lim/doit/pro/ui/component/dragsortlistview/SwipeDismissListViewTouchListener$PendingDismissData;

    invoke-direct {v4, p0, p2, p1}, Lim/doit/pro/ui/component/dragsortlistview/SwipeDismissListViewTouchListener$PendingDismissData;-><init>(Lim/doit/pro/ui/component/dragsortlistview/SwipeDismissListViewTouchListener;ILandroid/view/View;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 403
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 404
    return-void
.end method


# virtual methods
.method public dismiss(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 165
    invoke-direct {p0, p1}, Lim/doit/pro/ui/component/dragsortlistview/SwipeDismissListViewTouchListener;->getViewForPosition(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Lim/doit/pro/ui/component/dragsortlistview/SwipeDismissListViewTouchListener;->dismiss(Landroid/view/View;IZ)V

    .line 166
    return-void
.end method

.method public makeScrollListener()Landroid/widget/AbsListView$OnScrollListener;
    .locals 1

    .prologue
    .line 148
    new-instance v0, Lim/doit/pro/ui/component/dragsortlistview/SwipeDismissListViewTouchListener$1;

    invoke-direct {v0, p0}, Lim/doit/pro/ui/component/dragsortlistview/SwipeDismissListViewTouchListener$1;-><init>(Lim/doit/pro/ui/component/dragsortlistview/SwipeDismissListViewTouchListener;)V

    return-object v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 24
    .param p1, "view"    # Landroid/view/View;
    .param p2, "motionEvent"    # Landroid/view/MotionEvent;

    .prologue
    .line 170
    move-object/from16 v0, p0

    iget v0, v0, Lim/doit/pro/ui/component/dragsortlistview/SwipeDismissListViewTouchListener;->mViewWidth:I

    move/from16 v18, v0

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_0

    .line 171
    move-object/from16 v0, p0

    iget-object v0, v0, Lim/doit/pro/ui/component/dragsortlistview/SwipeDismissListViewTouchListener;->mListView:Landroid/widget/ListView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/ListView;->getWidth()I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lim/doit/pro/ui/component/dragsortlistview/SwipeDismissListViewTouchListener;->mViewWidth:I

    .line 174
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v18

    packed-switch v18, :pswitch_data_0

    .line 306
    :cond_1
    :goto_0
    const/16 v18, 0x0

    :goto_1
    return v18

    .line 176
    :pswitch_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lim/doit/pro/ui/component/dragsortlistview/SwipeDismissListViewTouchListener;->mPaused:Z

    move/from16 v18, v0

    if-eqz v18, :cond_2

    .line 177
    const/16 v18, 0x0

    goto :goto_1

    .line 183
    :cond_2
    new-instance v14, Landroid/graphics/Rect;

    invoke-direct {v14}, Landroid/graphics/Rect;-><init>()V

    .line 184
    .local v14, "rect":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lim/doit/pro/ui/component/dragsortlistview/SwipeDismissListViewTouchListener;->mListView:Landroid/widget/ListView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/ListView;->getChildCount()I

    move-result v8

    .line 185
    .local v8, "childCount":I
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v13, v0, [I

    .line 186
    .local v13, "listViewCoords":[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lim/doit/pro/ui/component/dragsortlistview/SwipeDismissListViewTouchListener;->mListView:Landroid/widget/ListView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Landroid/widget/ListView;->getLocationOnScreen([I)V

    .line 187
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v18

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    const/16 v19, 0x0

    aget v19, v13, v19

    sub-int v16, v18, v19

    .line 188
    .local v16, "x":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v18

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    const/16 v19, 0x1

    aget v19, v13, v19

    sub-int v17, v18, v19

    .line 190
    .local v17, "y":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_2
    if-lt v12, v8, :cond_4

    .line 199
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lim/doit/pro/ui/component/dragsortlistview/SwipeDismissListViewTouchListener;->mDownView:Landroid/view/View;

    move-object/from16 v18, v0

    if-eqz v18, :cond_3

    .line 200
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lim/doit/pro/ui/component/dragsortlistview/SwipeDismissListViewTouchListener;->mDownX:F

    .line 201
    move-object/from16 v0, p0

    iget-object v0, v0, Lim/doit/pro/ui/component/dragsortlistview/SwipeDismissListViewTouchListener;->mListView:Landroid/widget/ListView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lim/doit/pro/ui/component/dragsortlistview/SwipeDismissListViewTouchListener;->mDownView:Landroid/view/View;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ListView;->getPositionForView(Landroid/view/View;)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lim/doit/pro/ui/component/dragsortlistview/SwipeDismissListViewTouchListener;->mDownPosition:I

    .line 202
    move-object/from16 v0, p0

    iget-object v0, v0, Lim/doit/pro/ui/component/dragsortlistview/SwipeDismissListViewTouchListener;->mCallbacks:Lim/doit/pro/ui/component/dragsortlistview/SwipeDismissListViewTouchListener$DismissCallbacks;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lim/doit/pro/ui/component/dragsortlistview/SwipeDismissListViewTouchListener;->mDownPosition:I

    move/from16 v19, v0

    invoke-interface/range {v18 .. v19}, Lim/doit/pro/ui/component/dragsortlistview/SwipeDismissListViewTouchListener$DismissCallbacks;->canDismiss(I)Z

    move-result v18

    if-eqz v18, :cond_6

    .line 203
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lim/doit/pro/ui/component/dragsortlistview/SwipeDismissListViewTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 204
    move-object/from16 v0, p0

    iget-object v0, v0, Lim/doit/pro/ui/component/dragsortlistview/SwipeDismissListViewTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 209
    :cond_3
    :goto_4
    invoke-virtual/range {p1 .. p2}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 210
    const/16 v18, 0x1

    goto/16 :goto_1

    .line 191
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lim/doit/pro/ui/component/dragsortlistview/SwipeDismissListViewTouchListener;->mListView:Landroid/widget/ListView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 192
    .local v7, "child":Landroid/view/View;
    invoke-virtual {v7, v14}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 193
    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v14, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 194
    move-object/from16 v0, p0

    iput-object v7, v0, Lim/doit/pro/ui/component/dragsortlistview/SwipeDismissListViewTouchListener;->mDownView:Landroid/view/View;

    goto :goto_3

    .line 190
    :cond_5
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 206
    .end local v7    # "child":Landroid/view/View;
    :cond_6
    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lim/doit/pro/ui/component/dragsortlistview/SwipeDismissListViewTouchListener;->mDownView:Landroid/view/View;

    goto :goto_4

    .line 214
    .end local v8    # "childCount":I
    .end local v12    # "i":I
    .end local v13    # "listViewCoords":[I
    .end local v14    # "rect":Landroid/graphics/Rect;
    .end local v16    # "x":I
    .end local v17    # "y":I
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lim/doit/pro/ui/component/dragsortlistview/SwipeDismissListViewTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v18, v0

    if-eqz v18, :cond_1

    .line 218
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v18

    move-object/from16 v0, p0

    iget v0, v0, Lim/doit/pro/ui/component/dragsortlistview/SwipeDismissListViewTouchListener;->mDownX:F

    move/from16 v19, v0

    sub-float v9, v18, v19

    .line 219
    .local v9, "deltaX":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lim/doit/pro/ui/component/dragsortlistview/SwipeDismissListViewTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 220
    move-object/from16 v0, p0

    iget-object v0, v0, Lim/doit/pro/ui/component/dragsortlistview/SwipeDismissListViewTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v18, v0

    const/16 v19, 0x3e8

    invoke-virtual/range {v18 .. v19}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 221
    move-object/from16 v0, p0

    iget-object v0, v0, Lim/doit/pro/ui/component/dragsortlistview/SwipeDismissListViewTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v15

    .line 222
    .local v15, "velocityX":F
    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 223
    .local v4, "absVelocityX":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lim/doit/pro/ui/component/dragsortlistview/SwipeDismissListViewTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 224
    .local v5, "absVelocityY":F
    const/4 v10, 0x0

    .line 225
    .local v10, "dismiss":Z
    const/4 v11, 0x0

    .line 226
    .local v11, "dismissRight":Z
    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v18

    move-object/from16 v0, p0

    iget v0, v0, Lim/doit/pro/ui/component/dragsortlistview/SwipeDismissListViewTouchListener;->mViewWidth:I

    move/from16 v19, v0

    div-int/lit8 v19, v19, 0x2

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    cmpl-float v18, v18, v19

    if-lez v18, :cond_9

    .line 227
    const/4 v10, 0x1

    .line 228
    const/16 v18, 0x0

    cmpl-float v18, v9, v18

    if-lez v18, :cond_8

    const/4 v11, 0x1

    .line 235
    :cond_7
    :goto_5
    if-eqz v10, :cond_e

    .line 237
    move-object/from16 v0, p0

    iget-object v0, v0, Lim/doit/pro/ui/component/dragsortlistview/SwipeDismissListViewTouchListener;->mDownView:Landroid/view/View;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lim/doit/pro/ui/component/dragsortlistview/SwipeDismissListViewTouchListener;->mDownPosition:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2, v11}, Lim/doit/pro/ui/component/dragsortlistview/SwipeDismissListViewTouchListener;->dismiss(Landroid/view/View;IZ)V

    .line 246
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lim/doit/pro/ui/component/dragsortlistview/SwipeDismissListViewTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/view/VelocityTracker;->recycle()V

    .line 247
    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lim/doit/pro/ui/component/dragsortlistview/SwipeDismissListViewTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 248
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lim/doit/pro/ui/component/dragsortlistview/SwipeDismissListViewTouchListener;->mDownX:F

    .line 249
    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lim/doit/pro/ui/component/dragsortlistview/SwipeDismissListViewTouchListener;->mDownView:Landroid/view/View;

    .line 250
    const/16 v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lim/doit/pro/ui/component/dragsortlistview/SwipeDismissListViewTouchListener;->mDownPosition:I

    .line 251
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lim/doit/pro/ui/component/dragsortlistview/SwipeDismissListViewTouchListener;->mSwiping:Z

    goto/16 :goto_0

    .line 228
    :cond_8
    const/4 v11, 0x0

    goto :goto_5

    .line 229
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Lim/doit/pro/ui/component/dragsortlistview/SwipeDismissListViewTouchListener;->mMinFlingVelocity:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    cmpg-float v18, v18, v4

    if-gtz v18, :cond_7

    move-object/from16 v0, p0

    iget v0, v0, Lim/doit/pro/ui/component/dragsortlistview/SwipeDismissListViewTouchListener;->mMaxFlingVelocity:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    cmpg-float v18, v4, v18

    if-gtz v18, :cond_7

    .line 230
    cmpg-float v18, v5, v4

    if-gez v18, :cond_7

    .line 232
    const/16 v18, 0x0

    cmpg-float v18, v15, v18

    if-gez v18, :cond_a

    const/16 v18, 0x1

    move/from16 v19, v18

    :goto_7
    const/16 v18, 0x0

    cmpg-float v18, v9, v18

    if-gez v18, :cond_b

    const/16 v18, 0x1

    :goto_8
    move/from16 v0, v19

    move/from16 v1, v18

    if-ne v0, v1, :cond_c

    const/4 v10, 0x1

    .line 233
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lim/doit/pro/ui/component/dragsortlistview/SwipeDismissListViewTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v18

    const/16 v19, 0x0

    cmpl-float v18, v18, v19

    if-lez v18, :cond_d

    const/4 v11, 0x1

    :goto_a
    goto/16 :goto_5

    .line 232
    :cond_a
    const/16 v18, 0x0

    move/from16 v19, v18

    goto :goto_7

    :cond_b
    const/16 v18, 0x0

    goto :goto_8

    :cond_c
    const/4 v10, 0x0

    goto :goto_9

    .line 233
    :cond_d
    const/4 v11, 0x0

    goto :goto_a

    .line 240
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lim/doit/pro/ui/component/dragsortlistview/SwipeDismissListViewTouchListener;->mDownView:Landroid/view/View;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v18

    .line 241
    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v18

    .line 242
    const/high16 v19, 0x3f800000    # 1.0f

    invoke-virtual/range {v18 .. v19}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v18

    .line 243
    move-object/from16 v0, p0

    iget-wide v0, v0, Lim/doit/pro/ui/component/dragsortlistview/SwipeDismissListViewTouchListener;->mAnimationTime:J

    move-wide/from16 v20, v0

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v18

    .line 244
    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    goto/16 :goto_6

    .line 256
    .end local v4    # "absVelocityX":F
    .end local v5    # "absVelocityY":F
    .end local v9    # "deltaX":F
    .end local v10    # "dismiss":Z
    .end local v11    # "dismissRight":Z
    .end local v15    # "velocityX":F
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lim/doit/pro/ui/component/dragsortlistview/SwipeDismissListViewTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v18, v0

    if-eqz v18, :cond_1

    .line 260
    move-object/from16 v0, p0

    iget-object v0, v0, Lim/doit/pro/ui/component/dragsortlistview/SwipeDismissListViewTouchListener;->mDownView:Landroid/view/View;

    move-object/from16 v18, v0

    if-eqz v18, :cond_f

    .line 262
    move-object/from16 v0, p0

    iget-object v0, v0, Lim/doit/pro/ui/component/dragsortlistview/SwipeDismissListViewTouchListener;->mDownView:Landroid/view/View;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v18

    .line 263
    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v18

    .line 264
    const/high16 v19, 0x3f800000    # 1.0f

    invoke-virtual/range {v18 .. v19}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v18

    .line 265
    move-object/from16 v0, p0

    iget-wide v0, v0, Lim/doit/pro/ui/component/dragsortlistview/SwipeDismissListViewTouchListener;->mAnimationTime:J

    move-wide/from16 v20, v0

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v18

    .line 266
    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 268
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lim/doit/pro/ui/component/dragsortlistview/SwipeDismissListViewTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/view/VelocityTracker;->recycle()V

    .line 269
    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lim/doit/pro/ui/component/dragsortlistview/SwipeDismissListViewTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 270
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lim/doit/pro/ui/component/dragsortlistview/SwipeDismissListViewTouchListener;->mDownX:F

    .line 271
    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lim/doit/pro/ui/component/dragsortlistview/SwipeDismissListViewTouchListener;->mDownView:Landroid/view/View;

    .line 272
    const/16 v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lim/doit/pro/ui/component/dragsortlistview/SwipeDismissListViewTouchListener;->mDownPosition:I

    .line 273
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lim/doit/pro/ui/component/dragsortlistview/SwipeDismissListViewTouchListener;->mSwiping:Z

    goto/16 :goto_0

    .line 278
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lim/doit/pro/ui/component/dragsortlistview/SwipeDismissListViewTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v18, v0

    if-eqz v18, :cond_1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lim/doit/pro/ui/component/dragsortlistview/SwipeDismissListViewTouchListener;->mPaused:Z

    move/from16 v18, v0

    if-nez v18, :cond_1

    .line 282
    move-object/from16 v0, p0

    iget-object v0, v0, Lim/doit/pro/ui/component/dragsortlistview/SwipeDismissListViewTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 283
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v18

    move-object/from16 v0, p0

    iget v0, v0, Lim/doit/pro/ui/component/dragsortlistview/SwipeDismissListViewTouchListener;->mDownX:F

    move/from16 v19, v0

    sub-float v9, v18, v19

    .line 284
    .restart local v9    # "deltaX":F
    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v18

    move-object/from16 v0, p0

    iget v0, v0, Lim/doit/pro/ui/component/dragsortlistview/SwipeDismissListViewTouchListener;->mSlop:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    cmpl-float v18, v18, v19

    if-lez v18, :cond_10

    .line 285
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lim/doit/pro/ui/component/dragsortlistview/SwipeDismissListViewTouchListener;->mSwiping:Z

    .line 286
    move-object/from16 v0, p0

    iget-object v0, v0, Lim/doit/pro/ui/component/dragsortlistview/SwipeDismissListViewTouchListener;->mListView:Landroid/widget/ListView;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ListView;->requestDisallowInterceptTouchEvent(Z)V

    .line 289
    invoke-static/range {p2 .. p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v6

    .line 291
    .local v6, "cancelEvent":Landroid/view/MotionEvent;
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v18

    shl-int/lit8 v18, v18, 0x8

    or-int/lit8 v18, v18, 0x3

    .line 290
    move/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 293
    move-object/from16 v0, p0

    iget-object v0, v0, Lim/doit/pro/ui/component/dragsortlistview/SwipeDismissListViewTouchListener;->mListView:Landroid/widget/ListView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 294
    invoke-virtual {v6}, Landroid/view/MotionEvent;->recycle()V

    .line 297
    .end local v6    # "cancelEvent":Landroid/view/MotionEvent;
    :cond_10
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lim/doit/pro/ui/component/dragsortlistview/SwipeDismissListViewTouchListener;->mSwiping:Z

    move/from16 v18, v0

    if-eqz v18, :cond_1

    .line 298
    move-object/from16 v0, p0

    iget-object v0, v0, Lim/doit/pro/ui/component/dragsortlistview/SwipeDismissListViewTouchListener;->mDownView:Landroid/view/View;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Landroid/view/View;->setTranslationX(F)V

    .line 299
    move-object/from16 v0, p0

    iget-object v0, v0, Lim/doit/pro/ui/component/dragsortlistview/SwipeDismissListViewTouchListener;->mDownView:Landroid/view/View;

    move-object/from16 v18, v0

    const v19, 0x3e19999a    # 0.15f

    const/high16 v20, 0x3f800000    # 1.0f

    .line 300
    const/high16 v21, 0x3f800000    # 1.0f

    const/high16 v22, 0x40000000    # 2.0f

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v23

    mul-float v22, v22, v23

    move-object/from16 v0, p0

    iget v0, v0, Lim/doit/pro/ui/component/dragsortlistview/SwipeDismissListViewTouchListener;->mViewWidth:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    div-float v22, v22, v23

    sub-float v21, v21, v22

    .line 299
    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->min(FF)F

    move-result v20

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->max(FF)F

    move-result v19

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setAlpha(F)V

    .line 301
    const/16 v18, 0x1

    goto/16 :goto_1

    .line 174
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 135
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lim/doit/pro/ui/component/dragsortlistview/SwipeDismissListViewTouchListener;->mPaused:Z

    .line 136
    return-void

    .line 135
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
