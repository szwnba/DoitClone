.class Lcom/doomonafireball/betterpickers/radialtimepicker/RadialSelectorView$InvalidateUpdateListener;
.super Ljava/lang/Object;
.source "RadialSelectorView.java"

# interfaces
.implements Lcom/nineoldandroids/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/doomonafireball/betterpickers/radialtimepicker/RadialSelectorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InvalidateUpdateListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/doomonafireball/betterpickers/radialtimepicker/RadialSelectorView;


# direct methods
.method private constructor <init>(Lcom/doomonafireball/betterpickers/radialtimepicker/RadialSelectorView;)V
    .locals 0

    .prologue
    .line 395
    iput-object p1, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialSelectorView$InvalidateUpdateListener;->this$0:Lcom/doomonafireball/betterpickers/radialtimepicker/RadialSelectorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/doomonafireball/betterpickers/radialtimepicker/RadialSelectorView;Lcom/doomonafireball/betterpickers/radialtimepicker/RadialSelectorView$InvalidateUpdateListener;)V
    .locals 0

    .prologue
    .line 395
    invoke-direct {p0, p1}, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialSelectorView$InvalidateUpdateListener;-><init>(Lcom/doomonafireball/betterpickers/radialtimepicker/RadialSelectorView;)V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Lcom/nineoldandroids/animation/ValueAnimator;)V
    .locals 1
    .param p1, "animation"    # Lcom/nineoldandroids/animation/ValueAnimator;

    .prologue
    .line 399
    iget-object v0, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialSelectorView$InvalidateUpdateListener;->this$0:Lcom/doomonafireball/betterpickers/radialtimepicker/RadialSelectorView;

    invoke-virtual {v0}, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialSelectorView;->invalidate()V

    .line 400
    return-void
.end method
