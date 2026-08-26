.class public Lme/imid/swipebacklayout/lib/ViewDragHelper;
.super Ljava/lang/Object;
.source "ViewDragHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lme/imid/swipebacklayout/lib/ViewDragHelper$Callback;
    }
.end annotation


# static fields
.field private static final BASE_SETTLE_DURATION:I = 0x100

.field public static final DIRECTION_ALL:I = 0x3

.field public static final DIRECTION_HORIZONTAL:I = 0x1

.field public static final DIRECTION_VERTICAL:I = 0x2

.field public static final EDGE_ALL:I = 0xf

.field public static final EDGE_BOTTOM:I = 0x8

.field public static final EDGE_LEFT:I = 0x1

.field public static final EDGE_RIGHT:I = 0x2

.field private static final EDGE_SIZE:I = 0x14

.field public static final EDGE_TOP:I = 0x4

.field public static final INVALID_POINTER:I = -0x1

.field private static final MAX_SETTLE_DURATION:I = 0x258

.field public static final STATE_DRAGGING:I = 0x1

.field public static final STATE_IDLE:I = 0x0

.field public static final STATE_SETTLING:I = 0x2

.field private static final TAG:Ljava/lang/String; = "ViewDragHelper"

.field private static final sInterpolator:Landroid/view/animation/Interpolator;


# instance fields
.field private mActivePointerId:I

.field private final mCallback:Lme/imid/swipebacklayout/lib/ViewDragHelper$Callback;

.field private mCapturedView:Landroid/view/View;

.field private mDragState:I

