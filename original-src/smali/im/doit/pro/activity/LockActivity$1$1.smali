.class Lim/doit/pro/activity/LockActivity$1$1;
.super Ljava/lang/Object;
.source "LockActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/activity/LockActivity$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lim/doit/pro/activity/LockActivity$1;


# direct methods
.method constructor <init>(Lim/doit/pro/activity/LockActivity$1;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lim/doit/pro/activity/LockActivity$1$1;->this$1:Lim/doit/pro/activity/LockActivity$1;

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Lim/doit/pro/activity/LockActivity$1$1;->this$1:Lim/doit/pro/activity/LockActivity$1;

    invoke-static {v0}, Lim/doit/pro/activity/LockActivity$1;->access$0(Lim/doit/pro/activity/LockActivity$1;)Lim/doit/pro/activity/LockActivity;

    move-result-object v0

    invoke-static {v0}, Lim/doit/pro/activity/LockActivity;->access$0(Lim/doit/pro/activity/LockActivity;)Lim/doit/pro/ui/component/LockPatternView;

    move-result-object v0

    invoke-virtual {v0}, Lim/doit/pro/ui/component/LockPatternView;->getDisplayMode()Lim/doit/pro/ui/component/LockPatternView$DisplayMode;

    move-result-object v0

    sget-object v1, Lim/doit/pro/ui/component/LockPatternView$DisplayMode;->Wrong:Lim/doit/pro/ui/component/LockPatternView$DisplayMode;

    if-ne v0, v1, :cond_0

    .line 101
    iget-object v0, p0, Lim/doit/pro/activity/LockActivity$1$1;->this$1:Lim/doit/pro/activity/LockActivity$1;

    invoke-static {v0}, Lim/doit/pro/activity/LockActivity$1;->access$0(Lim/doit/pro/activity/LockActivity$1;)Lim/doit/pro/activity/LockActivity;

    move-result-object v0

    invoke-static {v0}, Lim/doit/pro/activity/LockActivity;->access$0(Lim/doit/pro/activity/LockActivity;)Lim/doit/pro/ui/component/LockPatternView;

    move-result-object v0

    invoke-virtual {v0}, Lim/doit/pro/ui/component/LockPatternView;->clearPattern()V

    .line 102
    iget-object v0, p0, Lim/doit/pro/activity/LockActivity$1$1;->this$1:Lim/doit/pro/activity/LockActivity$1;

    invoke-static {v0}, Lim/doit/pro/activity/LockActivity$1;->access$0(Lim/doit/pro/activity/LockActivity$1;)Lim/doit/pro/activity/LockActivity;

    move-result-object v0

    invoke-static {v0}, Lim/doit/pro/activity/LockActivity;->access$0(Lim/doit/pro/activity/LockActivity;)Lim/doit/pro/ui/component/LockPatternView;

    move-result-object v0

    invoke-virtual {v0}, Lim/doit/pro/ui/component/LockPatternView;->enableInput()V

    .line 104
    :cond_0
    return-void
.end method
