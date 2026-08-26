.class Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTextsView$InvalidateUpdateListener;
.super Ljava/lang/Object;
.source "RadialTextsView.java"

# interfaces
.implements Lcom/nineoldandroids/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTextsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InvalidateUpdateListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTextsView;


# direct methods
.method private constructor <init>(Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTextsView;)V
    .locals 0

    .prologue
    .line 355
    iput-object p1, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTextsView$InvalidateUpdateListener;->this$0:Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTextsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTextsView;Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTextsView$InvalidateUpdateListener;)V
    .locals 0

    .prologue
    .line 355
    invoke-direct {p0, p1}, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTextsView$InvalidateUpdateListener;-><init>(Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTextsView;)V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Lcom/nineoldandroids/animation/ValueAnimator;)V
    .locals 1
    .param p1, "animation"    # Lcom/nineoldandroids/animation/ValueAnimator;

    .prologue
    .line 359
    iget-object v0, p0, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTextsView$InvalidateUpdateListener;->this$0:Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTextsView;

    invoke-virtual {v0}, Lcom/doomonafireball/betterpickers/radialtimepicker/RadialTextsView;->invalidate()V

    .line 360
    return-void
.end method