.field private mEdgeDragsInProgress:[I

.field private mEdgeDragsLocked:[I

.field private mEdgeSize:I

.field private mInitialEdgesTouched:[I

.field private mInitialMotionX:[F

.field private mInitialMotionY:[F

.field private mLastMotionX:[F

.field private mLastMotionY:[F

.field private mMaxVelocity:F

.field private mMinVelocity:F

.field private final mParentView:Landroid/view/ViewGroup;

.field private mPointersDown:I

.field private mReleaseInProgress:Z

.field private mScroller:Landroid/support/v4/widget/ScrollerCompat;

.field private final mSetIdleRunnable:Ljava/lang/Runnable;

.field private mTouchSlop:I

.field private mTrackingEdges:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 359
    new-instance v0, Lme/imid/swipebacklayout/lib/ViewDragHelper$1;

    invoke-direct {v0}, Lme/imid/swipebacklayout/lib/ViewDragHelper$1;-><init>()V

    sput-object v0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->sInterpolator:Landroid/view/animation/Interpolator;

    .line 364
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Lme/imid/swipebacklayout/lib/ViewDragHelper$Callback;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "forParent"    # Landroid/view/ViewGroup;
    .param p3, "cb"    # Lme/imid/swipebacklayout/lib/ViewDragHelper$Callback;

    .prologue
    .line 407
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    const/4 v2, -0x1

    iput v2, p0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mActivePointerId:I

    .line 366
    new-instance v2, Lme/imid/swipebacklayout/lib/ViewDragHelper$2;

    invoke-direct {v2, p0}, Lme/imid/swipebacklayout/lib/ViewDragHelper$2;-><init>(Lme/imid/swipebacklayout/lib/ViewDragHelper;)V

    iput-object v2, p0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mSetIdleRunnable:Ljava/lang/Runnable;

    .line 408
    if-nez p2, :cond_0

    .line 409
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Parent view may not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 411
    :cond_0
    if-nez p3, :cond_1

    .line 412
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Callback may not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 415
    :cond_1
    iput-object p2, p0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    .line 416
    iput-object p3, p0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mCallback:Lme/imid/swipebacklayout/lib/ViewDragHelper$Callback;

    .line 418
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    .line 419
    .local v1, "vc":Landroid/view/ViewConfiguration;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v0, v2, Landroid/util/DisplayMetrics;->density:F

    .line 420
    .local v0, "density":F
    const/high16 v2, 0x41a00000    # 20.0f

    mul-float/2addr v2, v0

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mEdgeSize:I

    .line 422
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    iput v2, p0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mTouchSlop:I

    .line 423
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mMaxVelocity:F

    .line 424
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mMinVelocity:F

    .line 425
    sget-object v2, Lme/imid/swipebacklayout/lib/ViewDragHelper;->sInterpolator:Landroid/view/animation/Interpolator;

    invoke-static {p1, v2}, Landroid/support/v4/widget/ScrollerCompat;->create(Landroid/content/Context;Landroid/view/animation/Interpolator;)Landroid/support/v4/widget/ScrollerCompat;

    move-result-object v2

    iput-object v2, p0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    .line 426
    return-void
.end method

.method private checkNewEdgeDrag(FFII)Z
    .locals 5
    .param p1, "delta"    # F
    .param p2, "odelta"    # F
    .param p3, "pointerId"    # I
    .param p4, "edge"    # I

    .prologue
    const/4 v2, 0x0

    .line 1306
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 1307
    .local v0, "absDelta":F
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 1309
    .local v1, "absODelta":F
    iget-object v3, p0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mInitialEdgesTouched:[I

    aget v3, v3, p3

    and-int/2addr v3, p4

    if-ne v3, p4, :cond_0

    iget v3, p0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mTrackingEdges:I

    and-int/2addr v3, p4

    if-eqz v3, :cond_0

    .line 1310
    iget-object v3, p0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mEdgeDragsLocked:[I

    aget v3, v3, p3

    and-int/2addr v3, p4

    if-eq v3, p4, :cond_0

    .line 1311
    iget-object v3, p0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mEdgeDragsInProgress:[I

    aget v3, v3, p3

    and-int/2addr v3, p4

    if-eq v3, p4, :cond_0

    .line 1312
    iget v3, p0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mTouchSlop:I

    int-to-float v3, v3

    cmpg-float v3, v0, v3

    if-gtz v3, :cond_1

    iget v3, p0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mTouchSlop:I

    int-to-float v3, v3

    cmpg-float v3, v1, v3

    if-gtz v3, :cond_1

    .line 1319
    :cond_0
    :goto_0
    return v2

    .line 1315
    :cond_1
    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v3, v1

    cmpg-float v3, v0, v3

    if-gez v3, :cond_2

    iget-object v3, p0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mCallback:Lme/imid/swipebacklayout/lib/ViewDragHelper$Callback;

    invoke-virtual {v3, p4}, Lme/imid/swipebacklayout/lib/ViewDragHelper$Callback;->onEdgeLock(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1316
    iget-object v3, p0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mEdgeDragsLocked:[I

    aget v4, v3, p3

    or-int/2addr v4, p4

    aput v4, v3, p3

    goto :goto_0

    .line 1319
    :cond_2
    iget-object v3, p0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mEdgeDragsInProgress:[I

    aget v3, v3, p3

    and-int/2addr v3, p4

    if-nez v3, :cond_0

    iget v3, p0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mTouchSlop:I

    int-to-float v3, v3

    cmpl-float v3, v0, v3

    if-lez v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method private checkTouchSlop(Landroid/view/View;FF)Z
    .locals 7
    .param p1, "child"    # Landroid/view/View;
    .param p2, "dx"    # F
    .param p3, "dy"    # F

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1333
    if-nez p1, :cond_1

    .line 1346
    :cond_0
    :goto_0
    return v3

    .line 1336
    :cond_1
    iget-object v4, p0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mCallback:Lme/imid/swipebacklayout/lib/ViewDragHelper$Callback;

    invoke-virtual {v4, p1}, Lme/imid/swipebacklayout/lib/ViewDragHelper$Callback;->getViewHorizontalDragRange(Landroid/view/View;)I

    move-result v4

    if-lez v4, :cond_2

    move v0, v2

    .line 1337
    .local v0, "checkHorizontal":Z
    :goto_1
    iget-object v4, p0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mCallback:Lme/imid/swipebacklayout/lib/ViewDragHelper$Callback;

    invoke-virtual {v4, p1}, Lme/imid/swipebacklayout/lib/ViewDragHelper$Callback;->getViewVerticalDragRange(Landroid/view/View;)I

    move-result v4

    if-lez v4, :cond_3

    move v1, v2

    .line 1339
    .local v1, "checkVertical":Z
    :goto_2
    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    .line 1340
    mul-float v4, p2, p2

    mul-float v5, p3, p3

    add-float/2addr v4, v5

    iget v5, p0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mTouchSlop:I

    iget v6, p0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mTouchSlop:I

    mul-int/2addr v5, v6

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_0

    move v3, v2

    goto :goto_0

    .end local v0    # "checkHorizontal":Z
    .end local v1    # "checkVertical":Z
    :cond_2
    move v0, v3

    .line 1336
    goto :goto_1

    .restart local v0    # "checkHorizontal":Z
    :cond_3
    move v1, v3

    .line 1337
    goto :goto_2

    .line 1341
    .restart local v1    # "checkVertical":Z
    :cond_4
    if-eqz v0, :cond_5

    .line 1342
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mTouchSlop:I

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_0

    move v3, v2

    goto :goto_0

    .line 1343
    :cond_5
    if-eqz v1, :cond_0

    .line 1344
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mTouchSlop:I

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_0

    move v3, v2

    goto :goto_0
.end method

.method private clampMag(FFF)F
    .locals 3
    .param p1, "value"    # F
    .param p2, "absMin"    # F
    .param p3, "absMax"    # F

    .prologue
    const/4 v1, 0x0

    .line 733
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 734
    .local v0, "absValue":F
    cmpg-float v2, v0, p2

    if-gez v2, :cond_1

    move p3, v1

    .line 738
    .end local p3    # "absMax":F
    :cond_0
    :goto_0
    return p3

    .line 736
    .restart local p3    # "absMax":F
    :cond_1
    cmpl-float v2, v0, p3

    if-lez v2, :cond_2

    .line 737
    cmpl-float v1, p1, v1

    if-gtz v1, :cond_0

    neg-float p3, p3

    goto :goto_0

    :cond_2
    move p3, p1

    .line 738
    goto :goto_0
.end method

.method private clampMag(III)I
    .locals 1
    .param p1, "value"    # I
    .param p2, "absMin"    # I
    .param p3, "absMax"    # I

    .prologue
    .line 714
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 715
    .local v0, "absValue":I
    if-ge v0, p2, :cond_1

    .line 716
    const/4 p3, 0x0

    .line 719
    .end local p3    # "absMax":I
    :cond_0
    :goto_0
    return p3

    .line 717
    .restart local p3    # "absMax":I
    :cond_1
    if-le v0, p3, :cond_2

    .line 718
    if-gtz p1, :cond_0

    neg-int p3, p3

    goto :goto_0

    :cond_2
    move p3, p1

    .line 719
    goto :goto_0
.end method

.method private clearMotionHistory()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 840
    iget-object v0, p0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mInitialMotionX:[F

    if-nez v0, :cond_0

    .line 851
    :goto_0
    return-void

    .line 843
    :cond_0
    iget-object v0, p0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mInitialMotionX:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 844
    iget-object v0, p0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mInitialMotionY:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 845
    iget-object v0, p0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mLastMotionX:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 846
    iget-object v0, p0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mLastMotionY:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 847
    iget-object v0, p0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mInitialEdgesTouched:[I

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([II)V

    .line 848
    iget-object v0, p0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mEdgeDragsInProgress:[I

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([II)V

    .line 849
    iget-object v0, p0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mEdgeDragsLocked:[I

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([II)V

    .line 850
    iput v2, p0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mPointersDown:I

    goto :goto_0
.end method

.method private clearMotionHistory(I)V
    .locals 3
    .param p1, "pointerId"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 854
    iget-object v0, p0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mInitialMotionX:[F

    if-nez v0, :cond_0

    .line 865
    :goto_0
    return-void

    .line 857
    :cond_0
    iget-object v0, p0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mInitialMotionX:[F

    aput v1, v0, p1

    .line 858
    iget-object v0, p0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mInitialMotionY:[F

    aput v1, v0, p1

    .line 859
    iget-object v0, p0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mLastMotionX:[F

    aput v1, v0, p1

    .line 860
    iget-object v0, p0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mLastMotionY:[F

    aput v1, v0, p1

    .line 861
    iget-object v0, p0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mInitialEdgesTouched:[I

    aput v2, v0, p1

    .line 862
    iget-object v0, p0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mEdgeDragsInProgress:[I

    aput v2, v0, p1

    .line 863
    iget-object v0, p0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mEdgeDragsLocked:[I

    aput v2, v0, p1

    .line 864
    iget v0, p0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mPointersDown:I

    const/4 v1, 0x1

    shl-int/2addr v1, p1

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mPointersDown:I

    goto :goto_0
.end method

.method private computeAxisDuration(III)I
    .locals 10
    .param p1, "delta"    # I
    .param p2, "velocity"    # I
    .param p3, "motionRange"    # I

    .prologue
    const/high16 v9, 0x3f800000    # 1.0f

    .line 682
    if-nez p1, :cond_0

    .line 683
    const/4 v6, 0x0

    .line 700
    :goto_0
    return v6

    .line 686
    :cond_0
    iget-object v6, p0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getWidth()I

    move-result v5

    .line 687
    .local v5, "width":I
    div-int/lit8 v3, v5, 0x2

    .line 688
    .local v3, "halfWidth":I
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v6

    int-to-float v6, v6

    int-to-float v7, v5

    div-float/2addr v6, v7

    invoke-static {v9, v6}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 689
    .local v1, "distanceRatio":F
    int-to-float v6, v3

    int-to-float v7, v3

    .line 690
    invoke-direct {p0, v1}, Lme/imid/swipebacklayout/lib/ViewDragHelper;->distanceInfluenceForSnapDuration(F)F

    move-result v8

    mul-float/2addr v7, v8

    .line 689
    add-float v0, v6, v7

    .line 693
    .local v0, "distance":F
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    .line 694
    if-lez p2, :cond_1

    .line 695
    const/high16 v6, 0x447a0000    # 1000.0f

    int-to-float v7, p2

    div-float v7, v0, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    mul-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    mul-int/lit8 v2, v6, 0x4

    .line 700
    .local v2, "duration":I
    :goto_1
    const/16 v6, 0x258

    invoke-static {v2, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    goto :goto_0

    .line 697
    .end local v2    # "duration":I
    :cond_1
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v6

    int-to-float v6, v6

    int-to-float v7, p3

    div-float v4, v6, v7

    .line 698
    .local v4, "range":F
    add-float v6, v4, v9

    const/high16 v7, 0x43800000    # 256.0f

    mul-float/2addr v6, v7

    float-to-int v2, v6

    .restart local v2    # "duration":I
    goto :goto_1
.end method

.method private computeSettleDuration(Landroid/view/View;IIII)I
    .locals 14
    .param p1, "child"    # Landroid/view/View;
    .param p2, "dx"    # I
    .param p3, "dy"    # I
    .param p4, "xvel"    # I
    .param p5, "yvel"    # I

    .prologue
    .line 661
    iget v12, p0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mMinVelocity:F

    float-to-int v12, v12

    iget v13, p0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mMaxVelocity:F

    float-to-int v13, v13

    move/from16 v0, p4

    invoke-direct {p0, v0, v12, v13}, Lme/imid/swipebacklayout/lib/ViewDragHelper;->clampMag(III)I

    move-result p4

    .line 662
    iget v12, p0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mMinVelocity:F

    float-to-int v12, v12

    iget v13, p0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mMaxVelocity:F

    float-to-int v13, v13

    move/from16 v0, p5

    invoke-direct {p0, v0, v12, v13}, Lme/imid/swipebacklayout/lib/ViewDragHelper;->clampMag(III)I

    move-result p5

    .line 663
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 664
    .local v2, "absDx":I
    invoke-static/range {p3 .. p3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 665
    .local v3, "absDy":I
    invoke-static/range {p4 .. p4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    .line 666
    .local v4, "absXVel":I
    invoke-static/range {p5 .. p5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    .line 667
    .local v5, "absYVel":I
    add-int v7, v4, v5

    .line 668
    .local v7, "addedVel":I
    add-int v6, v2, v3

    .line 670
    .local v6, "addedDistance":I
    if-eqz p4, :cond_0

    int-to-float v12, v4

    int-to-float v13, v7

    div-float v9, v12, v13

    .line 672
    .local v9, "xweight":F
    :goto_0
    if-eqz p5, :cond_1

    int-to-float v12, v5

    int-to-float v13, v7

    div-float v11, v12, v13

    .line 675
    .local v11, "yweight":F
    :goto_1
    iget-object v12, p0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mCallback:Lme/imid/swipebacklayout/lib/ViewDragHelper$Callback;

    invoke-virtual {v12, p1}, Lme/imid/swipebacklayout/lib/ViewDragHelper$Callback;->getViewHorizontalDragRange(Landroid/view/View;)I

    move-result v12

    move/from16 v0, p2

    move/from16 v1, p4

    invoke-direct {p0, v0, v1, v12}, Lme/imid/swipebacklayout/lib/ViewDragHelper;->computeAxisDuration(III)I

    move-result v8

    .line 676
    .local v8, "xduration":I
    iget-object v12, p0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mCallback:Lme/imid/swipebacklayout/lib/ViewDragHelper$Callback;

    invoke-virtual {v12, p1}, Lme/imid/swipebacklayout/lib/ViewDragHelper$Callback;->getViewVerticalDragRange(Landroid/view/View;)I

    move-result v12

    move/from16 v0, p3

    move/from16 v1, p5

    invoke-direct {p0, v0, v1, v12}, Lme/imid/swipebacklayout/lib/ViewDragHelper;->computeAxisDuration(III)I

    move-result v10

    .line 678
    .local v10, "yduration":I
    int-to-float v12, v8

    mul-float/2addr v12, v9

    int-to-float v13, v10

    mul-float/2addr v13, v11

    add-float/2addr v12, v13

    float-to-int v12, v12

    return v12

    .line 670
    .end local v8    # "xduration":I
    .end local v9    # "xweight":F
    .end local v10    # "yduration":I
    .end local v11    # "yweight":F
    :cond_0
    int-to-float v12, v2

    .line 671
    int-to-float v13, v6

    div-float v9, v12, v13

    goto :goto_0

    .line 672
    .restart local v9    # "xweight":F
    :cond_1
    int-to-float v12, v3

    .line 673
    int-to-float v13, v6

    div-float v11, v12, v13

    goto :goto_1
.end method

.method public static create(Landroid/view/ViewGroup;FLme/imid/swipebacklayout/lib/ViewDragHelper$Callback;)Lme/imid/swipebacklayout/lib/ViewDragHelper;
    .locals 3
    .param p0, "forParent"    # Landroid/view/ViewGroup;
    .param p1, "sensitivity"    # F
    .param p2, "cb"    # Lme/imid/swipebacklayout/lib/ViewDragHelper$Callback;

    .prologue
    .line 394
    invoke-static {p0, p2}, Lme/imid/swipebacklayout/lib/ViewDragHelper;->create(Landroid/view/ViewGroup;Lme/imid/swipebacklayout/lib/ViewDragHelper$Callback;)Lme/imid/swipebacklayout/lib/ViewDragHelper;

    move-result-object v0

    .line 395
    .local v0, "helper":Lme/imid/swipebacklayout/lib/ViewDragHelper;
    iget v1, v0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mTouchSlop:I

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    div-float/2addr v2, p1

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mTouchSlop:I

    .line 396
    return-object v0
.end method

.method public static create(Landroid/view/ViewGroup;Lme/imid/swipebacklayout/lib/ViewDragHelper$Callback;)Lme/imid/swipebacklayout/lib/ViewDragHelper;
    .locals 2
    .param p0, "forParent"    # Landroid/view/ViewGroup;
    .param p1, "cb"    # Lme/imid/swipebacklayout/lib/ViewDragHelper$Callback;

    .prologue
    .line 380
    new-instance v0, Lme/imid/swipebacklayout/lib/ViewDragHelper;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0, p1}, Lme/imid/swipebacklayout/lib/ViewDragHelper;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Lme/imid/swipebacklayout/lib/ViewDragHelper$Callback;)V

    return-object v0
.end method

.method private dispatchViewReleased(FF)V
    .locals 4
    .param p1, "xvel"    # F
    .param p2, "yvel"    # F

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 828
    iput-boolean v3, p0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mReleaseInProgress:Z

    .line 829
    iget-object v0, p0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mCallback:Lme/imid/swipebacklayout/lib/ViewDragHelper$Callback;

    iget-object v1, p0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v0, v1, p1, p2}, Lme/imid/swipebacklayout/lib/ViewDragHelper$Callback;->onViewReleased(Landroid/view/View;FF)V

    .line 830
    iput-boolean v2, p0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mReleaseInProgress:Z

    .line 832
    iget v0, p0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mDragState:I

    if-ne v0, v3, :cond_0

    .line 835
    invoke-virtual {p0, v2}, Lme/imid/swipebacklayout/lib/ViewDragHelper;->setDragState(I)V

    .line 837
    :cond_0
    return-void
.end method

.method private distanceInfluenceForSnapDuration(F)F
    .locals 4
    .param p1, "f"    # F

    .prologue
    .line 742
    const/high16 v0, 0x3f000000    # 0.5f

    sub-float/2addr p1, v0

    .line 743
    float-to-double v0, p1

    const-wide v2, 0x3fde28c7460698c7L    # 0.4712389167638204

    mul-double/2addr v0, v2

    double-to-float p1, v0

    .line 744
    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method private dragTo(IIII)V
    .locals 8
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "dx"    # I
    .param p4, "dy"    # I

    .prologue
    .line 1463
    move v2, p1

    .line 1464
    .local v2, "clampedX":I
    move v3, p2

    .line 1465
    .local v3, "clampedY":I
    iget-object v0, p0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v6

    .line 1466
    .local v6, "oldLeft":I
    iget-object v0, p0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v7

    .line 1467
    .local v7, "oldTop":I
    if-eqz p3, :cond_0

    .line 1468
    iget-object v0, p0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mCallback:Lme/imid/swipebacklayout/lib/ViewDragHelper$Callback;

    iget-object v1, p0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v0, v1, p1, p3}, Lme/imid/swipebacklayout/lib/ViewDragHelper$Callback;->clampViewPositionHorizontal(Landroid/view/View;II)I

    move-result v2

    .line 1469
    iget-object v0, p0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mCapturedView:Landroid/view/View;

    sub-int v1, v2, v6

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 1471
    :cond_0
    if-eqz p4, :cond_1

    .line 1472
    iget-object v0, p0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mCallback:Lme/imid/swipebacklayout/lib/ViewDragHelper$Callback;

    iget-object v1, p0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v0, v1, p2, p4}, Lme/imid/swipebacklayout/lib/ViewDragHelper$Callback;->clampViewPositionVertical(Landroid/view/View;II)I

    move-result v3

    .line 1473
    iget-object v0, p0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mCapturedView:Landroid/view/View;

    sub-int v1, v3, v7

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 1476
    :cond_1
    if-nez p3, :cond_2

    if-eqz p4, :cond_3

    .line 1477
    :cond_2
    sub-int v4, v2, v6

    .line 1478
    .local v4, "clampedDx":I
    sub-int v5, v3, v7

    .line 1479
    .local v5, "clampedDy":I
    iget-object v0, p0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mCallback:Lme/imid/swipebacklayout/lib/ViewDragHelper$Callback;

    .line 1480
    iget-object v1, p0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual/range {v0 .. v5}, Lme/imid/swipebacklayout/lib/ViewDragHelper$Callback;->onViewPositionChanged(Landroid/view/View;IIII)V

    .line 1482
    .end local v4    # "clampedDx":I
    .end local v5    # "clampedDy":I
    :cond_3
    return-void
.end method

.method private ensureMotionHistorySizeForId(I)V
    .locals 10
    .param p1, "pointerId"    # I

    .prologue
    const/4 v9, 0x0

    .line 868
    iget-object v7, p0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mInitialMotionX:[F

    if-eqz v7, :cond_0

    iget-object v7, p0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mInitialMotionX:[F

    array-length v7, v7

    if-gt v7, p1, :cond_2

    .line 869
    :cond_0
    add-int/lit8 v7, p1, 0x1

    new-array v3, v7, [F

    .line 870
    .local v3, "imx":[F
    add-int/lit8 v7, p1, 0x1

    new-array v4, v7, [F

    .line 871
    .local v4, "imy":[F
    add-int/lit8 v7, p1, 0x1

    new-array v5, v7, [F

    .line 872
    .local v5, "lmx":[F
    add-int/lit8 v7, p1, 0x1

    new-array v6, v7, [F

    .line 873
    .local v6, "lmy":[F
    add-int/lit8 v7, p1, 0x1

    new-array v2, v7, [I

    .line 874
    .local v2, "iit":[I
    add-int/lit8 v7, p1, 0x1

    new-array v0, v7, [I

    .line 875
    .local v0, "edip":[I
    add-int/lit8 v7, p1, 0x1

    new-array v1, v7, [I

    .line 877
    .local v1, "edl":[I
    iget-object v7, p0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mInitialMotionX:[F

    if-eqz v7, :cond_1

    .line 878
    iget-object v7, p0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mInitialMotionX:[F

    iget-object v8, p0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mInitialMotionX:[F

    array-length v8, v8

    invoke-static {v7, v9, v3, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 879
    iget-object v7, p0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mInitialMotionY:[F

    iget-object v8, p0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mInitialMotionY:[F

    array-length v8, v8

    invoke-static {v7, v9, v4, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 880
    iget-object v7, p0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mLastMotionX:[F

    iget-object v8, p0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mLastMotionX:[F

    array-length v8, v8

    invoke-static {v7, v9, v5, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 881
    iget-object v7, p0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mLastMotionY:[F

    iget-object v8, p0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mLastMotionY:[F

    array-length v8, v8

    invoke-static {v7, v9, v6, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 882
    iget-object v7, p0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mInitialEdgesTouched:[I

    iget-object v8, p0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mInitialEdgesTouched:[I

    array-length v8, v8

    invoke-static {v7, v9, v2, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 883
    iget-object v7, p0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mEdgeDragsInProgress:[I

    iget-object v8, p0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mEdgeDragsInProgress:[I

    array-length v8, v8

    invoke-static {v7, v9, v0, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 884
    iget-object v7, p0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mEdgeDragsLocked:[I

    iget-object v8, p0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mEdgeDragsLocked:[I

    array-length v8, v8

    invoke-static {v7, v9, v1, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 887
    :cond_1
    iput-object v3, p0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mInitialMotionX:[F

    .line 888
    iput-object v4, p0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mInitialMotionY:[F

    .line 889
    iput-object v5, p0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mLastMotionX:[F

    .line 890
    iput-object v6, p0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mLastMotionY:[F

    .line 891
    iput-object v2, p0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mInitialEdgesTouched:[I

    .line 892
    iput-object v0, p0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mEdgeDragsInProgress:[I

    .line 893
    iput-object v1, p0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mEdgeDragsLocked:[I

    .line 895
    .end local v0    # "edip":[I
    .end local v1    # "edl":[I
    .end local v2    # "iit":[I
    .end local v3    # "imx":[F
    .end local v4    # "imy":[F
    .end local v5    # "lmx":[F
    .end local v6    # "lmy":[F
    :cond_2
    return-void
.end method

.method private forceSettleCapturedViewAt(IIII)Z
    .locals 11
    .param p1, "finalLeft"    # I
    .param p2, "finalTop"    # I
    .param p3, "xvel"    # I
    .param p4, "yvel"    # I

    .prologue
    const/4 v0, 0x0

    .line 641
    iget-object v1, p0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v10

    .line 642
    .local v10, "startLeft":I
    iget-object v1, p0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v6

    .line 643
    .local v6, "startTop":I
    sub-int v2, p1, v10

    .line 644
    .local v2, "dx":I
    sub-int v3, p2, v6

    .line 646
    .local v3, "dy":I
    if-nez v2, :cond_0

    if-nez v3, :cond_0

    .line 648
    iget-object v1, p0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v1}, Landroid/support/v4/widget/ScrollerCompat;->abortAnimation()V

    .line 649
    invoke-virtual {p0, v0}, Lme/imid/swipebacklayout/lib/ViewDragHelper;->setDragState(I)V

    .line 657
    :goto_0
    return v0

    .line 653
    :cond_0
    iget-object v1, p0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mCapturedView:Landroid/view/View;

    move-object v0, p0

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lme/imid/swipebacklayout/lib/ViewDragHelper;->computeSettleDuration(Landroid/view/View;IIII)I

    move-result v9

    .line 654
    .local v9, "duration":I
    iget-object v4, p0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    move v5, v10

    move v7, v2

    move v8, v3

    invoke-virtual/range {v4 .. v9}, Landroid/support/v4/widget/ScrollerCompat;->startScroll(IIIII)V

    .line 656
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lme/imid/swipebacklayout/lib/ViewDragHelper;->setDragState(I)V

    .line 657
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private getEdgesTouched(II)I
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 1539
    const/4 v0, 0x0

    .line 1541
    .local v0, "result":I
    iget-object v1, p0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLeft()I

    move-result v1

    iget v2, p0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mEdgeSize:I

    add-int/2addr v1, v2

    if-ge p1, v1, :cond_0

    .line 1542
    or-int/lit8 v0, v0, 0x1

    .line 1543
    :cond_0
    iget-object v1, p0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getTop()I

    move-result v1

    iget v2, p0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mEdgeSize:I

    add-int/2addr v1, v2

    if-ge p2, v1, :cond_1

    .line 1544
    or-int/lit8 v0, v0, 0x4

    .line 1545
    :cond_1
    iget-object v1, p0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getRight()I

    move-result v1

    iget v2, p0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mEdgeSize:I

    sub-int/2addr v1, v2

    if-le p1, v1, :cond_2

    .line 1546
    or-int/lit8 v0, v0, 0x2

    .line 1547
    :cond_2
    iget-object v1, p0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getBottom()I

    move-result v1

    iget v2, p0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mEdgeSize:I

    sub-int/2addr v1, v2

    if-le p2, v1, :cond_3

    .line 1548
    or-int/lit8 v0, v0, 0x8

    .line 1550
    :cond_3
    return v0
.end method

.method private releaseViewForPointerUp()V
    .locals 5

    .prologue
    .line 1452
    iget-object v2, p0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v3, 0x3e8

    iget v4, p0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mMaxVelocity:F

    invoke-virtual {v2, v3, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 1454
    iget-object v2, p0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v3, p0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mActivePointerId:I

    invoke-static {v2, v3}, Landroid/support/v4/view/VelocityTrackerCompat;->getXVelocity(Landroid/view/VelocityTracker;I)F

    move-result v2

    .line 1455
    iget v3, p0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mMinVelocity:F

    iget v4, p0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mMaxVelocity:F

    .line 1453
    invoke-direct {p0, v2, v3, v4}, Lme/imid/swipebacklayout/lib/ViewDragHelper;->clampMag(FFF)F

    move-result v0

    .line 1457
    .local v0, "xvel":F
    iget-object v2, p0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v3, p0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mActivePointerId:I

    invoke-static {v2, v3}, Landroid/support/v4/view/VelocityTrackerCompat;->getYVelocity(Landroid/view/VelocityTracker;I)F

    move-result v2

    .line 1458
    iget v3, p0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mMinVelocity:F

    iget v4, p0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mMaxVelocity:F

    .line 1456
    invoke-direct {p0, v2, v3, v4}, Lme/imid/swipebacklayout/lib/ViewDragHelper;->clampMag(FFF)F

    move-result v1

    .line 1459
    .local v1, "yvel":F
    invoke-direct {p0, v0, v1}, Lme/imid/swipebacklayout/lib/ViewDragHelper;->dispatchViewReleased(FF)V

    .line 1460
    return-void
.end method

.method private reportNewEdgeDrags(FFI)V
    .locals 3
    .param p1, "dx"    # F
    .param p2, "dy"    # F
    .param p3, "pointerId"    # I

    .prologue
    .line 1285
    const/4 v0, 0x0

    .line 1286
    .local v0, "dragsStarted":I
    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, p3, v1}, Lme/imid/swipebacklayout/lib/ViewDragHelper;->checkNewEdgeDrag(FFII)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1287
    or-int/lit8 v0, v0, 0x1

    .line 1289
    :cond_0
    const/4 v1, 0x4

    invoke-direct {p0, p2, p1, p3, v1}, Lme/imid/swipebacklayout/lib/ViewDragHelper;->checkNewEdgeDrag(FFII)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1290
    or-int/lit8 v0, v0, 0x4

    .line 1292
    :cond_1
    const/4 v1, 0x2

    invoke-direct {p0, p1, p2, p3, v1}, Lme/imid/swipebacklayout/lib/ViewDragHelper;->checkNewEdgeDrag(FFII)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1293
    or-int/lit8 v0, v0, 0x2

    .line 1295
    :cond_2
    const/16 v1, 0x8

    invoke-direct {p0, p2, p1, p3, v1}, Lme/imid/swipebacklayout/lib/ViewDragHelper;->checkNewEdgeDrag(FFII)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1296
    or-int/lit8 v0, v0, 0x8

    .line 1299
    :cond_3
    if-eqz v0, :cond_4

    .line 1300
    iget-object v1, p0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mEdgeDragsInProgress:[I

    aget v2, v1, p3

    or-int/2addr v2, v0

    aput v2, v1, p3

    .line 1301
    iget-object v1, p0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mCallback:Lme/imid/swipebacklayout/lib/ViewDragHelper$Callback;

    invoke-virtual {v1, v0, p3}, Lme/imid/swipebacklayout/lib/ViewDragHelper$Callback;->onEdgeDragStarted(II)V

    .line 1303
    :cond_4
    return-void
.end method

.method private saveInitialMotion(FFI)V
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "pointerId"    # I

    .prologue
    .line 898
    invoke-direct {p0, p3}, Lme/imid/swipebacklayout/lib/ViewDragHelper;->ensureMotionHistorySizeForId(I)V

    .line 899
    iget-object v0, p0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mInitialMotionX:[F

    iget-object v1, p0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mLastMotionX:[F

    aput p1, v1, p3

    aput p1, v0, p3

    .line 900
    iget-object v0, p0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mInitialMotionY:[F

    iget-object v1, p0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mLastMotionY:[F

    aput p2, v1, p3

    aput p2, v0, p3

    .line 901
    iget-object v0, p0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mInitialEdgesTouched:[I

    float-to-int v1, p1

    float-to-int v2, p2

    invoke-direct {p0, v1, v2}, Lme/imid/swipebacklayout/lib/ViewDragHelper;->getEdgesTouched(II)I

    move-result v1

    aput v1, v0, p3

    .line 902
    iget v0, p0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mPointersDown:I

    const/4 v1, 0x1

    shl-int/2addr v1, p3

    or-int/2addr v0, v1

    iput v0, p0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mPointersDown:I

    .line 903
    return-void
.end method

.method private saveLastMotion(Landroid/view/MotionEvent;)V
    .locals 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 906
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getPointerCount(Landroid/view/MotionEvent;)I

    move-result v1

    .line 907
    .local v1, "pointerCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 914
    return-void

    .line 908
    :cond_0
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v2

    .line 909
    .local v2, "pointerId":I
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v3

    .line 910
    .local v3, "x":F
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v4

    .line 911
    .local v4, "y":F
    iget-object v5, p0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mLastMotionX:[F

    aput v3, v5, v2

    .line 912
    iget-object v5, p0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mLastMotionY:[F

    aput v4, v5, v2

    .line 907
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public abort()V
    .locals 8

    .prologue
    .line 569
    invoke-virtual {p0}, Lme/imid/swipebacklayout/lib/ViewDragHelper;->cancel()V

    .line 570
    iget v0, p0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mDragState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 571
    iget-object v0, p0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/ScrollerCompat;->getCurrX()I

    move-result v6

    .line 572
    .local v6, "oldX":I
    iget-object v0, p0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/ScrollerCompat;->getCurrY()I

    move-result v7

    .line 573
    .local v7, "oldY":I
    iget-object v0, p0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/ScrollerCompat;->abortAnimation()V

    .line 574
    iget-object v0, p0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/ScrollerCompat;->getCurrX()I

    move-result v2

    .line 575
    .local v2, "newX":I
    iget-object v0, p0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/ScrollerCompat;->getCurrY()I

    move-result v3

    .line 576
    .local v3, "newY":I
    iget-object v0, p0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mCallback:Lme/imid/swipebacklayout/lib/ViewDragHelper$Callback;

    iget-object v1, p0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mCapturedView:Landroid/view/View;

    sub-int v4, v2, v6

    sub-int v5, v3, v7

    invoke-virtual/range {v0 .. v5}, Lme/imid/swipebacklayout/lib/ViewDragHelper$Callback;->onViewPositionChanged(Landroid/view/View;IIII)V

    .line 578
    .end local v2    # "newX":I
    .end local v3    # "newY":I
    .end local v6    # "oldX":I
    .end local v7    # "oldY":I
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lme/imid/swipebacklayout/lib/ViewDragHelper;->setDragState(I)V

    .line 579
    return-void
.end method

.method protected canScroll(Landroid/view/View;ZIIII)Z
    .locals 13
    .param p1, "v"    # Landroid/view/View;
    .param p2, "checkV"    # Z
    .param p3, "dx"    # I
    .param p4, "dy"    # I
    .param p5, "x"    # I
    .param p6, "y"    # I

    .prologue
    .line 981
    instance-of v1, p1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    move-object v9, p1

    .line 982
    check-cast v9, Landroid/view/ViewGroup;

    .line 983
    .local v9, "group":Landroid/view/ViewGroup;
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v11

    .line 984
    .local v11, "scrollX":I
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v12

    .line 985
    .local v12, "scrollY":I
    invoke-virtual {v9}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    .line 988
    .local v8, "count":I
    add-int/lit8 v10, v8, -0x1

    .local v10, "i":I
    :goto_0
    if-gez v10, :cond_2

    .line 1003
    .end local v8    # "count":I
    .end local v9    # "group":Landroid/view/ViewGroup;
    .end local v10    # "i":I
    .end local v11    # "scrollX":I
    .end local v12    # "scrollY":I
    :cond_0
    if-eqz p2, :cond_4

    .line 1004
    move/from16 v0, p3

    neg-int v1, v0

    invoke-static {p1, v1}, Landroid/support/v4/view/ViewCompat;->canScrollHorizontally(Landroid/view/View;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1005
    move/from16 v0, p4

    neg-int v1, v0

    .line 1004
    invoke-static {p1, v1}, Landroid/support/v4/view/ViewCompat;->canScrollVertically(Landroid/view/View;I)Z

    move-result v1

    .line 1005
    if-eqz v1, :cond_4

    .line 1003
    :cond_1
    const/4 v1, 0x1

    :goto_1
    return v1

    .line 991
    .restart local v8    # "count":I
    .restart local v9    # "group":Landroid/view/ViewGroup;
    .restart local v10    # "i":I
    .restart local v11    # "scrollX":I
    .restart local v12    # "scrollY":I
    :cond_2
    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 992
    .local v2, "child":Landroid/view/View;
    add-int v1, p5, v11

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v3

    if-lt v1, v3, :cond_3

    .line 993
    add-int v1, p5, v11

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 994
    add-int v1, p6, v12

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    if-lt v1, v3, :cond_3

    .line 995
    add-int v1, p6, v12

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 996
    const/4 v3, 0x1

    add-int v1, p5, v11

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v4

    sub-int v6, v1, v4

    .line 997
    add-int v1, p6, v12

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v4

    sub-int v7, v1, v4

    move-object v1, p0

    move/from16 v4, p3

    move/from16 v5, p4

    .line 996
    invoke-virtual/range {v1 .. v7}, Lme/imid/swipebacklayout/lib/ViewDragHelper;->canScroll(Landroid/view/View;ZIIII)Z

    move-result v1

    .line 997
    if-eqz v1, :cond_3

    .line 998
    const/4 v1, 0x1

    goto :goto_1

    .line 988
    :cond_3
    add-int/lit8 v10, v10, -0x1

    goto :goto_0

    .line 1003
    .end local v2    # "child":Landroid/view/View;
    .end local v8    # "count":I
    .end local v9    # "group":Landroid/view/ViewGroup;
    .end local v10    # "i":I
    .end local v11    # "scrollX":I
    .end local v12    # "scrollY":I
    :cond_4
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public cancel()V
    .locals 1

    .prologue
    .line 555
    const/4 v0, -0x1

    iput v0, p0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mActivePointerId:I

    .line 556
    invoke-direct {p0}, Lme/imid/swipebacklayout/lib/ViewDragHelper;->clearMotionHistory()V

    .line 558
    iget-object v0, p0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 559
    iget-object v0, p0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 560
    const/4 v0, 0x0

    iput-object v0, p0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 562
    :cond_0
    return-void
.end method

.method public captureChildView(Landroid/view/View;I)V
    .locals 3
    .param p1, "childView"    # Landroid/view/View;
    .param p2, "activePointerId"    # I

    .prologue
    .line 514
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    if-eq v0, v1, :cond_0

    .line 515
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "captureChildView: parameter must be a descendant of the ViewDragHelper\'s tracked parent view ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 516
    iget-object v2, p0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 515
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 519
    :cond_0
    iput-object p1, p0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mCapturedView:Landroid/view/View;

    .line 520
    iput p2, p0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mActivePointerId:I

    .line 521
    iget-object v0, p0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mCallback:Lme/imid/swipebacklayout/lib/ViewDragHelper$Callback;

    invoke-virtual {v0, p1, p2}, Lme/imid/swipebacklayout/lib/ViewDragHelper$Callback;->onViewCaptured(Landroid/view/View;I)V

    .line 522
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lme/imid/swipebacklayout/lib/ViewDragHelper;->setDragState(I)V

    .line 523
    return-void
.end method

.method public checkTouchSlop(I)Z
    .locals 3
    .param p1, "directions"    # I

    .prologue
    .line 1366
    iget-object v2, p0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mInitialMotionX:[F

    array-length v0, v2

    .line 1367
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v0, :cond_0

    .line 1372
    const/4 v2, 0x0

    :goto_1
    return v2

    .line 1368
    :cond_0
    invoke-virtual {p0, p1, v1}, Lme/imid/swipebacklayout/lib/ViewDragHelper;->checkTouchSlop(II)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1369
    const/4 v2, 0x1

    goto :goto_1

    .line 1367
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public checkTouchSlop(II)Z
    .locals 9
    .param p1, "directions"    # I
    .param p2, "pointerId"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1394
    invoke-virtual {p0, p2}, Lme/imid/swipebacklayout/lib/ViewDragHelper;->isPointerDown(I)Z

    move-result v6

    if-nez v6, :cond_1

    .line 1411
    :cond_0
    :goto_0
    return v5

    .line 1398
    :cond_1
    and-int/lit8 v6, p1, 0x1

    if-ne v6, v4, :cond_2

    move v0, v4

    .line 1399
    .local v0, "checkHorizontal":Z
    :goto_1
    and-int/lit8 v6, p1, 0x2

    const/4 v7, 0x2

    if-ne v6, v7, :cond_3

    move v1, v4

    .line 1401
    .local v1, "checkVertical":Z
    :goto_2
    iget-object v6, p0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mLastMotionX:[F

    aget v6, v6, p2

    iget-object v7, p0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mInitialMotionX:[F

    aget v7, v7, p2

    sub-float v2, v6, v7

    .line 1402
    .local v2, "dx":F
    iget-object v6, p0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mLastMotionY:[F

    aget v6, v6, p2

    iget-object v7, p0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mInitialMotionY:[F

    aget v7, v7, p2

    sub-float v3, v6, v7

    .line 1404
    .local v3, "dy":F
    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    .line 1405
    mul-float v6, v2, v2

    mul-float v7, v3, v3

    add-float/2addr v6, v7

    iget v7, p0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mTouchSlop:I

    iget v8, p0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mTouchSlop:I

    mul-int/2addr v7, v8

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-lez v6, :cond_0

    move v5, v4

    goto :goto_0

    .end local v0    # "checkHorizontal":Z
    .end local v1    # "checkVertical":Z
    .end local v2    # "dx":F
    .end local v3    # "dy":F
    :cond_2
    move v0, v5

    .line 1398
    goto :goto_1

    .restart local v0    # "checkHorizontal":Z
    :cond_3
    move v1, v5

    .line 1399
    goto :goto_2

    .line 1406
    .restart local v1    # "checkVertical":Z
    .restart local v2    # "dx":F
    .restart local v3    # "dy":F
    :cond_4
    if-eqz v0, :cond_5

    .line 1407
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v7, p0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mTouchSlop:I

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-lez v6, :cond_0

    move v5, v4

    goto :goto_0

    .line 1408
    :cond_5
    if-eqz v1, :cond_0

    .line 1409
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v7, p0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mTouchSlop:I

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-lez v6, :cond_0

    move v5, v4

    goto :goto_0
.end method

.method public continueSettling(Z)Z
    .locals 9
    .param p1, "deferCallbacks"    # Z

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    .line 783
    iget v0, p0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mDragState:I

    if-ne v0, v8, :cond_5

    .line 784
    iget-object v0, p0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/ScrollerCompat;->computeScrollOffset()Z

    move-result v6

    .line 785
    .local v6, "keepGoing":Z
    iget-object v0, p0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/ScrollerCompat;->getCurrX()I

    move-result v2

    .line 786
    .local v2, "x":I
    iget-object v0, p0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/ScrollerCompat;->getCurrY()I

    move-result v3

    .line 787
    .local v3, "y":I
    iget-object v0, p0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    sub-int v4, v2, v0

    .line 788
    .local v4, "dx":I
    iget-object v0, p0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    sub-int v5, v3, v0

    .line 790
    .local v5, "dy":I
    if-eqz v4, :cond_0

    .line 791
    iget-object v0, p0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 793
    :cond_0
    if-eqz v5, :cond_1

    .line 794
    iget-object v0, p0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 797
    :cond_1
    if-nez v4, :cond_2

    if-eqz v5, :cond_3

    .line 798
    :cond_2
    iget-object v0, p0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mCallback:Lme/imid/swipebacklayout/lib/ViewDragHelper$Callback;

    iget-object v1, p0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual/range {v0 .. v5}, Lme/imid/swipebacklayout/lib/ViewDragHelper$Callback;->onViewPositionChanged(Landroid/view/View;IIII)V

    .line 801
    :cond_3
    if-eqz v6, :cond_4

    iget-object v0, p0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/ScrollerCompat;->getFinalX()I

    move-result v0

    if-ne v2, v0, :cond_4

    iget-object v0, p0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/ScrollerCompat;->getFinalY()I

    move-result v0

    if-ne v3, v0, :cond_4

    .line 805
    iget-object v0, p0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/ScrollerCompat;->abortAnimation()V

    .line 806
    iget-object v0, p0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/ScrollerCompat;->isFinished()Z

    move-result v6

    .line 809
    :cond_4
    if-nez v6, :cond_5

    .line 810
    if-eqz p1, :cond_6

    .line 811
    iget-object v0, p0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mSetIdleRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 818
    .end local v2    # "x":I
    .end local v3    # "y":I
    .end local v4    # "dx":I
    .end local v5    # "dy":I
    .end local v6    # "keepGoing":Z
    :cond_5
    :goto_0
    iget v0, p0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mDragState:I

    if-ne v0, v8, :cond_7

    const/4 v0, 0x1

    :goto_1
    return v0

    .line 813
    .restart local v2    # "x":I
    .restart local v3    # "y":I
    .restart local v4    # "dx":I
    .restart local v5    # "dy":I
    .restart local v6    # "keepGoing":Z
    :cond_6
    invoke-virtual {p0, v7}, Lme/imid/swipebacklayout/lib/ViewDragHelper;->setDragState(I)V

    goto :goto_0

    .end local v2    # "x":I
    .end local v3    # "y":I
    .end local v4    # "dx":I
    .end local v5    # "dy":I
    .end local v6    # "keepGoing":Z
    :cond_7
    move v0, v7

    .line 818
    goto :goto_1
.end method

.method public findTopChildUnder(II)Landroid/view/View;
    .locals 5
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 1527
    iget-object v3, p0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 1528
    .local v1, "childCount":I
    add-int/lit8 v2, v1, -0x1

    .local v2, "i":I
    :goto_0
    if-gez v2, :cond_1

    .line 1535
    const/4 v0, 0x0

    :cond_0
    return-object v0

    .line 1529
    :cond_1
    iget-object v3, p0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    iget-object v4, p0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mCallback:Lme/imid/swipebacklayout/lib/ViewDragHelper$Callback;

    invoke-virtual {v4, v2}, Lme/imid/swipebacklayout/lib/ViewDragHelper$Callback;->getOrderedChildIndex(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1530
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v3

    if-lt p1, v3, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v3

    if-ge p1, v3, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    if-lt p2, v3, :cond_2

    .line 1531
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v3

    if-lt p2, v3, :cond_0

    .line 1528
    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_0
.end method

.method public flingCapturedView(IIII)V
    .locals 9
    .param p1, "minLeft"    # I
    .param p2, "minTop"    # I
    .param p3, "maxLeft"    # I
    .param p4, "maxTop"    # I

    .prologue
    .line 758
    iget-boolean v0, p0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mReleaseInProgress:Z

    if-nez v0, :cond_0

    .line 759
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot flingCapturedView outside of a call to Callback#onViewReleased"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 763
    :cond_0
    iget-object v0, p0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    iget-object v1, p0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    iget-object v2, p0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    .line 764
    iget-object v3, p0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v4, p0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mActivePointerId:I

    invoke-static {v3, v4}, Landroid/support/v4/view/VelocityTrackerCompat;->getXVelocity(Landroid/view/VelocityTracker;I)F

    move-result v3

    float-to-int v3, v3

    .line 765
    iget-object v4, p0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v5, p0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mActivePointerId:I

    invoke-static {v4, v5}, Landroid/support/v4/view/VelocityTrackerCompat;->getYVelocity(Landroid/view/VelocityTracker;I)F

    move-result v4

    float-to-int v4, v4

    move v5, p1

    move v6, p3

    move v7, p2

    move v8, p4

    .line 763
    invoke-virtual/range {v0 .. v8}, Landroid/support/v4/widget/ScrollerCompat;->fling(IIIIIIII)V

    .line 768
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lme/imid/swipebacklayout/lib/ViewDragHelper;->setDragState(I)V

    .line 769
    return-void
.end method

.method public getActivePointerId()I
    .locals 1

    .prologue
    .line 538
    iget v0, p0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mActivePointerId:I

    return v0
.end method

.method public getCapturedView()Landroid/view/View;
    .locals 1

    .prologue
    .line 530
    iget-object v0, p0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mCapturedView:Landroid/view/View;

    return-object v0
.end method

.method public getEdgeSize()I
    .locals 1

    .prologue
    .line 489
    iget v0, p0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mEdgeSize:I

    return v0
.end method

.method public getMinVelocity()F
    .locals 1

    .prologue
    .line 448
    iget v0, p0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mMinVelocity:F

    return v0
.end method

.method public getTouchSlop()I
    .locals 1

    .prologue
    .line 546
    iget v0, p0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mTouchSlop:I

    return v0
.end method

.method public getViewDragState()I
    .locals 1

    .prologue
    .line 458
    iget v0, p0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mDragState:I

    return v0
.end method

.method public isCapturedViewUnder(II)Z
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 1495
    iget-object v0, p0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {p0, v0, p1, p2}, Lme/imid/swipebacklayout/lib/ViewDragHelper;->isViewUnder(Landroid/view/View;II)Z

    move-result v0

    return v0
.end method

.method public isEdgeTouched(I)Z
    .locals 3
    .param p1, "edges"    # I

    .prologue
    .line 1426
    iget-object v2, p0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mInitialEdgesTouched:[I

    array-length v0, v2

    .line 1427
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v0, :cond_0

    .line 1432
    const/4 v2, 0x0

    :goto_1
    return v2

    .line 1428
    :cond_0
    invoke-virtual {p0, p1, v1}, Lme/imid/swipebacklayout/lib/ViewDragHelper;->isEdgeTouched(II)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1429
    const/4 v2, 0x1

    goto :goto_1

    .line 1427
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public isEdgeTouched(II)Z
    .locals 1
    .param p1, "edges"    # I
    .param p2, "pointerId"    # I

    .prologue
    .line 1448
    invoke-virtual {p0, p2}, Lme/imid/swipebacklayout/lib/ViewDragHelper;->isPointerDown(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mInitialEdgesTouched:[I

    aget v0, v0, p2

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPointerDown(I)Z
    .locals 3
    .param p1, "pointerId"    # I

    .prologue
    const/4 v0, 0x1

    .line 932
    iget v1, p0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mPointersDown:I

    shl-int v2, v0, p1

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isViewUnder(Landroid/view/View;II)Z
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    const/4 v0, 0x0

    .line 1509
    if-nez p1, :cond_1

    .line 1512
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    if-lt p2, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v1

    if-ge p2, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    if-lt p3, v1, :cond_0

    .line 1513
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v1

    .line 1512
    if-ge p3, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public processTouchEvent(Landroid/view/MotionEvent;)V
    .locals 21
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1127
    invoke-static/range {p1 .. p1}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v3

    .line 1128
    .local v3, "action":I
    invoke-static/range {p1 .. p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v4

    .line 1130
    .local v4, "actionIndex":I
    if-nez v3, :cond_0

    .line 1133
    invoke-virtual/range {p0 .. p0}, Lme/imid/swipebacklayout/lib/ViewDragHelper;->cancel()V

    .line 1136
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v19, v0

    if-nez v19, :cond_1

    .line 1137
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1139
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1141
    packed-switch v3, :pswitch_data_0

    .line 1282
    :cond_2
    :goto_0
    :pswitch_0
    return-void

    .line 1143
    :pswitch_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v17

    .line 1144
    .local v17, "x":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v18

    .line 1145
    .local v18, "y":F
    const/16 v19, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-static {v0, v1}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v15

    .line 1146
    .local v15, "pointerId":I
    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lme/imid/swipebacklayout/lib/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v16

    .line 1148
    .local v16, "toCapture":Landroid/view/View;
    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v1, v2, v15}, Lme/imid/swipebacklayout/lib/ViewDragHelper;->saveInitialMotion(FFI)V

    .line 1154
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v15}, Lme/imid/swipebacklayout/lib/ViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    .line 1156
    move-object/from16 v0, p0

    iget-object v0, v0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mInitialEdgesTouched:[I

    move-object/from16 v19, v0

    aget v7, v19, v15

    .line 1157
    .local v7, "edgesTouched":I
    move-object/from16 v0, p0

    iget v0, v0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mTrackingEdges:I

    move/from16 v19, v0

    and-int v19, v19, v7

    if-eqz v19, :cond_2

    .line 1158
    move-object/from16 v0, p0

    iget-object v0, v0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mCallback:Lme/imid/swipebacklayout/lib/ViewDragHelper$Callback;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mTrackingEdges:I

    move/from16 v20, v0

    and-int v20, v20, v7

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v1, v15}, Lme/imid/swipebacklayout/lib/ViewDragHelper$Callback;->onEdgeTouched(II)V

    goto :goto_0

    .line 1164
    .end local v7    # "edgesTouched":I
    .end local v15    # "pointerId":I
    .end local v16    # "toCapture":Landroid/view/View;
    .end local v17    # "x":F
    .end local v18    # "y":F
    :pswitch_2
    move-object/from16 v0, p1

    invoke-static {v0, v4}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v15

    .line 1165
    .restart local v15    # "pointerId":I
    move-object/from16 v0, p1

    invoke-static {v0, v4}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v17

    .line 1166
    .restart local v17    # "x":F
    move-object/from16 v0, p1

    invoke-static {v0, v4}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v18

    .line 1168
    .restart local v18    # "y":F
    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v1, v2, v15}, Lme/imid/swipebacklayout/lib/ViewDragHelper;->saveInitialMotion(FFI)V

    .line 1171
    move-object/from16 v0, p0

    iget v0, v0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mDragState:I

    move/from16 v19, v0

    if-nez v19, :cond_3

    .line 1175
    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lme/imid/swipebacklayout/lib/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v16

    .line 1176
    .restart local v16    # "toCapture":Landroid/view/View;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v15}, Lme/imid/swipebacklayout/lib/ViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    .line 1178
    move-object/from16 v0, p0

    iget-object v0, v0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mInitialEdgesTouched:[I

    move-object/from16 v19, v0

    aget v7, v19, v15

    .line 1179
    .restart local v7    # "edgesTouched":I
    move-object/from16 v0, p0

    iget v0, v0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mTrackingEdges:I

    move/from16 v19, v0

    and-int v19, v19, v7

    if-eqz v19, :cond_2

    .line 1180
    move-object/from16 v0, p0

    iget-object v0, v0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mCallback:Lme/imid/swipebacklayout/lib/ViewDragHelper$Callback;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mTrackingEdges:I

    move/from16 v20, v0

    and-int v20, v20, v7

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v1, v15}, Lme/imid/swipebacklayout/lib/ViewDragHelper$Callback;->onEdgeTouched(II)V

    goto/16 :goto_0

    .line 1182
    .end local v7    # "edgesTouched":I
    .end local v16    # "toCapture":Landroid/view/View;
    :cond_3
    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lme/imid/swipebacklayout/lib/ViewDragHelper;->isCapturedViewUnder(II)Z

    move-result v19

    if-eqz v19, :cond_2

    .line 1190
    move-object/from16 v0, p0

    iget-object v0, v0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mCapturedView:Landroid/view/View;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v15}, Lme/imid/swipebacklayout/lib/ViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    goto/16 :goto_0

    .line 1196
    .end local v15    # "pointerId":I
    .end local v17    # "x":F
    .end local v18    # "y":F
    :pswitch_3
    move-object/from16 v0, p0

    iget v0, v0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mDragState:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_4

    .line 1197
    move-object/from16 v0, p0

    iget v0, v0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mActivePointerId:I

    move/from16 v19, v0

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-static {v0, v1}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v12

    .line 1198
    .local v12, "index":I
    move-object/from16 v0, p1

    invoke-static {v0, v12}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v17

    .line 1199
    .restart local v17    # "x":F
    move-object/from16 v0, p1

    invoke-static {v0, v12}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v18

    .line 1200
    .restart local v18    # "y":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mLastMotionX:[F

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mActivePointerId:I

    move/from16 v20, v0

    aget v19, v19, v20

    sub-float v19, v17, v19

    move/from16 v0, v19

    float-to-int v10, v0

    .line 1201
    .local v10, "idx":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mLastMotionY:[F

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mActivePointerId:I

    move/from16 v20, v0

    aget v19, v19, v20

    sub-float v19, v18, v19

    move/from16 v0, v19

    float-to-int v11, v0

    .line 1203
    .local v11, "idy":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mCapturedView:Landroid/view/View;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getLeft()I

    move-result v19

    add-int v19, v19, v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mCapturedView:Landroid/view/View;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getTop()I

    move-result v20

    add-int v20, v20, v11

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2, v10, v11}, Lme/imid/swipebacklayout/lib/ViewDragHelper;->dragTo(IIII)V

    .line 1205
    invoke-direct/range {p0 .. p1}, Lme/imid/swipebacklayout/lib/ViewDragHelper;->saveLastMotion(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    .line 1208
    .end local v10    # "idx":I
    .end local v11    # "idy":I
    .end local v12    # "index":I
    .end local v17    # "x":F
    .end local v18    # "y":F
    :cond_4
    invoke-static/range {p1 .. p1}, Landroid/support/v4/view/MotionEventCompat;->getPointerCount(Landroid/view/MotionEvent;)I

    move-result v14

    .line 1209
    .local v14, "pointerCount":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    if-lt v8, v14, :cond_6

    .line 1228
    :cond_5
    invoke-direct/range {p0 .. p1}, Lme/imid/swipebacklayout/lib/ViewDragHelper;->saveLastMotion(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    .line 1210
    :cond_6
    move-object/from16 v0, p1

    invoke-static {v0, v8}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v15

    .line 1211
    .restart local v15    # "pointerId":I
    move-object/from16 v0, p1

    invoke-static {v0, v8}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v17

    .line 1212
    .restart local v17    # "x":F
    move-object/from16 v0, p1

    invoke-static {v0, v8}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v18

    .line 1213
    .restart local v18    # "y":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mInitialMotionX:[F

    move-object/from16 v19, v0

    aget v19, v19, v15

    sub-float v5, v17, v19

    .line 1214
    .local v5, "dx":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mInitialMotionY:[F

    move-object/from16 v19, v0

    aget v19, v19, v15

    sub-float v6, v18, v19

    .line 1216
    .local v6, "dy":F
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6, v15}, Lme/imid/swipebacklayout/lib/ViewDragHelper;->reportNewEdgeDrags(FFI)V

    .line 1217
    move-object/from16 v0, p0

    iget v0, v0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mDragState:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_5

    .line 1222
    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lme/imid/swipebacklayout/lib/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v16

    .line 1223
    .restart local v16    # "toCapture":Landroid/view/View;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v5, v6}, Lme/imid/swipebacklayout/lib/ViewDragHelper;->checkTouchSlop(Landroid/view/View;FF)Z

    move-result v19

    if-eqz v19, :cond_7

    .line 1224
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v15}, Lme/imid/swipebacklayout/lib/ViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    move-result v19

    if-nez v19, :cond_5

    .line 1209
    :cond_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 1234
    .end local v5    # "dx":F
    .end local v6    # "dy":F
    .end local v8    # "i":I
    .end local v14    # "pointerCount":I
    .end local v15    # "pointerId":I
    .end local v16    # "toCapture":Landroid/view/View;
    .end local v17    # "x":F
    .end local v18    # "y":F
    :pswitch_4
    move-object/from16 v0, p1

    invoke-static {v0, v4}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v15

    .line 1235
    .restart local v15    # "pointerId":I
    move-object/from16 v0, p0

    iget v0, v0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mDragState:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_8

    move-object/from16 v0, p0

    iget v0, v0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mActivePointerId:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-ne v15, v0, :cond_8

    .line 1238
    const/4 v13, -0x1

    .line 1239
    .local v13, "newActivePointer":I
    invoke-static/range {p1 .. p1}, Landroid/support/v4/view/MotionEventCompat;->getPointerCount(Landroid/view/MotionEvent;)I

    move-result v14

    .line 1240
    .restart local v14    # "pointerCount":I
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_2
    if-lt v8, v14, :cond_9

    .line 1256
    :goto_3
    const/16 v19, -0x1

    move/from16 v0, v19

    if-ne v13, v0, :cond_8

    .line 1259
    invoke-direct/range {p0 .. p0}, Lme/imid/swipebacklayout/lib/ViewDragHelper;->releaseViewForPointerUp()V

    .line 1262
    .end local v8    # "i":I
    .end local v13    # "newActivePointer":I
    .end local v14    # "pointerCount":I
    :cond_8
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lme/imid/swipebacklayout/lib/ViewDragHelper;->clearMotionHistory(I)V

    goto/16 :goto_0

    .line 1241
    .restart local v8    # "i":I
    .restart local v13    # "newActivePointer":I
    .restart local v14    # "pointerCount":I
    :cond_9
    move-object/from16 v0, p1

    invoke-static {v0, v8}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v9

    .line 1242
    .local v9, "id":I
    move-object/from16 v0, p0

    iget v0, v0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mActivePointerId:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-ne v9, v0, :cond_b

    .line 1240
    :cond_a
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 1247
    :cond_b
    move-object/from16 v0, p1

    invoke-static {v0, v8}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v17

    .line 1248
    .restart local v17    # "x":F
    move-object/from16 v0, p1

    invoke-static {v0, v8}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v18

    .line 1249
    .restart local v18    # "y":F
    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lme/imid/swipebacklayout/lib/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mCapturedView:Landroid/view/View;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_a

    .line 1250
    move-object/from16 v0, p0

    iget-object v0, v0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mCapturedView:Landroid/view/View;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v9}, Lme/imid/swipebacklayout/lib/ViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    move-result v19

    if-eqz v19, :cond_a

    .line 1251
    move-object/from16 v0, p0

    iget v13, v0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mActivePointerId:I

    .line 1252
    goto :goto_3

    .line 1267
    .end local v8    # "i":I
    .end local v9    # "id":I
    .end local v13    # "newActivePointer":I
    .end local v14    # "pointerCount":I
    .end local v15    # "pointerId":I
    .end local v17    # "x":F
    .end local v18    # "y":F
    :pswitch_5
    move-object/from16 v0, p0

    iget v0, v0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mDragState:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_c

    .line 1268
    invoke-direct/range {p0 .. p0}, Lme/imid/swipebacklayout/lib/ViewDragHelper;->releaseViewForPointerUp()V

    .line 1270
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lme/imid/swipebacklayout/lib/ViewDragHelper;->cancel()V

    goto/16 :goto_0

    .line 1275
    :pswitch_6
    move-object/from16 v0, p0

    iget v0, v0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mDragState:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_d

    .line 1276
    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lme/imid/swipebacklayout/lib/ViewDragHelper;->dispatchViewReleased(FF)V

    .line 1278
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lme/imid/swipebacklayout/lib/ViewDragHelper;->cancel()V

    goto/16 :goto_0

    .line 1141
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_3
        :pswitch_6
        :pswitch_0
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method setDragState(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 936
    iget v0, p0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mDragState:I

    if-eq v0, p1, :cond_0

    .line 937
    iput p1, p0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mDragState:I

    .line 938
    iget-object v0, p0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mCallback:Lme/imid/swipebacklayout/lib/ViewDragHelper$Callback;

    invoke-virtual {v0, p1}, Lme/imid/swipebacklayout/lib/ViewDragHelper$Callback;->onViewDragStateChanged(I)V

    .line 939
    if-nez p1, :cond_0

    .line 940
    const/4 v0, 0x0

    iput-object v0, p0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mCapturedView:Landroid/view/View;

    .line 943
    :cond_0
    return-void
.end method

.method public setEdgeSize(I)V
    .locals 0
    .param p1, "size"    # I

    .prologue
    .line 500
    iput p1, p0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mEdgeSize:I

    .line 501
    return-void
.end method

.method public setEdgeTrackingEnabled(I)V
    .locals 0
    .param p1, "edgeFlags"    # I

    .prologue
    .line 477
    iput p1, p0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mTrackingEdges:I

    .line 478
    return-void
.end method

.method public setMinVelocity(F)V
    .locals 0
    .param p1, "minVel"    # F

    .prologue
    .line 436
    iput p1, p0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mMinVelocity:F

    .line 437
    return-void
.end method

.method public settleCapturedViewAt(II)Z
    .locals 3
    .param p1, "finalLeft"    # I
    .param p2, "finalTop"    # I

    .prologue
    .line 620
    iget-boolean v0, p0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mReleaseInProgress:Z

    if-nez v0, :cond_0

    .line 621
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot settleCapturedViewAt outside of a call to Callback#onViewReleased"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 626
    :cond_0
    iget-object v0, p0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v1, p0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mActivePointerId:I

    invoke-static {v0, v1}, Landroid/support/v4/view/VelocityTrackerCompat;->getXVelocity(Landroid/view/VelocityTracker;I)F

    move-result v0

    float-to-int v0, v0

    .line 627
    iget-object v1, p0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v2, p0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mActivePointerId:I

    invoke-static {v1, v2}, Landroid/support/v4/view/VelocityTrackerCompat;->getYVelocity(Landroid/view/VelocityTracker;I)F

    move-result v1

    float-to-int v1, v1

    .line 625
    invoke-direct {p0, p1, p2, v0, v1}, Lme/imid/swipebacklayout/lib/ViewDragHelper;->forceSettleCapturedViewAt(IIII)Z

    move-result v0

    return v0
.end method

.method public shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1018
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v0

    .line 1019
    .local v0, "action":I
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v1

    .line 1021
    .local v1, "actionIndex":I
    if-nez v0, :cond_0

    .line 1024
    invoke-virtual {p0}, Lme/imid/swipebacklayout/lib/ViewDragHelper;->cancel()V

    .line 1027
    :cond_0
    iget-object v11, p0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v11, :cond_1

    .line 1028
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v11

    iput-object v11, p0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1030
    :cond_1
    iget-object v11, p0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v11, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1032
    packed-switch v0, :pswitch_data_0

    .line 1116
    :cond_2
    :goto_0
    :pswitch_0
    iget v11, p0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mDragState:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_8

    const/4 v11, 0x1

    :goto_1
    return v11

    .line 1034
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    .line 1035
    .local v9, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    .line 1036
    .local v10, "y":F
    const/4 v11, 0x0

    invoke-static {p1, v11}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v7

    .line 1037
    .local v7, "pointerId":I
    invoke-direct {p0, v9, v10, v7}, Lme/imid/swipebacklayout/lib/ViewDragHelper;->saveInitialMotion(FFI)V

    .line 1039
    float-to-int v11, v9

    float-to-int v12, v10

    invoke-virtual {p0, v11, v12}, Lme/imid/swipebacklayout/lib/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v8

    .line 1042
    .local v8, "toCapture":Landroid/view/View;
    iget-object v11, p0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mCapturedView:Landroid/view/View;

    if-ne v8, v11, :cond_3

    iget v11, p0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mDragState:I

    const/4 v12, 0x2

    if-ne v11, v12, :cond_3

    .line 1043
    invoke-virtual {p0, v8, v7}, Lme/imid/swipebacklayout/lib/ViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    .line 1046
    :cond_3
    iget-object v11, p0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mInitialEdgesTouched:[I

    aget v4, v11, v7

    .line 1047
    .local v4, "edgesTouched":I
    iget v11, p0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mTrackingEdges:I

    and-int/2addr v11, v4

    if-eqz v11, :cond_2

    .line 1048
    iget-object v11, p0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mCallback:Lme/imid/swipebacklayout/lib/ViewDragHelper$Callback;

    iget v12, p0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mTrackingEdges:I

    and-int/2addr v12, v4

    invoke-virtual {v11, v12, v7}, Lme/imid/swipebacklayout/lib/ViewDragHelper$Callback;->onEdgeTouched(II)V

    goto :goto_0

    .line 1054
    .end local v4    # "edgesTouched":I
    .end local v7    # "pointerId":I
    .end local v8    # "toCapture":Landroid/view/View;
    .end local v9    # "x":F
    .end local v10    # "y":F
    :pswitch_2
    invoke-static {p1, v1}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v7

    .line 1055
    .restart local v7    # "pointerId":I
    invoke-static {p1, v1}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v9

    .line 1056
    .restart local v9    # "x":F
    invoke-static {p1, v1}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v10

    .line 1058
    .restart local v10    # "y":F
    invoke-direct {p0, v9, v10, v7}, Lme/imid/swipebacklayout/lib/ViewDragHelper;->saveInitialMotion(FFI)V

    .line 1061
    iget v11, p0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mDragState:I

    if-nez v11, :cond_4

    .line 1062
    iget-object v11, p0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mInitialEdgesTouched:[I

    aget v4, v11, v7

    .line 1063
    .restart local v4    # "edgesTouched":I
    iget v11, p0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mTrackingEdges:I

    and-int/2addr v11, v4

    if-eqz v11, :cond_2

    .line 1064
    iget-object v11, p0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mCallback:Lme/imid/swipebacklayout/lib/ViewDragHelper$Callback;

    iget v12, p0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mTrackingEdges:I

    and-int/2addr v12, v4

    invoke-virtual {v11, v12, v7}, Lme/imid/swipebacklayout/lib/ViewDragHelper$Callback;->onEdgeTouched(II)V

    goto :goto_0

    .line 1066
    .end local v4    # "edgesTouched":I
    :cond_4
    iget v11, p0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mDragState:I

    const/4 v12, 0x2

    if-ne v11, v12, :cond_2

    .line 1068
    float-to-int v11, v9

    float-to-int v12, v10

    invoke-virtual {p0, v11, v12}, Lme/imid/swipebacklayout/lib/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v8

    .line 1069
    .restart local v8    # "toCapture":Landroid/view/View;
    iget-object v11, p0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mCapturedView:Landroid/view/View;

    if-ne v8, v11, :cond_2

    .line 1070
    invoke-virtual {p0, v8, v7}, Lme/imid/swipebacklayout/lib/ViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    goto :goto_0

    .line 1079
    .end local v7    # "pointerId":I
    .end local v8    # "toCapture":Landroid/view/View;
    .end local v9    # "x":F
    .end local v10    # "y":F
    :pswitch_3
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getPointerCount(Landroid/view/MotionEvent;)I

    move-result v6

    .line 1080
    .local v6, "pointerCount":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    if-lt v5, v6, :cond_6

    .line 1099
    :cond_5
    invoke-direct {p0, p1}, Lme/imid/swipebacklayout/lib/ViewDragHelper;->saveLastMotion(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 1081
    :cond_6
    invoke-static {p1, v5}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v7

    .line 1082
    .restart local v7    # "pointerId":I
    invoke-static {p1, v5}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v9

    .line 1083
    .restart local v9    # "x":F
    invoke-static {p1, v5}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v10

    .line 1084
    .restart local v10    # "y":F
    iget-object v11, p0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mInitialMotionX:[F

    aget v11, v11, v7

    sub-float v2, v9, v11

    .line 1085
    .local v2, "dx":F
    iget-object v11, p0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mInitialMotionY:[F

    aget v11, v11, v7

    sub-float v3, v10, v11

    .line 1087
    .local v3, "dy":F
    invoke-direct {p0, v2, v3, v7}, Lme/imid/swipebacklayout/lib/ViewDragHelper;->reportNewEdgeDrags(FFI)V

    .line 1088
    iget v11, p0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mDragState:I

    const/4 v12, 0x1

    if-eq v11, v12, :cond_5

    .line 1093
    float-to-int v11, v9

    float-to-int v12, v10

    invoke-virtual {p0, v11, v12}, Lme/imid/swipebacklayout/lib/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v8

    .line 1094
    .restart local v8    # "toCapture":Landroid/view/View;
    if-eqz v8, :cond_7

    invoke-direct {p0, v8, v2, v3}, Lme/imid/swipebacklayout/lib/ViewDragHelper;->checkTouchSlop(Landroid/view/View;FF)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 1095
    invoke-virtual {p0, v8, v7}, Lme/imid/swipebacklayout/lib/ViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    move-result v11

    if-nez v11, :cond_5

    .line 1080
    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 1104
    .end local v2    # "dx":F
    .end local v3    # "dy":F
    .end local v5    # "i":I
    .end local v6    # "pointerCount":I
    .end local v7    # "pointerId":I
    .end local v8    # "toCapture":Landroid/view/View;
    .end local v9    # "x":F
    .end local v10    # "y":F
    :pswitch_4
    invoke-static {p1, v1}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v7

    .line 1105
    .restart local v7    # "pointerId":I
    invoke-direct {p0, v7}, Lme/imid/swipebacklayout/lib/ViewDragHelper;->clearMotionHistory(I)V

    goto/16 :goto_0

    .line 1111
    .end local v7    # "pointerId":I
    :pswitch_5
    invoke-virtual {p0}, Lme/imid/swipebacklayout/lib/ViewDragHelper;->cancel()V

    goto/16 :goto_0

    .line 1116
    :cond_8
    const/4 v11, 0x0

    goto/16 :goto_1

    .line 1032
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_3
        :pswitch_5
        :pswitch_0
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method public smoothSlideViewTo(Landroid/view/View;II)Z
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "finalLeft"    # I
    .param p3, "finalTop"    # I

    .prologue
    const/4 v1, 0x0

    .line 600
    iput-object p1, p0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mCapturedView:Landroid/view/View;

    .line 601
    const/4 v0, -0x1

    iput v0, p0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mActivePointerId:I

    .line 603
    invoke-direct {p0, p2, p3, v1, v1}, Lme/imid/swipebacklayout/lib/ViewDragHelper;->forceSettleCapturedViewAt(IIII)Z

    move-result v0

    return v0
.end method

.method tryCaptureViewForDrag(Landroid/view/View;I)Z
    .locals 2
    .param p1, "toCapture"    # Landroid/view/View;
    .param p2, "pointerId"    # I

    .prologue
    const/4 v0, 0x1

    .line 956
    iget-object v1, p0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mCapturedView:Landroid/view/View;

    if-ne p1, v1, :cond_0

    iget v1, p0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mActivePointerId:I

    if-ne v1, p2, :cond_0

    .line 965
    :goto_0
    return v0

    .line 960
    :cond_0
    if-eqz p1, :cond_1

    iget-object v1, p0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mCallback:Lme/imid/swipebacklayout/lib/ViewDragHelper$Callback;

    invoke-virtual {v1, p1, p2}, Lme/imid/swipebacklayout/lib/ViewDragHelper$Callback;->tryCaptureView(Landroid/view/View;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 961
    iput p2, p0, Lme/imid/swipebacklayout/lib/ViewDragHelper;->mActivePointerId:I

    .line 962
    invoke-virtual {p0, p1, p2}, Lme/imid/swipebacklayout/lib/ViewDragHelper;->captureChildView(Landroid/view/View;I)V

    goto :goto_0

    .line 965
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
