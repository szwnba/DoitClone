.class public abstract Lim/doit/pro/activity/listener/HorizontalSwipeListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "HorizontalSwipeListener.java"


# instance fields
.field private final SWIPE_MIN_DISTANCE:I

.field private final SWIPE_THRESHOLD_VELOCITY:I

.field protected mLastOnDownEvent:Landroid/view/MotionEvent;

.field private mOnSwipeLeftListener:Lim/doit/pro/activity/listener/OnSwipeLeftListener;

.field private mOnSwipeRightListener:Lim/doit/pro/activity/listener/OnSwipeRightListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 9
    const/4 v0, 0x0

    iput-object v0, p0, Lim/doit/pro/activity/listener/HorizontalSwipeListener;->mLastOnDownEvent:Landroid/view/MotionEvent;

    .line 11
    const/16 v0, 0x78

    iput v0, p0, Lim/doit/pro/activity/listener/HorizontalSwipeListener;->SWIPE_MIN_DISTANCE:I

    .line 12
    const/16 v0, 0xc8

    iput v0, p0, Lim/doit/pro/activity/listener/HorizontalSwipeListener;->SWIPE_THRESHOLD_VELOCITY:I

    .line 6
    return-void
.end method


# virtual methods
.method public abstract getLastMotionX()I
.end method

.method public abstract getLastMotionY()I
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 30
    iput-object p1, p0, Lim/doit/pro/activity/listener/HorizontalSwipeListener;->mLastOnDownEvent:Landroid/view/MotionEvent;

    .line 31
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onDown(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 5
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    const/4 v1, 0x1

    const/high16 v4, 0x42f00000    # 120.0f

    .line 43
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v3, 0x43480000    # 200.0f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    .line 44
    invoke-virtual {p0}, Lim/doit/pro/activity/listener/HorizontalSwipeListener;->getLastMotionX()I

    move-result v0

    .line 45
    .local v0, "lastX":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    int-to-float v3, v0

    sub-float/2addr v2, v3

    cmpl-float v2, v2, v4

    if-lez v2, :cond_0

    .line 47
    iget-object v2, p0, Lim/doit/pro/activity/listener/HorizontalSwipeListener;->mOnSwipeRightListener:Lim/doit/pro/activity/listener/OnSwipeRightListener;

    if-eqz v2, :cond_1

    .line 48
    iget-object v2, p0, Lim/doit/pro/activity/listener/HorizontalSwipeListener;->mOnSwipeRightListener:Lim/doit/pro/activity/listener/OnSwipeRightListener;

    invoke-interface {v2}, Lim/doit/pro/activity/listener/OnSwipeRightListener;->onSwipeRight()V

    .line 60
    .end local v0    # "lastX":I
    :goto_0
    return v1

    .line 51
    .restart local v0    # "lastX":I
    :cond_0
    int-to-float v2, v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    sub-float/2addr v2, v3

    cmpl-float v2, v2, v4

    if-lez v2, :cond_1

    .line 53
    iget-object v2, p0, Lim/doit/pro/activity/listener/HorizontalSwipeListener;->mOnSwipeLeftListener:Lim/doit/pro/activity/listener/OnSwipeLeftListener;

    if-eqz v2, :cond_1

    .line 54
    iget-object v2, p0, Lim/doit/pro/activity/listener/HorizontalSwipeListener;->mOnSwipeLeftListener:Lim/doit/pro/activity/listener/OnSwipeLeftListener;

    invoke-interface {v2}, Lim/doit/pro/activity/listener/OnSwipeLeftListener;->onSwipeLeft()V

    goto :goto_0

    .line 60
    .end local v0    # "lastX":I
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    .line 37
    const/4 v0, 0x1

    return v0
.end method

.method public setOnSwipeLeftListener(Lim/doit/pro/activity/listener/OnSwipeLeftListener;)V
    .locals 0
    .param p1, "listener"    # Lim/doit/pro/activity/listener/OnSwipeLeftListener;

    .prologue
    .line 21
    iput-object p1, p0, Lim/doit/pro/activity/listener/HorizontalSwipeListener;->mOnSwipeLeftListener:Lim/doit/pro/activity/listener/OnSwipeLeftListener;

    .line 22
    return-void
.end method

.method public setOnSwipeRightListener(Lim/doit/pro/activity/listener/OnSwipeRightListener;)V
    .locals 0
    .param p1, "listener"    # Lim/doit/pro/activity/listener/OnSwipeRightListener;

    .prologue
    .line 25
    iput-object p1, p0, Lim/doit/pro/activity/listener/HorizontalSwipeListener;->mOnSwipeRightListener:Lim/doit/pro/activity/listener/OnSwipeRightListener;

    .line 26
    return-void
.end method
