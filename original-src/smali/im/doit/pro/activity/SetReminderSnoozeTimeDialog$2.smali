.class Lim/doit/pro/activity/SetReminderSnoozeTimeDialog$2;
.super Ljava/lang/Object;
.source "SetReminderSnoozeTimeDialog.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/activity/SetReminderSnoozeTimeDialog;->initListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/activity/SetReminderSnoozeTimeDialog;


# direct methods
.method constructor <init>(Lim/doit/pro/activity/SetReminderSnoozeTimeDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lim/doit/pro/activity/SetReminderSnoozeTimeDialog$2;->this$0:Lim/doit/pro/activity/SetReminderSnoozeTimeDialog;

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 85
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lim/doit/pro/activity/SetReminderSnoozeTimeDialog$2;->this$0:Lim/doit/pro/activity/SetReminderSnoozeTimeDialog;

    invoke-static {v0}, Lim/doit/pro/activity/SetReminderSnoozeTimeDialog;->access$2(Lim/doit/pro/activity/SetReminderSnoozeTimeDialog;)Lim/doit/pro/activity/SetReminderSnoozeTimeDialog$ViewAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lim/doit/pro/activity/SetReminderSnoozeTimeDialog$ViewAdapter;->notifyDataSetChanged()V

    .line 86
    iget-object v0, p0, Lim/doit/pro/activity/SetReminderSnoozeTimeDialog$2;->this$0:Lim/doit/pro/activity/SetReminderSnoozeTimeDialog;

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lim/doit/pro/activity/SetReminderSnoozeTimeDialog;->access$3(Lim/doit/pro/activity/SetReminderSnoozeTimeDialog;I)V

    .line 87
    iget-object v0, p0, Lim/doit/pro/activity/SetReminderSnoozeTimeDialog$2;->this$0:Lim/doit/pro/activity/SetReminderSnoozeTimeDialog;

    invoke-static {v0}, Lim/doit/pro/activity/SetReminderSnoozeTimeDialog;->access$1(Lim/doit/pro/activity/SetReminderSnoozeTimeDialog;)I

    move-result v0

    invoke-static {v0}, Lim/doit/pro/utils/LocalSettings;->saveReminderSnoozeTime(I)V

    .line 88
    iget-object v0, p0, Lim/doit/pro/activity/SetReminderSnoozeTimeDialog$2;->this$0:Lim/doit/pro/activity/SetReminderSnoozeTimeDialog;

    invoke-static {v0}, Lim/doit/pro/activity/SetReminderSnoozeTimeDialog;->access$4(Lim/doit/pro/activity/SetReminderSnoozeTimeDialog;)Lim/doit/pro/activity/SetReminderSnoozeTimeDialog$OnSetReminderSnoozeTimeFinishListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lim/doit/pro/activity/SetReminderSnoozeTimeDialog$2;->this$0:Lim/doit/pro/activity/SetReminderSnoozeTimeDialog;

    invoke-static {v0}, Lim/doit/pro/activity/SetReminderSnoozeTimeDialog;->access$4(Lim/doit/pro/activity/SetReminderSnoozeTimeDialog;)Lim/doit/pro/activity/SetReminderSnoozeTimeDialog$OnSetReminderSnoozeTimeFinishListener;

    move-result-object v0

    iget-object v1, p0, Lim/doit/pro/activity/SetReminderSnoozeTimeDialog$2;->this$0:Lim/doit/pro/activity/SetReminderSnoozeTimeDialog;

    invoke-static {v1}, Lim/doit/pro/activity/SetReminderSnoozeTimeDialog;->access$1(Lim/doit/pro/activity/SetReminderSnoozeTimeDialog;)I

    move-result v1

    invoke-interface {v0, v1}, Lim/doit/pro/activity/SetReminderSnoozeTimeDialog$OnSetReminderSnoozeTimeFinishListener;->finish(I)V

    .line 91
    :cond_0
    iget-object v0, p0, Lim/doit/pro/activity/SetReminderSnoozeTimeDialog$2;->this$0:Lim/doit/pro/activity/SetReminderSnoozeTimeDialog;

    invoke-virtual {v0}, Lim/doit/pro/activity/SetReminderSnoozeTimeDialog;->dismissAllowingStateLoss()V

    .line 92
    return-void
.end method
