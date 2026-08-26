.class Lim/doit/pro/activity/ReminderSettingsActivity$1$1;
.super Ljava/lang/Object;
.source "ReminderSettingsActivity.java"

# interfaces
.implements Lim/doit/pro/activity/SetReminderRingtoneDialog$OnSetReminderRingtoneFinishListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/activity/ReminderSettingsActivity$1;->click(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lim/doit/pro/activity/ReminderSettingsActivity$1;


# direct methods
.method constructor <init>(Lim/doit/pro/activity/ReminderSettingsActivity$1;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lim/doit/pro/activity/ReminderSettingsActivity$1$1;->this$1:Lim/doit/pro/activity/ReminderSettingsActivity$1;

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public finish(ZLjava/lang/String;)V
    .locals 1
    .param p1, "isVibrate"    # Z
    .param p2, "ringtoneUrl"    # Ljava/lang/String;

    .prologue
    .line 130
    iget-object v0, p0, Lim/doit/pro/activity/ReminderSettingsActivity$1$1;->this$1:Lim/doit/pro/activity/ReminderSettingsActivity$1;

    invoke-static {v0}, Lim/doit/pro/activity/ReminderSettingsActivity$1;->access$0(Lim/doit/pro/activity/ReminderSettingsActivity$1;)Lim/doit/pro/activity/ReminderSettingsActivity;

    move-result-object v0

    invoke-static {v0}, Lim/doit/pro/activity/ReminderSettingsActivity;->access$0(Lim/doit/pro/activity/ReminderSettingsActivity;)V

    .line 131
    return-void
.end method
