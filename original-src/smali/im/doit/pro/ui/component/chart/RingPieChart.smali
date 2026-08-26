.class public Lim/doit/pro/ui/component/chart/RingPieChart;
.super Lim/doit/pro/ui/component/chart/BaseView;
.source "RingPieChart.java"


# instance fields
.field private final DEFAULT_DESC_CIRCLE_RADIUS:F

.field private final DEFAULT_DESC_CIRCLE_RIGHT:F

.field private final DEFAULT_DESC_RIGHT:F

.field private final DEFAULT_DESC_TEXT_COLOR:I

.field private final DEFAULT_DESC_TEXT_SIZE:F

.field private final DEFAULT_TITLE_BOTTOM:F

.field private final DEFAULT_TITLE_TEXT_COLOR:I

.field private final DEFAULT_TITLE_TEXT_SIZE:F

.field private final DEFAULT_TITLE_TOP:F

.field private final PIE_START:F

.field private mDatas:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lim/doit/pro/ui/component/chart/RingPieChartItem;",
            ">;"
        }
    .end annotation
.end field

.field private mDescCirclePaint:Landroid/graphics/Paint;

.field private mDescCircleRadius:F

.field private mDescCircleRight:F

.field private mDescPaint:Landroid/graphics/Paint;

.field private mDescRight:F

.field private mDescTextColor:I

.field private mDescTextSize:F

.field private mDescTitleMaxHeight:F

.field private mDescTop:F

.field private mDescTotalWidth:F

.field private mInnerCirclePaint:Landroid/graphics/Paint;

.field private mInnerColor:I

.field private mInnerRadius:F

.field private mPieSpace:F

.field private mPieSpaceColor:I

.field private mPieTextColor:I

.field private mPieTextPaint:Landroid/graphics/Paint;

.field private mPieTextSize:F

.field private mRingPaint:Landroid/graphics/Paint;

.field private mRingRadius:F

.field private mRingSpaceLinePaint:Landroid/graphics/Paint;

.field private mTextRadius:F

.field private mTitle:Ljava/lang/String;

.field private mTitleBottom:F

.field private mTitlePaint:Landroid/graphics/Paint;

.field private mTitleTextColor:I

.field private mTitleTextSize:F

.field private mTitleTop:F

.field private mXCenter:F

.field private mYCenter:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/high16 v3, 0x41800000    # 16.0f

    const/4 v2, 0x0

    const/high16 v1, 0x41200000    # 10.0f

    .line 76
    invoke-direct {p0, p1}, Lim/doit/pro/ui/component/chart/BaseView;-><init>(Landroid/content/Context;)V

    .line 20
    const/high16 v0, -0x3d4c0000    # -90.0f

    iput v0, p0, Lim/doit/pro/ui/component/chart/RingPieChart;->PIE_START:F

    .line 22
    iput v3, p0, Lim/doit/pro/ui/component/chart/RingPieChart;->DEFAULT_TITLE_TEXT_SIZE:F

    .line 23
    const/high16 v0, -0x1000000

    iput v0, p0, Lim/doit/pro/ui/component/chart/RingPieChart;->DEFAULT_TITLE_TEXT_COLOR:I

    .line 24
    iput v2, p0, Lim/doit/pro/ui/component/chart/RingPieChart;->DEFAULT_TITLE_TOP:F

    .line 25
    iput v2, p0, Lim/doit/pro/ui/component/chart/RingPieChart;->DEFAULT_TITLE_BOTTOM:F

    .line 27
    iput v3, p0, Lim/doit/pro/ui/component/chart/RingPieChart;->DEFAULT_DESC_TEXT_SIZE:F

    .line 28
    const v0, -0x777778

    iput v0, p0, Lim/doit/pro/ui/component/chart/RingPieChart;->DEFAULT_DESC_TEXT_COLOR:I

    .line 29
    iput v1, p0, Lim/doit/pro/ui/component/chart/RingPieChart;->DEFAULT_DESC_RIGHT:F

    .line 30
    iput v1, p0, Lim/doit/pro/ui/component/chart/RingPieChart;->DEFAULT_DESC_CIRCLE_RADIUS:F

    .line 31
    iput v1, p0, Lim/doit/pro/ui/component/chart/RingPieChart;->DEFAULT_DESC_CIRCLE_RIGHT:F

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/high16 v3, 0x41800000    # 16.0f

    const/4 v2, 0x0

    const/high16 v1, 0x41200000    # 10.0f

    .line 80
    invoke-direct {p0, p1, p2}, Lim/doit/pro/ui/component/chart/BaseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    const/high16 v0, -0x3d4c0000    # -90.0f

    iput v0, p0, Lim/doit/pro/ui/component/chart/RingPieChart;->PIE_START:F

    .line 22
    iput v3, p0, Lim/doit/pro/ui/component/chart/RingPieChart;->DEFAULT_TITLE_TEXT_SIZE:F

    .line 23
    const/high16 v0, -0x1000000

    iput v0, p0, Lim/doit/pro/ui/component/chart/RingPieChart;->DEFAULT_TITLE_TEXT_COLOR:I

    .line 24
    iput v2, p0, Lim/doit/pro/ui/component/chart/RingPieChart;->DEFAULT_TITLE_TOP:F

    .line 25
    iput v2, p0, Lim/doit/pro/ui/component/chart/RingPieChart;->DEFAULT_TITLE_BOTTOM:F

    .line 27
    iput v3, p0, Lim/doit/pro/ui/component/chart/RingPieChart;->DEFAULT_DESC_TEXT_SIZE:F

    .line 28
    const v0, -0x777778

    iput v0, p0, Lim/doit/pro/ui/component/chart/RingPieChart;->DEFAULT_DESC_TEXT_COLOR:I

    .line 29
    iput v1, p0, Lim/doit/pro/ui/component/chart/RingPieChart;->DEFAULT_DESC_RIGHT:F

    .line 30
    iput v1, p0, Lim/doit/pro/ui/component/chart/RingPieChart;->DEFAULT_DESC_CIRCLE_RADIUS:F

    .line 31
    iput v1, p0, Lim/doit/pro/ui/component/chart/RingPieChart;->DEFAULT_DESC_CIRCLE_RIGHT:F

    .line 81
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/high16 v3, 0x41800000    # 16.0f

    const/4 v2, 0x0

    const/high16 v1, 0x41200000    # 10.0f

    .line 84
    invoke-direct {p0, p1, p2, p3}, Lim/doit/pro/ui/component/chart/BaseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 20
    const/high16 v0, -0x3d4c0000    # -90.0f

    iput v0, p0, Lim/doit/pro/ui/component/chart/RingPieChart;->PIE_START:F

    .line 22
    iput v3, p0, Lim/doit/pro/ui/component/chart/RingPieChart;->DEFAULT_TITLE_TEXT_SIZE:F

    .line 23
    const/high16 v0, -0x1000000

    iput v0, p0, Lim/doit/pro/ui/component/chart/RingPieChart;->DEFAULT_TITLE_TEXT_COLOR:I

    .line 24
    iput v2, p0, Lim/doit/pro/ui/component/chart/RingPieChart;->DEFAULT_TITLE_TOP:F

    .line 25
    iput v2, p0, Lim/doit/pro/ui/component/chart/RingPieChart;->DEFAULT_TITLE_BOTTOM:F

    .line 27
    iput v3, p0, Lim/doit/pro/ui/component/chart/RingPieChart;->DEFAULT_DESC_TEXT_SIZE:F

    .line 28
    const v0, -0x777778

    iput v0, p0, Lim/doit/pro/ui/component/chart/RingPieChart;->DEFAULT_DESC_TEXT_COLOR:I

    .line 29
    iput v1, p0, Lim/doit/pro/ui/component/chart/RingPieChart;->DEFAULT_DESC_RIGHT:F

    .line 30
    iput v1, p0, Lim/doit/pro/ui/component/chart/RingPieChart;->DEFAULT_DESC_CIRCLE_RADIUS:F

    .line 31
    iput v1, p0, Lim/doit/pro/ui/component/chart/RingPieChart;->DEFAULT_DESC_CIRCLE_RIGHT:F

    .line 85
    return-void
