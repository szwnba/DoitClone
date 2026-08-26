.class public Lcom/mobeta/android/dslv/DoitDragSortController;
.super Lcom/mobeta/android/dslv/DragSortController;
.source "DoitDragSortController.java"


# instance fields
.field private mAdapter:Lim/doit/pro/activity/listview/ListViewAdapter;

.field private mListView:Lcom/mobeta/android/dslv/DragSortListView;

.field private mNextGroupPos:I

.field private mPos:I

.field private mPreGroupPos:I

.field private origHeight:I


# direct methods
.method public constructor <init>(Lcom/mobeta/android/dslv/DragSortListView;III)V
    .locals 1
    .param p1, "dslv"    # Lcom/mobeta/android/dslv/DragSortListView;
    .param p2, "dragHandleId"    # I
    .param p3, "dragInitMode"    # I
    .param p4, "removeMode"    # I

    .prologue
    const/4 v0, -0x1

    .line 27
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/mobeta/android/dslv/DragSortController;-><init>(Lcom/mobeta/android/dslv/DragSortListView;III)V

    .line 17
    iput v0, p0, Lcom/mobeta/android/dslv/DoitDragSortController;->mPreGroupPos:I

    iput v0, p0, Lcom/mobeta/android/dslv/DoitDragSortController;->mNextGroupPos:I

    .line 18
    iput v0, p0, Lcom/mobeta/android/dslv/DoitDragSortController;->origHeight:I

    .line 28
    return-void
.end method

.method public constructor <init>(Lcom/mobeta/android/dslv/DragSortListView;Lim/doit/pro/activity/listview/ListViewAdapter;)V
    .locals 2
    .param p1, "dslv"    # Lcom/mobeta/android/dslv/DragSortListView;
    .param p2, "adapter"    # Lim/doit/pro/activity/listview/ListViewAdapter;

    .prologue
    const/4 v1, 0x0

    .line 21
    const/4 v0, 0x2

    invoke-direct {p0, p1, v1, v0, v1}, Lcom/mobeta/android/dslv/DoitDragSortController;-><init>(Lcom/mobeta/android/dslv/DragSortListView;III)V

    .line 22
    iput-object p1, p0, Lcom/mobeta/android/dslv/DoitDragSortController;->mListView:Lcom/mobeta/android/dslv/DragSortListView;

    .line 23
    iput-object p2, p0, Lcom/mobeta/android/dslv/DoitDragSortController;->mAdapter:Lim/doit/pro/activity/listview/ListViewAdapter;

    .line 24
    return-void
.end method


# virtual methods
.method public onCreateFloatView(I)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I

    .prologue
    const/4 v3, -0x1

    .line 44
    iput p1, p0, Lcom/mobeta/android/dslv/DoitDragSortController;->mPos:I

    .line 46
    iget-object v1, p0, Lcom/mobeta/android/dslv/DoitDragSortController;->mAdapter:Lim/doit/pro/activity/listview/ListViewAdapter;

    invoke-virtual {v1, p1}, Lim/doit/pro/activity/listview/ListViewAdapter;->getGrouperPosition(I)I

    move-result v0

    .line 47
    .local v0, "groupPos":I
    if-eq v0, v3, :cond_0

    .line 48
    iput v0, p0, Lcom/mobeta/android/dslv/DoitDragSortController;->mPreGroupPos:I

    .line 49
    iget-object v1, p0, Lcom/mobeta/android/dslv/DoitDragSortController;->mAdapter:Lim/doit/pro/activity/listview/ListViewAdapter;

    invoke-virtual {v1, v0}, Lim/doit/pro/activity/listview/ListViewAdapter;->getItem(I)Lim/doit/pro/model/BaseEntityWithPos;

    move-result-object v1

    check-cast v1, Lim/doit/pro/ui/model/GrouperForListView;

    invoke-virtual {v1}, Lim/doit/pro/ui/model/GrouperForListView;->getTotalCount()I

    move-result v1

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/mobeta/android/dslv/DoitDragSortController;->mNextGroupPos:I

    .line 50
    iget v1, p0, Lcom/mobeta/android/dslv/DoitDragSortController;->mNextGroupPos:I

    iget-object v2, p0, Lcom/mobeta/android/dslv/DoitDragSortController;->mAdapter:Lim/doit/pro/activity/listview/ListViewAdapter;

    invoke-virtual {v2}, Lim/doit/pro/activity/listview/ListViewAdapter;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-le v1, v2, :cond_0

    .line 51
    iput v3, p0, Lcom/mobeta/android/dslv/DoitDragSortController;->mNextGroupPos:I

    .line 54
    :cond_0
    iget-object v1, p0, Lcom/mobeta/android/dslv/DoitDragSortController;->mAdapter:Lim/doit/pro/activity/listview/ListViewAdapter;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/mobeta/android/dslv/DoitDragSortController;->mListView:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-virtual {v1, p1, v2, v3}, Lim/doit/pro/activity/listview/ListViewAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method public onDestroyFloatView(Landroid/view/View;)V
    .locals 0
    .param p1, "floatView"    # Landroid/view/View;

    .prologue
    .line 92
    return-void
