.class public Lcom/doomonafireball/betterpickers/radialtimepicker/AmPmCirclesView;
.super Landroid/view/View;
.source "AmPmCirclesView.java"


# static fields
.field private static final AM:I = 0x0

.field private static final PM:I = 0x1

.field private static final SELECTED_ALPHA:I = 0x33

.field private static final SELECTED_ALPHA_THEME_DARK:I = 0x66

.field private static final TAG:Ljava/lang/String; = "AmPmCirclesView"


# instance fields
.field private mAmOrPm:I

.field private mAmOrPmPressed:I

.field private mAmPmCircleRadius:I

.field private mAmPmCircleRadiusMultiplier:F

.field private mAmPmTextColor:I

.field private mAmPmYCenter:I

.field private mAmText:Ljava/lang/String;

.field private mAmXCenter:I

.field private mCircleRadiusMultiplier:F

.field private mDrawValuesReady:Z

.field private mIsInitialized:Z

.field private final mPaint:Landroid/graphics/Paint;

.field private mPmText:Ljava/lang/String;

.field private mPmXCenter:I

.field private mSelectedAlpha:I

.field private mSelectedColor:I

.field private mUnselectedColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 68
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 45
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/AmPmCirclesView;->mPaint:Landroid/graphics/Paint;

    .line 69
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/AmPmCirclesView;->mIsInitialized:Z

    .line 70
    return-void
.end method


