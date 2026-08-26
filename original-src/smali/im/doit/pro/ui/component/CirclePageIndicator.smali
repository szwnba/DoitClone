.class public Lim/doit/pro/ui/component/CirclePageIndicator;
.super Landroid/view/View;
.source "CirclePageIndicator.java"

# interfaces
.implements Lim/doit/pro/ui/component/PageIndicator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lim/doit/pro/ui/component/CirclePageIndicator$SavedState;
    }
.end annotation


# static fields
.field private static final INVALID_POINTER:I = -0x1


# instance fields
.field private mActivePointerId:I

.field private mCentered:Z

.field private mCurrentPage:I

.field private mIsDragging:Z

.field private mLastMotionX:F

.field private mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

.field private mOrientation:I

.field private mPageOffset:F

.field private final mPaintFill:Landroid/graphics/Paint;

.field private final mPaintPageFill:Landroid/graphics/Paint;

.field private final mPaintStroke:Landroid/graphics/Paint;

.field private mRadius:F

.field private mScrollState:I

.field private mSnap:Z

.field private mSnapPage:I

.field private mTouchSlop:I

.field private mViewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 67
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lim/doit/pro/ui/component/CirclePageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 71
    const v0, 0x7f0100d3

    invoke-direct {p0, p1, p2, v0}, Lim/doit/pro/ui/component/CirclePageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 75
    invoke-direct/range {p0 .. p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    new-instance v14, Landroid/graphics/Paint;

    const/4 v15, 0x1

    invoke-direct {v14, v15}, Landroid/graphics/Paint;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lim/doit/pro/ui/component/CirclePageIndicator;->mPaintPageFill:Landroid/graphics/Paint;

    .line 48
    new-instance v14, Landroid/graphics/Paint;

    const/4 v15, 0x1

    invoke-direct {v14, v15}, Landroid/graphics/Paint;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lim/doit/pro/ui/component/CirclePageIndicator;->mPaintStroke:Landroid/graphics/Paint;

    .line 49
    new-instance v14, Landroid/graphics/Paint;

    const/4 v15, 0x1

    invoke-direct {v14, v15}, Landroid/graphics/Paint;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lim/doit/pro/ui/component/CirclePageIndicator;->mPaintFill:Landroid/graphics/Paint;

    .line 61
    const/high16 v14, -0x40800000    # -1.0f

    move-object/from16 v0, p0

    iput v14, v0, Lim/doit/pro/ui/component/CirclePageIndicator;->mLastMotionX:F

    .line 62
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Lim/doit/pro/ui/component/CirclePageIndicator;->mActivePointerId:I

    .line 76
    invoke-virtual/range {p0 .. p0}, Lim/doit/pro/ui/component/CirclePageIndicator;->isInEditMode()Z

    move-result v14

    if-eqz v14, :cond_0

    .line 108
    :goto_0
    return-void

    .line 79
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lim/doit/pro/ui/component/CirclePageIndicator;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    .line 80
    .local v13, "res":Landroid/content/res/Resources;
    const v14, 0x7f08007f

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    .line 81
    .local v8, "defaultPageColor":I
    const v14, 0x7f08007e

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    .line 82
    .local v6, "defaultFillColor":I
    const v14, 0x7f0a0001

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    .line 83
    .local v7, "defaultOrientation":I
    const v14, 0x7f080080

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getColor(I)I

    move-result v11

    .line 84
    .local v11, "defaultStrokeColor":I
    const v14, 0x7f09002c

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v12

    .line 85
    .local v12, "defaultStrokeWidth":F
    const v14, 0x7f09002b

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    .line 86
    .local v9, "defaultRadius":F
    const v14, 0x7f070006

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    .line 87
    .local v5, "defaultCentered":Z
    const v14, 0x7f070007

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v10

    .line 90
    .local v10, "defaultSnap":Z
    sget-object v14, Lim/doit/pro/v4/R$styleable;->CirclePageIndicator:[I

    const/4 v15, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v0, v1, v14, v2, v15}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 92
    .local v3, "a":Landroid/content/res/TypedArray;
    const/4 v14, 0x6

    invoke-virtual {v3, v14, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v14

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lim/doit/pro/ui/component/CirclePageIndicator;->mCentered:Z

    .line 93
    const/4 v14, 0x0

    invoke-virtual {v3, v14, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lim/doit/pro/ui/component/CirclePageIndicator;->mOrientation:I

    .line 94
    move-object/from16 v0, p0

    iget-object v14, v0, Lim/doit/pro/ui/component/CirclePageIndicator;->mPaintPageFill:Landroid/graphics/Paint;

    sget-object v15, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v14, v15}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 95
    move-object/from16 v0, p0

    iget-object v14, v0, Lim/doit/pro/ui/component/CirclePageIndicator;->mPaintPageFill:Landroid/graphics/Paint;

    const/4 v15, 0x2

    invoke-virtual {v3, v15, v8}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v15

    invoke-virtual {v14, v15}, Landroid/graphics/Paint;->setColor(I)V

    .line 96
    move-object/from16 v0, p0

    iget-object v14, v0, Lim/doit/pro/ui/component/CirclePageIndicator;->mPaintStroke:Landroid/graphics/Paint;

    sget-object v15, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v14, v15}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 97
    move-object/from16 v0, p0

    iget-object v14, v0, Lim/doit/pro/ui/component/CirclePageIndicator;->mPaintStroke:Landroid/graphics/Paint;

    const/4 v15, 0x5

    invoke-virtual {v3, v15, v11}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v15

    invoke-virtual {v14, v15}, Landroid/graphics/Paint;->setColor(I)V

    .line 98
    move-object/from16 v0, p0

    iget-object v14, v0, Lim/doit/pro/ui/component/CirclePageIndicator;->mPaintStroke:Landroid/graphics/Paint;

    const/4 v15, 0x7

    invoke-virtual {v3, v15, v12}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v15

    invoke-virtual {v14, v15}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 99
    move-object/from16 v0, p0

    iget-object v14, v0, Lim/doit/pro/ui/component/CirclePageIndicator;->mPaintFill:Landroid/graphics/Paint;

    sget-object v15, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v14, v15}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 100
    move-object/from16 v0, p0

    iget-object v14, v0, Lim/doit/pro/ui/component/CirclePageIndicator;->mPaintFill:Landroid/graphics/Paint;

    const/4 v15, 0x1

    invoke-virtual {v3, v15, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v15

    invoke-virtual {v14, v15}, Landroid/graphics/Paint;->setColor(I)V

    .line 101
    const/4 v14, 0x3

    invoke-virtual {v3, v14, v9}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lim/doit/pro/ui/component/CirclePageIndicator;->mRadius:F

    .line 102
    const/4 v14, 0x4

    invoke-virtual {v3, v14, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v14

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lim/doit/pro/ui/component/CirclePageIndicator;->mSnap:Z

    .line 104
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 106
    invoke-static/range {p1 .. p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v4

    .line 107
    .local v4, "configuration":Landroid/view/ViewConfiguration;
    invoke-static {v4}, Landroid/support/v4/view/ViewConfigurationCompat;->getScaledPagingTouchSlop(Landroid/view/ViewConfiguration;)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lim/doit/pro/ui/component/CirclePageIndicator;->mTouchSlop:I

    goto/16 :goto_0
.end method

.method private measureLong(I)I
    .locals 7
    .param p1, "measureSpec"    # I

    .prologue
    .line 453
    const/4 v1, 0x0

    .line 454
    .local v1, "result":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 455
    .local v2, "specMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 457
    .local v3, "specSize":I
    const/high16 v4, 0x40000000    # 2.0f

    if-eq v2, v4, :cond_0

    iget-object v4, p0, Lim/doit/pro/ui/component/CirclePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-nez v4, :cond_2

    .line 459
    :cond_0
    move v1, v3

    .line 470
    :cond_1
    :goto_0
    return v1

    .line 462
    :cond_2
    iget-object v4, p0, Lim/doit/pro/ui/component/CirclePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v4}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    .line 463
    .local v0, "count":I
    invoke-virtual {p0}, Lim/doit/pro/ui/component/CirclePageIndicator;->getPaddingLeft()I

    move-result v4

    invoke-virtual {p0}, Lim/doit/pro/ui/component/CirclePageIndicator;->getPaddingRight()I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    .line 464
    mul-int/lit8 v5, v0, 0x2

    int-to-float v5, v5

    iget v6, p0, Lim/doit/pro/ui/component/CirclePageIndicator;->mRadius:F

    mul-float/2addr v5, v6

    .line 463
    add-float/2addr v4, v5

    .line 464
    add-int/lit8 v5, v0, -0x1

    int-to-float v5, v5

    iget v6, p0, Lim/doit/pro/ui/component/CirclePageIndicator;->mRadius:F

    mul-float/2addr v5, v6

    .line 463
    add-float/2addr v4, v5

    .line 464
    const/high16 v5, 0x3f800000    # 1.0f

    .line 463
    add-float/2addr v4, v5

    float-to-int v1, v4

    .line 466
    const/high16 v4, -0x80000000

    if-ne v2, v4, :cond_1

    .line 467
    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_0
.end method

.method private measureShort(I)I
    .locals 5
    .param p1, "measureSpec"    # I

    .prologue
    .line 481
    const/4 v0, 0x0

    .line 482
    .local v0, "result":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 483
    .local v1, "specMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 485
    .local v2, "specSize":I
    const/high16 v3, 0x40000000    # 2.0f

    if-ne v1, v3, :cond_1

    .line 487
    move v0, v2

    .line 496
    :cond_0
    :goto_0
    return v0

    .line 490
    :cond_1
    const/high16 v3, 0x40000000    # 2.0f

    iget v4, p0, Lim/doit/pro/ui/component/CirclePageIndicator;->mRadius:F

    mul-float/2addr v3, v4

    invoke-virtual {p0}, Lim/doit/pro/ui/component/CirclePageIndicator;->getPaddingTop()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    invoke-virtual {p0}, Lim/doit/pro/ui/component/CirclePageIndicator;->getPaddingBottom()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    const/high16 v4, 0x3f800000    # 1.0f

    add-float/2addr v3, v4

    float-to-int v0, v3

    .line 492
    const/high16 v3, -0x80000000

    if-ne v1, v3, :cond_0

    .line 493
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public getFillColor()I
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lim/doit/pro/ui/component/CirclePageIndicator;->mPaintFill:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public getOrientation()I
    .locals 1

    .prologue
    .line 152
    iget v0, p0, Lim/doit/pro/ui/component/CirclePageIndicator;->mOrientation:I

    return v0
.end method

.method public getPageColor()I
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lim/doit/pro/ui/component/CirclePageIndicator;->mPaintPageFill:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public getRadius()F
    .locals 1

    .prologue
    .line 179
    iget v0, p0, Lim/doit/pro/ui/component/CirclePageIndicator;->mRadius:F

    return v0
.end method

.method public getStrokeColor()I
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lim/doit/pro/ui/component/CirclePageIndicator;->mPaintStroke:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public getStrokeWidth()F
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lim/doit/pro/ui/component/CirclePageIndicator;->mPaintStroke:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    return v0
.end method

.method public isCentered()Z
    .locals 1

    .prologue
    .line 117
    iget-boolean v0, p0, Lim/doit/pro/ui/component/CirclePageIndicator;->mCentered:Z

    return v0
.end method

.method public isSnap()Z
    .locals 1

    .prologue
    .line 188
    iget-boolean v0, p0, Lim/doit/pro/ui/component/CirclePageIndicator;->mSnap:Z

    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 0

    .prologue
    .line 390
    invoke-virtual {p0}, Lim/doit/pro/ui/component/CirclePageIndicator;->invalidate()V

    .line 391
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 20
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 193
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 195
    move-object/from16 v0, p0

    iget-object v0, v0, Lim/doit/pro/ui/component/CirclePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    move-object/from16 v17, v0

    if-nez v17, :cond_1

    .line 273
    :cond_0
    :goto_0
    return-void

    .line 198
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lim/doit/pro/ui/component/CirclePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v3

    .line 199
    .local v3, "count":I
    if-eqz v3, :cond_0

    .line 203
    move-object/from16 v0, p0

    iget v0, v0, Lim/doit/pro/ui/component/CirclePageIndicator;->mCurrentPage:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-lt v0, v3, :cond_2

    .line 204
    add-int/lit8 v17, v3, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/CirclePageIndicator;->setCurrentItem(I)V

    goto :goto_0

    .line 212
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lim/doit/pro/ui/component/CirclePageIndicator;->mOrientation:I

    move/from16 v17, v0

    if-nez v17, :cond_6

    .line 213
    invoke-virtual/range {p0 .. p0}, Lim/doit/pro/ui/component/CirclePageIndicator;->getWidth()I

    move-result v12

    .line 214
    .local v12, "longSize":I
    invoke-virtual/range {p0 .. p0}, Lim/doit/pro/ui/component/CirclePageIndicator;->getPaddingLeft()I

    move-result v11

    .line 215
    .local v11, "longPaddingBefore":I
    invoke-virtual/range {p0 .. p0}, Lim/doit/pro/ui/component/CirclePageIndicator;->getPaddingRight()I

    move-result v10

    .line 216
    .local v10, "longPaddingAfter":I
    invoke-virtual/range {p0 .. p0}, Lim/doit/pro/ui/component/CirclePageIndicator;->getPaddingTop()I

    move-result v15

    .line 224
    .local v15, "shortPaddingBefore":I
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lim/doit/pro/ui/component/CirclePageIndicator;->mRadius:F

    move/from16 v17, v0

    const/high16 v18, 0x40400000    # 3.0f

    mul-float v16, v17, v18

    .line 225
    .local v16, "threeRadius":F
    int-to-float v0, v15

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lim/doit/pro/ui/component/CirclePageIndicator;->mRadius:F

    move/from16 v18, v0

    add-float v14, v17, v18

    .line 226
    .local v14, "shortOffset":F
    int-to-float v0, v11

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lim/doit/pro/ui/component/CirclePageIndicator;->mRadius:F

    move/from16 v18, v0

    add-float v9, v17, v18

    .line 227
    .local v9, "longOffset":F
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lim/doit/pro/ui/component/CirclePageIndicator;->mCentered:Z

    move/from16 v17, v0

    if-eqz v17, :cond_3

    .line 228
    sub-int v17, v12, v11

    sub-int v17, v17, v10

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    const/high16 v18, 0x40000000    # 2.0f

    div-float v17, v17, v18

    int-to-float v0, v3

    move/from16 v18, v0

    mul-float v18, v18, v16

    const/high16 v19, 0x40000000    # 2.0f

    div-float v18, v18, v19

    sub-float v17, v17, v18

    add-float v9, v9, v17

    .line 234
    :cond_3
    move-object/from16 v0, p0

    iget v13, v0, Lim/doit/pro/ui/component/CirclePageIndicator;->mRadius:F

    .line 235
    .local v13, "pageFillRadius":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lim/doit/pro/ui/component/CirclePageIndicator;->mPaintStroke:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v17

    const/16 v18, 0x0

    cmpl-float v17, v17, v18

    if-lez v17, :cond_4

    .line 236
    move-object/from16 v0, p0

    iget-object v0, v0, Lim/doit/pro/ui/component/CirclePageIndicator;->mPaintStroke:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v17

    const/high16 v18, 0x40000000    # 2.0f

    div-float v17, v17, v18

    sub-float v13, v13, v17

    .line 240
    :cond_4
    const/4 v8, 0x0

    .local v8, "iLoop":I
    :goto_2
    if-lt v8, v3, :cond_7

    .line 261
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lim/doit/pro/ui/component/CirclePageIndicator;->mSnap:Z

    move/from16 v17, v0

    if-eqz v17, :cond_b

    move-object/from16 v0, p0

    iget v0, v0, Lim/doit/pro/ui/component/CirclePageIndicator;->mSnapPage:I

    move/from16 v17, v0

    :goto_3
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    mul-float v4, v17, v16

    .line 262
    .local v4, "cx":F
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lim/doit/pro/ui/component/CirclePageIndicator;->mSnap:Z

    move/from16 v17, v0

    if-nez v17, :cond_5

    .line 263
    move-object/from16 v0, p0

    iget v0, v0, Lim/doit/pro/ui/component/CirclePageIndicator;->mPageOffset:F

    move/from16 v17, v0

    mul-float v17, v17, v16

    add-float v4, v4, v17

    .line 265
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lim/doit/pro/ui/component/CirclePageIndicator;->mOrientation:I

    move/from16 v17, v0

    if-nez v17, :cond_c

    .line 266
    add-float v5, v9, v4

    .line 267
    .local v5, "dX":F
    move v6, v14

    .line 272
    .local v6, "dY":F
    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Lim/doit/pro/ui/component/CirclePageIndicator;->mRadius:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lim/doit/pro/ui/component/CirclePageIndicator;->mPaintFill:Landroid/graphics/Paint;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    move/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v5, v6, v1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 218
    .end local v4    # "cx":F
    .end local v5    # "dX":F
    .end local v6    # "dY":F
    .end local v8    # "iLoop":I
    .end local v9    # "longOffset":F
    .end local v10    # "longPaddingAfter":I
    .end local v11    # "longPaddingBefore":I
    .end local v12    # "longSize":I
    .end local v13    # "pageFillRadius":F
    .end local v14    # "shortOffset":F
    .end local v15    # "shortPaddingBefore":I
    .end local v16    # "threeRadius":F
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lim/doit/pro/ui/component/CirclePageIndicator;->getHeight()I

    move-result v12

    .line 219
    .restart local v12    # "longSize":I
    invoke-virtual/range {p0 .. p0}, Lim/doit/pro/ui/component/CirclePageIndicator;->getPaddingTop()I

    move-result v11

    .line 220
    .restart local v11    # "longPaddingBefore":I
    invoke-virtual/range {p0 .. p0}, Lim/doit/pro/ui/component/CirclePageIndicator;->getPaddingBottom()I

    move-result v10

    .line 221
    .restart local v10    # "longPaddingAfter":I
    invoke-virtual/range {p0 .. p0}, Lim/doit/pro/ui/component/CirclePageIndicator;->getPaddingLeft()I

    move-result v15

    .restart local v15    # "shortPaddingBefore":I
    goto/16 :goto_1

    .line 241
    .restart local v8    # "iLoop":I
    .restart local v9    # "longOffset":F
    .restart local v13    # "pageFillRadius":F
    .restart local v14    # "shortOffset":F
    .restart local v16    # "threeRadius":F
    :cond_7
    int-to-float v0, v8

    move/from16 v17, v0

    mul-float v17, v17, v16

    add-float v7, v9, v17

    .line 242
    .local v7, "drawLong":F
    move-object/from16 v0, p0

    iget v0, v0, Lim/doit/pro/ui/component/CirclePageIndicator;->mOrientation:I

    move/from16 v17, v0

    if-nez v17, :cond_a

    .line 243
    move v5, v7

    .line 244
    .restart local v5    # "dX":F
    move v6, v14

    .line 250
    .restart local v6    # "dY":F
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lim/doit/pro/ui/component/CirclePageIndicator;->mPaintPageFill:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Paint;->getAlpha()I

    move-result v17

    if-lez v17, :cond_8

    .line 251
    move-object/from16 v0, p0

    iget-object v0, v0, Lim/doit/pro/ui/component/CirclePageIndicator;->mPaintPageFill:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v5, v6, v13, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 255
    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Lim/doit/pro/ui/component/CirclePageIndicator;->mRadius:F

    move/from16 v17, v0

    cmpl-float v17, v13, v17

    if-eqz v17, :cond_9

    .line 256
    move-object/from16 v0, p0

    iget v0, v0, Lim/doit/pro/ui/component/CirclePageIndicator;->mRadius:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lim/doit/pro/ui/component/CirclePageIndicator;->mPaintStroke:Landroid/graphics/Paint;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    move/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v5, v6, v1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 240
    :cond_9
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_2

    .line 246
    .end local v5    # "dX":F
    .end local v6    # "dY":F
    :cond_a
    move v5, v14

    .line 247
    .restart local v5    # "dX":F
    move v6, v7

    .restart local v6    # "dY":F
    goto :goto_5

    .line 261
    .end local v5    # "dX":F
    .end local v6    # "dY":F
    .end local v7    # "drawLong":F
    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Lim/doit/pro/ui/component/CirclePageIndicator;->mCurrentPage:I

    move/from16 v17, v0

    goto/16 :goto_3

    .line 269
    .restart local v4    # "cx":F
    :cond_c
    move v5, v14

    .line 270
    .restart local v5    # "dX":F
    add-float v6, v9, v4

    .restart local v6    # "dY":F
    goto/16 :goto_4
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 438
    iget v0, p0, Lim/doit/pro/ui/component/CirclePageIndicator;->mOrientation:I

    if-nez v0, :cond_0

    .line 439
    invoke-direct {p0, p1}, Lim/doit/pro/ui/component/CirclePageIndicator;->measureLong(I)I

    move-result v0

    invoke-direct {p0, p2}, Lim/doit/pro/ui/component/CirclePageIndicator;->measureShort(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lim/doit/pro/ui/component/CirclePageIndicator;->setMeasuredDimension(II)V

    .line 443
    :goto_0
    return-void

    .line 441
    :cond_0
    invoke-direct {p0, p1}, Lim/doit/pro/ui/component/CirclePageIndicator;->measureShort(I)I

    move-result v0

    invoke-direct {p0, p2}, Lim/doit/pro/ui/component/CirclePageIndicator;->measureLong(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lim/doit/pro/ui/component/CirclePageIndicator;->setMeasuredDimension(II)V

    goto :goto_0
.end method

.method public onPageScrollStateChanged(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 395
    iput p1, p0, Lim/doit/pro/ui/component/CirclePageIndicator;->mScrollState:I

    .line 397
    iget-object v0, p0, Lim/doit/pro/ui/component/CirclePageIndicator;->mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    .line 398
    iget-object v0, p0, Lim/doit/pro/ui/component/CirclePageIndicator;->mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    .line 400
    :cond_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 404
    iput p1, p0, Lim/doit/pro/ui/component/CirclePageIndicator;->mCurrentPage:I

    .line 405
    iput p2, p0, Lim/doit/pro/ui/component/CirclePageIndicator;->mPageOffset:F

    .line 406
    invoke-virtual {p0}, Lim/doit/pro/ui/component/CirclePageIndicator;->invalidate()V

    .line 408
    iget-object v0, p0, Lim/doit/pro/ui/component/CirclePageIndicator;->mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    .line 409
    iget-object v0, p0, Lim/doit/pro/ui/component/CirclePageIndicator;->mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1, p2, p3}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    .line 411
    :cond_0
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 415
    iget-boolean v0, p0, Lim/doit/pro/ui/component/CirclePageIndicator;->mSnap:Z

    if-nez v0, :cond_0

    iget v0, p0, Lim/doit/pro/ui/component/CirclePageIndicator;->mScrollState:I

    if-nez v0, :cond_1

    .line 416
    :cond_0
    iput p1, p0, Lim/doit/pro/ui/component/CirclePageIndicator;->mCurrentPage:I

    .line 417
    iput p1, p0, Lim/doit/pro/ui/component/CirclePageIndicator;->mSnapPage:I

    .line 418
    invoke-virtual {p0}, Lim/doit/pro/ui/component/CirclePageIndicator;->invalidate()V

    .line 421
    :cond_1
    iget-object v0, p0, Lim/doit/pro/ui/component/CirclePageIndicator;->mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_2

    .line 422
    iget-object v0, p0, Lim/doit/pro/ui/component/CirclePageIndicator;->mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 424
    :cond_2
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 501
    move-object v0, p1

    check-cast v0, Lim/doit/pro/ui/component/CirclePageIndicator$SavedState;

    .line 502
    .local v0, "savedState":Lim/doit/pro/ui/component/CirclePageIndicator$SavedState;
    invoke-virtual {v0}, Lim/doit/pro/ui/component/CirclePageIndicator$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 503
    iget v1, v0, Lim/doit/pro/ui/component/CirclePageIndicator$SavedState;->currentPage:I

    iput v1, p0, Lim/doit/pro/ui/component/CirclePageIndicator;->mCurrentPage:I

    .line 504
    iget v1, v0, Lim/doit/pro/ui/component/CirclePageIndicator$SavedState;->currentPage:I

    iput v1, p0, Lim/doit/pro/ui/component/CirclePageIndicator;->mSnapPage:I

    .line 505
    invoke-virtual {p0}, Lim/doit/pro/ui/component/CirclePageIndicator;->requestLayout()V

    .line 506
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 510
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 511
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Lim/doit/pro/ui/component/CirclePageIndicator$SavedState;

    invoke-direct {v0, v1}, Lim/doit/pro/ui/component/CirclePageIndicator$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 512
    .local v0, "savedState":Lim/doit/pro/ui/component/CirclePageIndicator$SavedState;
    iget v2, p0, Lim/doit/pro/ui/component/CirclePageIndicator;->mCurrentPage:I

    iput v2, v0, Lim/doit/pro/ui/component/CirclePageIndicator$SavedState;->currentPage:I

    .line 513
    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 276
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 277
    const/4 v12, 0x1

    .line 353
    :goto_0
    return v12

    .line 279
    :cond_0
    iget-object v12, p0, Lim/doit/pro/ui/component/CirclePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-eqz v12, :cond_1

    iget-object v12, p0, Lim/doit/pro/ui/component/CirclePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v12}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v12

    invoke-virtual {v12}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v12

    if-nez v12, :cond_2

    .line 280
    :cond_1
    const/4 v12, 0x0

    goto :goto_0

    .line 283
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 285
    .local v0, "action":I
    and-int/lit16 v12, v0, 0xff

    packed-switch v12, :pswitch_data_0

    .line 353
    :cond_3
    :goto_1
    :pswitch_0
    const/4 v12, 0x1

    goto :goto_0

    .line 287
    :pswitch_1
    const/4 v12, 0x0

    invoke-static {p1, v12}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v12

    iput v12, p0, Lim/doit/pro/ui/component/CirclePageIndicator;->mActivePointerId:I

    .line 288
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v12

    iput v12, p0, Lim/doit/pro/ui/component/CirclePageIndicator;->mLastMotionX:F

    goto :goto_1

    .line 292
    :pswitch_2
    iget v12, p0, Lim/doit/pro/ui/component/CirclePageIndicator;->mActivePointerId:I

    invoke-static {p1, v12}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v1

    .line 293
    .local v1, "activePointerIndex":I
    invoke-static {p1, v1}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v11

    .line 294
    .local v11, "x":F
    iget v12, p0, Lim/doit/pro/ui/component/CirclePageIndicator;->mLastMotionX:F

    sub-float v3, v11, v12

    .line 296
    .local v3, "deltaX":F
    iget-boolean v12, p0, Lim/doit/pro/ui/component/CirclePageIndicator;->mIsDragging:Z

    if-nez v12, :cond_4

    .line 297
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v12

    iget v13, p0, Lim/doit/pro/ui/component/CirclePageIndicator;->mTouchSlop:I

    int-to-float v13, v13

    cmpl-float v12, v12, v13

    if-lez v12, :cond_4

    .line 298
    const/4 v12, 0x1

    iput-boolean v12, p0, Lim/doit/pro/ui/component/CirclePageIndicator;->mIsDragging:Z

    .line 302
    :cond_4
    iget-boolean v12, p0, Lim/doit/pro/ui/component/CirclePageIndicator;->mIsDragging:Z

    if-eqz v12, :cond_3

    .line 303
    iput v11, p0, Lim/doit/pro/ui/component/CirclePageIndicator;->mLastMotionX:F

    .line 304
    iget-object v12, p0, Lim/doit/pro/ui/component/CirclePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v12}, Landroid/support/v4/view/ViewPager;->isFakeDragging()Z

    move-result v12

    if-nez v12, :cond_5

    iget-object v12, p0, Lim/doit/pro/ui/component/CirclePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v12}, Landroid/support/v4/view/ViewPager;->beginFakeDrag()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 305
    :cond_5
    iget-object v12, p0, Lim/doit/pro/ui/component/CirclePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v12, v3}, Landroid/support/v4/view/ViewPager;->fakeDragBy(F)V

    goto :goto_1

    .line 314
    .end local v1    # "activePointerIndex":I
    .end local v3    # "deltaX":F
    .end local v11    # "x":F
    :pswitch_3
    iget-boolean v12, p0, Lim/doit/pro/ui/component/CirclePageIndicator;->mIsDragging:Z

    if-nez v12, :cond_7

    .line 315
    iget-object v12, p0, Lim/doit/pro/ui/component/CirclePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v12}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v12

    invoke-virtual {v12}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v2

    .line 316
    .local v2, "count":I
    invoke-virtual {p0}, Lim/doit/pro/ui/component/CirclePageIndicator;->getWidth()I

    move-result v10

    .line 317
    .local v10, "width":I
    int-to-float v12, v10

    const/high16 v13, 0x40000000    # 2.0f

    div-float v4, v12, v13

    .line 318
    .local v4, "halfWidth":F
    int-to-float v12, v10

    const/high16 v13, 0x40c00000    # 6.0f

    div-float v9, v12, v13

    .line 320
    .local v9, "sixthWidth":F
    iget v12, p0, Lim/doit/pro/ui/component/CirclePageIndicator;->mCurrentPage:I

    if-lez v12, :cond_6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v12

    sub-float v13, v4, v9

    cmpg-float v12, v12, v13

    if-gez v12, :cond_6

    .line 321
    iget-object v12, p0, Lim/doit/pro/ui/component/CirclePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget v13, p0, Lim/doit/pro/ui/component/CirclePageIndicator;->mCurrentPage:I

    add-int/lit8 v13, v13, -0x1

    invoke-virtual {v12, v13}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 322
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 323
    :cond_6
    iget v12, p0, Lim/doit/pro/ui/component/CirclePageIndicator;->mCurrentPage:I

    add-int/lit8 v13, v2, -0x1

    if-ge v12, v13, :cond_7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v12

    add-float v13, v4, v9

    cmpl-float v12, v12, v13

    if-lez v12, :cond_7

    .line 324
    iget-object v12, p0, Lim/doit/pro/ui/component/CirclePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget v13, p0, Lim/doit/pro/ui/component/CirclePageIndicator;->mCurrentPage:I

    add-int/lit8 v13, v13, 0x1

    invoke-virtual {v12, v13}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 325
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 329
    .end local v2    # "count":I
    .end local v4    # "halfWidth":F
    .end local v9    # "sixthWidth":F
    .end local v10    # "width":I
    :cond_7
    const/4 v12, 0x0

    iput-boolean v12, p0, Lim/doit/pro/ui/component/CirclePageIndicator;->mIsDragging:Z

    .line 330
    const/4 v12, -0x1

    iput v12, p0, Lim/doit/pro/ui/component/CirclePageIndicator;->mActivePointerId:I

    .line 331
    iget-object v12, p0, Lim/doit/pro/ui/component/CirclePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v12}, Landroid/support/v4/view/ViewPager;->isFakeDragging()Z

    move-result v12

    if-eqz v12, :cond_3

    iget-object v12, p0, Lim/doit/pro/ui/component/CirclePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v12}, Landroid/support/v4/view/ViewPager;->endFakeDrag()V

    goto/16 :goto_1

    .line 335
    :pswitch_4
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v5

    .line 336
    .local v5, "index":I
    invoke-static {p1, v5}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v11

    .line 337
    .restart local v11    # "x":F
    iput v11, p0, Lim/doit/pro/ui/component/CirclePageIndicator;->mLastMotionX:F

    .line 338
    invoke-static {p1, v5}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v12

    iput v12, p0, Lim/doit/pro/ui/component/CirclePageIndicator;->mActivePointerId:I

    goto/16 :goto_1

    .line 343
    .end local v5    # "index":I
    .end local v11    # "x":F
    :pswitch_5
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v8

    .line 344
    .local v8, "pointerIndex":I
    invoke-static {p1, v8}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v7

    .line 345
    .local v7, "pointerId":I
    iget v12, p0, Lim/doit/pro/ui/component/CirclePageIndicator;->mActivePointerId:I

    if-ne v7, v12, :cond_8

    .line 346
    if-nez v8, :cond_9

    const/4 v6, 0x1

    .line 347
    .local v6, "newPointerIndex":I
    :goto_2
    invoke-static {p1, v6}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v12

    iput v12, p0, Lim/doit/pro/ui/component/CirclePageIndicator;->mActivePointerId:I

    .line 349
    .end local v6    # "newPointerIndex":I
    :cond_8
    iget v12, p0, Lim/doit/pro/ui/component/CirclePageIndicator;->mActivePointerId:I

    invoke-static {p1, v12}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v12

    invoke-static {p1, v12}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v12

    iput v12, p0, Lim/doit/pro/ui/component/CirclePageIndicator;->mLastMotionX:F

    goto/16 :goto_1

    .line 346
    :cond_9
    const/4 v6, 0x0

    goto :goto_2

    .line 285
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public setCentered(Z)V
    .locals 0
    .param p1, "centered"    # Z

    .prologue
    .line 112
    iput-boolean p1, p0, Lim/doit/pro/ui/component/CirclePageIndicator;->mCentered:Z

    .line 113
    invoke-virtual {p0}, Lim/doit/pro/ui/component/CirclePageIndicator;->invalidate()V

    .line 114
    return-void
