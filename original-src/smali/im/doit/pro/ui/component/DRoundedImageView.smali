.class public Lim/doit/pro/ui/component/DRoundedImageView;
.super Landroid/widget/ImageView;
.source "DRoundedImageView.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "DrawAllocation"
    }
.end annotation


# instance fields
.field private borderColor:I

.field private mMask:Z

.field private mMaskPaint:Landroid/graphics/Paint;

.field private mRoundedPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lim/doit/pro/ui/component/DRoundedImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 30
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lim/doit/pro/ui/component/DRoundedImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 21
    const v0, 0x7f08004a

    invoke-static {v0}, Lim/doit/pro/activity/utils/ViewUtils;->getColor(I)I

    move-result v0

    iput v0, p0, Lim/doit/pro/ui/component/DRoundedImageView;->borderColor:I

    .line 35
    invoke-direct {p0, p2}, Lim/doit/pro/ui/component/DRoundedImageView;->initAttrs(Landroid/util/AttributeSet;)V

    .line 36
    invoke-direct {p0, p1}, Lim/doit/pro/ui/component/DRoundedImageView;->init(Landroid/content/Context;)V

    .line 37
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    .line 70
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lim/doit/pro/ui/component/DRoundedImageView;->mRoundedPaint:Landroid/graphics/Paint;

    .line 71
    iget-object v0, p0, Lim/doit/pro/ui/component/DRoundedImageView;->mRoundedPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 72
    iget-object v0, p0, Lim/doit/pro/ui/component/DRoundedImageView;->mRoundedPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 73
    iget-object v0, p0, Lim/doit/pro/ui/component/DRoundedImageView;->mRoundedPaint:Landroid/graphics/Paint;

    iget v1, p0, Lim/doit/pro/ui/component/DRoundedImageView;->borderColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 74
    iget-object v0, p0, Lim/doit/pro/ui/component/DRoundedImageView;->mRoundedPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 76
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lim/doit/pro/ui/component/DRoundedImageView;->mMaskPaint:Landroid/graphics/Paint;

    .line 77
    iget-object v0, p0, Lim/doit/pro/ui/component/DRoundedImageView;->mMaskPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 78
    iget-object v0, p0, Lim/doit/pro/ui/component/DRoundedImageView;->mMaskPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 79
    iget-object v0, p0, Lim/doit/pro/ui/component/DRoundedImageView;->mMaskPaint:Landroid/graphics/Paint;

    .line 80
    const v1, 0x7f0800ae

    invoke-static {v1}, Lim/doit/pro/activity/utils/ViewUtils;->getColor(I)I

    move-result v1

    .line 79
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 81
    return-void
.end method

.method private initAttrs(Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 57
    if-eqz p1, :cond_1

    .line 58
    invoke-virtual {p0}, Lim/doit/pro/ui/component/DRoundedImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 59
    sget-object v2, Lim/doit/pro/v4/R$styleable;->DAvatar:[I

    .line 58
    invoke-virtual {v1, p1, v2, v3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 60
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 63
    const v1, 0x7f08004a

    invoke-static {v1}, Lim/doit/pro/activity/utils/ViewUtils;->getColor(I)I

    move-result v1

    .line 61
    invoke-virtual {v0, v4, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lim/doit/pro/ui/component/DRoundedImageView;->borderColor:I

    .line 65
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 67
    .end local v0    # "a":Landroid/content/res/TypedArray;
    :cond_1
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v8, 0x40000000    # 2.0f

    const/4 v7, 0x0

    .line 85
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 86
    invoke-virtual {p0}, Lim/doit/pro/ui/component/DRoundedImageView;->getMeasuredWidth()I

    move-result v6

    .line 87
    .local v6, "w":I
    invoke-virtual {p0}, Lim/doit/pro/ui/component/DRoundedImageView;->getMeasuredHeight()I

    move-result v2

    .line 89
    .local v2, "h":I
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v7, v7, v6, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 90
    .local v4, "rect":Landroid/graphics/Rect;
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5, v4}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 92
    .local v5, "rectF":Landroid/graphics/RectF;
    invoke-virtual {p1, v7, v7, v7, v7}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 94
    int-to-float v7, v6

    div-float v3, v7, v8

    .line 95
    .local v3, "radius":F
    iget-object v7, p0, Lim/doit/pro/ui/component/DRoundedImageView;->mRoundedPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v3, v3, v7}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 97
    iget-boolean v7, p0, Lim/doit/pro/ui/component/DRoundedImageView;->mMask:Z

    if-eqz v7, :cond_0

    .line 98
    invoke-virtual {p0}, Lim/doit/pro/ui/component/DRoundedImageView;->getWidth()I

    move-result v7

    int-to-float v7, v7

    div-float v0, v7, v8

    .line 99
    .local v0, "cx":F
    invoke-virtual {p0}, Lim/doit/pro/ui/component/DRoundedImageView;->getHeight()I

    move-result v7

    int-to-float v7, v7

    div-float v1, v7, v8

    .line 100
    .local v1, "cy":F
    iget-object v7, p0, Lim/doit/pro/ui/component/DRoundedImageView;->mMaskPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v3, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 102
    .end local v0    # "cx":F
    .end local v1    # "cy":F
    :cond_0
    return-void
.end method

.method public setBorderColor(I)V
    .locals 2
    .param p1, "resColor"    # I

    .prologue
    .line 49
    iput p1, p0, Lim/doit/pro/ui/component/DRoundedImageView;->borderColor:I

    .line 50
    iget-object v0, p0, Lim/doit/pro/ui/component/DRoundedImageView;->mRoundedPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lim/doit/pro/ui/component/DRoundedImageView;->mRoundedPaint:Landroid/graphics/Paint;

    iget v1, p0, Lim/doit/pro/ui/component/DRoundedImageView;->borderColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 52
    invoke-virtual {p0}, Lim/doit/pro/ui/component/DRoundedImageView;->invalidate()V

    .line 54
    :cond_0
    return-void
.end method

.method public setMask(Z)V
    .locals 0
    .param p1, "mask"    # Z

    .prologue
    .line 40
    iput-boolean p1, p0, Lim/doit/pro/ui/component/DRoundedImageView;->mMask:Z

    .line 41
    return-void
.end method

.method public setMaskColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 44
    iget-object v0, p0, Lim/doit/pro/ui/component/DRoundedImageView;->mMaskPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 45
    invoke-virtual {p0}, Lim/doit/pro/ui/component/DRoundedImageView;->invalidate()V

    .line 46
    return-void
.end method
