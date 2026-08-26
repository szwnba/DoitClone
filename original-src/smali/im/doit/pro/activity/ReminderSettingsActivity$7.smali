.class Lim/doit/pro/activity/ReminderSettingsActivity$7;
.super Ljava/lang/Object;
.source "ReminderSettingsActivity.java"

# interfaces
.implements Lim/doit/pro/activity/listener/OnLayoutClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/activity/ReminderSettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/activity/ReminderSettingsActivity;


# direct methods
.method constructor <init>(Lim/doit/pro/activity/ReminderSettingsActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lim/doit/pro/activity/ReminderSettingsActivity$7;->this$0:Lim/doit/pro/activity/ReminderSettingsActivity;

    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public click(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 208
    invoke-static {}, Lim/doit/pro/utils/UserUtils;->isNotPro()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 210
    iget-object v1, p0, Lim/doit/pro/activity/ReminderSettingsActivity$7;->this$0:Lim/doit/pro/activity/ReminderSettingsActivity;

    invoke-static {v1}, Lim/doit/pro/utils/AlertDialogUtils;->showJustForProDialog(Landroid/app/Activity;)Z

    .line 216
    :goto_0
    return-void

    .line 213
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lim/doit/pro/activity/ReminderSettingsActivity$7;->this$0:Lim/doit/pro/activity/ReminderSettingsActivity;

    .line 214
    const-class v2, Lim/doit/pro/activity/DailyReviewSettingsActivity;

    .line 213
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 215
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lim/doit/pro/activity/ReminderSettingsActivity$7;->this$0:Lim/doit/pro/activity/ReminderSettingsActivity;

    invoke-virtual {v1, v0}, Lim/doit/pro/activity/ReminderSettingsActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