.end method

.method private drawDesc(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v9, 0x40000000    # 2.0f

    .line 312
    iget-object v4, p0, Lim/doit/pro/ui/component/chart/RingPieChart;->mDatas:Ljava/util/ArrayList;

    invoke-static {v4}, Lim/doit/pro/utils/CollectionUtils;->isEmpty(Ljava/util/List;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 332
    :cond_0
    return-void

    .line 316
    :cond_1
    invoke-direct {p0}, Lim/doit/pro/ui/component/chart/RingPieChart;->getChartWidth()F

    move-result v0

    .line 317
    .local v0, "chartWidth":F
    invoke-direct {p0}, Lim/doit/pro/ui/component/chart/RingPieChart;->getChartStartX()F

    move-result v4

    iget v5, p0, Lim/doit/pro/ui/component/chart/RingPieChart;->mDescTotalWidth:F

    sub-float v5, v0, v5

    div-float/2addr v5, v9

    add-float v2, v4, v5

    .line 318
    .local v2, "startX":F
    invoke-direct {p0}, Lim/doit/pro/ui/component/chart/RingPieChart;->getChartStartY()F

    move-result v4

    invoke-direct {p0}, Lim/doit/pro/ui/component/chart/RingPieChart;->getTitleHeight()F

    move-result v5

    add-float/2addr v4, v5

    iget v5, p0, Lim/doit/pro/ui/component/chart/RingPieChart;->mRingRadius:F

    mul-float/2addr v5, v9

    add-float/2addr v4, v5

    .line 319
    iget v5, p0, Lim/doit/pro/ui/component/chart/RingPieChart;->mDescTop:F

    .line 318
    add-float v3, v4, v5

    .line 320
    .local v3, "startY":F
    iget-object v4, p0, Lim/doit/pro/ui/component/chart/RingPieChart;->mDatas:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lim/doit/pro/ui/component/chart/RingPieChartItem;

    .line 321
    .local v1, "item":Lim/doit/pro/ui/component/chart/RingPieChartItem;
    iget-object v5, p0, Lim/doit/pro/ui/component/chart/RingPieChart;->mDescCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Lim/doit/pro/ui/component/chart/RingPieChartItem;->getColor()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 322
    iget v5, p0, Lim/doit/pro/ui/component/chart/RingPieChart;->mDescCircleRadius:F

    add-float/2addr v5, v2

    .line 323
    iget v6, p0, Lim/doit/pro/ui/component/chart/RingPieChart;->mDescCircleRadius:F

    add-float/2addr v6, v3

    iget v7, p0, Lim/doit/pro/ui/component/chart/RingPieChart;->mDescCircleRadius:F

    iget-object v8, p0, Lim/doit/pro/ui/component/chart/RingPieChart;->mDescCirclePaint:Landroid/graphics/Paint;

    .line 322
    invoke-virtual {p1, v5, v6, v7, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 325
    iget v5, p0, Lim/doit/pro/ui/component/chart/RingPieChart;->mDescCircleRadius:F

    mul-float/2addr v5, v9

    add-float/2addr v2, v5

    .line 326
    iget v5, p0, Lim/doit/pro/ui/component/chart/RingPieChart;->mDescCircleRight:F

    add-float/2addr v2, v5

    .line 328
    invoke-virtual {v1}, Lim/doit/pro/ui/component/chart/RingPieChartItem;->getName()Ljava/lang/String;

    move-result-object v5

    .line 329
    iget v6, p0, Lim/doit/pro/ui/component/chart/RingPieChart;->mDescTitleMaxHeight:F

    add-float/2addr v6, v3

    iget-object v7, p0, Lim/doit/pro/ui/component/chart/RingPieChart;->mDescPaint:Landroid/graphics/Paint;

    .line 328
    invoke-virtual {p1, v5, v2, v6, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 330
    iget-object v5, p0, Lim/doit/pro/ui/component/chart/RingPieChart;->mDescPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Lim/doit/pro/ui/component/chart/RingPieChartItem;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v5

    iget v6, p0, Lim/doit/pro/ui/component/chart/RingPieChart;->mDescRight:F

    add-float/2addr v5, v6

    add-float/2addr v2, v5

    goto :goto_0
.end method

.method private drawPieChart(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v7, 0x40000000    # 2.0f

    .line 221
    const/high16 v2, -0x3d4c0000    # -90.0f

    .line 223
    .local v2, "start":F
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    .line 224
    .local v1, "oval":Landroid/graphics/RectF;
    iget v0, p0, Lim/doit/pro/ui/component/chart/RingPieChart;->mXCenter:F

    iget v4, p0, Lim/doit/pro/ui/component/chart/RingPieChart;->mRingRadius:F

    sub-float/2addr v0, v4

    iput v0, v1, Landroid/graphics/RectF;->left:F

    .line 225
    iget v0, p0, Lim/doit/pro/ui/component/chart/RingPieChart;->mYCenter:F

    iget v4, p0, Lim/doit/pro/ui/component/chart/RingPieChart;->mRingRadius:F

    sub-float/2addr v0, v4

    iput v0, v1, Landroid/graphics/RectF;->top:F

    .line 226
    iget v0, p0, Lim/doit/pro/ui/component/chart/RingPieChart;->mRingRadius:F

    mul-float/2addr v0, v7

    iget v4, p0, Lim/doit/pro/ui/component/chart/RingPieChart;->mXCenter:F

    iget v5, p0, Lim/doit/pro/ui/component/chart/RingPieChart;->mRingRadius:F

    sub-float/2addr v4, v5

    add-float/2addr v0, v4

    iput v0, v1, Landroid/graphics/RectF;->right:F

    .line 227
    iget v0, p0, Lim/doit/pro/ui/component/chart/RingPieChart;->mRingRadius:F

    mul-float/2addr v0, v7

    iget v4, p0, Lim/doit/pro/ui/component/chart/RingPieChart;->mYCenter:F

    iget v5, p0, Lim/doit/pro/ui/component/chart/RingPieChart;->mRingRadius:F

    sub-float/2addr v4, v5

    add-float/2addr v0, v4

    iput v0, v1, Landroid/graphics/RectF;->bottom:F

    .line 229
    iget-object v0, p0, Lim/doit/pro/ui/component/chart/RingPieChart;->mDatas:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 238
    return-void

    .line 229
    :cond_1
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lim/doit/pro/ui/component/chart/RingPieChartItem;

    .line 230
    .local v6, "item":Lim/doit/pro/ui/component/chart/RingPieChartItem;
    invoke-virtual {v6}, Lim/doit/pro/ui/component/chart/RingPieChartItem;->getPercentage()F

    move-result v0

    const/4 v4, 0x0

    cmpl-float v0, v0, v4

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lim/doit/pro/ui/component/chart/RingPieChart;->mRingPaint:Landroid/graphics/Paint;

    invoke-virtual {v6}, Lim/doit/pro/ui/component/chart/RingPieChartItem;->getColor()I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 234
    invoke-virtual {v6}, Lim/doit/pro/ui/component/chart/RingPieChartItem;->getPercentage()F

    move-result v0

    const/high16 v4, 0x43b40000    # 360.0f

    mul-float v3, v0, v4

    .line 235
    .local v3, "ringRadian":F
    const/4 v4, 0x1

    iget-object v5, p0, Lim/doit/pro/ui/component/chart/RingPieChart;->mRingPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 236
    add-float/2addr v2, v3

    goto :goto_0
.end method

.method private drawPieSpace(Landroid/graphics/Canvas;)V
    .locals 18
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 281
    const/4 v12, 0x0

    .line 282
    .local v12, "start":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lim/doit/pro/ui/component/chart/RingPieChart;->mDatas:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_0
    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 309
    return-void

    .line 282
    :cond_1
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lim/doit/pro/ui/component/chart/RingPieChartItem;

    .line 283
    .local v10, "item":Lim/doit/pro/ui/component/chart/RingPieChartItem;
    invoke-virtual {v10}, Lim/doit/pro/ui/component/chart/RingPieChartItem;->getPercentage()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    .line 287
    const/high16 v2, 0x43b40000    # 360.0f

    rem-float/2addr v12, v2

    .line 289
    const/high16 v2, 0x42b40000    # 90.0f

    rem-float v2, v12, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-double v2, v2

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v2, v4

    const-wide v4, 0x4066800000000000L    # 180.0

    div-double v8, v2, v4

    .line 290
    .local v8, "angleRadians":D
    const/4 v2, 0x0

    cmpl-float v2, v12, v2

    if-ltz v2, :cond_2

    const/high16 v2, 0x42b40000    # 90.0f

    cmpg-float v2, v12, v2

    if-ltz v2, :cond_3

    :cond_2
    const/high16 v2, 0x43340000    # 180.0f

    cmpl-float v2, v12, v2

    if-ltz v2, :cond_7

    const/high16 v2, 0x43870000    # 270.0f

    cmpg-float v2, v12, v2

    if-gez v2, :cond_7

    .line 291
    :cond_3
    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    move-object/from16 v0, p0

    iget v4, v0, Lim/doit/pro/ui/component/chart/RingPieChart;->mRingRadius:F

    float-to-double v4, v4

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v14

    .line 292
    .local v14, "x":D
    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    move-object/from16 v0, p0

    iget v4, v0, Lim/doit/pro/ui/component/chart/RingPieChart;->mRingRadius:F

    float-to-double v4, v4

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v16

    .line 297
    .local v16, "y":D
    :goto_1
    const/high16 v2, 0x43340000    # 180.0f

    cmpl-float v2, v12, v2

    if-ltz v2, :cond_4

    const/high16 v2, 0x43b40000    # 360.0f

    cmpg-float v2, v12, v2

    if-gtz v2, :cond_4

    .line 298
    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    mul-double/2addr v14, v2

    .line 300
    :cond_4
    const/high16 v2, 0x43870000    # 270.0f

    cmpl-float v2, v12, v2

    if-gez v2, :cond_5

    const/high16 v2, 0x42b40000    # 90.0f

    cmpg-float v2, v12, v2

    if-gtz v2, :cond_6

    .line 301
    :cond_5
    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    mul-double v16, v16, v2

    .line 303
    :cond_6
    move-object/from16 v0, p0

    iget v3, v0, Lim/doit/pro/ui/component/chart/RingPieChart;->mXCenter:F

    move-object/from16 v0, p0

    iget v4, v0, Lim/doit/pro/ui/component/chart/RingPieChart;->mYCenter:F

    move-object/from16 v0, p0

    iget v2, v0, Lim/doit/pro/ui/component/chart/RingPieChart;->mXCenter:F

    float-to-double v6, v2

    add-double/2addr v6, v14

    double-to-float v5, v6

    .line 304
    move-object/from16 v0, p0

    iget v2, v0, Lim/doit/pro/ui/component/chart/RingPieChart;->mYCenter:F

    float-to-double v6, v2

    add-double v6, v6, v16

    double-to-float v6, v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lim/doit/pro/ui/component/chart/RingPieChart;->mRingSpaceLinePaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    .line 303
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 306
    invoke-virtual {v10}, Lim/doit/pro/ui/component/chart/RingPieChartItem;->getPercentage()F

    move-result v2

    const/high16 v3, 0x43b40000    # 360.0f

    mul-float v11, v2, v3

    .line 307
    .local v11, "ringRadian":F
    add-float/2addr v12, v11

    goto/16 :goto_0

    .line 294
    .end local v11    # "ringRadian":F
    .end local v14    # "x":D
    .end local v16    # "y":D
    :cond_7
    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    move-object/from16 v0, p0

    iget v4, v0, Lim/doit/pro/ui/component/chart/RingPieChart;->mRingRadius:F

    float-to-double v4, v4

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v14

    .line 295
    .restart local v14    # "x":D
    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    move-object/from16 v0, p0

    iget v4, v0, Lim/doit/pro/ui/component/chart/RingPieChart;->mRingRadius:F

    float-to-double v4, v4

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v16

    .restart local v16    # "y":D
    goto :goto_1
.end method

.method private drawPieText(Landroid/graphics/Canvas;)V
    .locals 22
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 241
    const/4 v8, 0x0

    .line 242
    .local v8, "start":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lim/doit/pro/ui/component/chart/RingPieChart;->mDatas:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_0
    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-nez v17, :cond_1

    .line 278
    return-void

    .line 242
    :cond_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lim/doit/pro/ui/component/chart/RingPieChartItem;

    .line 243
    .local v6, "item":Lim/doit/pro/ui/component/chart/RingPieChartItem;
    invoke-virtual {v6}, Lim/doit/pro/ui/component/chart/RingPieChartItem;->getPercentage()F

    move-result v17

    const/16 v18, 0x0

    cmpl-float v17, v17, v18

    if-eqz v17, :cond_0

    .line 247
    invoke-virtual {v6}, Lim/doit/pro/ui/component/chart/RingPieChartItem;->getPercentage()F

    move-result v17

    const/high16 v18, 0x43b40000    # 360.0f

    mul-float v7, v17, v18

    .line 248
    .local v7, "ringRadian":F
    new-instance v17, Ljava/lang/StringBuilder;

    const/16 v18, 0x3

    invoke-virtual {v6}, Lim/doit/pro/ui/component/chart/RingPieChartItem;->getPercentage()F

    move-result v19

    const/high16 v20, 0x42c80000    # 100.0f

    mul-float v19, v19, v20

    invoke-static/range {v18 .. v19}, Lim/doit/pro/utils/NumberUtils;->setScale(IF)F

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 251
    .local v9, "title":Ljava/lang/String;
    const/high16 v17, 0x43b40000    # 360.0f

    rem-float v8, v8, v17

    .line 253
    const/high16 v17, 0x40000000    # 2.0f

    div-float v17, v7, v17

    add-float v17, v17, v8

    move/from16 v0, v17

    float-to-double v10, v0

    .line 256
    .local v10, "textAngle":D
    const-wide v18, 0x4056800000000000L    # 90.0

    rem-double v18, v10, v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->abs(D)D

    move-result-wide v18

    const-wide v20, 0x400921fb54442d18L    # Math.PI

    mul-double v18, v18, v20

    const-wide v20, 0x4066800000000000L    # 180.0

    div-double v4, v18, v20

    .line 257
    .local v4, "angleRadians":D
    const-wide/16 v18, 0x0

    cmpl-double v17, v10, v18

    if-ltz v17, :cond_2

    const-wide v18, 0x4056800000000000L    # 90.0

    cmpg-double v17, v10, v18

    if-ltz v17, :cond_3

    .line 258
    :cond_2
    const-wide v18, 0x4066800000000000L    # 180.0

    cmpl-double v17, v10, v18

    if-ltz v17, :cond_7

    const-wide v18, 0x4070e00000000000L    # 270.0

    cmpg-double v17, v10, v18

    if-gez v17, :cond_7

    .line 259
    :cond_3
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v18

    move-object/from16 v0, p0

    iget v0, v0, Lim/doit/pro/ui/component/chart/RingPieChart;->mTextRadius:F

    move/from16 v17, v0

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v20, v0

    mul-double v18, v18, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->abs(D)D

    move-result-wide v12

    .line 260
    .local v12, "x":D
    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v18

    move-object/from16 v0, p0

    iget v0, v0, Lim/doit/pro/ui/component/chart/RingPieChart;->mTextRadius:F

    move/from16 v17, v0

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v20, v0

    mul-double v18, v18, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->abs(D)D

    move-result-wide v14

    .line 265
    .local v14, "y":D
    :goto_1
    const-wide v18, 0x4066800000000000L    # 180.0

    cmpl-double v17, v10, v18

    if-ltz v17, :cond_4

    const-wide v18, 0x4076800000000000L    # 360.0

    cmpg-double v17, v10, v18

    if-gtz v17, :cond_4

    .line 266
    const-wide/high16 v18, -0x4010000000000000L    # -1.0

    mul-double v12, v12, v18

    .line 268
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lim/doit/pro/ui/component/chart/RingPieChart;->mPieTextPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v17

    const/high16 v18, 0x40000000    # 2.0f

    div-float v17, v17, v18

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v18, v0

    sub-double v12, v12, v18

    .line 269
    const-wide v18, 0x4070e00000000000L    # 270.0

    cmpl-double v17, v10, v18

    if-gez v17, :cond_5

    const-wide v18, 0x4056800000000000L    # 90.0

    cmpg-double v17, v10, v18

    if-gtz v17, :cond_6

    .line 270
    :cond_5
    const-wide/high16 v18, -0x4010000000000000L    # -1.0

    mul-double v14, v14, v18

    .line 273
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lim/doit/pro/ui/component/chart/RingPieChart;->mXCenter:F

    move/from16 v17, v0

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v18, v0

    add-double v18, v18, v12

    move-wide/from16 v0, v18

    double-to-float v0, v0

    move/from16 v17, v0

    .line 274
    move-object/from16 v0, p0

    iget v0, v0, Lim/doit/pro/ui/component/chart/RingPieChart;->mYCenter:F

    move/from16 v18, v0

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    add-double v18, v18, v14

    move-wide/from16 v0, v18

    double-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lim/doit/pro/ui/component/chart/RingPieChart;->mPieTextPaint:Landroid/graphics/Paint;

    move-object/from16 v19, v0

    .line 273
    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    move-object/from16 v3, v19

    invoke-virtual {v0, v9, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 276
    add-float/2addr v8, v7

    goto/16 :goto_0

    .line 262
    .end local v12    # "x":D
    .end local v14    # "y":D
    :cond_7
    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v18

    move-object/from16 v0, p0

    iget v0, v0, Lim/doit/pro/ui/component/chart/RingPieChart;->mTextRadius:F

    move/from16 v17, v0

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v20, v0

    mul-double v18, v18, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->abs(D)D

    move-result-wide v12

    .line 263
    .restart local v12    # "x":D
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v18

    move-object/from16 v0, p0

    iget v0, v0, Lim/doit/pro/ui/component/chart/RingPieChart;->mTextRadius:F

    move/from16 v17, v0

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v20, v0

    mul-double v18, v18, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->abs(D)D

    move-result-wide v14

    .restart local v14    # "y":D
    goto/16 :goto_1
.end method

.method private drawRingPie(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 213
    invoke-direct {p0, p1}, Lim/doit/pro/ui/component/chart/RingPieChart;->drawPieChart(Landroid/graphics/Canvas;)V

    .line 214
    invoke-direct {p0, p1}, Lim/doit/pro/ui/component/chart/RingPieChart;->drawPieText(Landroid/graphics/Canvas;)V

    .line 215
    invoke-direct {p0, p1}, Lim/doit/pro/ui/component/chart/RingPieChart;->drawPieSpace(Landroid/graphics/Canvas;)V

    .line 217
    iget v0, p0, Lim/doit/pro/ui/component/chart/RingPieChart;->mXCenter:F

    iget v1, p0, Lim/doit/pro/ui/component/chart/RingPieChart;->mYCenter:F

    iget v2, p0, Lim/doit/pro/ui/component/chart/RingPieChart;->mInnerRadius:F

    iget-object v3, p0, Lim/doit/pro/ui/component/chart/RingPieChart;->mInnerCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 218
    return-void
.end method

.method private drawTitle(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 206
    invoke-direct {p0}, Lim/doit/pro/ui/component/chart/RingPieChart;->getChartStartX()F

    move-result v2

    .line 207
    invoke-direct {p0}, Lim/doit/pro/ui/component/chart/RingPieChart;->getChartWidth()F

    move-result v3

    iget-object v4, p0, Lim/doit/pro/ui/component/chart/RingPieChart;->mTitlePaint:Landroid/graphics/Paint;

    iget-object v5, p0, Lim/doit/pro/ui/component/chart/RingPieChart;->mTitle:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v4

    sub-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    .line 206
    add-float v0, v2, v3

    .line 208
    .local v0, "x":F
    invoke-direct {p0}, Lim/doit/pro/ui/component/chart/RingPieChart;->getChartStartY()F

    move-result v2

    iget-object v3, p0, Lim/doit/pro/ui/component/chart/RingPieChart;->mTitlePaint:Landroid/graphics/Paint;

    iget-object v4, p0, Lim/doit/pro/ui/component/chart/RingPieChart;->mTitle:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lim/doit/pro/ui/component/chart/RingPieChart;->measureTextHeight(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result v3

    int-to-float v3, v3

    add-float v1, v2, v3

    .line 209
    .local v1, "y":F
    iget-object v2, p0, Lim/doit/pro/ui/component/chart/RingPieChart;->mTitle:Ljava/lang/String;

    iget-object v3, p0, Lim/doit/pro/ui/component/chart/RingPieChart;->mTitlePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0, v1, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 210
    return-void
.end method

.method private getChartHeight()F
    .locals 3

    .prologue
    .line 351
    invoke-direct {p0}, Lim/doit/pro/ui/component/chart/RingPieChart;->getTitleHeight()F

    move-result v0

    iget v1, p0, Lim/doit/pro/ui/component/chart/RingPieChart;->mRingRadius:F

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    invoke-direct {p0}, Lim/doit/pro/ui/component/chart/RingPieChart;->getDescHeight()F

    move-result v1

    add-float/2addr v0, v1

    return v0
.end method

.method private getChartStartX()F
    .locals 4

    .prologue
    .line 341
    invoke-virtual {p0}, Lim/doit/pro/ui/component/chart/RingPieChart;->getWidth()I

    move-result v2

    int-to-float v1, v2

    .line 342
    .local v1, "width":F
    invoke-direct {p0}, Lim/doit/pro/ui/component/chart/RingPieChart;->getChartWidth()F

    move-result v0

    .line 343
    .local v0, "chartLength":F
    sub-float v2, v1, v0

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    return v2
.end method

.method private getChartStartY()F
    .locals 1

    .prologue
    .line 347
    const/4 v0, 0x0

    return v0
.end method

.method private getChartWidth()F
    .locals 4

    .prologue
    .line 335
    iget v1, p0, Lim/doit/pro/ui/component/chart/RingPieChart;->mDescTotalWidth:F

    iget v2, p0, Lim/doit/pro/ui/component/chart/RingPieChart;->mRingRadius:F

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 336
    .local v0, "temp":F
    iget-object v1, p0, Lim/doit/pro/ui/component/chart/RingPieChart;->mTitlePaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lim/doit/pro/ui/component/chart/RingPieChart;->mTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 337
    return v0
.end method

.method private getDescHeight()F
    .locals 2

    .prologue
    .line 361
    iget v0, p0, Lim/doit/pro/ui/component/chart/RingPieChart;->mDescTop:F

    iget v1, p0, Lim/doit/pro/ui/component/chart/RingPieChart;->mDescTitleMaxHeight:F

    add-float/2addr v0, v1

    .line 362
    iget-object v1, p0, Lim/doit/pro/ui/component/chart/RingPieChart;->mDescPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Paint$FontMetrics;->bottom:F

    .line 361
    add-float/2addr v0, v1

    return v0
.end method

.method private getTitleHeight()F
    .locals 3

    .prologue
    .line 355
    iget v0, p0, Lim/doit/pro/ui/component/chart/RingPieChart;->mTitleTop:F

    iget v1, p0, Lim/doit/pro/ui/component/chart/RingPieChart;->mTitleBottom:F

    add-float/2addr v0, v1

    .line 356
    iget-object v1, p0, Lim/doit/pro/ui/component/chart/RingPieChart;->mTitlePaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lim/doit/pro/ui/component/chart/RingPieChart;->mTitle:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lim/doit/pro/ui/component/chart/RingPieChart;->measureTextHeight(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result v1

    int-to-float v1, v1

    .line 355
    add-float/2addr v0, v1

    .line 357
    iget-object v1, p0, Lim/doit/pro/ui/component/chart/RingPieChart;->mTitlePaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Paint$FontMetrics;->bottom:F

    .line 355
    add-float/2addr v0, v1

    return v0
.end method


# virtual methods
.method protected init(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 154
    invoke-super {p0, p1}, Lim/doit/pro/ui/component/chart/BaseView;->init(Landroid/content/Context;)V

    .line 155
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    iget v1, p0, Lim/doit/pro/ui/component/chart/RingPieChart;->mTitleTextColor:I

    invoke-virtual {p0, v0, v3, v1}, Lim/doit/pro/ui/component/chart/RingPieChart;->buildPaint(Landroid/graphics/Paint$Style;FI)Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lim/doit/pro/ui/component/chart/RingPieChart;->mTitlePaint:Landroid/graphics/Paint;

    .line 156
    iget-object v0, p0, Lim/doit/pro/ui/component/chart/RingPieChart;->mTitlePaint:Landroid/graphics/Paint;

    iget v1, p0, Lim/doit/pro/ui/component/chart/RingPieChart;->mTitleTextSize:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 158
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v3, v1}, Lim/doit/pro/ui/component/chart/RingPieChart;->buildPaint(Landroid/graphics/Paint$Style;FI)Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lim/doit/pro/ui/component/chart/RingPieChart;->mRingPaint:Landroid/graphics/Paint;

    .line 160
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    iget v1, p0, Lim/doit/pro/ui/component/chart/RingPieChart;->mPieTextColor:I

    invoke-virtual {p0, v0, v3, v1}, Lim/doit/pro/ui/component/chart/RingPieChart;->buildPaint(Landroid/graphics/Paint$Style;FI)Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lim/doit/pro/ui/component/chart/RingPieChart;->mPieTextPaint:Landroid/graphics/Paint;

    .line 161
    iget-object v0, p0, Lim/doit/pro/ui/component/chart/RingPieChart;->mPieTextPaint:Landroid/graphics/Paint;

    iget v1, p0, Lim/doit/pro/ui/component/chart/RingPieChart;->mPieTextSize:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 163
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    iget v1, p0, Lim/doit/pro/ui/component/chart/RingPieChart;->mInnerColor:I

    invoke-virtual {p0, v0, v3, v1}, Lim/doit/pro/ui/component/chart/RingPieChart;->buildPaint(Landroid/graphics/Paint$Style;FI)Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lim/doit/pro/ui/component/chart/RingPieChart;->mInnerCirclePaint:Landroid/graphics/Paint;

    .line 165
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    iget v1, p0, Lim/doit/pro/ui/component/chart/RingPieChart;->mPieSpace:F

    iget v2, p0, Lim/doit/pro/ui/component/chart/RingPieChart;->mPieSpaceColor:I

    invoke-virtual {p0, v0, v1, v2}, Lim/doit/pro/ui/component/chart/RingPieChart;->buildPaint(Landroid/graphics/Paint$Style;FI)Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lim/doit/pro/ui/component/chart/RingPieChart;->mRingSpaceLinePaint:Landroid/graphics/Paint;

    .line 167
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    iget v1, p0, Lim/doit/pro/ui/component/chart/RingPieChart;->mDescTextColor:I

    invoke-virtual {p0, v0, v3, v1}, Lim/doit/pro/ui/component/chart/RingPieChart;->buildPaint(Landroid/graphics/Paint$Style;FI)Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lim/doit/pro/ui/component/chart/RingPieChart;->mDescPaint:Landroid/graphics/Paint;

    .line 168
    iget-object v0, p0, Lim/doit/pro/ui/component/chart/RingPieChart;->mDescPaint:Landroid/graphics/Paint;

    iget v1, p0, Lim/doit/pro/ui/component/chart/RingPieChart;->mDescTextSize:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 170
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v3, v1}, Lim/doit/pro/ui/component/chart/RingPieChart;->buildPaint(Landroid/graphics/Paint$Style;FI)Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lim/doit/pro/ui/component/chart/RingPieChart;->mDescCirclePaint:Landroid/graphics/Paint;

    .line 171
    return-void
.end method

.method protected initAttributes(Landroid/util/AttributeSet;I)V
    .locals 8
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "defStyle"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x1

    const/high16 v5, 0x41800000    # 16.0f

    const/high16 v4, 0x41200000    # 10.0f

    const/4 v3, 0x0

    .line 102
    invoke-super {p0, p1, p2}, Lim/doit/pro/ui/component/chart/BaseView;->initAttributes(Landroid/util/AttributeSet;I)V

    .line 103
    if-nez p1, :cond_0

    .line 150
    :goto_0
    return-void

    .line 106
    :cond_0
    invoke-virtual {p0}, Lim/doit/pro/ui/component/chart/RingPieChart;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 107
    sget-object v2, Lim/doit/pro/v4/R$styleable;->RingChart:[I

    .line 106
    invoke-virtual {v1, p1, v2, p2, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 109
    .local v0, "a":Landroid/content/res/TypedArray;
    const/16 v1, 0xb

    const/high16 v2, 0x43100000    # 144.0f

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lim/doit/pro/ui/component/chart/RingPieChart;->mRingRadius:F

    .line 112
    const/16 v1, 0xc

    const/high16 v2, 0x42840000    # 66.0f

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    .line 111
    iput v1, p0, Lim/doit/pro/ui/component/chart/RingPieChart;->mInnerRadius:F

    .line 113
    const/16 v1, 0xd

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lim/doit/pro/ui/component/chart/RingPieChart;->mInnerColor:I

    .line 116
    const/16 v1, 0xe

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lim/doit/pro/ui/component/chart/RingPieChart;->mPieSpace:F

    .line 117
    const/16 v1, 0xf

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lim/doit/pro/ui/component/chart/RingPieChart;->mPieSpaceColor:I

    .line 120
    const/16 v1, 0x10

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lim/doit/pro/ui/component/chart/RingPieChart;->mPieTextSize:F

    .line 122
    const/16 v1, 0x11

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lim/doit/pro/ui/component/chart/RingPieChart;->mPieTextColor:I

    .line 125
    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lim/doit/pro/ui/component/chart/RingPieChart;->mTitle:Ljava/lang/String;

    .line 127
    const/4 v1, 0x1

    .line 126
    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lim/doit/pro/ui/component/chart/RingPieChart;->mTitleTextSize:F

    .line 129
    const/4 v1, 0x2

    .line 130
    const/high16 v2, -0x1000000

    .line 129
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lim/doit/pro/ui/component/chart/RingPieChart;->mTitleTextColor:I

    .line 131
    const/4 v1, 0x3

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lim/doit/pro/ui/component/chart/RingPieChart;->mTitleTop:F

    .line 133
    const/4 v1, 0x4

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lim/doit/pro/ui/component/chart/RingPieChart;->mTitleBottom:F

    .line 136
    const/16 v1, 0x8

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lim/doit/pro/ui/component/chart/RingPieChart;->mDescTop:F

    .line 137
    const/4 v1, 0x6

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lim/doit/pro/ui/component/chart/RingPieChart;->mDescTextSize:F

    .line 139
    const/4 v1, 0x5

    .line 140
    const v2, -0x777778

    .line 139
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lim/doit/pro/ui/component/chart/RingPieChart;->mDescTextColor:I

    .line 141
    const/4 v1, 0x7

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lim/doit/pro/ui/component/chart/RingPieChart;->mDescRight:F

    .line 144
    const/16 v1, 0x9

    .line 143
    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lim/doit/pro/ui/component/chart/RingPieChart;->mDescCircleRadius:F

    .line 147
    const/16 v1, 0xa

    .line 146
    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lim/doit/pro/ui/component/chart/RingPieChart;->mDescCircleRight:F

    .line 149
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto/16 :goto_0
.end method

.method protected measureHeight(I)I
    .locals 1
    .param p1, "measureSpec"    # I

    .prologue
    .line 175
    invoke-direct {p0}, Lim/doit/pro/ui/component/chart/RingPieChart;->getChartHeight()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method protected measureWidth(I)I
    .locals 1
    .param p1, "measureSpec"    # I

    .prologue
    .line 180
    invoke-direct {p0}, Lim/doit/pro/ui/component/chart/RingPieChart;->getChartWidth()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    .line 185
    iget-object v2, p0, Lim/doit/pro/ui/component/chart/RingPieChart;->mDatas:Ljava/util/ArrayList;

    invoke-static {v2}, Lim/doit/pro/utils/CollectionUtils;->isEmpty(Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 203
    :cond_0
    :goto_0
    return-void

    .line 188
    :cond_1
    const/4 v1, 0x0

    .line 189
    .local v1, "totalPercentage":F
    iget-object v2, p0, Lim/doit/pro/ui/component/chart/RingPieChart;->mDatas:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 192
    const/4 v2, 0x0

    cmpg-float v2, v1, v2

    if-lez v2, :cond_0

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, v1, v2

    if-gtz v2, :cond_0

    .line 196
    invoke-direct {p0}, Lim/doit/pro/ui/component/chart/RingPieChart;->getChartWidth()F

    move-result v2

    div-float/2addr v2, v5

    iput v2, p0, Lim/doit/pro/ui/component/chart/RingPieChart;->mXCenter:F

    .line 197
    invoke-direct {p0}, Lim/doit/pro/ui/component/chart/RingPieChart;->getTitleHeight()F

    move-result v2

    iget v3, p0, Lim/doit/pro/ui/component/chart/RingPieChart;->mRingRadius:F

    add-float/2addr v2, v3

    iput v2, p0, Lim/doit/pro/ui/component/chart/RingPieChart;->mYCenter:F

    .line 198
    iget v2, p0, Lim/doit/pro/ui/component/chart/RingPieChart;->mInnerRadius:F

    iget v3, p0, Lim/doit/pro/ui/component/chart/RingPieChart;->mRingRadius:F

    iget v4, p0, Lim/doit/pro/ui/component/chart/RingPieChart;->mInnerRadius:F

    sub-float/2addr v3, v4

    div-float/2addr v3, v5

    add-float/2addr v2, v3

    iput v2, p0, Lim/doit/pro/ui/component/chart/RingPieChart;->mTextRadius:F

    .line 200
    invoke-direct {p0, p1}, Lim/doit/pro/ui/component/chart/RingPieChart;->drawTitle(Landroid/graphics/Canvas;)V

    .line 201
    invoke-direct {p0, p1}, Lim/doit/pro/ui/component/chart/RingPieChart;->drawRingPie(Landroid/graphics/Canvas;)V

    .line 202
    invoke-direct {p0, p1}, Lim/doit/pro/ui/component/chart/RingPieChart;->drawDesc(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 189
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lim/doit/pro/ui/component/chart/RingPieChartItem;

    .line 190
    .local v0, "item":Lim/doit/pro/ui/component/chart/RingPieChartItem;
    invoke-virtual {v0}, Lim/doit/pro/ui/component/chart/RingPieChartItem;->getPercentage()F

    move-result v3

    add-float/2addr v1, v3

    goto :goto_1
.end method

.method public setDatas(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lim/doit/pro/ui/component/chart/RingPieChartItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 88
    .local p1, "datas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/ui/component/chart/RingPieChartItem;>;"
    iput-object p1, p0, Lim/doit/pro/ui/component/chart/RingPieChart;->mDatas:Ljava/util/ArrayList;

    .line 90
    iget-object v2, p0, Lim/doit/pro/ui/component/chart/RingPieChart;->mDatas:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 91
    .local v1, "size":I
    int-to-float v2, v1

    iget v3, p0, Lim/doit/pro/ui/component/chart/RingPieChart;->mDescCircleRadius:F

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v3, v4

    iget v4, p0, Lim/doit/pro/ui/component/chart/RingPieChart;->mDescCircleRight:F

    add-float/2addr v3, v4

    mul-float/2addr v2, v3

    iput v2, p0, Lim/doit/pro/ui/component/chart/RingPieChart;->mDescTotalWidth:F

    .line 92
    iget v2, p0, Lim/doit/pro/ui/component/chart/RingPieChart;->mDescTotalWidth:F

    add-int/lit8 v3, v1, -0x1

    int-to-float v3, v3

    iget v4, p0, Lim/doit/pro/ui/component/chart/RingPieChart;->mDescRight:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, p0, Lim/doit/pro/ui/component/chart/RingPieChart;->mDescTotalWidth:F

    .line 93
    iget-object v2, p0, Lim/doit/pro/ui/component/chart/RingPieChart;->mDatas:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 98
    return-void

    .line 93
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lim/doit/pro/ui/component/chart/RingPieChartItem;

    .line 94
    .local v0, "item":Lim/doit/pro/ui/component/chart/RingPieChartItem;
    iget v3, p0, Lim/doit/pro/ui/component/chart/RingPieChart;->mDescTotalWidth:F

    iget-object v4, p0, Lim/doit/pro/ui/component/chart/RingPieChart;->mDescPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Lim/doit/pro/ui/component/chart/RingPieChartItem;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, p0, Lim/doit/pro/ui/component/chart/RingPieChart;->mDescTotalWidth:F

    .line 95
    iget v3, p0, Lim/doit/pro/ui/component/chart/RingPieChart;->mDescTitleMaxHeight:F

    .line 96
    iget-object v4, p0, Lim/doit/pro/ui/component/chart/RingPieChart;->mDescPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Lim/doit/pro/ui/component/chart/RingPieChartItem;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lim/doit/pro/ui/component/chart/RingPieChart;->measureTextHeight(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result v4

    int-to-float v4, v4

    .line 95
    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iput v3, p0, Lim/doit/pro/ui/component/chart/RingPieChart;->mDescTitleMaxHeight:F

    goto :goto_0
.end method
