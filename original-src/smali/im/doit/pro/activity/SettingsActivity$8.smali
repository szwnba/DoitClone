.class Lim/doit/pro/activity/SettingsActivity$8;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Lim/doit/pro/ui/component/LabelSwitchButton$OnSwitchCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/activity/SettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/activity/SettingsActivity;


# direct methods
.method constructor <init>(Lim/doit/pro/activity/SettingsActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lim/doit/pro/activity/SettingsActivity$8;->this$0:Lim/doit/pro/activity/SettingsActivity;

    .line 504
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 508
    iget-object v1, p0, Lim/doit/pro/activity/SettingsActivity$8;->this$0:Lim/doit/pro/activity/SettingsActivity;

    invoke-static {v1}, Lim/doit/pro/activity/SettingsActivity;->access$1(Lim/doit/pro/activity/SettingsActivity;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 517
    :cond_0
    :goto_0
    return-void

    .line 511
    :cond_1
    invoke-static {}, Lim/doit/pro/utils/LocalSettings;->getGenstureLockKey()Ljava/lang/String;

    move-result-object v0

    .line 512
    .local v0, "passcode":Ljava/lang/String;
    if-eqz p2, :cond_2

    .line 513
    iget-object v1, p0, Lim/doit/pro/activity/SettingsActivity$8;->this$0:Lim/doit/pro/activity/SettingsActivity;

    invoke-static {v1}, Lim/doit/pro/activity/SettingsActivity;->access$2(Lim/doit/pro/activity/SettingsActivity;)V

    goto :goto_0

    .line 514
    :cond_2
    invoke-static {v0}, Lim/doit/pro/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 515
    iget-object v1, p0, Lim/doit/pro/activity/SettingsActivity$8;->this$0:Lim/doit/pro/activity/SettingsActivity;

    invoke-static {v1}, Lim/doit/pro/activity/SettingsActivity;->access$3(Lim/doit/pro/activity/SettingsActivity;)V

    goto :goto_0
.end method
