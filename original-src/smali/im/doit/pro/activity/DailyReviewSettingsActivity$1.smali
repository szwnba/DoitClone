.class Lim/doit/pro/activity/DailyReviewSettingsActivity$1;
.super Ljava/lang/Object;
.source "DailyReviewSettingsActivity.java"

# interfaces
.implements Lim/doit/pro/ui/component/LabelSwitchButton$OnSwitchCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/activity/DailyReviewSettingsActivity;->onRemindSwitchChange()Lim/doit/pro/ui/component/LabelSwitchButton$OnSwitchCheckedChangeListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/activity/DailyReviewSettingsActivity;


# direct methods
.method constructor <init>(Lim/doit/pro/activity/DailyReviewSettingsActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lim/doit/pro/activity/DailyReviewSettingsActivity$1;->this$0:Lim/doit/pro/activity/DailyReviewSettingsActivity;

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 164
    iget-object v0, p0, Lim/doit/pro/activity/DailyReviewSettingsActivity$1;->this$0:Lim/doit/pro/activity/DailyReviewSettingsActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lim/doit/pro/activity/DailyReviewSettingsActivity;->access$0(Lim/doit/pro/activity/DailyReviewSettingsActivity;Z)V

    .line 165
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->user()Lim/doit/pro/model/User;

    move-result-object v0

    invoke-virtual {v0, p2}, Lim/doit/pro/model/User;->setRemindDailyReview(Z)V

    .line 166
    iget-object v0, p0, Lim/doit/pro/activity/DailyReviewSettingsActivity$1;->this$0:Lim/doit/pro/activity/DailyReviewSettingsActivity;

    invoke-static {v0}, Lim/doit/pro/activity/DailyReviewSettingsActivity;->access$1(Lim/doit/pro/activity/DailyReviewSettingsActivity;)V

    .line 167
    return-void
.end method
