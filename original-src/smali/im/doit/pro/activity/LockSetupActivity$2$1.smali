.class Lim/doit/pro/activity/LockSetupActivity$2$1;
.super Ljava/lang/Object;
.source "LockSetupActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/activity/LockSetupActivity$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lim/doit/pro/activity/LockSetupActivity$2;


# direct methods
.method constructor <init>(Lim/doit/pro/activity/LockSetupActivity$2;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lim/doit/pro/activity/LockSetupActivity$2$1;->this$1:Lim/doit/pro/activity/LockSetupActivity$2;

    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 224
    iget-object v0, p0, Lim/doit/pro/activity/LockSetupActivity$2$1;->this$1:Lim/doit/pro/activity/LockSetupActivity$2;

    invoke-static {v0}, Lim/doit/pro/activity/LockSetupActivity$2;->access$0(Lim/doit/pro/activity/LockSetupActivity$2;)Lim/doit/pro/activity/LockSetupActivity;

    move-result-object v0

    invoke-static {v0}, Lim/doit/pro/activity/LockSetupActivity;->access$0(Lim/doit/pro/activity/LockSetupActivity;)Lim/doit/pro/ui/component/LockPatternView;

    move-result-object v0

    invoke-virtual {v0}, Lim/doit/pro/ui/component/LockPatternView;->getDisplayMode()Lim/doit/pro/ui/component/LockPatternView$DisplayMode;

    move-result-object v0

    sget-object v1, Lim/doit/pro/ui/component/LockPatternView$DisplayMode;->Wrong:Lim/doit/pro/ui/component/LockPatternView$DisplayMode;

    if-ne v0, v1, :cond_0

    .line 225
    iget-object v0, p0, Lim/doit/pro/activity/LockSetupActivity$2$1;->this$1:Lim/doit/pro/activity/LockSetupActivity$2;

    invoke-static {v0}, Lim/doit/pro/activity/LockSetupActivity$2;->access$0(Lim/doit/pro/activity/LockSetupActivity$2;)Lim/doit/pro/activity/LockSetupActivity;

    move-result-object v0

    invoke-static {v0}, Lim/doit/pro/activity/LockSetupActivity;->access$0(Lim/doit/pro/activity/LockSetupActivity;)Lim/doit/pro/ui/component/LockPatternView;

    move-result-object v0

    invoke-virtual {v0}, Lim/doit/pro/ui/component/LockPatternView;->clearPattern()V

    .line 226
    iget-object v0, p0, Lim/doit/pro/activity/LockSetupActivity$2$1;->this$1:Lim/doit/pro/activity/LockSetupActivity$2;

    invoke-static {v0}, Lim/doit/pro/activity/LockSetupActivity$2;->access$0(Lim/doit/pro/activity/LockSetupActivity$2;)Lim/doit/pro/activity/LockSetupActivity;

    move-result-object v0

    invoke-static {v0}, Lim/doit/pro/activity/LockSetupActivity;->access$0(Lim/doit/pro/activity/LockSetupActivity;)Lim/doit/pro/ui/component/LockPatternView;

    move-result-object v0

    invoke-virtual {v0}, Lim/doit/pro/ui/component/LockPatternView;->enableInput()V

    .line 228
    :cond_0
    return-void
.end method
