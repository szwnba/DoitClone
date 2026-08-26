.class Lim/doit/pro/activity/SetReminderRingtoneDialog$ViewAdapter$VibrateViewHolder;
.super Lim/doit/pro/activity/SetReminderRingtoneDialog$ViewAdapter$ViewHolder;
.source "SetReminderRingtoneDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/activity/SetReminderRingtoneDialog$ViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VibrateViewHolder"
.end annotation


# instance fields
.field public nameTV:Landroid/widget/TextView;

.field public swithBtn:Lim/doit/pro/ui/component/DSwitch;

.field final synthetic this$1:Lim/doit/pro/activity/SetReminderRingtoneDialog$ViewAdapter;


# direct methods
.method public constructor <init>(Lim/doit/pro/activity/SetReminderRingtoneDialog$ViewAdapter;Landroid/content/Context;)V
    .locals 2
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 251
    iput-object p1, p0, Lim/doit/pro/activity/SetReminderRingtoneDialog$ViewAdapter$VibrateViewHolder;->this$1:Lim/doit/pro/activity/SetReminderRingtoneDialog$ViewAdapter;

    .line 252
    invoke-direct {p0, p1, p2}, Lim/doit/pro/activity/SetReminderRingtoneDialog$ViewAdapter$ViewHolder;-><init>(Lim/doit/pro/activity/SetReminderRingtoneDialog$ViewAdapter;Landroid/content/Context;)V

    .line 254
    const v0, 0x7f030059

    .line 253
    invoke-static {p2, v0, p0}, Lim/doit/pro/activity/SetReminderRingtoneDialog$ViewAdapter$VibrateViewHolder;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 255
    const v0, 0x7f0b0115

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/SetReminderRingtoneDialog$ViewAdapter$VibrateViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lim/doit/pro/activity/SetReminderRingtoneDialog$ViewAdapter$VibrateViewHolder;->nameTV:Landroid/widget/TextView;

    .line 256
    const v0, 0x7f0b0116

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/SetReminderRingtoneDialog$ViewAdapter$VibrateViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lim/doit/pro/ui/component/DSwitch;

    iput-object v0, p0, Lim/doit/pro/activity/SetReminderRingtoneDialog$ViewAdapter$VibrateViewHolder;->swithBtn:Lim/doit/pro/ui/component/DSwitch;

    .line 257
    iget-object v0, p0, Lim/doit/pro/activity/SetReminderRingtoneDialog$ViewAdapter$VibrateViewHolder;->swithBtn:Lim/doit/pro/ui/component/DSwitch;

    new-instance v1, Lim/doit/pro/activity/SetReminderRingtoneDialog$ViewAdapter$VibrateViewHolder$1;

    invoke-direct {v1, p0}, Lim/doit/pro/activity/SetReminderRingtoneDialog$ViewAdapter$VibrateViewHolder$1;-><init>(Lim/doit/pro/activity/SetReminderRingtoneDialog$ViewAdapter$VibrateViewHolder;)V

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/DSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 265
    return-void
.end method

.method static synthetic access$0(Lim/doit/pro/activity/SetReminderRingtoneDialog$ViewAdapter$VibrateViewHolder;)Lim/doit/pro/activity/SetReminderRingtoneDialog$ViewAdapter;
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lim/doit/pro/activity/SetReminderRingtoneDialog$ViewAdapter$VibrateViewHolder;->this$1:Lim/doit/pro/activity/SetReminderRingtoneDialog$ViewAdapter;

    return-object v0
.end method


# virtual methods
.method public setViewContent(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "isChecked"    # Z
    .param p3, "tag"    # Ljava/lang/String;

    .prologue
    .line 270
    iget-object v0, p0, Lim/doit/pro/activity/SetReminderRingtoneDialog$ViewAdapter$VibrateViewHolder;->nameTV:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 271
    iget-object v0, p0, Lim/doit/pro/activity/SetReminderRingtoneDialog$ViewAdapter$VibrateViewHolder;->swithBtn:Lim/doit/pro/ui/component/DSwitch;

    invoke-virtual {v0, p2}, Lim/doit/pro/ui/component/DSwitch;->setChecked(Z)V

    .line 272
    invoke-virtual {p0, p3}, Lim/doit/pro/activity/SetReminderRingtoneDialog$ViewAdapter$VibrateViewHolder;->setTag(Ljava/lang/Object;)V

    .line 273
    return-void
.end method
