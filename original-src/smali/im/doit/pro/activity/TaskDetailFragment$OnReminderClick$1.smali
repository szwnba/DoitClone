.class Lim/doit/pro/activity/TaskDetailFragment$OnReminderClick$1;
.super Ljava/lang/Object;
.source "TaskDetailFragment.java"

# interfaces
.implements Lim/doit/pro/ui/component/SelectRemindersDialog$OnSelectRemindersFinishListner;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/activity/TaskDetailFragment$OnReminderClick;->click(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lim/doit/pro/activity/TaskDetailFragment$OnReminderClick;


# direct methods
.method constructor <init>(Lim/doit/pro/activity/TaskDetailFragment$OnReminderClick;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lim/doit/pro/activity/TaskDetailFragment$OnReminderClick$1;->this$1:Lim/doit/pro/activity/TaskDetailFragment$OnReminderClick;

    .line 1611
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public finish(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lim/doit/pro/model/Reminder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1615
    .local p1, "reminders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/Reminder;>;"
    iget-object v0, p0, Lim/doit/pro/activity/TaskDetailFragment$OnReminderClick$1;->this$1:Lim/doit/pro/activity/TaskDetailFragment$OnReminderClick;

    invoke-static {v0}, Lim/doit/pro/activity/TaskDetailFragment$OnReminderClick;->access$1(Lim/doit/pro/activity/TaskDetailFragment$OnReminderClick;)Lim/doit/pro/activity/TaskDetailFragment;

    move-result-object v0

    invoke-static {v0}, Lim/doit/pro/activity/TaskDetailFragment;->access$0(Lim/doit/pro/activity/TaskDetailFragment;)Lim/doit/pro/model/Task;

    move-result-object v0

    invoke-virtual {v0, p1}, Lim/doit/pro/model/Task;->setReminders(Ljava/util/ArrayList;)V

    .line 1616
    iget-object v0, p0, Lim/doit/pro/activity/TaskDetailFragment$OnReminderClick$1;->this$1:Lim/doit/pro/activity/TaskDetailFragment$OnReminderClick;

    invoke-static {v0}, Lim/doit/pro/activity/TaskDetailFragment$OnReminderClick;->access$1(Lim/doit/pro/activity/TaskDetailFragment$OnReminderClick;)Lim/doit/pro/activity/TaskDetailFragment;

    move-result-object v0

    invoke-static {v0}, Lim/doit/pro/activity/TaskDetailFragment;->access$1(Lim/doit/pro/activity/TaskDetailFragment;)Z

    .line 1617
    iget-object v0, p0, Lim/doit/pro/activity/TaskDetailFragment$OnReminderClick$1;->this$1:Lim/doit/pro/activity/TaskDetailFragment$OnReminderClick;

    invoke-static {v0}, Lim/doit/pro/activity/TaskDetailFragment$OnReminderClick;->access$1(Lim/doit/pro/activity/TaskDetailFragment$OnReminderClick;)Lim/doit/pro/activity/TaskDetailFragment;

    move-result-object v0

    invoke-static {v0}, Lim/doit/pro/activity/TaskDetailFragment;->access$8(Lim/doit/pro/activity/TaskDetailFragment;)V

    .line 1618
    return-void
.end method
