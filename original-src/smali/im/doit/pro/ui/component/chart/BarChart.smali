.class public Lim/doit/pro/ui/component/chart/BarChart;
.super Lim/doit/pro/ui/component/chart/BaseView;
.source "BarChart.java"


# instance fields
.field private final DEFAULT_AXIS_COLOR:I

.field private final DEFAULT_AXIS_TEXT_COLOR:I

.field private final DEFAULT_AXIS_TEXT_SIZE:F

.field private final DEFAULT_AXIS_WIDTH:F

.field private final DEFAULT_AXIS_X_LENGTH:F

.field private final DEFAULT_BAR_LEFT:F

.field private final DEFAULT_BAR_WIDTH:F

.field public final DEFAULT_DASH_EFFECT:Landroid/graphics/PathEffect;

.field private final DEFAULT_DESC_CIRCLE_RADIUS:F

.field private final DEFAULT_DESC_CIRCLE_RIGHT:F

.field private final DEFAULT_DESC_RIGHT:F

.field private final DEFAULT_DESC_TEXT_COLOR:I

.field private final DEFAULT_DESC_TEXT_SIZE:F

.field private final DEFAULT_LATITUDE_COLOR:I

.field private final DEFAULT_LATITUDE_MAX_VALUE:I

.field private final DEFAULT_LATITUDE_WIDTH:F

.field private final DEFAULT_TITLE_BOTTOM:F

.field private final DEFAULT_TITLE_TEXT_COLOR:I

.field private final DEFAULT_TITLE_TEXT_SIZE:F

.field private final DEFAULT_TITLE_TOP:F

.field private final DEFAULT_X_TITLE_BOTTOM:F

.field private final DEFAULT_X_TITLE_TOP:F

.field private final DEFAULT_Y_TITLE_WIDTH:F

.field private dashEffect:Landroid/graphics/PathEffect;

.field private mAxisColor:I

.field private mAxisPaint:Landroid/graphics/Paint;

.field private mAxisTextColor:I

.field private mAxisTextPaint:Landroid/graphics/Paint;

.field private mAxisTextSize:F

.field private mAxisWidth:F

.field private mAxisXLength:F

.field private mAxisXRight:F

.field private mAxisYHeight:F

.field private mAxisYTop:F

.field private mBarItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lim/doit/pro/ui/component/chart/BarChartItem;",
            ">;"
        }
    .end annotation
.end field

.field private mBarLeft:F

.field private mBarPaint:Landroid/graphics/Paint;

.field private mBarStrokePaint:Landroid/graphics/Paint;

.field private mBarTextBottom:F

.field private mBarTextColor:I

.field private mBarTextMaxHeight:F

.field private mBarTextPaint:Landroid/graphics/Paint;

.field private mBarTextSize:F

.field private mBarWidth:F

.field private mDescCircleRight:F

.field private mDescIconPaint:Landroid/graphics/Paint;

.field private mDescIconStrokePaint:Landroid/graphics/Paint;

.field private mDescIconWidth:F

.field private mDescItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lim/doit/pro/ui/component/chart/BarChartDescItem;",
            ">;"
        }
    .end annotation
.end field

.field private mDescRight:F

.field private mDescTextColor:I

.field private mDescTextPaint:Landroid/graphics/Paint;

.field private mDescTextSize:F

.field private mDescTitleMaxHeight:F

.field private mDescTop:F

.field private mLatitudeColor:I

.field private mLatitudeMaxValue:I

.field private mLatitudeNum:I

.field private mLatitudeOffset:F

.field private mLatitudePaint:Landroid/graphics/Paint;

.field private mLatitudeWidth:F

.field private mTitle:Ljava/lang/String;

.field private mTitleBottom:F

.field private mTitlePaint:Landroid/graphics/Paint;

.field private mTitleTextColor:I

.field private mTitleTextSize:F

.field private mTitleTop:F

.field private mXTitleBottom:F

.field private mXTitleTop:F

