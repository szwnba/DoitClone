.class Lim/doit/pro/activity/DailyPlanSettingsActivity$1;
.super Ljava/lang/Object;
.source "DailyPlanSettingsActivity.java"

# interfaces
.implements Lim/doit/pro/ui/component/LabelSwitchButton$OnSwitchCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/activity/DailyPlanSettingsActivity;->onRemindSwitchChange()Lim/doit/pro/ui/component/LabelSwitchButton$OnSwitchCheckedChangeListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/activity/DailyPlanSettingsActivity;


# direct methods
.method constructor <init>(Lim/doit/pro/activity/DailyPlanSettingsActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lim/doit/pro/activity/DailyPlanSettingsActivity$1;->this$0:Lim/doit/pro/activity/DailyPlanSettingsActivity;

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 165
    iget-object v0, p0, Lim/doit/pro/activity/DailyPlanSettingsActivity$1;->this$0:Lim/doit/pro/activity/DailyPlanSettingsActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lim/doit/pro/activity/DailyPlanSettingsActivity;->access$0(Lim/doit/pro/activity/DailyPlanSettingsActivity;Z)V

    .line 166
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->user()Lim/doit/pro/model/User;

    move-result-object v0

    invoke-virtual {v0, p2}, Lim/doit/pro/model/User;->setRemindDailyPlan(Z)V

    .line 167
    iget-object v0, p0, Lim/doit/pro/activity/DailyPlanSettingsActivity$1;->this$0:Lim/doit/pro/activity/DailyPlanSettingsActivity;

    invoke-static {v0}, Lim/doit/pro/activity/DailyPlanSettingsActivity;->access$1(Lim/doit/pro/activity/DailyPlanSettingsActivity;)V

    .line 168
    return-void
.end method
