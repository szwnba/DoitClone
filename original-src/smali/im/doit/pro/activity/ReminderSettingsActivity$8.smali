.class Lim/doit/pro/activity/ReminderSettingsActivity$8;
.super Ljava/lang/Object;
.source "ReminderSettingsActivity.java"

# interfaces
.implements Lim/doit/pro/ui/component/LabelSwitchButton$OnSwitchCheckedChangeListener;


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
    iput-object p1, p0, Lim/doit/pro/activity/ReminderSettingsActivity$8;->this$0:Lim/doit/pro/activity/ReminderSettingsActivity;

    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lim/doit/pro/activity/ReminderSettingsActivity$8;)Lim/doit/pro/activity/ReminderSettingsActivity;
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lim/doit/pro/activity/ReminderSettingsActivity$8;->this$0:Lim/doit/pro/activity/ReminderSettingsActivity;

    return-object v0
.end method


# virtual methods
.method public onChange(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 224
    iget-object v0, p0, Lim/doit/pro/activity/ReminderSettingsActivity$8;->this$0:Lim/doit/pro/activity/ReminderSettingsActivity;

    invoke-static {v0}, Lim/doit/pro/activity/ReminderSettingsActivity;->access$4(Lim/doit/pro/activity/ReminderSettingsActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 245
    :goto_0
    return-void

    .line 227
    :cond_0
    invoke-static {}, Lim/doit/pro/utils/UserUtils;->isNotPro()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 228
    new-instance v0, Lim/doit/pro/activity/ReminderSettingsActivity$8$1;

    invoke-direct {v0, p0}, Lim/doit/pro/activity/ReminderSettingsActivity$8$1;-><init>(Lim/doit/pro/activity/ReminderSettingsActivity$8;)V

    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 241
    :cond_1
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->user()Lim/doit/pro/model/User;

    move-result-object v0

    invoke-virtual {v0, p2}, Lim/doit/pro/model/User;->setPlanReviewRemindOnWeekends(Z)V

    .line 242
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v0

    iget-object v0, v0, Lim/doit/pro/db/Persist;->userDao:Lim/doit/pro/db/persist/UserDao;

    invoke-static {}, Lim/doit/pro/activity/DoitApp;->user()Lim/doit/pro/model/User;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/db/persist/UserDao;->updateAndSaveLog(Lim/doit/pro/model/User;)V

    .line 243
    iget-object v0, p0, Lim/doit/pro/activity/ReminderSettingsActivity$8;->this$0:Lim/doit/pro/activity/ReminderSettingsActivity;

    invoke-static {v0}, Lim/doit/pro/utils/BroadcastUtils;->updateTodayDailyPlanAlarm(Landroid/content/Context;)V

    .line 244
    iget-object v0, p0, Lim/doit/pro/activity/ReminderSettingsActivity$8;->this$0:Lim/doit/pro/activity/ReminderSettingsActivity;

    invoke-static {v0}, Lim/doit/pro/utils/BroadcastUtils;->updateTodayDailyReviewAlarm(Landroid/content/Context;)V

    goto :goto_0
.end method
