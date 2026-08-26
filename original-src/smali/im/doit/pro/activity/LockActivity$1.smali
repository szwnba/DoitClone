.class Lim/doit/pro/activity/LockActivity$1;
.super Ljava/util/TimerTask;
.source "LockActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/activity/LockActivity;->resetPatternAfterWrong()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/activity/LockActivity;


# direct methods
.method constructor <init>(Lim/doit/pro/activity/LockActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lim/doit/pro/activity/LockActivity$1;->this$0:Lim/doit/pro/activity/LockActivity;

    .line 92
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lim/doit/pro/activity/LockActivity$1;)Lim/doit/pro/activity/LockActivity;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lim/doit/pro/activity/LockActivity$1;->this$0:Lim/doit/pro/activity/LockActivity;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 96
    iget-object v0, p0, Lim/doit/pro/activity/LockActivity$1;->this$0:Lim/doit/pro/activity/LockActivity;

    new-instance v1, Lim/doit/pro/activity/LockActivity$1$1;

    invoke-direct {v1, p0}, Lim/doit/pro/activity/LockActivity$1$1;-><init>(Lim/doit/pro/activity/LockActivity$1;)V

    invoke-virtual {v0, v1}, Lim/doit/pro/activity/LockActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 106
    return-void
.end method
