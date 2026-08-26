.class Lcom/doomonafireball/betterpickers/HapticFeedbackController$1;
.super Landroid/database/ContentObserver;
.source "HapticFeedbackController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/doomonafireball/betterpickers/HapticFeedbackController;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/doomonafireball/betterpickers/HapticFeedbackController;


# direct methods
.method constructor <init>(Lcom/doomonafireball/betterpickers/HapticFeedbackController;Landroid/os/Handler;)V
    .locals 0
    .param p2, "$anonymous0"    # Landroid/os/Handler;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/doomonafireball/betterpickers/HapticFeedbackController$1;->this$0:Lcom/doomonafireball/betterpickers/HapticFeedbackController;

    .line 32
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .prologue
    .line 35
    iget-object v0, p0, Lcom/doomonafireball/betterpickers/HapticFeedbackController$1;->this$0:Lcom/doomonafireball/betterpickers/HapticFeedbackController;

    iget-object v1, p0, Lcom/doomonafireball/betterpickers/HapticFeedbackController$1;->this$0:Lcom/doomonafireball/betterpickers/HapticFeedbackController;

    invoke-static {v1}, Lcom/doomonafireball/betterpickers/HapticFeedbackController;->access$0(Lcom/doomonafireball/betterpickers/HapticFeedbackController;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/doomonafireball/betterpickers/HapticFeedbackController;->access$1(Landroid/content/Context;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/doomonafireball/betterpickers/HapticFeedbackController;->access$2(Lcom/doomonafireball/betterpickers/HapticFeedbackController;Z)V

    .line 36
    return-void
.end method
