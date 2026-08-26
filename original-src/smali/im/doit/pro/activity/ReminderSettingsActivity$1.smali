.class Lim/doit/pro/activity/ReminderSettingsActivity$1;
.super Ljava/lang/Object;
.source "ReminderSettingsActivity.java"

# interfaces
.implements Lim/doit/pro/activity/listener/OnLayoutClickListener;


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
    iput-object p1, p0, Lim/doit/pro/activity/ReminderSettingsActivity$1;->this$0:Lim/doit/pro/activity/ReminderSettingsActivity;

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lim/doit/pro/activity/ReminderSettingsActivity$1;)Lim/doit/pro/activity/ReminderSettingsActivity;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lim/doit/pro/activity/ReminderSettingsActivity$1;->this$0:Lim/doit/pro/activity/ReminderSettingsActivity;

    return-object v0
.end method


# virtual methods
.method public click(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 124
    new-instance v0, Lim/doit/pro/activity/SetReminderRingtoneDialog;

    invoke-direct {v0}, Lim/doit/pro/activity/SetReminderRingtoneDialog;-><init>()V

    .line 125
    .local v0, "dialog":Lim/doit/pro/activity/SetReminderRingtoneDialog;
    iget-object v1, p0, Lim/doit/pro/activity/ReminderSettingsActivity$1;->this$0:Lim/doit/pro/activity/ReminderSettingsActivity;

    invoke-virtual {v1}, Lim/doit/pro/activity/ReminderSettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "set reminder ringtone"

    invoke-virtual {v0, v1, v2}, Lim/doit/pro/activity/SetReminderRingtoneDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 126
    new-instance v1, Lim/doit/pro/activity/ReminderSettingsActivity$1$1;

    invoke-direct {v1, p0}, Lim/doit/pro/activity/ReminderSettingsActivity$1$1;-><init>(Lim/doit/pro/activity/ReminderSettingsActivity$1;)V

    invoke-virtual {v0, v1}, Lim/doit/pro/activity/SetReminderRingtoneDialog;->setOnSetReminderRingtoneFinishListener(Lim/doit/pro/activity/SetReminderRingtoneDialog$OnSetReminderRingtoneFinishListener;)V

    .line 133
    return-void
.end method
