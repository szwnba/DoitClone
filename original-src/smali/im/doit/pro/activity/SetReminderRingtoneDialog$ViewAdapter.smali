.class Lim/doit/pro/activity/SetReminderRingtoneDialog$ViewAdapter;
.super Landroid/widget/BaseAdapter;
.source "SetReminderRingtoneDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/activity/SetReminderRingtoneDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lim/doit/pro/activity/SetReminderRingtoneDialog$ViewAdapter$RingtoneViewHolder;,
        Lim/doit/pro/activity/SetReminderRingtoneDialog$ViewAdapter$VibrateViewHolder;,
        Lim/doit/pro/activity/SetReminderRingtoneDialog$ViewAdapter$ViewHolder;
    }
.end annotation


# static fields
.field private static final TYPE_RINGTONE_URL:I = 0x1

.field private static final TYPE_VIBRATE:I


# instance fields
.field private ringtoneNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private ringtones:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lim/doit/pro/activity/SetReminderRingtoneDialog;


# direct methods
.method public constructor <init>(Lim/doit/pro/activity/SetReminderRingtoneDialog;Landroid/content/Context;)V
    .locals 2
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 151
    iput-object p1, p0, Lim/doit/pro/activity/SetReminderRingtoneDialog$ViewAdapter;->this$0:Lim/doit/pro/activity/SetReminderRingtoneDialog;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 148
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lim/doit/pro/activity/SetReminderRingtoneDialog$ViewAdapter;->ringtones:Ljava/util/LinkedHashMap;

    .line 152
    invoke-static {p2}, Lim/doit/pro/utils/RingtoneUtils;->getRingtonesName(Landroid/content/Context;)Ljava/util/LinkedHashMap;

    move-result-object v0

    iput-object v0, p0, Lim/doit/pro/activity/SetReminderRingtoneDialog$ViewAdapter;->ringtones:Ljava/util/LinkedHashMap;

    .line 153
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lim/doit/pro/activity/SetReminderRingtoneDialog$ViewAdapter;->ringtones:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lim/doit/pro/activity/SetReminderRingtoneDialog$ViewAdapter;->ringtoneNames:Ljava/util/List;

    .line 154
    return-void
.end method

