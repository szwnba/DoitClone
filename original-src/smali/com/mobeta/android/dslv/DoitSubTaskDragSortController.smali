.class public Lcom/mobeta/android/dslv/DoitSubTaskDragSortController;
.super Lcom/mobeta/android/dslv/DragSortController;
.source "DoitSubTaskDragSortController.java"


# instance fields
.field private mAdapter:Lim/doit/pro/ui/component/SubTaskSortDialog$SubTaskListAdapter;

.field private mListView:Lcom/mobeta/android/dslv/DragSortListView;


# direct methods
.method public constructor <init>(Lcom/mobeta/android/dslv/DragSortListView;Lim/doit/pro/ui/component/SubTaskSortDialog$SubTaskListAdapter;I)V
    .locals 1
    .param p1, "dslv"    # Lcom/mobeta/android/dslv/DragSortListView;
    .param p2, "adapter"    # Lim/doit/pro/ui/component/SubTaskSortDialog$SubTaskListAdapter;
    .param p3, "dragHandleId"    # I

    .prologue
    const/4 v0, 0x0

    .line 15
    invoke-direct {p0, p1, p3, v0, v0}, Lcom/mobeta/android/dslv/DragSortController;-><init>(Lcom/mobeta/android/dslv/DragSortListView;III)V

    .line 16
    iput-object p1, p0, Lcom/mobeta/android/dslv/DoitSubTaskDragSortController;->mListView:Lcom/mobeta/android/dslv/DragSortListView;

    .line 17
    iput-object p2, p0, Lcom/mobeta/android/dslv/DoitSubTaskDragSortController;->mAdapter:Lim/doit/pro/ui/component/SubTaskSortDialog$SubTaskListAdapter;

    .line 18
    return-void
.end method


# virtual methods
.method public onCreateFloatView(I)Landroid/view/View;
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 31
    iget-object v0, p0, Lcom/mobeta/android/dslv/DoitSubTaskDragSortController;->mAdapter:Lim/doit/pro/ui/component/SubTaskSortDialog$SubTaskListAdapter;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/mobeta/android/dslv/DoitSubTaskDragSortController;->mListView:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-virtual {v0, p1, v1, v2}, Lim/doit/pro/ui/component/SubTaskSortDialog$SubTaskListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroyFloatView(Landroid/view/View;)V
    .locals 0
    .param p1, "floatView"    # Landroid/view/View;

    .prologue
    .line 41
    return-void
.end method

.method public onDragFloatView(Landroid/view/View;Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 0
    .param p1, "floatView"    # Landroid/view/View;
    .param p2, "floatPoint"    # Landroid/graphics/Point;
    .param p3, "touchPoint"    # Landroid/graphics/Point;

    .prologue
    .line 37
    return-void
.end method

.method public startDragPosition(Landroid/view/MotionEvent;)I
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 22
    invoke-super {p0, p1}, Lcom/mobeta/android/dslv/DragSortController;->dragHandleHitPosition(Landroid/view/MotionEvent;)I

    move-result v0

    .line 23
    .local v0, "position":I
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/mobeta/android/dslv/DoitSubTaskDragSortController;->mAdapter:Lim/doit/pro/ui/component/SubTaskSortDialog$SubTaskListAdapter;

    invoke-virtual {v1}, Lim/doit/pro/ui/component/SubTaskSortDialog$SubTaskListAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-le v0, v1, :cond_1

    .line 24
    :cond_0
    const/4 v0, -0x1

    .line 26
    .end local v0    # "position":I
    :cond_1
    return v0
.end method
