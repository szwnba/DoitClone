.class Lim/doit/pro/activity/SetReminderRingtoneDialog$2;
.super Ljava/lang/Object;
.source "SetReminderRingtoneDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/activity/SetReminderRingtoneDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/activity/SetReminderRingtoneDialog;


# direct methods
.method constructor <init>(Lim/doit/pro/activity/SetReminderRingtoneDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lim/doit/pro/activity/SetReminderRingtoneDialog$2;->this$0:Lim/doit/pro/activity/SetReminderRingtoneDialog;

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 129
    iget-object v1, p0, Lim/doit/pro/activity/SetReminderRingtoneDialog$2;->this$0:Lim/doit/pro/activity/SetReminderRingtoneDialog;

    iget-object v2, p0, Lim/doit/pro/activity/SetReminderRingtoneDialog$2;->this$0:Lim/doit/pro/activity/SetReminderRingtoneDialog;

    invoke-static {v2}, Lim/doit/pro/activity/SetReminderRingtoneDialog;->access$0(Lim/doit/pro/activity/SetReminderRingtoneDialog;)Z

    move-result v2

    invoke-static {v1, v2}, Lim/doit/pro/activity/SetReminderRingtoneDialog;->access$1(Lim/doit/pro/activity/SetReminderRingtoneDialog;Z)V

    .line 130
    iget-object v1, p0, Lim/doit/pro/activity/SetReminderRingtoneDialog$2;->this$0:Lim/doit/pro/activity/SetReminderRingtoneDialog;

    invoke-static {v1}, Lim/doit/pro/activity/SetReminderRingtoneDialog;->access$2(Lim/doit/pro/activity/SetReminderRingtoneDialog;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lim/doit/pro/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 131
    iget-object v1, p0, Lim/doit/pro/activity/SetReminderRingtoneDialog$2;->this$0:Lim/doit/pro/activity/SetReminderRingtoneDialog;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lim/doit/pro/activity/SetReminderRingtoneDialog;->access$3(Lim/doit/pro/activity/SetReminderRingtoneDialog;Ljava/lang/String;)V

    .line 133
    :cond_0
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->pref()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 134
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "reminder_ringtone_uri"

    iget-object v2, p0, Lim/doit/pro/activity/SetReminderRingtoneDialog$2;->this$0:Lim/doit/pro/activity/SetReminderRingtoneDialog;

    invoke-static {v2}, Lim/doit/pro/activity/SetReminderRingtoneDialog;->access$2(Lim/doit/pro/activity/SetReminderRingtoneDialog;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 135
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 136
    iget-object v1, p0, Lim/doit/pro/activity/SetReminderRingtoneDialog$2;->this$0:Lim/doit/pro/activity/SetReminderRingtoneDialog;

    invoke-static {v1}, Lim/doit/pro/activity/SetReminderRingtoneDialog;->access$4(Lim/doit/pro/activity/SetReminderRingtoneDialog;)Lim/doit/pro/activity/SetReminderRingtoneDialog$OnSetReminderRingtoneFinishListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 137
    iget-object v1, p0, Lim/doit/pro/activity/SetReminderRingtoneDialog$2;->this$0:Lim/doit/pro/activity/SetReminderRingtoneDialog;

    invoke-static {v1}, Lim/doit/pro/activity/SetReminderRingtoneDialog;->access$4(Lim/doit/pro/activity/SetReminderRingtoneDialog;)Lim/doit/pro/activity/SetReminderRingtoneDialog$OnSetReminderRingtoneFinishListener;

    move-result-object v1

    iget-object v2, p0, Lim/doit/pro/activity/SetReminderRingtoneDialog$2;->this$0:Lim/doit/pro/activity/SetReminderRingtoneDialog;

    invoke-static {v2}, Lim/doit/pro/activity/SetReminderRingtoneDialog;->access$0(Lim/doit/pro/activity/SetReminderRingtoneDialog;)Z

    move-result v2

    iget-object v3, p0, Lim/doit/pro/activity/SetReminderRingtoneDialog$2;->this$0:Lim/doit/pro/activity/SetReminderRingtoneDialog;

    invoke-static {v3}, Lim/doit/pro/activity/SetReminderRingtoneDialog;->access$2(Lim/doit/pro/activity/SetReminderRingtoneDialog;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lim/doit/pro/activity/SetReminderRingtoneDialog$OnSetReminderRingtoneFinishListener;->finish(ZLjava/lang/String;)V

    .line 139
    :cond_1
    iget-object v1, p0, Lim/doit/pro/activity/SetReminderRingtoneDialog$2;->this$0:Lim/doit/pro/activity/SetReminderRingtoneDialog;

    invoke-virtual {v1}, Lim/doit/pro/activity/SetReminderRingtoneDialog;->dismissAllowingStateLoss()V

    .line 140
    return-void
.end method