.method static synthetic access$0(Lim/doit/pro/activity/SetReminderRingtoneDialog$ViewAdapter;)Lim/doit/pro/activity/SetReminderRingtoneDialog;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lim/doit/pro/activity/SetReminderRingtoneDialog$ViewAdapter;->this$0:Lim/doit/pro/activity/SetReminderRingtoneDialog;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lim/doit/pro/activity/SetReminderRingtoneDialog$ViewAdapter;->ringtones:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 177
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 182
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 163
    if-nez p1, :cond_0

    .line 164
    const/4 v0, 0x0

    .line 166
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v5, 0x1

    .line 188
    invoke-virtual {p0, p1}, Lim/doit/pro/activity/SetReminderRingtoneDialog$ViewAdapter;->getItemViewType(I)I

    move-result v4

    .line 189
    .local v4, "type":I
    if-nez p2, :cond_2

    .line 190
    if-nez v4, :cond_1

    .line 191
    new-instance v1, Lim/doit/pro/activity/SetReminderRingtoneDialog$ViewAdapter$VibrateViewHolder;

    iget-object v6, p0, Lim/doit/pro/activity/SetReminderRingtoneDialog$ViewAdapter;->this$0:Lim/doit/pro/activity/SetReminderRingtoneDialog;

    invoke-virtual {v6}, Lim/doit/pro/activity/SetReminderRingtoneDialog;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v1, p0, v6}, Lim/doit/pro/activity/SetReminderRingtoneDialog$ViewAdapter$VibrateViewHolder;-><init>(Lim/doit/pro/activity/SetReminderRingtoneDialog$ViewAdapter;Landroid/content/Context;)V

    .line 198
    .local v1, "holder":Lim/doit/pro/activity/SetReminderRingtoneDialog$ViewAdapter$ViewHolder;
    :goto_0
    const/4 v2, 0x0

    .local v2, "name":Ljava/lang/String;
    const/4 v3, 0x0

    .line 199
    .local v3, "tag":Ljava/lang/String;
    const/4 v0, 0x0

    .line 200
    .local v0, "checked":Z
    if-nez p1, :cond_3

    .line 201
    const v6, 0x7f0c0118

    invoke-static {v6}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v2

    .line 202
    iget-object v6, p0, Lim/doit/pro/activity/SetReminderRingtoneDialog$ViewAdapter;->this$0:Lim/doit/pro/activity/SetReminderRingtoneDialog;

    invoke-static {v6}, Lim/doit/pro/activity/SetReminderRingtoneDialog;->access$0(Lim/doit/pro/activity/SetReminderRingtoneDialog;)Z

    move-result v0

    .line 212
    :goto_1
    if-ne v4, v5, :cond_0

    .line 213
    iget-object v5, p0, Lim/doit/pro/activity/SetReminderRingtoneDialog$ViewAdapter;->this$0:Lim/doit/pro/activity/SetReminderRingtoneDialog;

    invoke-static {v5}, Lim/doit/pro/activity/SetReminderRingtoneDialog;->access$6(Lim/doit/pro/activity/SetReminderRingtoneDialog;)Landroid/widget/ListView;

    move-result-object v5

    invoke-virtual {v5, p1, v0}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 215
    :cond_0
    invoke-virtual {v1, v2, v0, v3}, Lim/doit/pro/activity/SetReminderRingtoneDialog$ViewAdapter$ViewHolder;->setViewContent(Ljava/lang/String;ZLjava/lang/String;)V

    .line 216
    return-object v1

    .line 193
    .end local v0    # "checked":Z
    .end local v1    # "holder":Lim/doit/pro/activity/SetReminderRingtoneDialog$ViewAdapter$ViewHolder;
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "tag":Ljava/lang/String;
    :cond_1
    new-instance v1, Lim/doit/pro/activity/SetReminderRingtoneDialog$ViewAdapter$RingtoneViewHolder;

    iget-object v6, p0, Lim/doit/pro/activity/SetReminderRingtoneDialog$ViewAdapter;->this$0:Lim/doit/pro/activity/SetReminderRingtoneDialog;

    invoke-virtual {v6}, Lim/doit/pro/activity/SetReminderRingtoneDialog;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v1, p0, v6}, Lim/doit/pro/activity/SetReminderRingtoneDialog$ViewAdapter$RingtoneViewHolder;-><init>(Lim/doit/pro/activity/SetReminderRingtoneDialog$ViewAdapter;Landroid/content/Context;)V

    .line 195
    .restart local v1    # "holder":Lim/doit/pro/activity/SetReminderRingtoneDialog$ViewAdapter$ViewHolder;
    goto :goto_0

    .end local v1    # "holder":Lim/doit/pro/activity/SetReminderRingtoneDialog$ViewAdapter$ViewHolder;
    :cond_2
    move-object v1, p2

    .line 196
    check-cast v1, Lim/doit/pro/activity/SetReminderRingtoneDialog$ViewAdapter$ViewHolder;

    .restart local v1    # "holder":Lim/doit/pro/activity/SetReminderRingtoneDialog$ViewAdapter$ViewHolder;
    goto :goto_0

    .line 203
    .restart local v0    # "checked":Z
    .restart local v2    # "name":Ljava/lang/String;
    .restart local v3    # "tag":Ljava/lang/String;
    :cond_3
    if-ne p1, v5, :cond_4

    .line 204
    const v6, 0x7f0c0119

    invoke-static {v6}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v2

    .line 205
    const-string v3, ""

    .line 206
    iget-object v6, p0, Lim/doit/pro/activity/SetReminderRingtoneDialog$ViewAdapter;->this$0:Lim/doit/pro/activity/SetReminderRingtoneDialog;

    invoke-static {v6}, Lim/doit/pro/activity/SetReminderRingtoneDialog;->access$2(Lim/doit/pro/activity/SetReminderRingtoneDialog;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lim/doit/pro/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    .line 207
    goto :goto_1

    .line 208
    :cond_4
    iget-object v6, p0, Lim/doit/pro/activity/SetReminderRingtoneDialog$ViewAdapter;->ringtoneNames:Ljava/util/List;

    add-int/lit8 v7, p1, -0x2

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "name":Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 209
    .restart local v2    # "name":Ljava/lang/String;
    iget-object v6, p0, Lim/doit/pro/activity/SetReminderRingtoneDialog$ViewAdapter;->ringtones:Ljava/util/LinkedHashMap;

    invoke-virtual {v6, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "tag":Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .line 210
    .restart local v3    # "tag":Ljava/lang/String;
    iget-object v6, p0, Lim/doit/pro/activity/SetReminderRingtoneDialog$ViewAdapter;->this$0:Lim/doit/pro/activity/SetReminderRingtoneDialog;

    invoke-static {v6}, Lim/doit/pro/activity/SetReminderRingtoneDialog;->access$2(Lim/doit/pro/activity/SetReminderRingtoneDialog;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Lim/doit/pro/activity/SetReminderRingtoneDialog$ViewAdapter;->this$0:Lim/doit/pro/activity/SetReminderRingtoneDialog;

    invoke-static {v6}, Lim/doit/pro/activity/SetReminderRingtoneDialog;->access$2(Lim/doit/pro/activity/SetReminderRingtoneDialog;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    move v0, v5

    :goto_2
    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 172
    const/4 v0, 0x2

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 278
    if-nez p1, :cond_0

    .line 279
    const/4 v0, 0x0

    .line 281
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/BaseAdapter;->isEnabled(I)Z

    move-result v0

    goto :goto_0
.end method
