.class public Lcom/doomonafireball/betterpickers/radialtimepicker/CircleView;
.super Landroid/view/View;
.source "CircleView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CircleView"


# instance fields
.field private mAmPmCircleRadiusMultiplier:F

.field private mCircleColor:I

.field private mCircleRadius:I

.field private mCircleRadiusMultiplier:F

.field private mDotColor:I

.field private mDrawValuesReady:Z

.field private mIs24HourMode:Z

.field private mIsInitialized:Z

.field private final mPaint:Landroid/graphics/Paint;

.field private mXCenter:I

.field private mYCenter:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 35
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/CircleView;->mPaint:Landroid/graphics/Paint;

    .line 51
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 52
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x7f08008e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/CircleView;->mCircleColor:I

    .line 53
    const v1, 0x7f080094

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/CircleView;->mDotColor:I

    .line 54
    iget-object v1, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/CircleView;->mPaint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 56
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/CircleView;->mIsInitialized:Z

    .line 57
    return-void
.end method


# virtual methods
.method public initialize(Landroid/content/Context;Z)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "is24HourMode"    # Z

    .prologue
    .line 60
    iget-boolean v1, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/CircleView;->mIsInitialized:Z

    if-eqz v1, :cond_0

    .line 61
    const-string v1, "CircleView"

    const-string v2, "CircleView may only be initialized once."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    :goto_0
    return-void

    .line 65
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 66
    .local v0, "res":Landroid/content/res/Resources;
    iput-boolean p2, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/CircleView;->mIs24HourMode:Z

    .line 67
    if-eqz p2, :cond_1

    .line 69
    const v1, 0x7f0c0019

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 68
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/CircleView;->mCircleRadiusMultiplier:F

    .line 77
    :goto_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/CircleView;->mIsInitialized:Z

    goto :goto_0

    .line 72
    :cond_1
    const v1, 0x7f0c0018

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 71
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/CircleView;->mCircleRadiusMultiplier:F

    .line 74
    const v1, 0x7f0c001b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    .line 73
    iput v1, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/CircleView;->mAmPmCircleRadiusMultiplier:F

    goto :goto_1
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/doomonafireball/betterpickers/radialtimepicker/CircleView;->getWidth()I

    move-result v1

    .line 94
    .local v1, "viewWidth":I
    if-eqz v1, :cond_0

    iget-boolean v2, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/CircleView;->mIsInitialized:Z

    if-nez v2, :cond_1

    .line 121
    :cond_0
    :goto_0
    return-void

    .line 98
    :cond_1
    iget-boolean v2, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/CircleView;->mDrawValuesReady:Z

    if-nez v2, :cond_3

    .line 99
    invoke-virtual {p0}, Lcom/doomonafireball/betterpickers/radialtimepicker/CircleView;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/CircleView;->mXCenter:I

    .line 100
    invoke-virtual {p0}, Lcom/doomonafireball/betterpickers/radialtimepicker/CircleView;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/CircleView;->mYCenter:I

    .line 101
    iget v2, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/CircleView;->mXCenter:I

    iget v3, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/CircleView;->mYCenter:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/CircleView;->mCircleRadiusMultiplier:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/CircleView;->mCircleRadius:I

    .line 103
    iget-boolean v2, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/CircleView;->mIs24HourMode:Z

    if-nez v2, :cond_2

    .line 107
    iget v2, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/CircleView;->mCircleRadius:I

    int-to-float v2, v2

    iget v3, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/CircleView;->mAmPmCircleRadiusMultiplier:F

    mul-float/2addr v2, v3

    float-to-int v0, v2

    .line 108
    .local v0, "amPmCircleRadius":I
    iget v2, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/CircleView;->mYCenter:I

    div-int/lit8 v3, v0, 0x2

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/CircleView;->mYCenter:I

    .line 111
    .end local v0    # "amPmCircleRadius":I
    :cond_2
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/CircleView;->mDrawValuesReady:Z

    .line 115
    :cond_3
    iget-object v2, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/CircleView;->mPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/CircleView;->mCircleColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 116
    iget v2, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/CircleView;->mXCenter:I

    int-to-float v2, v2

    iget v3, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/CircleView;->mYCenter:I

    int-to-float v3, v3

    iget v4, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/CircleView;->mCircleRadius:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/CircleView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 119
    iget-object v2, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/CircleView;->mPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/CircleView;->mDotColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 120
    iget v2, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/CircleView;->mXCenter:I

    int-to-float v2, v2

    iget v3, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/CircleView;->mYCenter:I

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    iget-object v5, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/CircleView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method setTheme(Landroid/content/Context;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dark"    # Z

    .prologue
    .line 81
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 82
    .local v0, "res":Landroid/content/res/Resources;
    if-eqz p2, :cond_0

    .line 83
    const v1, 0x7f08009b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/CircleView;->mCircleColor:I

    .line 84
    const v1, 0x7f08009a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/CircleView;->mDotColor:I

    .line 89
    :goto_0
    return-void

    .line 86
    :cond_0
    const v1, 0x7f08008e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/CircleView;->mCircleColor:I

    .line 87
    const v1, 0x7f080094

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/CircleView;->mDotColor:I

    goto :goto_0
.end method
