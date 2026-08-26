.class public Lcom/mobeta/android/dslv/DragSortListView;
.super Landroid/widget/ListView;
.source "DragSortListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mobeta/android/dslv/DragSortListView$AdapterWrapper;,
        Lcom/mobeta/android/dslv/DragSortListView$DragListener;,
        Lcom/mobeta/android/dslv/DragSortListView$DragScrollProfile;,
        Lcom/mobeta/android/dslv/DragSortListView$DragScroller;,
        Lcom/mobeta/android/dslv/DragSortListView$DragSortListener;,
        Lcom/mobeta/android/dslv/DragSortListView$DragSortTracker;,
        Lcom/mobeta/android/dslv/DragSortListView$DropAnimator;,
        Lcom/mobeta/android/dslv/DragSortListView$DropListener;,
        Lcom/mobeta/android/dslv/DragSortListView$FloatViewManager;,
        Lcom/mobeta/android/dslv/DragSortListView$HeightCache;,
        Lcom/mobeta/android/dslv/DragSortListView$LiftAnimator;,
        Lcom/mobeta/android/dslv/DragSortListView$RemoveAnimator;,
        Lcom/mobeta/android/dslv/DragSortListView$RemoveListener;,
        Lcom/mobeta/android/dslv/DragSortListView$SmoothAnimator;
    }
.end annotation


# static fields
.field private static final DRAGGING:I = 0x4

.field public static final DRAG_NEG_X:I = 0x2

.field public static final DRAG_NEG_Y:I = 0x8

.field public static final DRAG_POS_X:I = 0x1

.field public static final DRAG_POS_Y:I = 0x4

.field private static final DROPPING:I = 0x2

.field private static final IDLE:I = 0x0

.field private static final NO_CANCEL:I = 0x0

.field private static final ON_INTERCEPT_TOUCH_EVENT:I = 0x2

.field private static final ON_TOUCH_EVENT:I = 0x1

.field private static final REMOVING:I = 0x1

.field private static final STOPPED:I = 0x3

.field private static final sCacheSize:I = 0x3


# instance fields
.field private mAdapterWrapper:Lcom/mobeta/android/dslv/DragSortListView$AdapterWrapper;

.field private mAnimate:Z

.field private mBlockLayoutRequests:Z

.field private mCancelEvent:Landroid/view/MotionEvent;

.field private mCancelMethod:I

.field private mChildHeightCache:Lcom/mobeta/android/dslv/DragSortListView$HeightCache;

.field private mCurrFloatAlpha:F

.field private mDownScrollStartY:I

.field private mDownScrollStartYF:F

.field private mDragDeltaX:I

.field private mDragDeltaY:I

.field private mDragDownScrollHeight:F

.field private mDragDownScrollStartFrac:F

.field private mDragEnabled:Z

.field private mDragFlags:I

.field private mDragListener:Lcom/mobeta/android/dslv/DragSortListView$DragListener;

.field private mDragScroller:Lcom/mobeta/android/dslv/DragSortListView$DragScroller;

.field private mDragSortTracker:Lcom/mobeta/android/dslv/DragSortListView$DragSortTracker;

.field private mDragStartY:I

.field private mDragState:I

.field private mDragUpScrollHeight:F

.field private mDragUpScrollStartFrac:F

.field private mDropAnimator:Lcom/mobeta/android/dslv/DragSortListView$DropAnimator;

.field private mDropListener:Lcom/mobeta/android/dslv/DragSortListView$DropListener;

.field private mFirstExpPos:I

.field private mFloatAlpha:F

.field private mFloatLoc:Landroid/graphics/Point;

.field private mFloatPos:I

.field private mFloatView:Landroid/view/View;

.field private mFloatViewHeight:I

.field private mFloatViewHeightHalf:I

.field private mFloatViewInvalidated:Z

.field private mFloatViewManager:Lcom/mobeta/android/dslv/DragSortListView$FloatViewManager;

.field private mFloatViewMid:I

.field private mFloatViewOnMeasured:Z

.field private mIgnoreTouchEvent:Z

.field private mInTouchEvent:Z

.field private mItemHeightCollapsed:I

.field private mLastCallWasIntercept:Z

.field private mLastX:I

.field private mLastY:I

.field private mLiftAnimator:Lcom/mobeta/android/dslv/DragSortListView$LiftAnimator;

.field private mListViewIntercepted:Z

.field private mMaxScrollSpeed:F

.field private mObserver:Landroid/database/DataSetObserver;

.field private mOffsetX:I

.field private mOffsetY:I

.field private mRemoveAnimator:Lcom/mobeta/android/dslv/DragSortListView$RemoveAnimator;

.field private mRemoveListener:Lcom/mobeta/android/dslv/DragSortListView$RemoveListener;

.field private mRemoveVelocityX:F