.field private mYTitleWidth:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/high16 v5, 0x41800000    # 16.0f

    const/high16 v4, -0x1000000

    const/high16 v3, 0x41200000    # 10.0f

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 115
    invoke-direct {p0, p1}, Lim/doit/pro/ui/component/chart/BaseView;-><init>(Landroid/content/Context;)V

    .line 21
    iput v2, p0, Lim/doit/pro/ui/component/chart/BarChart;->DEFAULT_AXIS_WIDTH:F

    .line 22
    iput v4, p0, Lim/doit/pro/ui/component/chart/BarChart;->DEFAULT_AXIS_COLOR:I

    .line 24
    const/high16 v0, 0x41600000    # 14.0f

    iput v0, p0, Lim/doit/pro/ui/component/chart/BarChart;->DEFAULT_AXIS_TEXT_SIZE:F

    .line 25
    iput v4, p0, Lim/doit/pro/ui/component/chart/BarChart;->DEFAULT_AXIS_TEXT_COLOR:I

    .line 27
    const/high16 v0, 0x44160000    # 600.0f

    iput v0, p0, Lim/doit/pro/ui/component/chart/BarChart;->DEFAULT_AXIS_X_LENGTH:F

    .line 29
    iput v5, p0, Lim/doit/pro/ui/component/chart/BarChart;->DEFAULT_TITLE_TEXT_SIZE:F

    .line 30
    iput v4, p0, Lim/doit/pro/ui/component/chart/BarChart;->DEFAULT_TITLE_TEXT_COLOR:I

    .line 31
    iput v1, p0, Lim/doit/pro/ui/component/chart/BarChart;->DEFAULT_TITLE_TOP:F

    .line 32
    iput v1, p0, Lim/doit/pro/ui/component/chart/BarChart;->DEFAULT_TITLE_BOTTOM:F

    .line 34
    iput v1, p0, Lim/doit/pro/ui/component/chart/BarChart;->DEFAULT_X_TITLE_TOP:F

    .line 35
    iput v1, p0, Lim/doit/pro/ui/component/chart/BarChart;->DEFAULT_X_TITLE_BOTTOM:F

    .line 37
    const/high16 v0, 0x42480000    # 50.0f

    iput v0, p0, Lim/doit/pro/ui/component/chart/BarChart;->DEFAULT_Y_TITLE_WIDTH:F

    .line 39
    const v0, -0x777778

    iput v0, p0, Lim/doit/pro/ui/component/chart/BarChart;->DEFAULT_LATITUDE_COLOR:I

    .line 40
    iput v2, p0, Lim/doit/pro/ui/component/chart/BarChart;->DEFAULT_LATITUDE_WIDTH:F

    .line 41
    const/16 v0, 0xc

    iput v0, p0, Lim/doit/pro/ui/component/chart/BarChart;->DEFAULT_LATITUDE_MAX_VALUE:I

    .line 43
    new-instance v0, Landroid/graphics/DashPathEffect;

    .line 44
    const/4 v1, 0x4

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-direct {v0, v1, v2}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    iput-object v0, p0, Lim/doit/pro/ui/component/chart/BarChart;->DEFAULT_DASH_EFFECT:Landroid/graphics/PathEffect;

    .line 46
    iput v5, p0, Lim/doit/pro/ui/component/chart/BarChart;->DEFAULT_DESC_TEXT_SIZE:F

    .line 47
    const v0, -0x777778

    iput v0, p0, Lim/doit/pro/ui/component/chart/BarChart;->DEFAULT_DESC_TEXT_COLOR:I

    .line 48
    iput v3, p0, Lim/doit/pro/ui/component/chart/BarChart;->DEFAULT_DESC_RIGHT:F

    .line 49
    iput v3, p0, Lim/doit/pro/ui/component/chart/BarChart;->DEFAULT_DESC_CIRCLE_RADIUS:F

    .line 50
    iput v3, p0, Lim/doit/pro/ui/component/chart/BarChart;->DEFAULT_DESC_CIRCLE_RIGHT:F

    .line 52
    const/high16 v0, 0x42480000    # 50.0f

    iput v0, p0, Lim/doit/pro/ui/component/chart/BarChart;->DEFAULT_BAR_WIDTH:F

    .line 53
    const/high16 v0, 0x41a00000    # 20.0f

    iput v0, p0, Lim/doit/pro/ui/component/chart/BarChart;->DEFAULT_BAR_LEFT:F

    .line 79
    const/16 v0, 0xc

    iput v0, p0, Lim/doit/pro/ui/component/chart/BarChart;->mLatitudeMaxValue:I

    .line 96
    const/high16 v0, 0x44160000    # 600.0f

    iput v0, p0, Lim/doit/pro/ui/component/chart/BarChart;->mAxisXLength:F

    .line 109
    iget-object v0, p0, Lim/doit/pro/ui/component/chart/BarChart;->DEFAULT_DASH_EFFECT:Landroid/graphics/PathEffect;

    iput-object v0, p0, Lim/doit/pro/ui/component/chart/BarChart;->dashEffect:Landroid/graphics/PathEffect;

    .line 116
    return-void

    .line 44
    :array_0
    .array-data 4
        0x40400000    # 3.0f
        0x40400000    # 3.0f
        0x40400000    # 3.0f
        0x40400000    # 3.0f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/high16 v5, 0x41800000    # 16.0f

    const/high16 v4, -0x1000000

    const/high16 v3, 0x41200000    # 10.0f

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 119
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lim/doit/pro/ui/component/chart/BaseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 21
    iput v2, p0, Lim/doit/pro/ui/component/chart/BarChart;->DEFAULT_AXIS_WIDTH:F

    .line 22
    iput v4, p0, Lim/doit/pro/ui/component/chart/BarChart;->DEFAULT_AXIS_COLOR:I

    .line 24
    const/high16 v0, 0x41600000    # 14.0f

    iput v0, p0, Lim/doit/pro/ui/component/chart/BarChart;->DEFAULT_AXIS_TEXT_SIZE:F

    .line 25
    iput v4, p0, Lim/doit/pro/ui/component/chart/BarChart;->DEFAULT_AXIS_TEXT_COLOR:I

    .line 27
    const/high16 v0, 0x44160000    # 600.0f

    iput v0, p0, Lim/doit/pro/ui/component/chart/BarChart;->DEFAULT_AXIS_X_LENGTH:F

    .line 29
    iput v5, p0, Lim/doit/pro/ui/component/chart/BarChart;->DEFAULT_TITLE_TEXT_SIZE:F

    .line 30
    iput v4, p0, Lim/doit/pro/ui/component/chart/BarChart;->DEFAULT_TITLE_TEXT_COLOR:I

    .line 31
    iput v1, p0, Lim/doit/pro/ui/component/chart/BarChart;->DEFAULT_TITLE_TOP:F

    .line 32
    iput v1, p0, Lim/doit/pro/ui/component/chart/BarChart;->DEFAULT_TITLE_BOTTOM:F

    .line 34
    iput v1, p0, Lim/doit/pro/ui/component/chart/BarChart;->DEFAULT_X_TITLE_TOP:F

    .line 35
    iput v1, p0, Lim/doit/pro/ui/component/chart/BarChart;->DEFAULT_X_TITLE_BOTTOM:F

    .line 37
    const/high16 v0, 0x42480000    # 50.0f

    iput v0, p0, Lim/doit/pro/ui/component/chart/BarChart;->DEFAULT_Y_TITLE_WIDTH:F

    .line 39
    const v0, -0x777778

    iput v0, p0, Lim/doit/pro/ui/component/chart/BarChart;->DEFAULT_LATITUDE_COLOR:I

    .line 40
    iput v2, p0, Lim/doit/pro/ui/component/chart/BarChart;->DEFAULT_LATITUDE_WIDTH:F

    .line 41
    const/16 v0, 0xc

    iput v0, p0, Lim/doit/pro/ui/component/chart/BarChart;->DEFAULT_LATITUDE_MAX_VALUE:I

    .line 43
    new-instance v0, Landroid/graphics/DashPathEffect;

    .line 44
    const/4 v1, 0x4

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-direct {v0, v1, v2}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    iput-object v0, p0, Lim/doit/pro/ui/component/chart/BarChart;->DEFAULT_DASH_EFFECT:Landroid/graphics/PathEffect;

    .line 46
    iput v5, p0, Lim/doit/pro/ui/component/chart/BarChart;->DEFAULT_DESC_TEXT_SIZE:F

    .line 47
    const v0, -0x777778

    iput v0, p0, Lim/doit/pro/ui/component/chart/BarChart;->DEFAULT_DESC_TEXT_COLOR:I

    .line 48
    iput v3, p0, Lim/doit/pro/ui/component/chart/BarChart;->DEFAULT_DESC_RIGHT:F

    .line 49
    iput v3, p0, Lim/doit/pro/ui/component/chart/BarChart;->DEFAULT_DESC_CIRCLE_RADIUS:F

    .line 50
    iput v3, p0, Lim/doit/pro/ui/component/chart/BarChart;->DEFAULT_DESC_CIRCLE_RIGHT:F

    .line 52
    const/high16 v0, 0x42480000    # 50.0f

    iput v0, p0, Lim/doit/pro/ui/component/chart/BarChart;->DEFAULT_BAR_WIDTH:F

    .line 53
    const/high16 v0, 0x41a00000    # 20.0f

    iput v0, p0, Lim/doit/pro/ui/component/chart/BarChart;->DEFAULT_BAR_LEFT:F

    .line 79
    const/16 v0, 0xc

    iput v0, p0, Lim/doit/pro/ui/component/chart/BarChart;->mLatitudeMaxValue:I

    .line 96
    const/high16 v0, 0x44160000    # 600.0f

    iput v0, p0, Lim/doit/pro/ui/component/chart/BarChart;->mAxisXLength:F

    .line 109
    iget-object v0, p0, Lim/doit/pro/ui/component/chart/BarChart;->DEFAULT_DASH_EFFECT:Landroid/graphics/PathEffect;

    iput-object v0, p0, Lim/doit/pro/ui/component/chart/BarChart;->dashEffect:Landroid/graphics/PathEffect;

    .line 120
    return-void

    .line 44
    nop

    :array_0
    .array-data 4
        0x40400000    # 3.0f
        0x40400000    # 3.0f
        0x40400000    # 3.0f
        0x40400000    # 3.0f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/high16 v5, 0x41800000    # 16.0f

    const/high16 v4, -0x1000000

    const/high16 v3, 0x41200000    # 10.0f

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 123
    invoke-direct {p0, p1, p2, p3}, Lim/doit/pro/ui/component/chart/BaseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 21
    iput v2, p0, Lim/doit/pro/ui/component/chart/BarChart;->DEFAULT_AXIS_WIDTH:F

    .line 22
    iput v4, p0, Lim/doit/pro/ui/component/chart/BarChart;->DEFAULT_AXIS_COLOR:I

    .line 24
    const/high16 v0, 0x41600000    # 14.0f

    iput v0, p0, Lim/doit/pro/ui/component/chart/BarChart;->DEFAULT_AXIS_TEXT_SIZE:F

    .line 25
    iput v4, p0, Lim/doit/pro/ui/component/chart/BarChart;->DEFAULT_AXIS_TEXT_COLOR:I

    .line 27
    const/high16 v0, 0x44160000    # 600.0f

    iput v0, p0, Lim/doit/pro/ui/component/chart/BarChart;->DEFAULT_AXIS_X_LENGTH:F

    .line 29
    iput v5, p0, Lim/doit/pro/ui/component/chart/BarChart;->DEFAULT_TITLE_TEXT_SIZE:F

    .line 30
    iput v4, p0, Lim/doit/pro/ui/component/chart/BarChart;->DEFAULT_TITLE_TEXT_COLOR:I

    .line 31
    iput v1, p0, Lim/doit/pro/ui/component/chart/BarChart;->DEFAULT_TITLE_TOP:F

    .line 32
    iput v1, p0, Lim/doit/pro/ui/component/chart/BarChart;->DEFAULT_TITLE_BOTTOM:F

    .line 34
    iput v1, p0, Lim/doit/pro/ui/component/chart/BarChart;->DEFAULT_X_TITLE_TOP:F

    .line 35
    iput v1, p0, Lim/doit/pro/ui/component/chart/BarChart;->DEFAULT_X_TITLE_BOTTOM:F

    .line 37
    const/high16 v0, 0x42480000    # 50.0f

    iput v0, p0, Lim/doit/pro/ui/component/chart/BarChart;->DEFAULT_Y_TITLE_WIDTH:F

    .line 39
    const v0, -0x777778

    iput v0, p0, Lim/doit/pro/ui/component/chart/BarChart;->DEFAULT_LATITUDE_COLOR:I

    .line 40
    iput v2, p0, Lim/doit/pro/ui/component/chart/BarChart;->DEFAULT_LATITUDE_WIDTH:F

    .line 41
    const/16 v0, 0xc

    iput v0, p0, Lim/doit/pro/ui/component/chart/BarChart;->DEFAULT_LATITUDE_MAX_VALUE:I

    .line 43
    new-instance v0, Landroid/graphics/DashPathEffect;

    .line 44
    const/4 v1, 0x4

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-direct {v0, v1, v2}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    iput-object v0, p0, Lim/doit/pro/ui/component/chart/BarChart;->DEFAULT_DASH_EFFECT:Landroid/graphics/PathEffect;

    .line 46
    iput v5, p0, Lim/doit/pro/ui/component/chart/BarChart;->DEFAULT_DESC_TEXT_SIZE:F

    .line 47
    const v0, -0x777778

    iput v0, p0, Lim/doit/pro/ui/component/chart/BarChart;->DEFAULT_DESC_TEXT_COLOR:I

    .line 48
    iput v3, p0, Lim/doit/pro/ui/component/chart/BarChart;->DEFAULT_DESC_RIGHT:F

    .line 49
    iput v3, p0, Lim/doit/pro/ui/component/chart/BarChart;->DEFAULT_DESC_CIRCLE_RADIUS:F

    .line 50
    iput v3, p0, Lim/doit/pro/ui/component/chart/BarChart;->DEFAULT_DESC_CIRCLE_RIGHT:F

    .line 52
    const/high16 v0, 0x42480000    # 50.0f

    iput v0, p0, Lim/doit/pro/ui/component/chart/BarChart;->DEFAULT_BAR_WIDTH:F

    .line 53
    const/high16 v0, 0x41a00000    # 20.0f

    iput v0, p0, Lim/doit/pro/ui/component/chart/BarChart;->DEFAULT_BAR_LEFT:F

    .line 79
    const/16 v0, 0xc

    iput v0, p0, Lim/doit/pro/ui/component/chart/BarChart;->mLatitudeMaxValue:I

    .line 96
    const/high16 v0, 0x44160000    # 600.0f

    iput v0, p0, Lim/doit/pro/ui/component/chart/BarChart;->mAxisXLength:F

    .line 109
    iget-object v0, p0, Lim/doit/pro/ui/component/chart/BarChart;->DEFAULT_DASH_EFFECT:Landroid/graphics/PathEffect;

    iput-object v0, p0, Lim/doit/pro/ui/component/chart/BarChart;->dashEffect:Landroid/graphics/PathEffect;

    .line 124
    return-void

    .line 44
    :array_0
    .array-data 4
        0x40400000    # 3.0f
        0x40400000    # 3.0f
        0x40400000    # 3.0f
        0x40400000    # 3.0f
    .end array-data
