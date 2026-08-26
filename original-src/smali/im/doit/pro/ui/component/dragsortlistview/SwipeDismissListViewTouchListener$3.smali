.class Lim/doit/pro/ui/component/dragsortlistview/SwipeDismissListViewTouchListener$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SwipeDismissListViewTouchListener.java"


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

.field private final synthetic val$originalHeight:I


# direct methods
.method constructor <init>(Lim/doit/pro/ui/component/dragsortlistview/SwipeDismissListViewTouchListener;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lim/doit/pro/ui/component/dragsortlistview/SwipeDismissListViewTouchListener$3;->this$0:Lim/doit/pro/ui/component/dragsortlistview/SwipeDismissListViewTouchListener;

    iput p2, p0, Lim/doit/pro/ui/component/dragsortlistview/SwipeDismissListViewTouchListener$3;->val$originalHeight:I

    .line 364
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 7
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 367
    iget-object v4, p0, Lim/doit/pro/ui/component/dragsortlistview/SwipeDismissListViewTouchListener$3;->this$0:Lim/doit/pro/ui/component/dragsortlistview/SwipeDismissListViewTouchListener;

    invoke-static {v4}, Lim/doit/pro/ui/component/dragsortlistview/SwipeDismissListViewTouchListener;->access$1(Lim/doit/pro/ui/component/dragsortlistview/SwipeDismissListViewTouchListener;)I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-static {v4, v5}, Lim/doit/pro/ui/component/dragsortlistview/SwipeDismissListViewTouchListener;->access$2(Lim/doit/pro/ui/component/dragsortlistview/SwipeDismissListViewTouchListener;I)V

    .line 368
    iget-object v4, p0, Lim/doit/pro/ui/component/dragsortlistview/SwipeDismissListViewTouchListener$3;->this$0:Lim/doit/pro/ui/component/dragsortlistview/SwipeDismissListViewTouchListener;

    invoke-static {v4}, Lim/doit/pro/ui/component/dragsortlistview/SwipeDismissListViewTouchListener;->access$1(Lim/doit/pro/ui/component/dragsortlistview/SwipeDismissListViewTouchListener;)I

    move-result v4

    if-nez v4, :cond_0

    .line 371
    iget-object v4, p0, Lim/doit/pro/ui/component/dragsortlistview/SwipeDismissListViewTouchListener$3;->this$0:Lim/doit/pro/ui/component/dragsortlistview/SwipeDismissListViewTouchListener;

    invoke-static {v4}, Lim/doit/pro/ui/component/dragsortlistview/SwipeDismissListViewTouchListener;->access$3(Lim/doit/pro/ui/component/dragsortlistview/SwipeDismissListViewTouchListener;)Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 373
    iget-object v4, p0, Lim/doit/pro/ui/component/dragsortlistview/SwipeDismissListViewTouchListener$3;->this$0:Lim/doit/pro/ui/component/dragsortlistview/SwipeDismissListViewTouchListener;

    invoke-static {v4}, Lim/doit/pro/ui/component/dragsortlistview/SwipeDismissListViewTouchListener;->access$3(Lim/doit/pro/ui/component/dragsortlistview/SwipeDismissListViewTouchListener;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    new-array v0, v4, [I

    .line 374
    .local v0, "dismissPositions":[I
    iget-object v4, p0, Lim/doit/pro/ui/component/dragsortlistview/SwipeDismissListViewTouchListener$3;->this$0:Lim/doit/pro/ui/component/dragsortlistview/SwipeDismissListViewTouchListener;

    invoke-static {v4}, Lim/doit/pro/ui/component/dragsortlistview/SwipeDismissListViewTouchListener;->access$3(Lim/doit/pro/ui/component/dragsortlistview/SwipeDismissListViewTouchListener;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .local v1, "i":I
    :goto_0
    if-gez v1, :cond_1

    .line 377
    iget-object v4, p0, Lim/doit/pro/ui/component/dragsortlistview/SwipeDismissListViewTouchListener$3;->this$0:Lim/doit/pro/ui/component/dragsortlistview/SwipeDismissListViewTouchListener;

    invoke-static {v4}, Lim/doit/pro/ui/component/dragsortlistview/SwipeDismissListViewTouchListener;->access$4(Lim/doit/pro/ui/component/dragsortlistview/SwipeDismissListViewTouchListener;)Lim/doit/pro/ui/component/dragsortlistview/SwipeDismissListViewTouchListener$DismissCallbacks;

    move-result-object v4

    iget-object v5, p0, Lim/doit/pro/ui/component/dragsortlistview/SwipeDismissListViewTouchListener$3;->this$0:Lim/doit/pro/ui/component/dragsortlistview/SwipeDismissListViewTouchListener;

    invoke-static {v5}, Lim/doit/pro/ui/component/dragsortlistview/SwipeDismissListViewTouchListener;->access$5(Lim/doit/pro/ui/component/dragsortlistview/SwipeDismissListViewTouchListener;)Landroid/widget/ListView;

    move-result-object v5

    invoke-interface {v4, v5, v0}, Lim/doit/pro/ui/component/dragsortlistview/SwipeDismissListViewTouchListener$DismissCallbacks;->onDismiss(Landroid/widget/ListView;[I)V

    .line 380
    iget-object v4, p0, Lim/doit/pro/ui/component/dragsortlistview/SwipeDismissListViewTouchListener$3;->this$0:Lim/doit/pro/ui/component/dragsortlistview/SwipeDismissListViewTouchListener;

    invoke-static {v4}, Lim/doit/pro/ui/component/dragsortlistview/SwipeDismissListViewTouchListener;->access$3(Lim/doit/pro/ui/component/dragsortlistview/SwipeDismissListViewTouchListener;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_2

    .line 389
    iget-object v4, p0, Lim/doit/pro/ui/component/dragsortlistview/SwipeDismissListViewTouchListener$3;->this$0:Lim/doit/pro/ui/component/dragsortlistview/SwipeDismissListViewTouchListener;

    invoke-static {v4}, Lim/doit/pro/ui/component/dragsortlistview/SwipeDismissListViewTouchListener;->access$3(Lim/doit/pro/ui/component/dragsortlistview/SwipeDismissListViewTouchListener;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 391
    .end local v0    # "dismissPositions":[I
    .end local v1    # "i":I
    :cond_0
    return-void

    .line 375
    .restart local v0    # "dismissPositions":[I
    .restart local v1    # "i":I
    :cond_1
    iget-object v4, p0, Lim/doit/pro/ui/component/dragsortlistview/SwipeDismissListViewTouchListener$3;->this$0:Lim/doit/pro/ui/component/dragsortlistview/SwipeDismissListViewTouchListener;

    invoke-static {v4}, Lim/doit/pro/ui/component/dragsortlistview/SwipeDismissListViewTouchListener;->access$3(Lim/doit/pro/ui/component/dragsortlistview/SwipeDismissListViewTouchListener;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lim/doit/pro/ui/component/dragsortlistview/SwipeDismissListViewTouchListener$PendingDismissData;

    iget v4, v4, Lim/doit/pro/ui/component/dragsortlistview/SwipeDismissListViewTouchListener$PendingDismissData;->position:I

    aput v4, v0, v1

    .line 374
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 380
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lim/doit/pro/ui/component/dragsortlistview/SwipeDismissListViewTouchListener$PendingDismissData;

    .line 382
    .local v3, "pendingDismiss":Lim/doit/pro/ui/component/dragsortlistview/SwipeDismissListViewTouchListener$PendingDismissData;
    iget-object v5, v3, Lim/doit/pro/ui/component/dragsortlistview/SwipeDismissListViewTouchListener$PendingDismissData;->view:Landroid/view/View;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v5, v6}, Landroid/view/View;->setAlpha(F)V

    .line 383
    iget-object v5, v3, Lim/doit/pro/ui/component/dragsortlistview/SwipeDismissListViewTouchListener$PendingDismissData;->view:Landroid/view/View;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setTranslationX(F)V

    .line 384
    iget-object v5, v3, Lim/doit/pro/ui/component/dragsortlistview/SwipeDismissListViewTouchListener$PendingDismissData;->view:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 385
    .local v2, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget v5, p0, Lim/doit/pro/ui/component/dragsortlistview/SwipeDismissListViewTouchListener$3;->val$originalHeight:I

    iput v5, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 386
    iget-object v5, v3, Lim/doit/pro/ui/component/dragsortlistview/SwipeDismissListViewTouchListener$PendingDismissData;->view:Landroid/view/View;

    invoke-virtual {v5, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1
.end method