.end method

.method public setCurrentItem(I)V
    .locals 2
    .param p1, "item"    # I

    .prologue
    .line 380
    iget-object v0, p0, Lim/doit/pro/ui/component/CirclePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-nez v0, :cond_0

    .line 381
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ViewPager has not been bound."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 383
    :cond_0
    iget-object v0, p0, Lim/doit/pro/ui/component/CirclePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 384
    iput p1, p0, Lim/doit/pro/ui/component/CirclePageIndicator;->mCurrentPage:I

    .line 385
    invoke-virtual {p0}, Lim/doit/pro/ui/component/CirclePageIndicator;->invalidate()V

    .line 386
    return-void
.end method

.method public setFillColor(I)V
    .locals 1
    .param p1, "fillColor"    # I

    .prologue
    .line 130
    iget-object v0, p0, Lim/doit/pro/ui/component/CirclePageIndicator;->mPaintFill:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 131
    invoke-virtual {p0}, Lim/doit/pro/ui/component/CirclePageIndicator;->invalidate()V

    .line 132
    return-void
.end method

.method public setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .prologue
    .line 428
    iput-object p1, p0, Lim/doit/pro/ui/component/CirclePageIndicator;->mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 429
    return-void
.end method

.method public setOrientation(I)V
    .locals 2
    .param p1, "orientation"    # I

    .prologue
    .line 139
    packed-switch p1, :pswitch_data_0

    .line 147
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Orientation must be either HORIZONTAL or VERTICAL."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 142
    :pswitch_0
    iput p1, p0, Lim/doit/pro/ui/component/CirclePageIndicator;->mOrientation:I

    .line 143
    invoke-virtual {p0}, Lim/doit/pro/ui/component/CirclePageIndicator;->requestLayout()V

    .line 149
    return-void

    .line 139
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setPageColor(I)V
    .locals 1
    .param p1, "pageColor"    # I

    .prologue
    .line 121
    iget-object v0, p0, Lim/doit/pro/ui/component/CirclePageIndicator;->mPaintPageFill:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 122
    invoke-virtual {p0}, Lim/doit/pro/ui/component/CirclePageIndicator;->invalidate()V

    .line 123
    return-void
