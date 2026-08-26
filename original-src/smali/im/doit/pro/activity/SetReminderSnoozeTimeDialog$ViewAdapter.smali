.class Lim/doit/pro/activity/SetReminderSnoozeTimeDialog$ViewAdapter;
.super Landroid/widget/BaseAdapter;
.source "SetReminderSnoozeTimeDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/activity/SetReminderSnoozeTimeDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lim/doit/pro/activity/SetReminderSnoozeTimeDialog$ViewAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private snoozeTimes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lim/doit/pro/activity/SetReminderSnoozeTimeDialog;


# direct methods
.method public constructor <init>(Lim/doit/pro/activity/SetReminderSnoozeTimeDialog;Landroid/content/Context;)V
    .locals 4
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 109
    iput-object p1, p0, Lim/doit/pro/activity/SetReminderSnoozeTimeDialog$ViewAdapter;->this$0:Lim/doit/pro/activity/SetReminderSnoozeTimeDialog;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Integer;

    const/4 v2, 0x0

    .line 111
    const/4 v3, 0x5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const/16 v3, 0xa

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const/16 v3, 0xf

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const/16 v3, 0x14

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 110
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lim/doit/pro/activity/SetReminderSnoozeTimeDialog$ViewAdapter;->snoozeTimes:Ljava/util/ArrayList;

    .line 112
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lim/doit/pro/activity/SetReminderSnoozeTimeDialog$ViewAdapter;->snoozeTimes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Integer;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 121
    iget-object v0, p0, Lim/doit/pro/activity/SetReminderSnoozeTimeDialog$ViewAdapter;->snoozeTimes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lim/doit/pro/activity/SetReminderSnoozeTimeDialog$ViewAdapter;->getItem(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 126
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 131
    const/4 v0, 0x0

    .line 132
    .local v0, "holder":Lim/doit/pro/activity/SetReminderSnoozeTimeDialog$ViewAdapter$ViewHolder;
    if-nez p2, :cond_0

    .line 133
    new-instance v0, Lim/doit/pro/activity/SetReminderSnoozeTimeDialog$ViewAdapter$ViewHolder;

    .end local v0    # "holder":Lim/doit/pro/activity/SetReminderSnoozeTimeDialog$ViewAdapter$ViewHolder;
    iget-object v2, p0, Lim/doit/pro/activity/SetReminderSnoozeTimeDialog$ViewAdapter;->this$0:Lim/doit/pro/activity/SetReminderSnoozeTimeDialog;

    invoke-virtual {v2}, Lim/doit/pro/activity/SetReminderSnoozeTimeDialog;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lim/doit/pro/activity/SetReminderSnoozeTimeDialog$ViewAdapter$ViewHolder;-><init>(Lim/doit/pro/activity/SetReminderSnoozeTimeDialog$ViewAdapter;Landroid/content/Context;)V

    .line 137
    .restart local v0    # "holder":Lim/doit/pro/activity/SetReminderSnoozeTimeDialog$ViewAdapter$ViewHolder;
    :goto_0
    invoke-virtual {p0, p1}, Lim/doit/pro/activity/SetReminderSnoozeTimeDialog$ViewAdapter;->getItem(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 138
    .local v1, "snoozeTime":I
    invoke-virtual {v0, v1}, Lim/doit/pro/activity/SetReminderSnoozeTimeDialog$ViewAdapter$ViewHolder;->setViewContent(I)V

    .line 139
    iget-object v2, p0, Lim/doit/pro/activity/SetReminderSnoozeTimeDialog$ViewAdapter;->this$0:Lim/doit/pro/activity/SetReminderSnoozeTimeDialog;

    invoke-static {v2}, Lim/doit/pro/activity/SetReminderSnoozeTimeDialog;->access$0(Lim/doit/pro/activity/SetReminderSnoozeTimeDialog;)Landroid/widget/ListView;

    move-result-object v3

    iget-object v2, p0, Lim/doit/pro/activity/SetReminderSnoozeTimeDialog$ViewAdapter;->this$0:Lim/doit/pro/activity/SetReminderSnoozeTimeDialog;

    invoke-static {v2}, Lim/doit/pro/activity/SetReminderSnoozeTimeDialog;->access$1(Lim/doit/pro/activity/SetReminderSnoozeTimeDialog;)I

    move-result v2

    if-ne v1, v2, :cond_1

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v3, p1, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 140
    return-object v0

    .end local v1    # "snoozeTime":I
    :cond_0
    move-object v0, p2

    .line 135
    check-cast v0, Lim/doit/pro/activity/SetReminderSnoozeTimeDialog$ViewAdapter$ViewHolder;

    goto :goto_0

    .line 139
    .restart local v1    # "snoozeTime":I
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method