# virtual methods
.method public getIsTouchingAmOrPm(FF)I
    .locals 6
    .param p1, "xCoord"    # F
    .param p2, "yCoord"    # F

    .prologue
    const/4 v3, -0x1

    .line 130
    iget-boolean v4, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/AmPmCirclesView;->mDrawValuesReady:Z

    if-nez v4, :cond_1

    .line 149
    :cond_0
    :goto_0
    return v3

    .line 134
    :cond_1
    iget v4, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/AmPmCirclesView;->mAmPmYCenter:I

    int-to-float v4, v4

    sub-float v4, p2, v4

    iget v5, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/AmPmCirclesView;->mAmPmYCenter:I

    int-to-float v5, v5

    sub-float v5, p2, v5

    mul-float/2addr v4, v5

    float-to-int v2, v4

    .line 137
    .local v2, "squaredYDistance":I
    iget v4, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/AmPmCirclesView;->mAmXCenter:I

    int-to-float v4, v4

    sub-float v4, p1, v4

    iget v5, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/AmPmCirclesView;->mAmXCenter:I

    int-to-float v5, v5

    sub-float v5, p1, v5

    mul-float/2addr v4, v5

    int-to-float v5, v2

    add-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-int v0, v4

    .line 138
    .local v0, "distanceToAmCenter":I
    iget v4, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/AmPmCirclesView;->mAmPmCircleRadius:I

    if-gt v0, v4, :cond_2

    .line 139
    const/4 v3, 0x0

    goto :goto_0

    .line 143
    :cond_2
    iget v4, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/AmPmCirclesView;->mPmXCenter:I

    int-to-float v4, v4

    sub-float v4, p1, v4

    iget v5, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/AmPmCirclesView;->mPmXCenter:I

    int-to-float v5, v5

    sub-float v5, p1, v5

    mul-float/2addr v4, v5

    int-to-float v5, v2

    add-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-int v1, v4

    .line 144
    .local v1, "distanceToPmCenter":I
    iget v4, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/AmPmCirclesView;->mAmPmCircleRadius:I

    if-gt v1, v4, :cond_0

    .line 145
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public initialize(Landroid/content/Context;I)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "amOrPm"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 73
    iget-boolean v4, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/AmPmCirclesView;->mIsInitialized:Z

    if-eqz v4, :cond_0

    .line 74
    const-string v4, "AmPmCirclesView"

    const-string v5, "AmPmCirclesView may only be initialized once."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    :goto_0
    return-void

    .line 78
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 79
    .local v1, "res":Landroid/content/res/Resources;
    const v4, 0x7f08008e

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    iput v4, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/AmPmCirclesView;->mUnselectedColor:I

    .line 80
    const v4, 0x7f080096

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    iput v4, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/AmPmCirclesView;->mSelectedColor:I

    .line 81
    const v4, 0x7f080091

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    iput v4, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/AmPmCirclesView;->mAmPmTextColor:I

    .line 82
    const/16 v4, 0x33

    iput v4, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/AmPmCirclesView;->mSelectedAlpha:I

    .line 83
    const v4, 0x7f0c0263

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 84
    .local v3, "typefaceFamily":Ljava/lang/String;
    invoke-static {v3, v7}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    .line 85
    .local v2, "tf":Landroid/graphics/Typeface;
    iget-object v4, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/AmPmCirclesView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 86
    iget-object v4, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/AmPmCirclesView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 87
    iget-object v4, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/AmPmCirclesView;->mPaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 90
    const v4, 0x7f0c0018

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    .line 89
    iput v4, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/AmPmCirclesView;->mCircleRadiusMultiplier:F

    .line 92
    const v4, 0x7f0c001b

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    .line 91
    iput v4, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/AmPmCirclesView;->mAmPmCircleRadiusMultiplier:F

    .line 93
    new-instance v4, Ljava/text/DateFormatSymbols;

    invoke-direct {v4}, Ljava/text/DateFormatSymbols;-><init>()V

    invoke-virtual {v4}, Ljava/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    move-result-object v0

    .line 94
    .local v0, "amPmTexts":[Ljava/lang/String;
    aget-object v4, v0, v7

    iput-object v4, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/AmPmCirclesView;->mAmText:Ljava/lang/String;

    .line 95
    aget-object v4, v0, v6

    iput-object v4, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/AmPmCirclesView;->mPmText:Ljava/lang/String;

    .line 97
    invoke-virtual {p0, p2}, Lcom/doomonafireball/betterpickers/radialtimepicker/AmPmCirclesView;->setAmOrPm(I)V

    .line 98
    const/4 v4, -0x1

    iput v4, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/AmPmCirclesView;->mAmOrPmPressed:I

    .line 100
    iput-boolean v6, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/AmPmCirclesView;->mIsInitialized:Z

    goto :goto_0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 14
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v12, 0x1

    .line 154
    invoke-virtual {p0}, Lcom/doomonafireball/betterpickers/radialtimepicker/AmPmCirclesView;->getWidth()I

    move-result v9

    .line 155
    .local v9, "viewWidth":I
    if-eqz v9, :cond_0

    iget-boolean v10, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/AmPmCirclesView;->mIsInitialized:Z

    if-nez v10, :cond_1

    .line 212
    :cond_0
    :goto_0
    return-void

    .line 159
    :cond_1
    iget-boolean v10, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/AmPmCirclesView;->mDrawValuesReady:Z

    if-nez v10, :cond_2

    .line 160
    invoke-virtual {p0}, Lcom/doomonafireball/betterpickers/radialtimepicker/AmPmCirclesView;->getWidth()I

    move-result v10

    div-int/lit8 v3, v10, 0x2

    .line 161
    .local v3, "layoutXCenter":I
    invoke-virtual {p0}, Lcom/doomonafireball/betterpickers/radialtimepicker/AmPmCirclesView;->getHeight()I

    move-result v10

    div-int/lit8 v4, v10, 0x2

    .line 163
    .local v4, "layoutYCenter":I
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v10

    int-to-float v10, v10

    iget v11, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/AmPmCirclesView;->mCircleRadiusMultiplier:F

    mul-float/2addr v10, v11

    float-to-int v2, v10

    .line 164
    .local v2, "circleRadius":I
    int-to-float v10, v2

    iget v11, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/AmPmCirclesView;->mAmPmCircleRadiusMultiplier:F

    mul-float/2addr v10, v11

    float-to-int v10, v10

    iput v10, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/AmPmCirclesView;->mAmPmCircleRadius:I

    .line 165
    iget v10, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/AmPmCirclesView;->mAmPmCircleRadius:I

    mul-int/lit8 v10, v10, 0x3

    div-int/lit8 v7, v10, 0x4

    .line 166
    .local v7, "textSize":I
    iget-object v10, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/AmPmCirclesView;->mPaint:Landroid/graphics/Paint;

    int-to-float v11, v7

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 169
    iget v10, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/AmPmCirclesView;->mAmPmCircleRadius:I

    div-int/lit8 v10, v10, 0x2

    sub-int v10, v4, v10

    add-int/2addr v10, v2

    iput v10, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/AmPmCirclesView;->mAmPmYCenter:I

    .line 172
    sub-int v10, v3, v2

    iget v11, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/AmPmCirclesView;->mAmPmCircleRadius:I

    add-int/2addr v10, v11

    iput v10, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/AmPmCirclesView;->mAmXCenter:I

    .line 173
    add-int v10, v3, v2

    iget v11, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/AmPmCirclesView;->mAmPmCircleRadius:I

    sub-int/2addr v10, v11

    iput v10, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/AmPmCirclesView;->mPmXCenter:I

    .line 175
    iput-boolean v12, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/AmPmCirclesView;->mDrawValuesReady:Z

    .line 180
    .end local v2    # "circleRadius":I
    .end local v3    # "layoutXCenter":I
    .end local v4    # "layoutYCenter":I
    .end local v7    # "textSize":I
    :cond_2
    iget v1, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/AmPmCirclesView;->mUnselectedColor:I

    .line 181
    .local v1, "amColor":I
    const/16 v0, 0xff

    .line 182
    .local v0, "amAlpha":I
    iget v6, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/AmPmCirclesView;->mUnselectedColor:I

    .line 183
    .local v6, "pmColor":I
    const/16 v5, 0xff

    .line 184
    .local v5, "pmAlpha":I
    iget v10, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/AmPmCirclesView;->mAmOrPm:I

    if-nez v10, :cond_5

    .line 185
    iget v1, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/AmPmCirclesView;->mSelectedColor:I

    .line 186
    iget v0, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/AmPmCirclesView;->mSelectedAlpha:I

    .line 191
    :cond_3
    :goto_1
    iget v10, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/AmPmCirclesView;->mAmOrPmPressed:I

    if-nez v10, :cond_6

    .line 192
    iget v1, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/AmPmCirclesView;->mSelectedColor:I

    .line 193
    iget v0, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/AmPmCirclesView;->mSelectedAlpha:I

    .line 200
    :cond_4
    :goto_2
    iget-object v10, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/AmPmCirclesView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v10, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 201
    iget-object v10, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/AmPmCirclesView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v10, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 202
    iget v10, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/AmPmCirclesView;->mAmXCenter:I

    int-to-float v10, v10

    iget v11, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/AmPmCirclesView;->mAmPmYCenter:I

    int-to-float v11, v11

    iget v12, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/AmPmCirclesView;->mAmPmCircleRadius:I

    int-to-float v12, v12

    iget-object v13, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/AmPmCirclesView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v10, v11, v12, v13}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 203
    iget-object v10, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/AmPmCirclesView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v10, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 204
    iget-object v10, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/AmPmCirclesView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v10, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 205
    iget v10, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/AmPmCirclesView;->mPmXCenter:I

    int-to-float v10, v10

    iget v11, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/AmPmCirclesView;->mAmPmYCenter:I

    int-to-float v11, v11

    iget v12, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/AmPmCirclesView;->mAmPmCircleRadius:I

    int-to-float v12, v12

    iget-object v13, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/AmPmCirclesView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v10, v11, v12, v13}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 208
    iget-object v10, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/AmPmCirclesView;->mPaint:Landroid/graphics/Paint;

    iget v11, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/AmPmCirclesView;->mAmPmTextColor:I

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setColor(I)V

    .line 209
    iget v10, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/AmPmCirclesView;->mAmPmYCenter:I

    iget-object v11, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/AmPmCirclesView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v11}, Landroid/graphics/Paint;->descent()F

    move-result v11

    iget-object v12, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/AmPmCirclesView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v12}, Landroid/graphics/Paint;->ascent()F

    move-result v12

    add-float/2addr v11, v12

    float-to-int v11, v11

    div-int/lit8 v11, v11, 0x2

    sub-int v8, v10, v11

    .line 210
    .local v8, "textYCenter":I
    iget-object v10, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/AmPmCirclesView;->mAmText:Ljava/lang/String;

    iget v11, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/AmPmCirclesView;->mAmXCenter:I

    int-to-float v11, v11

    int-to-float v12, v8

    iget-object v13, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/AmPmCirclesView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v10, v11, v12, v13}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 211
    iget-object v10, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/AmPmCirclesView;->mPmText:Ljava/lang/String;

    iget v11, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/AmPmCirclesView;->mPmXCenter:I

    int-to-float v11, v11

    int-to-float v12, v8

    iget-object v13, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/AmPmCirclesView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v10, v11, v12, v13}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 187
    .end local v8    # "textYCenter":I
    :cond_5
    iget v10, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/AmPmCirclesView;->mAmOrPm:I

    if-ne v10, v12, :cond_3

    .line 188
    iget v6, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/AmPmCirclesView;->mSelectedColor:I

    .line 189
    iget v5, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/AmPmCirclesView;->mSelectedAlpha:I

    goto :goto_1

    .line 194
    :cond_6
    iget v10, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/AmPmCirclesView;->mAmOrPmPressed:I

    if-ne v10, v12, :cond_4

    .line 195
    iget v6, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/AmPmCirclesView;->mSelectedColor:I

    .line 196
    iget v5, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/AmPmCirclesView;->mSelectedAlpha:I

    goto :goto_2