.end method

.method private calculateAboutBarDescs()V
    .locals 5

    .prologue
    .line 528
    iget-object v1, p0, Lim/doit/pro/ui/component/chart/BarChart;->mDescItems:Ljava/util/ArrayList;

    invoke-static {v1}, Lim/doit/pro/utils/CollectionUtils;->isEmpty(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 536
    :cond_0
    return-void

    .line 531
    :cond_1
    const/4 v1, 0x0

    iput v1, p0, Lim/doit/pro/ui/component/chart/BarChart;->mDescTitleMaxHeight:F

    .line 532
    iget-object v1, p0, Lim/doit/pro/ui/component/chart/BarChart;->mDescItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lim/doit/pro/ui/component/chart/BarChartDescItem;

    .line 533
    .local v0, "item":Lim/doit/pro/ui/component/chart/BarChartDescItem;
    iget v2, p0, Lim/doit/pro/ui/component/chart/BarChart;->mDescTitleMaxHeight:F

    .line 534
    iget-object v3, p0, Lim/doit/pro/ui/component/chart/BarChart;->mDescTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Lim/doit/pro/ui/component/chart/BarChartDescItem;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lim/doit/pro/ui/component/chart/BarChart;->measureTextHeight(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result v3

    int-to-float v3, v3

    .line 533
    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, p0, Lim/doit/pro/ui/component/chart/BarChart;->mDescTitleMaxHeight:F

    goto :goto_0
.end method

.method private calculateAboutBars()V
    .locals 10

    .prologue
    const/high16 v9, 0x40400000    # 3.0f

    const/4 v8, 0x0

    .line 503
    iget-object v4, p0, Lim/doit/pro/ui/component/chart/BarChart;->mBarItems:Ljava/util/ArrayList;

    invoke-static {v4}, Lim/doit/pro/utils/CollectionUtils;->isEmpty(Ljava/util/List;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 525
    :cond_0
    :goto_0
    return-void

    .line 506
    :cond_1
    const/4 v2, 0x0

    .line 507
    .local v2, "maxHeight":F
    iput v8, p0, Lim/doit/pro/ui/component/chart/BarChart;->mBarTextMaxHeight:F

    .line 508
    iget-object v4, p0, Lim/doit/pro/ui/component/chart/BarChart;->mBarItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_2

    .line 515
    rem-float v4, v2, v9

    cmpl-float v4, v4, v8

    if-nez v4, :cond_4

    .line 516
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v4

    iput v4, p0, Lim/doit/pro/ui/component/chart/BarChart;->mLatitudeMaxValue:I

    .line 520
    :goto_2
    iget v4, p0, Lim/doit/pro/ui/component/chart/BarChart;->mLatitudeMaxValue:I

    iget v5, p0, Lim/doit/pro/ui/component/chart/BarChart;->mLatitudeNum:I

    add-int/lit8 v5, v5, -0x1

    rem-int/2addr v4, v5

    int-to-float v3, v4

    .line 521
    .local v3, "temp":F
    cmpl-float v4, v3, v8

    if-eqz v4, :cond_0

    .line 522
    iget v4, p0, Lim/doit/pro/ui/component/chart/BarChart;->mLatitudeMaxValue:I

    iget v5, p0, Lim/doit/pro/ui/component/chart/BarChart;->mLatitudeMaxValue:I

    .line 523
    iget v6, p0, Lim/doit/pro/ui/component/chart/BarChart;->mLatitudeNum:I

    add-int/lit8 v6, v6, -0x1

    rem-int/2addr v5, v6

    sub-int/2addr v4, v5

    iget v5, p0, Lim/doit/pro/ui/component/chart/BarChart;->mLatitudeNum:I

    add-int/lit8 v5, v5, -0x1

    mul-int/lit8 v5, v5, 0x3

    add-int/2addr v4, v5

    .line 522
    iput v4, p0, Lim/doit/pro/ui/component/chart/BarChart;->mLatitudeMaxValue:I

    goto :goto_0

    .line 508
    .end local v3    # "temp":F
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lim/doit/pro/ui/component/chart/BarChartItem;

    .line 509
    .local v0, "barChartItem":Lim/doit/pro/ui/component/chart/BarChartItem;
    invoke-virtual {v0}, Lim/doit/pro/ui/component/chart/BarChartItem;->getItems()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_3

    .line 512
    iget v5, p0, Lim/doit/pro/ui/component/chart/BarChart;->mBarTextMaxHeight:F

    .line 513
    iget-object v6, p0, Lim/doit/pro/ui/component/chart/BarChart;->mAxisTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Lim/doit/pro/ui/component/chart/BarChartItem;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Lim/doit/pro/ui/component/chart/BarChart;->measureTextHeight(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result v6

    int-to-float v6, v6

    .line 512
    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    iput v5, p0, Lim/doit/pro/ui/component/chart/BarChart;->mBarTextMaxHeight:F

    goto :goto_1

    .line 509
    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lim/doit/pro/ui/component/chart/BarItem;

    .line 510
    .local v1, "item":Lim/doit/pro/ui/component/chart/BarItem;
    invoke-virtual {v1}, Lim/doit/pro/ui/component/chart/BarItem;->getData()F

    move-result v6

    invoke-static {v6, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    goto :goto_3

    .line 518
    .end local v0    # "barChartItem":Lim/doit/pro/ui/component/chart/BarChartItem;
    .end local v1    # "item":Lim/doit/pro/ui/component/chart/BarItem;
    :cond_4
    div-float v4, v2, v9

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    mul-int/lit8 v4, v4, 0x3

    iput v4, p0, Lim/doit/pro/ui/component/chart/BarChart;->mLatitudeMaxValue:I

    goto :goto_2
.end method

.method private calculateAsisXLength()V
    .locals 3

    .prologue
    .line 460
    iget-object v0, p0, Lim/doit/pro/ui/component/chart/BarChart;->mBarItems:Ljava/util/ArrayList;

    invoke-static {v0}, Lim/doit/pro/utils/CollectionUtils;->isEmpty(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 461
    const/high16 v0, 0x44160000    # 600.0f

    iput v0, p0, Lim/doit/pro/ui/component/chart/BarChart;->mAxisXLength:F

    .line 463
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lim/doit/pro/ui/component/chart/BarChart;->mAxisXLength:F

    .line 464
    iget v0, p0, Lim/doit/pro/ui/component/chart/BarChart;->mAxisXLength:F

    iget-object v1, p0, Lim/doit/pro/ui/component/chart/BarChart;->mBarItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lim/doit/pro/ui/component/chart/BarChart;->mBarWidth:F

    mul-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lim/doit/pro/ui/component/chart/BarChart;->mAxisXLength:F

    .line 465
    iget v0, p0, Lim/doit/pro/ui/component/chart/BarChart;->mAxisXLength:F

    iget-object v1, p0, Lim/doit/pro/ui/component/chart/BarChart;->mBarItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lim/doit/pro/ui/component/chart/BarChart;->mBarLeft:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lim/doit/pro/ui/component/chart/BarChart;->mAxisXLength:F

    .line 466
    return-void
.end method

.method private drawAxisX(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 274
    invoke-direct {p0}, Lim/doit/pro/ui/component/chart/BarChart;->getAxisXStartPosition()F

    move-result v1

    .line 275
    .local v1, "startX":F
    invoke-direct {p0}, Lim/doit/pro/ui/component/chart/BarChart;->getAxisYEndPosition()F

    move-result v2

    .line 276
    .local v2, "startY":F
    invoke-direct {p0}, Lim/doit/pro/ui/component/chart/BarChart;->getXLength()F

    move-result v0

    add-float v3, v1, v0

    .line 277
    iget-object v5, p0, Lim/doit/pro/ui/component/chart/BarChart;->mAxisPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v4, v2

    .line 276
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 278
    return-void
.end method

.method private drawAxisY(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 281
    invoke-direct {p0}, Lim/doit/pro/ui/component/chart/BarChart;->getAxisXStartPosition()F

    move-result v1

    .line 282
    .local v1, "startX":F
    invoke-direct {p0}, Lim/doit/pro/ui/component/chart/BarChart;->getAxisYStartPosition()F

    move-result v2

    .line 283
    .local v2, "startY":F
    invoke-direct {p0}, Lim/doit/pro/ui/component/chart/BarChart;->getAxisYLength()F

    move-result v0

    add-float v4, v2, v0

    .line 284
    iget-object v5, p0, Lim/doit/pro/ui/component/chart/BarChart;->mAxisPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v3, v1

    .line 283
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 285
    return-void
.end method

.method private drawBars(Landroid/graphics/Canvas;)V
    .locals 28
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 327
    move-object/from16 v0, p0

    iget-object v4, v0, Lim/doit/pro/ui/component/chart/BarChart;->mBarItems:Ljava/util/ArrayList;

    invoke-static {v4}, Lim/doit/pro/utils/CollectionUtils;->isEmpty(Ljava/util/List;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 386
    :cond_0
    return-void

    .line 331
    :cond_1
    invoke-direct/range {p0 .. p0}, Lim/doit/pro/ui/component/chart/BarChart;->getAxisXStartPosition()F

    move-result v5

    .line 332
    .local v5, "startX":F
    invoke-direct/range {p0 .. p0}, Lim/doit/pro/ui/component/chart/BarChart;->getAxisYEndPosition()F

    move-result v8

    .line 333
    .local v8, "barBottom":F
    move-object/from16 v0, p0

    iget v4, v0, Lim/doit/pro/ui/component/chart/BarChart;->mAxisWidth:F

    add-float/2addr v4, v8

    move-object/from16 v0, p0

    iget v9, v0, Lim/doit/pro/ui/component/chart/BarChart;->mXTitleTop:F

    add-float v23, v4, v9

    .line 335
    .local v23, "titleY":F
    move-object/from16 v0, p0

    iget v4, v0, Lim/doit/pro/ui/component/chart/BarChart;->mLatitudeOffset:F

    .line 336
    move-object/from16 v0, p0

    iget v9, v0, Lim/doit/pro/ui/component/chart/BarChart;->mLatitudeMaxValue:I

    int-to-float v9, v9

    move-object/from16 v0, p0

    iget v0, v0, Lim/doit/pro/ui/component/chart/BarChart;->mLatitudeNum:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    const/high16 v27, 0x3f800000    # 1.0f

    sub-float v26, v26, v27

    div-float v9, v9, v26

    .line 335
    div-float v14, v4, v9

    .line 338
    .local v14, "offset":F
    move-object/from16 v0, p0

    iget-object v4, v0, Lim/doit/pro/ui/component/chart/BarChart;->mBarItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v26

    :cond_2
    :goto_0
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lim/doit/pro/ui/component/chart/BarChartItem;

    .line 339
    .local v13, "item":Lim/doit/pro/ui/component/chart/BarChartItem;
    invoke-virtual {v13}, Lim/doit/pro/ui/component/chart/BarChartItem;->getItems()Ljava/util/ArrayList;

    move-result-object v4

    invoke-static {v4}, Lim/doit/pro/utils/CollectionUtils;->isEmpty(Ljava/util/List;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 342
    move-object/from16 v0, p0

    iget v4, v0, Lim/doit/pro/ui/component/chart/BarChart;->mBarLeft:F

    add-float/2addr v5, v4

    .line 343
    move v11, v5

    .line 345
    .local v11, "barsStartX":F
    invoke-virtual {v13}, Lim/doit/pro/ui/component/chart/BarChartItem;->getItems()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v27

    :goto_1
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_3

    .line 380
    move-object/from16 v0, p0

    iget-object v4, v0, Lim/doit/pro/ui/component/chart/BarChart;->mAxisTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v13}, Lim/doit/pro/ui/component/chart/BarChartItem;->getTitle()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v21

    .line 382
    .local v21, "titleWidth":F
    move-object/from16 v0, p0

    iget v4, v0, Lim/doit/pro/ui/component/chart/BarChart;->mBarWidth:F

    invoke-virtual {v13}, Lim/doit/pro/ui/component/chart/BarChartItem;->getItems()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v4, v9

    sub-float v4, v4, v21

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v4, v9

    .line 381
    add-float v22, v11, v4

    .line 383
    .local v22, "titleX":F
    invoke-virtual {v13}, Lim/doit/pro/ui/component/chart/BarChartItem;->getTitle()Ljava/lang/String;

    move-result-object v4

    .line 384
    move-object/from16 v0, p0

    iget v9, v0, Lim/doit/pro/ui/component/chart/BarChart;->mBarTextMaxHeight:F

    add-float v9, v9, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lim/doit/pro/ui/component/chart/BarChart;->mAxisTextPaint:Landroid/graphics/Paint;

    move-object/from16 v27, v0

    .line 383
    move-object/from16 v0, p1

    move/from16 v1, v22

    move-object/from16 v2, v27

    invoke-virtual {v0, v4, v1, v9, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 345
    .end local v21    # "titleWidth":F
    .end local v22    # "titleX":F
    :cond_3
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lim/doit/pro/ui/component/chart/BarItem;

    .line 346
    .local v10, "bar":Lim/doit/pro/ui/component/chart/BarItem;
    invoke-virtual {v10}, Lim/doit/pro/ui/component/chart/BarItem;->getData()F

    move-result v4

    mul-float/2addr v4, v14

    sub-float v6, v8, v4

    .line 347
    .local v6, "top":F
    move-object/from16 v0, p0

    iget v4, v0, Lim/doit/pro/ui/component/chart/BarChart;->mBarWidth:F

    add-float v7, v5, v4

    .line 348
    .local v7, "right":F
    invoke-virtual {v10}, Lim/doit/pro/ui/component/chart/BarItem;->getData()F

    move-result v4

    const/4 v9, 0x0

    cmpl-float v4, v4, v9

    if-lez v4, :cond_4

    .line 349
    move-object/from16 v0, p0

    iget-object v4, v0, Lim/doit/pro/ui/component/chart/BarChart;->mBarPaint:Landroid/graphics/Paint;

    invoke-virtual {v10}, Lim/doit/pro/ui/component/chart/BarItem;->getFillColor()I

    move-result v9

    invoke-virtual {v4, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 350
    move-object/from16 v0, p0

    iget-object v9, v0, Lim/doit/pro/ui/component/chart/BarChart;->mBarPaint:Landroid/graphics/Paint;

    move-object/from16 v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 352
    invoke-virtual {v10}, Lim/doit/pro/ui/component/chart/BarItem;->getStrokeWidth()F

    move-result v4

    const/4 v9, 0x0

    cmpl-float v4, v4, v9

    if-lez v4, :cond_4

    .line 353
    move-object/from16 v0, p0

    iget-object v4, v0, Lim/doit/pro/ui/component/chart/BarChart;->mBarStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v10}, Lim/doit/pro/ui/component/chart/BarItem;->getStrokeWidth()F

    move-result v9

    invoke-virtual {v4, v9}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 354
    move-object/from16 v0, p0

    iget-object v4, v0, Lim/doit/pro/ui/component/chart/BarChart;->mBarStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v10}, Lim/doit/pro/ui/component/chart/BarItem;->getStrokeColor()I

    move-result v9

    invoke-virtual {v4, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 355
    invoke-virtual {v10}, Lim/doit/pro/ui/component/chart/BarItem;->getStrokeWidth()F

    move-result v4

    const/high16 v9, 0x40000000    # 2.0f

    div-float v12, v4, v9

    .line 356
    .local v12, "halfOfStroke":F
    add-float v17, v5, v12

    .line 357
    .local v17, "strokeLeft":F
    add-float v19, v6, v12

    .line 358
    .local v19, "strokeTop":F
    sub-float v18, v7, v12

    .line 359
    .local v18, "strokeRight":F
    move/from16 v16, v8

    .line 360
    .local v16, "strokeBottom":F
    new-instance v15, Landroid/graphics/Path;

    invoke-direct {v15}, Landroid/graphics/Path;-><init>()V

    .line 361
    .local v15, "path":Landroid/graphics/Path;
    move/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v15, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 362
    move/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v15, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 363
    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v15, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 364
    move/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v15, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 365
    move-object/from16 v0, p0

    iget-object v4, v0, Lim/doit/pro/ui/component/chart/BarChart;->mBarStrokePaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v15, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 369
    .end local v12    # "halfOfStroke":F
    .end local v15    # "path":Landroid/graphics/Path;
    .end local v16    # "strokeBottom":F
    .end local v17    # "strokeLeft":F
    .end local v18    # "strokeRight":F
    .end local v19    # "strokeTop":F
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Lim/doit/pro/ui/component/chart/BarItem;->getData()F

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v4, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 370
    .local v20, "title":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lim/doit/pro/ui/component/chart/BarChart;->mBarTextPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v9, v0, Lim/doit/pro/ui/component/chart/BarChart;->mBarTextSize:F

    invoke-virtual {v4, v9}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 371
    move-object/from16 v0, p0

    iget-object v4, v0, Lim/doit/pro/ui/component/chart/BarChart;->mBarTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v10}, Lim/doit/pro/ui/component/chart/BarItem;->getTextColor()I

    move-result v9

    invoke-virtual {v4, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 373
    move-object/from16 v0, p0

    iget v4, v0, Lim/doit/pro/ui/component/chart/BarChart;->mBarWidth:F

    move-object/from16 v0, p0

    iget-object v9, v0, Lim/doit/pro/ui/component/chart/BarChart;->mBarTextPaint:Landroid/graphics/Paint;

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v9

    sub-float/2addr v4, v9

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v4, v9

    .line 372
    add-float v24, v5, v4

    .line 374
    .local v24, "x":F
    move-object/from16 v0, p0

    iget v4, v0, Lim/doit/pro/ui/component/chart/BarChart;->mBarTextBottom:F

    sub-float v25, v6, v4

    .line 375
    .local v25, "y":F
    move-object/from16 v0, p0

    iget-object v4, v0, Lim/doit/pro/ui/component/chart/BarChart;->mBarTextPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 377
    move v5, v7

    goto/16 :goto_1
.end method

.method private drawDesc(Landroid/graphics/Canvas;)V
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 389
    iget-object v0, p0, Lim/doit/pro/ui/component/chart/BarChart;->mDescItems:Ljava/util/ArrayList;

    invoke-static {v0}, Lim/doit/pro/utils/CollectionUtils;->isEmpty(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 419
    :cond_0
    return-void

    .line 392
    :cond_1
    iget-object v0, p0, Lim/doit/pro/ui/component/chart/BarChart;->mDescItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 393
    .local v9, "size":I
    int-to-float v0, v9

    iget v3, p0, Lim/doit/pro/ui/component/chart/BarChart;->mDescIconWidth:F

    iget v4, p0, Lim/doit/pro/ui/component/chart/BarChart;->mDescCircleRight:F

    add-float/2addr v3, v4

    mul-float v7, v0, v3

    .line 394
    .local v7, "descsWidth":F
    add-int/lit8 v0, v9, -0x1

    int-to-float v0, v0

    iget v3, p0, Lim/doit/pro/ui/component/chart/BarChart;->mDescRight:F

    mul-float/2addr v0, v3

    add-float/2addr v7, v0

    .line 395
    iget-object v0, p0, Lim/doit/pro/ui/component/chart/BarChart;->mDescItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_3

    .line 399
    invoke-direct {p0}, Lim/doit/pro/ui/component/chart/BarChart;->getChartWidth()F

    move-result v6

    .line 400
    .local v6, "chartWidth":F
    invoke-direct {p0}, Lim/doit/pro/ui/component/chart/BarChart;->getChartStartX()F

    move-result v0

    sub-float v3, v6, v7

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float v1, v0, v3

    .line 401
    .local v1, "startX":F
    invoke-direct {p0}, Lim/doit/pro/ui/component/chart/BarChart;->getAxisYEndPosition()F

    move-result v0

    invoke-direct {p0}, Lim/doit/pro/ui/component/chart/BarChart;->getAxisXTitleHeight()F

    move-result v3

    add-float/2addr v0, v3

    iget v3, p0, Lim/doit/pro/ui/component/chart/BarChart;->mDescTop:F

    add-float v2, v0, v3

    .line 402
    .local v2, "startY":F
    iget-object v0, p0, Lim/doit/pro/ui/component/chart/BarChart;->mDescItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lim/doit/pro/ui/component/chart/BarChartDescItem;

    .line 403
    .local v8, "item":Lim/doit/pro/ui/component/chart/BarChartDescItem;
    iget-object v0, p0, Lim/doit/pro/ui/component/chart/BarChart;->mDescIconPaint:Landroid/graphics/Paint;

    invoke-virtual {v8}, Lim/doit/pro/ui/component/chart/BarChartDescItem;->getFillColor()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 404
    iget v0, p0, Lim/doit/pro/ui/component/chart/BarChart;->mDescIconWidth:F

    add-float v3, v1, v0

    iget v0, p0, Lim/doit/pro/ui/component/chart/BarChart;->mDescIconWidth:F

    add-float v4, v2, v0

    iget-object v5, p0, Lim/doit/pro/ui/component/chart/BarChart;->mDescIconPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 406
    invoke-virtual {v8}, Lim/doit/pro/ui/component/chart/BarChartDescItem;->getStrokeWidth()F

    move-result v0

    const/4 v3, 0x0

    cmpl-float v0, v0, v3

    if-lez v0, :cond_2

    .line 407
    iget-object v0, p0, Lim/doit/pro/ui/component/chart/BarChart;->mDescIconStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v8}, Lim/doit/pro/ui/component/chart/BarChartDescItem;->getStrokeWidth()F

    move-result v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 408
    iget-object v0, p0, Lim/doit/pro/ui/component/chart/BarChart;->mDescIconStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v8}, Lim/doit/pro/ui/component/chart/BarChartDescItem;->getStrokeColor()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 409
    iget v0, p0, Lim/doit/pro/ui/component/chart/BarChart;->mDescIconWidth:F

    add-float v3, v1, v0

    iget v0, p0, Lim/doit/pro/ui/component/chart/BarChart;->mDescIconWidth:F

    add-float v4, v2, v0

    iget-object v5, p0, Lim/doit/pro/ui/component/chart/BarChart;->mDescIconStrokePaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 412
    :cond_2
    iget v0, p0, Lim/doit/pro/ui/component/chart/BarChart;->mDescIconWidth:F

    add-float/2addr v1, v0

    .line 413
    iget v0, p0, Lim/doit/pro/ui/component/chart/BarChart;->mDescCircleRight:F

    add-float/2addr v1, v0

    .line 415
    invoke-virtual {v8}, Lim/doit/pro/ui/component/chart/BarChartDescItem;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 416
    iget v3, p0, Lim/doit/pro/ui/component/chart/BarChart;->mDescTitleMaxHeight:F

    add-float/2addr v3, v2

    iget-object v4, p0, Lim/doit/pro/ui/component/chart/BarChart;->mDescTextPaint:Landroid/graphics/Paint;

    .line 415
    invoke-virtual {p1, v0, v1, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 417
    iget-object v0, p0, Lim/doit/pro/ui/component/chart/BarChart;->mDescTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v8}, Lim/doit/pro/ui/component/chart/BarChartDescItem;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    iget v3, p0, Lim/doit/pro/ui/component/chart/BarChart;->mDescRight:F

    add-float/2addr v0, v3

    add-float/2addr v1, v0

    goto :goto_1

    .line 395
    .end local v1    # "startX":F
    .end local v2    # "startY":F
    .end local v6    # "chartWidth":F
    .end local v8    # "item":Lim/doit/pro/ui/component/chart/BarChartDescItem;
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lim/doit/pro/ui/component/chart/BarChartDescItem;

    .line 396
    .restart local v8    # "item":Lim/doit/pro/ui/component/chart/BarChartDescItem;
    iget-object v3, p0, Lim/doit/pro/ui/component/chart/BarChart;->mDescTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v8}, Lim/doit/pro/ui/component/chart/BarChartDescItem;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    add-float/2addr v7, v3

    goto/16 :goto_0
.end method

.method private drawLatitudeLine(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 288
    iget v0, p0, Lim/doit/pro/ui/component/chart/BarChart;->mLatitudeNum:I

    if-nez v0, :cond_1

    .line 307
    :cond_0
    return-void

    .line 291
    :cond_1
    invoke-direct {p0}, Lim/doit/pro/ui/component/chart/BarChart;->getAxisXStartPosition()F

    move-result v1

    .line 292
    .local v1, "startX":F
    invoke-direct {p0}, Lim/doit/pro/ui/component/chart/BarChart;->getAxisYEndPosition()F

    move-result v2

    .line 293
    .local v2, "startY":F
    invoke-direct {p0}, Lim/doit/pro/ui/component/chart/BarChart;->getXLength()F

    move-result v7

    .line 294
    .local v7, "length":F
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    iget v0, p0, Lim/doit/pro/ui/component/chart/BarChart;->mLatitudeNum:I

    if-ge v6, v0, :cond_0

    .line 295
    if-nez v6, :cond_2

    .line 294
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 298
    :cond_2
    iget v0, p0, Lim/doit/pro/ui/component/chart/BarChart;->mLatitudeOffset:F

    sub-float/2addr v2, v0

    .line 299
    rem-int/lit8 v0, v6, 0x2

    if-nez v0, :cond_3

    .line 300
    iget-object v0, p0, Lim/doit/pro/ui/component/chart/BarChart;->mLatitudePaint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 304
    :goto_2
    add-float v3, v1, v7

    .line 305
    iget-object v5, p0, Lim/doit/pro/ui/component/chart/BarChart;->mLatitudePaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v4, v2

    .line 304
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 302
    :cond_3
    iget-object v0, p0, Lim/doit/pro/ui/component/chart/BarChart;->mLatitudePaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lim/doit/pro/ui/component/chart/BarChart;->dashEffect:Landroid/graphics/PathEffect;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    goto :goto_2
.end method

.method private drawLatitudeTitle(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v9, 0x40000000    # 2.0f

    .line 310
    iget v7, p0, Lim/doit/pro/ui/component/chart/BarChart;->mLatitudeNum:I

    if-nez v7, :cond_1

    .line 324
    :cond_0
    return-void

    .line 313
    :cond_1
    invoke-direct {p0}, Lim/doit/pro/ui/component/chart/BarChart;->getAxisYEndPosition()F

    move-result v0

    .line 314
    .local v0, "axisYEnd":F
    iget v7, p0, Lim/doit/pro/ui/component/chart/BarChart;->mLatitudeMaxValue:I

    iget v8, p0, Lim/doit/pro/ui/component/chart/BarChart;->mLatitudeNum:I

    add-int/lit8 v8, v8, -0x1

    div-int/2addr v7, v8

    int-to-float v2, v7

    .line 315
    .local v2, "numOffset":F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v7, p0, Lim/doit/pro/ui/component/chart/BarChart;->mLatitudeNum:I

    if-ge v1, v7, :cond_0

    .line 316
    int-to-float v7, v1

    iget v8, p0, Lim/doit/pro/ui/component/chart/BarChart;->mLatitudeOffset:F

    mul-float/2addr v7, v8

    sub-float v4, v0, v7

    .line 317
    .local v4, "startY":F
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    int-to-float v8, v1

    mul-float/2addr v8, v2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 318
    .local v6, "title":Ljava/lang/String;
    iget-object v7, p0, Lim/doit/pro/ui/component/chart/BarChart;->mAxisTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v6}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v5

    .line 319
    .local v5, "textWidth":F
    invoke-direct {p0}, Lim/doit/pro/ui/component/chart/BarChart;->getAxisXStartPosition()F

    move-result v7

    iget v8, p0, Lim/doit/pro/ui/component/chart/BarChart;->mYTitleWidth:F

    sub-float/2addr v7, v8

    .line 320
    iget v8, p0, Lim/doit/pro/ui/component/chart/BarChart;->mYTitleWidth:F

    sub-float/2addr v8, v5

    div-float/2addr v8, v9

    .line 319
    add-float v3, v7, v8

    .line 321
    .local v3, "startX":F
    iget-object v7, p0, Lim/doit/pro/ui/component/chart/BarChart;->mAxisTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, v7, v6}, Lim/doit/pro/ui/component/chart/BarChart;->measureTextHeight(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v9

    add-float/2addr v4, v7

    .line 322
    iget-object v7, p0, Lim/doit/pro/ui/component/chart/BarChart;->mAxisTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v3, v4, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 315
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private drawTitle(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 264
    invoke-direct {p0}, Lim/doit/pro/ui/component/chart/BarChart;->isTitleDisplay()Z

    move-result v2

    if-nez v2, :cond_0

    .line 271
    :goto_0
    return-void

    .line 267
    :cond_0
    invoke-direct {p0}, Lim/doit/pro/ui/component/chart/BarChart;->getChartStartX()F

    move-result v2

    .line 268
    invoke-direct {p0}, Lim/doit/pro/ui/component/chart/BarChart;->getChartWidth()F

    move-result v3

    iget-object v4, p0, Lim/doit/pro/ui/component/chart/BarChart;->mTitlePaint:Landroid/graphics/Paint;

    iget-object v5, p0, Lim/doit/pro/ui/component/chart/BarChart;->mTitle:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v4

    sub-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    .line 267
    add-float v0, v2, v3

    .line 269
    .local v0, "x":F
    iget v2, p0, Lim/doit/pro/ui/component/chart/BarChart;->mTitleTop:F

    iget-object v3, p0, Lim/doit/pro/ui/component/chart/BarChart;->mTitlePaint:Landroid/graphics/Paint;

    iget-object v4, p0, Lim/doit/pro/ui/component/chart/BarChart;->mTitle:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lim/doit/pro/ui/component/chart/BarChart;->measureTextHeight(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result v3

    int-to-float v3, v3

    add-float v1, v2, v3

    .line 270
    .local v1, "y":F
    iget-object v2, p0, Lim/doit/pro/ui/component/chart/BarChart;->mTitle:Ljava/lang/String;

    iget-object v3, p0, Lim/doit/pro/ui/component/chart/BarChart;->mTitlePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0, v1, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method private getAxisXEndPosition()F
    .locals 2

    .prologue
    .line 473
    invoke-direct {p0}, Lim/doit/pro/ui/component/chart/BarChart;->getAxisXStartPosition()F

    move-result v0

    invoke-direct {p0}, Lim/doit/pro/ui/component/chart/BarChart;->getXLength()F

    move-result v1

    add-float/2addr v0, v1

    return v0
.end method

.method private getAxisXStartPosition()F
    .locals 4

    .prologue
    .line 455
    invoke-direct {p0}, Lim/doit/pro/ui/component/chart/BarChart;->getChartStartX()F

    move-result v1

    invoke-direct {p0}, Lim/doit/pro/ui/component/chart/BarChart;->getAxisYTitleWidth()F

    move-result v2

    add-float/2addr v1, v2

    iget v2, p0, Lim/doit/pro/ui/component/chart/BarChart;->mAxisWidth:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float v0, v1, v2

    .line 456
    .local v0, "postX":F
    return v0
.end method

.method private getAxisXTitleHeight()F
    .locals 3

    .prologue
    .line 477
    iget v1, p0, Lim/doit/pro/ui/component/chart/BarChart;->mXTitleTop:F

    iget v2, p0, Lim/doit/pro/ui/component/chart/BarChart;->mXTitleBottom:F

    add-float/2addr v1, v2

    iget v2, p0, Lim/doit/pro/ui/component/chart/BarChart;->mBarTextMaxHeight:F

    add-float v0, v1, v2

    .line 478
    .local v0, "height":F
    iget-object v1, p0, Lim/doit/pro/ui/component/chart/BarChart;->mAxisTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Paint$FontMetrics;->bottom:F

    add-float/2addr v0, v1

    .line 479
    return v0
.end method

.method private getAxisYEndPosition()F
    .locals 2

    .prologue
    .line 491
    invoke-direct {p0}, Lim/doit/pro/ui/component/chart/BarChart;->getAxisYStartPosition()F

    move-result v0

    invoke-direct {p0}, Lim/doit/pro/ui/component/chart/BarChart;->getAxisYLength()F

    move-result v1

    add-float/2addr v0, v1

    return v0
.end method

.method private getAxisYLength()F
    .locals 2

    .prologue
    .line 487
    iget v0, p0, Lim/doit/pro/ui/component/chart/BarChart;->mAxisYHeight:F

    iget v1, p0, Lim/doit/pro/ui/component/chart/BarChart;->mAxisYTop:F

    add-float/2addr v0, v1

    return v0
.end method

.method private getAxisYStartPosition()F
    .locals 1

    .prologue
    .line 483
    invoke-direct {p0}, Lim/doit/pro/ui/component/chart/BarChart;->getTitleHeight()F

    move-result v0

    return v0
.end method

.method private getAxisYTitleWidth()F
    .locals 1

    .prologue
    .line 495
    iget v0, p0, Lim/doit/pro/ui/component/chart/BarChart;->mYTitleWidth:F

    return v0
.end method

.method private getChartHeight()F
    .locals 3

    .prologue
    .line 427
    const/4 v0, 0x0

    .line 428
    .local v0, "height":F
    invoke-direct {p0}, Lim/doit/pro/ui/component/chart/BarChart;->getTitleHeight()F

    move-result v1

    add-float/2addr v0, v1

    .line 429
    invoke-direct {p0}, Lim/doit/pro/ui/component/chart/BarChart;->getAxisYLength()F

    move-result v1

    iget v2, p0, Lim/doit/pro/ui/component/chart/BarChart;->mAxisWidth:F

    add-float/2addr v1, v2

    invoke-direct {p0}, Lim/doit/pro/ui/component/chart/BarChart;->getAxisXTitleHeight()F

    move-result v2

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 430
    invoke-direct {p0}, Lim/doit/pro/ui/component/chart/BarChart;->getDescHeight()F

    move-result v1

    add-float/2addr v0, v1

    .line 431
    return v0
.end method

.method private getChartStartX()F
    .locals 4

    .prologue
    .line 435
    invoke-virtual {p0}, Lim/doit/pro/ui/component/chart/BarChart;->getWidth()I

    move-result v2

    int-to-float v1, v2

    .line 436
    .local v1, "width":F
    invoke-direct {p0}, Lim/doit/pro/ui/component/chart/BarChart;->getChartWidth()F

    move-result v0

    .line 437
    .local v0, "chartLength":F
    sub-float v2, v1, v0

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    return v2
.end method

.method private getChartWidth()F
    .locals 3

    .prologue
    .line 422
    invoke-direct {p0}, Lim/doit/pro/ui/component/chart/BarChart;->getXLength()F

    move-result v1

    invoke-direct {p0}, Lim/doit/pro/ui/component/chart/BarChart;->getAxisYTitleWidth()F

    move-result v2

    add-float/2addr v1, v2

    iget v2, p0, Lim/doit/pro/ui/component/chart/BarChart;->mAxisWidth:F

    add-float v0, v1, v2

    .line 423
    .local v0, "width":F
    return v0
.end method

.method private getDescHeight()F
    .locals 2

    .prologue
    .line 450
    iget v0, p0, Lim/doit/pro/ui/component/chart/BarChart;->mDescTop:F

    iget v1, p0, Lim/doit/pro/ui/component/chart/BarChart;->mDescTitleMaxHeight:F

    add-float/2addr v0, v1

    .line 451
    iget-object v1, p0, Lim/doit/pro/ui/component/chart/BarChart;->mDescTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Paint$FontMetrics;->bottom:F

    .line 450
    add-float/2addr v0, v1

    return v0
.end method

.method private getTitleHeight()F
    .locals 3

    .prologue
    .line 441
    invoke-direct {p0}, Lim/doit/pro/ui/component/chart/BarChart;->isTitleDisplay()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 442
    iget v0, p0, Lim/doit/pro/ui/component/chart/BarChart;->mTitleTop:F

    iget v1, p0, Lim/doit/pro/ui/component/chart/BarChart;->mTitleBottom:F

    add-float/2addr v0, v1

    .line 443
    iget-object v1, p0, Lim/doit/pro/ui/component/chart/BarChart;->mTitlePaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lim/doit/pro/ui/component/chart/BarChart;->mTitle:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lim/doit/pro/ui/component/chart/BarChart;->measureTextHeight(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result v1

    int-to-float v1, v1

    .line 442
    add-float/2addr v0, v1

    .line 444
    iget-object v1, p0, Lim/doit/pro/ui/component/chart/BarChart;->mTitlePaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Paint$FontMetrics;->bottom:F

    .line 442
    add-float/2addr v0, v1

    .line 446
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getXLength()F
    .locals 2

    .prologue
    .line 469
    iget v0, p0, Lim/doit/pro/ui/component/chart/BarChart;->mAxisXLength:F

    iget v1, p0, Lim/doit/pro/ui/component/chart/BarChart;->mAxisXRight:F

    add-float/2addr v0, v1

    return v0
.end method

.method private isTitleDisplay()Z
    .locals 1

    .prologue
    .line 499
    iget-object v0, p0, Lim/doit/pro/ui/component/chart/BarChart;->mTitle:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lim/doit/pro/ui/component/chart/BarChart;->mTitle:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected init(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 216
    invoke-super {p0, p1}, Lim/doit/pro/ui/component/chart/BaseView;->init(Landroid/content/Context;)V

    .line 218
    iget v0, p0, Lim/doit/pro/ui/component/chart/BarChart;->mAxisYHeight:F

    iget v1, p0, Lim/doit/pro/ui/component/chart/BarChart;->mLatitudeNum:I

    add-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lim/doit/pro/ui/component/chart/BarChart;->mLatitudeOffset:F

    .line 220
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    iget v1, p0, Lim/doit/pro/ui/component/chart/BarChart;->mTitleTextColor:I

    invoke-virtual {p0, v0, v3, v1}, Lim/doit/pro/ui/component/chart/BarChart;->buildPaint(Landroid/graphics/Paint$Style;FI)Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lim/doit/pro/ui/component/chart/BarChart;->mTitlePaint:Landroid/graphics/Paint;

    .line 221
    iget-object v0, p0, Lim/doit/pro/ui/component/chart/BarChart;->mTitlePaint:Landroid/graphics/Paint;

    iget v1, p0, Lim/doit/pro/ui/component/chart/BarChart;->mTitleTextSize:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 223
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    iget v1, p0, Lim/doit/pro/ui/component/chart/BarChart;->mAxisColor:I

    invoke-virtual {p0, v0, v3, v1}, Lim/doit/pro/ui/component/chart/BarChart;->buildPaint(Landroid/graphics/Paint$Style;FI)Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lim/doit/pro/ui/component/chart/BarChart;->mAxisPaint:Landroid/graphics/Paint;

    .line 225
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    iget v1, p0, Lim/doit/pro/ui/component/chart/BarChart;->mLatitudeWidth:F

    iget v2, p0, Lim/doit/pro/ui/component/chart/BarChart;->mLatitudeColor:I

    invoke-virtual {p0, v0, v1, v2}, Lim/doit/pro/ui/component/chart/BarChart;->buildPaint(Landroid/graphics/Paint$Style;FI)Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lim/doit/pro/ui/component/chart/BarChart;->mLatitudePaint:Landroid/graphics/Paint;

    .line 227
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    iget v1, p0, Lim/doit/pro/ui/component/chart/BarChart;->mAxisTextColor:I

    invoke-virtual {p0, v0, v3, v1}, Lim/doit/pro/ui/component/chart/BarChart;->buildPaint(Landroid/graphics/Paint$Style;FI)Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lim/doit/pro/ui/component/chart/BarChart;->mAxisTextPaint:Landroid/graphics/Paint;

    .line 228
    iget-object v0, p0, Lim/doit/pro/ui/component/chart/BarChart;->mAxisTextPaint:Landroid/graphics/Paint;

    iget v1, p0, Lim/doit/pro/ui/component/chart/BarChart;->mAxisTextSize:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 230
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    const v1, -0xffff01

    invoke-virtual {p0, v0, v3, v1}, Lim/doit/pro/ui/component/chart/BarChart;->buildPaint(Landroid/graphics/Paint$Style;FI)Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lim/doit/pro/ui/component/chart/BarChart;->mBarPaint:Landroid/graphics/Paint;

    .line 231
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v3, v1}, Lim/doit/pro/ui/component/chart/BarChart;->buildPaint(Landroid/graphics/Paint$Style;FI)Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lim/doit/pro/ui/component/chart/BarChart;->mBarStrokePaint:Landroid/graphics/Paint;

    .line 232
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    iget v1, p0, Lim/doit/pro/ui/component/chart/BarChart;->mBarTextColor:I

    invoke-virtual {p0, v0, v3, v1}, Lim/doit/pro/ui/component/chart/BarChart;->buildPaint(Landroid/graphics/Paint$Style;FI)Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lim/doit/pro/ui/component/chart/BarChart;->mBarTextPaint:Landroid/graphics/Paint;

    .line 233
    iget-object v0, p0, Lim/doit/pro/ui/component/chart/BarChart;->mBarTextPaint:Landroid/graphics/Paint;

    iget v1, p0, Lim/doit/pro/ui/component/chart/BarChart;->mBarTextSize:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 235
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    iget v1, p0, Lim/doit/pro/ui/component/chart/BarChart;->mBarTextColor:I

    invoke-virtual {p0, v0, v3, v1}, Lim/doit/pro/ui/component/chart/BarChart;->buildPaint(Landroid/graphics/Paint$Style;FI)Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lim/doit/pro/ui/component/chart/BarChart;->mDescIconPaint:Landroid/graphics/Paint;

    .line 236
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    iget v1, p0, Lim/doit/pro/ui/component/chart/BarChart;->mBarTextColor:I

    invoke-virtual {p0, v0, v3, v1}, Lim/doit/pro/ui/component/chart/BarChart;->buildPaint(Landroid/graphics/Paint$Style;FI)Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lim/doit/pro/ui/component/chart/BarChart;->mDescIconStrokePaint:Landroid/graphics/Paint;

    .line 237
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    iget v1, p0, Lim/doit/pro/ui/component/chart/BarChart;->mDescTextColor:I

    invoke-virtual {p0, v0, v3, v1}, Lim/doit/pro/ui/component/chart/BarChart;->buildPaint(Landroid/graphics/Paint$Style;FI)Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lim/doit/pro/ui/component/chart/BarChart;->mDescTextPaint:Landroid/graphics/Paint;

    .line 238
    iget-object v0, p0, Lim/doit/pro/ui/component/chart/BarChart;->mDescTextPaint:Landroid/graphics/Paint;

    iget v1, p0, Lim/doit/pro/ui/component/chart/BarChart;->mDescTextSize:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 239
    return-void
.end method

.method protected initAttributes(Landroid/util/AttributeSet;I)V
    .locals 9
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "defStyle"    # I

    .prologue
    const/high16 v8, 0x41600000    # 14.0f

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v6, 0x41200000    # 10.0f

    const/high16 v5, -0x1000000

    const/4 v4, 0x0

    .line 143
    if-nez p1, :cond_0

    .line 212
    :goto_0
    return-void

    .line 146
    :cond_0
    invoke-virtual {p0}, Lim/doit/pro/ui/component/chart/BarChart;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 147
    sget-object v2, Lim/doit/pro/v4/R$styleable;->BarChart:[I

    const/4 v3, 0x0

    .line 146
    invoke-virtual {v1, p1, v2, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 148
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v7}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lim/doit/pro/ui/component/chart/BarChart;->mAxisWidth:F

    .line 150
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lim/doit/pro/ui/component/chart/BarChart;->mAxisColor:I

    .line 152
    const/4 v1, 0x4

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lim/doit/pro/ui/component/chart/BarChart;->mAxisYHeight:F

    .line 153
    const/4 v1, 0x5

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lim/doit/pro/ui/component/chart/BarChart;->mAxisYTop:F

    .line 154
    const/4 v1, 0x6

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lim/doit/pro/ui/component/chart/BarChart;->mAxisXRight:F

    .line 156
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v8}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lim/doit/pro/ui/component/chart/BarChart;->mAxisTextSize:F

    .line 158
    const/4 v1, 0x3

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lim/doit/pro/ui/component/chart/BarChart;->mAxisTextColor:I

    .line 161
    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lim/doit/pro/ui/component/chart/BarChart;->mTitle:Ljava/lang/String;

    .line 163
    const/16 v1, 0x8

    .line 164
    const/high16 v2, 0x41800000    # 16.0f

    .line 162
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lim/doit/pro/ui/component/chart/BarChart;->mTitleTextSize:F

    .line 165
    const/16 v1, 0x9

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lim/doit/pro/ui/component/chart/BarChart;->mTitleTextColor:I

    .line 167
    const/16 v1, 0xa

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lim/doit/pro/ui/component/chart/BarChart;->mTitleTop:F

    .line 169
    const/16 v1, 0xb

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lim/doit/pro/ui/component/chart/BarChart;->mTitleBottom:F

    .line 172
    const/16 v1, 0xc

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lim/doit/pro/ui/component/chart/BarChart;->mXTitleTop:F

    .line 174
    const/16 v1, 0xd

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lim/doit/pro/ui/component/chart/BarChart;->mXTitleBottom:F

    .line 177
    const/16 v1, 0xe

    .line 178
    const/high16 v2, 0x42480000    # 50.0f

    .line 177
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lim/doit/pro/ui/component/chart/BarChart;->mYTitleWidth:F

    .line 180
    const/16 v1, 0xf

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lim/doit/pro/ui/component/chart/BarChart;->mLatitudeNum:I

    .line 181
    const/16 v1, 0x10

    .line 182
    const v2, -0x777778

    .line 181
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lim/doit/pro/ui/component/chart/BarChart;->mLatitudeColor:I

    .line 183
    const/16 v1, 0x11

    invoke-virtual {v0, v1, v7}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lim/doit/pro/ui/component/chart/BarChart;->mLatitudeWidth:F

    .line 186
    const/16 v1, 0x15

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lim/doit/pro/ui/component/chart/BarChart;->mDescTop:F

    .line 187
    const/16 v1, 0x13

    .line 188
    const/high16 v2, 0x41800000    # 16.0f

    .line 187
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lim/doit/pro/ui/component/chart/BarChart;->mDescTextSize:F

    .line 189
    const/16 v1, 0x12

    .line 190
    const v2, -0x777778

    .line 189
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lim/doit/pro/ui/component/chart/BarChart;->mDescTextColor:I

    .line 191
    const/16 v1, 0x14

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lim/doit/pro/ui/component/chart/BarChart;->mDescRight:F

    .line 194
    const/16 v1, 0x16

    .line 193
    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lim/doit/pro/ui/component/chart/BarChart;->mDescIconWidth:F

    .line 197
    const/16 v1, 0x17

    .line 196
    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lim/doit/pro/ui/component/chart/BarChart;->mDescCircleRight:F

    .line 200
    const/16 v1, 0x18

    .line 201
    const/high16 v2, 0x42480000    # 50.0f

    .line 200
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lim/doit/pro/ui/component/chart/BarChart;->mBarWidth:F

    .line 202
    const/16 v1, 0x19

    .line 203
    const/high16 v2, 0x41a00000    # 20.0f

    .line 202
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lim/doit/pro/ui/component/chart/BarChart;->mBarLeft:F

    .line 205
    const/16 v1, 0x1a

    invoke-virtual {v0, v1, v8}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    .line 204
    iput v1, p0, Lim/doit/pro/ui/component/chart/BarChart;->mBarTextSize:F

    .line 206
    const/16 v1, 0x1b

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lim/doit/pro/ui/component/chart/BarChart;->mBarTextColor:I

    .line 209
    const/16 v1, 0x1c

    .line 208
    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lim/doit/pro/ui/component/chart/BarChart;->mBarTextBottom:F

    .line 211
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto/16 :goto_0
.end method

.method protected measureHeight(I)I
    .locals 1
    .param p1, "measureSpec"    # I

    .prologue
    .line 255
    invoke-direct {p0}, Lim/doit/pro/ui/component/chart/BarChart;->getChartHeight()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method protected measureWidth(I)I
    .locals 1
    .param p1, "measureSpec"    # I

    .prologue
    .line 260
    invoke-direct {p0}, Lim/doit/pro/ui/component/chart/BarChart;->getChartWidth()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 243
    invoke-super {p0, p1}, Lim/doit/pro/ui/component/chart/BaseView;->onDraw(Landroid/graphics/Canvas;)V

    .line 244
    invoke-direct {p0, p1}, Lim/doit/pro/ui/component/chart/BarChart;->drawTitle(Landroid/graphics/Canvas;)V

    .line 245
    invoke-direct {p0, p1}, Lim/doit/pro/ui/component/chart/BarChart;->drawAxisX(Landroid/graphics/Canvas;)V

    .line 246
    invoke-direct {p0, p1}, Lim/doit/pro/ui/component/chart/BarChart;->drawAxisY(Landroid/graphics/Canvas;)V

    .line 247
    invoke-direct {p0, p1}, Lim/doit/pro/ui/component/chart/BarChart;->drawLatitudeLine(Landroid/graphics/Canvas;)V

    .line 248
    invoke-direct {p0, p1}, Lim/doit/pro/ui/component/chart/BarChart;->drawLatitudeTitle(Landroid/graphics/Canvas;)V

    .line 249
    invoke-direct {p0, p1}, Lim/doit/pro/ui/component/chart/BarChart;->drawBars(Landroid/graphics/Canvas;)V

    .line 250
    invoke-direct {p0, p1}, Lim/doit/pro/ui/component/chart/BarChart;->drawDesc(Landroid/graphics/Canvas;)V

    .line 251
    return-void
.end method

.method public setBarDescs(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lim/doit/pro/ui/component/chart/BarChartDescItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 137
    .local p1, "barDescs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/ui/component/chart/BarChartDescItem;>;"
    iput-object p1, p0, Lim/doit/pro/ui/component/chart/BarChart;->mDescItems:Ljava/util/ArrayList;

    .line 138
    invoke-direct {p0}, Lim/doit/pro/ui/component/chart/BarChart;->calculateAboutBarDescs()V

    .line 139
    return-void
.end method

.method public setBars(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lim/doit/pro/ui/component/chart/BarChartItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 131
    .local p1, "barItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/ui/component/chart/BarChartItem;>;"
    iput-object p1, p0, Lim/doit/pro/ui/component/chart/BarChart;->mBarItems:Ljava/util/ArrayList;

    .line 132
    invoke-direct {p0}, Lim/doit/pro/ui/component/chart/BarChart;->calculateAsisXLength()V

    .line 133
    invoke-direct {p0}, Lim/doit/pro/ui/component/chart/BarChart;->calculateAboutBars()V

    .line 134
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 127
    iput-object p1, p0, Lim/doit/pro/ui/component/chart/BarChart;->mTitle:Ljava/lang/String;

    .line 128
    return-void
.end method
