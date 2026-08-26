.class Lim/doit/pro/activity/SettingsActivity$6;
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
    iput-object p1, p0, Lim/doit/pro/activity/SettingsActivity$6;->this$0:Lim/doit/pro/activity/SettingsActivity;

    .line 485
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 489
    invoke-static {p2}, Lim/doit/pro/utils/LocalSettings;->saveShowSmartaddOnNotification(Z)V

    .line 490
    iget-object v0, p0, Lim/doit/pro/activity/SettingsActivity$6;->this$0:Lim/doit/pro/activity/SettingsActivity;

    invoke-static {v0}, Lim/doit/pro/utils/NotificationUtils;->showSmartAddOnBar(Landroid/content/Context;)V

    .line 491
    return-void
.end method
