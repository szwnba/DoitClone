.class public Lim/doit/pro/ui/component/DRoundedBitmapImageView;
.super Landroid/widget/ImageView;
.source "DRoundedBitmapImageView.java"


# instance fields
.field private mMask:Z

.field private mMaskPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 21
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lim/doit/pro/ui/component/DRoundedBitmapImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 25
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lim/doit/pro/ui/component/DRoundedBitmapImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 16
    const/4 v0, 0x0

    iput-boolean v0, p0, Lim/doit/pro/ui/component/DRoundedBitmapImageView;->mMask:Z

    .line 31
    invoke-direct {p0}, Lim/doit/pro/ui/component/DRoundedBitmapImageView;->init()V

    .line 32
    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    .line 35
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lim/doit/pro/ui/component/DRoundedBitmapImageView;->mMaskPaint:Landroid/graphics/Paint;

    .line 36
    iget-object v0, p0, Lim/doit/pro/ui/component/DRoundedBitmapImageView;->mMaskPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 37
    iget-object v0, p0, Lim/doit/pro/ui/component/DRoundedBitmapImageView;->mMaskPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 38
    iget-object v0, p0, Lim/doit/pro/ui/component/DRoundedBitmapImageView;->mMaskPaint:Landroid/graphics/Paint;

    .line 39
    const v1, 0x7f0800ae

    invoke-static {v1}, Lim/doit/pro/activity/utils/ViewUtils;->getColor(I)I

    move-result v1

    .line 38
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 40
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 53
    invoke-virtual {p0}, Lim/doit/pro/ui/component/DRoundedBitmapImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    check-cast v10, Landroid/graphics/drawable/BitmapDrawable;

    .line 55
    .local v10, "drawable":Landroid/graphics/drawable/BitmapDrawable;
    if-nez v10, :cond_1

    .line 87
    :cond_0
    :goto_0
    return-void

    .line 59
    :cond_1
    invoke-virtual {p0}, Lim/doit/pro/ui/component/DRoundedBitmapImageView;->getWidth()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lim/doit/pro/ui/component/DRoundedBitmapImageView;->getHeight()I

    move-result v4

    if-eqz v4, :cond_0

    .line 63
    invoke-virtual {v10}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v11

    .line 65
    .local v11, "fullSizeBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Lim/doit/pro/ui/component/DRoundedBitmapImageView;->getMeasuredWidth()I

    move-result v2

    .line 66
    .local v2, "scaledWidth":I
    invoke-virtual {p0}, Lim/doit/pro/ui/component/DRoundedBitmapImageView;->getMeasuredHeight()I

    move-result v3

    .line 69
    .local v3, "scaledHeight":I
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    if-ne v2, v4, :cond_2

    .line 70
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    if-ne v3, v4, :cond_2

    .line 71
    move-object v0, v11

    .line 77
    .local v0, "mScaledBitmap":Landroid/graphics/Bitmap;
    :goto_1
    int-to-float v4, v2

    const/high16 v5, 0x40000000    # 2.0f

    div-float v1, v4, v5

    .line 79
    .local v1, "radius":F
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 78
    invoke-static/range {v0 .. v7}, Lim/doit/pro/activity/utils/ViewUtils;->getRoundedCornerBitmap(Landroid/graphics/Bitmap;FIIZZZZ)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 80
    .local v12, "roundBitmap":Landroid/graphics/Bitmap;
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {p1, v12, v4, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 82
    iget-boolean v4, p0, Lim/doit/pro/ui/component/DRoundedBitmapImageView;->mMask:Z

    if-eqz v4, :cond_0

    .line 83
    invoke-virtual {p0}, Lim/doit/pro/ui/component/DRoundedBitmapImageView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float v8, v4, v5

    .line 84
    .local v8, "cx":F
    invoke-virtual {p0}, Lim/doit/pro/ui/component/DRoundedBitmapImageView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float v9, v4, v5

    .line 85
    .local v9, "cy":F
    iget-object v4, p0, Lim/doit/pro/ui/component/DRoundedBitmapImageView;->mMaskPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v8, v9, v1, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 74
    .end local v0    # "mScaledBitmap":Landroid/graphics/Bitmap;
    .end local v1    # "radius":F
    .end local v8    # "cx":F
    .end local v9    # "cy":F
    .end local v12    # "roundBitmap":Landroid/graphics/Bitmap;
    :cond_2
    const/4 v4, 0x1

    .line 73
    invoke-static {v11, v2, v3, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .restart local v0    # "mScaledBitmap":Landroid/graphics/Bitmap;
    goto :goto_1
.end method

.method public setMask(Z)V
    .locals 0
    .param p1, "mask"    # Z

    .prologue
    .line 43
    iput-boolean p1, p0, Lim/doit/pro/ui/component/DRoundedBitmapImageView;->mMask:Z

    .line 44
    return-void
.end method

.method public setMaskColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 47
    iget-object v0, p0, Lim/doit/pro/ui/component/DRoundedBitmapImageView;->mMaskPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 48
    invoke-virtual {p0}, Lim/doit/pro/ui/component/DRoundedBitmapImageView;->invalidate()V

    .line 49
    return-void
.end method
