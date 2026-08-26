.class Lim/doit/pro/activity/SmartAddActivity$4;
.super Ljava/util/TimerTask;
.source "SmartAddActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/activity/SmartAddActivity;->showSuccessMsg(Lim/doit/pro/model/Task;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/activity/SmartAddActivity;


# direct methods
.method constructor <init>(Lim/doit/pro/activity/SmartAddActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lim/doit/pro/activity/SmartAddActivity$4;->this$0:Lim/doit/pro/activity/SmartAddActivity;

    .line 826
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lim/doit/pro/activity/SmartAddActivity$4;)Lim/doit/pro/activity/SmartAddActivity;
    .locals 1

    .prologue
    .line 826
    iget-object v0, p0, Lim/doit/pro/activity/SmartAddActivity$4;->this$0:Lim/doit/pro/activity/SmartAddActivity;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 830
    iget-object v0, p0, Lim/doit/pro/activity/SmartAddActivity$4;->this$0:Lim/doit/pro/activity/SmartAddActivity;

    new-instance v1, Lim/doit/pro/activity/SmartAddActivity$4$1;

    invoke-direct {v1, p0}, Lim/doit/pro/activity/SmartAddActivity$4$1;-><init>(Lim/doit/pro/activity/SmartAddActivity$4;)V

    invoke-virtual {v0, v1}, Lim/doit/pro/activity/SmartAddActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 837
    return-void
.end method
