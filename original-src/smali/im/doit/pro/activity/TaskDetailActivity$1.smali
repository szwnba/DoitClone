.class Lim/doit/pro/activity/TaskDetailActivity$1;
.super Ljava/util/TimerTask;
.source "TaskDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/activity/TaskDetailActivity;->releaseWakeLock()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/activity/TaskDetailActivity;


# direct methods
.method constructor <init>(Lim/doit/pro/activity/TaskDetailActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lim/doit/pro/activity/TaskDetailActivity$1;->this$0:Lim/doit/pro/activity/TaskDetailActivity;

    .line 255
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lim/doit/pro/activity/TaskDetailActivity$1;)Lim/doit/pro/activity/TaskDetailActivity;
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lim/doit/pro/activity/TaskDetailActivity$1;->this$0:Lim/doit/pro/activity/TaskDetailActivity;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 259
    iget-object v0, p0, Lim/doit/pro/activity/TaskDetailActivity$1;->this$0:Lim/doit/pro/activity/TaskDetailActivity;

    new-instance v1, Lim/doit/pro/activity/TaskDetailActivity$1$1;

    invoke-direct {v1, p0}, Lim/doit/pro/activity/TaskDetailActivity$1$1;-><init>(Lim/doit/pro/activity/TaskDetailActivity$1;)V

    invoke-virtual {v0, v1}, Lim/doit/pro/activity/TaskDetailActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 266
    iget-object v0, p0, Lim/doit/pro/activity/TaskDetailActivity$1;->this$0:Lim/doit/pro/activity/TaskDetailActivity;

    invoke-static {v0}, Lim/doit/pro/activity/TaskDetailActivity;->access$5(Lim/doit/pro/activity/TaskDetailActivity;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 267
    return-void
.end method
