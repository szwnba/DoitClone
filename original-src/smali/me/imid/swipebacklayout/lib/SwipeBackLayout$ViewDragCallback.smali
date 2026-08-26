.class Lme/imid/swipebacklayout/lib/SwipeBackLayout$ViewDragCallback;
.super Lme/imid/swipebacklayout/lib/ViewDragHelper$Callback;
.source "SwipeBackLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/imid/swipebacklayout/lib/SwipeBackLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewDragCallback"
.end annotation


# instance fields
.field private mIsScrollOverValid:Z

.field final synthetic this$0:Lme/imid/swipebacklayout/lib/SwipeBackLayout;


# direct methods
.method private constructor <init>(Lme/imid/swipebacklayout/lib/SwipeBackLayout;)V
    .locals 0

    .prologue
    .line 406
    iput-object p1, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout$ViewDragCallback;->this$0:Lme/imid/swipebacklayout/lib/SwipeBackLayout;

    invoke-direct {p0}, Lme/imid/swipebacklayout/lib/ViewDragHelper$Callback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lme/imid/swipebacklayout/lib/SwipeBackLayout;Lme/imid/swipebacklayout/lib/SwipeBackLayout$ViewDragCallback;)V
    .locals 0

    .prologue
    .line 406
    invoke-direct {p0, p1}, Lme/imid/swipebacklayout/lib/SwipeBackLayout$ViewDragCallback;-><init>(Lme/imid/swipebacklayout/lib/SwipeBackLayout;)V

    return-void
.end method


