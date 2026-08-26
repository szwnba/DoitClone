.class Lim/doit/pro/activity/RemindPopupActivity$ReminderPopupAdapter;
.super Landroid/support/v4/app/FragmentStatePagerAdapter;
.source "RemindPopupActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/activity/RemindPopupActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReminderPopupAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/activity/RemindPopupActivity;


# direct methods
.method public constructor <init>(Lim/doit/pro/activity/RemindPopupActivity;Landroid/support/v4/app/FragmentManager;)V
    .locals 0
    .param p2, "fm"    # Landroid/support/v4/app/FragmentManager;

    .prologue
    .line 124
    iput-object p1, p0, Lim/doit/pro/activity/RemindPopupActivity$ReminderPopupAdapter;->this$0:Lim/doit/pro/activity/RemindPopupActivity;

    .line 125
    invoke-direct {p0, p2}, Landroid/support/v4/app/FragmentStatePagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 126
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lim/doit/pro/activity/RemindPopupActivity$ReminderPopupAdapter;->this$0:Lim/doit/pro/activity/RemindPopupActivity;

    invoke-static {v0}, Lim/doit/pro/activity/RemindPopupActivity;->access$0(Lim/doit/pro/activity/RemindPopupActivity;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    .line 131
    const/4 v0, 0x0

    .line 133
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lim/doit/pro/activity/RemindPopupActivity$ReminderPopupAdapter;->this$0:Lim/doit/pro/activity/RemindPopupActivity;

    invoke-static {v0}, Lim/doit/pro/activity/RemindPopupActivity;->access$0(Lim/doit/pro/activity/RemindPopupActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 138
    iget-object v0, p0, Lim/doit/pro/activity/RemindPopupActivity$ReminderPopupAdapter;->this$0:Lim/doit/pro/activity/RemindPopupActivity;

    invoke-static {v0}, Lim/doit/pro/activity/RemindPopupActivity;->access$0(Lim/doit/pro/activity/RemindPopupActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lim/doit/pro/db/metadata/ReminderMessage;

    invoke-static {v0}, Lim/doit/pro/ui/component/ReminderPopupView;->newInstance(Lim/doit/pro/db/metadata/ReminderMessage;)Lim/doit/pro/ui/component/ReminderPopupView;

    move-result-object v0

    return-object v0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 143
    const/4 v0, -0x2

    return v0
.end method
