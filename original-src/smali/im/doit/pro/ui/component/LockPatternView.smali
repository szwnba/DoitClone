.class public Lim/doit/pro/ui/component/LockPatternView;
.super Lim/doit/pro/ui/component/chart/BaseView;
.source "LockPatternView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lim/doit/pro/ui/component/LockPatternView$Cell;,
        Lim/doit/pro/ui/component/LockPatternView$DisplayMode;,
        Lim/doit/pro/ui/component/LockPatternView$OnPatternListener;,
        Lim/doit/pro/ui/component/LockPatternView$SavedState;
    }
.end annotation


# instance fields
.field private final DRAG_THRESHHOLD:F

.field private final MILLIS_PER_CIRCLE_ANIMATING:I

.field private final PROFILE_DRAWING:Z

.field private mAnimatingPeriodStart:J

.field private mBitmapBtnDefault:Landroid/graphics/Bitmap;

.field private mBitmapBtnTouched:Landroid/graphics/Bitmap;

.field private mBitmapCircleDefault:Landroid/graphics/Bitmap;

.field private mBitmapCircleGreen:Landroid/graphics/Bitmap;

.field private mBitmapCircleRed:Landroid/graphics/Bitmap;

.field private mBitmapHeight:I

.field private mBitmapWidth:I

.field private final mCircleMatrix:Landroid/graphics/Matrix;

.field private final mCurrentPath:Landroid/graphics/Path;

.field private mDiameterFactor:F

.field private mDrawingProfilingStarted:Z

.field private mEnableHapticFeedback:Z

.field private mHitFactor:F

.field private mInProgressX:F

.field private mInProgressY:F

.field private mInStealthMode:Z

.field private mInputEnabled:Z

.field private final mInvalidate:Landroid/graphics/Rect;

.field private mLockLineColor:I

.field private mLockLineStrokeAlpha:I

.field private mOnPatternListener:Lim/doit/pro/ui/component/LockPatternView$OnPatternListener;

.field private mPaint:Landroid/graphics/Paint;

.field private mPathPaint:Landroid/graphics/Paint;

.field private mPattern:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lim/doit/pro/ui/component/LockPatternView$Cell;",
            ">;"
        }
    .end annotation
.end field

.field private mPatternDisplayMode:Lim/doit/pro/ui/component/LockPatternView$DisplayMode;

