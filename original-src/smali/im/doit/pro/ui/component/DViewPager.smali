.class public Lim/doit/pro/ui/component/DViewPager;
.super Landroid/support/v4/view/ViewPager;
.source "DViewPager.java"


# instance fields
.field private mEnableSwipeRight:Ljava/lang/Boolean;

.field private mLastX:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 13
    invoke-direct {p0, p1}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;)V

    .line 10
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lim/doit/pro/ui/component/DViewPager;->mEnableSwipeRight:Ljava/lang/Boolean;

    .line 24
    const/4 v0, 0x0

    iput v0, p0, Lim/doit/pro/ui/component/DViewPager;->mLastX:F

    .line 14
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 10
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lim/doit/pro/ui/component/DViewPager;->mEnableSwipeRight:Ljava/lang/Boolean;

    .line 24
    const/4 v0, 0x0

    iput v0, p0, Lim/doit/pro/ui/component/DViewPager;->mLastX:F

    .line 18
    return-void
.end method


# virtual methods
.method public detectSwipeRight(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 27
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 28
    .local v0, "result":Ljava/lang/Boolean;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 39
    :cond_0
    :goto_0
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Lim/doit/pro/ui/component/DViewPager;->mLastX:F

    .line 40
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    .line 32
    :pswitch_1
    iget v1, p0, Lim/doit/pro/ui/component/DViewPager;->mLastX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 33
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 35
    goto :goto_0

    .line 28
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public enableSwipeRight(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "enable"    # Ljava/lang/Boolean;

    .prologue
    .line 21
    iput-object p1, p0, Lim/doit/pro/ui/component/DViewPager;->mEnableSwipeRight:Ljava/lang/Boolean;

    .line 22
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 53
    iget-object v0, p0, Lim/doit/pro/ui/component/DViewPager;->mEnableSwipeRight:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lim/doit/pro/ui/component/DViewPager;->detectSwipeRight(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    const/4 v0, 0x0

    .line 56
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 45
    iget-object v0, p0, Lim/doit/pro/ui/component/DViewPager;->mEnableSwipeRight:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lim/doit/pro/ui/component/DViewPager;->detectSwipeRight(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    const/4 v0, 0x0

    .line 48
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method