.end method

.method public setRadius(F)V
    .locals 0
    .param p1, "radius"    # F

    .prologue
    .line 174
    iput p1, p0, Lim/doit/pro/ui/component/CirclePageIndicator;->mRadius:F

    .line 175
    invoke-virtual {p0}, Lim/doit/pro/ui/component/CirclePageIndicator;->invalidate()V

    .line 176
    return-void
.end method

.method public setSnap(Z)V
    .locals 0
    .param p1, "snap"    # Z

    .prologue
    .line 183
    iput-boolean p1, p0, Lim/doit/pro/ui/component/CirclePageIndicator;->mSnap:Z

    .line 184
    invoke-virtual {p0}, Lim/doit/pro/ui/component/CirclePageIndicator;->invalidate()V

    .line 185
    return-void
.end method

.method public setStrokeColor(I)V
    .locals 1
    .param p1, "strokeColor"    # I

    .prologue
    .line 156
    iget-object v0, p0, Lim/doit/pro/ui/component/CirclePageIndicator;->mPaintStroke:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 157
    invoke-virtual {p0}, Lim/doit/pro/ui/component/CirclePageIndicator;->invalidate()V

    .line 158
    return-void
.end method

.method public setStrokeWidth(F)V
    .locals 1
    .param p1, "strokeWidth"    # F

    .prologue
    .line 165
    iget-object v0, p0, Lim/doit/pro/ui/component/CirclePageIndicator;->mPaintStroke:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 166
    invoke-virtual {p0}, Lim/doit/pro/ui/component/CirclePageIndicator;->invalidate()V

    .line 167
    return-void
