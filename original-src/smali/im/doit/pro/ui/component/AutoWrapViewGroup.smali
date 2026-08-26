.class public Lim/doit/pro/ui/component/AutoWrapViewGroup;
.super Landroid/view/ViewGroup;
.source "AutoWrapViewGroup.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 11
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 12
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 19
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 20
    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 10
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 34
    const/4 v4, 0x0

    .line 35
    .local v4, "row":I
    move v6, p2

    .line 36
    .local v6, "xpos":I
    move v7, p3

    .line 37
    .local v7, "ypos":I
    invoke-virtual {p0}, Lim/doit/pro/ui/component/AutoWrapViewGroup;->getChildCount()I

    move-result v1

    .line 38
    .local v1, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-lt v3, v1, :cond_0

    .line 51
    return-void

    .line 39
    :cond_0
    invoke-virtual {p0, v3}, Lim/doit/pro/ui/component/AutoWrapViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 40
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    .line 41
    .local v5, "width":I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 42
    .local v2, "height":I
    add-int/2addr v6, v5

    .line 43
    mul-int v8, v4, v2

    add-int/2addr v8, v2

    add-int v7, v8, p3

    .line 44
    if-le v6, p4, :cond_1

    .line 45
    add-int v6, v5, p2

    .line 46
    add-int/lit8 v4, v4, 0x1

    .line 47
    mul-int v8, v4, v2

    add-int/2addr v8, v2

    add-int v7, v8, p3

    .line 49
    :cond_1
    sub-int v8, v6, v5

    sub-int v9, v7, v2

    invoke-virtual {v0, v8, v9, v6, v7}, Landroid/view/View;->layout(IIII)V

    .line 38
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 4
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v3, 0x0

    .line 24
    invoke-virtual {p0}, Lim/doit/pro/ui/component/AutoWrapViewGroup;->getChildCount()I

    move-result v1

    .line 25
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, v1, :cond_0

    .line 29
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 30
    return-void

    .line 26
    :cond_0
    invoke-virtual {p0, v2}, Lim/doit/pro/ui/component/AutoWrapViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 27
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0, v3, v3}, Landroid/view/View;->measure(II)V

    .line 25
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
