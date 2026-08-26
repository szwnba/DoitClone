.class Lim/doit/pro/activity/listener/ListViewSwipeTouchListener$2;
.super Lcom/nineoldandroids/animation/AnimatorListenerAdapter;
.source "ListViewSwipeTouchListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/activity/listener/ListViewSwipeTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/activity/listener/ListViewSwipeTouchListener;

.field private final synthetic val$downPosition:I

.field private final synthetic val$downView:Landroid/view/View;


# direct methods
.method constructor <init>(Lim/doit/pro/activity/listener/ListViewSwipeTouchListener;Landroid/view/View;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lim/doit/pro/activity/listener/ListViewSwipeTouchListener$2;->this$0:Lim/doit/pro/activity/listener/ListViewSwipeTouchListener;

    iput-object p2, p0, Lim/doit/pro/activity/listener/ListViewSwipeTouchListener$2;->val$downView:Landroid/view/View;

    iput p3, p0, Lim/doit/pro/activity/listener/ListViewSwipeTouchListener$2;->val$downPosition:I

    .line 161
    invoke-direct {p0}, Lcom/nineoldandroids/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Lcom/nineoldandroids/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Lcom/nineoldandroids/animation/Animator;

    .prologue
    .line 164
    iget-object v0, p0, Lim/doit/pro/activity/listener/ListViewSwipeTouchListener$2;->this$0:Lim/doit/pro/activity/listener/ListViewSwipeTouchListener;

    invoke-static {v0}, Lim/doit/pro/activity/listener/ListViewSwipeTouchListener;->access$1(Lim/doit/pro/activity/listener/ListViewSwipeTouchListener;)Lim/doit/pro/activity/listener/ListViewSwipeTouchListener$Callback;

    move-result-object v0

    iget-object v1, p0, Lim/doit/pro/activity/listener/ListViewSwipeTouchListener$2;->val$downView:Landroid/view/View;

    iget v2, p0, Lim/doit/pro/activity/listener/ListViewSwipeTouchListener$2;->val$downPosition:I

    invoke-interface {v0, v1, v2}, Lim/doit/pro/activity/listener/ListViewSwipeTouchListener$Callback;->onViewSwiped(Landroid/view/View;I)V

    .line 165
    return-void
.end method
