.class public Lim/doit/pro/ui/component/LoadMoreListView;
.super Landroid/widget/ListView;
.source "LoadMoreListView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lim/doit/pro/ui/component/LoadMoreListView$OnLoadMoreListener;
    }
.end annotation


# static fields
.field private static final PULL_TO_REFRESH:I = 0x2

.field private static final REFRESHING:I = 0x4

.field private static final RELEASE_TO_REFRESH:I = 0x3

.field private static final TAP_TO_REFRESH:I = 0x1


# instance fields
.field private mCurrentScrollState:I

.field private mFooterView:Landroid/widget/RelativeLayout;

.field private mIsLoadingMore:Z

.field private mOnLoadMoreListener:Lim/doit/pro/ui/component/LoadMoreListView$OnLoadMoreListener;

.field private mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field private mProgressBarLoadMore:Landroid/widget/ProgressBar;

.field private mRefreshState:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lim/doit/pro/ui/component/LoadMoreListView;->mIsLoadingMore:Z

    .line 38
    invoke-virtual {p0, p1}, Lim/doit/pro/ui/component/LoadMoreListView;->init(Landroid/content/Context;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lim/doit/pro/ui/component/LoadMoreListView;->mIsLoadingMore:Z

    .line 43
    invoke-virtual {p0, p1}, Lim/doit/pro/ui/component/LoadMoreListView;->init(Landroid/content/Context;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lim/doit/pro/ui/component/LoadMoreListView;->mIsLoadingMore:Z

    .line 48
    invoke-virtual {p0, p1}, Lim/doit/pro/ui/component/LoadMoreListView;->init(Landroid/content/Context;)V

    .line 49
    return-void
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 53
    .line 54
    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 53
    check-cast v0, Landroid/view/LayoutInflater;

    .line 58
    .local v0, "mInflater":Landroid/view/LayoutInflater;
    const v1, 0x7f0300a3

    const/4 v2, 0x0

    .line 57
    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lim/doit/pro/ui/component/LoadMoreListView;->mFooterView:Landroid/widget/RelativeLayout;

    .line 59
    iget-object v1, p0, Lim/doit/pro/ui/component/LoadMoreListView;->mFooterView:Landroid/widget/RelativeLayout;

    .line 60
    const v2, 0x7f0b01b5

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    .line 59
    iput-object v1, p0, Lim/doit/pro/ui/component/LoadMoreListView;->mProgressBarLoadMore:Landroid/widget/ProgressBar;

    .line 62
    const/4 v1, 0x1

    iput v1, p0, Lim/doit/pro/ui/component/LoadMoreListView;->mRefreshState:I

    .line 64
    iget-object v1, p0, Lim/doit/pro/ui/component/LoadMoreListView;->mFooterView:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v1}, Lim/doit/pro/ui/component/LoadMoreListView;->addFooterView(Landroid/view/View;)V

    .line 66
    invoke-super {p0, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 67
    return-void
.end method

.method public onLoadMore()V
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lim/doit/pro/ui/component/LoadMoreListView;->mOnLoadMoreListener:Lim/doit/pro/ui/component/LoadMoreListView$OnLoadMoreListener;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lim/doit/pro/ui/component/LoadMoreListView;->mOnLoadMoreListener:Lim/doit/pro/ui/component/LoadMoreListView$OnLoadMoreListener;

    invoke-interface {v0}, Lim/doit/pro/ui/component/LoadMoreListView$OnLoadMoreListener;->onLoadMore()V

    .line 126
    :cond_0
    return-void
.end method

.method public onLoadMoreComplete()V
    .locals 2

    .prologue
    .line 132
    const/4 v0, 0x0

    iput-boolean v0, p0, Lim/doit/pro/ui/component/LoadMoreListView;->mIsLoadingMore:Z

    .line 133
    iget-object v0, p0, Lim/doit/pro/ui/component/LoadMoreListView;->mProgressBarLoadMore:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 134
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 5
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 97
    iget-object v3, p0, Lim/doit/pro/ui/component/LoadMoreListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v3, :cond_0

    .line 98
    iget-object v3, p0, Lim/doit/pro/ui/component/LoadMoreListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v3, p1, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    .line 103
    :cond_0
    iget-object v3, p0, Lim/doit/pro/ui/component/LoadMoreListView;->mOnLoadMoreListener:Lim/doit/pro/ui/component/LoadMoreListView$OnLoadMoreListener;

    if-eqz v3, :cond_1

    .line 105
    if-ne p3, p4, :cond_2

    .line 106
    iget-object v1, p0, Lim/doit/pro/ui/component/LoadMoreListView;->mProgressBarLoadMore:Landroid/widget/ProgressBar;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 120
    :cond_1
    :goto_0
    return-void

    .line 110
    :cond_2
    add-int v3, p2, p3

    if-lt v3, p4, :cond_3

    move v0, v1

    .line 112
    .local v0, "loadMore":Z
    :goto_1
    iget-boolean v3, p0, Lim/doit/pro/ui/component/LoadMoreListView;->mIsLoadingMore:Z

    if-nez v3, :cond_1

    if-eqz v0, :cond_1

    iget v3, p0, Lim/doit/pro/ui/component/LoadMoreListView;->mRefreshState:I

    const/4 v4, 0x4

    if-eq v3, v4, :cond_1

    .line 113
    iget v3, p0, Lim/doit/pro/ui/component/LoadMoreListView;->mCurrentScrollState:I

    if-eqz v3, :cond_1

    .line 114
    iget-object v3, p0, Lim/doit/pro/ui/component/LoadMoreListView;->mProgressBarLoadMore:Landroid/widget/ProgressBar;

    invoke-virtual {v3, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 115
    iput-boolean v1, p0, Lim/doit/pro/ui/component/LoadMoreListView;->mIsLoadingMore:Z

    .line 116
    invoke-virtual {p0}, Lim/doit/pro/ui/component/LoadMoreListView;->onLoadMore()V

    goto :goto_0

    .end local v0    # "loadMore":Z
    :cond_3
    move v0, v2

    .line 110
    goto :goto_1
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 153
    if-nez p2, :cond_0

    .line 154
    invoke-virtual {p1}, Landroid/widget/AbsListView;->invalidateViews()V

    .line 157
    :cond_0
    iput p2, p0, Lim/doit/pro/ui/component/LoadMoreListView;->mCurrentScrollState:I

    .line 159
    iget-object v0, p0, Lim/doit/pro/ui/component/LoadMoreListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_1

    .line 160
    iget-object v0, p0, Lim/doit/pro/ui/component/LoadMoreListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p1, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 163
    :cond_1
    return-void
.end method

.method public setOnLoadMoreListener(Lim/doit/pro/ui/component/LoadMoreListView$OnLoadMoreListener;)V
    .locals 0
    .param p1, "onLoadMoreListener"    # Lim/doit/pro/ui/component/LoadMoreListView$OnLoadMoreListener;

    .prologue
    .line 90
    iput-object p1, p0, Lim/doit/pro/ui/component/LoadMoreListView;->mOnLoadMoreListener:Lim/doit/pro/ui/component/LoadMoreListView$OnLoadMoreListener;

    .line 91
    return-void
.end method

.method public setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 0
    .param p1, "l"    # Landroid/widget/AbsListView$OnScrollListener;

    .prologue
    .line 78
    iput-object p1, p0, Lim/doit/pro/ui/component/LoadMoreListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 79
    return-void
.end method
