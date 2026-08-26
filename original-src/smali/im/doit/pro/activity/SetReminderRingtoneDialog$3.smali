.class Lim/doit/pro/activity/SetReminderRingtoneDialog$3;
.super Ljava/lang/Object;
.source "SetReminderRingtoneDialog.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/activity/SetReminderRingtoneDialog;->initListener()V
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
.field final synthetic this$0:Lim/doit/pro/activity/SetReminderRingtoneDialog;


# direct methods
.method constructor <init>(Lim/doit/pro/activity/SetReminderRingtoneDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lim/doit/pro/activity/SetReminderRingtoneDialog$3;->this$0:Lim/doit/pro/activity/SetReminderRingtoneDialog;

    .line 104
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
    .line 109
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lim/doit/pro/activity/SetReminderRingtoneDialog$3;->this$0:Lim/doit/pro/activity/SetReminderRingtoneDialog;

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lim/doit/pro/activity/SetReminderRingtoneDialog;->access$7(Lim/doit/pro/activity/SetReminderRingtoneDialog;Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Lim/doit/pro/activity/SetReminderRingtoneDialog$3;->this$0:Lim/doit/pro/activity/SetReminderRingtoneDialog;

    invoke-static {v0}, Lim/doit/pro/activity/SetReminderRingtoneDialog;->access$8(Lim/doit/pro/activity/SetReminderRingtoneDialog;)Lim/doit/pro/activity/SetReminderRingtoneDialog$ViewAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lim/doit/pro/activity/SetReminderRingtoneDialog$ViewAdapter;->notifyDataSetChanged()V

    .line 111
    return-void
.end method
