.class Lim/doit/pro/activity/ReminderSettingsActivity$5;
.super Ljava/lang/Object;
.source "ReminderSettingsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    iput-object p1, p0, Lim/doit/pro/activity/ReminderSettingsActivity$5;->this$0:Lim/doit/pro/activity/ReminderSettingsActivity;

    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 179
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    const/4 v0, 0x0

    invoke-static {v0}, Lim/doit/pro/utils/PrefUtils;->saveReminderPopupStyle(Ljava/lang/String;)V

    .line 185
    :goto_0
    iget-object v0, p0, Lim/doit/pro/activity/ReminderSettingsActivity$5;->this$0:Lim/doit/pro/activity/ReminderSettingsActivity;

    invoke-static {v0}, Lim/doit/pro/activity/ReminderSettingsActivity;->access$3(Lim/doit/pro/activity/ReminderSettingsActivity;)V

    .line 186
    return-void

    .line 183
    :cond_0
    const-string v0, "detail_pop"

    invoke-static {v0}, Lim/doit/pro/utils/PrefUtils;->saveReminderPopupStyle(Ljava/lang/String;)V

    goto :goto_0
.end method
