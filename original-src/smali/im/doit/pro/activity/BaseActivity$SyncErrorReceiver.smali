.class Lim/doit/pro/activity/BaseActivity$SyncErrorReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/activity/BaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SyncErrorReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/activity/BaseActivity;


# direct methods
.method private constructor <init>(Lim/doit/pro/activity/BaseActivity;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lim/doit/pro/activity/BaseActivity$SyncErrorReceiver;->this$0:Lim/doit/pro/activity/BaseActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lim/doit/pro/activity/BaseActivity;Lim/doit/pro/activity/BaseActivity$SyncErrorReceiver;)V
    .locals 0

    .prologue
    .line 122
    invoke-direct {p0, p1}, Lim/doit/pro/activity/BaseActivity$SyncErrorReceiver;-><init>(Lim/doit/pro/activity/BaseActivity;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 126
    const-string v2, "response_code"

    const/4 v3, -0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 127
    .local v0, "code":I
    const/16 v2, 0x1aa

    if-ne v2, v0, :cond_0

    .line 128
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->pref()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 129
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "too_old_version"

    .line 130
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->getVersionCode()I

    move-result v3

    .line 129
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 131
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 132
    iget-object v2, p0, Lim/doit/pro/activity/BaseActivity$SyncErrorReceiver;->this$0:Lim/doit/pro/activity/BaseActivity;

    invoke-virtual {v2}, Lim/doit/pro/activity/BaseActivity;->alertVersionTooOldDialog()V

    .line 134
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method
