.class Lim/doit/pro/activity/BaseActivityRegisterSyncFinish$SyncFinishReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BaseActivityRegisterSyncFinish.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/activity/BaseActivityRegisterSyncFinish;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SyncFinishReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/activity/BaseActivityRegisterSyncFinish;


# direct methods
.method private constructor <init>(Lim/doit/pro/activity/BaseActivityRegisterSyncFinish;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lim/doit/pro/activity/BaseActivityRegisterSyncFinish$SyncFinishReceiver;->this$0:Lim/doit/pro/activity/BaseActivityRegisterSyncFinish;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lim/doit/pro/activity/BaseActivityRegisterSyncFinish;Lim/doit/pro/activity/BaseActivityRegisterSyncFinish$SyncFinishReceiver;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lim/doit/pro/activity/BaseActivityRegisterSyncFinish$SyncFinishReceiver;-><init>(Lim/doit/pro/activity/BaseActivityRegisterSyncFinish;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 48
    const-string v3, "sync_type"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 49
    .local v2, "syncType":Ljava/lang/String;
    const-string v3, "response_code"

    const/4 v4, -0x1

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 50
    .local v0, "code":I
    const-string v3, "response_error_code"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 51
    .local v1, "doitErrorCode":Ljava/lang/String;
    iget-object v3, p0, Lim/doit/pro/activity/BaseActivityRegisterSyncFinish$SyncFinishReceiver;->this$0:Lim/doit/pro/activity/BaseActivityRegisterSyncFinish;

    invoke-static {v3, v2, v0, v1}, Lim/doit/pro/utils/AlertDialogUtils;->alertSyncErrorDialog(Landroid/app/Activity;Ljava/lang/String;ILjava/lang/String;)Z

    .line 52
    iget-object v4, p0, Lim/doit/pro/activity/BaseActivityRegisterSyncFinish$SyncFinishReceiver;->this$0:Lim/doit/pro/activity/BaseActivityRegisterSyncFinish;

    const/16 v3, 0xc8

    if-ne v0, v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    invoke-virtual {v4, v3}, Lim/doit/pro/activity/BaseActivityRegisterSyncFinish;->afterSync(Z)V

    .line 53
    return-void

    .line 52
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method
