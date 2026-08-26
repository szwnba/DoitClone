.class Lim/doit/pro/activity/LockSetupActivity$1$1;
.super Ljava/lang/Object;
.source "LockSetupActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/activity/LockSetupActivity$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lim/doit/pro/activity/LockSetupActivity$1;


# direct methods
.method constructor <init>(Lim/doit/pro/activity/LockSetupActivity$1;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lim/doit/pro/activity/LockSetupActivity$1$1;->this$1:Lim/doit/pro/activity/LockSetupActivity$1;

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lim/doit/pro/activity/LockSetupActivity$1$1;->this$1:Lim/doit/pro/activity/LockSetupActivity$1;

    invoke-static {v0}, Lim/doit/pro/activity/LockSetupActivity$1;->access$0(Lim/doit/pro/activity/LockSetupActivity$1;)Lim/doit/pro/activity/LockSetupActivity;

    move-result-object v0

    invoke-virtual {v0}, Lim/doit/pro/activity/LockSetupActivity;->finish()V

    .line 165
    return-void
.end method
