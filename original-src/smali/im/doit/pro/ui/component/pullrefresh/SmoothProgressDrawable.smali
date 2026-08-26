.class public Lim/doit/pro/ui/component/pullrefresh/SmoothProgressDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "SmoothProgressDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Animatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lim/doit/pro/ui/component/pullrefresh/SmoothProgressDrawable$Builder;
    }
.end annotation


# static fields
.field private static final FRAME_DURATION:J = 0x10L

.field private static final OFFSET_PER_FRAME:F = 0.01f


# instance fields
.field private mBounds:Landroid/graphics/Rect;

.field private mColors:[I

.field private mColorsIndex:I

.field private mCurrentOffset:F

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mMirrorMode:Z

.field private mNewTurn:Z

.field private mPaint:Landroid/graphics/Paint;

.field private mReversed:Z

.field private mRunning:Z

.field private mSectionsCount:I

.field private mSeparatorLength:I

.field private mSpeed:F

.field private final mUpdater:Ljava/lang/Runnable;


# direct methods
.method private constructor <init>(Landroid/view/animation/Interpolator;II[IIFZZ)V
    .locals 3
    .param p1, "interpolator"    # Landroid/view/animation/Interpolator;
    .param p2, "sectionsCount"    # I
    .param p3, "separatorLength"    # I
    .param p4, "colors"    # [I
    .param p5, "width"    # I
    .param p6, "speed"    # F
    .param p7, "reversed"    # Z
    .param p8, "mirrorMode"    # Z

    .prologue
    const/4 v2, 0x0

    .line 39
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 195
    new-instance v0, Lim/doit/pro/ui/component/pullrefresh/SmoothProgressDrawable$1;

    invoke-direct {v0, p0}, Lim/doit/pro/ui/component/pullrefresh/SmoothProgressDrawable$1;-><init>(Lim/doit/pro/ui/component/pullrefresh/SmoothProgressDrawable;)V

    iput-object v0, p0, Lim/doit/pro/ui/component/pullrefresh/SmoothProgressDrawable;->mUpdater:Ljava/lang/Runnable;

    .line 40
    iput-boolean v2, p0, Lim/doit/pro/ui/component/pullrefresh/SmoothProgressDrawable;->mRunning:Z

    .line 41
    iput-object p1, p0, Lim/doit/pro/ui/component/pullrefresh/SmoothProgressDrawable;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 42
    iput p2, p0, Lim/doit/pro/ui/component/pullrefresh/SmoothProgressDrawable;->mSectionsCount:I

    .line 43
    iput p3, p0, Lim/doit/pro/ui/component/pullrefresh/SmoothProgressDrawable;->mSeparatorLength:I

    .line 44
    iput p6, p0, Lim/doit/pro/ui/component/pullrefresh/SmoothProgressDrawable;->mSpeed:F

    .line 45
    iput-boolean p7, p0, Lim/doit/pro/ui/component/pullrefresh/SmoothProgressDrawable;->mReversed:Z

    .line 46
    iput-object p4, p0, Lim/doit/pro/ui/component/pullrefresh/SmoothProgressDrawable;->mColors:[I

    .line 47
    iput v2, p0, Lim/doit/pro/ui/component/pullrefresh/SmoothProgressDrawable;->mColorsIndex:I

    .line 48
    iput-boolean p8, p0, Lim/doit/pro/ui/component/pullrefresh/SmoothProgressDrawable;->mMirrorMode:Z

    .line 50
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lim/doit/pro/ui/component/pullrefresh/SmoothProgressDrawable;->mPaint:Landroid/graphics/Paint;

    .line 51
    iget-object v0, p0, Lim/doit/pro/ui/component/pullrefresh/SmoothProgressDrawable;->mPaint:Landroid/graphics/Paint;

    int-to-float v1, p5

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 52
    iget-object v0, p0, Lim/doit/pro/ui/component/pullrefresh/SmoothProgressDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 53
    iget-object v0, p0, Lim/doit/pro/ui/component/pullrefresh/SmoothProgressDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 54
    iget-object v0, p0, Lim/doit/pro/ui/component/pullrefresh/SmoothProgressDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 55
    return-void
.end method

.method synthetic constructor <init>(Landroid/view/animation/Interpolator;II[IIFZZLim/doit/pro/ui/component/pullrefresh/SmoothProgressDrawable;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct/range {p0 .. p8}, Lim/doit/pro/ui/component/pullrefresh/SmoothProgressDrawable;-><init>(Landroid/view/animation/Interpolator;II[IIFZZ)V

    return-void
.end method

.method static synthetic access$0(Lim/doit/pro/ui/component/pullrefresh/SmoothProgressDrawable;)F
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lim/doit/pro/ui/component/pullrefresh/SmoothProgressDrawable;->mCurrentOffset:F

    return v0
.end method

.method static synthetic access$1(Lim/doit/pro/ui/component/pullrefresh/SmoothProgressDrawable;)F
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lim/doit/pro/ui/component/pullrefresh/SmoothProgressDrawable;->mSpeed:F

    return v0
.end method

.method static synthetic access$2(Lim/doit/pro/ui/component/pullrefresh/SmoothProgressDrawable;F)V
    .locals 0

    .prologue
    .line 31
    iput p1, p0, Lim/doit/pro/ui/component/pullrefresh/SmoothProgressDrawable;->mCurrentOffset:F

    return-void
.end method

.method static synthetic access$3(Lim/doit/pro/ui/component/pullrefresh/SmoothProgressDrawable;)I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lim/doit/pro/ui/component/pullrefresh/SmoothProgressDrawable;->mSectionsCount:I

    return v0
.end method

.method static synthetic access$4(Lim/doit/pro/ui/component/pullrefresh/SmoothProgressDrawable;Z)V
    .locals 0

    .prologue
    .line 36
    iput-boolean p1, p0, Lim/doit/pro/ui/component/pullrefresh/SmoothProgressDrawable;->mNewTurn:Z

    return-void
.end method

.method static synthetic access$5(Lim/doit/pro/ui/component/pullrefresh/SmoothProgressDrawable;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lim/doit/pro/ui/component/pullrefresh/SmoothProgressDrawable;->mUpdater:Ljava/lang/Runnable;

    return-object v0
.end method

.method private decrementColor(I)I
    .locals 1
    .param p1, "colorIndex"    # I

    .prologue
    .line 148
    add-int/lit8 p1, p1, -0x1

    .line 149
    if-gez p1, :cond_0

    iget-object v0, p0, Lim/doit/pro/ui/component/pullrefresh/SmoothProgressDrawable;->mColors:[I

    array-length v0, v0

    add-int/lit8 p1, v0, -0x1

    .line 150
    :cond_0
    return p1
.end method

.method private drawLine(Landroid/graphics/Canvas;IFFFFI)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "canvasWidth"    # I
    .param p3, "startX"    # F
    .param p4, "startY"    # F
    .param p5, "stopX"    # F
    .param p6, "stopY"    # F
    .param p7, "currentIndexColor"    # I

    .prologue
    .line 124
    iget-object v0, p0, Lim/doit/pro/ui/component/pullrefresh/SmoothProgressDrawable;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lim/doit/pro/ui/component/pullrefresh/SmoothProgressDrawable;->mColors:[I

    aget v1, v1, p7

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 126
    iget-boolean v0, p0, Lim/doit/pro/ui/component/pullrefresh/SmoothProgressDrawable;->mMirrorMode:Z

    if-nez v0, :cond_0

    .line 127
    iget-object v5, p0, Lim/doit/pro/ui/component/pullrefresh/SmoothProgressDrawable;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v1, p3

    move v2, p4

    move v3, p5

    move v4, p6

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 138
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 139
    return-void

    .line 129
    :cond_0
    iget-boolean v0, p0, Lim/doit/pro/ui/component/pullrefresh/SmoothProgressDrawable;->mReversed:Z

    if-eqz v0, :cond_1

    .line 130
    int-to-float v0, p2

    add-float v1, v0, p3

    int-to-float v0, p2

    add-float v3, v0, p5

    iget-object v5, p0, Lim/doit/pro/ui/component/pullrefresh/SmoothProgressDrawable;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, p4

    move v4, p6

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 131
    int-to-float v0, p2

    sub-float v1, v0, p3

    int-to-float v0, p2

    sub-float v3, v0, p5

    iget-object v5, p0, Lim/doit/pro/ui/component/pullrefresh/SmoothProgressDrawable;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, p4

    move v4, p6

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 133
    :cond_1
    iget-object v5, p0, Lim/doit/pro/ui/component/pullrefresh/SmoothProgressDrawable;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v1, p3

    move v2, p4

    move v3, p5

    move v4, p6

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 134
    mul-int/lit8 v0, p2, 0x2

    int-to-float v0, v0

    sub-float v1, v0, p3

    mul-int/lit8 v0, p2, 0x2

    int-to-float v0, v0

    sub-float v3, v0, p5

    iget-object v5, p0, Lim/doit/pro/ui/component/pullrefresh/SmoothProgressDrawable;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, p4

    move v4, p6

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method private drawStrokes(Landroid/graphics/Canvas;)V
    .locals 21
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 76
    const/4 v14, 0x0

    .line 77
    .local v14, "prevValue":F
    move-object/from16 v0, p0

    iget-object v1, v0, Lim/doit/pro/ui/component/pullrefresh/SmoothProgressDrawable;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v3

    .line 78
    .local v3, "boundsWidth":I
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lim/doit/pro/ui/component/pullrefresh/SmoothProgressDrawable;->mMirrorMode:Z

    if-eqz v1, :cond_0

    div-int/lit8 v3, v3, 0x2

    .line 79
    :cond_0
    move-object/from16 v0, p0

    iget v1, v0, Lim/doit/pro/ui/component/pullrefresh/SmoothProgressDrawable;->mSeparatorLength:I

    add-int/2addr v1, v3

    move-object/from16 v0, p0

    iget v2, v0, Lim/doit/pro/ui/component/pullrefresh/SmoothProgressDrawable;->mSectionsCount:I

    add-int v18, v1, v2

    .line 80
    .local v18, "width":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lim/doit/pro/ui/component/pullrefresh/SmoothProgressDrawable;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v9

    .line 81
    .local v9, "centerY":I
    const/high16 v1, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v2, v0, Lim/doit/pro/ui/component/pullrefresh/SmoothProgressDrawable;->mSectionsCount:I

    int-to-float v2, v2

    div-float v20, v1, v2

    .line 84
    .local v20, "xSectionWidth":F
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lim/doit/pro/ui/component/pullrefresh/SmoothProgressDrawable;->mNewTurn:Z

    if-eqz v1, :cond_1

    .line 85
    move-object/from16 v0, p0

    iget v1, v0, Lim/doit/pro/ui/component/pullrefresh/SmoothProgressDrawable;->mColorsIndex:I

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lim/doit/pro/ui/component/pullrefresh/SmoothProgressDrawable;->decrementColor(I)I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lim/doit/pro/ui/component/pullrefresh/SmoothProgressDrawable;->mColorsIndex:I

    .line 86
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lim/doit/pro/ui/component/pullrefresh/SmoothProgressDrawable;->mNewTurn:Z

    .line 96
    :cond_1
    move-object/from16 v0, p0

    iget v8, v0, Lim/doit/pro/ui/component/pullrefresh/SmoothProgressDrawable;->mColorsIndex:I

    .line 98
    .local v8, "currentIndexColor":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget v1, v0, Lim/doit/pro/ui/component/pullrefresh/SmoothProgressDrawable;->mSectionsCount:I

    if-le v12, v1, :cond_2

    .line 121
    return-void

    .line 99
    :cond_2
    int-to-float v1, v12

    mul-float v1, v1, v20

    move-object/from16 v0, p0

    iget v2, v0, Lim/doit/pro/ui/component/pullrefresh/SmoothProgressDrawable;->mCurrentOffset:F

    add-float v19, v1, v2

    .line 100
    .local v19, "xOffset":F
    const/4 v1, 0x0

    sub-float v2, v19, v20

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v13

    .line 102
    .local v13, "prev":F
    move-object/from16 v0, p0

    iget-object v1, v0, Lim/doit/pro/ui/component/pullrefresh/SmoothProgressDrawable;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v1, v13}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v1

    .line 103
    move-object/from16 v0, p0

    iget-object v2, v0, Lim/doit/pro/ui/component/pullrefresh/SmoothProgressDrawable;->mInterpolator:Landroid/view/animation/Interpolator;

    const/high16 v4, 0x3f800000    # 1.0f

    move/from16 v0, v19

    invoke-static {v0, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-interface {v2, v4}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    .line 102
    sub-float/2addr v1, v2

    .line 101
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v15

    .line 104
    .local v15, "ratioSectionWidth":F
    move/from16 v0, v18

    int-to-float v1, v0

    mul-float/2addr v1, v15

    float-to-int v1, v1

    int-to-float v0, v1

    move/from16 v16, v0

    .line 106
    .local v16, "sectionWidth":F
    add-float v1, v16, v13

    move/from16 v0, v18

    int-to-float v2, v0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_4

    .line 107
    move-object/from16 v0, p0

    iget v1, v0, Lim/doit/pro/ui/component/pullrefresh/SmoothProgressDrawable;->mSeparatorLength:I

    int-to-float v1, v1

    move/from16 v0, v16

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v17

    .line 111
    .local v17, "spaceLength":F
    :goto_1
    cmpl-float v1, v16, v17

    if-lez v1, :cond_5

    sub-float v10, v16, v17

    .line 112
    .local v10, "drawLength":F
    :goto_2
    add-float v11, v14, v10

    .line 113
    .local v11, "end":F
    cmpl-float v1, v11, v14

    if-lez v1, :cond_3

    .line 115
    int-to-float v1, v3

    invoke-static {v1, v14}, Ljava/lang/Math;->min(FF)F

    move-result v4

    int-to-float v5, v9

    int-to-float v1, v3

    invoke-static {v1, v11}, Ljava/lang/Math;->min(FF)F

    move-result v6

    int-to-float v7, v9

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 114
    invoke-direct/range {v1 .. v8}, Lim/doit/pro/ui/component/pullrefresh/SmoothProgressDrawable;->drawLine(Landroid/graphics/Canvas;IFFFFI)V

    .line 118
    :cond_3
    add-float v14, v11, v17

    .line 119
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lim/doit/pro/ui/component/pullrefresh/SmoothProgressDrawable;->incrementColor(I)I

    move-result v8

    .line 98
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 109
    .end local v10    # "drawLength":F
    .end local v11    # "end":F
    .end local v17    # "spaceLength":F
    :cond_4
    const/16 v17, 0x0

    .restart local v17    # "spaceLength":F
    goto :goto_1

    .line 111
    :cond_5
    const/4 v10, 0x0

    goto :goto_2
.end method

.method private incrementColor(I)I
    .locals 1
    .param p1, "colorIndex"    # I

    .prologue
    .line 142
    add-int/lit8 p1, p1, 0x1

    .line 143
    iget-object v0, p0, Lim/doit/pro/ui/component/pullrefresh/SmoothProgressDrawable;->mColors:[I

    array-length v0, v0

    if-lt p1, v0, :cond_0

    const/4 p1, 0x0

    .line 144
    :cond_0
    return p1
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 62
    invoke-virtual {p0}, Lim/doit/pro/ui/component/pullrefresh/SmoothProgressDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iput-object v1, p0, Lim/doit/pro/ui/component/pullrefresh/SmoothProgressDrawable;->mBounds:Landroid/graphics/Rect;

    .line 63
    iget-object v1, p0, Lim/doit/pro/ui/component/pullrefresh/SmoothProgressDrawable;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 65
    iget-object v1, p0, Lim/doit/pro/ui/component/pullrefresh/SmoothProgressDrawable;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 67
    .local v0, "boundsWidth":I
    iget-boolean v1, p0, Lim/doit/pro/ui/component/pullrefresh/SmoothProgressDrawable;->mReversed:Z

    if-eqz v1, :cond_0

    .line 68
    int-to-float v1, v0

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 69
    const/high16 v1, -0x40800000    # -1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 72
    :cond_0
    invoke-direct {p0, p1}, Lim/doit/pro/ui/component/pullrefresh/SmoothProgressDrawable;->drawStrokes(Landroid/graphics/Canvas;)V

    .line 73
    return-void
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 165
    const/4 v0, -0x2

    return v0
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 192
    iget-boolean v0, p0, Lim/doit/pro/ui/component/pullrefresh/SmoothProgressDrawable;->mRunning:Z

    return v0
.end method

.method public scheduleSelf(Ljava/lang/Runnable;J)V
    .locals 2
    .param p1, "what"    # Ljava/lang/Runnable;
    .param p2, "when"    # J

    .prologue
    .line 186
    const/4 v0, 0x1

    iput-boolean v0, p0, Lim/doit/pro/ui/component/pullrefresh/SmoothProgressDrawable;->mRunning:Z

    .line 187
    invoke-super {p0, p1, p2, p3}, Landroid/graphics/drawable/Drawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 188
    return-void
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .prologue
    .line 155
    iget-object v0, p0, Lim/doit/pro/ui/component/pullrefresh/SmoothProgressDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 156
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 160
    iget-object v0, p0, Lim/doit/pro/ui/component/pullrefresh/SmoothProgressDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 161
    return-void
.end method

.method public start()V
    .locals 6

    .prologue
    .line 172
    invoke-virtual {p0}, Lim/doit/pro/ui/component/pullrefresh/SmoothProgressDrawable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    :goto_0
    return-void

    .line 173
    :cond_0
    iget-object v0, p0, Lim/doit/pro/ui/component/pullrefresh/SmoothProgressDrawable;->mUpdater:Ljava/lang/Runnable;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x10

    add-long/2addr v2, v4

    invoke-virtual {p0, v0, v2, v3}, Lim/doit/pro/ui/component/pullrefresh/SmoothProgressDrawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 174
    invoke-virtual {p0}, Lim/doit/pro/ui/component/pullrefresh/SmoothProgressDrawable;->invalidateSelf()V

    goto :goto_0
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 179
    invoke-virtual {p0}, Lim/doit/pro/ui/component/pullrefresh/SmoothProgressDrawable;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 182
    :goto_0
    return-void

    .line 180
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lim/doit/pro/ui/component/pullrefresh/SmoothProgressDrawable;->mRunning:Z

    .line 181
    iget-object v0, p0, Lim/doit/pro/ui/component/pullrefresh/SmoothProgressDrawable;->mUpdater:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lim/doit/pro/ui/component/pullrefresh/SmoothProgressDrawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
