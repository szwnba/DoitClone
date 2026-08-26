.class Lim/doit/pro/activity/ReminderSettingsActivity$8$1;
.super Ljava/lang/Object;
.source "ReminderSettingsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/activity/ReminderSettingsActivity$8;->onChange(Landroid/widget/CompoundButton;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lim/doit/pro/activity/ReminderSettingsActivity$8;


# direct methods
.method constructor <init>(Lim/doit/pro/activity/ReminderSettingsActivity$8;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lim/doit/pro/activity/ReminderSettingsActivity$8$1;->this$1:Lim/doit/pro/activity/ReminderSettingsActivity$8;

    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 232
    iget-object v0, p0, Lim/doit/pro/activity/ReminderSettingsActivity$8$1;->this$1:Lim/doit/pro/activity/ReminderSettingsActivity$8;

    invoke-static {v0}, Lim/doit/pro/activity/ReminderSettingsActivity$8;->access$0(Lim/doit/pro/activity/ReminderSettingsActivity$8;)Lim/doit/pro/activity/ReminderSettingsActivity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lim/doit/pro/activity/ReminderSettingsActivity;->access$5(Lim/doit/pro/activity/ReminderSettingsActivity;Z)V

    .line 233
    iget-object v0, p0, Lim/doit/pro/activity/ReminderSettingsActivity$8$1;->this$1:Lim/doit/pro/activity/ReminderSettingsActivity$8;

    invoke-static {v0}, Lim/doit/pro/activity/ReminderSettingsActivity$8;->access$0(Lim/doit/pro/activity/ReminderSettingsActivity$8;)Lim/doit/pro/activity/ReminderSettingsActivity;

    move-result-object v0

    invoke-static {v0}, Lim/doit/pro/activity/ReminderSettingsActivity;->access$6(Lim/doit/pro/activity/ReminderSettingsActivity;)V

    .line 235
    iget-object v0, p0, Lim/doit/pro/activity/ReminderSettingsActivity$8$1;->this$1:Lim/doit/pro/activity/ReminderSettingsActivity$8;

    invoke-static {v0}, Lim/doit/pro/activity/ReminderSettingsActivity$8;->access$0(Lim/doit/pro/activity/ReminderSettingsActivity$8;)Lim/doit/pro/activity/ReminderSettingsActivity;

    move-result-object v0

    invoke-static {v0}, Lim/doit/pro/utils/AlertDialogUtils;->showJustForProDialog(Landroid/app/Activity;)Z

    .line 236
    iget-object v0, p0, Lim/doit/pro/activity/ReminderSettingsActivity$8$1;->this$1:Lim/doit/pro/activity/ReminderSettingsActivity$8;

    invoke-static {v0}, Lim/doit/pro/activity/ReminderSettingsActivity$8;->access$0(Lim/doit/pro/activity/ReminderSettingsActivity$8;)Lim/doit/pro/activity/ReminderSettingsActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lim/doit/pro/activity/ReminderSettingsActivity;->access$5(Lim/doit/pro/activity/ReminderSettingsActivity;Z)V

    .line 237
    return-void
.end method
