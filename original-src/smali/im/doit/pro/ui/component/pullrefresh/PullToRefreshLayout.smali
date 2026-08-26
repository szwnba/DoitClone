.class public Lim/doit/pro/ui/component/pullrefresh/PullToRefreshLayout;
.super Landroid/widget/FrameLayout;
.source "PullToRefreshLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lim/doit/pro/ui/component/pullrefresh/PullToRefreshLayout$LayoutParams;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "PullToRefreshLayout"


# instance fields
.field private mPullToRefreshAttacher:Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 48
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 52
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    return-void
.end method

.method private ensureAttacher()V
    .locals 2

    .prologue
    .line 221
    iget-object v0, p0, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshLayout;->mPullToRefreshAttacher:Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher;

    if-nez v0, :cond_0

    .line 222
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You need to setup the PullToRefreshLayout before using it"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 224
    :cond_0
    return-void
.end method


# virtual methods
.method addAllChildrenAsPullable()V
    .locals 3

    .prologue
    .line 167
    invoke-direct {p0}, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshLayout;->ensureAttacher()V

    .line 168
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {p0}, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshLayout;->getChildCount()I

    move-result v1

    .local v1, "z":I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 171
    return-void

    .line 169
    :cond_0
    invoke-virtual {p0, v0}, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshLayout;->addRefreshableView(Landroid/view/View;)V

    .line 168
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method addChildrenAsPullable([I)V
    .locals 4
    .param p1, "viewIds"    # [I

    .prologue
    .line 174
    const/4 v0, 0x0

    .local v0, "i":I
    array-length v2, p1

    .local v2, "z":I
    :goto_0
    if-lt v0, v2, :cond_0

    .line 180
    return-void

    .line 175
    :cond_0
    aget v3, p1, v0

    invoke-virtual {p0, v3}, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 176
    .local v1, "view":Landroid/view/View;
    if-eqz v1, :cond_1

    .line 177
    aget v3, p1, v0

    invoke-virtual {p0, v3}, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v3}, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshLayout;->addRefreshableView(Landroid/view/View;)V

    .line 174
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method addChildrenAsPullable([Landroid/view/View;)V
    .locals 3
    .param p1, "views"    # [Landroid/view/View;

    .prologue
    .line 183
    const/4 v0, 0x0

    .local v0, "i":I
    array-length v1, p1

    .local v1, "z":I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 188
    return-void

    .line 184
    :cond_0
    aget-object v2, p1, v0

    if-eqz v2, :cond_1

    .line 185
    aget-object v2, p1, v0

    invoke-virtual {p0, v2}, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshLayout;->addRefreshableView(Landroid/view/View;)V

    .line 183
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method addRefreshableView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 191
    iget-object v0, p0, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshLayout;->mPullToRefreshAttacher:Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher;

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshLayout;->mPullToRefreshAttacher:Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher;

    invoke-virtual {p0, p1}, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshLayout;->getViewDelegateFromLayoutParams(Landroid/view/View;)Lim/doit/pro/ui/component/pullrefresh/ViewDelegate;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher;->addRefreshableView(Landroid/view/View;Lim/doit/pro/ui/component/pullrefresh/ViewDelegate;)V

    .line 194
    :cond_0
    return-void
.end method

.method protected createPullToRefreshAttacher(Landroid/app/Activity;Lim/doit/pro/ui/component/pullrefresh/Options;)Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher;
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "options"    # Lim/doit/pro/ui/component/pullrefresh/Options;

    .prologue
    .line 217
    new-instance v0, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher;

    if-eqz p2, :cond_0

    .end local p2    # "options":Lim/doit/pro/ui/component/pullrefresh/Options;
    :goto_0
    invoke-direct {v0, p1, p2}, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher;-><init>(Landroid/app/Activity;Lim/doit/pro/ui/component/pullrefresh/Options;)V

    return-object v0

    .restart local p2    # "options":Lim/doit/pro/ui/component/pullrefresh/Options;
    :cond_0
    new-instance p2, Lim/doit/pro/ui/component/pullrefresh/Options;

    .end local p2    # "options":Lim/doit/pro/ui/component/pullrefresh/Options;
    invoke-direct {p2}, Lim/doit/pro/ui/component/pullrefresh/Options;-><init>()V

    goto :goto_0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 139
    new-instance v0, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshLayout$LayoutParams;

    invoke-virtual {p0}, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public getHeaderTransformer()Lim/doit/pro/ui/component/pullrefresh/HeaderTransformer;
    .locals 1

    .prologue
    .line 110
    invoke-direct {p0}, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshLayout;->ensureAttacher()V

    .line 111
    iget-object v0, p0, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshLayout;->mPullToRefreshAttacher:Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher;

    invoke-virtual {v0}, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher;->getHeaderTransformer()Lim/doit/pro/ui/component/pullrefresh/HeaderTransformer;

    move-result-object v0

    return-object v0
.end method

.method public final getHeaderView()Landroid/view/View;
    .locals 1

    .prologue
    .line 102
    invoke-direct {p0}, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshLayout;->ensureAttacher()V

    .line 103
    iget-object v0, p0, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshLayout;->mPullToRefreshAttacher:Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher;

    invoke-virtual {v0}, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher;->getHeaderView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method getViewDelegateFromLayoutParams(Landroid/view/View;)Lim/doit/pro/ui/component/pullrefresh/ViewDelegate;
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 197
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    instance-of v3, v3, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshLayout$LayoutParams;

    if-eqz v3, :cond_2

    .line 198
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshLayout$LayoutParams;

    .line 199
    .local v2, "lp":Lim/doit/pro/ui/component/pullrefresh/PullToRefreshLayout$LayoutParams;
    invoke-virtual {v2}, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshLayout$LayoutParams;->getViewDelegateClassName()Ljava/lang/String;

    move-result-object v0

    .line 201
    .local v0, "clazzName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 203
    const/16 v3, 0x2e

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 204
    .local v1, "firstDot":I
    const/4 v3, -0x1

    if-ne v1, v3, :cond_1

    .line 205
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 209
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v0}, Lim/doit/pro/ui/component/pullrefresh/InstanceCreationUtils;->instantiateViewDelegate(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lim/doit/pro/ui/component/pullrefresh/ViewDelegate;

    .line 212
    .end local v0    # "clazzName":Ljava/lang/String;
    .end local v1    # "firstDot":I
    .end local v2    # "lp":Lim/doit/pro/ui/component/pullrefresh/PullToRefreshLayout$LayoutParams;
    :goto_1
    return-object v3

    .line 206
    .restart local v0    # "clazzName":Ljava/lang/String;
    .restart local v1    # "firstDot":I
    .restart local v2    # "lp":Lim/doit/pro/ui/component/pullrefresh/PullToRefreshLayout$LayoutParams;
    :cond_1
    if-nez v1, :cond_0

    .line 207
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 212
    .end local v0    # "clazzName":Ljava/lang/String;
    .end local v1    # "firstDot":I
    .end local v2    # "lp":Lim/doit/pro/ui/component/pullrefresh/PullToRefreshLayout$LayoutParams;
    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public final isRefreshing()Z
    .locals 1

    .prologue
    .line 71
    invoke-direct {p0}, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshLayout;->ensureAttacher()V

    .line 72
    iget-object v0, p0, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshLayout;->mPullToRefreshAttacher:Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher;

    invoke-virtual {v0}, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher;->isRefreshing()Z

    move-result v0

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 153
    iget-object v0, p0, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshLayout;->mPullToRefreshAttacher:Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher;

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshLayout;->mPullToRefreshAttacher:Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher;

    invoke-virtual {v0, p1}, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 156
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 157
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshLayout;->mPullToRefreshAttacher:Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher;

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshLayout;->mPullToRefreshAttacher:Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher;

    invoke-virtual {v0}, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher;->destroy()V

    .line 148
    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 149
    return-void
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 120
    invoke-virtual {p0}, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshLayout;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshLayout;->mPullToRefreshAttacher:Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 121
    iget-object v0, p0, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshLayout;->mPullToRefreshAttacher:Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher;

    invoke-virtual {v0, p1}, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 123
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 131
    invoke-virtual {p0}, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshLayout;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshLayout;->mPullToRefreshAttacher:Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshLayout;->mPullToRefreshAttacher:Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher;

    invoke-virtual {v0, p1}, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 134
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public final setHeaderViewListener(Lim/doit/pro/ui/component/pullrefresh/HeaderViewListener;)V
    .locals 1
    .param p1, "listener"    # Lim/doit/pro/ui/component/pullrefresh/HeaderViewListener;

    .prologue
    .line 93
    invoke-direct {p0}, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshLayout;->ensureAttacher()V

    .line 94
    iget-object v0, p0, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshLayout;->mPullToRefreshAttacher:Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher;

    invoke-virtual {v0, p1}, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher;->setHeaderViewListener(Lim/doit/pro/ui/component/pullrefresh/HeaderViewListener;)V

    .line 95
    return-void
.end method

.method setPullToRefreshAttacher(Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher;)V
    .locals 1
    .param p1, "attacher"    # Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher;

    .prologue
    .line 160
    iget-object v0, p0, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshLayout;->mPullToRefreshAttacher:Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher;

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshLayout;->mPullToRefreshAttacher:Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher;

    invoke-virtual {v0}, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher;->destroy()V

    .line 163
    :cond_0
    iput-object p1, p0, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshLayout;->mPullToRefreshAttacher:Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher;

    .line 164
    return-void
.end method

.method public final setRefreshComplete()V
    .locals 1

    .prologue
    .line 82
    invoke-direct {p0}, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshLayout;->ensureAttacher()V

    .line 83
    iget-object v0, p0, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshLayout;->mPullToRefreshAttacher:Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher;

    invoke-virtual {v0}, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher;->setRefreshComplete()V

    .line 84
    return-void
.end method

.method public final setRefreshing(Z)V
    .locals 1
    .param p1, "refreshing"    # Z

    .prologue
    .line 63
    invoke-direct {p0}, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshLayout;->ensureAttacher()V

    .line 64
    iget-object v0, p0, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshLayout;->mPullToRefreshAttacher:Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher;

    invoke-virtual {v0, p1}, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher;->setRefreshing(Z)V

    .line 65
    return-void
.end method
