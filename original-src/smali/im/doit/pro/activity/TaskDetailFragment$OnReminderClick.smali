.class Lim/doit/pro/activity/TaskDetailFragment$OnReminderClick;
.super Ljava/lang/Object;
.source "TaskDetailFragment.java"

# interfaces
.implements Lim/doit/pro/activity/listener/OnLayoutClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/activity/TaskDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnReminderClick"
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/activity/TaskDetailFragment;


# direct methods
.method private constructor <init>(Lim/doit/pro/activity/TaskDetailFragment;)V
    .locals 0

    .prologue
    .line 1606
    iput-object p1, p0, Lim/doit/pro/activity/TaskDetailFragment$OnReminderClick;->this$0:Lim/doit/pro/activity/TaskDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lim/doit/pro/activity/TaskDetailFragment;Lim/doit/pro/activity/TaskDetailFragment$OnReminderClick;)V
    .locals 0

    .prologue
    .line 1606
    invoke-direct {p0, p1}, Lim/doit/pro/activity/TaskDetailFragment$OnReminderClick;-><init>(Lim/doit/pro/activity/TaskDetailFragment;)V

    return-void
.end method

.method static synthetic access$1(Lim/doit/pro/activity/TaskDetailFragment$OnReminderClick;)Lim/doit/pro/activity/TaskDetailFragment;
    .locals 1

    .prologue
    .line 1606
    iget-object v0, p0, Lim/doit/pro/activity/TaskDetailFragment$OnReminderClick;->this$0:Lim/doit/pro/activity/TaskDetailFragment;

    return-object v0
.end method


# virtual methods
.method public click(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1609
    new-instance v0, Lim/doit/pro/ui/component/SelectRemindersDialog;

    .line 1610
    iget-object v1, p0, Lim/doit/pro/activity/TaskDetailFragment$OnReminderClick;->this$0:Lim/doit/pro/activity/TaskDetailFragment;

    invoke-virtual {v1}, Lim/doit/pro/activity/TaskDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 1609
    invoke-direct {v0, v1}, Lim/doit/pro/ui/component/SelectRemindersDialog;-><init>(Landroid/app/Activity;)V

    .line 1611
    .local v0, "dialog":Lim/doit/pro/ui/component/SelectRemindersDialog;
    new-instance v1, Lim/doit/pro/activity/TaskDetailFragment$OnReminderClick$1;

    invoke-direct {v1, p0}, Lim/doit/pro/activity/TaskDetailFragment$OnReminderClick$1;-><init>(Lim/doit/pro/activity/TaskDetailFragment$OnReminderClick;)V

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/SelectRemindersDialog;->setOnSelectRemindersFinishListner(Lim/doit/pro/ui/component/SelectRemindersDialog$OnSelectRemindersFinishListner;)V

    .line 1620
    iget-object v1, p0, Lim/doit/pro/activity/TaskDetailFragment$OnReminderClick;->this$0:Lim/doit/pro/activity/TaskDetailFragment;

    invoke-static {v1}, Lim/doit/pro/activity/TaskDetailFragment;->access$0(Lim/doit/pro/activity/TaskDetailFragment;)Lim/doit/pro/model/Task;

    move-result-object v1

    invoke-virtual {v1}, Lim/doit/pro/model/Task;->getReminders()Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lim/doit/pro/activity/TaskDetailFragment$OnReminderClick;->this$0:Lim/doit/pro/activity/TaskDetailFragment;

    invoke-static {v2}, Lim/doit/pro/activity/TaskDetailFragment;->access$0(Lim/doit/pro/activity/TaskDetailFragment;)Lim/doit/pro/model/Task;

    move-result-object v2

    invoke-virtual {v2}, Lim/doit/pro/model/Task;->getStartAt()Ljava/util/Calendar;

    move-result-object v2

    .line 1621
    iget-object v3, p0, Lim/doit/pro/activity/TaskDetailFragment$OnReminderClick;->this$0:Lim/doit/pro/activity/TaskDetailFragment;

    invoke-static {v3}, Lim/doit/pro/activity/TaskDetailFragment;->access$0(Lim/doit/pro/activity/TaskDetailFragment;)Lim/doit/pro/model/Task;

    move-result-object v3

    invoke-virtual {v3}, Lim/doit/pro/model/Task;->isAllDay()Z

    move-result v3

    iget-object v4, p0, Lim/doit/pro/activity/TaskDetailFragment$OnReminderClick;->this$0:Lim/doit/pro/activity/TaskDetailFragment;

    invoke-static {v4}, Lim/doit/pro/activity/TaskDetailFragment;->access$0(Lim/doit/pro/activity/TaskDetailFragment;)Lim/doit/pro/model/Task;

    move-result-object v4

    invoke-virtual {v4}, Lim/doit/pro/model/Task;->isRepeat()Z

    move-result v4

    .line 1620
    invoke-virtual {v0, v1, v2, v3, v4}, Lim/doit/pro/ui/component/SelectRemindersDialog;->showDialog(Ljava/util/ArrayList;Ljava/util/Calendar;ZZ)V

    .line 1622
    return-void
.end method