.field private mPatternDrawLookup:[[Z

.field private mPatternInProgress:Z

.field private mSquareHeight:F

.field private mSquareMargin:F

.field private mSquareWidth:F

.field private final mTmpInvalidateRect:Landroid/graphics/Rect;

.field private mViewWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 243
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lim/doit/pro/ui/component/LockPatternView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 244
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 247
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lim/doit/pro/ui/component/LockPatternView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 248
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v4, 0x3

    const/high16 v3, -0x40800000    # -1.0f

    const/4 v2, 0x0

    .line 251
    invoke-direct {p0, p1, p2, p3}, Lim/doit/pro/ui/component/chart/BaseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    iput-boolean v2, p0, Lim/doit/pro/ui/component/LockPatternView;->PROFILE_DRAWING:Z

    .line 54
    iput-boolean v2, p0, Lim/doit/pro/ui/component/LockPatternView;->mDrawingProfilingStarted:Z

    .line 64
    const/16 v0, 0x2bc

    iput v0, p0, Lim/doit/pro/ui/component/LockPatternView;->MILLIS_PER_CIRCLE_ANIMATING:I

    .line 71
    const/4 v0, 0x0

    iput v0, p0, Lim/doit/pro/ui/component/LockPatternView;->DRAG_THRESHHOLD:F

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lim/doit/pro/ui/component/LockPatternView;->mPattern:Ljava/util/ArrayList;

    .line 82
    filled-new-array {v4, v4}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    iput-object v0, p0, Lim/doit/pro/ui/component/LockPatternView;->mPatternDrawLookup:[[Z

    .line 88
    iput v3, p0, Lim/doit/pro/ui/component/LockPatternView;->mInProgressX:F

    .line 89
    iput v3, p0, Lim/doit/pro/ui/component/LockPatternView;->mInProgressY:F

    .line 93
    sget-object v0, Lim/doit/pro/ui/component/LockPatternView$DisplayMode;->Correct:Lim/doit/pro/ui/component/LockPatternView$DisplayMode;

    iput-object v0, p0, Lim/doit/pro/ui/component/LockPatternView;->mPatternDisplayMode:Lim/doit/pro/ui/component/LockPatternView$DisplayMode;

    .line 94
    const/4 v0, 0x1

    iput-boolean v0, p0, Lim/doit/pro/ui/component/LockPatternView;->mInputEnabled:Z

    .line 95
    iput-boolean v2, p0, Lim/doit/pro/ui/component/LockPatternView;->mInStealthMode:Z

    .line 96
    iput-boolean v2, p0, Lim/doit/pro/ui/component/LockPatternView;->mEnableHapticFeedback:Z

    .line 97
    iput-boolean v2, p0, Lim/doit/pro/ui/component/LockPatternView;->mPatternInProgress:Z

    .line 99
    const v0, 0x3dcccccd    # 0.1f

    iput v0, p0, Lim/doit/pro/ui/component/LockPatternView;->mDiameterFactor:F

    .line 100
    const v0, 0x3f19999a    # 0.6f

    iput v0, p0, Lim/doit/pro/ui/component/LockPatternView;->mHitFactor:F

    .line 112
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lim/doit/pro/ui/component/LockPatternView;->mCurrentPath:Landroid/graphics/Path;

    .line 113
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lim/doit/pro/ui/component/LockPatternView;->mInvalidate:Landroid/graphics/Rect;

    .line 114
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lim/doit/pro/ui/component/LockPatternView;->mTmpInvalidateRect:Landroid/graphics/Rect;

    .line 121
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lim/doit/pro/ui/component/LockPatternView;->mCircleMatrix:Landroid/graphics/Matrix;

    .line 252
    return-void
.end method

.method private addCellToPattern(Lim/doit/pro/ui/component/LockPatternView$Cell;)V
    .locals 3
    .param p1, "newCell"    # Lim/doit/pro/ui/component/LockPatternView$Cell;

    .prologue
    .line 538
    iget-object v0, p0, Lim/doit/pro/ui/component/LockPatternView;->mPatternDrawLookup:[[Z

    invoke-virtual {p1}, Lim/doit/pro/ui/component/LockPatternView$Cell;->getRow()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {p1}, Lim/doit/pro/ui/component/LockPatternView$Cell;->getColumn()I

    move-result v1

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 539
    iget-object v0, p0, Lim/doit/pro/ui/component/LockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 540
    invoke-direct {p0}, Lim/doit/pro/ui/component/LockPatternView;->notifyCellAdded()V

    .line 541
    return-void
.end method

.method private checkForNewHit(FF)Lim/doit/pro/ui/component/LockPatternView$Cell;
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v2, 0x0

    .line 546
    invoke-direct {p0, p2}, Lim/doit/pro/ui/component/LockPatternView;->getRowHit(F)I

    move-result v1

    .line 547
    .local v1, "rowHit":I
    if-gez v1, :cond_1

    .line 558
    :cond_0
    :goto_0
    return-object v2

    .line 550
    :cond_1
    invoke-direct {p0, p1}, Lim/doit/pro/ui/component/LockPatternView;->getColumnHit(F)I

    move-result v0

    .line 551
    .local v0, "columnHit":I
    if-ltz v0, :cond_0

    .line 555
    iget-object v3, p0, Lim/doit/pro/ui/component/LockPatternView;->mPatternDrawLookup:[[Z

    aget-object v3, v3, v1

    aget-boolean v3, v3, v0

    if-nez v3, :cond_0

    .line 558
    invoke-static {v1, v0}, Lim/doit/pro/ui/component/LockPatternView$Cell;->of(II)Lim/doit/pro/ui/component/LockPatternView$Cell;

    move-result-object v2

    goto :goto_0
.end method

.method private clearPatternDrawLookup()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    .line 451
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v4, :cond_0

    .line 456
    return-void

    .line 452
    :cond_0
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    if-lt v1, v4, :cond_1

    .line 451
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 453
    :cond_1
    iget-object v2, p0, Lim/doit/pro/ui/component/LockPatternView;->mPatternDrawLookup:[[Z

    aget-object v2, v2, v0

    const/4 v3, 0x0

    aput-boolean v3, v2, v1

    .line 452
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private detectAndAddHit(FF)Lim/doit/pro/ui/component/LockPatternView$Cell;
    .locals 13
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v12, 0x2

    const/4 v10, -0x1

    const/4 v9, 0x1

    .line 496
    invoke-direct {p0, p1, p2}, Lim/doit/pro/ui/component/LockPatternView;->checkForNewHit(FF)Lim/doit/pro/ui/component/LockPatternView$Cell;

    move-result-object v0

    .line 497
    .local v0, "cell":Lim/doit/pro/ui/component/LockPatternView$Cell;
    if-eqz v0, :cond_7

    .line 500
    const/4 v4, 0x0

    .line 501
    .local v4, "fillInGapCell":Lim/doit/pro/ui/component/LockPatternView$Cell;
    iget-object v7, p0, Lim/doit/pro/ui/component/LockPatternView;->mPattern:Ljava/util/ArrayList;

    .line 502
    .local v7, "pattern":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/ui/component/LockPatternView$Cell;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_3

    .line 503
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lim/doit/pro/ui/component/LockPatternView$Cell;

    .line 504
    .local v6, "lastCell":Lim/doit/pro/ui/component/LockPatternView$Cell;
    iget v8, v0, Lim/doit/pro/ui/component/LockPatternView$Cell;->row:I

    iget v11, v6, Lim/doit/pro/ui/component/LockPatternView$Cell;->row:I

    sub-int v2, v8, v11

    .line 505
    .local v2, "dRow":I
    iget v8, v0, Lim/doit/pro/ui/component/LockPatternView$Cell;->column:I

    iget v11, v6, Lim/doit/pro/ui/component/LockPatternView$Cell;->column:I

    sub-int v1, v8, v11

    .line 507
    .local v1, "dColumn":I
    iget v5, v6, Lim/doit/pro/ui/component/LockPatternView$Cell;->row:I

    .line 508
    .local v5, "fillInRow":I
    iget v3, v6, Lim/doit/pro/ui/component/LockPatternView$Cell;->column:I

    .line 510
    .local v3, "fillInColumn":I
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v8

    if-ne v8, v12, :cond_0

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v8

    if-eq v8, v9, :cond_0

    .line 511
    iget v11, v6, Lim/doit/pro/ui/component/LockPatternView$Cell;->row:I

    if-lez v2, :cond_6

    move v8, v9

    :goto_0
    add-int v5, v11, v8

    .line 514
    :cond_0
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v8

    if-ne v8, v12, :cond_2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v8

    if-eq v8, v9, :cond_2

    .line 515
    iget v8, v6, Lim/doit/pro/ui/component/LockPatternView$Cell;->column:I

    if-lez v1, :cond_1

    move v10, v9

    :cond_1
    add-int v3, v8, v10

    .line 518
    :cond_2
    invoke-static {v5, v3}, Lim/doit/pro/ui/component/LockPatternView$Cell;->of(II)Lim/doit/pro/ui/component/LockPatternView$Cell;

    move-result-object v4

    .line 521
    .end local v1    # "dColumn":I
    .end local v2    # "dRow":I
    .end local v3    # "fillInColumn":I
    .end local v5    # "fillInRow":I
    .end local v6    # "lastCell":Lim/doit/pro/ui/component/LockPatternView$Cell;
    :cond_3
    if-eqz v4, :cond_4

    .line 522
    iget-object v8, p0, Lim/doit/pro/ui/component/LockPatternView;->mPatternDrawLookup:[[Z

    iget v10, v4, Lim/doit/pro/ui/component/LockPatternView$Cell;->row:I

    aget-object v8, v8, v10

    iget v10, v4, Lim/doit/pro/ui/component/LockPatternView$Cell;->column:I

    aget-boolean v8, v8, v10

    if-nez v8, :cond_4

    .line 523
    invoke-direct {p0, v4}, Lim/doit/pro/ui/component/LockPatternView;->addCellToPattern(Lim/doit/pro/ui/component/LockPatternView$Cell;)V

    .line 525
    :cond_4
    invoke-direct {p0, v0}, Lim/doit/pro/ui/component/LockPatternView;->addCellToPattern(Lim/doit/pro/ui/component/LockPatternView$Cell;)V

    .line 526
    iget-boolean v8, p0, Lim/doit/pro/ui/component/LockPatternView;->mEnableHapticFeedback:Z

    if-eqz v8, :cond_5

    .line 529
    const/4 v8, 0x3

    .line 527
    invoke-virtual {p0, v9, v8}, Lim/doit/pro/ui/component/LockPatternView;->performHapticFeedback(II)Z

    .line 534
    .end local v0    # "cell":Lim/doit/pro/ui/component/LockPatternView$Cell;
    .end local v4    # "fillInGapCell":Lim/doit/pro/ui/component/LockPatternView$Cell;
    .end local v7    # "pattern":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/ui/component/LockPatternView$Cell;>;"
    :cond_5
    :goto_1
    return-object v0

    .restart local v0    # "cell":Lim/doit/pro/ui/component/LockPatternView$Cell;
    .restart local v1    # "dColumn":I
    .restart local v2    # "dRow":I
    .restart local v3    # "fillInColumn":I
    .restart local v4    # "fillInGapCell":Lim/doit/pro/ui/component/LockPatternView$Cell;
    .restart local v5    # "fillInRow":I
    .restart local v6    # "lastCell":Lim/doit/pro/ui/component/LockPatternView$Cell;
    .restart local v7    # "pattern":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/ui/component/LockPatternView$Cell;>;"
    :cond_6
    move v8, v10

    .line 511
    goto :goto_0

    .line 534
    .end local v1    # "dColumn":I
    .end local v2    # "dRow":I
    .end local v3    # "fillInColumn":I
    .end local v4    # "fillInGapCell":Lim/doit/pro/ui/component/LockPatternView$Cell;
    .end local v5    # "fillInRow":I
    .end local v6    # "lastCell":Lim/doit/pro/ui/component/LockPatternView$Cell;
    .end local v7    # "pattern":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/ui/component/LockPatternView$Cell;>;"
    :cond_7
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private drawAnimateDisplayMode()V
    .locals 22

    .prologue
    .line 833
    move-object/from16 v0, p0

    iget-object v15, v0, Lim/doit/pro/ui/component/LockPatternView;->mPattern:Ljava/util/ArrayList;

    .line 834
    .local v15, "pattern":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/ui/component/LockPatternView$Cell;>;"
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 835
    .local v5, "count":I
    move-object/from16 v0, p0

    iget-object v7, v0, Lim/doit/pro/ui/component/LockPatternView;->mPatternDrawLookup:[[Z

    .line 840
    .local v7, "drawLookup":[[Z
    add-int/lit8 v18, v5, 0x1

    move/from16 v0, v18

    mul-int/lit16 v14, v0, 0x2bc

    .line 841
    .local v14, "oneCycle":I
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v18

    move-object/from16 v0, p0

    iget-wide v0, v0, Lim/doit/pro/ui/component/LockPatternView;->mAnimatingPeriodStart:J

    move-wide/from16 v20, v0

    sub-long v18, v18, v20

    move-wide/from16 v0, v18

    long-to-int v0, v0

    move/from16 v18, v0

    rem-int v17, v18, v14

    .line 843
    .local v17, "spotInCycle":I
    move/from16 v0, v17

    div-int/lit16 v13, v0, 0x2bc

    .line 845
    .local v13, "numCircles":I
    invoke-direct/range {p0 .. p0}, Lim/doit/pro/ui/component/LockPatternView;->clearPatternDrawLookup()V

    .line 846
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    if-lt v10, v13, :cond_1

    .line 852
    if-lez v13, :cond_2

    if-ge v13, v5, :cond_2

    const/4 v11, 0x1

    .line 855
    .local v11, "needToUpdateInProgressPoint":Z
    :goto_1
    if-eqz v11, :cond_0

    .line 856
    move/from16 v0, v17

    rem-int/lit16 v0, v0, 0x2bc

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    .line 857
    const/high16 v19, 0x442f0000    # 700.0f

    .line 856
    div-float v16, v18, v19

    .line 859
    .local v16, "percentageOfNextCircle":F
    add-int/lit8 v18, v13, -0x1

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lim/doit/pro/ui/component/LockPatternView$Cell;

    .line 860
    .local v6, "currentCell":Lim/doit/pro/ui/component/LockPatternView$Cell;
    iget v0, v6, Lim/doit/pro/ui/component/LockPatternView$Cell;->column:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lim/doit/pro/ui/component/LockPatternView;->getCenterXForColumn(I)F

    move-result v3

    .line 861
    .local v3, "centerX":F
    iget v0, v6, Lim/doit/pro/ui/component/LockPatternView$Cell;->row:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lim/doit/pro/ui/component/LockPatternView;->getCenterYForRow(I)F

    move-result v4

    .line 863
    .local v4, "centerY":F
    invoke-virtual {v15, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lim/doit/pro/ui/component/LockPatternView$Cell;

    .line 865
    .local v12, "nextCell":Lim/doit/pro/ui/component/LockPatternView$Cell;
    iget v0, v12, Lim/doit/pro/ui/component/LockPatternView$Cell;->column:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lim/doit/pro/ui/component/LockPatternView;->getCenterXForColumn(I)F

    move-result v18

    sub-float v18, v18, v3

    .line 864
    mul-float v8, v16, v18

    .line 867
    .local v8, "dx":F
    iget v0, v12, Lim/doit/pro/ui/component/LockPatternView$Cell;->row:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lim/doit/pro/ui/component/LockPatternView;->getCenterYForRow(I)F

    move-result v18

    sub-float v18, v18, v4

    .line 866
    mul-float v9, v16, v18

    .line 868
    .local v9, "dy":F
    add-float v18, v3, v8

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lim/doit/pro/ui/component/LockPatternView;->mInProgressX:F

    .line 869
    add-float v18, v4, v9

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lim/doit/pro/ui/component/LockPatternView;->mInProgressY:F

    .line 872
    .end local v3    # "centerX":F
    .end local v4    # "centerY":F
    .end local v6    # "currentCell":Lim/doit/pro/ui/component/LockPatternView$Cell;
    .end local v8    # "dx":F
    .end local v9    # "dy":F
    .end local v12    # "nextCell":Lim/doit/pro/ui/component/LockPatternView$Cell;
    .end local v16    # "percentageOfNextCircle":F
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lim/doit/pro/ui/component/LockPatternView;->invalidate()V

    .line 873
    return-void

    .line 847
    .end local v11    # "needToUpdateInProgressPoint":Z
    :cond_1
    invoke-virtual {v15, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lim/doit/pro/ui/component/LockPatternView$Cell;

    .line 848
    .local v2, "cell":Lim/doit/pro/ui/component/LockPatternView$Cell;
    invoke-virtual {v2}, Lim/doit/pro/ui/component/LockPatternView$Cell;->getRow()I

    move-result v18

    aget-object v18, v7, v18

    invoke-virtual {v2}, Lim/doit/pro/ui/component/LockPatternView$Cell;->getColumn()I

    move-result v19

    const/16 v20, 0x1

    aput-boolean v20, v18, v19

    .line 846
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    .line 852
    .end local v2    # "cell":Lim/doit/pro/ui/component/LockPatternView$Cell;
    :cond_2
    const/4 v11, 0x0

    goto/16 :goto_1
.end method

.method private drawCircle(Landroid/graphics/Canvas;IIZ)V
    .locals 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "leftX"    # I
    .param p3, "topY"    # I
    .param p4, "partOfPattern"    # Z

    .prologue
    .line 928
    if-eqz p4, :cond_0

    .line 929
    iget-boolean v10, p0, Lim/doit/pro/ui/component/LockPatternView;->mInStealthMode:Z

    if-eqz v10, :cond_1

    iget-object v10, p0, Lim/doit/pro/ui/component/LockPatternView;->mPatternDisplayMode:Lim/doit/pro/ui/component/LockPatternView$DisplayMode;

    sget-object v11, Lim/doit/pro/ui/component/LockPatternView$DisplayMode;->Wrong:Lim/doit/pro/ui/component/LockPatternView$DisplayMode;

    if-eq v10, v11, :cond_1

    .line 931
    :cond_0
    iget-object v4, p0, Lim/doit/pro/ui/component/LockPatternView;->mBitmapCircleDefault:Landroid/graphics/Bitmap;

    .line 932
    .local v4, "outerCircle":Landroid/graphics/Bitmap;
    iget-object v1, p0, Lim/doit/pro/ui/component/LockPatternView;->mBitmapBtnDefault:Landroid/graphics/Bitmap;

    .line 951
    .local v1, "innerCircle":Landroid/graphics/Bitmap;
    :goto_0
    iget v9, p0, Lim/doit/pro/ui/component/LockPatternView;->mBitmapWidth:I

    .line 952
    .local v9, "width":I
    iget v0, p0, Lim/doit/pro/ui/component/LockPatternView;->mBitmapHeight:I

    .line 954
    .local v0, "height":I
    iget v6, p0, Lim/doit/pro/ui/component/LockPatternView;->mSquareWidth:F

    .line 955
    .local v6, "squareWidth":F
    iget v5, p0, Lim/doit/pro/ui/component/LockPatternView;->mSquareHeight:F

    .line 957
    .local v5, "squareHeight":F
    int-to-float v10, v9

    sub-float v10, v6, v10

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    float-to-int v2, v10

    .line 958
    .local v2, "offsetX":I
    int-to-float v10, v0

    sub-float v10, v5, v10

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    float-to-int v3, v10

    .line 961
    .local v3, "offsetY":I
    iget v10, p0, Lim/doit/pro/ui/component/LockPatternView;->mSquareWidth:F

    iget v11, p0, Lim/doit/pro/ui/component/LockPatternView;->mBitmapWidth:I

    int-to-float v11, v11

    div-float/2addr v10, v11

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-static {v10, v11}, Ljava/lang/Math;->min(FF)F

    move-result v7

    .line 962
    .local v7, "sx":F
    iget v10, p0, Lim/doit/pro/ui/component/LockPatternView;->mSquareHeight:F

    iget v11, p0, Lim/doit/pro/ui/component/LockPatternView;->mBitmapHeight:I

    int-to-float v11, v11

    div-float/2addr v10, v11

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-static {v10, v11}, Ljava/lang/Math;->min(FF)F

    move-result v8

    .line 964
    .local v8, "sy":F
    iget-object v10, p0, Lim/doit/pro/ui/component/LockPatternView;->mCircleMatrix:Landroid/graphics/Matrix;

    add-int v11, p2, v2

    int-to-float v11, v11

    add-int v12, p3, v3

    int-to-float v12, v12

    invoke-virtual {v10, v11, v12}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 965
    iget-object v10, p0, Lim/doit/pro/ui/component/LockPatternView;->mCircleMatrix:Landroid/graphics/Matrix;

    iget v11, p0, Lim/doit/pro/ui/component/LockPatternView;->mBitmapWidth:I

    div-int/lit8 v11, v11, 0x2

    int-to-float v11, v11

    iget v12, p0, Lim/doit/pro/ui/component/LockPatternView;->mBitmapHeight:I

    div-int/lit8 v12, v12, 0x2

    int-to-float v12, v12

    invoke-virtual {v10, v11, v12}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 966
    iget-object v10, p0, Lim/doit/pro/ui/component/LockPatternView;->mCircleMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v10, v7, v8}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 967
    iget-object v10, p0, Lim/doit/pro/ui/component/LockPatternView;->mCircleMatrix:Landroid/graphics/Matrix;

    iget v11, p0, Lim/doit/pro/ui/component/LockPatternView;->mBitmapWidth:I

    neg-int v11, v11

    div-int/lit8 v11, v11, 0x2

    int-to-float v11, v11

    iget v12, p0, Lim/doit/pro/ui/component/LockPatternView;->mBitmapHeight:I

    neg-int v12, v12

    div-int/lit8 v12, v12, 0x2

    int-to-float v12, v12

    invoke-virtual {v10, v11, v12}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 969
    iget-object v10, p0, Lim/doit/pro/ui/component/LockPatternView;->mCircleMatrix:Landroid/graphics/Matrix;

    iget-object v11, p0, Lim/doit/pro/ui/component/LockPatternView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v10, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 970
    iget-object v10, p0, Lim/doit/pro/ui/component/LockPatternView;->mCircleMatrix:Landroid/graphics/Matrix;

    iget-object v11, p0, Lim/doit/pro/ui/component/LockPatternView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v10, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 971
    return-void

    .line 933
    .end local v0    # "height":I
    .end local v1    # "innerCircle":Landroid/graphics/Bitmap;
    .end local v2    # "offsetX":I
    .end local v3    # "offsetY":I
    .end local v4    # "outerCircle":Landroid/graphics/Bitmap;
    .end local v5    # "squareHeight":F
    .end local v6    # "squareWidth":F
    .end local v7    # "sx":F
    .end local v8    # "sy":F
    .end local v9    # "width":I
    :cond_1
    iget-boolean v10, p0, Lim/doit/pro/ui/component/LockPatternView;->mPatternInProgress:Z

    if-eqz v10, :cond_2

    .line 935
    iget-object v4, p0, Lim/doit/pro/ui/component/LockPatternView;->mBitmapCircleGreen:Landroid/graphics/Bitmap;

    .line 936
    .restart local v4    # "outerCircle":Landroid/graphics/Bitmap;
    iget-object v1, p0, Lim/doit/pro/ui/component/LockPatternView;->mBitmapBtnTouched:Landroid/graphics/Bitmap;

    .line 937
    .restart local v1    # "innerCircle":Landroid/graphics/Bitmap;
    goto :goto_0

    .end local v1    # "innerCircle":Landroid/graphics/Bitmap;
    .end local v4    # "outerCircle":Landroid/graphics/Bitmap;
    :cond_2
    iget-object v10, p0, Lim/doit/pro/ui/component/LockPatternView;->mPatternDisplayMode:Lim/doit/pro/ui/component/LockPatternView$DisplayMode;

    sget-object v11, Lim/doit/pro/ui/component/LockPatternView$DisplayMode;->Wrong:Lim/doit/pro/ui/component/LockPatternView$DisplayMode;

    if-ne v10, v11, :cond_3

    .line 939
    iget-object v4, p0, Lim/doit/pro/ui/component/LockPatternView;->mBitmapCircleRed:Landroid/graphics/Bitmap;

    .line 940
    .restart local v4    # "outerCircle":Landroid/graphics/Bitmap;
    iget-object v1, p0, Lim/doit/pro/ui/component/LockPatternView;->mBitmapBtnDefault:Landroid/graphics/Bitmap;

    .line 941
    .restart local v1    # "innerCircle":Landroid/graphics/Bitmap;
    goto :goto_0

    .end local v1    # "innerCircle":Landroid/graphics/Bitmap;
    .end local v4    # "outerCircle":Landroid/graphics/Bitmap;
    :cond_3
    iget-object v10, p0, Lim/doit/pro/ui/component/LockPatternView;->mPatternDisplayMode:Lim/doit/pro/ui/component/LockPatternView$DisplayMode;

    sget-object v11, Lim/doit/pro/ui/component/LockPatternView$DisplayMode;->Correct:Lim/doit/pro/ui/component/LockPatternView$DisplayMode;

    if-eq v10, v11, :cond_4

    .line 942
    iget-object v10, p0, Lim/doit/pro/ui/component/LockPatternView;->mPatternDisplayMode:Lim/doit/pro/ui/component/LockPatternView$DisplayMode;

    sget-object v11, Lim/doit/pro/ui/component/LockPatternView$DisplayMode;->Animate:Lim/doit/pro/ui/component/LockPatternView$DisplayMode;

    if-ne v10, v11, :cond_5

    .line 944
    :cond_4
    iget-object v4, p0, Lim/doit/pro/ui/component/LockPatternView;->mBitmapCircleGreen:Landroid/graphics/Bitmap;

    .line 945
    .restart local v4    # "outerCircle":Landroid/graphics/Bitmap;
    iget-object v1, p0, Lim/doit/pro/ui/component/LockPatternView;->mBitmapBtnDefault:Landroid/graphics/Bitmap;

    .line 946
    .restart local v1    # "innerCircle":Landroid/graphics/Bitmap;
    goto/16 :goto_0

    .line 947
    .end local v1    # "innerCircle":Landroid/graphics/Bitmap;
    .end local v4    # "outerCircle":Landroid/graphics/Bitmap;
    :cond_5
    new-instance v10, Ljava/lang/IllegalStateException;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "unknown display mode "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 948
    iget-object v12, p0, Lim/doit/pro/ui/component/LockPatternView;->mPatternDisplayMode:Lim/doit/pro/ui/component/LockPatternView$DisplayMode;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 947
    invoke-direct {v10, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v10
.end method

.method private drawLine(Landroid/graphics/Canvas;Ljava/util/ArrayList;I[[Z)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p3, "count"    # I
    .param p4, "drawLookup"    # [[Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Ljava/util/ArrayList",
            "<",
            "Lim/doit/pro/ui/component/LockPatternView$Cell;",
            ">;I[[Z)V"
        }
    .end annotation

    .prologue
    .line 877
    .local p2, "pattern":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/ui/component/LockPatternView$Cell;>;"
    iget-object v4, p0, Lim/doit/pro/ui/component/LockPatternView;->mCurrentPath:Landroid/graphics/Path;

    .line 878
    .local v4, "currentPath":Landroid/graphics/Path;
    invoke-virtual {v4}, Landroid/graphics/Path;->rewind()V

    .line 884
    iget-boolean v7, p0, Lim/doit/pro/ui/component/LockPatternView;->mInStealthMode:Z

    if-eqz v7, :cond_4

    iget-object v7, p0, Lim/doit/pro/ui/component/LockPatternView;->mPatternDisplayMode:Lim/doit/pro/ui/component/LockPatternView$DisplayMode;

    sget-object v8, Lim/doit/pro/ui/component/LockPatternView$DisplayMode;->Wrong:Lim/doit/pro/ui/component/LockPatternView$DisplayMode;

    if-eq v7, v8, :cond_4

    const/4 v5, 0x0

    .line 885
    .local v5, "drawPath":Z
    :goto_0
    if-eqz v5, :cond_3

    .line 886
    const/4 v0, 0x0

    .line 887
    .local v0, "anyCircles":Z
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    if-lt v6, p3, :cond_5

    .line 908
    :cond_0
    iget-boolean v7, p0, Lim/doit/pro/ui/component/LockPatternView;->mPatternInProgress:Z

    if-nez v7, :cond_1

    iget-object v7, p0, Lim/doit/pro/ui/component/LockPatternView;->mPatternDisplayMode:Lim/doit/pro/ui/component/LockPatternView$DisplayMode;

    sget-object v8, Lim/doit/pro/ui/component/LockPatternView$DisplayMode;->Animate:Lim/doit/pro/ui/component/LockPatternView$DisplayMode;

    if-ne v7, v8, :cond_2

    .line 909
    :cond_1
    if-eqz v0, :cond_2

    .line 910
    iget v7, p0, Lim/doit/pro/ui/component/LockPatternView;->mInProgressX:F

    iget v8, p0, Lim/doit/pro/ui/component/LockPatternView;->mInProgressY:F

    invoke-virtual {v4, v7, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 912
    :cond_2
    iget-object v7, p0, Lim/doit/pro/ui/component/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v7}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 914
    .end local v0    # "anyCircles":Z
    .end local v6    # "i":I
    :cond_3
    return-void

    .line 884
    .end local v5    # "drawPath":Z
    :cond_4
    const/4 v5, 0x1

    goto :goto_0

    .line 888
    .restart local v0    # "anyCircles":Z
    .restart local v5    # "drawPath":Z
    .restart local v6    # "i":I
    :cond_5
    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lim/doit/pro/ui/component/LockPatternView$Cell;

    .line 893
    .local v1, "cell":Lim/doit/pro/ui/component/LockPatternView$Cell;
    iget v7, v1, Lim/doit/pro/ui/component/LockPatternView$Cell;->row:I

    aget-object v7, p4, v7

    iget v8, v1, Lim/doit/pro/ui/component/LockPatternView$Cell;->column:I

    aget-boolean v7, v7, v8

    if-eqz v7, :cond_0

    .line 896
    const/4 v0, 0x1

    .line 898
    iget v7, v1, Lim/doit/pro/ui/component/LockPatternView$Cell;->column:I

    invoke-direct {p0, v7}, Lim/doit/pro/ui/component/LockPatternView;->getCenterXForColumn(I)F

    move-result v2

    .line 899
    .local v2, "centerX":F
    iget v7, v1, Lim/doit/pro/ui/component/LockPatternView$Cell;->row:I

    invoke-direct {p0, v7}, Lim/doit/pro/ui/component/LockPatternView;->getCenterYForRow(I)F

    move-result v3

    .line 900
    .local v3, "centerY":F
    if-nez v6, :cond_6

    .line 901
    invoke-virtual {v4, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 887
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 903
    :cond_6
    invoke-virtual {v4, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_2
.end method

.method private getBitmapFor(I)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 308
    invoke-virtual {p0}, Lim/doit/pro/ui/component/LockPatternView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private getCenterXForColumn(I)F
    .locals 3
    .param p1, "column"    # I

    .prologue
    .line 783
    invoke-direct {p0}, Lim/doit/pro/ui/component/LockPatternView;->getXStart()I

    move-result v0

    int-to-float v0, v0

    int-to-float v1, p1

    iget v2, p0, Lim/doit/pro/ui/component/LockPatternView;->mSquareWidth:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lim/doit/pro/ui/component/LockPatternView;->mSquareWidth:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method private getCenterYForRow(I)F
    .locals 3
    .param p1, "row"    # I

    .prologue
    .line 787
    invoke-virtual {p0}, Lim/doit/pro/ui/component/LockPatternView;->getPaddingTop()I

    move-result v0

    int-to-float v0, v0

    int-to-float v1, p1

    iget v2, p0, Lim/doit/pro/ui/component/LockPatternView;->mSquareHeight:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lim/doit/pro/ui/component/LockPatternView;->mSquareHeight:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method private getColumnHit(F)I
    .locals 8
    .param p1, "x"    # F

    .prologue
    .line 592
    iget v4, p0, Lim/doit/pro/ui/component/LockPatternView;->mSquareWidth:F

    .line 593
    .local v4, "squareWidth":F
    iget v5, p0, Lim/doit/pro/ui/component/LockPatternView;->mHitFactor:F

    mul-float v1, v4, v5

    .line 595
    .local v1, "hitSize":F
    invoke-direct {p0}, Lim/doit/pro/ui/component/LockPatternView;->getXStart()I

    move-result v5

    int-to-float v5, v5

    sub-float v6, v4, v1

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    add-float v3, v5, v6

    .line 596
    .local v3, "offset":F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/4 v5, 0x3

    if-lt v2, v5, :cond_1

    .line 603
    const/4 v2, -0x1

    .end local v2    # "i":I
    :cond_0
    return v2

    .line 598
    .restart local v2    # "i":I
    :cond_1
    int-to-float v5, v2

    mul-float/2addr v5, v4

    add-float v0, v3, v5

    .line 599
    .local v0, "hitLeft":F
    cmpl-float v5, p1, v0

    if-ltz v5, :cond_2

    add-float v5, v0, v1

    cmpg-float v5, p1, v5

    if-lez v5, :cond_0

    .line 596
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private getRowHit(F)I
    .locals 8
    .param p1, "y"    # F

    .prologue
    .line 570
    iget v4, p0, Lim/doit/pro/ui/component/LockPatternView;->mSquareHeight:F

    .line 571
    .local v4, "squareHeight":F
    iget v5, p0, Lim/doit/pro/ui/component/LockPatternView;->mHitFactor:F

    mul-float v0, v4, v5

    .line 573
    .local v0, "hitSize":F
    invoke-virtual {p0}, Lim/doit/pro/ui/component/LockPatternView;->getPaddingTop()I

    move-result v5

    int-to-float v5, v5

    sub-float v6, v4, v0

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    add-float v3, v5, v6

    .line 574
    .local v3, "offset":F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/4 v5, 0x3

    if-lt v2, v5, :cond_1

    .line 581
    const/4 v2, -0x1

    .end local v2    # "i":I
    :cond_0
    return v2

    .line 576
    .restart local v2    # "i":I
    :cond_1
    int-to-float v5, v2

    mul-float/2addr v5, v4

    add-float v1, v3, v5

    .line 577
    .local v1, "hitTop":F
    cmpl-float v5, p1, v1

    if-ltz v5, :cond_2

    add-float v5, v1, v0

    cmpg-float v5, p1, v5

    if-lez v5, :cond_0

    .line 574
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private getXStart()I
    .locals 3

    .prologue
    .line 1122
    iget v0, p0, Lim/doit/pro/ui/component/LockPatternView;->mViewWidth:I

    invoke-virtual {p0}, Lim/doit/pro/ui/component/LockPatternView;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lim/doit/pro/ui/component/LockPatternView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lim/doit/pro/ui/component/LockPatternView;->mSquareWidth:F

    const/high16 v2, 0x40400000    # 3.0f

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 1121
    return v0
.end method

.method private handleActionDown(Landroid/view/MotionEvent;)V
    .locals 11
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/high16 v8, 0x40000000    # 2.0f

    .line 749
    invoke-direct {p0}, Lim/doit/pro/ui/component/LockPatternView;->resetPattern()V

    .line 750
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    .line 751
    .local v5, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    .line 752
    .local v6, "y":F
    invoke-direct {p0, v5, v6}, Lim/doit/pro/ui/component/LockPatternView;->detectAndAddHit(FF)Lim/doit/pro/ui/component/LockPatternView$Cell;

    move-result-object v1

    .line 753
    .local v1, "hitCell":Lim/doit/pro/ui/component/LockPatternView$Cell;
    if-eqz v1, :cond_2

    .line 754
    const/4 v7, 0x1

    iput-boolean v7, p0, Lim/doit/pro/ui/component/LockPatternView;->mPatternInProgress:Z

    .line 755
    sget-object v7, Lim/doit/pro/ui/component/LockPatternView$DisplayMode;->Correct:Lim/doit/pro/ui/component/LockPatternView$DisplayMode;

    iput-object v7, p0, Lim/doit/pro/ui/component/LockPatternView;->mPatternDisplayMode:Lim/doit/pro/ui/component/LockPatternView$DisplayMode;

    .line 756
    invoke-direct {p0}, Lim/doit/pro/ui/component/LockPatternView;->notifyPatternStarted()V

    .line 761
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 762
    iget v7, v1, Lim/doit/pro/ui/component/LockPatternView$Cell;->column:I

    invoke-direct {p0, v7}, Lim/doit/pro/ui/component/LockPatternView;->getCenterXForColumn(I)F

    move-result v2

    .line 763
    .local v2, "startX":F
    iget v7, v1, Lim/doit/pro/ui/component/LockPatternView$Cell;->row:I

    invoke-direct {p0, v7}, Lim/doit/pro/ui/component/LockPatternView;->getCenterYForRow(I)F

    move-result v3

    .line 765
    .local v3, "startY":F
    iget v7, p0, Lim/doit/pro/ui/component/LockPatternView;->mSquareWidth:F

    div-float v4, v7, v8

    .line 766
    .local v4, "widthOffset":F
    iget v7, p0, Lim/doit/pro/ui/component/LockPatternView;->mSquareHeight:F

    div-float v0, v7, v8

    .line 768
    .local v0, "heightOffset":F
    sub-float v7, v2, v4

    float-to-int v7, v7

    .line 769
    sub-float v8, v3, v0

    float-to-int v8, v8

    .line 770
    add-float v9, v2, v4

    float-to-int v9, v9

    add-float v10, v3, v0

    float-to-int v10, v10

    .line 768
    invoke-virtual {p0, v7, v8, v9, v10}, Lim/doit/pro/ui/component/LockPatternView;->invalidate(IIII)V

    .line 772
    .end local v0    # "heightOffset":F
    .end local v2    # "startX":F
    .end local v3    # "startY":F
    .end local v4    # "widthOffset":F
    :cond_1
    iput v5, p0, Lim/doit/pro/ui/component/LockPatternView;->mInProgressX:F

    .line 773
    iput v6, p0, Lim/doit/pro/ui/component/LockPatternView;->mInProgressY:F

    .line 780
    return-void

    .line 757
    :cond_2
    iget-boolean v7, p0, Lim/doit/pro/ui/component/LockPatternView;->mPatternInProgress:Z

    if-eqz v7, :cond_0

    .line 758
    const/4 v7, 0x0

    iput-boolean v7, p0, Lim/doit/pro/ui/component/LockPatternView;->mPatternInProgress:Z

    .line 759
    invoke-direct {p0}, Lim/doit/pro/ui/component/LockPatternView;->notifyPatternCleared()V

    goto :goto_0
.end method

.method private handleActionMove(Landroid/view/MotionEvent;)V
    .locals 30
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 666
    move-object/from16 v0, p0

    iget v0, v0, Lim/doit/pro/ui/component/LockPatternView;->mSquareWidth:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lim/doit/pro/ui/component/LockPatternView;->mDiameterFactor:F

    move/from16 v26, v0

    mul-float v25, v25, v26

    const/high16 v26, 0x3f000000    # 0.5f

    mul-float v19, v25, v26

    .line 667
    .local v19, "radius":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v7

    .line 668
    .local v7, "historySize":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lim/doit/pro/ui/component/LockPatternView;->mTmpInvalidateRect:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Rect;->setEmpty()V

    .line 669
    const/4 v12, 0x0

    .line 670
    .local v12, "invalidateNow":Z
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    add-int/lit8 v25, v7, 0x1

    move/from16 v0, v25

    if-lt v11, v0, :cond_1

    .line 721
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lim/doit/pro/ui/component/LockPatternView;->mInProgressX:F

    .line 722
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lim/doit/pro/ui/component/LockPatternView;->mInProgressY:F

    .line 726
    if-eqz v12, :cond_0

    .line 727
    move-object/from16 v0, p0

    iget-object v0, v0, Lim/doit/pro/ui/component/LockPatternView;->mInvalidate:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lim/doit/pro/ui/component/LockPatternView;->mTmpInvalidateRect:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 728
    move-object/from16 v0, p0

    iget-object v0, v0, Lim/doit/pro/ui/component/LockPatternView;->mInvalidate:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/LockPatternView;->invalidate(Landroid/graphics/Rect;)V

    .line 729
    move-object/from16 v0, p0

    iget-object v0, v0, Lim/doit/pro/ui/component/LockPatternView;->mInvalidate:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lim/doit/pro/ui/component/LockPatternView;->mTmpInvalidateRect:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 731
    :cond_0
    return-void

    .line 671
    :cond_1
    if-ge v11, v7, :cond_7

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/MotionEvent;->getHistoricalX(I)F

    move-result v23

    .line 673
    .local v23, "x":F
    :goto_1
    if-ge v11, v7, :cond_8

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/MotionEvent;->getHistoricalY(I)F

    move-result v24

    .line 675
    .local v24, "y":F
    :goto_2
    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lim/doit/pro/ui/component/LockPatternView;->detectAndAddHit(FF)Lim/doit/pro/ui/component/LockPatternView$Cell;

    move-result-object v8

    .line 676
    .local v8, "hitCell":Lim/doit/pro/ui/component/LockPatternView$Cell;
    move-object/from16 v0, p0

    iget-object v0, v0, Lim/doit/pro/ui/component/LockPatternView;->mPattern:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v18

    .line 677
    .local v18, "patternSize":I
    if-eqz v8, :cond_2

    const/16 v25, 0x1

    move/from16 v0, v18

    move/from16 v1, v25

    if-ne v0, v1, :cond_2

    .line 678
    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lim/doit/pro/ui/component/LockPatternView;->mPatternInProgress:Z

    .line 679
    invoke-direct/range {p0 .. p0}, Lim/doit/pro/ui/component/LockPatternView;->notifyPatternStarted()V

    .line 682
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lim/doit/pro/ui/component/LockPatternView;->mInProgressX:F

    move/from16 v25, v0

    sub-float v25, v23, v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 683
    .local v4, "dx":F
    move-object/from16 v0, p0

    iget v0, v0, Lim/doit/pro/ui/component/LockPatternView;->mInProgressY:F

    move/from16 v25, v0

    sub-float v25, v24, v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 684
    .local v5, "dy":F
    const/16 v25, 0x0

    cmpl-float v25, v4, v25

    if-gtz v25, :cond_3

    const/16 v25, 0x0

    cmpl-float v25, v5, v25

    if-lez v25, :cond_4

    .line 685
    :cond_3
    const/4 v12, 0x1

    .line 688
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lim/doit/pro/ui/component/LockPatternView;->mPatternInProgress:Z

    move/from16 v25, v0

    if-eqz v25, :cond_6

    if-lez v18, :cond_6

    .line 689
    move-object/from16 v0, p0

    iget-object v0, v0, Lim/doit/pro/ui/component/LockPatternView;->mPattern:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    .line 690
    .local v17, "pattern":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/ui/component/LockPatternView$Cell;>;"
    add-int/lit8 v25, v18, -0x1

    move-object/from16 v0, v17

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lim/doit/pro/ui/component/LockPatternView$Cell;

    .line 691
    .local v13, "lastCell":Lim/doit/pro/ui/component/LockPatternView$Cell;
    iget v0, v13, Lim/doit/pro/ui/component/LockPatternView$Cell;->column:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-direct {v0, v1}, Lim/doit/pro/ui/component/LockPatternView;->getCenterXForColumn(I)F

    move-result v14

    .line 692
    .local v14, "lastCellCenterX":F
    iget v0, v13, Lim/doit/pro/ui/component/LockPatternView$Cell;->row:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-direct {v0, v1}, Lim/doit/pro/ui/component/LockPatternView;->getCenterYForRow(I)F

    move-result v15

    .line 696
    .local v15, "lastCellCenterY":F
    move/from16 v0, v23

    invoke-static {v14, v0}, Ljava/lang/Math;->min(FF)F

    move-result v25

    sub-float v16, v25, v19

    .line 697
    .local v16, "left":F
    move/from16 v0, v23

    invoke-static {v14, v0}, Ljava/lang/Math;->max(FF)F

    move-result v25

    add-float v20, v25, v19

    .line 698
    .local v20, "right":F
    move/from16 v0, v24

    invoke-static {v15, v0}, Ljava/lang/Math;->min(FF)F

    move-result v25

    sub-float v21, v25, v19

    .line 699
    .local v21, "top":F
    move/from16 v0, v24

    invoke-static {v15, v0}, Ljava/lang/Math;->max(FF)F

    move-result v25

    add-float v3, v25, v19

    .line 703
    .local v3, "bottom":F
    if-eqz v8, :cond_5

    .line 704
    move-object/from16 v0, p0

    iget v0, v0, Lim/doit/pro/ui/component/LockPatternView;->mSquareWidth:F

    move/from16 v25, v0

    const/high16 v26, 0x3f000000    # 0.5f

    mul-float v22, v25, v26

    .line 705
    .local v22, "width":F
    move-object/from16 v0, p0

    iget v0, v0, Lim/doit/pro/ui/component/LockPatternView;->mSquareHeight:F

    move/from16 v25, v0

    const/high16 v26, 0x3f000000    # 0.5f

    mul-float v6, v25, v26

    .line 706
    .local v6, "height":F
    iget v0, v8, Lim/doit/pro/ui/component/LockPatternView$Cell;->column:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-direct {v0, v1}, Lim/doit/pro/ui/component/LockPatternView;->getCenterXForColumn(I)F

    move-result v9

    .line 707
    .local v9, "hitCellCenterX":F
    iget v0, v8, Lim/doit/pro/ui/component/LockPatternView$Cell;->row:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-direct {v0, v1}, Lim/doit/pro/ui/component/LockPatternView;->getCenterYForRow(I)F

    move-result v10

    .line 709
    .local v10, "hitCellCenterY":F
    sub-float v25, v9, v22

    move/from16 v0, v25

    move/from16 v1, v16

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v16

    .line 710
    add-float v25, v9, v22

    move/from16 v0, v25

    move/from16 v1, v20

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v20

    .line 711
    sub-float v25, v10, v6

    move/from16 v0, v25

    move/from16 v1, v21

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v21

    .line 712
    add-float v25, v10, v6

    move/from16 v0, v25

    invoke-static {v0, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 717
    .end local v6    # "height":F
    .end local v9    # "hitCellCenterX":F
    .end local v10    # "hitCellCenterY":F
    .end local v22    # "width":F
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lim/doit/pro/ui/component/LockPatternView;->mTmpInvalidateRect:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->round(F)I

    move-result v26

    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->round(F)I

    move-result v27

    .line 718
    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->round(F)I

    move-result v28

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v29

    .line 717
    invoke-virtual/range {v25 .. v29}, Landroid/graphics/Rect;->union(IIII)V

    .line 670
    .end local v3    # "bottom":F
    .end local v13    # "lastCell":Lim/doit/pro/ui/component/LockPatternView$Cell;
    .end local v14    # "lastCellCenterX":F
    .end local v15    # "lastCellCenterY":F
    .end local v16    # "left":F
    .end local v17    # "pattern":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/ui/component/LockPatternView$Cell;>;"
    .end local v20    # "right":F
    .end local v21    # "top":F
    :cond_6
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    .line 672
    .end local v4    # "dx":F
    .end local v5    # "dy":F
    .end local v8    # "hitCell":Lim/doit/pro/ui/component/LockPatternView$Cell;
    .end local v18    # "patternSize":I
    .end local v23    # "x":F
    .end local v24    # "y":F
    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v23

    goto/16 :goto_1

    .line 674
    .restart local v23    # "x":F
    :cond_8
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v24

    goto/16 :goto_2
.end method

.method private handleActionUp(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 735
    iget-object v0, p0, Lim/doit/pro/ui/component/LockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 736
    const/4 v0, 0x0

    iput-boolean v0, p0, Lim/doit/pro/ui/component/LockPatternView;->mPatternInProgress:Z

    .line 737
    invoke-direct {p0}, Lim/doit/pro/ui/component/LockPatternView;->notifyPatternDetected()V

    .line 738
    invoke-virtual {p0}, Lim/doit/pro/ui/component/LockPatternView;->invalidate()V

    .line 746
    :cond_0
    return-void
.end method

.method private notifyCellAdded()V
    .locals 2

    .prologue
    .line 407
    iget-object v0, p0, Lim/doit/pro/ui/component/LockPatternView;->mOnPatternListener:Lim/doit/pro/ui/component/LockPatternView$OnPatternListener;

    if-eqz v0, :cond_0

    .line 408
    iget-object v0, p0, Lim/doit/pro/ui/component/LockPatternView;->mOnPatternListener:Lim/doit/pro/ui/component/LockPatternView$OnPatternListener;

    iget-object v1, p0, Lim/doit/pro/ui/component/LockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lim/doit/pro/ui/component/LockPatternView$OnPatternListener;->onPatternCellAdded(Ljava/util/List;)V

    .line 410
    :cond_0
    return-void
.end method

.method private notifyPatternCleared()V
    .locals 1

    .prologue
    .line 425
    iget-object v0, p0, Lim/doit/pro/ui/component/LockPatternView;->mOnPatternListener:Lim/doit/pro/ui/component/LockPatternView$OnPatternListener;

    if-eqz v0, :cond_0

    .line 426
    iget-object v0, p0, Lim/doit/pro/ui/component/LockPatternView;->mOnPatternListener:Lim/doit/pro/ui/component/LockPatternView$OnPatternListener;

    invoke-interface {v0}, Lim/doit/pro/ui/component/LockPatternView$OnPatternListener;->onPatternCleared()V

    .line 428
    :cond_0
    return-void
.end method

.method private notifyPatternDetected()V
    .locals 2

    .prologue
    .line 419
    iget-object v0, p0, Lim/doit/pro/ui/component/LockPatternView;->mOnPatternListener:Lim/doit/pro/ui/component/LockPatternView$OnPatternListener;

    if-eqz v0, :cond_0

    .line 420
    iget-object v0, p0, Lim/doit/pro/ui/component/LockPatternView;->mOnPatternListener:Lim/doit/pro/ui/component/LockPatternView$OnPatternListener;

    iget-object v1, p0, Lim/doit/pro/ui/component/LockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lim/doit/pro/ui/component/LockPatternView$OnPatternListener;->onPatternDetected(Ljava/util/List;)V

    .line 422
    :cond_0
    return-void
.end method

.method private notifyPatternStarted()V
    .locals 1

    .prologue
    .line 413
    iget-object v0, p0, Lim/doit/pro/ui/component/LockPatternView;->mOnPatternListener:Lim/doit/pro/ui/component/LockPatternView$OnPatternListener;

    if-eqz v0, :cond_0

    .line 414
    iget-object v0, p0, Lim/doit/pro/ui/component/LockPatternView;->mOnPatternListener:Lim/doit/pro/ui/component/LockPatternView$OnPatternListener;

    invoke-interface {v0}, Lim/doit/pro/ui/component/LockPatternView$OnPatternListener;->onPatternStart()V

    .line 416
    :cond_0
    return-void
.end method

.method public static patternToString(Ljava/util/List;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lim/doit/pro/ui/component/LockPatternView$Cell;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1019
    .local p0, "pattern":Ljava/util/List;, "Ljava/util/List<Lim/doit/pro/ui/component/LockPatternView$Cell;>;"
    if-nez p0, :cond_0

    .line 1020
    const-string v4, ""

    .line 1029
    :goto_0
    return-object v4

    .line 1022
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    .line 1024
    .local v2, "patternSize":I
    new-array v3, v2, [B

    .line 1025
    .local v3, "res":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-lt v1, v2, :cond_1

    .line 1029
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>([B)V

    goto :goto_0

    .line 1026
    :cond_1
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lim/doit/pro/ui/component/LockPatternView$Cell;

    .line 1027
    .local v0, "cell":Lim/doit/pro/ui/component/LockPatternView$Cell;
    invoke-virtual {v0}, Lim/doit/pro/ui/component/LockPatternView$Cell;->getRow()I

    move-result v4

    mul-int/lit8 v4, v4, 0x3

    invoke-virtual {v0}, Lim/doit/pro/ui/component/LockPatternView$Cell;->getColumn()I

    move-result v5

    add-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v3, v1

    .line 1025
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private resetPattern()V
    .locals 1

    .prologue
    .line 441
    iget-object v0, p0, Lim/doit/pro/ui/component/LockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 442
    invoke-direct {p0}, Lim/doit/pro/ui/component/LockPatternView;->clearPatternDrawLookup()V

    .line 443
    sget-object v0, Lim/doit/pro/ui/component/LockPatternView$DisplayMode;->Correct:Lim/doit/pro/ui/component/LockPatternView$DisplayMode;

    iput-object v0, p0, Lim/doit/pro/ui/component/LockPatternView;->mPatternDisplayMode:Lim/doit/pro/ui/component/LockPatternView$DisplayMode;

    .line 444
    invoke-virtual {p0}, Lim/doit/pro/ui/component/LockPatternView;->invalidate()V

    .line 445
    return-void
.end method

.method public static stringToPattern(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .param p0, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lim/doit/pro/ui/component/LockPatternView$Cell;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1001
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1003
    .local v3, "result":Ljava/util/List;, "Ljava/util/List<Lim/doit/pro/ui/component/LockPatternView$Cell;>;"
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 1004
    .local v1, "bytes":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v4, v1

    if-lt v2, v4, :cond_0

    .line 1008
    return-object v3

    .line 1005
    :cond_0
    aget-byte v0, v1, v2

    .line 1006
    .local v0, "b":B
    div-int/lit8 v4, v0, 0x3

    rem-int/lit8 v5, v0, 0x3

    invoke-static {v4, v5}, Lim/doit/pro/ui/component/LockPatternView$Cell;->of(II)Lim/doit/pro/ui/component/LockPatternView$Cell;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1004
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public clearPattern()V
    .locals 0

    .prologue
    .line 434
    invoke-direct {p0}, Lim/doit/pro/ui/component/LockPatternView;->resetPattern()V

    .line 435
    return-void
.end method

.method public disableInput()V
    .locals 1

    .prologue
    .line 463
    const/4 v0, 0x0

    iput-boolean v0, p0, Lim/doit/pro/ui/component/LockPatternView;->mInputEnabled:Z

    .line 464
    return-void
.end method

.method public enableInput()V
    .locals 1

    .prologue
    .line 470
    const/4 v0, 0x1

    iput-boolean v0, p0, Lim/doit/pro/ui/component/LockPatternView;->mInputEnabled:Z

    .line 471
    return-void
.end method

.method public getDisplayMode()Lim/doit/pro/ui/component/LockPatternView$DisplayMode;
    .locals 1

    .prologue
    .line 403
    iget-object v0, p0, Lim/doit/pro/ui/component/LockPatternView;->mPatternDisplayMode:Lim/doit/pro/ui/component/LockPatternView$DisplayMode;

    return-object v0
.end method

.method protected getSuggestedMinimumHeight()I
    .locals 1

    .prologue
    .line 482
    iget v0, p0, Lim/doit/pro/ui/component/LockPatternView;->mBitmapWidth:I

    mul-int/lit8 v0, v0, 0x3

    return v0
.end method

.method protected getSuggestedMinimumWidth()I
    .locals 1

    .prologue
    .line 476
    iget v0, p0, Lim/doit/pro/ui/component/LockPatternView;->mBitmapWidth:I

    mul-int/lit8 v0, v0, 0x3

    return v0
.end method

.method protected init(Landroid/content/Context;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const v8, 0x7f02013b

    const v7, 0x7f02013a

    const/4 v2, 0x0

    const/high16 v6, 0x40000000    # 2.0f

    const/4 v5, 0x1

    .line 273
    invoke-super {p0, p1}, Lim/doit/pro/ui/component/chart/BaseView;->init(Landroid/content/Context;)V

    .line 274
    invoke-virtual {p0, v5}, Lim/doit/pro/ui/component/LockPatternView;->setClickable(Z)V

    .line 276
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lim/doit/pro/ui/component/LockPatternView;->mPaint:Landroid/graphics/Paint;

    .line 278
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lim/doit/pro/ui/component/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    .line 279
    iget-object v3, p0, Lim/doit/pro/ui/component/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 280
    iget-object v3, p0, Lim/doit/pro/ui/component/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setDither(Z)V

    .line 281
    iget-object v3, p0, Lim/doit/pro/ui/component/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    iget v4, p0, Lim/doit/pro/ui/component/LockPatternView;->mLockLineColor:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 282
    iget-object v3, p0, Lim/doit/pro/ui/component/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    iget v4, p0, Lim/doit/pro/ui/component/LockPatternView;->mLockLineStrokeAlpha:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 283
    iget-object v3, p0, Lim/doit/pro/ui/component/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 284
    iget-object v3, p0, Lim/doit/pro/ui/component/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 285
    iget-object v3, p0, Lim/doit/pro/ui/component/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 288
    invoke-direct {p0, v7}, Lim/doit/pro/ui/component/LockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lim/doit/pro/ui/component/LockPatternView;->mBitmapBtnDefault:Landroid/graphics/Bitmap;

    .line 289
    invoke-direct {p0, v8}, Lim/doit/pro/ui/component/LockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lim/doit/pro/ui/component/LockPatternView;->mBitmapBtnTouched:Landroid/graphics/Bitmap;

    .line 290
    invoke-direct {p0, v7}, Lim/doit/pro/ui/component/LockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lim/doit/pro/ui/component/LockPatternView;->mBitmapCircleDefault:Landroid/graphics/Bitmap;

    .line 291
    invoke-direct {p0, v8}, Lim/doit/pro/ui/component/LockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lim/doit/pro/ui/component/LockPatternView;->mBitmapCircleGreen:Landroid/graphics/Bitmap;

    .line 292
    const v3, 0x7f02013c

    invoke-direct {p0, v3}, Lim/doit/pro/ui/component/LockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lim/doit/pro/ui/component/LockPatternView;->mBitmapCircleRed:Landroid/graphics/Bitmap;

    .line 295
    const/4 v3, 0x5

    new-array v1, v3, [Landroid/graphics/Bitmap;

    iget-object v3, p0, Lim/doit/pro/ui/component/LockPatternView;->mBitmapBtnDefault:Landroid/graphics/Bitmap;

    aput-object v3, v1, v2

    iget-object v3, p0, Lim/doit/pro/ui/component/LockPatternView;->mBitmapBtnTouched:Landroid/graphics/Bitmap;

    aput-object v3, v1, v5

    const/4 v3, 0x2

    .line 296
    iget-object v4, p0, Lim/doit/pro/ui/component/LockPatternView;->mBitmapCircleDefault:Landroid/graphics/Bitmap;

    aput-object v4, v1, v3

    const/4 v3, 0x3

    iget-object v4, p0, Lim/doit/pro/ui/component/LockPatternView;->mBitmapCircleGreen:Landroid/graphics/Bitmap;

    aput-object v4, v1, v3

    const/4 v3, 0x4

    iget-object v4, p0, Lim/doit/pro/ui/component/LockPatternView;->mBitmapCircleRed:Landroid/graphics/Bitmap;

    aput-object v4, v1, v3

    .line 298
    .local v1, "bitmaps":[Landroid/graphics/Bitmap;
    array-length v3, v1

    :goto_0
    if-lt v2, v3, :cond_0

    .line 303
    iget v2, p0, Lim/doit/pro/ui/component/LockPatternView;->mBitmapWidth:I

    int-to-float v2, v2

    iget v3, p0, Lim/doit/pro/ui/component/LockPatternView;->mSquareMargin:F

    mul-float/2addr v3, v6

    add-float/2addr v2, v3

    iput v2, p0, Lim/doit/pro/ui/component/LockPatternView;->mSquareWidth:F

    .line 304
    iget v2, p0, Lim/doit/pro/ui/component/LockPatternView;->mBitmapHeight:I

    int-to-float v2, v2

    iget v3, p0, Lim/doit/pro/ui/component/LockPatternView;->mSquareMargin:F

    mul-float/2addr v3, v6

    add-float/2addr v2, v3

    iput v2, p0, Lim/doit/pro/ui/component/LockPatternView;->mSquareHeight:F

    .line 305
    return-void

    .line 298
    :cond_0
    aget-object v0, v1, v2

    .line 299
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget v4, p0, Lim/doit/pro/ui/component/LockPatternView;->mBitmapWidth:I

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, p0, Lim/doit/pro/ui/component/LockPatternView;->mBitmapWidth:I

    .line 300
    iget v4, p0, Lim/doit/pro/ui/component/LockPatternView;->mBitmapHeight:I

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, p0, Lim/doit/pro/ui/component/LockPatternView;->mBitmapHeight:I

    .line 298
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method protected initAttributes(Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "defStyle"    # I

    .prologue
    const/4 v3, 0x0

    .line 256
    invoke-super {p0, p1, p2}, Lim/doit/pro/ui/component/chart/BaseView;->initAttributes(Landroid/util/AttributeSet;I)V

    .line 257
    if-nez p1, :cond_0

    .line 269
    :goto_0
    return-void

    .line 260
    :cond_0
    invoke-virtual {p0}, Lim/doit/pro/ui/component/LockPatternView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 261
    sget-object v2, Lim/doit/pro/v4/R$styleable;->LockPatternView:[I

    .line 260
    invoke-virtual {v1, p1, v2, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 263
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, -0x1

    .line 262
    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lim/doit/pro/ui/component/LockPatternView;->mLockLineColor:I

    .line 265
    const/4 v1, 0x1

    const/16 v2, 0xff

    .line 264
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lim/doit/pro/ui/component/LockPatternView;->mLockLineStrokeAlpha:I

    .line 267
    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 266
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lim/doit/pro/ui/component/LockPatternView;->mSquareMargin:F

    .line 268
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0
.end method

.method public isInStealthMode()Z
    .locals 1

    .prologue
    .line 315
    iget-boolean v0, p0, Lim/doit/pro/ui/component/LockPatternView;->mInStealthMode:Z

    return v0
.end method

.method public isTactileFeedbackEnabled()Z
    .locals 1

    .prologue
    .line 322
    iget-boolean v0, p0, Lim/doit/pro/ui/component/LockPatternView;->mEnableHapticFeedback:Z

    return v0
.end method

.method protected measureHeight(I)I
    .locals 2
    .param p1, "measureSpec"    # I

    .prologue
    .line 1112
    iget v0, p0, Lim/doit/pro/ui/component/LockPatternView;->mSquareHeight:F

    const/high16 v1, 0x40400000    # 3.0f

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method protected measureWidth(I)I
    .locals 2
    .param p1, "measureSpec"    # I

    .prologue
    .line 1117
    iget v0, p0, Lim/doit/pro/ui/component/LockPatternView;->mSquareWidth:F

    const/high16 v1, 0x40400000    # 3.0f

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 21
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 792
    invoke-virtual/range {p0 .. p0}, Lim/doit/pro/ui/component/LockPatternView;->getWidth()I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lim/doit/pro/ui/component/LockPatternView;->mViewWidth:I

    .line 794
    move-object/from16 v0, p0

    iget-object v13, v0, Lim/doit/pro/ui/component/LockPatternView;->mPattern:Ljava/util/ArrayList;

    .line 795
    .local v13, "pattern":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/ui/component/LockPatternView$Cell;>;"
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 796
    .local v5, "count":I
    move-object/from16 v0, p0

    iget-object v6, v0, Lim/doit/pro/ui/component/LockPatternView;->mPatternDrawLookup:[[Z

    .line 798
    .local v6, "drawLookup":[[Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lim/doit/pro/ui/component/LockPatternView;->mPatternDisplayMode:Lim/doit/pro/ui/component/LockPatternView$DisplayMode;

    move-object/from16 v18, v0

    sget-object v19, Lim/doit/pro/ui/component/LockPatternView$DisplayMode;->Animate:Lim/doit/pro/ui/component/LockPatternView$DisplayMode;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_0

    .line 799
    invoke-direct/range {p0 .. p0}, Lim/doit/pro/ui/component/LockPatternView;->drawAnimateDisplayMode()V

    .line 802
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lim/doit/pro/ui/component/LockPatternView;->mSquareWidth:F

    move/from16 v16, v0

    .line 803
    .local v16, "squareWidth":F
    move-object/from16 v0, p0

    iget v15, v0, Lim/doit/pro/ui/component/LockPatternView;->mSquareHeight:F

    .line 805
    .local v15, "squareHeight":F
    move-object/from16 v0, p0

    iget v0, v0, Lim/doit/pro/ui/component/LockPatternView;->mDiameterFactor:F

    move/from16 v18, v0

    mul-float v18, v18, v16

    const/high16 v19, 0x3f000000    # 0.5f

    mul-float v14, v18, v19

    .line 806
    .local v14, "radius":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lim/doit/pro/ui/component/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 809
    invoke-virtual/range {p0 .. p0}, Lim/doit/pro/ui/component/LockPatternView;->getPaddingTop()I

    move-result v12

    .line 810
    .local v12, "paddingTop":I
    invoke-direct/range {p0 .. p0}, Lim/doit/pro/ui/component/LockPatternView;->getXStart()I

    move-result v11

    .line 812
    .local v11, "paddingLeft":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    const/16 v18, 0x3

    move/from16 v0, v18

    if-lt v7, v0, :cond_1

    .line 823
    move-object/from16 v0, p0

    iget-object v0, v0, Lim/doit/pro/ui/component/LockPatternView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Paint;->getFlags()I

    move-result v18

    and-int/lit8 v18, v18, 0x2

    if-eqz v18, :cond_3

    const/4 v10, 0x1

    .line 824
    .local v10, "oldFlag":Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lim/doit/pro/ui/component/LockPatternView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 827
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v13, v5, v6}, Lim/doit/pro/ui/component/LockPatternView;->drawLine(Landroid/graphics/Canvas;Ljava/util/ArrayList;I[[Z)V

    .line 829
    move-object/from16 v0, p0

    iget-object v0, v0, Lim/doit/pro/ui/component/LockPatternView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 830
    return-void

    .line 813
    .end local v10    # "oldFlag":Z
    :cond_1
    int-to-float v0, v12

    move/from16 v18, v0

    int-to-float v0, v7

    move/from16 v19, v0

    mul-float v19, v19, v15

    add-float v17, v18, v19

    .line 814
    .local v17, "topY":F
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_2
    const/16 v18, 0x3

    move/from16 v0, v18

    if-lt v8, v0, :cond_2

    .line 812
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 815
    :cond_2
    int-to-float v0, v11

    move/from16 v18, v0

    int-to-float v0, v8

    move/from16 v19, v0

    mul-float v19, v19, v16

    add-float v9, v18, v19

    .line 816
    .local v9, "leftX":F
    float-to-int v0, v9

    move/from16 v18, v0

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v19, v0

    aget-object v20, v6, v7

    aget-boolean v20, v20, v8

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v18

    move/from16 v3, v19

    move/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lim/doit/pro/ui/component/LockPatternView;->drawCircle(Landroid/graphics/Canvas;IIZ)V

    .line 814
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 823
    .end local v8    # "j":I
    .end local v9    # "leftX":F
    .end local v17    # "topY":F
    :cond_3
    const/4 v10, 0x0

    goto :goto_1
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 608
    invoke-virtual {p0}, Lim/doit/pro/ui/component/LockPatternView;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 609
    const-string v3, "accessibility"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 608
    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 610
    .local v0, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 611
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 612
    .local v1, "action":I
    packed-switch v1, :pswitch_data_0

    .line 623
    :goto_0
    :pswitch_0
    invoke-virtual {p0, p1}, Lim/doit/pro/ui/component/LockPatternView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 624
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 626
    .end local v1    # "action":I
    :cond_0
    invoke-super {p0, p1}, Lim/doit/pro/ui/component/chart/BaseView;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    return v2

    .line 614
    .restart local v1    # "action":I
    :pswitch_1
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    .line 617
    :pswitch_2
    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    .line 620
    :pswitch_3
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    .line 612
    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 983
    move-object v0, p1

    check-cast v0, Lim/doit/pro/ui/component/LockPatternView$SavedState;

    .line 984
    .local v0, "ss":Lim/doit/pro/ui/component/LockPatternView$SavedState;
    invoke-virtual {v0}, Lim/doit/pro/ui/component/LockPatternView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Lim/doit/pro/ui/component/chart/BaseView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 985
    sget-object v1, Lim/doit/pro/ui/component/LockPatternView$DisplayMode;->Correct:Lim/doit/pro/ui/component/LockPatternView$DisplayMode;

    .line 986
    invoke-virtual {v0}, Lim/doit/pro/ui/component/LockPatternView$SavedState;->getSerializedPattern()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lim/doit/pro/ui/component/LockPatternView;->stringToPattern(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 985
    invoke-virtual {p0, v1, v2}, Lim/doit/pro/ui/component/LockPatternView;->setPattern(Lim/doit/pro/ui/component/LockPatternView$DisplayMode;Ljava/util/List;)V

    .line 987
    invoke-static {}, Lim/doit/pro/ui/component/LockPatternView$DisplayMode;->values()[Lim/doit/pro/ui/component/LockPatternView$DisplayMode;

    move-result-object v1

    invoke-virtual {v0}, Lim/doit/pro/ui/component/LockPatternView$SavedState;->getDisplayMode()I

    move-result v2

    aget-object v1, v1, v2

    iput-object v1, p0, Lim/doit/pro/ui/component/LockPatternView;->mPatternDisplayMode:Lim/doit/pro/ui/component/LockPatternView$DisplayMode;

    .line 988
    invoke-virtual {v0}, Lim/doit/pro/ui/component/LockPatternView$SavedState;->isInputEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lim/doit/pro/ui/component/LockPatternView;->mInputEnabled:Z

    .line 989
    invoke-virtual {v0}, Lim/doit/pro/ui/component/LockPatternView$SavedState;->isInStealthMode()Z

    move-result v1

    iput-boolean v1, p0, Lim/doit/pro/ui/component/LockPatternView;->mInStealthMode:Z

    .line 990
    invoke-virtual {v0}, Lim/doit/pro/ui/component/LockPatternView$SavedState;->isTactileFeedbackEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lim/doit/pro/ui/component/LockPatternView;->mEnableHapticFeedback:Z

    .line 991
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 8

    .prologue
    .line 975
    invoke-super {p0}, Lim/doit/pro/ui/component/chart/BaseView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 976
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Lim/doit/pro/ui/component/LockPatternView$SavedState;

    iget-object v2, p0, Lim/doit/pro/ui/component/LockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-static {v2}, Lim/doit/pro/ui/component/LockPatternView;->patternToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    .line 977
    iget-object v3, p0, Lim/doit/pro/ui/component/LockPatternView;->mPatternDisplayMode:Lim/doit/pro/ui/component/LockPatternView$DisplayMode;

    invoke-virtual {v3}, Lim/doit/pro/ui/component/LockPatternView$DisplayMode;->ordinal()I

    move-result v3

    iget-boolean v4, p0, Lim/doit/pro/ui/component/LockPatternView;->mInputEnabled:Z

    iget-boolean v5, p0, Lim/doit/pro/ui/component/LockPatternView;->mInStealthMode:Z

    .line 978
    iget-boolean v6, p0, Lim/doit/pro/ui/component/LockPatternView;->mEnableHapticFeedback:Z

    .line 976
    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lim/doit/pro/ui/component/LockPatternView$SavedState;-><init>(Landroid/os/Parcelable;Ljava/lang/String;IZZZLim/doit/pro/ui/component/LockPatternView$SavedState;)V

    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 631
    iget-boolean v2, p0, Lim/doit/pro/ui/component/LockPatternView;->mInputEnabled:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lim/doit/pro/ui/component/LockPatternView;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    move v0, v1

    .line 659
    :cond_1
    :goto_0
    return v0

    .line 635
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    move v0, v1

    .line 659
    goto :goto_0

    .line 637
    :pswitch_0
    invoke-direct {p0, p1}, Lim/doit/pro/ui/component/LockPatternView;->handleActionDown(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 640
    :pswitch_1
    invoke-direct {p0, p1}, Lim/doit/pro/ui/component/LockPatternView;->handleActionUp(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 643
    :pswitch_2
    invoke-direct {p0, p1}, Lim/doit/pro/ui/component/LockPatternView;->handleActionMove(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 646
    :pswitch_3
    iget-boolean v2, p0, Lim/doit/pro/ui/component/LockPatternView;->mPatternInProgress:Z

    if-eqz v2, :cond_1

    .line 647
    iput-boolean v1, p0, Lim/doit/pro/ui/component/LockPatternView;->mPatternInProgress:Z

    .line 648
    invoke-direct {p0}, Lim/doit/pro/ui/component/LockPatternView;->resetPattern()V

    .line 649
    invoke-direct {p0}, Lim/doit/pro/ui/component/LockPatternView;->notifyPatternCleared()V

    goto :goto_0

    .line 635
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setDisplayMode(Lim/doit/pro/ui/component/LockPatternView$DisplayMode;)V
    .locals 4
    .param p1, "displayMode"    # Lim/doit/pro/ui/component/LockPatternView$DisplayMode;

    .prologue
    .line 386
    iput-object p1, p0, Lim/doit/pro/ui/component/LockPatternView;->mPatternDisplayMode:Lim/doit/pro/ui/component/LockPatternView$DisplayMode;

    .line 387
    sget-object v1, Lim/doit/pro/ui/component/LockPatternView$DisplayMode;->Animate:Lim/doit/pro/ui/component/LockPatternView$DisplayMode;

    if-ne p1, v1, :cond_1

    .line 388
    iget-object v1, p0, Lim/doit/pro/ui/component/LockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 389
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 390
    const-string v2, "you must have a pattern to animate if you want to set the display mode to animate"

    .line 389
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 393
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lim/doit/pro/ui/component/LockPatternView;->mAnimatingPeriodStart:J

    .line 394
    iget-object v1, p0, Lim/doit/pro/ui/component/LockPatternView;->mPattern:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lim/doit/pro/ui/component/LockPatternView$Cell;

    .line 395
    .local v0, "first":Lim/doit/pro/ui/component/LockPatternView$Cell;
    invoke-virtual {v0}, Lim/doit/pro/ui/component/LockPatternView$Cell;->getColumn()I

    move-result v1

    invoke-direct {p0, v1}, Lim/doit/pro/ui/component/LockPatternView;->getCenterXForColumn(I)F

    move-result v1

    iput v1, p0, Lim/doit/pro/ui/component/LockPatternView;->mInProgressX:F

    .line 396
    invoke-virtual {v0}, Lim/doit/pro/ui/component/LockPatternView$Cell;->getRow()I

    move-result v1

    invoke-direct {p0, v1}, Lim/doit/pro/ui/component/LockPatternView;->getCenterYForRow(I)F

    move-result v1

    iput v1, p0, Lim/doit/pro/ui/component/LockPatternView;->mInProgressY:F

    .line 397
    invoke-direct {p0}, Lim/doit/pro/ui/component/LockPatternView;->clearPatternDrawLookup()V

    .line 399
    .end local v0    # "first":Lim/doit/pro/ui/component/LockPatternView$Cell;
    :cond_1
    invoke-virtual {p0}, Lim/doit/pro/ui/component/LockPatternView;->invalidate()V

    .line 400
    return-void
.end method

.method public setInStealthMode(Z)V
    .locals 0
    .param p1, "inStealthMode"    # Z

    .prologue
    .line 333
    iput-boolean p1, p0, Lim/doit/pro/ui/component/LockPatternView;->mInStealthMode:Z

    .line 334
    return-void
.end method

.method public setOnPatternListener(Lim/doit/pro/ui/component/LockPatternView$OnPatternListener;)V
    .locals 0
    .param p1, "onPatternListener"    # Lim/doit/pro/ui/component/LockPatternView$OnPatternListener;

    .prologue
    .line 354
    iput-object p1, p0, Lim/doit/pro/ui/component/LockPatternView;->mOnPatternListener:Lim/doit/pro/ui/component/LockPatternView$OnPatternListener;

    .line 355
    return-void
.end method

.method public setPattern(Lim/doit/pro/ui/component/LockPatternView$DisplayMode;Ljava/util/List;)V
    .locals 5
    .param p1, "displayMode"    # Lim/doit/pro/ui/component/LockPatternView$DisplayMode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lim/doit/pro/ui/component/LockPatternView$DisplayMode;",
            "Ljava/util/List",
            "<",
            "Lim/doit/pro/ui/component/LockPatternView$Cell;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 367
    .local p2, "pattern":Ljava/util/List;, "Ljava/util/List<Lim/doit/pro/ui/component/LockPatternView$Cell;>;"
    iget-object v1, p0, Lim/doit/pro/ui/component/LockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 368
    iget-object v1, p0, Lim/doit/pro/ui/component/LockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 369
    invoke-direct {p0}, Lim/doit/pro/ui/component/LockPatternView;->clearPatternDrawLookup()V

    .line 370
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 374
    invoke-virtual {p0, p1}, Lim/doit/pro/ui/component/LockPatternView;->setDisplayMode(Lim/doit/pro/ui/component/LockPatternView$DisplayMode;)V

    .line 375
    return-void

    .line 370
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lim/doit/pro/ui/component/LockPatternView$Cell;

    .line 371
    .local v0, "cell":Lim/doit/pro/ui/component/LockPatternView$Cell;
    iget-object v2, p0, Lim/doit/pro/ui/component/LockPatternView;->mPatternDrawLookup:[[Z

    invoke-virtual {v0}, Lim/doit/pro/ui/component/LockPatternView$Cell;->getRow()I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v0}, Lim/doit/pro/ui/component/LockPatternView$Cell;->getColumn()I

    move-result v3

    const/4 v4, 0x1

    aput-boolean v4, v2, v3

    goto :goto_0
.end method

.method public setTactileFeedbackEnabled(Z)V
    .locals 0
    .param p1, "tactileFeedbackEnabled"    # Z

    .prologue
    .line 344
    iput-boolean p1, p0, Lim/doit/pro/ui/component/LockPatternView;->mEnableHapticFeedback:Z

    .line 345
    return-void
.end method
