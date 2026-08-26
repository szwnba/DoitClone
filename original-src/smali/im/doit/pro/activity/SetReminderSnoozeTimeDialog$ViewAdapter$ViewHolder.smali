.class Lim/doit/pro/activity/SetReminderSnoozeTimeDialog$ViewAdapter$ViewHolder;
.super Landroid/widget/RelativeLayout;
.source "SetReminderSnoozeTimeDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/activity/SetReminderSnoozeTimeDialog$ViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field private nameView:Landroid/widget/TextView;

.field final synthetic this$1:Lim/doit/pro/activity/SetReminderSnoozeTimeDialog$ViewAdapter;


# direct methods
.method public constructor <init>(Lim/doit/pro/activity/SetReminderSnoozeTimeDialog$ViewAdapter;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 147
    iput-object p1, p0, Lim/doit/pro/activity/SetReminderSnoozeTimeDialog$ViewAdapter$ViewHolder;->this$1:Lim/doit/pro/activity/SetReminderSnoozeTimeDialog$ViewAdapter;

    .line 148
    invoke-direct {p0, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 149
    const v0, 0x7f030058

    invoke-static {p2, v0, p0}, Lim/doit/pro/activity/SetReminderSnoozeTimeDialog$ViewAdapter$ViewHolder;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 150
    const v0, 0x7f0b0115

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/SetReminderSnoozeTimeDialog$ViewAdapter$ViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lim/doit/pro/activity/SetReminderSnoozeTimeDialog$ViewAdapter$ViewHolder;->nameView:Landroid/widget/TextView;

    .line 151
    return-void
.end method


# virtual methods
.method public setViewContent(I)V
    .locals 5
    .param p1, "snoozeTime"    # I

    .prologue
    .line 154
    iget-object v0, p0, Lim/doit/pro/activity/SetReminderSnoozeTimeDialog$ViewAdapter$ViewHolder;->nameView:Landroid/widget/TextView;

    const v1, 0x7f0c005f

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 155
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 154
    invoke-static {v1, v2}, Lim/doit/pro/activity/utils/ViewUtils;->format(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/SetReminderSnoozeTimeDialog$ViewAdapter$ViewHolder;->setTag(Ljava/lang/Object;)V

    .line 157
    return-void
.end method
