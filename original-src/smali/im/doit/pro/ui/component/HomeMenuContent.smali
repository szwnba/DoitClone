.class public Lim/doit/pro/ui/component/HomeMenuContent;
.super Landroid/widget/FrameLayout;
.source "HomeMenuContent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lim/doit/pro/ui/component/HomeMenuContent$SwipeListener;
    }
.end annotation


# instance fields
.field private lastMotionX:I

.field private lastMotionY:I

.field private mDetector:Landroid/view/GestureDetector;

.field private mOnSwipeListener:Lim/doit/pro/activity/listener/OnSwipeRightListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lim/doit/pro/ui/component/HomeMenuContent;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 30
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lim/doit/pro/ui/component/HomeMenuContent;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    invoke-direct {p0, p1}, Lim/doit/pro/ui/component/HomeMenuContent;->init(Landroid/content/Context;)V

    .line 36
    return-void
.end method

.method static synthetic access$0(Lim/doit/pro/ui/component/HomeMenuContent;)I
    .locals 1

    .prologue
    .line 16
    iget v0, p0, Lim/doit/pro/ui/component/HomeMenuContent;->lastMotionX:I

    return v0
.end method

.method static synthetic access$1(Lim/doit/pro/ui/component/HomeMenuContent;)I
    .locals 1

    .prologue
    .line 17
    iget v0, p0, Lim/doit/pro/ui/component/HomeMenuContent;->lastMotionY:I

    return v0
.end method

.method static synthetic access$2(Lim/doit/pro/ui/component/HomeMenuContent;)Lim/doit/pro/activity/listener/OnSwipeRightListener;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lim/doit/pro/ui/component/HomeMenuContent;->mOnSwipeListener:Lim/doit/pro/activity/listener/OnSwipeRightListener;

    return-object v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    new-instance v0, Lim/doit/pro/ui/component/HomeMenuContent$SwipeListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lim/doit/pro/ui/component/HomeMenuContent$SwipeListener;-><init>(Lim/doit/pro/ui/component/HomeMenuContent;Lim/doit/pro/ui/component/HomeMenuContent$SwipeListener;)V

    .line 40
    .local v0, "swipeListener":Lim/doit/pro/activity/listener/HorizontalSwipeListener;
    new-instance v1, Lim/doit/pro/ui/component/HomeMenuContent$1;

    invoke-direct {v1, p0}, Lim/doit/pro/ui/component/HomeMenuContent$1;-><init>(Lim/doit/pro/ui/component/HomeMenuContent;)V

    invoke-virtual {v0, v1}, Lim/doit/pro/activity/listener/HorizontalSwipeListener;->setOnSwipeRightListener(Lim/doit/pro/activity/listener/OnSwipeRightListener;)V

    .line 49
    new-instance v1, Landroid/view/GestureDetector;

    invoke-direct {v1, p1, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Lim/doit/pro/ui/component/HomeMenuContent;->mDetector:Landroid/view/GestureDetector;

    .line 50
    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v7, 0x1

    .line 54
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 55
    .local v0, "action":I
    if-nez v0, :cond_0

    .line 56
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    float-to-int v8, v8

    iput v8, p0, Lim/doit/pro/ui/component/HomeMenuContent;->lastMotionX:I

    .line 57
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    float-to-int v8, v8

    iput v8, p0, Lim/doit/pro/ui/component/HomeMenuContent;->lastMotionY:I

    .line 60
    :cond_0
    invoke-virtual {p0}, Lim/doit/pro/ui/component/HomeMenuContent;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v8

    .line 61
    invoke-virtual {v8}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v4

    .line 62
    .local v4, "scaledTouchSlop":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    float-to-int v5, v8

    .line 63
    .local v5, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    float-to-int v6, v8

    .line 64
    .local v6, "y":I
    iget v8, p0, Lim/doit/pro/ui/component/HomeMenuContent;->lastMotionX:I

    sub-int v8, v5, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 65
    .local v1, "diffX":I
    iget v8, p0, Lim/doit/pro/ui/component/HomeMenuContent;->lastMotionY:I

    sub-int v8, v6, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 66
    .local v2, "diffY":I
    if-le v1, v4, :cond_1

    if-le v1, v2, :cond_1

    move v3, v7

    .line 69
    .local v3, "isSwipingSideways":Z
    :goto_0
    const/4 v8, 0x2

    if-ne v0, v8, :cond_2

    if-eqz v3, :cond_2

    .line 73
    :goto_1
    return v7

    .line 66
    .end local v3    # "isSwipingSideways":Z
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 73
    .restart local v3    # "isSwipingSideways":Z
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v7

    goto :goto_1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 78
    iget-object v0, p0, Lim/doit/pro/ui/component/HomeMenuContent;->mDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setOnSwipeRightListener(Lim/doit/pro/activity/listener/OnSwipeRightListener;)V
    .locals 0
    .param p1, "listener"    # Lim/doit/pro/activity/listener/OnSwipeRightListener;

    .prologue
    .line 22
    iput-object p1, p0, Lim/doit/pro/ui/component/HomeMenuContent;->mOnSwipeListener:Lim/doit/pro/activity/listener/OnSwipeRightListener;

    .line 23
    return-void
.end method