.field private mSampleViewTypes:[Landroid/view/View;

.field private mScrollProfile:Lcom/mobeta/android/dslv/DragSortListView$DragScrollProfile;

.field private mSecondExpPos:I

.field private mSlideFrac:F

.field private mSlideRegionFrac:F

.field private mSrcPos:I

.field private mTouchLoc:Landroid/graphics/Point;

.field private mTrackDragSort:Z

.field private mUpScrollStartY:I

.field private mUpScrollStartYF:F

.field private mUseRemoveVelocity:Z

.field private mWidthMeasureSpec:I

.field private mX:I

.field private mY:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 35
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 444
    invoke-direct/range {p0 .. p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 76
    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5}, Landroid/graphics/Point;-><init>()V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    .line 78
    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5}, Landroid/graphics/Point;-><init>()V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/mobeta/android/dslv/DragSortListView;->mTouchLoc:Landroid/graphics/Point;

    .line 88
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewOnMeasured:Z

    .line 99
    const/high16 v5, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iput v5, v0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatAlpha:F

    .line 100
    const/high16 v5, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iput v5, v0, Lcom/mobeta/android/dslv/DragSortListView;->mCurrFloatAlpha:F

    .line 125
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/mobeta/android/dslv/DragSortListView;->mAnimate:Z

    .line 181
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/mobeta/android/dslv/DragSortListView;->mDragEnabled:Z

    .line 192
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Lcom/mobeta/android/dslv/DragSortListView;->mDragState:I

    .line 199
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput v5, v0, Lcom/mobeta/android/dslv/DragSortListView;->mItemHeightCollapsed:I

    .line 215
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Lcom/mobeta/android/dslv/DragSortListView;->mWidthMeasureSpec:I

    .line 221
    const/4 v5, 0x1

    new-array v5, v5, [Landroid/view/View;

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/mobeta/android/dslv/DragSortListView;->mSampleViewTypes:[Landroid/view/View;

    .line 233
    const v5, 0x3eaaaaab

    move-object/from16 v0, p0

    iput v5, v0, Lcom/mobeta/android/dslv/DragSortListView;->mDragUpScrollStartFrac:F

    .line 240
    const v5, 0x3eaaaaab

    move-object/from16 v0, p0

    iput v5, v0, Lcom/mobeta/android/dslv/DragSortListView;->mDragDownScrollStartFrac:F

    .line 264
    const/high16 v5, 0x3f000000    # 0.5f

    move-object/from16 v0, p0

    iput v5, v0, Lcom/mobeta/android/dslv/DragSortListView;->mMaxScrollSpeed:F

    .line 272
    new-instance v5, Lcom/mobeta/android/dslv/DragSortListView$1;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/mobeta/android/dslv/DragSortListView$1;-><init>(Lcom/mobeta/android/dslv/DragSortListView;)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/mobeta/android/dslv/DragSortListView;->mScrollProfile:Lcom/mobeta/android/dslv/DragSortListView$DragScrollProfile;

    .line 336
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Lcom/mobeta/android/dslv/DragSortListView;->mDragFlags:I

    .line 342
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/mobeta/android/dslv/DragSortListView;->mLastCallWasIntercept:Z

    .line 347
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/mobeta/android/dslv/DragSortListView;->mInTouchEvent:Z

    .line 352
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewManager:Lcom/mobeta/android/dslv/DragSortListView$FloatViewManager;

    .line 372
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Lcom/mobeta/android/dslv/DragSortListView;->mCancelMethod:I

    .line 379
    const/high16 v5, 0x3e800000    # 0.25f

    move-object/from16 v0, p0

    iput v5, v0, Lcom/mobeta/android/dslv/DragSortListView;->mSlideRegionFrac:F

    .line 388
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Lcom/mobeta/android/dslv/DragSortListView;->mSlideFrac:F

    .line 401
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/mobeta/android/dslv/DragSortListView;->mTrackDragSort:Z

    .line 411
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/mobeta/android/dslv/DragSortListView;->mBlockLayoutRequests:Z

    .line 418
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/mobeta/android/dslv/DragSortListView;->mIgnoreTouchEvent:Z

    .line 432
    new-instance v5, Lcom/mobeta/android/dslv/DragSortListView$HeightCache;

    const/4 v12, 0x3

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v12}, Lcom/mobeta/android/dslv/DragSortListView$HeightCache;-><init>(Lcom/mobeta/android/dslv/DragSortListView;I)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/mobeta/android/dslv/DragSortListView;->mChildHeightCache:Lcom/mobeta/android/dslv/DragSortListView$HeightCache;

    .line 441
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Lcom/mobeta/android/dslv/DragSortListView;->mRemoveVelocityX:F

    .line 1696
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/mobeta/android/dslv/DragSortListView;->mListViewIntercepted:Z

    .line 2178
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewInvalidated:Z

    .line 446
    const/16 v27, 0x96

    .line 447
    .local v27, "defaultDuration":I
    move/from16 v30, v27

    .line 448
    .local v30, "removeAnimDuration":I
    move/from16 v28, v27

    .line 450
    .local v28, "dropAnimDuration":I
    if-eqz p2, :cond_2

    .line 451
    invoke-virtual/range {p0 .. p0}, Lcom/mobeta/android/dslv/DragSortListView;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 452
    sget-object v12, Lim/doit/pro/v4/R$styleable;->DragSortListView:[I

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 451
    move-object/from16 v0, p2

    invoke-virtual {v5, v0, v12, v13, v14}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v11

    .line 454
    .local v11, "a":Landroid/content/res/TypedArray;
    const/4 v5, 0x1

    .line 455
    const/4 v12, 0x0

    const/4 v13, 0x1

    .line 454
    invoke-virtual {v11, v12, v13}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v12

    invoke-static {v5, v12}, Ljava/lang/Math;->max(II)I

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Lcom/mobeta/android/dslv/DragSortListView;->mItemHeightCollapsed:I

    .line 458
    const/4 v5, 0x5

    const/4 v12, 0x0

    .line 457
    invoke-virtual {v11, v5, v12}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/mobeta/android/dslv/DragSortListView;->mTrackDragSort:Z

    .line 460
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/mobeta/android/dslv/DragSortListView;->mTrackDragSort:Z

    if-eqz v5, :cond_0

    .line 461
    new-instance v5, Lcom/mobeta/android/dslv/DragSortListView$DragSortTracker;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/mobeta/android/dslv/DragSortListView$DragSortTracker;-><init>(Lcom/mobeta/android/dslv/DragSortListView;)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/mobeta/android/dslv/DragSortListView;->mDragSortTracker:Lcom/mobeta/android/dslv/DragSortListView$DragSortTracker;

    .line 465
    :cond_0
    const/4 v5, 0x6

    move-object/from16 v0, p0

    iget v12, v0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatAlpha:F

    invoke-virtual {v11, v5, v12}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatAlpha:F

    .line 466
    move-object/from16 v0, p0

    iget v5, v0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatAlpha:F

    move-object/from16 v0, p0

    iput v5, v0, Lcom/mobeta/android/dslv/DragSortListView;->mCurrFloatAlpha:F

    .line 468
    const/16 v5, 0xb

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/mobeta/android/dslv/DragSortListView;->mDragEnabled:Z

    invoke-virtual {v11, v5, v12}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/mobeta/android/dslv/DragSortListView;->mDragEnabled:Z

    .line 470
    const/4 v5, 0x0

    .line 471
    const/high16 v12, 0x3f800000    # 1.0f

    const/high16 v13, 0x3f800000    # 1.0f

    .line 472
    const/4 v14, 0x7

    .line 473
    const/high16 v15, 0x3f400000    # 0.75f

    .line 471
    invoke-virtual {v11, v14, v15}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v14

    sub-float/2addr v13, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->min(FF)F

    move-result v12

    .line 470
    invoke-static {v5, v12}, Ljava/lang/Math;->max(FF)F

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Lcom/mobeta/android/dslv/DragSortListView;->mSlideRegionFrac:F

    .line 475
    move-object/from16 v0, p0

    iget v5, v0, Lcom/mobeta/android/dslv/DragSortListView;->mSlideRegionFrac:F

    const/4 v12, 0x0

    cmpl-float v5, v5, v12

    if-lez v5, :cond_5

    const/4 v5, 0x1

    :goto_0
    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/mobeta/android/dslv/DragSortListView;->mAnimate:Z

    .line 478
    const/4 v5, 0x1

    .line 479
    move-object/from16 v0, p0

    iget v12, v0, Lcom/mobeta/android/dslv/DragSortListView;->mDragUpScrollStartFrac:F

    .line 477
    invoke-virtual {v11, v5, v12}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v29

    .line 481
    .local v29, "frac":F
    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/mobeta/android/dslv/DragSortListView;->setDragScrollStart(F)V

    .line 484
    const/4 v5, 0x2

    .line 485
    move-object/from16 v0, p0

    iget v12, v0, Lcom/mobeta/android/dslv/DragSortListView;->mMaxScrollSpeed:F

    .line 483
    invoke-virtual {v11, v5, v12}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Lcom/mobeta/android/dslv/DragSortListView;->mMaxScrollSpeed:F

    .line 488
    const/16 v5, 0x8

    .line 487
    move/from16 v0, v30

    invoke-virtual {v11, v5, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v30

    .line 492
    const/16 v5, 0xa

    .line 491
    move/from16 v0, v28

    invoke-virtual {v11, v5, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v28

    .line 496
    const/16 v5, 0x12

    .line 497
    const/4 v12, 0x1

    .line 495
    invoke-virtual {v11, v5, v12}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v34

    .line 499
    .local v34, "useDefault":Z
    if-eqz v34, :cond_1

    .line 501
    const/16 v5, 0xd

    .line 502
    const/4 v12, 0x0

    .line 500
    invoke-virtual {v11, v5, v12}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v31

    .line 504
    .local v31, "removeEnabled":Z
    const/4 v5, 0x4

    .line 505
    const/4 v12, 0x1

    .line 503
    invoke-virtual {v11, v5, v12}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    .line 507
    .local v8, "removeMode":I
    const/16 v5, 0xc

    .line 508
    const/4 v12, 0x1

    .line 506
    invoke-virtual {v11, v5, v12}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v33

    .line 510
    .local v33, "sortEnabled":Z
    const/16 v5, 0xe

    .line 511
    const/4 v12, 0x0

    .line 509
    invoke-virtual {v11, v5, v12}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    .line 513
    .local v7, "dragInitMode":I
    const/16 v5, 0xf

    .line 514
    const/4 v12, 0x0

    .line 512
    invoke-virtual {v11, v5, v12}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    .line 516
    .local v6, "dragHandleId":I
    const/16 v5, 0x10

    .line 517
    const/4 v12, 0x0

    .line 515
    invoke-virtual {v11, v5, v12}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v10

    .line 519
    .local v10, "flingHandleId":I
    const/16 v5, 0x11

    .line 520
    const/4 v12, 0x0

    .line 518
    invoke-virtual {v11, v5, v12}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    .line 522
    .local v9, "clickRemoveId":I
    const/4 v5, 0x3

    .line 523
    const/high16 v12, -0x1000000

    .line 521
    invoke-virtual {v11, v5, v12}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v26

    .line 525
    .local v26, "bgColor":I
    new-instance v4, Lcom/mobeta/android/dslv/DragSortController;

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v10}, Lcom/mobeta/android/dslv/DragSortController;-><init>(Lcom/mobeta/android/dslv/DragSortListView;IIIII)V

    .line 528
    .local v4, "controller":Lcom/mobeta/android/dslv/DragSortController;
    move/from16 v0, v31

    invoke-virtual {v4, v0}, Lcom/mobeta/android/dslv/DragSortController;->setRemoveEnabled(Z)V

    .line 529
    move/from16 v0, v33

    invoke-virtual {v4, v0}, Lcom/mobeta/android/dslv/DragSortController;->setSortEnabled(Z)V

    .line 530
    move/from16 v0, v26

    invoke-virtual {v4, v0}, Lcom/mobeta/android/dslv/DragSortController;->setBackgroundColor(I)V

    .line 532
    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewManager:Lcom/mobeta/android/dslv/DragSortListView$FloatViewManager;

    .line 533
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/mobeta/android/dslv/DragSortListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 536
    .end local v4    # "controller":Lcom/mobeta/android/dslv/DragSortController;
    .end local v6    # "dragHandleId":I
    .end local v7    # "dragInitMode":I
    .end local v8    # "removeMode":I
    .end local v9    # "clickRemoveId":I
    .end local v10    # "flingHandleId":I
    .end local v26    # "bgColor":I
    .end local v31    # "removeEnabled":Z
    .end local v33    # "sortEnabled":Z
    :cond_1
    invoke-virtual {v11}, Landroid/content/res/TypedArray;->recycle()V

    .line 539
    .end local v11    # "a":Landroid/content/res/TypedArray;
    .end local v29    # "frac":F
    .end local v34    # "useDefault":Z
    :cond_2
    new-instance v5, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;-><init>(Lcom/mobeta/android/dslv/DragSortListView;)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/mobeta/android/dslv/DragSortListView;->mDragScroller:Lcom/mobeta/android/dslv/DragSortListView$DragScroller;

    .line 541
    const/high16 v32, 0x3f000000    # 0.5f

    .line 542
    .local v32, "smoothness":F
    if-lez v30, :cond_3

    .line 543
    new-instance v5, Lcom/mobeta/android/dslv/DragSortListView$RemoveAnimator;

    move-object/from16 v0, p0

    move/from16 v1, v32

    move/from16 v2, v30

    invoke-direct {v5, v0, v1, v2}, Lcom/mobeta/android/dslv/DragSortListView$RemoveAnimator;-><init>(Lcom/mobeta/android/dslv/DragSortListView;FI)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/mobeta/android/dslv/DragSortListView;->mRemoveAnimator:Lcom/mobeta/android/dslv/DragSortListView$RemoveAnimator;

    .line 546
    :cond_3
    if-lez v28, :cond_4

    .line 547
    new-instance v5, Lcom/mobeta/android/dslv/DragSortListView$DropAnimator;

    move-object/from16 v0, p0

    move/from16 v1, v32

    move/from16 v2, v28

    invoke-direct {v5, v0, v1, v2}, Lcom/mobeta/android/dslv/DragSortListView$DropAnimator;-><init>(Lcom/mobeta/android/dslv/DragSortListView;FI)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/mobeta/android/dslv/DragSortListView;->mDropAnimator:Lcom/mobeta/android/dslv/DragSortListView$DropAnimator;

    .line 550
    :cond_4
    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    const/16 v16, 0x3

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    .line 551
    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    .line 550
    invoke-static/range {v12 .. v25}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/mobeta/android/dslv/DragSortListView;->mCancelEvent:Landroid/view/MotionEvent;

    .line 554
    new-instance v5, Lcom/mobeta/android/dslv/DragSortListView$2;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/mobeta/android/dslv/DragSortListView$2;-><init>(Lcom/mobeta/android/dslv/DragSortListView;)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/mobeta/android/dslv/DragSortListView;->mObserver:Landroid/database/DataSetObserver;

    .line 571
    return-void

    .line 475
    .end local v32    # "smoothness":F
    .restart local v11    # "a":Landroid/content/res/TypedArray;
    :cond_5
    const/4 v5, 0x0

    goto/16 :goto_0
.end method

.method static synthetic access$0(Lcom/mobeta/android/dslv/DragSortListView;)F
    .locals 1

    .prologue
    .line 264
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mMaxScrollSpeed:F

    return v0
.end method

.method static synthetic access$1(Lcom/mobeta/android/dslv/DragSortListView;ILandroid/view/View;Z)V
    .locals 0

    .prologue
    .line 1885
    invoke-direct {p0, p1, p2, p3}, Lcom/mobeta/android/dslv/DragSortListView;->adjustItem(ILandroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$10(Lcom/mobeta/android/dslv/DragSortListView;)I
    .locals 1

    .prologue
    .line 130
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    return v0
.end method

.method static synthetic access$11(Lcom/mobeta/android/dslv/DragSortListView;I)V
    .locals 0

    .prologue
    .line 192
    iput p1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragState:I

    return-void
.end method

.method static synthetic access$12(Lcom/mobeta/android/dslv/DragSortListView;)I
    .locals 1

    .prologue
    .line 199
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mItemHeightCollapsed:I

    return v0
.end method

.method static synthetic access$13(Lcom/mobeta/android/dslv/DragSortListView;)I
    .locals 1

    .prologue
    .line 205
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewHeight:I

    return v0
.end method

.method static synthetic access$14(Lcom/mobeta/android/dslv/DragSortListView;)V
    .locals 0

    .prologue
    .line 1496
    invoke-direct {p0}, Lcom/mobeta/android/dslv/DragSortListView;->dropFloatView()V

    return-void
.end method

.method static synthetic access$15(Lcom/mobeta/android/dslv/DragSortListView;)I
    .locals 1

    .prologue
    .line 112
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFirstExpPos:I

    return v0
.end method

.method static synthetic access$16(Lcom/mobeta/android/dslv/DragSortListView;)I
    .locals 1

    .prologue
    .line 120
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSecondExpPos:I

    return v0
.end method

.method static synthetic access$17(Lcom/mobeta/android/dslv/DragSortListView;)Z
    .locals 1

    .prologue
    .line 440
    iget-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mUseRemoveVelocity:Z

    return v0
.end method

.method static synthetic access$18(Lcom/mobeta/android/dslv/DragSortListView;)F
    .locals 1

    .prologue
    .line 441
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mRemoveVelocityX:F

    return v0
.end method

.method static synthetic access$19(Lcom/mobeta/android/dslv/DragSortListView;F)V
    .locals 0

    .prologue
    .line 441
    iput p1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mRemoveVelocityX:F

    return-void
.end method

.method static synthetic access$2(Lcom/mobeta/android/dslv/DragSortListView;)I
    .locals 1

    .prologue
    .line 142
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragDeltaY:I

    return v0
.end method

.method static synthetic access$20(Lcom/mobeta/android/dslv/DragSortListView;)V
    .locals 0

    .prologue
    .line 2409
    invoke-direct {p0}, Lcom/mobeta/android/dslv/DragSortListView;->destroyFloatView()V

    return-void
.end method

.method static synthetic access$21(Lcom/mobeta/android/dslv/DragSortListView;ILandroid/view/View;Z)I
    .locals 1

    .prologue
    .line 1975
    invoke-direct {p0, p1, p2, p3}, Lcom/mobeta/android/dslv/DragSortListView;->getChildHeight(ILandroid/view/View;Z)I

    move-result v0

    return v0
.end method

.method static synthetic access$22(Lcom/mobeta/android/dslv/DragSortListView;)V
    .locals 0

    .prologue
    .line 1520
    invoke-direct {p0}, Lcom/mobeta/android/dslv/DragSortListView;->doRemoveItem()V

    return-void
.end method

.method static synthetic access$23(Lcom/mobeta/android/dslv/DragSortListView;)I
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewMid:I

    return v0
.end method

.method static synthetic access$24(Lcom/mobeta/android/dslv/DragSortListView;)Lcom/mobeta/android/dslv/DragSortListView$DragScrollProfile;
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mScrollProfile:Lcom/mobeta/android/dslv/DragSortListView$DragScrollProfile;

    return-object v0
.end method

.method static synthetic access$25(Lcom/mobeta/android/dslv/DragSortListView;)F
    .locals 1

    .prologue
    .line 248
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mUpScrollStartYF:F

    return v0
.end method

.method static synthetic access$26(Lcom/mobeta/android/dslv/DragSortListView;)F
    .locals 1

    .prologue
    .line 253
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragUpScrollHeight:F

    return v0
.end method

.method static synthetic access$27(Lcom/mobeta/android/dslv/DragSortListView;)F
    .locals 1

    .prologue
    .line 247
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDownScrollStartYF:F

    return v0
.end method

.method static synthetic access$28(Lcom/mobeta/android/dslv/DragSortListView;)F
    .locals 1

    .prologue
    .line 258
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragDownScrollHeight:F

    return v0
.end method

.method static synthetic access$29(Lcom/mobeta/android/dslv/DragSortListView;Z)V
    .locals 0

    .prologue
    .line 411
    iput-boolean p1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mBlockLayoutRequests:Z

    return-void
.end method

.method static synthetic access$3(Lcom/mobeta/android/dslv/DragSortListView;)I
    .locals 1

    .prologue
    .line 210
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewHeightHalf:I

    return v0
.end method

.method static synthetic access$30(Lcom/mobeta/android/dslv/DragSortListView;ILandroid/view/View;Z)V
    .locals 0

    .prologue
    .line 2318
    invoke-direct {p0, p1, p2, p3}, Lcom/mobeta/android/dslv/DragSortListView;->doDragFloatView(ILandroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$31(Lcom/mobeta/android/dslv/DragSortListView;I)I
    .locals 1

    .prologue
    .line 835
    invoke-direct {p0, p1}, Lcom/mobeta/android/dslv/DragSortListView;->getItemHeight(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$32(Lcom/mobeta/android/dslv/DragSortListView;I)I
    .locals 1

    .prologue
    .line 1924
    invoke-direct {p0, p1}, Lcom/mobeta/android/dslv/DragSortListView;->getChildHeight(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$33(Lcom/mobeta/android/dslv/DragSortListView;)I
    .locals 1

    .prologue
    .line 297
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mLastY:I

    return v0
.end method

.method static synthetic access$34(Lcom/mobeta/android/dslv/DragSortListView;II)I
    .locals 1

    .prologue
    .line 916
    invoke-direct {p0, p1, p2}, Lcom/mobeta/android/dslv/DragSortListView;->getShuffleEdge(II)I

    move-result v0

    return v0
.end method

.method static synthetic access$4(Lcom/mobeta/android/dslv/DragSortListView;)I
    .locals 1

    .prologue
    .line 192
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragState:I

    return v0
.end method

.method static synthetic access$5(Lcom/mobeta/android/dslv/DragSortListView;I)V
    .locals 0

    .prologue
    .line 142
    iput p1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragDeltaY:I

    return-void
.end method

.method static synthetic access$6(Lcom/mobeta/android/dslv/DragSortListView;)Landroid/graphics/Point;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    return-object v0
.end method

.method static synthetic access$7(Lcom/mobeta/android/dslv/DragSortListView;)I
    .locals 1

    .prologue
    .line 287
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mY:I

    return v0
.end method

.method static synthetic access$8(Lcom/mobeta/android/dslv/DragSortListView;Z)V
    .locals 0

    .prologue
    .line 2307
    invoke-direct {p0, p1}, Lcom/mobeta/android/dslv/DragSortListView;->doDragFloatView(Z)V

    return-void
.end method

.method static synthetic access$9(Lcom/mobeta/android/dslv/DragSortListView;)I
    .locals 1

    .prologue
    .line 106
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatPos:I

    return v0
.end method

.method private adjustAllItems()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 1859
    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getFirstVisiblePosition()I

    move-result v2

    .line 1860
    .local v2, "first":I
    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getLastVisiblePosition()I

    move-result v4

    .line 1862
    .local v4, "last":I
    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getHeaderViewsCount()I

    move-result v6

    sub-int/2addr v6, v2

    invoke-static {v9, v6}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1863
    .local v0, "begin":I
    sub-int v6, v4, v2

    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getFooterViewsCount()I

    move-result v8

    sub-int/2addr v7, v8

    sub-int/2addr v7, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1865
    .local v1, "end":I
    move v3, v0

    .local v3, "i":I
    :goto_0
    if-le v3, v1, :cond_0

    .line 1871
    return-void

    .line 1866
    :cond_0
    invoke-virtual {p0, v3}, Lcom/mobeta/android/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1867
    .local v5, "v":Landroid/view/View;
    if-eqz v5, :cond_1

    .line 1868
    add-int v6, v2, v3

    invoke-direct {p0, v6, v5, v9}, Lcom/mobeta/android/dslv/DragSortListView;->adjustItem(ILandroid/view/View;Z)V

    .line 1865
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private adjustItem(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 1874
    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getFirstVisiblePosition()I

    move-result v1

    sub-int v1, p1, v1

    invoke-virtual {p0, v1}, Lcom/mobeta/android/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1876
    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1877
    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/mobeta/android/dslv/DragSortListView;->adjustItem(ILandroid/view/View;Z)V

    .line 1879
    :cond_0
    return-void
.end method

.method private adjustItem(ILandroid/view/View;Z)V
    .locals 6
    .param p1, "position"    # I
    .param p2, "v"    # Landroid/view/View;
    .param p3, "invalidChildHeight"    # Z

    .prologue
    .line 1888
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 1890
    .local v1, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget v4, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    if-eq p1, v4, :cond_5

    iget v4, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFirstExpPos:I

    if-eq p1, v4, :cond_5

    iget v4, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSecondExpPos:I

    if-eq p1, v4, :cond_5

    .line 1891
    const/4 v0, -0x2

    .line 1896
    .local v0, "height":I
    :goto_0
    iget v4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v0, v4, :cond_0

    .line 1897
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1898
    invoke-virtual {p2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1902
    :cond_0
    iget v4, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFirstExpPos:I

    if-eq p1, v4, :cond_1

    iget v4, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSecondExpPos:I

    if-ne p1, v4, :cond_2

    .line 1903
    :cond_1
    iget v4, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    if-ge p1, v4, :cond_6

    move-object v4, p2

    .line 1904
    check-cast v4, Lcom/mobeta/android/dslv/DragSortItemView;

    const/16 v5, 0x50

    invoke-virtual {v4, v5}, Lcom/mobeta/android/dslv/DragSortItemView;->setGravity(I)V

    .line 1912
    :cond_2
    :goto_1
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result v2

    .line 1913
    .local v2, "oldVis":I
    const/4 v3, 0x0

    .line 1915
    .local v3, "vis":I
    iget v4, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    if-ne p1, v4, :cond_3

    iget-object v4, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    if-eqz v4, :cond_3

    .line 1916
    const/4 v3, 0x4

    .line 1919
    :cond_3
    if-eq v3, v2, :cond_4

    .line 1920
    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1922
    :cond_4
    return-void

    .line 1893
    .end local v0    # "height":I
    .end local v2    # "oldVis":I
    .end local v3    # "vis":I
    :cond_5
    invoke-direct {p0, p1, p2, p3}, Lcom/mobeta/android/dslv/DragSortListView;->calcItemHeight(ILandroid/view/View;Z)I

    move-result v0

    .restart local v0    # "height":I
    goto :goto_0

    .line 1905
    :cond_6
    iget v4, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    if-le p1, v4, :cond_2

    move-object v4, p2

    .line 1906
    check-cast v4, Lcom/mobeta/android/dslv/DragSortItemView;

    const/16 v5, 0x30

    invoke-virtual {v4, v5}, Lcom/mobeta/android/dslv/DragSortItemView;->setGravity(I)V

    goto :goto_1
.end method

.method private adjustOnReorder()V
    .locals 5

    .prologue
    .line 1551
    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getFirstVisiblePosition()I

    move-result v0

    .line 1553
    .local v0, "firstPos":I
    iget v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    if-ge v3, v0, :cond_1

    .line 1556
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/mobeta/android/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1557
    .local v2, "v":Landroid/view/View;
    const/4 v1, 0x0

    .line 1558
    .local v1, "top":I
    if-eqz v2, :cond_0

    .line 1559
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v1

    .line 1562
    :cond_0
    add-int/lit8 v3, v0, -0x1

    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getPaddingTop()I

    move-result v4

    sub-int v4, v1, v4

    invoke-virtual {p0, v3, v4}, Lcom/mobeta/android/dslv/DragSortListView;->setSelectionFromTop(II)V

    .line 1564
    .end local v1    # "top":I
    .end local v2    # "v":Landroid/view/View;
    :cond_1
    return-void
.end method

.method private adjustScroll(ILandroid/view/View;II)I
    .locals 9
    .param p1, "movePos"    # I
    .param p2, "moveItem"    # Landroid/view/View;
    .param p3, "oldFirstExpPos"    # I
    .param p4, "oldSecondExpPos"    # I

    .prologue
    .line 2056
    const/4 v0, 0x0

    .line 2058
    .local v0, "adjust":I
    invoke-direct {p0, p1}, Lcom/mobeta/android/dslv/DragSortListView;->getChildHeight(I)I

    move-result v1

    .line 2060
    .local v1, "childHeight":I
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v6

    .line 2061
    .local v6, "moveHeightBefore":I
    invoke-direct {p0, p1, v1}, Lcom/mobeta/android/dslv/DragSortListView;->calcItemHeight(II)I

    move-result v5

    .line 2063
    .local v5, "moveHeightAfter":I
    move v4, v6

    .line 2064
    .local v4, "moveBlankBefore":I
    move v3, v5

    .line 2065
    .local v3, "moveBlankAfter":I
    iget v7, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    if-eq p1, v7, :cond_0

    .line 2066
    sub-int/2addr v4, v1

    .line 2067
    sub-int/2addr v3, v1

    .line 2070
    :cond_0
    iget v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewHeight:I

    .line 2071
    .local v2, "maxBlank":I
    iget v7, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    iget v8, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFirstExpPos:I

    if-eq v7, v8, :cond_1

    iget v7, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    iget v8, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSecondExpPos:I

    if-eq v7, v8, :cond_1

    .line 2072
    iget v7, p0, Lcom/mobeta/android/dslv/DragSortListView;->mItemHeightCollapsed:I

    sub-int/2addr v2, v7

    .line 2075
    :cond_1
    if-gt p1, p3, :cond_3

    .line 2076
    iget v7, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFirstExpPos:I

    if-le p1, v7, :cond_2

    .line 2077
    sub-int v7, v2, v3

    add-int/2addr v0, v7

    .line 2095
    :cond_2
    :goto_0
    return v0

    .line 2079
    :cond_3
    if-ne p1, p4, :cond_6

    .line 2080
    iget v7, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFirstExpPos:I

    if-gt p1, v7, :cond_4

    .line 2081
    sub-int v7, v4, v2

    add-int/2addr v0, v7

    .line 2082
    goto :goto_0

    :cond_4
    iget v7, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSecondExpPos:I

    if-ne p1, v7, :cond_5

    .line 2083
    sub-int v7, v6, v5

    add-int/2addr v0, v7

    .line 2084
    goto :goto_0

    .line 2085
    :cond_5
    add-int/2addr v0, v4

    .line 2087
    goto :goto_0

    .line 2088
    :cond_6
    iget v7, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFirstExpPos:I

    if-gt p1, v7, :cond_7

    .line 2089
    sub-int/2addr v0, v2

    .line 2090
    goto :goto_0

    :cond_7
    iget v7, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSecondExpPos:I

    if-ne p1, v7, :cond_2

    .line 2091
    sub-int/2addr v0, v3

    goto :goto_0
.end method

.method private static buildRunList(Landroid/util/SparseBooleanArray;II[I[I)I
    .locals 7
    .param p0, "cip"    # Landroid/util/SparseBooleanArray;
    .param p1, "rangeStart"    # I
    .param p2, "rangeEnd"    # I
    .param p3, "runStart"    # [I
    .param p4, "runEnd"    # [I

    .prologue
    const/4 v5, 0x0

    .line 2701
    const/4 v4, 0x0

    .line 2703
    .local v4, "runCount":I
    invoke-static {p0, p1, p2}, Lcom/mobeta/android/dslv/DragSortListView;->findFirstSetIndex(Landroid/util/SparseBooleanArray;II)I

    move-result v2

    .line 2704
    .local v2, "i":I
    const/4 v6, -0x1

    if-ne v2, v6, :cond_0

    .line 2745
    :goto_0
    return v5

    .line 2707
    :cond_0
    invoke-virtual {p0, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    .line 2708
    .local v3, "position":I
    move v1, v3

    .line 2709
    .local v1, "currentRunStart":I
    add-int/lit8 v0, v1, 0x1

    .line 2710
    .local v0, "currentRunEnd":I
    add-int/lit8 v2, v2, 0x1

    :goto_1
    invoke-virtual {p0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v6

    if-ge v2, v6, :cond_1

    invoke-virtual {p0, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    if-lt v3, p2, :cond_4

    .line 2724
    :cond_1
    if-ne v0, p2, :cond_2

    .line 2729
    move v0, p1

    .line 2731
    :cond_2
    aput v1, p3, v4

    .line 2732
    aput v0, p4, v4

    .line 2733
    add-int/lit8 v4, v4, 0x1

    .line 2735
    const/4 v6, 0x1

    if-le v4, v6, :cond_3

    .line 2736
    aget v6, p3, v5

    if-ne v6, p1, :cond_3

    add-int/lit8 v6, v4, -0x1

    aget v6, p4, v6

    if-ne v6, p1, :cond_3

    .line 2741
    add-int/lit8 v6, v4, -0x1

    aget v6, p3, v6

    aput v6, p3, v5

    .line 2742
    add-int/lit8 v4, v4, -0x1

    :cond_3
    move v5, v4

    .line 2745
    goto :goto_0

    .line 2711
    :cond_4
    invoke-virtual {p0, v2}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v6

    if-nez v6, :cond_5

    .line 2710
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2713
    :cond_5
    if-ne v3, v0, :cond_6

    .line 2714
    add-int/lit8 v0, v0, 0x1

    .line 2715
    goto :goto_2

    .line 2716
    :cond_6
    aput v1, p3, v4

    .line 2717
    aput v0, p4, v4

    .line 2718
    add-int/lit8 v4, v4, 0x1

    .line 2719
    move v1, v3

    .line 2720
    add-int/lit8 v0, v3, 0x1

    goto :goto_2
.end method

.method private calcItemHeight(II)I
    .locals 7
    .param p1, "position"    # I
    .param p2, "childHeight"    # I

    .prologue
    .line 2011
    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getDividerHeight()I

    move-result v0

    .line 2013
    .local v0, "divHeight":I
    iget-boolean v5, p0, Lcom/mobeta/android/dslv/DragSortListView;->mAnimate:Z

    if-eqz v5, :cond_0

    iget v5, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFirstExpPos:I

    iget v6, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSecondExpPos:I

    if-eq v5, v6, :cond_0

    const/4 v2, 0x1

    .line 2014
    .local v2, "isSliding":Z
    :goto_0
    iget v5, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewHeight:I

    iget v6, p0, Lcom/mobeta/android/dslv/DragSortListView;->mItemHeightCollapsed:I

    sub-int v3, v5, v6

    .line 2015
    .local v3, "maxNonSrcBlankHeight":I
    iget v5, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSlideFrac:F

    int-to-float v6, v3

    mul-float/2addr v5, v6

    float-to-int v4, v5

    .line 2019
    .local v4, "slideHeight":I
    iget v5, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    if-ne p1, v5, :cond_4

    .line 2020
    iget v5, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    iget v6, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFirstExpPos:I

    if-ne v5, v6, :cond_2

    .line 2021
    if-eqz v2, :cond_1

    .line 2022
    iget v5, p0, Lcom/mobeta/android/dslv/DragSortListView;->mItemHeightCollapsed:I

    add-int v1, v4, v5

    .line 2045
    .local v1, "height":I
    :goto_1
    return v1

    .line 2013
    .end local v1    # "height":I
    .end local v2    # "isSliding":Z
    .end local v3    # "maxNonSrcBlankHeight":I
    .end local v4    # "slideHeight":I
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 2024
    .restart local v2    # "isSliding":Z
    .restart local v3    # "maxNonSrcBlankHeight":I
    .restart local v4    # "slideHeight":I
    :cond_1
    iget v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewHeight:I

    .line 2026
    .restart local v1    # "height":I
    goto :goto_1

    .end local v1    # "height":I
    :cond_2
    iget v5, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    iget v6, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSecondExpPos:I

    if-ne v5, v6, :cond_3

    .line 2028
    iget v5, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewHeight:I

    sub-int v1, v5, v4

    .line 2029
    .restart local v1    # "height":I
    goto :goto_1

    .line 2030
    .end local v1    # "height":I
    :cond_3
    iget v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mItemHeightCollapsed:I

    .line 2032
    .restart local v1    # "height":I
    goto :goto_1

    .end local v1    # "height":I
    :cond_4
    iget v5, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFirstExpPos:I

    if-ne p1, v5, :cond_6

    .line 2033
    if-eqz v2, :cond_5

    .line 2034
    add-int v1, p2, v4

    .line 2035
    .restart local v1    # "height":I
    goto :goto_1

    .line 2036
    .end local v1    # "height":I
    :cond_5
    add-int v1, p2, v3

    .line 2038
    .restart local v1    # "height":I
    goto :goto_1

    .end local v1    # "height":I
    :cond_6
    iget v5, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSecondExpPos:I

    if-ne p1, v5, :cond_7

    .line 2040
    add-int v5, p2, v3

    sub-int v1, v5, v4

    .line 2041
    .restart local v1    # "height":I
    goto :goto_1

    .line 2042
    .end local v1    # "height":I
    :cond_7
    move v1, p2

    .restart local v1    # "height":I
    goto :goto_1
.end method

.method private calcItemHeight(ILandroid/view/View;Z)I
    .locals 1
    .param p1, "position"    # I
    .param p2, "item"    # Landroid/view/View;
    .param p3, "invalidChildHeight"    # Z

    .prologue
    .line 2006
    invoke-direct {p0, p1, p2, p3}, Lcom/mobeta/android/dslv/DragSortListView;->getChildHeight(ILandroid/view/View;Z)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/mobeta/android/dslv/DragSortListView;->calcItemHeight(II)I

    move-result v0

    return v0
.end method

.method private clearPositions()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 1490
    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    .line 1491
    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFirstExpPos:I

    .line 1492
    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSecondExpPos:I

    .line 1493
    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatPos:I

    .line 1494
    return-void
.end method

.method private continueDrag(II)V
    .locals 7
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x1

    .line 1794
    iget-object v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iget v4, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragDeltaX:I

    sub-int v4, p1, v4

    iput v4, v3, Landroid/graphics/Point;->x:I

    .line 1795
    iget-object v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iget v4, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragDeltaY:I

    sub-int v4, p2, v4

    iput v4, v3, Landroid/graphics/Point;->y:I

    .line 1797
    invoke-direct {p0, v5}, Lcom/mobeta/android/dslv/DragSortListView;->doDragFloatView(Z)V

    .line 1799
    iget v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewMid:I

    iget v4, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewHeightHalf:I

    add-int/2addr v3, v4

    invoke-static {p2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1800
    .local v2, "minY":I
    iget v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewMid:I

    iget v4, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewHeightHalf:I

    sub-int/2addr v3, v4

    invoke-static {p2, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1803
    .local v1, "maxY":I
    iget-object v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragScroller:Lcom/mobeta/android/dslv/DragSortListView$DragScroller;

    invoke-virtual {v3}, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->getScrollDir()I

    move-result v0

    .line 1805
    .local v0, "currentScrollDir":I
    iget v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->mLastY:I

    if-le v2, v3, :cond_2

    iget v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDownScrollStartY:I

    if-le v2, v3, :cond_2

    if-eq v0, v5, :cond_2

    .line 1809
    if-eq v0, v6, :cond_0

    .line 1811
    iget-object v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragScroller:Lcom/mobeta/android/dslv/DragSortListView$DragScroller;

    invoke-virtual {v3, v5}, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->stopScrolling(Z)V

    .line 1815
    :cond_0
    iget-object v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragScroller:Lcom/mobeta/android/dslv/DragSortListView$DragScroller;

    invoke-virtual {v3, v5}, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->startScrolling(I)V

    .line 1835
    :cond_1
    :goto_0
    return-void

    .line 1816
    :cond_2
    iget v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->mLastY:I

    if-ge v1, v3, :cond_4

    iget v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->mUpScrollStartY:I

    if-ge v1, v3, :cond_4

    if-eqz v0, :cond_4

    .line 1820
    if-eq v0, v6, :cond_3

    .line 1822
    iget-object v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragScroller:Lcom/mobeta/android/dslv/DragSortListView$DragScroller;

    invoke-virtual {v3, v5}, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->stopScrolling(Z)V

    .line 1826
    :cond_3
    iget-object v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragScroller:Lcom/mobeta/android/dslv/DragSortListView$DragScroller;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->startScrolling(I)V

    goto :goto_0

    .line 1828
    :cond_4
    iget v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->mUpScrollStartY:I

    if-lt v1, v3, :cond_1

    iget v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDownScrollStartY:I

    if-gt v2, v3, :cond_1

    .line 1829
    iget-object v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragScroller:Lcom/mobeta/android/dslv/DragSortListView$DragScroller;

    invoke-virtual {v3}, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->isScrolling()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1833
    iget-object v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragScroller:Lcom/mobeta/android/dslv/DragSortListView$DragScroller;

    invoke-virtual {v3, v5}, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->stopScrolling(Z)V

    goto :goto_0
.end method

.method private destroyFloatView()V
    .locals 2

    .prologue
    .line 2410
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 2411
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2412
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewManager:Lcom/mobeta/android/dslv/DragSortListView$FloatViewManager;

    if-eqz v0, :cond_0

    .line 2413
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewManager:Lcom/mobeta/android/dslv/DragSortListView$FloatViewManager;

    iget-object v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    invoke-interface {v0, v1}, Lcom/mobeta/android/dslv/DragSortListView$FloatViewManager;->onDestroyFloatView(Landroid/view/View;)V

    .line 2415
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    .line 2416
    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->invalidate()V

    .line 2418
    :cond_1
    return-void
.end method

.method private doActionUpOrCancel()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1666
    iput v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mCancelMethod:I

    .line 1667
    iput-boolean v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mInTouchEvent:Z

    .line 1668
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 1669
    iput v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragState:I

    .line 1671
    :cond_0
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatAlpha:F

    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mCurrFloatAlpha:F

    .line 1672
    iput-boolean v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mListViewIntercepted:Z

    .line 1673
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mChildHeightCache:Lcom/mobeta/android/dslv/DragSortListView$HeightCache;

    invoke-virtual {v0}, Lcom/mobeta/android/dslv/DragSortListView$HeightCache;->clear()V

    .line 1674
    return-void
.end method

.method private doDragFloatView(ILandroid/view/View;Z)V
    .locals 6
    .param p1, "movePos"    # I
    .param p2, "moveItem"    # Landroid/view/View;
    .param p3, "forceInvalidate"    # Z

    .prologue
    .line 2319
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/mobeta/android/dslv/DragSortListView;->mBlockLayoutRequests:Z

    .line 2321
    invoke-direct {p0}, Lcom/mobeta/android/dslv/DragSortListView;->updateFloatView()V

    .line 2323
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFirstExpPos:I

    .line 2324
    .local v0, "oldFirstExpPos":I
    iget v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSecondExpPos:I

    .line 2326
    .local v1, "oldSecondExpPos":I
    invoke-direct {p0}, Lcom/mobeta/android/dslv/DragSortListView;->updatePositions()Z

    move-result v3

    .line 2328
    .local v3, "updated":Z
    if-eqz v3, :cond_0

    .line 2329
    invoke-direct {p0}, Lcom/mobeta/android/dslv/DragSortListView;->adjustAllItems()V

    .line 2330
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/mobeta/android/dslv/DragSortListView;->adjustScroll(ILandroid/view/View;II)I

    move-result v2

    .line 2333
    .local v2, "scroll":I
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v4

    add-int/2addr v4, v2

    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getPaddingTop()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0, p1, v4}, Lcom/mobeta/android/dslv/DragSortListView;->setSelectionFromTop(II)V

    .line 2334
    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->layoutChildren()V

    .line 2337
    .end local v2    # "scroll":I
    :cond_0
    if-nez v3, :cond_1

    if-eqz p3, :cond_2

    .line 2338
    :cond_1
    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->invalidate()V

    .line 2341
    :cond_2
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/mobeta/android/dslv/DragSortListView;->mBlockLayoutRequests:Z

    .line 2342
    return-void
.end method

.method private doDragFloatView(Z)V
    .locals 4
    .param p1, "forceInvalidate"    # Z

    .prologue
    .line 2308
    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getFirstVisiblePosition()I

    move-result v2

    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getChildCount()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int v1, v2, v3

    .line 2309
    .local v1, "movePos":I
    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getChildCount()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {p0, v2}, Lcom/mobeta/android/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2311
    .local v0, "moveItem":Landroid/view/View;
    if-nez v0, :cond_0

    .line 2316
    :goto_0
    return-void

    .line 2315
    :cond_0
    invoke-direct {p0, v1, v0, p1}, Lcom/mobeta/android/dslv/DragSortListView;->doDragFloatView(ILandroid/view/View;Z)V

    goto :goto_0
.end method

.method private doRemoveItem()V
    .locals 2

    .prologue
    .line 1521
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getHeaderViewsCount()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/mobeta/android/dslv/DragSortListView;->doRemoveItem(I)V

    .line 1522
    return-void
.end method

.method private doRemoveItem(I)V
    .locals 1
    .param p1, "which"    # I

    .prologue
    .line 1530
    const/4 v0, 0x1

    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragState:I

    .line 1533
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mRemoveListener:Lcom/mobeta/android/dslv/DragSortListView$RemoveListener;

    if-eqz v0, :cond_0

    .line 1534
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mRemoveListener:Lcom/mobeta/android/dslv/DragSortListView$RemoveListener;

    invoke-interface {v0, p1}, Lcom/mobeta/android/dslv/DragSortListView$RemoveListener;->remove(I)V

    .line 1537
    :cond_0
    invoke-direct {p0}, Lcom/mobeta/android/dslv/DragSortListView;->destroyFloatView()V

    .line 1539
    invoke-direct {p0}, Lcom/mobeta/android/dslv/DragSortListView;->adjustOnReorder()V

    .line 1540
    invoke-direct {p0}, Lcom/mobeta/android/dslv/DragSortListView;->clearPositions()V

    .line 1543
    iget-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mInTouchEvent:Z

    if-eqz v0, :cond_1

    .line 1544
    const/4 v0, 0x3

    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragState:I

    .line 1548
    :goto_0
    return-void

    .line 1546
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragState:I

    goto :goto_0
.end method

.method private drawDivider(ILandroid/graphics/Canvas;)V
    .locals 10
    .param p1, "expPosition"    # I
    .param p2, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 754
    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 755
    .local v2, "divider":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getDividerHeight()I

    move-result v3

    .line 758
    .local v3, "dividerHeight":I
    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    .line 760
    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getFirstVisiblePosition()I

    move-result v8

    sub-int v8, p1, v8

    .line 759
    invoke-virtual {p0, v8}, Lcom/mobeta/android/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 761
    .local v4, "expItem":Landroid/view/ViewGroup;
    if-eqz v4, :cond_0

    .line 762
    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getPaddingLeft()I

    move-result v5

    .line 763
    .local v5, "l":I
    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getWidth()I

    move-result v8

    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getPaddingRight()I

    move-result v9

    sub-int v6, v8, v9

    .line 767
    .local v6, "r":I
    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 769
    .local v1, "childHeight":I
    iget v8, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    if-le p1, v8, :cond_1

    .line 770
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getTop()I

    move-result v8

    add-int v7, v8, v1

    .line 771
    .local v7, "t":I
    add-int v0, v7, v3

    .line 779
    .local v0, "b":I
    :goto_0
    invoke-virtual {p2}, Landroid/graphics/Canvas;->save()I

    .line 780
    invoke-virtual {p2, v5, v7, v6, v0}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 781
    invoke-virtual {v2, v5, v7, v6, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 782
    invoke-virtual {v2, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 783
    invoke-virtual {p2}, Landroid/graphics/Canvas;->restore()V

    .line 786
    .end local v0    # "b":I
    .end local v1    # "childHeight":I
    .end local v4    # "expItem":Landroid/view/ViewGroup;
    .end local v5    # "l":I
    .end local v6    # "r":I
    .end local v7    # "t":I
    :cond_0
    return-void

    .line 773
    .restart local v1    # "childHeight":I
    .restart local v4    # "expItem":Landroid/view/ViewGroup;
    .restart local v5    # "l":I
    .restart local v6    # "r":I
    :cond_1
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getBottom()I

    move-result v8

    sub-int v0, v8, v1

    .line 774
    .restart local v0    # "b":I
    sub-int v7, v0, v3

    .restart local v7    # "t":I
    goto :goto_0
.end method

.method private dropFloatView()V
    .locals 4

    .prologue
    .line 1499
    const/4 v1, 0x2

    iput v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragState:I

    .line 1501
    iget-object v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDropListener:Lcom/mobeta/android/dslv/DragSortListView$DropListener;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatPos:I

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatPos:I

    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1502
    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getHeaderViewsCount()I

    move-result v0

    .line 1503
    .local v0, "numHeaders":I
    iget-object v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDropListener:Lcom/mobeta/android/dslv/DragSortListView$DropListener;

    iget v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    sub-int/2addr v2, v0

    iget v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatPos:I

    sub-int/2addr v3, v0

    invoke-interface {v1, v2, v3}, Lcom/mobeta/android/dslv/DragSortListView$DropListener;->drop(II)V

    .line 1506
    .end local v0    # "numHeaders":I
    :cond_0
    invoke-direct {p0}, Lcom/mobeta/android/dslv/DragSortListView;->destroyFloatView()V

    .line 1508
    invoke-direct {p0}, Lcom/mobeta/android/dslv/DragSortListView;->adjustOnReorder()V

    .line 1509
    invoke-direct {p0}, Lcom/mobeta/android/dslv/DragSortListView;->clearPositions()V

    .line 1510
    invoke-direct {p0}, Lcom/mobeta/android/dslv/DragSortListView;->adjustAllItems()V

    .line 1513
    iget-boolean v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mInTouchEvent:Z

    if-eqz v1, :cond_1

    .line 1514
    const/4 v1, 0x3

    iput v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragState:I

    .line 1518
    :goto_0
    return-void

    .line 1516
    :cond_1
    const/4 v1, 0x0

    iput v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragState:I

    goto :goto_0
.end method

.method private static findFirstSetIndex(Landroid/util/SparseBooleanArray;II)I
    .locals 3
    .param p0, "sba"    # Landroid/util/SparseBooleanArray;
    .param p1, "rangeStart"    # I
    .param p2, "rangeEnd"    # I

    .prologue
    .line 2761
    invoke-virtual {p0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    .line 2762
    .local v1, "size":I
    invoke-static {p0, p1}, Lcom/mobeta/android/dslv/DragSortListView;->insertionIndexForKey(Landroid/util/SparseBooleanArray;I)I

    move-result v0

    .line 2763
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v2

    if-ge v2, p2, :cond_0

    invoke-virtual {p0, v0}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2765
    :cond_0
    if-eq v0, v1, :cond_1

    invoke-virtual {p0, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v2

    if-lt v2, p2, :cond_2

    .line 2766
    :cond_1
    const/4 v0, -0x1

    .line 2767
    .end local v0    # "i":I
    :cond_2
    return v0

    .line 2764
    .restart local v0    # "i":I
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private getChildHeight(I)I
    .locals 7
    .param p1, "position"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x0

    .line 1925
    iget v5, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    if-ne p1, v5, :cond_1

    .line 1971
    :cond_0
    :goto_0
    return v1

    .line 1929
    :cond_1
    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getFirstVisiblePosition()I

    move-result v5

    sub-int v5, p1, v5

    invoke-virtual {p0, v5}, Lcom/mobeta/android/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1931
    .local v4, "v":Landroid/view/View;
    if-eqz v4, :cond_2

    .line 1934
    invoke-direct {p0, p1, v4, v1}, Lcom/mobeta/android/dslv/DragSortListView;->getChildHeight(ILandroid/view/View;Z)I

    move-result v1

    goto :goto_0

    .line 1938
    :cond_2
    iget-object v5, p0, Lcom/mobeta/android/dslv/DragSortListView;->mChildHeightCache:Lcom/mobeta/android/dslv/DragSortListView$HeightCache;

    invoke-virtual {v5, p1}, Lcom/mobeta/android/dslv/DragSortListView$HeightCache;->get(I)I

    move-result v1

    .line 1939
    .local v1, "childHeight":I
    const/4 v5, -0x1

    if-ne v1, v5, :cond_0

    .line 1944
    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 1945
    .local v0, "adapter":Landroid/widget/ListAdapter;
    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v2

    .line 1948
    .local v2, "type":I
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v3

    .line 1949
    .local v3, "typeCount":I
    iget-object v5, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSampleViewTypes:[Landroid/view/View;

    array-length v5, v5

    if-eq v3, v5, :cond_3

    .line 1950
    new-array v5, v3, [Landroid/view/View;

    iput-object v5, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSampleViewTypes:[Landroid/view/View;

    .line 1953
    :cond_3
    if-ltz v2, :cond_5

    .line 1954
    iget-object v5, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSampleViewTypes:[Landroid/view/View;

    aget-object v5, v5, v2

    if-nez v5, :cond_4

    .line 1955
    invoke-interface {v0, p1, v6, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 1956
    iget-object v5, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSampleViewTypes:[Landroid/view/View;

    aput-object v4, v5, v2

    .line 1966
    :goto_1
    const/4 v5, 0x1

    invoke-direct {p0, p1, v4, v5}, Lcom/mobeta/android/dslv/DragSortListView;->getChildHeight(ILandroid/view/View;Z)I

    move-result v1

    .line 1969
    iget-object v5, p0, Lcom/mobeta/android/dslv/DragSortListView;->mChildHeightCache:Lcom/mobeta/android/dslv/DragSortListView$HeightCache;

    invoke-virtual {v5, p1, v1}, Lcom/mobeta/android/dslv/DragSortListView$HeightCache;->add(II)V

    goto :goto_0

    .line 1958
    :cond_4
    iget-object v5, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSampleViewTypes:[Landroid/view/View;

    aget-object v5, v5, v2

    invoke-interface {v0, p1, v5, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 1960
    goto :goto_1

    .line 1962
    :cond_5
    invoke-interface {v0, p1, v6, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    goto :goto_1
.end method

.method private getChildHeight(ILandroid/view/View;Z)I
    .locals 5
    .param p1, "position"    # I
    .param p2, "item"    # Landroid/view/View;
    .param p3, "invalidChildHeight"    # Z

    .prologue
    const/4 v1, 0x0

    .line 1976
    iget v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    if-ne p1, v3, :cond_1

    .line 2002
    .end local p2    # "item":Landroid/view/View;
    :cond_0
    :goto_0
    return v1

    .line 1981
    .restart local p2    # "item":Landroid/view/View;
    :cond_1
    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getHeaderViewsCount()I

    move-result v3

    if-lt p1, v3, :cond_2

    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getCount()I

    move-result v3

    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getFooterViewsCount()I

    move-result v4

    sub-int/2addr v3, v4

    if-lt p1, v3, :cond_3

    .line 1982
    :cond_2
    move-object v0, p2

    .line 1987
    .end local p2    # "item":Landroid/view/View;
    .local v0, "child":Landroid/view/View;
    :goto_1
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 1989
    .local v2, "lp":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v2, :cond_4

    .line 1990
    iget v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v3, :cond_4

    .line 1991
    iget v1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    .line 1984
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .restart local p2    # "item":Landroid/view/View;
    :cond_3
    check-cast p2, Landroid/view/ViewGroup;

    .end local p2    # "item":Landroid/view/View;
    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .restart local v0    # "child":Landroid/view/View;
    goto :goto_1

    .line 1995
    .restart local v2    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_4
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 1997
    .local v1, "childHeight":I
    if-eqz v1, :cond_5

    if-eqz p3, :cond_0

    .line 1998
    :cond_5
    invoke-direct {p0, v0}, Lcom/mobeta/android/dslv/DragSortListView;->measureItem(Landroid/view/View;)V

    .line 1999
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    goto :goto_0
.end method

.method private getItemHeight(I)I
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 836
    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getFirstVisiblePosition()I

    move-result v1

    sub-int v1, p1, v1

    invoke-virtual {p0, v1}, Lcom/mobeta/android/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 838
    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 840
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 844
    :goto_0
    return v1

    :cond_0
    invoke-direct {p0, p1}, Lcom/mobeta/android/dslv/DragSortListView;->getChildHeight(I)I

    move-result v1

    invoke-direct {p0, p1, v1}, Lcom/mobeta/android/dslv/DragSortListView;->calcItemHeight(II)I

    move-result v1

    goto :goto_0
.end method

.method private getShuffleEdge(II)I
    .locals 11
    .param p1, "position"    # I
    .param p2, "top"    # I

    .prologue
    .line 918
    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getHeaderViewsCount()I

    move-result v7

    .line 919
    .local v7, "numHeaders":I
    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getFooterViewsCount()I

    move-result v6

    .line 925
    .local v6, "numFooters":I
    if-le p1, v7, :cond_0

    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getCount()I

    move-result v9

    sub-int/2addr v9, v6

    if-lt p1, v9, :cond_1

    :cond_0
    move v3, p2

    .line 972
    :goto_0
    return v3

    .line 929
    :cond_1
    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getDividerHeight()I

    move-result v2

    .line 933
    .local v2, "divHeight":I
    iget v9, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewHeight:I

    iget v10, p0, Lcom/mobeta/android/dslv/DragSortListView;->mItemHeightCollapsed:I

    sub-int v5, v9, v10

    .line 934
    .local v5, "maxBlankHeight":I
    invoke-direct {p0, p1}, Lcom/mobeta/android/dslv/DragSortListView;->getChildHeight(I)I

    move-result v1

    .line 935
    .local v1, "childHeight":I
    invoke-direct {p0, p1}, Lcom/mobeta/android/dslv/DragSortListView;->getItemHeight(I)I

    move-result v4

    .line 939
    .local v4, "itemHeight":I
    move v8, p2

    .line 940
    .local v8, "otop":I
    iget v9, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSecondExpPos:I

    iget v10, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    if-gt v9, v10, :cond_5

    .line 943
    iget v9, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSecondExpPos:I

    if-ne p1, v9, :cond_4

    iget v9, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFirstExpPos:I

    iget v10, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSecondExpPos:I

    if-eq v9, v10, :cond_4

    .line 944
    iget v9, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    if-ne p1, v9, :cond_3

    .line 945
    add-int v9, p2, v4

    iget v10, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewHeight:I

    sub-int v8, v9, v10

    .line 966
    :cond_2
    :goto_1
    iget v9, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    if-gt p1, v9, :cond_7

    .line 967
    iget v9, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewHeight:I

    sub-int/2addr v9, v2

    add-int/lit8 v10, p1, -0x1

    invoke-direct {p0, v10}, Lcom/mobeta/android/dslv/DragSortListView;->getChildHeight(I)I

    move-result v10

    sub-int/2addr v9, v10

    div-int/lit8 v9, v9, 0x2

    add-int v3, v8, v9

    .line 968
    .local v3, "edge":I
    goto :goto_0

    .line 947
    .end local v3    # "edge":I
    :cond_3
    sub-int v0, v4, v1

    .line 948
    .local v0, "blankHeight":I
    add-int v9, p2, v0

    sub-int v8, v9, v5

    .line 950
    goto :goto_1

    .end local v0    # "blankHeight":I
    :cond_4
    iget v9, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSecondExpPos:I

    if-le p1, v9, :cond_2

    iget v9, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    if-gt p1, v9, :cond_2

    .line 951
    sub-int v8, p2, v5

    .line 954
    goto :goto_1

    .line 957
    :cond_5
    iget v9, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    if-le p1, v9, :cond_6

    iget v9, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFirstExpPos:I

    if-gt p1, v9, :cond_6

    .line 958
    add-int v8, p2, v5

    .line 959
    goto :goto_1

    :cond_6
    iget v9, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSecondExpPos:I

    if-ne p1, v9, :cond_2

    iget v9, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFirstExpPos:I

    iget v10, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSecondExpPos:I

    if-eq v9, v10, :cond_2

    .line 960
    sub-int v0, v4, v1

    .line 961
    .restart local v0    # "blankHeight":I
    add-int v8, p2, v0

    goto :goto_1

    .line 969
    .end local v0    # "blankHeight":I
    :cond_7
    sub-int v9, v1, v2

    iget v10, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewHeight:I

    sub-int/2addr v9, v10

    div-int/lit8 v9, v9, 0x2

    add-int v3, v8, v9

    .restart local v3    # "edge":I
    goto :goto_0
.end method

.method private static insertionIndexForKey(Landroid/util/SparseBooleanArray;I)I
    .locals 4
    .param p0, "sba"    # Landroid/util/SparseBooleanArray;
    .param p1, "key"    # I

    .prologue
    .line 2771
    const/4 v1, 0x0

    .line 2772
    .local v1, "low":I
    invoke-virtual {p0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    .line 2773
    .local v0, "high":I
    :goto_0
    sub-int v3, v0, v1

    if-gtz v3, :cond_0

    .line 2780
    return v1

    .line 2774
    :cond_0
    add-int v3, v1, v0

    shr-int/lit8 v2, v3, 0x1

    .line 2775
    .local v2, "middle":I
    invoke-virtual {p0, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    if-ge v3, p1, :cond_1

    .line 2776
    add-int/lit8 v1, v2, 0x1

    goto :goto_0

    .line 2778
    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method private invalidateFloatView()V
    .locals 1

    .prologue
    .line 2181
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewInvalidated:Z

    .line 2182
    return-void
.end method

.method private measureFloatView()V
    .locals 1

    .prologue
    .line 2116
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2117
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/mobeta/android/dslv/DragSortListView;->measureItem(Landroid/view/View;)V

    .line 2118
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewHeight:I

    .line 2119
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewHeight:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewHeightHalf:I

    .line 2121
    :cond_0
    return-void
.end method

.method private measureItem(Landroid/view/View;)V
    .locals 7
    .param p1, "item"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x0

    .line 2099
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 2100
    .local v1, "lp":Landroid/view/ViewGroup$LayoutParams;
    if-nez v1, :cond_0

    .line 2101
    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    .end local v1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v1, v3, v4}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 2102
    .restart local v1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2104
    :cond_0
    iget v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->mWidthMeasureSpec:I

    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getListPaddingLeft()I

    move-result v4

    .line 2105
    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getListPaddingRight()I

    move-result v5

    add-int/2addr v4, v5

    iget v5, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 2104
    invoke-static {v3, v4, v5}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v2

    .line 2107
    .local v2, "wspec":I
    iget v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v3, :cond_1

    .line 2108
    iget v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 2112
    .local v0, "hspec":I
    :goto_0
    invoke-virtual {p1, v2, v0}, Landroid/view/View;->measure(II)V

    .line 2113
    return-void

    .line 2110
    .end local v0    # "hspec":I
    :cond_1
    invoke-static {v6, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .restart local v0    # "hspec":I
    goto :goto_0
.end method

.method private printPosData()V
    .locals 3

    .prologue
    .line 849
    const-string v0, "mobeta"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mSrcPos="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mFirstExpPos="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFirstExpPos:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mSecondExpPos="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 850
    iget v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSecondExpPos:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 849
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 851
    return-void
.end method

.method private static rotate(IIII)I
    .locals 1
    .param p0, "value"    # I
    .param p1, "offset"    # I
    .param p2, "lowerBound"    # I
    .param p3, "upperBound"    # I

    .prologue
    .line 2749
    sub-int v0, p3, p2

    .line 2751
    .local v0, "windowSize":I
    add-int/2addr p0, p1

    .line 2752
    if-ge p0, p2, :cond_1

    .line 2753
    add-int/2addr p0, v0

    .line 2757
    :cond_0
    :goto_0
    return p0

    .line 2754
    :cond_1
    if-lt p0, p3, :cond_0

    .line 2755
    sub-int/2addr p0, v0

    goto :goto_0
.end method

.method private saveTouchCoords(Landroid/view/MotionEvent;)V
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1677
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v0, v1, 0xff

    .line 1678
    .local v0, "action":I
    if-eqz v0, :cond_0

    .line 1679
    iget v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mX:I

    iput v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mLastX:I

    .line 1680
    iget v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mY:I

    iput v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mLastY:I

    .line 1682
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mX:I

    .line 1683
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mY:I

    .line 1684
    if-nez v0, :cond_1

    .line 1685
    iget v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mX:I

    iput v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mLastX:I

    .line 1686
    iget v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mY:I

    iput v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mLastY:I

    .line 1688
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    iget v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mX:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mOffsetX:I

    .line 1689
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    float-to-int v1, v1

    iget v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mY:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mOffsetY:I

    .line 1690
    return-void
.end method

.method private updateFloatView()V
    .locals 13

    .prologue
    .line 2350
    iget-object v9, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewManager:Lcom/mobeta/android/dslv/DragSortListView$FloatViewManager;

    if-eqz v9, :cond_0

    .line 2351
    iget-object v9, p0, Lcom/mobeta/android/dslv/DragSortListView;->mTouchLoc:Landroid/graphics/Point;

    iget v10, p0, Lcom/mobeta/android/dslv/DragSortListView;->mX:I

    iget v11, p0, Lcom/mobeta/android/dslv/DragSortListView;->mY:I

    invoke-virtual {v9, v10, v11}, Landroid/graphics/Point;->set(II)V

    .line 2352
    iget-object v9, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewManager:Lcom/mobeta/android/dslv/DragSortListView$FloatViewManager;

    iget-object v10, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    iget-object v11, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iget-object v12, p0, Lcom/mobeta/android/dslv/DragSortListView;->mTouchLoc:Landroid/graphics/Point;

    invoke-interface {v9, v10, v11, v12}, Lcom/mobeta/android/dslv/DragSortListView$FloatViewManager;->onDragFloatView(Landroid/view/View;Landroid/graphics/Point;Landroid/graphics/Point;)V

    .line 2355
    :cond_0
    iget-object v9, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iget v2, v9, Landroid/graphics/Point;->x:I

    .line 2356
    .local v2, "floatX":I
    iget-object v9, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iget v3, v9, Landroid/graphics/Point;->y:I

    .line 2359
    .local v3, "floatY":I
    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getPaddingLeft()I

    move-result v7

    .line 2360
    .local v7, "padLeft":I
    iget v9, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragFlags:I

    and-int/lit8 v9, v9, 0x1

    if-nez v9, :cond_7

    if-le v2, v7, :cond_7

    .line 2361
    iget-object v9, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iput v7, v9, Landroid/graphics/Point;->x:I

    .line 2367
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getHeaderViewsCount()I

    move-result v6

    .line 2368
    .local v6, "numHeaders":I
    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getFooterViewsCount()I

    move-result v5

    .line 2369
    .local v5, "numFooters":I
    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getFirstVisiblePosition()I

    move-result v1

    .line 2370
    .local v1, "firstPos":I
    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getLastVisiblePosition()I

    move-result v4

    .line 2374
    .local v4, "lastPos":I
    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getPaddingTop()I

    move-result v8

    .line 2375
    .local v8, "topLimit":I
    if-ge v1, v6, :cond_2

    .line 2376
    sub-int v9, v6, v1

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {p0, v9}, Lcom/mobeta/android/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v8

    .line 2378
    :cond_2
    iget v9, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragFlags:I

    and-int/lit8 v9, v9, 0x8

    if-nez v9, :cond_3

    .line 2379
    iget v9, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    if-gt v1, v9, :cond_3

    .line 2380
    iget v9, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    sub-int/2addr v9, v1

    invoke-virtual {p0, v9}, Lcom/mobeta/android/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v9

    invoke-static {v9, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 2385
    :cond_3
    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getHeight()I

    move-result v9

    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getPaddingBottom()I

    move-result v10

    sub-int v0, v9, v10

    .line 2386
    .local v0, "bottomLimit":I
    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getCount()I

    move-result v9

    sub-int/2addr v9, v5

    add-int/lit8 v9, v9, -0x1

    if-lt v4, v9, :cond_4

    .line 2387
    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getCount()I

    move-result v9

    sub-int/2addr v9, v5

    add-int/lit8 v9, v9, -0x1

    sub-int/2addr v9, v1

    invoke-virtual {p0, v9}, Lcom/mobeta/android/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 2389
    :cond_4
    iget v9, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragFlags:I

    and-int/lit8 v9, v9, 0x4

    if-nez v9, :cond_5

    .line 2390
    iget v9, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    if-lt v4, v9, :cond_5

    .line 2391
    iget v9, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    sub-int/2addr v9, v1

    invoke-virtual {p0, v9}, Lcom/mobeta/android/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v9

    invoke-static {v9, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2399
    :cond_5
    if-ge v3, v8, :cond_8

    .line 2400
    iget-object v9, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iput v8, v9, Landroid/graphics/Point;->y:I

    .line 2406
    :cond_6
    :goto_1
    iget-object v9, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->y:I

    iget v10, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewHeightHalf:I

    add-int/2addr v9, v10

    iput v9, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewMid:I

    .line 2407
    return-void

    .line 2362
    .end local v0    # "bottomLimit":I
    .end local v1    # "firstPos":I
    .end local v4    # "lastPos":I
    .end local v5    # "numFooters":I
    .end local v6    # "numHeaders":I
    .end local v8    # "topLimit":I
    :cond_7
    iget v9, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragFlags:I

    and-int/lit8 v9, v9, 0x2

    if-nez v9, :cond_1

    if-ge v2, v7, :cond_1

    .line 2363
    iget-object v9, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iput v7, v9, Landroid/graphics/Point;->x:I

    goto/16 :goto_0

    .line 2401
    .restart local v0    # "bottomLimit":I
    .restart local v1    # "firstPos":I
    .restart local v4    # "lastPos":I
    .restart local v5    # "numFooters":I
    .restart local v6    # "numHeaders":I
    .restart local v8    # "topLimit":I
    :cond_8
    iget v9, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewHeight:I

    add-int/2addr v9, v3

    if-le v9, v0, :cond_6

    .line 2402
    iget-object v9, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iget v10, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewHeight:I

    sub-int v10, v0, v10

    iput v10, v9, Landroid/graphics/Point;->y:I

    goto :goto_1
.end method

.method private updatePositions()Z
    .locals 30

    .prologue
    .line 977
    invoke-virtual/range {p0 .. p0}, Lcom/mobeta/android/dslv/DragSortListView;->getFirstVisiblePosition()I

    move-result v9

    .line 978
    .local v9, "first":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mobeta/android/dslv/DragSortListView;->mFirstExpPos:I

    move/from16 v23, v0

    .line 979
    .local v23, "startPos":I
    sub-int v27, v23, v9

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/mobeta/android/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v25

    .line 981
    .local v25, "startView":Landroid/view/View;
    if-nez v25, :cond_0

    .line 982
    invoke-virtual/range {p0 .. p0}, Lcom/mobeta/android/dslv/DragSortListView;->getChildCount()I

    move-result v27

    div-int/lit8 v27, v27, 0x2

    add-int v23, v9, v27

    .line 983
    sub-int v27, v23, v9

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/mobeta/android/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v25

    .line 985
    :cond_0
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getTop()I

    move-result v24

    .line 987
    .local v24, "startTop":I
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getHeight()I

    move-result v10

    .line 989
    .local v10, "itemHeight":I
    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/mobeta/android/dslv/DragSortListView;->getShuffleEdge(II)I

    move-result v5

    .line 990
    .local v5, "edge":I
    move v13, v5

    .line 992
    .local v13, "lastEdge":I
    invoke-virtual/range {p0 .. p0}, Lcom/mobeta/android/dslv/DragSortListView;->getDividerHeight()I

    move-result v4

    .line 996
    .local v4, "divHeight":I
    move/from16 v11, v23

    .line 997
    .local v11, "itemPos":I
    move/from16 v12, v24

    .line 998
    .local v12, "itemTop":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewMid:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-ge v0, v5, :cond_9

    .line 1001
    :goto_0
    if-gez v11, :cond_7

    .line 1045
    :cond_1
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/mobeta/android/dslv/DragSortListView;->getHeaderViewsCount()I

    move-result v15

    .line 1046
    .local v15, "numHeaders":I
    invoke-virtual/range {p0 .. p0}, Lcom/mobeta/android/dslv/DragSortListView;->getFooterViewsCount()I

    move-result v14

    .line 1048
    .local v14, "numFooters":I
    const/16 v26, 0x0

    .line 1050
    .local v26, "updated":Z
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mobeta/android/dslv/DragSortListView;->mFirstExpPos:I

    move/from16 v16, v0

    .line 1051
    .local v16, "oldFirstExpPos":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mobeta/android/dslv/DragSortListView;->mSecondExpPos:I

    move/from16 v17, v0

    .line 1052
    .local v17, "oldSecondExpPos":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mobeta/android/dslv/DragSortListView;->mSlideFrac:F

    move/from16 v18, v0

    .line 1054
    .local v18, "oldSlideFrac":F
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/mobeta/android/dslv/DragSortListView;->mAnimate:Z

    move/from16 v27, v0

    if-eqz v27, :cond_e

    .line 1055
    sub-int v27, v5, v13

    invoke-static/range {v27 .. v27}, Ljava/lang/Math;->abs(I)I

    move-result v7

    .line 1058
    .local v7, "edgeToEdge":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewMid:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-ge v0, v5, :cond_b

    .line 1059
    move v6, v5

    .line 1060
    .local v6, "edgeBottom":I
    move v8, v13

    .line 1067
    .local v8, "edgeTop":I
    :goto_2
    const/high16 v27, 0x3f000000    # 0.5f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/mobeta/android/dslv/DragSortListView;->mSlideRegionFrac:F

    move/from16 v28, v0

    mul-float v27, v27, v28

    int-to-float v0, v7

    move/from16 v28, v0

    mul-float v27, v27, v28

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v21, v0

    .line 1068
    .local v21, "slideRgnHeight":I
    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v22, v0

    .line 1069
    .local v22, "slideRgnHeightF":F
    add-int v20, v8, v21

    .line 1070
    .local v20, "slideEdgeTop":I
    sub-int v19, v6, v21

    .line 1073
    .local v19, "slideEdgeBottom":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewMid:I

    move/from16 v27, v0

    move/from16 v0, v27

    move/from16 v1, v20

    if-ge v0, v1, :cond_c

    .line 1074
    add-int/lit8 v27, v11, -0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/mobeta/android/dslv/DragSortListView;->mFirstExpPos:I

    .line 1075
    move-object/from16 v0, p0

    iput v11, v0, Lcom/mobeta/android/dslv/DragSortListView;->mSecondExpPos:I

    .line 1076
    const/high16 v27, 0x3f000000    # 0.5f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewMid:I

    move/from16 v28, v0

    sub-int v28, v20, v28

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    mul-float v27, v27, v28

    div-float v27, v27, v22

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/mobeta/android/dslv/DragSortListView;->mSlideFrac:F

    .line 1097
    .end local v6    # "edgeBottom":I
    .end local v7    # "edgeToEdge":I
    .end local v8    # "edgeTop":I
    .end local v19    # "slideEdgeBottom":I
    .end local v20    # "slideEdgeTop":I
    .end local v21    # "slideRgnHeight":I
    .end local v22    # "slideRgnHeightF":F
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mobeta/android/dslv/DragSortListView;->mFirstExpPos:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-ge v0, v15, :cond_f

    .line 1098
    move v11, v15

    .line 1099
    move-object/from16 v0, p0

    iput v11, v0, Lcom/mobeta/android/dslv/DragSortListView;->mFirstExpPos:I

    .line 1100
    move-object/from16 v0, p0

    iput v11, v0, Lcom/mobeta/android/dslv/DragSortListView;->mSecondExpPos:I

    .line 1107
    :cond_2
    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mobeta/android/dslv/DragSortListView;->mFirstExpPos:I

    move/from16 v27, v0

    move/from16 v0, v27

    move/from16 v1, v16

    if-ne v0, v1, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/mobeta/android/dslv/DragSortListView;->mSecondExpPos:I

    move/from16 v27, v0

    move/from16 v0, v27

    move/from16 v1, v17

    if-ne v0, v1, :cond_3

    .line 1108
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mobeta/android/dslv/DragSortListView;->mSlideFrac:F

    move/from16 v27, v0

    cmpl-float v27, v27, v18

    if-eqz v27, :cond_4

    .line 1109
    :cond_3
    const/16 v26, 0x1

    .line 1112
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatPos:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-eq v11, v0, :cond_6

    .line 1113
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobeta/android/dslv/DragSortListView;->mDragListener:Lcom/mobeta/android/dslv/DragSortListView$DragListener;

    move-object/from16 v27, v0

    if-eqz v27, :cond_5

    .line 1114
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobeta/android/dslv/DragSortListView;->mDragListener:Lcom/mobeta/android/dslv/DragSortListView$DragListener;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatPos:I

    move/from16 v28, v0

    sub-int v28, v28, v15

    sub-int v29, v11, v15

    invoke-interface/range {v27 .. v29}, Lcom/mobeta/android/dslv/DragSortListView$DragListener;->drag(II)V

    .line 1117
    :cond_5
    move-object/from16 v0, p0

    iput v11, v0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatPos:I

    .line 1118
    const/16 v26, 0x1

    .line 1121
    :cond_6
    return v26

    .line 1002
    .end local v14    # "numFooters":I
    .end local v15    # "numHeaders":I
    .end local v16    # "oldFirstExpPos":I
    .end local v17    # "oldSecondExpPos":I
    .end local v18    # "oldSlideFrac":F
    .end local v26    # "updated":Z
    :cond_7
    add-int/lit8 v11, v11, -0x1

    .line 1003
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/mobeta/android/dslv/DragSortListView;->getItemHeight(I)I

    move-result v10

    .line 1005
    if-nez v11, :cond_8

    .line 1006
    sub-int v27, v12, v4

    sub-int v5, v27, v10

    .line 1007
    goto/16 :goto_1

    .line 1010
    :cond_8
    add-int v27, v10, v4

    sub-int v12, v12, v27

    .line 1011
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v12}, Lcom/mobeta/android/dslv/DragSortListView;->getShuffleEdge(II)I

    move-result v5

    .line 1014
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewMid:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-ge v0, v5, :cond_1

    .line 1018
    move v13, v5

    goto/16 :goto_0

    .line 1023
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/mobeta/android/dslv/DragSortListView;->getCount()I

    move-result v3

    .line 1024
    .local v3, "count":I
    :goto_5
    if-ge v11, v3, :cond_1

    .line 1025
    add-int/lit8 v27, v3, -0x1

    move/from16 v0, v27

    if-ne v11, v0, :cond_a

    .line 1026
    add-int v27, v12, v4

    add-int v5, v27, v10

    .line 1027
    goto/16 :goto_1

    .line 1030
    :cond_a
    add-int v27, v4, v10

    add-int v12, v12, v27

    .line 1031
    add-int/lit8 v27, v11, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/mobeta/android/dslv/DragSortListView;->getItemHeight(I)I

    move-result v10

    .line 1032
    add-int/lit8 v27, v11, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-direct {v0, v1, v12}, Lcom/mobeta/android/dslv/DragSortListView;->getShuffleEdge(II)I

    move-result v5

    .line 1036
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewMid:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-lt v0, v5, :cond_1

    .line 1040
    move v13, v5

    .line 1041
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    .line 1062
    .end local v3    # "count":I
    .restart local v7    # "edgeToEdge":I
    .restart local v14    # "numFooters":I
    .restart local v15    # "numHeaders":I
    .restart local v16    # "oldFirstExpPos":I
    .restart local v17    # "oldSecondExpPos":I
    .restart local v18    # "oldSlideFrac":F
    .restart local v26    # "updated":Z
    :cond_b
    move v8, v5

    .line 1063
    .restart local v8    # "edgeTop":I
    move v6, v13

    .restart local v6    # "edgeBottom":I
    goto/16 :goto_2

    .line 1079
    .restart local v19    # "slideEdgeBottom":I
    .restart local v20    # "slideEdgeTop":I
    .restart local v21    # "slideRgnHeight":I
    .restart local v22    # "slideRgnHeightF":F
    :cond_c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewMid:I

    move/from16 v27, v0

    move/from16 v0, v27

    move/from16 v1, v19

    if-ge v0, v1, :cond_d

    .line 1080
    move-object/from16 v0, p0

    iput v11, v0, Lcom/mobeta/android/dslv/DragSortListView;->mFirstExpPos:I

    .line 1081
    move-object/from16 v0, p0

    iput v11, v0, Lcom/mobeta/android/dslv/DragSortListView;->mSecondExpPos:I

    goto/16 :goto_3

    .line 1083
    :cond_d
    move-object/from16 v0, p0

    iput v11, v0, Lcom/mobeta/android/dslv/DragSortListView;->mFirstExpPos:I

    .line 1084
    add-int/lit8 v27, v11, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/mobeta/android/dslv/DragSortListView;->mSecondExpPos:I

    .line 1085
    const/high16 v27, 0x3f000000    # 0.5f

    const/high16 v28, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewMid:I

    move/from16 v29, v0

    sub-int v29, v6, v29

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    .line 1086
    div-float v29, v29, v22

    add-float v28, v28, v29

    mul-float v27, v27, v28

    .line 1085
    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/mobeta/android/dslv/DragSortListView;->mSlideFrac:F

    goto/16 :goto_3

    .line 1092
    .end local v6    # "edgeBottom":I
    .end local v7    # "edgeToEdge":I
    .end local v8    # "edgeTop":I
    .end local v19    # "slideEdgeBottom":I
    .end local v20    # "slideEdgeTop":I
    .end local v21    # "slideRgnHeight":I
    .end local v22    # "slideRgnHeightF":F
    :cond_e
    move-object/from16 v0, p0

    iput v11, v0, Lcom/mobeta/android/dslv/DragSortListView;->mFirstExpPos:I

    .line 1093
    move-object/from16 v0, p0

    iput v11, v0, Lcom/mobeta/android/dslv/DragSortListView;->mSecondExpPos:I

    goto/16 :goto_3

    .line 1101
    :cond_f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mobeta/android/dslv/DragSortListView;->mSecondExpPos:I

    move/from16 v27, v0

    invoke-virtual/range {p0 .. p0}, Lcom/mobeta/android/dslv/DragSortListView;->getCount()I

    move-result v28

    sub-int v28, v28, v14

    move/from16 v0, v27

    move/from16 v1, v28

    if-lt v0, v1, :cond_2

    .line 1102
    invoke-virtual/range {p0 .. p0}, Lcom/mobeta/android/dslv/DragSortListView;->getCount()I

    move-result v27

    sub-int v27, v27, v14

    add-int/lit8 v11, v27, -0x1

    .line 1103
    move-object/from16 v0, p0

    iput v11, v0, Lcom/mobeta/android/dslv/DragSortListView;->mFirstExpPos:I

    .line 1104
    move-object/from16 v0, p0

    iput v11, v0, Lcom/mobeta/android/dslv/DragSortListView;->mSecondExpPos:I

    goto/16 :goto_4
.end method

.method private updateScrollStarts()V
    .locals 6

    .prologue
    .line 1838
    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getPaddingTop()I

    move-result v2

    .line 1839
    .local v2, "padTop":I
    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getHeight()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getPaddingBottom()I

    move-result v4

    sub-int v1, v3, v4

    .line 1840
    .local v1, "listHeight":I
    int-to-float v0, v1

    .line 1842
    .local v0, "heightF":F
    int-to-float v3, v2

    iget v4, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragUpScrollStartFrac:F

    mul-float/2addr v4, v0

    add-float/2addr v3, v4

    iput v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->mUpScrollStartYF:F

    .line 1843
    int-to-float v3, v2

    const/high16 v4, 0x3f800000    # 1.0f

    iget v5, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragDownScrollStartFrac:F

    sub-float/2addr v4, v5

    mul-float/2addr v4, v0

    add-float/2addr v3, v4

    iput v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDownScrollStartYF:F

    .line 1845
    iget v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->mUpScrollStartYF:F

    float-to-int v3, v3

    iput v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->mUpScrollStartY:I

    .line 1846
    iget v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDownScrollStartYF:F

    float-to-int v3, v3

    iput v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDownScrollStartY:I

    .line 1848
    iget v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->mUpScrollStartYF:F

    int-to-float v4, v2

    sub-float/2addr v3, v4

    iput v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragUpScrollHeight:F

    .line 1849
    add-int v3, v2, v1

    int-to-float v3, v3

    iget v4, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDownScrollStartYF:F

    sub-float/2addr v3, v4

    iput v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragDownScrollHeight:F

    .line 1850
    return-void
.end method


# virtual methods
.method public cancelDrag()V
    .locals 2

    .prologue
    .line 1475
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 1476
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragScroller:Lcom/mobeta/android/dslv/DragSortListView$DragScroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->stopScrolling(Z)V

    .line 1477
    invoke-direct {p0}, Lcom/mobeta/android/dslv/DragSortListView;->destroyFloatView()V

    .line 1478
    invoke-direct {p0}, Lcom/mobeta/android/dslv/DragSortListView;->clearPositions()V

    .line 1479
    invoke-direct {p0}, Lcom/mobeta/android/dslv/DragSortListView;->adjustAllItems()V

    .line 1481
    iget-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mInTouchEvent:Z

    if-eqz v0, :cond_1

    .line 1482
    const/4 v0, 0x3

    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragState:I

    .line 1487
    :cond_0
    :goto_0
    return-void

    .line 1484
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragState:I

    goto :goto_0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 790
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 792
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragState:I

    if-eqz v0, :cond_1

    .line 794
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFirstExpPos:I

    iget v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    if-eq v0, v2, :cond_0

    .line 795
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFirstExpPos:I

    invoke-direct {p0, v0, p1}, Lcom/mobeta/android/dslv/DragSortListView;->drawDivider(ILandroid/graphics/Canvas;)V

    .line 797
    :cond_0
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSecondExpPos:I

    iget v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFirstExpPos:I

    if-eq v0, v2, :cond_1

    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSecondExpPos:I

    iget v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    if-eq v0, v2, :cond_1

    .line 798
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSecondExpPos:I

    invoke-direct {p0, v0, p1}, Lcom/mobeta/android/dslv/DragSortListView;->drawDivider(ILandroid/graphics/Canvas;)V

    .line 802
    :cond_1
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 804
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v9

    .line 805
    .local v9, "w":I
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v8

    .line 807
    .local v8, "h":I
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iget v11, v0, Landroid/graphics/Point;->x:I

    .line 809
    .local v11, "x":I
    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getWidth()I

    move-result v10

    .line 810
    .local v10, "width":I
    if-gez v11, :cond_2

    .line 811
    neg-int v11, v11

    .line 813
    :cond_2
    if-ge v11, v10, :cond_4

    .line 814
    sub-int v0, v10, v11

    int-to-float v0, v0

    int-to-float v2, v10

    div-float v7, v0, v2

    .line 815
    .local v7, "alphaMod":F
    mul-float/2addr v7, v7

    .line 820
    :goto_0
    const/high16 v0, 0x437f0000    # 255.0f

    iget v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mCurrFloatAlpha:F

    mul-float/2addr v0, v2

    mul-float/2addr v0, v7

    float-to-int v5, v0

    .line 822
    .local v5, "alpha":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 824
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget-object v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 825
    invoke-virtual {p1, v3, v3, v9, v8}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 828
    int-to-float v3, v9

    int-to-float v4, v8

    const/16 v6, 0x1f

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    .line 829
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 830
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 831
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 833
    .end local v5    # "alpha":I
    .end local v7    # "alphaMod":F
    .end local v8    # "h":I
    .end local v9    # "w":I
    .end local v10    # "width":I
    .end local v11    # "x":I
    :cond_3
    return-void

    .line 817
    .restart local v8    # "h":I
    .restart local v9    # "w":I
    .restart local v10    # "width":I
    .restart local v11    # "x":I
    :cond_4
    const/4 v7, 0x0

    .restart local v7    # "alphaMod":F
    goto :goto_0
.end method

.method public getFloatAlpha()F
    .locals 1

    .prologue
    .line 583
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mCurrFloatAlpha:F

    return v0
.end method

.method public getInputAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 636
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mAdapterWrapper:Lcom/mobeta/android/dslv/DragSortListView$AdapterWrapper;

    if-nez v0, :cond_0

    .line 637
    const/4 v0, 0x0

    .line 639
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mAdapterWrapper:Lcom/mobeta/android/dslv/DragSortListView$AdapterWrapper;

    invoke-virtual {v0}, Lcom/mobeta/android/dslv/DragSortListView$AdapterWrapper;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    goto :goto_0
.end method

.method public isDragEnabled()Z
    .locals 1

    .prologue
    .line 2496
    iget-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragEnabled:Z

    return v0
.end method

.method protected layoutChildren()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2138
    invoke-super {p0}, Landroid/widget/ListView;->layoutChildren()V

    .line 2140
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 2141
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isLayoutRequested()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewOnMeasured:Z

    if-nez v0, :cond_0

    .line 2145
    invoke-direct {p0}, Lcom/mobeta/android/dslv/DragSortListView;->measureFloatView()V

    .line 2147
    :cond_0
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    iget-object v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 2148
    iput-boolean v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewOnMeasured:Z

    .line 2150
    :cond_1
    return-void
.end method

.method public listViewIntercepted()Z
    .locals 1

    .prologue
    .line 1693
    iget-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mListViewIntercepted:Z

    return v0
.end method

.method public moveCheckState(II)V
    .locals 12
    .param p1, "from"    # I
    .param p2, "to"    # I

    .prologue
    const/4 v11, -0x1

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 2633
    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v0

    .line 2634
    .local v0, "cip":Landroid/util/SparseBooleanArray;
    move v3, p1

    .line 2635
    .local v3, "rangeStart":I
    move v2, p2

    .line 2636
    .local v2, "rangeEnd":I
    if-ge p2, p1, :cond_0

    .line 2637
    move v3, p2

    .line 2638
    move v2, p1

    .line 2640
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 2642
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v7

    new-array v6, v7, [I

    .line 2643
    .local v6, "runStart":[I
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v7

    new-array v5, v7, [I

    .line 2644
    .local v5, "runEnd":[I
    invoke-static {v0, v3, v2, v6, v5}, Lcom/mobeta/android/dslv/DragSortListView;->buildRunList(Landroid/util/SparseBooleanArray;II[I[I)I

    move-result v4

    .line 2645
    .local v4, "runCount":I
    if-ne v4, v10, :cond_2

    aget v7, v6, v9

    aget v8, v5, v9

    if-ne v7, v8, :cond_2

    .line 2663
    :cond_1
    return-void

    .line 2651
    :cond_2
    if-ge p1, p2, :cond_3

    .line 2652
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-eq v1, v4, :cond_1

    .line 2653
    aget v7, v6, v1

    invoke-static {v7, v11, v3, v2}, Lcom/mobeta/android/dslv/DragSortListView;->rotate(IIII)I

    move-result v7

    invoke-virtual {p0, v7, v10}, Lcom/mobeta/android/dslv/DragSortListView;->setItemChecked(IZ)V

    .line 2654
    aget v7, v5, v1

    invoke-static {v7, v11, v3, v2}, Lcom/mobeta/android/dslv/DragSortListView;->rotate(IIII)I

    move-result v7

    invoke-virtual {p0, v7, v9}, Lcom/mobeta/android/dslv/DragSortListView;->setItemChecked(IZ)V

    .line 2652
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2658
    .end local v1    # "i":I
    :cond_3
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    if-eq v1, v4, :cond_1

    .line 2659
    aget v7, v6, v1

    invoke-virtual {p0, v7, v9}, Lcom/mobeta/android/dslv/DragSortListView;->setItemChecked(IZ)V

    .line 2660
    aget v7, v5, v1

    invoke-virtual {p0, v7, v10}, Lcom/mobeta/android/dslv/DragSortListView;->setItemChecked(IZ)V

    .line 2658
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public moveItem(II)V
    .locals 2
    .param p1, "from"    # I
    .param p2, "to"    # I

    .prologue
    .line 1462
    iget-object v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDropListener:Lcom/mobeta/android/dslv/DragSortListView$DropListener;

    if-eqz v1, :cond_0

    .line 1463
    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getInputAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 1464
    .local v0, "count":I
    if-ltz p1, :cond_0

    if-ge p1, v0, :cond_0

    if-ltz p2, :cond_0

    if-ge p2, v0, :cond_0

    .line 1465
    iget-object v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDropListener:Lcom/mobeta/android/dslv/DragSortListView$DropListener;

    invoke-interface {v1, p1, p2}, Lcom/mobeta/android/dslv/DragSortListView$DropListener;->drop(II)V

    .line 1468
    .end local v0    # "count":I
    :cond_0
    return-void
.end method

.method protected onDragTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x4

    .line 2154
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v0, v1, 0xff

    .line 2156
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    packed-switch v1, :pswitch_data_0

    .line 2175
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 2158
    :pswitch_0
    iget v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragState:I

    if-ne v1, v2, :cond_0

    .line 2159
    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->cancelDrag()V

    .line 2161
    :cond_0
    invoke-direct {p0}, Lcom/mobeta/android/dslv/DragSortListView;->doActionUpOrCancel()V

    goto :goto_0

    .line 2165
    :pswitch_1
    iget v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragState:I

    if-ne v1, v2, :cond_1

    .line 2166
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/mobeta/android/dslv/DragSortListView;->stopDrag(Z)Z

    .line 2168
    :cond_1
    invoke-direct {p0}, Lcom/mobeta/android/dslv/DragSortListView;->doActionUpOrCancel()V

    goto :goto_0

    .line 2171
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-direct {p0, v1, v2}, Lcom/mobeta/android/dslv/DragSortListView;->continueDrag(II)V

    goto :goto_0

    .line 2156
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1126
    invoke-super {p0, p1}, Landroid/widget/ListView;->onDraw(Landroid/graphics/Canvas;)V

    .line 1128
    iget-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mTrackDragSort:Z

    if-eqz v0, :cond_0

    .line 1129
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragSortTracker:Lcom/mobeta/android/dslv/DragSortListView$DragSortTracker;

    invoke-virtual {v0}, Lcom/mobeta/android/dslv/DragSortListView$DragSortTracker;->appendState()V

    .line 1131
    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    .line 1700
    iget-boolean v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragEnabled:Z

    if-nez v3, :cond_1

    .line 1701
    invoke-super {p0, p1}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 1748
    :cond_0
    :goto_0
    return v1

    .line 1704
    :cond_1
    invoke-direct {p0, p1}, Lcom/mobeta/android/dslv/DragSortListView;->saveTouchCoords(Landroid/view/MotionEvent;)V

    .line 1705
    iput-boolean v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mLastCallWasIntercept:Z

    .line 1707
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    and-int/lit16 v0, v3, 0xff

    .line 1709
    .local v0, "action":I
    if-nez v0, :cond_3

    .line 1710
    iget v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragState:I

    if-eqz v3, :cond_2

    .line 1712
    iput-boolean v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mIgnoreTouchEvent:Z

    move v1, v2

    .line 1713
    goto :goto_0

    .line 1715
    :cond_2
    iput-boolean v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mInTouchEvent:Z

    .line 1718
    :cond_3
    const/4 v1, 0x0

    .line 1721
    .local v1, "intercept":Z
    iget-object v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    if-eqz v3, :cond_5

    .line 1723
    const/4 v1, 0x1

    .line 1744
    :goto_1
    if-eq v0, v2, :cond_4

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    .line 1745
    :cond_4
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mInTouchEvent:Z

    goto :goto_0

    .line 1725
    :cond_5
    invoke-super {p0, p1}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1726
    iput-boolean v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mListViewIntercepted:Z

    .line 1727
    const/4 v1, 0x1

    .line 1730
    :cond_6
    packed-switch v0, :pswitch_data_0

    .line 1736
    :pswitch_0
    if-eqz v1, :cond_7

    .line 1737
    iput v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mCancelMethod:I

    goto :goto_1

    .line 1733
    :pswitch_1
    invoke-direct {p0}, Lcom/mobeta/android/dslv/DragSortListView;->doActionUpOrCancel()V

    goto :goto_1

    .line 1739
    :cond_7
    const/4 v3, 0x2

    iput v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->mCancelMethod:I

    goto :goto_1

    .line 1730
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 1
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 2125
    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->onMeasure(II)V

    .line 2127
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 2128
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isLayoutRequested()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2129
    invoke-direct {p0}, Lcom/mobeta/android/dslv/DragSortListView;->measureFloatView()V

    .line 2131
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewOnMeasured:Z

    .line 2133
    :cond_1
    iput p1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mWidthMeasureSpec:I

    .line 2134
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 1854
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ListView;->onSizeChanged(IIII)V

    .line 1855
    invoke-direct {p0}, Lcom/mobeta/android/dslv/DragSortListView;->updateScrollStarts()V

    .line 1856
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x0

    .line 1615
    iget-boolean v4, p0, Lcom/mobeta/android/dslv/DragSortListView;->mIgnoreTouchEvent:Z

    if-eqz v4, :cond_1

    .line 1616
    iput-boolean v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->mIgnoreTouchEvent:Z

    move v2, v3

    .line 1662
    :cond_0
    :goto_0
    return v2

    .line 1620
    :cond_1
    iget-boolean v4, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragEnabled:Z

    if-nez v4, :cond_2

    .line 1621
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_0

    .line 1624
    :cond_2
    const/4 v2, 0x0

    .line 1626
    .local v2, "more":Z
    iget-boolean v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mLastCallWasIntercept:Z

    .line 1627
    .local v1, "lastCallWasIntercept":Z
    iput-boolean v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->mLastCallWasIntercept:Z

    .line 1629
    if-nez v1, :cond_3

    .line 1630
    invoke-direct {p0, p1}, Lcom/mobeta/android/dslv/DragSortListView;->saveTouchCoords(Landroid/view/MotionEvent;)V

    .line 1634
    :cond_3
    iget v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragState:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_4

    .line 1635
    invoke-virtual {p0, p1}, Lcom/mobeta/android/dslv/DragSortListView;->onDragTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1636
    const/4 v2, 0x1

    .line 1637
    goto :goto_0

    .line 1642
    :cond_4
    iget v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragState:I

    if-nez v3, :cond_5

    .line 1643
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1644
    const/4 v2, 0x1

    .line 1648
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    and-int/lit16 v0, v3, 0xff

    .line 1650
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 1656
    :pswitch_0
    if-eqz v2, :cond_0

    .line 1657
    const/4 v3, 0x1

    iput v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->mCancelMethod:I

    goto :goto_0

    .line 1653
    :pswitch_1
    invoke-direct {p0}, Lcom/mobeta/android/dslv/DragSortListView;->doActionUpOrCancel()V

    goto :goto_0

    .line 1650
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public removeCheckState(I)V
    .locals 10
    .param p1, "position"    # I

    .prologue
    const/4 v9, -0x1

    .line 2679
    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v0

    .line 2681
    .local v0, "cip":Landroid/util/SparseBooleanArray;
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v7

    if-nez v7, :cond_1

    .line 2697
    :cond_0
    return-void

    .line 2683
    :cond_1
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v7

    new-array v6, v7, [I

    .line 2684
    .local v6, "runStart":[I
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v7

    new-array v5, v7, [I

    .line 2685
    .local v5, "runEnd":[I
    move v3, p1

    .line 2686
    .local v3, "rangeStart":I
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v0, v7}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v7

    add-int/lit8 v2, v7, 0x1

    .line 2687
    .local v2, "rangeEnd":I
    invoke-static {v0, v3, v2, v6, v5}, Lcom/mobeta/android/dslv/DragSortListView;->buildRunList(Landroid/util/SparseBooleanArray;II[I[I)I

    move-result v4

    .line 2688
    .local v4, "runCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-eq v1, v4, :cond_0

    .line 2689
    aget v7, v6, v1

    if-eq v7, p1, :cond_3

    aget v7, v5, v1

    aget v8, v6, v1

    if-ge v7, v8, :cond_2

    aget v7, v5, v1

    if-gt v7, p1, :cond_3

    .line 2693
    :cond_2
    aget v7, v6, v1

    invoke-static {v7, v9, v3, v2}, Lcom/mobeta/android/dslv/DragSortListView;->rotate(IIII)I

    move-result v7

    const/4 v8, 0x1

    invoke-virtual {p0, v7, v8}, Lcom/mobeta/android/dslv/DragSortListView;->setItemChecked(IZ)V

    .line 2695
    :cond_3
    aget v7, v5, v1

    invoke-static {v7, v9, v3, v2}, Lcom/mobeta/android/dslv/DragSortListView;->rotate(IIII)I

    move-result v7

    const/4 v8, 0x0

    invoke-virtual {p0, v7, v8}, Lcom/mobeta/android/dslv/DragSortListView;->setItemChecked(IZ)V

    .line 2688
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public removeItem(I)V
    .locals 1
    .param p1, "which"    # I

    .prologue
    .line 1404
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mUseRemoveVelocity:Z

    .line 1405
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/mobeta/android/dslv/DragSortListView;->removeItem(IF)V

    .line 1406
    return-void
.end method

.method public removeItem(IF)V
    .locals 4
    .param p1, "which"    # I
    .param p2, "velocityX"    # F

    .prologue
    const/4 v3, 0x4

    .line 1416
    iget v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragState:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragState:I

    if-ne v1, v3, :cond_3

    .line 1418
    :cond_0
    iget v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragState:I

    if-nez v1, :cond_1

    .line 1420
    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getHeaderViewsCount()I

    move-result v1

    add-int/2addr v1, p1

    iput v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    .line 1421
    iget v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    iput v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFirstExpPos:I

    .line 1422
    iget v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    iput v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSecondExpPos:I

    .line 1423
    iget v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    iput v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatPos:I

    .line 1424
    iget v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getFirstVisiblePosition()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/mobeta/android/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1425
    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 1426
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1430
    .end local v0    # "v":Landroid/view/View;
    :cond_1
    const/4 v1, 0x1

    iput v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragState:I

    .line 1431
    iput p2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mRemoveVelocityX:F

    .line 1433
    iget-boolean v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mInTouchEvent:Z

    if-eqz v1, :cond_2

    .line 1434
    iget v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mCancelMethod:I

    packed-switch v1, :pswitch_data_0

    .line 1444
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mRemoveAnimator:Lcom/mobeta/android/dslv/DragSortListView$RemoveAnimator;

    if-eqz v1, :cond_4

    .line 1445
    iget-object v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mRemoveAnimator:Lcom/mobeta/android/dslv/DragSortListView$RemoveAnimator;

    invoke-virtual {v1}, Lcom/mobeta/android/dslv/DragSortListView$RemoveAnimator;->start()V

    .line 1450
    :cond_3
    :goto_1
    return-void

    .line 1436
    :pswitch_0
    iget-object v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mCancelEvent:Landroid/view/MotionEvent;

    invoke-super {p0, v1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0

    .line 1439
    :pswitch_1
    iget-object v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mCancelEvent:Landroid/view/MotionEvent;

    invoke-super {p0, v1}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0

    .line 1447
    :cond_4
    invoke-direct {p0, p1}, Lcom/mobeta/android/dslv/DragSortListView;->doRemoveItem(I)V

    goto :goto_1

    .line 1434
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 2050
    iget-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mBlockLayoutRequests:Z

    if-nez v0, :cond_0

    .line 2051
    invoke-super {p0}, Landroid/widget/ListView;->requestLayout()V

    .line 2053
    :cond_0
    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 1
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    .line 608
    if-eqz p1, :cond_3

    .line 609
    new-instance v0, Lcom/mobeta/android/dslv/DragSortListView$AdapterWrapper;

    invoke-direct {v0, p0, p1}, Lcom/mobeta/android/dslv/DragSortListView$AdapterWrapper;-><init>(Lcom/mobeta/android/dslv/DragSortListView;Landroid/widget/ListAdapter;)V

    iput-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mAdapterWrapper:Lcom/mobeta/android/dslv/DragSortListView$AdapterWrapper;

    .line 610
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mObserver:Landroid/database/DataSetObserver;

    invoke-interface {p1, v0}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 612
    instance-of v0, p1, Lcom/mobeta/android/dslv/DragSortListView$DropListener;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 613
    check-cast v0, Lcom/mobeta/android/dslv/DragSortListView$DropListener;

    invoke-virtual {p0, v0}, Lcom/mobeta/android/dslv/DragSortListView;->setDropListener(Lcom/mobeta/android/dslv/DragSortListView$DropListener;)V

    .line 615
    :cond_0
    instance-of v0, p1, Lcom/mobeta/android/dslv/DragSortListView$DragListener;

    if-eqz v0, :cond_1

    move-object v0, p1

    .line 616
    check-cast v0, Lcom/mobeta/android/dslv/DragSortListView$DragListener;

    invoke-virtual {p0, v0}, Lcom/mobeta/android/dslv/DragSortListView;->setDragListener(Lcom/mobeta/android/dslv/DragSortListView$DragListener;)V

    .line 618
    :cond_1
    instance-of v0, p1, Lcom/mobeta/android/dslv/DragSortListView$RemoveListener;

    if-eqz v0, :cond_2

    .line 619
    check-cast p1, Lcom/mobeta/android/dslv/DragSortListView$RemoveListener;

    .end local p1    # "adapter":Landroid/widget/ListAdapter;
    invoke-virtual {p0, p1}, Lcom/mobeta/android/dslv/DragSortListView;->setRemoveListener(Lcom/mobeta/android/dslv/DragSortListView$RemoveListener;)V

    .line 625
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mAdapterWrapper:Lcom/mobeta/android/dslv/DragSortListView$AdapterWrapper;

    invoke-super {p0, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 626
    return-void

    .line 622
    .restart local p1    # "adapter":Landroid/widget/ListAdapter;
    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mAdapterWrapper:Lcom/mobeta/android/dslv/DragSortListView$AdapterWrapper;

    goto :goto_0
.end method

.method public setDragEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 2492
    iput-boolean p1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragEnabled:Z

    .line 2493
    return-void
.end method

.method public setDragListener(Lcom/mobeta/android/dslv/DragSortListView$DragListener;)V
    .locals 0
    .param p1, "l"    # Lcom/mobeta/android/dslv/DragSortListView$DragListener;

    .prologue
    .line 2478
    iput-object p1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragListener:Lcom/mobeta/android/dslv/DragSortListView$DragListener;

    .line 2479
    return-void
.end method

.method public setDragScrollProfile(Lcom/mobeta/android/dslv/DragSortListView$DragScrollProfile;)V
    .locals 0
    .param p1, "ssp"    # Lcom/mobeta/android/dslv/DragSortListView$DragScrollProfile;

    .prologue
    .line 2575
    if-eqz p1, :cond_0

    .line 2576
    iput-object p1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mScrollProfile:Lcom/mobeta/android/dslv/DragSortListView$DragScrollProfile;

    .line 2578
    :cond_0
    return-void
.end method

.method public setDragScrollStart(F)V
    .locals 0
    .param p1, "heightFraction"    # F

    .prologue
    .line 1760
    invoke-virtual {p0, p1, p1}, Lcom/mobeta/android/dslv/DragSortListView;->setDragScrollStarts(FF)V

    .line 1761
    return-void
.end method

.method public setDragScrollStarts(FF)V
    .locals 2
    .param p1, "upperFrac"    # F
    .param p2, "lowerFrac"    # F

    .prologue
    const/high16 v1, 0x3f000000    # 0.5f

    .line 1774
    cmpl-float v0, p2, v1

    if-lez v0, :cond_1

    .line 1775
    iput v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragDownScrollStartFrac:F

    .line 1780
    :goto_0
    cmpl-float v0, p1, v1

    if-lez v0, :cond_2

    .line 1781
    iput v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragUpScrollStartFrac:F

    .line 1786
    :goto_1
    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getHeight()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1787
    invoke-direct {p0}, Lcom/mobeta/android/dslv/DragSortListView;->updateScrollStarts()V

    .line 1789
    :cond_0
    return-void

    .line 1777
    :cond_1
    iput p2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragDownScrollStartFrac:F

    goto :goto_0

    .line 1783
    :cond_2
    iput p1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragUpScrollStartFrac:F

    goto :goto_1
.end method

.method public setDragSortListener(Lcom/mobeta/android/dslv/DragSortListView$DragSortListener;)V
    .locals 0
    .param p1, "l"    # Lcom/mobeta/android/dslv/DragSortListView$DragSortListener;

    .prologue
    .line 2562
    invoke-virtual {p0, p1}, Lcom/mobeta/android/dslv/DragSortListView;->setDropListener(Lcom/mobeta/android/dslv/DragSortListView$DropListener;)V

    .line 2563
    invoke-virtual {p0, p1}, Lcom/mobeta/android/dslv/DragSortListView;->setDragListener(Lcom/mobeta/android/dslv/DragSortListView$DragListener;)V

    .line 2564
    invoke-virtual {p0, p1}, Lcom/mobeta/android/dslv/DragSortListView;->setRemoveListener(Lcom/mobeta/android/dslv/DragSortListView$RemoveListener;)V

    .line 2565
    return-void
.end method

.method public setDropListener(Lcom/mobeta/android/dslv/DragSortListView$DropListener;)V
    .locals 0
    .param p1, "l"    # Lcom/mobeta/android/dslv/DragSortListView$DropListener;

    .prologue
    .line 2512
    iput-object p1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDropListener:Lcom/mobeta/android/dslv/DragSortListView$DropListener;

    .line 2513
    return-void
.end method

.method public setFloatAlpha(F)V
    .locals 0
    .param p1, "alpha"    # F

    .prologue
    .line 579
    iput p1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mCurrFloatAlpha:F

    .line 580
    return-void
.end method

.method public setFloatViewManager(Lcom/mobeta/android/dslv/DragSortListView$FloatViewManager;)V
    .locals 0
    .param p1, "manager"    # Lcom/mobeta/android/dslv/DragSortListView$FloatViewManager;

    .prologue
    .line 2474
    iput-object p1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewManager:Lcom/mobeta/android/dslv/DragSortListView$FloatViewManager;

    .line 2475
    return-void
.end method

.method public setMaxScrollSpeed(F)V
    .locals 0
    .param p1, "max"    # F

    .prologue
    .line 593
    iput p1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mMaxScrollSpeed:F

    .line 594
    return-void
.end method

.method public setRemoveListener(Lcom/mobeta/android/dslv/DragSortListView$RemoveListener;)V
    .locals 0
    .param p1, "l"    # Lcom/mobeta/android/dslv/DragSortListView$RemoveListener;

    .prologue
    .line 2526
    iput-object p1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mRemoveListener:Lcom/mobeta/android/dslv/DragSortListView$RemoveListener;

    .line 2527
    return-void
.end method

.method public startDrag(IIII)Z
    .locals 6
    .param p1, "position"    # I
    .param p2, "dragFlags"    # I
    .param p3, "deltaX"    # I
    .param p4, "deltaY"    # I

    .prologue
    const/4 v0, 0x0

    .line 2208
    iget-boolean v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mInTouchEvent:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewManager:Lcom/mobeta/android/dslv/DragSortListView$FloatViewManager;

    if-nez v1, :cond_1

    .line 2217
    :cond_0
    :goto_0
    return v0

    .line 2212
    :cond_1
    iget-object v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewManager:Lcom/mobeta/android/dslv/DragSortListView$FloatViewManager;

    invoke-interface {v1, p1}, Lcom/mobeta/android/dslv/DragSortListView$FloatViewManager;->onCreateFloatView(I)Landroid/view/View;

    move-result-object v2

    .line 2214
    .local v2, "v":Landroid/view/View;
    if-eqz v2, :cond_0

    move-object v0, p0

    move v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 2217
    invoke-virtual/range {v0 .. v5}, Lcom/mobeta/android/dslv/DragSortListView;->startDrag(ILandroid/view/View;III)Z

    move-result v0

    goto :goto_0
.end method

.method public startDrag(ILandroid/view/View;III)Z
    .locals 7
    .param p1, "position"    # I
    .param p2, "floatView"    # Landroid/view/View;
    .param p3, "dragFlags"    # I
    .param p4, "deltaX"    # I
    .param p5, "deltaY"    # I

    .prologue
    const/4 v6, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2245
    iget v4, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragState:I

    if-nez v4, :cond_0

    iget-boolean v4, p0, Lcom/mobeta/android/dslv/DragSortListView;->mInTouchEvent:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    if-nez v4, :cond_0

    if-eqz p2, :cond_0

    .line 2246
    iget-boolean v4, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragEnabled:Z

    if-nez v4, :cond_2

    :cond_0
    move v2, v3

    .line 2304
    :cond_1
    :goto_0
    return v2

    .line 2250
    :cond_2
    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 2251
    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    invoke-interface {v4, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 2254
    :cond_3
    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getHeaderViewsCount()I

    move-result v4

    add-int v0, p1, v4

    .line 2255
    .local v0, "pos":I
    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFirstExpPos:I

    .line 2256
    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSecondExpPos:I

    .line 2257
    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    .line 2258
    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatPos:I

    .line 2261
    iput v6, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragState:I

    .line 2262
    iput v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragFlags:I

    .line 2263
    iget v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragFlags:I

    or-int/2addr v3, p3

    iput v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragFlags:I

    .line 2265
    iput-object p2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    .line 2266
    invoke-direct {p0}, Lcom/mobeta/android/dslv/DragSortListView;->measureFloatView()V

    .line 2268
    iput p4, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragDeltaX:I

    .line 2269
    iput p5, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragDeltaY:I

    .line 2270
    iget v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->mY:I

    iput v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragStartY:I

    .line 2273
    iget-object v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iget v4, p0, Lcom/mobeta/android/dslv/DragSortListView;->mX:I

    iget v5, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragDeltaX:I

    sub-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Point;->x:I

    .line 2274
    iget-object v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iget v4, p0, Lcom/mobeta/android/dslv/DragSortListView;->mY:I

    iget v5, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragDeltaY:I

    sub-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Point;->y:I

    .line 2277
    iget v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getFirstVisiblePosition()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0, v3}, Lcom/mobeta/android/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2279
    .local v1, "srcItem":Landroid/view/View;
    if-eqz v1, :cond_4

    .line 2280
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2283
    :cond_4
    iget-boolean v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->mTrackDragSort:Z

    if-eqz v3, :cond_5

    .line 2284
    iget-object v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragSortTracker:Lcom/mobeta/android/dslv/DragSortListView$DragSortTracker;

    invoke-virtual {v3}, Lcom/mobeta/android/dslv/DragSortListView$DragSortTracker;->startTracking()V

    .line 2289
    :cond_5
    iget v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->mCancelMethod:I

    packed-switch v3, :pswitch_data_0

    .line 2298
    :goto_1
    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->requestLayout()V

    .line 2300
    iget-object v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->mLiftAnimator:Lcom/mobeta/android/dslv/DragSortListView$LiftAnimator;

    if-eqz v3, :cond_1

    .line 2301
    iget-object v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->mLiftAnimator:Lcom/mobeta/android/dslv/DragSortListView$LiftAnimator;

    invoke-virtual {v3}, Lcom/mobeta/android/dslv/DragSortListView$LiftAnimator;->start()V

    goto :goto_0

    .line 2291
    :pswitch_0
    iget-object v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->mCancelEvent:Landroid/view/MotionEvent;

    invoke-super {p0, v3}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_1

    .line 2294
    :pswitch_1
    iget-object v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->mCancelEvent:Landroid/view/MotionEvent;

    invoke-super {p0, v3}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_1

    .line 2289
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public stopDrag(Z)Z
    .locals 1
    .param p1, "remove"    # Z

    .prologue
    .line 1578
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mUseRemoveVelocity:Z

    .line 1579
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/mobeta/android/dslv/DragSortListView;->stopDrag(ZF)Z

    move-result v0

    return v0
.end method

.method public stopDrag(ZF)Z
    .locals 3
    .param p1, "remove"    # Z
    .param p2, "velocityX"    # F

    .prologue
    const/4 v0, 0x1

    .line 1589
    iget-object v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    if-eqz v1, :cond_3

    .line 1590
    iget-object v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragScroller:Lcom/mobeta/android/dslv/DragSortListView$DragScroller;

    invoke-virtual {v1, v0}, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->stopScrolling(Z)V

    .line 1592
    if-eqz p1, :cond_1

    .line 1593
    iget v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getHeaderViewsCount()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1, p2}, Lcom/mobeta/android/dslv/DragSortListView;->removeItem(IF)V

    .line 1602
    :goto_0
    iget-boolean v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mTrackDragSort:Z

    if-eqz v1, :cond_0

    .line 1603
    iget-object v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragSortTracker:Lcom/mobeta/android/dslv/DragSortListView$DragSortTracker;

    invoke-virtual {v1}, Lcom/mobeta/android/dslv/DragSortListView$DragSortTracker;->stopTracking()V

    .line 1609
    :cond_0
    :goto_1
    return v0

    .line 1595
    :cond_1
    iget-object v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDropAnimator:Lcom/mobeta/android/dslv/DragSortListView$DropAnimator;

    if-eqz v1, :cond_2

    .line 1596
    iget-object v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDropAnimator:Lcom/mobeta/android/dslv/DragSortListView$DropAnimator;

    invoke-virtual {v1}, Lcom/mobeta/android/dslv/DragSortListView$DropAnimator;->start()V

    goto :goto_0

    .line 1598
    :cond_2
    invoke-direct {p0}, Lcom/mobeta/android/dslv/DragSortListView;->dropFloatView()V

    goto :goto_0

    .line 1609
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public stopDragWithVelocity(ZF)Z
    .locals 1
    .param p1, "remove"    # Z
    .param p2, "velocityX"    # F

    .prologue
    .line 1584
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mUseRemoveVelocity:Z

    .line 1585
    invoke-virtual {p0, p1, p2}, Lcom/mobeta/android/dslv/DragSortListView;->stopDrag(ZF)Z

    move-result v0

    return v0
.end method