.end method

.method public setAmOrPm(I)V
    .locals 0
    .param p1, "amOrPm"    # I

    .prologue
    .line 119
    iput p1, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/AmPmCirclesView;->mAmOrPm:I

    .line 120
    return-void
.end method

.method public setAmOrPmPressed(I)V
    .locals 0
    .param p1, "amOrPmPressed"    # I

    .prologue
    .line 123
    iput p1, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/AmPmCirclesView;->mAmOrPmPressed:I

    .line 124
    return-void
.end method

.method setTheme(Landroid/content/Context;Z)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "themeDark"    # Z

    .prologue
    const v2, 0x7f08008e

    .line 104
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 105
    .local v0, "res":Landroid/content/res/Resources;
    if-eqz p2, :cond_0

    .line 106
    const v1, 0x7f08009b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/AmPmCirclesView;->mUnselectedColor:I

    .line 107
    const v1, 0x7f080098

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/AmPmCirclesView;->mSelectedColor:I

    .line 108
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/AmPmCirclesView;->mAmPmTextColor:I

    .line 109
    const/16 v1, 0x66

    iput v1, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/AmPmCirclesView;->mSelectedAlpha:I

    .line 116
    :goto_0
    return-void

    .line 111
    :cond_0
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/AmPmCirclesView;->mUnselectedColor:I

    .line 112
    const v1, 0x7f080096

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/AmPmCirclesView;->mSelectedColor:I

    .line 113
    const v1, 0x7f080091

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/AmPmCirclesView;->mAmPmTextColor:I

    .line 114
    const/16 v1, 0x33

    iput v1, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/AmPmCirclesView;->mSelectedAlpha:I

    goto :goto_0
.end method