# virtual methods
.method public clampViewPositionHorizontal(Landroid/view/View;II)I
    .locals 3
    .param p1, "child"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "dx"    # I

    .prologue
    const/4 v2, 0x0

    .line 488
    const/4 v0, 0x0

    .line 489
    .local v0, "ret":I
    iget-object v1, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout$ViewDragCallback;->this$0:Lme/imid/swipebacklayout/lib/SwipeBackLayout;

    invoke-static {v1}, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->access$4(Lme/imid/swipebacklayout/lib/SwipeBackLayout;)I

    move-result v1

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    .line 490
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-static {p2, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 494
    :cond_0
    :goto_0
    return v0

    .line 491
    :cond_1
    iget-object v1, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout$ViewDragCallback;->this$0:Lme/imid/swipebacklayout/lib/SwipeBackLayout;

    invoke-static {v1}, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->access$4(Lme/imid/swipebacklayout/lib/SwipeBackLayout;)I

    move-result v1

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    .line 492
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    neg-int v1, v1

    invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0
.end method

.method public clampViewPositionVertical(Landroid/view/View;II)I
    .locals 3
    .param p1, "child"    # Landroid/view/View;
    .param p2, "top"    # I
    .param p3, "dy"    # I

    .prologue
    .line 499
    const/4 v0, 0x0

    .line 500
    .local v0, "ret":I
    iget-object v1, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout$ViewDragCallback;->this$0:Lme/imid/swipebacklayout/lib/SwipeBackLayout;

    invoke-static {v1}, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->access$4(Lme/imid/swipebacklayout/lib/SwipeBackLayout;)I

    move-result v1

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_0

    .line 501
    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    neg-int v2, v2

    invoke-static {p2, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 503
    :cond_0
    return v0
.end method

.method public getViewHorizontalDragRange(Landroid/view/View;)I
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 430
    const/4 v0, 0x1

    return v0
.end method

.method public getViewVerticalDragRange(Landroid/view/View;)I
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 435
    const/4 v0, 0x1

    return v0
.end method

.method public onViewDragStateChanged(I)V
    .locals 4
    .param p1, "state"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x2

    .line 508
    invoke-super {p0, p1}, Lme/imid/swipebacklayout/lib/ViewDragHelper$Callback;->onViewDragStateChanged(I)V

    .line 509
    iget-object v0, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout$ViewDragCallback;->this$0:Lme/imid/swipebacklayout/lib/SwipeBackLayout;

    invoke-static {v0}, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->access$3(Lme/imid/swipebacklayout/lib/SwipeBackLayout;)Lme/imid/swipebacklayout/lib/SwipeBackLayout$SwipeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 510
    iget-object v0, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout$ViewDragCallback;->this$0:Lme/imid/swipebacklayout/lib/SwipeBackLayout;

    invoke-static {v0}, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->access$3(Lme/imid/swipebacklayout/lib/SwipeBackLayout;)Lme/imid/swipebacklayout/lib/SwipeBackLayout$SwipeListener;

    move-result-object v0

    iget-object v1, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout$ViewDragCallback;->this$0:Lme/imid/swipebacklayout/lib/SwipeBackLayout;

    invoke-static {v1}, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->access$11(Lme/imid/swipebacklayout/lib/SwipeBackLayout;)F

    move-result v1

    invoke-interface {v0, p1, v1}, Lme/imid/swipebacklayout/lib/SwipeBackLayout$SwipeListener;->onScrollStateChange(IF)V

    .line 512
    :cond_0
    if-nez p1, :cond_2

    .line 513
    iget-object v0, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout$ViewDragCallback;->this$0:Lme/imid/swipebacklayout/lib/SwipeBackLayout;

    const/4 v1, 0x0

    invoke-static {v0, v1, v3}, Landroid/support/v4/view/ViewCompat;->setLayerType(Landroid/view/View;ILandroid/graphics/Paint;)V

    .line 517
    :cond_1
    :goto_0
    return-void

    .line 514
    :cond_2
    if-ne p1, v2, :cond_1

    .line 515
    iget-object v0, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout$ViewDragCallback;->this$0:Lme/imid/swipebacklayout/lib/SwipeBackLayout;

    invoke-static {v0, v2, v3}, Landroid/support/v4/view/ViewCompat;->setLayerType(Landroid/view/View;ILandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public onViewPositionChanged(Landroid/view/View;IIII)V
    .locals 5
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "dx"    # I
    .param p5, "dy"    # I

    .prologue
    const/4 v4, 0x1

    .line 440
    invoke-super/range {p0 .. p5}, Lme/imid/swipebacklayout/lib/ViewDragHelper$Callback;->onViewPositionChanged(Landroid/view/View;IIII)V

    .line 441
    iget-object v0, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout$ViewDragCallback;->this$0:Lme/imid/swipebacklayout/lib/SwipeBackLayout;

    invoke-static {v0}, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->access$4(Lme/imid/swipebacklayout/lib/SwipeBackLayout;)I

    move-result v0

    and-int/lit8 v0, v0, 0x3

    if-eqz v0, :cond_4

    .line 442
    iget-object v0, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout$ViewDragCallback;->this$0:Lme/imid/swipebacklayout/lib/SwipeBackLayout;

    int-to-float v1, p2

    .line 443
    iget-object v2, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout$ViewDragCallback;->this$0:Lme/imid/swipebacklayout/lib/SwipeBackLayout;

    invoke-static {v2}, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->access$5(Lme/imid/swipebacklayout/lib/SwipeBackLayout;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    iget-object v3, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout$ViewDragCallback;->this$0:Lme/imid/swipebacklayout/lib/SwipeBackLayout;

    invoke-static {v3}, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->access$6(Lme/imid/swipebacklayout/lib/SwipeBackLayout;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 442
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {v0, v1}, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->access$7(Lme/imid/swipebacklayout/lib/SwipeBackLayout;F)V

    .line 448
    :cond_0
    :goto_0
    iget-object v0, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout$ViewDragCallback;->this$0:Lme/imid/swipebacklayout/lib/SwipeBackLayout;

    invoke-static {v0, p2}, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->access$9(Lme/imid/swipebacklayout/lib/SwipeBackLayout;I)V

    .line 449
    iget-object v0, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout$ViewDragCallback;->this$0:Lme/imid/swipebacklayout/lib/SwipeBackLayout;

    invoke-static {v0, p3}, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->access$10(Lme/imid/swipebacklayout/lib/SwipeBackLayout;I)V

    .line 450
    iget-object v0, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout$ViewDragCallback;->this$0:Lme/imid/swipebacklayout/lib/SwipeBackLayout;

    invoke-virtual {v0}, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->invalidate()V

    .line 451
    iget-object v0, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout$ViewDragCallback;->this$0:Lme/imid/swipebacklayout/lib/SwipeBackLayout;

    invoke-static {v0}, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->access$11(Lme/imid/swipebacklayout/lib/SwipeBackLayout;)F

    move-result v0

    iget-object v1, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout$ViewDragCallback;->this$0:Lme/imid/swipebacklayout/lib/SwipeBackLayout;

    invoke-static {v1}, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->access$12(Lme/imid/swipebacklayout/lib/SwipeBackLayout;)F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    iget-boolean v0, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout$ViewDragCallback;->mIsScrollOverValid:Z

    if-nez v0, :cond_1

    .line 452
    iput-boolean v4, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout$ViewDragCallback;->mIsScrollOverValid:Z

    .line 454
    :cond_1
    iget-object v0, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout$ViewDragCallback;->this$0:Lme/imid/swipebacklayout/lib/SwipeBackLayout;

    invoke-static {v0}, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->access$3(Lme/imid/swipebacklayout/lib/SwipeBackLayout;)Lme/imid/swipebacklayout/lib/SwipeBackLayout$SwipeListener;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout$ViewDragCallback;->this$0:Lme/imid/swipebacklayout/lib/SwipeBackLayout;

    invoke-static {v0}, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->access$0(Lme/imid/swipebacklayout/lib/SwipeBackLayout;)Lme/imid/swipebacklayout/lib/ViewDragHelper;

    move-result-object v0

    invoke-virtual {v0}, Lme/imid/swipebacklayout/lib/ViewDragHelper;->getViewDragState()I

    move-result v0

    if-ne v0, v4, :cond_2

    .line 455
    iget-object v0, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout$ViewDragCallback;->this$0:Lme/imid/swipebacklayout/lib/SwipeBackLayout;

    invoke-static {v0}, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->access$11(Lme/imid/swipebacklayout/lib/SwipeBackLayout;)F

    move-result v0

    iget-object v1, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout$ViewDragCallback;->this$0:Lme/imid/swipebacklayout/lib/SwipeBackLayout;

    invoke-static {v1}, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->access$12(Lme/imid/swipebacklayout/lib/SwipeBackLayout;)F

    move-result v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_2

    iget-boolean v0, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout$ViewDragCallback;->mIsScrollOverValid:Z

    if-eqz v0, :cond_2

    .line 456
    const/4 v0, 0x0

    iput-boolean v0, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout$ViewDragCallback;->mIsScrollOverValid:Z

    .line 457
    iget-object v0, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout$ViewDragCallback;->this$0:Lme/imid/swipebacklayout/lib/SwipeBackLayout;

    invoke-static {v0}, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->access$3(Lme/imid/swipebacklayout/lib/SwipeBackLayout;)Lme/imid/swipebacklayout/lib/SwipeBackLayout$SwipeListener;

    move-result-object v0

    invoke-interface {v0}, Lme/imid/swipebacklayout/lib/SwipeBackLayout$SwipeListener;->onScrollOverThreshold()V

    .line 460
    :cond_2
    iget-object v0, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout$ViewDragCallback;->this$0:Lme/imid/swipebacklayout/lib/SwipeBackLayout;

    invoke-static {v0}, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->access$11(Lme/imid/swipebacklayout/lib/SwipeBackLayout;)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_3

    .line 461
    iget-object v0, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout$ViewDragCallback;->this$0:Lme/imid/swipebacklayout/lib/SwipeBackLayout;

    invoke-static {v0}, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->access$13(Lme/imid/swipebacklayout/lib/SwipeBackLayout;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 463
    :cond_3
    return-void

    .line 444
    :cond_4
    iget-object v0, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout$ViewDragCallback;->this$0:Lme/imid/swipebacklayout/lib/SwipeBackLayout;

    invoke-static {v0}, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->access$4(Lme/imid/swipebacklayout/lib/SwipeBackLayout;)I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    .line 445
    iget-object v0, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout$ViewDragCallback;->this$0:Lme/imid/swipebacklayout/lib/SwipeBackLayout;

    int-to-float v1, p3

    .line 446
    iget-object v2, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout$ViewDragCallback;->this$0:Lme/imid/swipebacklayout/lib/SwipeBackLayout;

    invoke-static {v2}, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->access$5(Lme/imid/swipebacklayout/lib/SwipeBackLayout;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    iget-object v3, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout$ViewDragCallback;->this$0:Lme/imid/swipebacklayout/lib/SwipeBackLayout;

    invoke-static {v3}, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->access$8(Lme/imid/swipebacklayout/lib/SwipeBackLayout;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 445
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {v0, v1}, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->access$7(Lme/imid/swipebacklayout/lib/SwipeBackLayout;F)V

    goto/16 :goto_0
.end method

.method public onViewReleased(Landroid/view/View;FF)V
    .locals 7
    .param p1, "releasedChild"    # Landroid/view/View;
    .param p2, "xvel"    # F
    .param p3, "yvel"    # F

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 467
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 468
    .local v1, "childWidth":I
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 470
    .local v0, "childHeight":I
    const/4 v2, 0x0

    .local v2, "left":I
    const/4 v3, 0x0

    .line 471
    .local v3, "top":I
    iget-object v5, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout$ViewDragCallback;->this$0:Lme/imid/swipebacklayout/lib/SwipeBackLayout;

    invoke-static {v5}, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->access$4(Lme/imid/swipebacklayout/lib/SwipeBackLayout;)I

    move-result v5

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_3

    .line 472
    cmpl-float v5, p2, v6

    if-gtz v5, :cond_0

    cmpl-float v5, p2, v6

    if-nez v5, :cond_2

    iget-object v5, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout$ViewDragCallback;->this$0:Lme/imid/swipebacklayout/lib/SwipeBackLayout;

    invoke-static {v5}, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->access$11(Lme/imid/swipebacklayout/lib/SwipeBackLayout;)F

    move-result v5

    iget-object v6, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout$ViewDragCallback;->this$0:Lme/imid/swipebacklayout/lib/SwipeBackLayout;

    invoke-static {v6}, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->access$12(Lme/imid/swipebacklayout/lib/SwipeBackLayout;)F

    move-result v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_2

    .line 473
    :cond_0
    iget-object v4, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout$ViewDragCallback;->this$0:Lme/imid/swipebacklayout/lib/SwipeBackLayout;

    invoke-static {v4}, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->access$14(Lme/imid/swipebacklayout/lib/SwipeBackLayout;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    add-int/2addr v4, v1

    add-int/lit8 v2, v4, 0xa

    .line 482
    :cond_1
    :goto_0
    iget-object v4, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout$ViewDragCallback;->this$0:Lme/imid/swipebacklayout/lib/SwipeBackLayout;

    invoke-static {v4}, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->access$0(Lme/imid/swipebacklayout/lib/SwipeBackLayout;)Lme/imid/swipebacklayout/lib/ViewDragHelper;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Lme/imid/swipebacklayout/lib/ViewDragHelper;->settleCapturedViewAt(II)Z

    .line 483
    iget-object v4, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout$ViewDragCallback;->this$0:Lme/imid/swipebacklayout/lib/SwipeBackLayout;

    invoke-virtual {v4}, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->invalidate()V

    .line 484
    return-void

    :cond_2
    move v2, v4

    .line 473
    goto :goto_0

    .line 474
    :cond_3
    iget-object v5, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout$ViewDragCallback;->this$0:Lme/imid/swipebacklayout/lib/SwipeBackLayout;

    invoke-static {v5}, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->access$4(Lme/imid/swipebacklayout/lib/SwipeBackLayout;)I

    move-result v5

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_6

    .line 475
    cmpg-float v5, p2, v6

    if-ltz v5, :cond_4

    cmpl-float v5, p2, v6

    if-nez v5, :cond_5

    iget-object v5, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout$ViewDragCallback;->this$0:Lme/imid/swipebacklayout/lib/SwipeBackLayout;

    invoke-static {v5}, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->access$11(Lme/imid/swipebacklayout/lib/SwipeBackLayout;)F

    move-result v5

    iget-object v6, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout$ViewDragCallback;->this$0:Lme/imid/swipebacklayout/lib/SwipeBackLayout;

    invoke-static {v6}, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->access$12(Lme/imid/swipebacklayout/lib/SwipeBackLayout;)F

    move-result v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_5

    .line 476
    :cond_4
    iget-object v4, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout$ViewDragCallback;->this$0:Lme/imid/swipebacklayout/lib/SwipeBackLayout;

    invoke-static {v4}, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->access$14(Lme/imid/swipebacklayout/lib/SwipeBackLayout;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    add-int/2addr v4, v1

    add-int/lit8 v4, v4, 0xa

    neg-int v2, v4

    .line 477
    :goto_1
    goto :goto_0

    :cond_5
    move v2, v4

    .line 476
    goto :goto_1

    .line 477
    :cond_6
    iget-object v5, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout$ViewDragCallback;->this$0:Lme/imid/swipebacklayout/lib/SwipeBackLayout;

    invoke-static {v5}, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->access$4(Lme/imid/swipebacklayout/lib/SwipeBackLayout;)I

    move-result v5

    and-int/lit8 v5, v5, 0x8

    if-eqz v5, :cond_1

    .line 478
    cmpg-float v5, p3, v6

    if-ltz v5, :cond_7

    cmpl-float v5, p3, v6

    if-nez v5, :cond_8

    iget-object v5, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout$ViewDragCallback;->this$0:Lme/imid/swipebacklayout/lib/SwipeBackLayout;

    invoke-static {v5}, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->access$11(Lme/imid/swipebacklayout/lib/SwipeBackLayout;)F

    move-result v5

    iget-object v6, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout$ViewDragCallback;->this$0:Lme/imid/swipebacklayout/lib/SwipeBackLayout;

    invoke-static {v6}, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->access$12(Lme/imid/swipebacklayout/lib/SwipeBackLayout;)F

    move-result v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_8

    .line 479
    :cond_7
    iget-object v4, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout$ViewDragCallback;->this$0:Lme/imid/swipebacklayout/lib/SwipeBackLayout;

    invoke-static {v4}, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->access$8(Lme/imid/swipebacklayout/lib/SwipeBackLayout;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    add-int/2addr v4, v0

    add-int/lit8 v4, v4, 0xa

    neg-int v3, v4

    .line 478
    :goto_2
    goto :goto_0

    :cond_8
    move v3, v4

    .line 479
    goto :goto_2
.end method

.method public tryCaptureView(Landroid/view/View;I)Z
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "i"    # I

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 411
    iget-object v1, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout$ViewDragCallback;->this$0:Lme/imid/swipebacklayout/lib/SwipeBackLayout;

    invoke-static {v1}, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->access$0(Lme/imid/swipebacklayout/lib/SwipeBackLayout;)Lme/imid/swipebacklayout/lib/ViewDragHelper;

    move-result-object v1

    iget-object v2, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout$ViewDragCallback;->this$0:Lme/imid/swipebacklayout/lib/SwipeBackLayout;

    invoke-static {v2}, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->access$1(Lme/imid/swipebacklayout/lib/SwipeBackLayout;)I

    move-result v2

    invoke-virtual {v1, v2, p2}, Lme/imid/swipebacklayout/lib/ViewDragHelper;->isEdgeTouched(II)Z

    move-result v0

    .line 412
    .local v0, "ret":Z
    if-eqz v0, :cond_2

    .line 413
    iget-object v1, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout$ViewDragCallback;->this$0:Lme/imid/swipebacklayout/lib/SwipeBackLayout;

    invoke-static {v1}, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->access$0(Lme/imid/swipebacklayout/lib/SwipeBackLayout;)Lme/imid/swipebacklayout/lib/ViewDragHelper;

    move-result-object v1

    invoke-virtual {v1, v3, p2}, Lme/imid/swipebacklayout/lib/ViewDragHelper;->isEdgeTouched(II)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 414
    iget-object v1, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout$ViewDragCallback;->this$0:Lme/imid/swipebacklayout/lib/SwipeBackLayout;

    invoke-static {v1, v3}, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->access$2(Lme/imid/swipebacklayout/lib/SwipeBackLayout;I)V

    .line 420
    :cond_0
    :goto_0
    iget-object v1, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout$ViewDragCallback;->this$0:Lme/imid/swipebacklayout/lib/SwipeBackLayout;

    invoke-static {v1}, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->access$3(Lme/imid/swipebacklayout/lib/SwipeBackLayout;)Lme/imid/swipebacklayout/lib/SwipeBackLayout$SwipeListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 421
    iget-object v1, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout$ViewDragCallback;->this$0:Lme/imid/swipebacklayout/lib/SwipeBackLayout;

    invoke-static {v1}, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->access$3(Lme/imid/swipebacklayout/lib/SwipeBackLayout;)Lme/imid/swipebacklayout/lib/SwipeBackLayout$SwipeListener;

    move-result-object v1

    iget-object v2, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout$ViewDragCallback;->this$0:Lme/imid/swipebacklayout/lib/SwipeBackLayout;

    invoke-static {v2}, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->access$4(Lme/imid/swipebacklayout/lib/SwipeBackLayout;)I

    move-result v2

    invoke-interface {v1, v2}, Lme/imid/swipebacklayout/lib/SwipeBackLayout$SwipeListener;->onEdgeTouch(I)V

    .line 423
    :cond_1
    iput-boolean v3, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout$ViewDragCallback;->mIsScrollOverValid:Z

    .line 425
    :cond_2
    return v0

    .line 415
    :cond_3
    iget-object v1, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout$ViewDragCallback;->this$0:Lme/imid/swipebacklayout/lib/SwipeBackLayout;

    invoke-static {v1}, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->access$0(Lme/imid/swipebacklayout/lib/SwipeBackLayout;)Lme/imid/swipebacklayout/lib/ViewDragHelper;

    move-result-object v1

    invoke-virtual {v1, v4, p2}, Lme/imid/swipebacklayout/lib/ViewDragHelper;->isEdgeTouched(II)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 416
    iget-object v1, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout$ViewDragCallback;->this$0:Lme/imid/swipebacklayout/lib/SwipeBackLayout;

    invoke-static {v1, v4}, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->access$2(Lme/imid/swipebacklayout/lib/SwipeBackLayout;I)V

    goto :goto_0

    .line 417
    :cond_4
    iget-object v1, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout$ViewDragCallback;->this$0:Lme/imid/swipebacklayout/lib/SwipeBackLayout;

    invoke-static {v1}, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->access$0(Lme/imid/swipebacklayout/lib/SwipeBackLayout;)Lme/imid/swipebacklayout/lib/ViewDragHelper;

    move-result-object v1

    invoke-virtual {v1, v5, p2}, Lme/imid/swipebacklayout/lib/ViewDragHelper;->isEdgeTouched(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 418
    iget-object v1, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout$ViewDragCallback;->this$0:Lme/imid/swipebacklayout/lib/SwipeBackLayout;

    invoke-static {v1, v5}, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->access$2(Lme/imid/swipebacklayout/lib/SwipeBackLayout;I)V

    goto :goto_0
.end method
