.class Lim/doit/pro/ui/component/pullrefresh/DefaultHeaderTransformer$HideAnimationCallback;
.super Landroid/animation/AnimatorListenerAdapter;
.source "DefaultHeaderTransformer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/ui/component/pullrefresh/DefaultHeaderTransformer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HideAnimationCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/ui/component/pullrefresh/DefaultHeaderTransformer;


# direct methods
.method constructor <init>(Lim/doit/pro/ui/component/pullrefresh/DefaultHeaderTransformer;)V
    .locals 0

    .prologue
    .line 426
    iput-object p1, p0, Lim/doit/pro/ui/component/pullrefresh/DefaultHeaderTransformer$HideAnimationCallback;->this$0:Lim/doit/pro/ui/component/pullrefresh/DefaultHeaderTransformer;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 429
    iget-object v1, p0, Lim/doit/pro/ui/component/pullrefresh/DefaultHeaderTransformer$HideAnimationCallback;->this$0:Lim/doit/pro/ui/component/pullrefresh/DefaultHeaderTransformer;

    invoke-virtual {v1}, Lim/doit/pro/ui/component/pullrefresh/DefaultHeaderTransformer;->getHeaderView()Landroid/view/View;

    move-result-object v0

    .line 430
    .local v0, "headerView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 431
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 433
    :cond_0
    iget-object v1, p0, Lim/doit/pro/ui/component/pullrefresh/DefaultHeaderTransformer$HideAnimationCallback;->this$0:Lim/doit/pro/ui/component/pullrefresh/DefaultHeaderTransformer;

    invoke-virtual {v1}, Lim/doit/pro/ui/component/pullrefresh/DefaultHeaderTransformer;->onReset()V

    .line 434
    return-void
.end method
