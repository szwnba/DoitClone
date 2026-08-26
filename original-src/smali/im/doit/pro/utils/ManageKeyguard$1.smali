.class Lim/doit/pro/utils/ManageKeyguard$1;
.super Ljava/lang/Object;
.source "ManageKeyguard.java"

# interfaces
.implements Landroid/app/KeyguardManager$OnKeyguardExitResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/utils/ManageKeyguard;->exitKeyguardSecurely(Lim/doit/pro/utils/ManageKeyguard$LaunchOnKeyguardExit;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$callback:Lim/doit/pro/utils/ManageKeyguard$LaunchOnKeyguardExit;


# direct methods
.method constructor <init>(Lim/doit/pro/utils/ManageKeyguard$LaunchOnKeyguardExit;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lim/doit/pro/utils/ManageKeyguard$1;->val$callback:Lim/doit/pro/utils/ManageKeyguard$LaunchOnKeyguardExit;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyguardExitResult(Z)V
    .locals 1
    .param p1, "success"    # Z

    .prologue
    .line 52
    invoke-static {}, Lim/doit/pro/utils/ManageKeyguard;->reenableKeyguard()V

    .line 53
    if-eqz p1, :cond_0

    .line 54
    iget-object v0, p0, Lim/doit/pro/utils/ManageKeyguard$1;->val$callback:Lim/doit/pro/utils/ManageKeyguard$LaunchOnKeyguardExit;

    invoke-interface {v0}, Lim/doit/pro/utils/ManageKeyguard$LaunchOnKeyguardExit;->LaunchOnKeyguardExitSuccess()V

    .line 56
    :cond_0
    return-void
.end method
