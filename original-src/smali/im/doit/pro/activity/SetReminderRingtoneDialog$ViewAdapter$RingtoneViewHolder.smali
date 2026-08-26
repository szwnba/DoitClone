.class Lim/doit/pro/activity/SetReminderRingtoneDialog$ViewAdapter$RingtoneViewHolder;
.super Lim/doit/pro/activity/SetReminderRingtoneDialog$ViewAdapter$ViewHolder;
.source "SetReminderRingtoneDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/activity/SetReminderRingtoneDialog$ViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RingtoneViewHolder"
.end annotation


# instance fields
.field public nameTV:Landroid/widget/TextView;

.field final synthetic this$1:Lim/doit/pro/activity/SetReminderRingtoneDialog$ViewAdapter;


# direct methods
.method public constructor <init>(Lim/doit/pro/activity/SetReminderRingtoneDialog$ViewAdapter;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 233
    iput-object p1, p0, Lim/doit/pro/activity/SetReminderRingtoneDialog$ViewAdapter$RingtoneViewHolder;->this$1:Lim/doit/pro/activity/SetReminderRingtoneDialog$ViewAdapter;

    .line 234
    invoke-direct {p0, p1, p2}, Lim/doit/pro/activity/SetReminderRingtoneDialog$ViewAdapter$ViewHolder;-><init>(Lim/doit/pro/activity/SetReminderRingtoneDialog$ViewAdapter;Landroid/content/Context;)V

    .line 235
    const v0, 0x7f030058

    invoke-static {p2, v0, p0}, Lim/doit/pro/activity/SetReminderRingtoneDialog$ViewAdapter$RingtoneViewHolder;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 236
    const v0, 0x7f0b0115

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/SetReminderRingtoneDialog$ViewAdapter$RingtoneViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lim/doit/pro/activity/SetReminderRingtoneDialog$ViewAdapter$RingtoneViewHolder;->nameTV:Landroid/widget/TextView;

    .line 237
    return-void
.end method


# virtual methods
.method public setViewContent(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "isChecked"    # Z
    .param p3, "tag"    # Ljava/lang/String;

    .prologue
    .line 241
    iget-object v0, p0, Lim/doit/pro/activity/SetReminderRingtoneDialog$ViewAdapter$RingtoneViewHolder;->nameTV:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 242
    invoke-virtual {p0, p3}, Lim/doit/pro/activity/SetReminderRingtoneDialog$ViewAdapter$RingtoneViewHolder;->setTag(Ljava/lang/Object;)V

    .line 243
    return-void
.end method