.end method

.method public setViewPager(Landroid/support/v4/view/ViewPager;)V
    .locals 2
    .param p1, "view"    # Landroid/support/v4/view/ViewPager;

    .prologue
    .line 358
    iget-object v0, p0, Lim/doit/pro/ui/component/CirclePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-ne v0, p1, :cond_0

    .line 370
    :goto_0
    return-void

    .line 361
    :cond_0
    iget-object v0, p0, Lim/doit/pro/ui/component/CirclePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_1

    .line 362
    iget-object v0, p0, Lim/doit/pro/ui/component/CirclePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 364
    :cond_1
    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    if-nez v0, :cond_2

    .line 365
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ViewPager does not have adapter instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 367
    :cond_2
    iput-object p1, p0, Lim/doit/pro/ui/component/CirclePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 368
    iget-object v0, p0, Lim/doit/pro/ui/component/CirclePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 369
    invoke-virtual {p0}, Lim/doit/pro/ui/component/CirclePageIndicator;->invalidate()V

    goto :goto_0
.end method

.method public setViewPager(Landroid/support/v4/view/ViewPager;I)V
    .locals 0
    .param p1, "view"    # Landroid/support/v4/view/ViewPager;
    .param p2, "initialPosition"    # I

    .prologue
    .line 374
    invoke-virtual {p0, p1}, Lim/doit/pro/ui/component/CirclePageIndicator;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 375
    invoke-virtual {p0, p2}, Lim/doit/pro/ui/component/CirclePageIndicator;->setCurrentItem(I)V

    .line 376
    return-void
.end method
