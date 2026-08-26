.class public Lim/doit/pro/ui/component/AutoEllipsizeViewGroup;
.super Landroid/widget/LinearLayout;
.source "AutoEllipsizeViewGroup.java"


# instance fields
.field private horizontalSpacing:I

.field private mChildMaxHeight:I

.field private mWidth:I

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
    .line 28
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 23
    const v0, 0x7f090046

    invoke-static {v0}, Lim/doit/pro/activity/utils/ViewUtils;->getDimens(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lim/doit/pro/ui/component/AutoEllipsizeViewGroup;->horizontalSpacing:I

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lim/doit/pro/ui/component/AutoEllipsizeViewGroup;->visibleChildrenIndex:Ljava/util/ArrayList;

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    const v0, 0x7f090046

    invoke-static {v0}, Lim/doit/pro/activity/utils/ViewUtils;->getDimens(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lim/doit/pro/ui/component/AutoEllipsizeViewGroup;->horizontalSpacing:I

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lim/doit/pro/ui/component/AutoEllipsizeViewGroup;->visibleChildrenIndex:Ljava/util/ArrayList;

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    const v0, 0x7f090046

    invoke-static {v0}, Lim/doit/pro/activity/utils/ViewUtils;->getDimens(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lim/doit/pro/ui/component/AutoEllipsizeViewGroup;->horizontalSpacing:I

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lim/doit/pro/ui/component/AutoEllipsizeViewGroup;->visibleChildrenIndex:Ljava/util/ArrayList;

    .line 37
    return-void
.end method

.method private getChildMax(III)I
    .locals 6
    .param p1, "pos"    # I
    .param p2, "totalWidth"    # I
    .param p3, "totalCount"    # I

    .prologue
    .line 108
    div-int v2, p2, p3

    .line 109
    .local v2, "maxChild":I
    sub-int v1, p2, v2

    .line 110
    .local v1, "leftWidth":I
    const/4 v3, 0x0

    .line 111
    .local v3, "needWidth":I
    add-int/lit8 v0, p1, 0x1

    .local v0, "i":I
    :goto_0
    iget-object v4, p0, Lim/doit/pro/ui/component/AutoEllipsizeViewGroup;->visibleChildrenIndex:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v0, v4, :cond_1

    .line 114
    if-ge v3, v1, :cond_0

    .line 115
    sub-int v4, v1, v3

    add-int/2addr v2, v4

    .line 117
    :cond_0
    return v2

    .line 112
    :cond_1
    iget-object v4, p0, Lim/doit/pro/ui/component/AutoEllipsizeViewGroup;->visibleChildrenIndex:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p0, v4}, Lim/doit/pro/ui/component/AutoEllipsizeViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    iget v5, p0, Lim/doit/pro/ui/component/AutoEllipsizeViewGroup;->horizontalSpacing:I

    add-int/2addr v4, v5

    add-int/2addr v3, v4

    .line 111
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public isChildrenVisibility()Z
    .locals 5

    .prologue
    .line 40
    invoke-virtual {p0}, Lim/doit/pro/ui/component/AutoEllipsizeViewGroup;->getChildCount()I

    move-result v1

    .line 41
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, v1, :cond_0

    .line 47
    const/4 v3, 0x0

    :goto_1
    return v3

    .line 42
    :cond_0
    invoke-virtual {p0, v2}, Lim/doit/pro/ui/component/AutoEllipsizeViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 43
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_1

    .line 44
    const/4 v3, 0x1

    goto :goto_1

    .line 41
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 14
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 72
    iget-object v11, p0, Lim/doit/pro/ui/component/AutoEllipsizeViewGroup;->visibleChildrenIndex:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_0

    .line 73
    invoke-virtual {p0}, Lim/doit/pro/ui/component/AutoEllipsizeViewGroup;->getPaddingLeft()I

    move-result v9

    .line 74
    .local v9, "xpos":I
    invoke-virtual {p0}, Lim/doit/pro/ui/component/AutoEllipsizeViewGroup;->getPaddingTop()I

    move-result v10

    .line 75
    .local v10, "ypos":I
    iget v7, p0, Lim/doit/pro/ui/component/AutoEllipsizeViewGroup;->mWidth:I

    .line 76
    .local v7, "leftWidth":I
    iget-object v11, p0, Lim/doit/pro/ui/component/AutoEllipsizeViewGroup;->visibleChildrenIndex:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 77
    .local v6, "leftChildCount":I
    const/4 v4, 0x0

    .line 78
    .local v4, "i":I
    iget-object v11, p0, Lim/doit/pro/ui/component/AutoEllipsizeViewGroup;->visibleChildrenIndex:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-nez v11, :cond_1

    .line 105
    .end local v4    # "i":I
    .end local v6    # "leftChildCount":I
    .end local v7    # "leftWidth":I
    .end local v9    # "xpos":I
    .end local v10    # "ypos":I
    :cond_0
    return-void

    .line 78
    .restart local v4    # "i":I
    .restart local v6    # "leftChildCount":I
    .restart local v7    # "leftWidth":I
    .restart local v9    # "xpos":I
    .restart local v10    # "ypos":I
    :cond_1
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 79
    .local v5, "item":I
    invoke-direct {p0, v4, v7, v6}, Lim/doit/pro/ui/component/AutoEllipsizeViewGroup;->getChildMax(III)I

    move-result v1

    .line 80
    .local v1, "childMaxWidth":I
    invoke-virtual {p0, v5}, Lim/doit/pro/ui/component/AutoEllipsizeViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 81
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .line 82
    .local v3, "childw":I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 83
    .local v2, "childh":I
    iget v11, p0, Lim/doit/pro/ui/component/AutoEllipsizeViewGroup;->mChildMaxHeight:I

    if-ge v2, v11, :cond_2

    .line 84
    iget v11, p0, Lim/doit/pro/ui/component/AutoEllipsizeViewGroup;->mChildMaxHeight:I

    sub-int/2addr v11, v2

    div-int/lit8 v10, v11, 0x2

    .line 86
    :cond_2
    if-le v3, v1, :cond_3

    .line 87
    move v3, v1

    .line 88
    const/high16 v11, 0x40000000    # 2.0f

    invoke-static {v3, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    .line 89
    const/4 v13, 0x0

    invoke-static {v2, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    .line 88
    invoke-virtual {v0, v11, v13}, Landroid/view/View;->measure(II)V

    .line 92
    :cond_3
    instance-of v11, v0, Lim/doit/pro/ui/component/DListItemAttributeTextView;

    if-eqz v11, :cond_4

    move-object v8, v0

    .line 93
    check-cast v8, Lim/doit/pro/ui/component/DListItemAttributeTextView;

    .line 94
    .local v8, "tv":Lim/doit/pro/ui/component/DListItemAttributeTextView;
    invoke-virtual {v8}, Lim/doit/pro/ui/component/DListItemAttributeTextView;->isAlignRight()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 95
    iget v11, p0, Lim/doit/pro/ui/component/AutoEllipsizeViewGroup;->mWidth:I

    sub-int v9, v11, v3

    .line 98
    .end local v8    # "tv":Lim/doit/pro/ui/component/DListItemAttributeTextView;
    :cond_4
    add-int v11, v9, v3

    add-int v13, v10, v2

    invoke-virtual {v0, v9, v10, v11, v13}, Landroid/view/View;->layout(IIII)V

    .line 99
    iget v11, p0, Lim/doit/pro/ui/component/AutoEllipsizeViewGroup;->horizontalSpacing:I

    add-int/2addr v11, v3

    add-int/2addr v9, v11

    .line 100
    iget v11, p0, Lim/doit/pro/ui/component/AutoEllipsizeViewGroup;->mWidth:I

    sub-int v7, v11, v9

    .line 101
    add-int/lit8 v6, v6, -0x1

    .line 102
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 7
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 52
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 53
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    invoke-virtual {p0}, Lim/doit/pro/ui/component/AutoEllipsizeViewGroup;->getPaddingLeft()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Lim/doit/pro/ui/component/AutoEllipsizeViewGroup;->getPaddingRight()I

    move-result v6

    sub-int/2addr v5, v6

    iput v5, p0, Lim/doit/pro/ui/component/AutoEllipsizeViewGroup;->mWidth:I

    .line 54
    iget-object v5, p0, Lim/doit/pro/ui/component/AutoEllipsizeViewGroup;->visibleChildrenIndex:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 55
    invoke-virtual {p0}, Lim/doit/pro/ui/component/AutoEllipsizeViewGroup;->getChildCount()I

    move-result v1

    .line 56
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, v1, :cond_0

    .line 67
    iget-object v5, p0, Lim/doit/pro/ui/component/AutoEllipsizeViewGroup;->visibleChildrenIndex:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_3

    :goto_1
    invoke-virtual {p0, v3}, Lim/doit/pro/ui/component/AutoEllipsizeViewGroup;->setVisibility(I)V

    .line 68
    return-void

    .line 57
    :cond_0
    invoke-virtual {p0, v2}, Lim/doit/pro/ui/component/AutoEllipsizeViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 58
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-eq v5, v4, :cond_2

    .line 59
    invoke-virtual {v0, v3, v3}, Landroid/view/View;->measure(II)V

    .line 60
    iget v5, p0, Lim/doit/pro/ui/component/AutoEllipsizeViewGroup;->mChildMaxHeight:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    if-ge v5, v6, :cond_1

    .line 61
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    iput v5, p0, Lim/doit/pro/ui/component/AutoEllipsizeViewGroup;->mChildMaxHeight:I

    .line 63
    :cond_1
    iget-object v5, p0, Lim/doit/pro/ui/component/AutoEllipsizeViewGroup;->visibleChildrenIndex:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v0    # "child":Landroid/view/View;
    :cond_3
    move v3, v4

    .line 67
    goto :goto_1
.end method
