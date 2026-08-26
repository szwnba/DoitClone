.class public Lme/imid/swipebacklayout/lib/SwipeBackLayout;
.super Landroid/widget/FrameLayout;
.source "SwipeBackLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lme/imid/swipebacklayout/lib/SwipeBackLayout$SwipeListener;,
        Lme/imid/swipebacklayout/lib/SwipeBackLayout$ViewDragCallback;
    }
.end annotation


# static fields
.field private static final DEFAULT_SCRIM_COLOR:I = -0x67000000

.field private static final DEFAULT_SCROLL_THRESHOLD:F = 0.3f

.field public static final EDGE_ALL:I = 0xb

.field public static final EDGE_BOTTOM:I = 0x8

.field public static final EDGE_LEFT:I = 0x1

.field public static final EDGE_RIGHT:I = 0x2

.field private static final MIN_FLING_VELOCITY:I = 0x190

.field private static final OVERSCROLL_DISTANCE:I = 0xa

.field public static final STATE_DRAGGING:I = 0x1

.field public static final STATE_IDLE:I = 0x0

.field public static final STATE_SETTLING:I = 0x2


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mContentLeft:I

.field private mContentTop:I

.field private mContentView:Landroid/view/View;

.field private mDragHelper:Lme/imid/swipebacklayout/lib/ViewDragHelper;

.field private mEdgeFlag:I

.field private mEnable:Z

.field private mInLayout:Z

.field private mScrimColor:I

.field private mScrimOpacity:F

.field private mScrollPercent:F

.field private mScrollThreshold:F

.field private mShadowBottom:Landroid/graphics/drawable/Drawable;

.field private mShadowLeft:Landroid/graphics/drawable/Drawable;

.field private mShadowRight:Landroid/graphics/drawable/Drawable;

.field private mSwipeListener:Lme/imid/swipebacklayout/lib/SwipeBackLayout$SwipeListener;

.field private mTmpRect:Landroid/graphics/Rect;

.field private mTrackingEdge:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 115
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lme/imid/swipebacklayout/lib/SwipeBackLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 116
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 119
    const v0, 0x7f01014f

    invoke-direct {p0, p1, p2, v0}, Lme/imid/swipebacklayout/lib/SwipeBackLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 120
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v4, 0x1

    .line 123
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 77
    const v2, 0x3e99999a    # 0.3f

    iput v2, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->mScrollThreshold:F

    .line 81
    iput-boolean v4, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->mEnable:Z

    .line 103
    const/high16 v2, -0x67000000

    iput v2, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->mScrimColor:I

    .line 107
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->mTmpRect:Landroid/graphics/Rect;

    .line 124
    invoke-virtual {p0}, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v0, v2, Landroid/util/DisplayMetrics;->density:F

    .line 125
    .local v0, "density":F
    const/high16 v2, 0x43c80000    # 400.0f

    mul-float v1, v2, v0

    .line 127
    .local v1, "minVel":F
    new-instance v2, Lme/imid/swipebacklayout/lib/SwipeBackLayout$ViewDragCallback;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lme/imid/swipebacklayout/lib/SwipeBackLayout$ViewDragCallback;-><init>(Lme/imid/swipebacklayout/lib/SwipeBackLayout;Lme/imid/swipebacklayout/lib/SwipeBackLayout$ViewDragCallback;)V

    invoke-static {p0, v2}, Lme/imid/swipebacklayout/lib/ViewDragHelper;->create(Landroid/view/ViewGroup;Lme/imid/swipebacklayout/lib/ViewDragHelper$Callback;)Lme/imid/swipebacklayout/lib/ViewDragHelper;

    move-result-object v2

    iput-object v2, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->mDragHelper:Lme/imid/swipebacklayout/lib/ViewDragHelper;

    .line 128
    iget-object v2, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->mDragHelper:Lme/imid/swipebacklayout/lib/ViewDragHelper;

    invoke-virtual {v2, v1}, Lme/imid/swipebacklayout/lib/ViewDragHelper;->setMinVelocity(F)V

    .line 129
    invoke-virtual {p0, v4}, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->setEdgeTrackingEnabled(I)V

    .line 131
    const v2, 0x7f02016b

    invoke-virtual {p0, v2, v4}, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->setShadow(II)V

    .line 132
    const v2, 0x7f02016c

    const/4 v3, 0x2

    invoke-virtual {p0, v2, v3}, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->setShadow(II)V

    .line 133
    const v2, 0x7f02016a

    const/16 v3, 0x8

    invoke-virtual {p0, v2, v3}, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->setShadow(II)V

    .line 134
    return-void
