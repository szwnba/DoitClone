.class Lim/doit/pro/activity/SetReminderRingtoneDialog$ViewAdapter$VibrateViewHolder$1;
.super Ljava/lang/Object;
.source "SetReminderRingtoneDialog.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/activity/SetReminderRingtoneDialog$ViewAdapter$VibrateViewHolder;-><init>(Lim/doit/pro/activity/SetReminderRingtoneDialog$ViewAdapter;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lim/doit/pro/activity/SetReminderRingtoneDialog$ViewAdapter$VibrateViewHolder;


# direct methods
.method constructor <init>(Lim/doit/pro/activity/SetReminderRingtoneDialog$ViewAdapter$VibrateViewHolder;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lim/doit/pro/activity/SetReminderRingtoneDialog$ViewAdapter$VibrateViewHolder$1;->this$2:Lim/doit/pro/activity/SetReminderRingtoneDialog$ViewAdapter$VibrateViewHolder;

    .line 257
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 262
    iget-object v0, p0, Lim/doit/pro/activity/SetReminderRingtoneDialog$ViewAdapter$VibrateViewHolder$1;->this$2:Lim/doit/pro/activity/SetReminderRingtoneDialog$ViewAdapter$VibrateViewHolder;

    invoke-static {v0}, Lim/doit/pro/activity/SetReminderRingtoneDialog$ViewAdapter$VibrateViewHolder;->access$0(Lim/doit/pro/activity/SetReminderRingtoneDialog$ViewAdapter$VibrateViewHolder;)Lim/doit/pro/activity/SetReminderRingtoneDialog$ViewAdapter;

    move-result-object v0

    invoke-static {v0}, Lim/doit/pro/activity/SetReminderRingtoneDialog$ViewAdapter;->access$0(Lim/doit/pro/activity/SetReminderRingtoneDialog$ViewAdapter;)Lim/doit/pro/activity/SetReminderRingtoneDialog;

    move-result-object v0

    invoke-static {v0, p2}, Lim/doit/pro/activity/SetReminderRingtoneDialog;->access$5(Lim/doit/pro/activity/SetReminderRingtoneDialog;Z)V

    .line 263
    return-void
.end method
