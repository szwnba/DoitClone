.class Lim/doit/pro/activity/RemindPopupActivity$2;
.super Ljava/util/TimerTask;
.source "RemindPopupActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/activity/RemindPopupActivity;->releaseWakeLock()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/activity/RemindPopupActivity;


# direct methods
.method constructor <init>(Lim/doit/pro/activity/RemindPopupActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lim/doit/pro/activity/RemindPopupActivity$2;->this$0:Lim/doit/pro/activity/RemindPopupActivity;

    .line 162
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lim/doit/pro/activity/RemindPopupActivity$2;)Lim/doit/pro/activity/RemindPopupActivity;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lim/doit/pro/activity/RemindPopupActivity$2;->this$0:Lim/doit/pro/activity/RemindPopupActivity;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 166
    iget-object v0, p0, Lim/doit/pro/activity/RemindPopupActivity$2;->this$0:Lim/doit/pro/activity/RemindPopupActivity;

    new-instance v1, Lim/doit/pro/activity/RemindPopupActivity$2$1;

    invoke-direct {v1, p0}, Lim/doit/pro/activity/RemindPopupActivity$2$1;-><init>(Lim/doit/pro/activity/RemindPopupActivity$2;)V

    invoke-virtual {v0, v1}, Lim/doit/pro/activity/RemindPopupActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 173
    iget-object v0, p0, Lim/doit/pro/activity/RemindPopupActivity$2;->this$0:Lim/doit/pro/activity/RemindPopupActivity;

    invoke-static {v0}, Lim/doit/pro/activity/RemindPopupActivity;->access$3(Lim/doit/pro/activity/RemindPopupActivity;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 174
    return-void
.end method
