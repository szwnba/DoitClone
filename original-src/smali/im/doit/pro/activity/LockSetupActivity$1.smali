.class Lim/doit/pro/activity/LockSetupActivity$1;
.super Ljava/util/TimerTask;
.source "LockSetupActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/activity/LockSetupActivity;->complete()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/activity/LockSetupActivity;


# direct methods
.method constructor <init>(Lim/doit/pro/activity/LockSetupActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lim/doit/pro/activity/LockSetupActivity$1;->this$0:Lim/doit/pro/activity/LockSetupActivity;

    .line 158
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lim/doit/pro/activity/LockSetupActivity$1;)Lim/doit/pro/activity/LockSetupActivity;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lim/doit/pro/activity/LockSetupActivity$1;->this$0:Lim/doit/pro/activity/LockSetupActivity;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 162
    iget-object v0, p0, Lim/doit/pro/activity/LockSetupActivity$1;->this$0:Lim/doit/pro/activity/LockSetupActivity;

    new-instance v1, Lim/doit/pro/activity/LockSetupActivity$1$1;

    invoke-direct {v1, p0}, Lim/doit/pro/activity/LockSetupActivity$1$1;-><init>(Lim/doit/pro/activity/LockSetupActivity$1;)V

    invoke-virtual {v0, v1}, Lim/doit/pro/activity/LockSetupActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 167
    return-void
.end method
