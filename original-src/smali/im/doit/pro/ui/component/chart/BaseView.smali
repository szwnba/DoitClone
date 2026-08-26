.class public Lim/doit/pro/ui/component/chart/BaseView;
.super Landroid/view/View;
.source "BaseView.java"


# instance fields
.field protected mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 16
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lim/doit/pro/ui/component/chart/BaseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 20
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lim/doit/pro/ui/component/chart/BaseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 24
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    invoke-virtual {p0, p2, p3}, Lim/doit/pro/ui/component/chart/BaseView;->initAttributes(Landroid/util/AttributeSet;I)V

    .line 26
    invoke-virtual {p0, p1}, Lim/doit/pro/ui/component/chart/BaseView;->init(Landroid/content/Context;)V

    .line 27
    return-void
.end method


# virtual methods
.method protected buildPaint(Landroid/graphics/Paint$Style;FI)Landroid/graphics/Paint;
    .locals 2
    .param p1, "style"    # Landroid/graphics/Paint$Style;
    .param p2, "strokeWidth"    # F
    .param p3, "color"    # I

    .prologue
    .line 76
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 77
    .local v0, "paint":Landroid/graphics/Paint;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 78
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 79
    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 80
    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 81
    return-object v0
.end method

.method protected dip2px(Landroid/content/Context;F)I
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dpValue"    # F

    .prologue
    .line 71
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 72
    .local v0, "scale":F
    mul-float v1, p2, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method protected init(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    iput-object p1, p0, Lim/doit/pro/ui/component/chart/BaseView;->mContext:Landroid/content/Context;

    .line 31
    return-void
.end method

.method protected initAttributes(Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "defStyle"    # I

    .prologue
    .line 35
    return-void
.end method

.method protected measureHeight(I)I
    .locals 4
    .param p1, "measureSpec"    # I

    .prologue
    .line 58
    const/4 v0, 0x0

    .line 59
    .local v0, "result":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 60
    .local v1, "specMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 62
    .local v2, "specSize":I
    const/high16 v3, 0x40000000    # 2.0f

    if-ne v1, v3, :cond_1

    .line 63
    move v0, v2

    .line 67
    :cond_0
    :goto_0
    return v0

    .line 64
    :cond_1
    const/high16 v3, -0x80000000

    if-ne v1, v3, :cond_0

    .line 65
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0
.end method

.method protected measureTextHeight(Landroid/graphics/Paint;Ljava/lang/String;)I
    .locals 3
    .param p1, "paint"    # Landroid/graphics/Paint;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 85
    invoke-static {p2}, Lim/doit/pro/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 90
    :goto_0
    return v1

    .line 88
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 89
    .local v0, "result":Landroid/graphics/Rect;
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, p2, v1, v2, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 90
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    goto :goto_0
.end method

.method protected measureWidth(I)I
    .locals 4
    .param p1, "measureSpec"    # I

    .prologue
    .line 45
    const/4 v0, 0x0

    .line 46
    .local v0, "result":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 47
    .local v1, "specMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 49
    .local v2, "specSize":I
    const/high16 v3, 0x40000000    # 2.0f

    if-ne v1, v3, :cond_1

    .line 50
    move v0, v2

    .line 54
    :cond_0
    :goto_0
    return v0

    .line 51
    :cond_1
    const/high16 v3, -0x80000000

    if-ne v1, v3, :cond_0

    .line 52
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 39
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 40
    invoke-virtual {p0, p1}, Lim/doit/pro/ui/component/chart/BaseView;->measureWidth(I)I

    move-result v0

    .line 41
    invoke-virtual {p0, p2}, Lim/doit/pro/ui/component/chart/BaseView;->measureHeight(I)I

    move-result v1

    .line 40
    invoke-virtual {p0, v0, v1}, Lim/doit/pro/ui/component/chart/BaseView;->setMeasuredDimension(II)V

    .line 42
    return-void
.end method
