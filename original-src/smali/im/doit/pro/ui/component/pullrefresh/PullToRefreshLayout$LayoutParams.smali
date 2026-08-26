.class Lim/doit/pro/ui/component/pullrefresh/PullToRefreshLayout$LayoutParams;
.super Landroid/widget/FrameLayout$LayoutParams;
.source "PullToRefreshLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/ui/component/pullrefresh/PullToRefreshLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LayoutParams"
.end annotation


# instance fields
.field private final mViewDelegateClassName:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 230
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 232
    sget-object v1, Lim/doit/pro/v4/R$styleable;->PullToRefreshView:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 234
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 233
    iput-object v1, p0, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshLayout$LayoutParams;->mViewDelegateClassName:Ljava/lang/String;

    .line 235
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 236
    return-void
.end method


# virtual methods
.method getViewDelegateClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshLayout$LayoutParams;->mViewDelegateClassName:Ljava/lang/String;

    return-object v0
.end method