.end method

.method public onDragFloatView(Landroid/view/View;Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 9
    .param p1, "floatView"    # Landroid/view/View;
    .param p2, "floatPoint"    # Landroid/graphics/Point;
    .param p3, "touchPoint"    # Landroid/graphics/Point;

    .prologue
    .line 59
    iget-object v7, p0, Lcom/mobeta/android/dslv/DoitDragSortController;->mListView:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-virtual {v7}, Lcom/mobeta/android/dslv/DragSortListView;->getFirstVisiblePosition()I

    move-result v0

    .line 60
    .local v0, "first":I
    iget-object v7, p0, Lcom/mobeta/android/dslv/DoitDragSortController;->mListView:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-virtual {v7}, Lcom/mobeta/android/dslv/DragSortListView;->getDividerHeight()I

    move-result v3

    .line 62
    .local v3, "lvDivHeight":I
    iget v7, p0, Lcom/mobeta/android/dslv/DoitDragSortController;->origHeight:I

    const/4 v8, -0x1

    if-ne v7, v8, :cond_0

    .line 63
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v7

    iput v7, p0, Lcom/mobeta/android/dslv/DoitDragSortController;->origHeight:I

    .line 66
    :cond_0
    iget v7, p3, Landroid/graphics/Point;->x:I

    iget-object v8, p0, Lcom/mobeta/android/dslv/DoitDragSortController;->mListView:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-virtual {v8}, Lcom/mobeta/android/dslv/DragSortListView;->getWidth()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    if-le v7, v8, :cond_1

    .line 67
    iget v7, p3, Landroid/graphics/Point;->x:I

    iget-object v8, p0, Lcom/mobeta/android/dslv/DoitDragSortController;->mListView:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-virtual {v8}, Lcom/mobeta/android/dslv/DragSortListView;->getWidth()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    sub-int/2addr v7, v8

    int-to-float v6, v7

    .line 68
    .local v6, "scale":F
    iget-object v7, p0, Lcom/mobeta/android/dslv/DoitDragSortController;->mListView:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-virtual {v7}, Lcom/mobeta/android/dslv/DragSortListView;->getWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x5

    int-to-float v7, v7

    div-float/2addr v6, v7

    .line 69
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 70
    .local v2, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget v7, p0, Lcom/mobeta/android/dslv/DoitDragSortController;->origHeight:I

    iget v8, p0, Lcom/mobeta/android/dslv/DoitDragSortController;->origHeight:I

    int-to-float v8, v8

    mul-float/2addr v8, v6

    float-to-int v8, v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    iput v7, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 71
    invoke-virtual {p1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 74
    .end local v2    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v6    # "scale":F
    :cond_1
    iget-object v7, p0, Lcom/mobeta/android/dslv/DoitDragSortController;->mListView:Lcom/mobeta/android/dslv/DragSortListView;

    iget v8, p0, Lcom/mobeta/android/dslv/DoitDragSortController;->mPreGroupPos:I

    sub-int/2addr v8, v0

    invoke-virtual {v7, v8}, Lcom/mobeta/android/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 75
    .local v5, "preGroupView":Landroid/view/View;
    if-eqz v5, :cond_2

    iget v7, p0, Lcom/mobeta/android/dslv/DoitDragSortController;->mPos:I

    iget v8, p0, Lcom/mobeta/android/dslv/DoitDragSortController;->mPreGroupPos:I

    if-le v7, v8, :cond_2

    .line 76
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v7

    add-int v1, v7, v3

    .line 77
    .local v1, "limit":I
    iget v7, p2, Landroid/graphics/Point;->y:I

    if-ge v7, v1, :cond_2

    .line 78
    iput v1, p2, Landroid/graphics/Point;->y:I

    .line 81
    .end local v1    # "limit":I
    :cond_2
    iget-object v7, p0, Lcom/mobeta/android/dslv/DoitDragSortController;->mListView:Lcom/mobeta/android/dslv/DragSortListView;

    iget v8, p0, Lcom/mobeta/android/dslv/DoitDragSortController;->mNextGroupPos:I

    sub-int/2addr v8, v0

    invoke-virtual {v7, v8}, Lcom/mobeta/android/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 82
    .local v4, "nextGroupView":Landroid/view/View;
    if-eqz v4, :cond_3

    iget v7, p0, Lcom/mobeta/android/dslv/DoitDragSortController;->mPos:I

    iget v8, p0, Lcom/mobeta/android/dslv/DoitDragSortController;->mNextGroupPos:I

    if-ge v7, v8, :cond_3

    .line 83
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v7

    sub-int/2addr v7, v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v8

    sub-int v1, v7, v8

    .line 84
    .restart local v1    # "limit":I
    iget v7, p2, Landroid/graphics/Point;->y:I

    if-le v7, v1, :cond_3

    .line 85
    iput v1, p2, Landroid/graphics/Point;->y:I

    .line 88
    .end local v1    # "limit":I
    :cond_3
    return-void
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 3
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 96
    invoke-super {p0, p1}, Lcom/mobeta/android/dslv/DragSortController;->dragHandleHitPosition(Landroid/view/MotionEvent;)I

    move-result v0

    .line 97
    .local v0, "position":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 105
    :goto_0
    return-void

    .line 100
    :cond_0
    iget-object v2, p0, Lcom/mobeta/android/dslv/DoitDragSortController;->mAdapter:Lim/doit/pro/activity/listview/ListViewAdapter;

    invoke-virtual {v2, v0}, Lim/doit/pro/activity/listview/ListViewAdapter;->isDragable(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 101
    iget-object v2, p0, Lcom/mobeta/android/dslv/DoitDragSortController;->mListView:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-virtual {v2, v0}, Lcom/mobeta/android/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 102
    .local v1, "v":Landroid/view/View;
    iget-object v2, p0, Lcom/mobeta/android/dslv/DoitDragSortController;->mAdapter:Lim/doit/pro/activity/listview/ListViewAdapter;

    invoke-virtual {v2, v1, v0}, Lim/doit/pro/activity/listview/ListViewAdapter;->doListViewItemSelected(Landroid/view/View;I)V

    .line 104
    .end local v1    # "v":Landroid/view/View;
    :cond_1
    invoke-super {p0, p1}, Lcom/mobeta/android/dslv/DragSortController;->onLongPress(Landroid/view/MotionEvent;)V

    goto :goto_0
.end method

.method public startDragPosition(Landroid/view/MotionEvent;)I
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, -0x1

    .line 32
    invoke-super {p0, p1}, Lcom/mobeta/android/dslv/DragSortController;->dragHandleHitPosition(Landroid/view/MotionEvent;)I

    move-result v0

    .line 33
    .local v0, "position":I
    if-ltz v0, :cond_0

    iget-object v2, p0, Lcom/mobeta/android/dslv/DoitDragSortController;->mAdapter:Lim/doit/pro/activity/listview/ListViewAdapter;

    invoke-virtual {v2}, Lim/doit/pro/activity/listview/ListViewAdapter;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-le v0, v2, :cond_2

    :cond_0
    move v0, v1

    .line 39
    .end local v0    # "position":I
    :cond_1
    :goto_0
    return v0

    .line 36
    .restart local v0    # "position":I
    :cond_2
    iget-object v2, p0, Lcom/mobeta/android/dslv/DoitDragSortController;->mAdapter:Lim/doit/pro/activity/listview/ListViewAdapter;

    invoke-virtual {v2, v0}, Lim/doit/pro/activity/listview/ListViewAdapter;->isUndraggable(I)Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    .line 37
    goto :goto_0
.end method
