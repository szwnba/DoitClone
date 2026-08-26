.class public Lim/doit/pro/ui/component/AutoBreakViewGroup;
.super Landroid/view/ViewGroup;
.source "AutoBreakViewGroup.java"


# instance fields
.field private horizontalSpacing:I

.field private mChildMaxHeight:I

.field private mWidth:I

.field private verticalSpacing:I

.field private visibleChildrenIndex:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lim/doit/pro/ui/component/AutoBreakViewGroup;->horizontalSpacing:I

    .line 24
    const v0, 0x7f090049

    invoke-static {v0}, Lim/doit/pro/activity/utils/ViewUtils;->getDimens(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lim/doit/pro/ui/component/AutoBreakViewGroup;->verticalSpacing:I

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lim/doit/pro/ui/component/AutoBreakViewGroup;->visibleChildrenIndex:Ljava/util/ArrayList;

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lim/doit/pro/ui/component/AutoBreakViewGroup;->horizontalSpacing:I

    .line 24
    const v0, 0x7f090049

    invoke-static {v0}, Lim/doit/pro/activity/utils/ViewUtils;->getDimens(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lim/doit/pro/ui/component/AutoBreakViewGroup;->verticalSpacing:I

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lim/doit/pro/ui/component/AutoBreakViewGroup;->visibleChildrenIndex:Ljava/util/ArrayList;

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lim/doit/pro/ui/component/AutoBreakViewGroup;->horizontalSpacing:I

    .line 24
    const v0, 0x7f090049

    invoke-static {v0}, Lim/doit/pro/activity/utils/ViewUtils;->getDimens(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lim/doit/pro/ui/component/AutoBreakViewGroup;->verticalSpacing:I

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lim/doit/pro/ui/component/AutoBreakViewGroup;->visibleChildrenIndex:Ljava/util/ArrayList;

    .line 38
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
    .line 77
    iget-object v7, p0, Lim/doit/pro/ui/component/AutoBreakViewGroup;->visibleChildrenIndex:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_0

    .line 78
    invoke-virtual {p0}, Lim/doit/pro/ui/component/AutoBreakViewGroup;->getPaddingLeft()I

    move-result v5

    .line 79
    .local v5, "xpos":I
    invoke-virtual {p0}, Lim/doit/pro/ui/component/AutoBreakViewGroup;->getPaddingTop()I

    move-result v6

    .line 80
    .local v6, "ypos":I
    sub-int v4, p4, p2

    .line 81
    .local v4, "width":I
    iget-object v7, p0, Lim/doit/pro/ui/component/AutoBreakViewGroup;->visibleChildrenIndex:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_1

    .line 93
    .end local v4    # "width":I
    .end local v5    # "xpos":I
    .end local v6    # "ypos":I
    :cond_0
    return-void

    .line 81
    .restart local v4    # "width":I
    .restart local v5    # "xpos":I
    .restart local v6    # "ypos":I
    :cond_1
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 82
    .local v3, "item":I
    invoke-virtual {p0, v3}, Lim/doit/pro/ui/component/AutoBreakViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 83
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 84
    .local v2, "childw":I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 85
    .local v1, "childh":I
    add-int v7, v5, v2

    if-le v7, v4, :cond_2

    .line 86
    invoke-virtual {p0}, Lim/doit/pro/ui/component/AutoBreakViewGroup;->getPaddingLeft()I

    move-result v5

    .line 87
    iget v7, p0, Lim/doit/pro/ui/component/AutoBreakViewGroup;->mChildMaxHeight:I

    add-int/2addr v6, v7

    .line 89
    :cond_2
    add-int v7, v5, v2

    add-int v9, v6, v1

    invoke-virtual {v0, v5, v6, v7, v9}, Landroid/view/View;->layout(IIII)V

    .line 90
    iget v7, p0, Lim/doit/pro/ui/component/AutoBreakViewGroup;->horizontalSpacing:I

    add-int/2addr v7, v2

    add-int/2addr v5, v7

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 11
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v10, 0x0

    .line 42
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 43
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    invoke-virtual {p0}, Lim/doit/pro/ui/component/AutoBreakViewGroup;->getPaddingLeft()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {p0}, Lim/doit/pro/ui/component/AutoBreakViewGroup;->getPaddingRight()I

    move-result v8

    sub-int/2addr v7, v8

    iput v7, p0, Lim/doit/pro/ui/component/AutoBreakViewGroup;->mWidth:I

    .line 44
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    invoke-virtual {p0}, Lim/doit/pro/ui/component/AutoBreakViewGroup;->getPaddingTop()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {p0}, Lim/doit/pro/ui/component/AutoBreakViewGroup;->getPaddingBottom()I

    move-result v8

    sub-int v3, v7, v8

    .line 45
    .local v3, "height":I
    iget-object v7, p0, Lim/doit/pro/ui/component/AutoBreakViewGroup;->visibleChildrenIndex:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 46
    invoke-virtual {p0}, Lim/doit/pro/ui/component/AutoBreakViewGroup;->getChildCount()I

    move-result v2

    .line 47
    .local v2, "count":I
    invoke-virtual {p0}, Lim/doit/pro/ui/component/AutoBreakViewGroup;->getPaddingLeft()I

    move-result v5

    .line 48
    .local v5, "xpos":I
    invoke-virtual {p0}, Lim/doit/pro/ui/component/AutoBreakViewGroup;->getPaddingTop()I

    move-result v6

    .line 49
    .local v6, "ypos":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-lt v4, v2, :cond_1

    .line 64
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v7

    if-nez v7, :cond_4

    .line 65
    iget v7, p0, Lim/doit/pro/ui/component/AutoBreakViewGroup;->mChildMaxHeight:I

    add-int v3, v6, v7

    .line 72
    :cond_0
    :goto_1
    iget v7, p0, Lim/doit/pro/ui/component/AutoBreakViewGroup;->mWidth:I

    invoke-virtual {p0, v7, v3}, Lim/doit/pro/ui/component/AutoBreakViewGroup;->setMeasuredDimension(II)V

    .line 73
    return-void

    .line 50
    :cond_1
    invoke-virtual {p0, v4}, Lim/doit/pro/ui/component/AutoBreakViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 51
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v7

    const/16 v8, 0x8

    if-eq v7, v8, :cond_2

    .line 52
    iget-object v7, p0, Lim/doit/pro/ui/component/AutoBreakViewGroup;->visibleChildrenIndex:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    invoke-virtual {v0, v10, v10}, Landroid/view/View;->measure(II)V

    .line 54
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 55
    .local v1, "childw":I
    iget v7, p0, Lim/doit/pro/ui/component/AutoBreakViewGroup;->mChildMaxHeight:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    iget v9, p0, Lim/doit/pro/ui/component/AutoBreakViewGroup;->verticalSpacing:I

    add-int/2addr v8, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    iput v7, p0, Lim/doit/pro/ui/component/AutoBreakViewGroup;->mChildMaxHeight:I

    .line 56
    add-int v7, v5, v1

    iget v8, p0, Lim/doit/pro/ui/component/AutoBreakViewGroup;->mWidth:I

    if-le v7, v8, :cond_3

    .line 57
    invoke-virtual {p0}, Lim/doit/pro/ui/component/AutoBreakViewGroup;->getPaddingLeft()I

    move-result v5

    .line 58
    iget v7, p0, Lim/doit/pro/ui/component/AutoBreakViewGroup;->mChildMaxHeight:I

    add-int/2addr v6, v7

    .line 49
    .end local v1    # "childw":I
    :cond_2
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 60
    .restart local v1    # "childw":I
    :cond_3
    add-int/2addr v5, v1

    goto :goto_2

    .line 67
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "childw":I
    :cond_4
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v7

    const/high16 v8, -0x80000000

    if-ne v7, v8, :cond_0

    .line 68
    iget v7, p0, Lim/doit/pro/ui/component/AutoBreakViewGroup;->mChildMaxHeight:I

    add-int/2addr v7, v6

    if-ge v7, v3, :cond_0

    .line 69
    iget v7, p0, Lim/doit/pro/ui/component/AutoBreakViewGroup;->mChildMaxHeight:I

    add-int v3, v6, v7

    goto :goto_1
.end method
