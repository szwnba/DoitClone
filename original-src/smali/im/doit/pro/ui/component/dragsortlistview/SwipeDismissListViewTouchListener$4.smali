.class Lim/doit/pro/ui/component/dragsortlistview/SwipeDismissListViewTouchListener$4;
.super Ljava/lang/Object;
.source "SwipeDismissListViewTouchListener.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/ui/component/dragsortlistview/SwipeDismissListViewTouchListener;->performDismiss(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/ui/component/dragsortlistview/SwipeDismissListViewTouchListener;

.field private final synthetic val$dismissView:Landroid/view/View;

.field private final synthetic val$lp:Landroid/view/ViewGroup$LayoutParams;


# direct methods
.method constructor <init>(Lim/doit/pro/ui/component/dragsortlistview/SwipeDismissListViewTouchListener;Landroid/view/ViewGroup$LayoutParams;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lim/doit/pro/ui/component/dragsortlistview/SwipeDismissListViewTouchListener$4;->this$0:Lim/doit/pro/ui/component/dragsortlistview/SwipeDismissListViewTouchListener;

    iput-object p2, p0, Lim/doit/pro/ui/component/dragsortlistview/SwipeDismissListViewTouchListener$4;->val$lp:Landroid/view/ViewGroup$LayoutParams;

    iput-object p3, p0, Lim/doit/pro/ui/component/dragsortlistview/SwipeDismissListViewTouchListener$4;->val$dismissView:Landroid/view/View;

    .line 394
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "valueAnimator"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 397
    iget-object v1, p0, Lim/doit/pro/ui/component/dragsortlistview/SwipeDismissListViewTouchListener$4;->val$lp:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 398
    iget-object v0, p0, Lim/doit/pro/ui/component/dragsortlistview/SwipeDismissListViewTouchListener$4;->val$dismissView:Landroid/view/View;

    iget-object v1, p0, Lim/doit/pro/ui/component/dragsortlistview/SwipeDismissListViewTouchListener$4;->val$lp:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 399
    return-void
.end method
