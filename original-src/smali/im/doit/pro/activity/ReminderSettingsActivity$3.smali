.class Lim/doit/pro/activity/ReminderSettingsActivity$3;
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
    iput-object p1, p0, Lim/doit/pro/activity/ReminderSettingsActivity$3;->this$0:Lim/doit/pro/activity/ReminderSettingsActivity;

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 156
    invoke-static {p2}, Lim/doit/pro/utils/PrefUtils;->saveReminderIsShowInNotification(Z)V

    .line 157
    iget-object v0, p0, Lim/doit/pro/activity/ReminderSettingsActivity$3;->this$0:Lim/doit/pro/activity/ReminderSettingsActivity;

    invoke-static {v0}, Lim/doit/pro/activity/ReminderSettingsActivity;->access$2(Lim/doit/pro/activity/ReminderSettingsActivity;)V

    .line 158
    return-void
.end method