.end method

.method static synthetic access$0(Lme/imid/swipebacklayout/lib/SwipeBackLayout;)Lme/imid/swipebacklayout/lib/ViewDragHelper;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->mDragHelper:Lme/imid/swipebacklayout/lib/ViewDragHelper;

    return-object v0
.end method

.method static synthetic access$1(Lme/imid/swipebacklayout/lib/SwipeBackLayout;)I
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->mEdgeFlag:I

    return v0
.end method

.method static synthetic access$10(Lme/imid/swipebacklayout/lib/SwipeBackLayout;I)V
    .locals 0

    .prologue
    .line 91
    iput p1, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->mContentTop:I

    return-void
.end method

.method static synthetic access$11(Lme/imid/swipebacklayout/lib/SwipeBackLayout;)F
    .locals 1

    .prologue
    .line 87
    iget v0, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->mScrollPercent:F

    return v0
.end method

.method static synthetic access$12(Lme/imid/swipebacklayout/lib/SwipeBackLayout;)F
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->mScrollThreshold:F

    return v0
.end method

.method static synthetic access$13(Lme/imid/swipebacklayout/lib/SwipeBackLayout;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$14(Lme/imid/swipebacklayout/lib/SwipeBackLayout;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->mShadowLeft:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$2(Lme/imid/swipebacklayout/lib/SwipeBackLayout;I)V
    .locals 0

    .prologue
    .line 112
    iput p1, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->mTrackingEdge:I

    return-void
.end method

.method static synthetic access$3(Lme/imid/swipebacklayout/lib/SwipeBackLayout;)Lme/imid/swipebacklayout/lib/SwipeBackLayout$SwipeListener;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->mSwipeListener:Lme/imid/swipebacklayout/lib/SwipeBackLayout$SwipeListener;

    return-object v0
.end method

.method static synthetic access$4(Lme/imid/swipebacklayout/lib/SwipeBackLayout;)I
    .locals 1

    .prologue
    .line 112
    iget v0, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->mTrackingEdge:I

    return v0
.end method

.method static synthetic access$5(Lme/imid/swipebacklayout/lib/SwipeBackLayout;)Landroid/view/View;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$6(Lme/imid/swipebacklayout/lib/SwipeBackLayout;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->mShadowRight:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$7(Lme/imid/swipebacklayout/lib/SwipeBackLayout;F)V
    .locals 0

    .prologue
    .line 87
    iput p1, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->mScrollPercent:F

    return-void
.end method

.method static synthetic access$8(Lme/imid/swipebacklayout/lib/SwipeBackLayout;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->mShadowBottom:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$9(Lme/imid/swipebacklayout/lib/SwipeBackLayout;I)V
    .locals 0

    .prologue
    .line 89
    iput p1, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->mContentLeft:I

    return-void
.end method

.method private drawScrim(Landroid/graphics/Canvas;Landroid/view/View;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "child"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x0

    .line 344
    iget v3, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->mScrimColor:I

    const/high16 v4, -0x1000000

    and-int/2addr v3, v4

    ushr-int/lit8 v1, v3, 0x18

    .line 345
    .local v1, "baseAlpha":I
    int-to-float v3, v1

    iget v4, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->mScrimOpacity:F

    mul-float/2addr v3, v4

    float-to-int v0, v3

    .line 346
    .local v0, "alpha":I
    shl-int/lit8 v3, v0, 0x18

    iget v4, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->mScrimColor:I

    const v5, 0xffffff

    and-int/2addr v4, v5

    or-int v2, v3, v4

    .line 348
    .local v2, "color":I
    iget v3, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->mTrackingEdge:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_1

    .line 349
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {p0}, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->getHeight()I

    move-result v4

    invoke-virtual {p1, v6, v6, v3, v4}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 355
    :cond_0
    :goto_0
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 356
    return-void

    .line 350
    :cond_1
    iget v3, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->mTrackingEdge:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_2

    .line 351
    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-virtual {p0}, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->getRight()I

    move-result v4

    invoke-virtual {p0}, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->getHeight()I

    move-result v5

    invoke-virtual {p1, v3, v6, v4, v5}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    goto :goto_0

    .line 352
    :cond_2
    iget v3, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->mTrackingEdge:I

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_0

    .line 353
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v4

    invoke-virtual {p0}, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->getRight()I

    move-result v5

    invoke-virtual {p0}, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->getHeight()I

    move-result v6

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    goto :goto_0
.end method

.method private drawShadow(Landroid/graphics/Canvas;Landroid/view/View;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "child"    # Landroid/view/View;

    .prologue
    .line 359
    iget-object v0, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->mTmpRect:Landroid/graphics/Rect;

    .line 360
    .local v0, "childRect":Landroid/graphics/Rect;
    invoke-virtual {p2, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 362
    iget v1, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->mEdgeFlag:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 363
    iget-object v1, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->mShadowLeft:Landroid/graphics/drawable/Drawable;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->mShadowLeft:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, v0, Landroid/graphics/Rect;->top:I

    .line 364
    iget v4, v0, Landroid/graphics/Rect;->left:I

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    .line 363
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 365
    iget-object v1, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->mShadowLeft:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 368
    :cond_0
    iget v1, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->mEdgeFlag:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 369
    iget-object v1, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->mShadowRight:Landroid/graphics/drawable/Drawable;

    iget v2, v0, Landroid/graphics/Rect;->right:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    .line 370
    iget v4, v0, Landroid/graphics/Rect;->right:I

    iget-object v5, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->mShadowRight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    add-int/2addr v4, v5

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    .line 369
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 371
    iget-object v1, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->mShadowRight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 374
    :cond_1
    iget v1, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->mEdgeFlag:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_2

    .line 375
    iget-object v1, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->mShadowBottom:Landroid/graphics/drawable/Drawable;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    iget v4, v0, Landroid/graphics/Rect;->right:I

    .line 376
    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v6, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->mShadowBottom:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    add-int/2addr v5, v6

    .line 375
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 377
    iget-object v1, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->mShadowBottom:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 379
    :cond_2
    return-void
.end method

.method private setContentView(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 142
    iput-object p1, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->mContentView:Landroid/view/View;

    .line 143
    return-void
.end method


# virtual methods
.method public attachToActivity(Landroid/app/Activity;)V
    .locals 8
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v7, 0x0

    .line 382
    iput-object p1, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->mActivity:Landroid/app/Activity;

    .line 383
    invoke-virtual {p1}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [I

    .line 384
    const v6, 0x1010054

    aput v6, v5, v7

    .line 383
    invoke-virtual {v4, v5}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 386
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v7, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 387
    .local v1, "background":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 389
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 390
    .local v2, "decor":Landroid/view/ViewGroup;
    invoke-virtual {v2, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 391
    .local v3, "decorChild":Landroid/view/ViewGroup;
    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 392
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 393
    invoke-virtual {p0, v3}, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->addView(Landroid/view/View;)V

    .line 394
    invoke-direct {p0, v3}, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->setContentView(Landroid/view/View;)V

    .line 395
    invoke-virtual {v2, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 396
    return-void
.end method

.method public computeScroll()V
    .locals 2

    .prologue
    .line 400
    const/high16 v0, 0x3f800000    # 1.0f

    iget v1, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->mScrollPercent:F

    sub-float/2addr v0, v1

    iput v0, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->mScrimOpacity:F

    .line 401
    iget-object v0, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->mDragHelper:Lme/imid/swipebacklayout/lib/ViewDragHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lme/imid/swipebacklayout/lib/ViewDragHelper;->continueSettling(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 402
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 404
    :cond_0
    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "drawingTime"    # J

    .prologue
    .line 332
    iget-object v2, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->mContentView:Landroid/view/View;

    if-ne p2, v2, :cond_1

    const/4 v0, 0x1

    .line 333
    .local v0, "drawContent":Z
    :goto_0
    invoke-direct {p0, p1, p2}, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->drawShadow(Landroid/graphics/Canvas;Landroid/view/View;)V

    .line 335
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v1

    .line 336
    .local v1, "ret":Z
    iget v2, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->mScrimOpacity:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    if-eqz v0, :cond_0

    .line 337
    iget-object v2, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->mDragHelper:Lme/imid/swipebacklayout/lib/ViewDragHelper;

    invoke-virtual {v2}, Lme/imid/swipebacklayout/lib/ViewDragHelper;->getViewDragState()I

    move-result v2

    if-eqz v2, :cond_0

    .line 338
    invoke-direct {p0, p1, p2}, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->drawScrim(Landroid/graphics/Canvas;Landroid/view/View;)V

    .line 340
    :cond_0
    return v1

    .line 332
    .end local v0    # "drawContent":Z
    .end local v1    # "ret":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 299
    iget-boolean v0, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->mEnable:Z

    if-nez v0, :cond_0

    .line 300
    const/4 v0, 0x0

    .line 302
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->mDragHelper:Lme/imid/swipebacklayout/lib/ViewDragHelper;

    invoke-virtual {v0, p1}, Lme/imid/swipebacklayout/lib/ViewDragHelper;->shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 6
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 316
    const/4 v0, 0x1

    iput-boolean v0, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->mInLayout:Z

    .line 317
    iget-object v0, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->mContentView:Landroid/view/View;

    iget v1, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->mContentLeft:I

    iget v2, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->mContentTop:I

    .line 318
    iget v3, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->mContentLeft:I

    iget-object v4, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->mContentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v3, v4

    .line 319
    iget v4, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->mContentTop:I

    iget-object v5, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->mContentView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v4, v5

    .line 317
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 320
    const/4 v0, 0x0

    iput-boolean v0, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->mInLayout:Z

    .line 321
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 307
    iget-boolean v0, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->mEnable:Z

    if-nez v0, :cond_0

    .line 308
    const/4 v0, 0x0

    .line 311
    :goto_0
    return v0

    .line 310
    :cond_0
    iget-object v0, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->mDragHelper:Lme/imid/swipebacklayout/lib/ViewDragHelper;

    invoke-virtual {v0, p1}, Lme/imid/swipebacklayout/lib/ViewDragHelper;->processTouchEvent(Landroid/view/MotionEvent;)V

    .line 311
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 325
    iget-boolean v0, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->mInLayout:Z

    if-nez v0, :cond_0

    .line 326
    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 328
    :cond_0
    return-void
.end method

.method public scrollToFinishActivity()V
    .locals 6

    .prologue
    .line 278
    iget-object v4, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->mContentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 279
    .local v1, "childWidth":I
    iget-object v4, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->mContentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 281
    .local v0, "childHeight":I
    const/4 v2, 0x0

    .local v2, "left":I
    const/4 v3, 0x0

    .line 282
    .local v3, "top":I
    iget v4, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->mEdgeFlag:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_1

    .line 283
    iget-object v4, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->mShadowLeft:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    add-int/2addr v4, v1

    add-int/lit8 v2, v4, 0xa

    .line 284
    const/4 v4, 0x1

    iput v4, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->mTrackingEdge:I

    .line 293
    :cond_0
    :goto_0
    iget-object v4, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->mDragHelper:Lme/imid/swipebacklayout/lib/ViewDragHelper;

    iget-object v5, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->mContentView:Landroid/view/View;

    invoke-virtual {v4, v5, v2, v3}, Lme/imid/swipebacklayout/lib/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    .line 294
    invoke-virtual {p0}, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->invalidate()V

    .line 295
    return-void

    .line 285
    :cond_1
    iget v4, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->mEdgeFlag:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_2

    .line 286
    neg-int v4, v1

    iget-object v5, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->mShadowRight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    sub-int/2addr v4, v5

    add-int/lit8 v2, v4, -0xa

    .line 287
    const/4 v4, 0x2

    iput v4, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->mTrackingEdge:I

    goto :goto_0

    .line 288
    :cond_2
    iget v4, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->mEdgeFlag:I

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_0

    .line 289
    neg-int v4, v0

    iget-object v5, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->mShadowBottom:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    sub-int/2addr v4, v5

    add-int/lit8 v3, v4, -0xa

    .line 290
    const/16 v4, 0x8

    iput v4, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->mTrackingEdge:I

    goto :goto_0
.end method

.method public setEdgeSize(I)V
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 187
    iget-object v0, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->mDragHelper:Lme/imid/swipebacklayout/lib/ViewDragHelper;

    invoke-virtual {v0, p1}, Lme/imid/swipebacklayout/lib/ViewDragHelper;->setEdgeSize(I)V

    .line 188
    return-void
.end method

.method public setEdgeTrackingEnabled(I)V
    .locals 2
    .param p1, "edgeFlags"    # I

    .prologue
    .line 164
    iput p1, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->mEdgeFlag:I

    .line 165
    iget-object v0, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->mDragHelper:Lme/imid/swipebacklayout/lib/ViewDragHelper;

    iget v1, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->mEdgeFlag:I

    invoke-virtual {v0, v1}, Lme/imid/swipebacklayout/lib/ViewDragHelper;->setEdgeTrackingEnabled(I)V

    .line 166
    return-void
.end method

.method public setEnableGesture(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 146
    iput-boolean p1, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->mEnable:Z

    .line 147
    return-void
.end method

.method public setScrimColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 175
    iput p1, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->mScrimColor:I

    .line 176
    invoke-virtual {p0}, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->invalidate()V

    .line 177
    return-void
.end method

.method public setScrollThresHold(F)V
    .locals 2
    .param p1, "threshold"    # F

    .prologue
    .line 235
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-gez v0, :cond_0

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_1

    .line 236
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Threshold value should be between 0 and 1.0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 238
    :cond_1
    iput p1, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->mScrollThreshold:F

    .line 239
    return-void
.end method

.method public setShadow(II)V
    .locals 1
    .param p1, "resId"    # I
    .param p2, "edgeFlag"    # I

    .prologue
    .line 271
    invoke-virtual {p0}, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->setShadow(Landroid/graphics/drawable/Drawable;I)V

    .line 272
    return-void
.end method

.method public setShadow(Landroid/graphics/drawable/Drawable;I)V
    .locals 1
    .param p1, "shadow"    # Landroid/graphics/drawable/Drawable;
    .param p2, "edgeFlag"    # I

    .prologue
    .line 251
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_1

    .line 252
    iput-object p1, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->mShadowLeft:Landroid/graphics/drawable/Drawable;

    .line 258
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->invalidate()V

    .line 259
    return-void

    .line 253
    :cond_1
    and-int/lit8 v0, p2, 0x2

    if-eqz v0, :cond_2

    .line 254
    iput-object p1, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->mShadowRight:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 255
    :cond_2
    and-int/lit8 v0, p2, 0x8

    if-eqz v0, :cond_0

    .line 256
    iput-object p1, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->mShadowBottom:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public setSwipeListener(Lme/imid/swipebacklayout/lib/SwipeBackLayout$SwipeListener;)V
    .locals 0
    .param p1, "listener"    # Lme/imid/swipebacklayout/lib/SwipeBackLayout$SwipeListener;

    .prologue
    .line 197
    iput-object p1, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->mSwipeListener:Lme/imid/swipebacklayout/lib/SwipeBackLayout$SwipeListener;

    .line 198
    return-void
.end method
