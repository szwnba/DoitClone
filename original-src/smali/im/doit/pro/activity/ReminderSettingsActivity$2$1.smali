.class Lim/doit/pro/activity/ReminderSettingsActivity$2$1;
.super Ljava/lang/Object;
.source "ReminderSettingsActivity.java"

# interfaces
.implements Lim/doit/pro/activity/SetReminderSnoozeTimeDialog$OnSetReminderSnoozeTimeFinishListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/activity/ReminderSettingsActivity$2;->click(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lim/doit/pro/activity/ReminderSettingsActivity$2;


# direct methods
.method constructor <init>(Lim/doit/pro/activity/ReminderSettingsActivity$2;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lim/doit/pro/activity/ReminderSettingsActivity$2$1;->this$1:Lim/doit/pro/activity/ReminderSettingsActivity$2;

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public finish(I)V
    .locals 1
    .param p1, "time"    # I

    .prologue
    .line 146
    iget-object v0, p0, Lim/doit/pro/activity/ReminderSettingsActivity$2$1;->this$1:Lim/doit/pro/activity/ReminderSettingsActivity$2;

    invoke-static {v0}, Lim/doit/pro/activity/ReminderSettingsActivity$2;->access$0(Lim/doit/pro/activity/ReminderSettingsActivity$2;)Lim/doit/pro/activity/ReminderSettingsActivity;

    move-result-object v0

    invoke-static {v0}, Lim/doit/pro/activity/ReminderSettingsActivity;->access$1(Lim/doit/pro/activity/ReminderSettingsActivity;)V

    .line 147
    return-void
.end method
