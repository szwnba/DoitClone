.class Lim/doit/pro/ui/component/dragsortlistview/SwipeDismissListViewTouchListener$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SwipeDismissListViewTouchListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/ui/component/dragsortlistview/SwipeDismissListViewTouchListener;->dismiss(Landroid/view/View;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/ui/component/dragsortlistview/SwipeDismissListViewTouchListener;

.field private final synthetic val$position:I

.field private final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lim/doit/pro/ui/component/dragsortlistview/SwipeDismissListViewTouchListener;Landroid/view/View;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lim/doit/pro/ui/component/dragsortlistview/SwipeDismissListViewTouchListener$2;->this$0:Lim/doit/pro/ui/component/dragsortlistview/SwipeDismissListViewTouchListener;

    iput-object p2, p0, Lim/doit/pro/ui/component/dragsortlistview/SwipeDismissListViewTouchListener$2;->val$view:Landroid/view/View;

    iput p3, p0, Lim/doit/pro/ui/component/dragsortlistview/SwipeDismissListViewTouchListener$2;->val$position:I

    .line 322
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 325
    iget-object v0, p0, Lim/doit/pro/ui/component/dragsortlistview/SwipeDismissListViewTouchListener$2;->this$0:Lim/doit/pro/ui/component/dragsortlistview/SwipeDismissListViewTouchListener;

    iget-object v1, p0, Lim/doit/pro/ui/component/dragsortlistview/SwipeDismissListViewTouchListener$2;->val$view:Landroid/view/View;

    iget v2, p0, Lim/doit/pro/ui/component/dragsortlistview/SwipeDismissListViewTouchListener$2;->val$position:I

    invoke-static {v0, v1, v2}, Lim/doit/pro/ui/component/dragsortlistview/SwipeDismissListViewTouchListener;->access$0(Lim/doit/pro/ui/component/dragsortlistview/SwipeDismissListViewTouchListener;Landroid/view/View;I)V

    .line 326
    return-void
.end method
