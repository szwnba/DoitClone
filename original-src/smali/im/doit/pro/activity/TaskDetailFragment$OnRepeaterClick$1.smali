.class Lim/doit/pro/activity/TaskDetailFragment$OnRepeaterClick$1;
.super Ljava/lang/Object;
.source "TaskDetailFragment.java"

# interfaces
.implements Lim/doit/pro/ui/component/SelectRepeatDialog$OnSelectFinishListner;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/activity/TaskDetailFragment$OnRepeaterClick;->click(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lim/doit/pro/activity/TaskDetailFragment$OnRepeaterClick;


# direct methods
.method constructor <init>(Lim/doit/pro/activity/TaskDetailFragment$OnRepeaterClick;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lim/doit/pro/activity/TaskDetailFragment$OnRepeaterClick$1;->this$1:Lim/doit/pro/activity/TaskDetailFragment$OnRepeaterClick;

    .line 1562
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public finish(Lim/doit/pro/model/Repeater;)V
    .locals 6
    .param p1, "repeater"    # Lim/doit/pro/model/Repeater;

    .prologue
    const/4 v5, 0x1

    .line 1567
    iget-object v4, p0, Lim/doit/pro/activity/TaskDetailFragment$OnRepeaterClick$1;->this$1:Lim/doit/pro/activity/TaskDetailFragment$OnRepeaterClick;

    invoke-static {v4}, Lim/doit/pro/activity/TaskDetailFragment$OnRepeaterClick;->access$1(Lim/doit/pro/activity/TaskDetailFragment$OnRepeaterClick;)Lim/doit/pro/activity/TaskDetailFragment;

    move-result-object v4

    invoke-static {v4}, Lim/doit/pro/activity/TaskDetailFragment;->access$0(Lim/doit/pro/activity/TaskDetailFragment;)Lim/doit/pro/model/Task;

    move-result-object v4

    invoke-virtual {v4}, Lim/doit/pro/model/Task;->getStartAt()Ljava/util/Calendar;

    move-result-object v4

    if-nez v4, :cond_0

    .line 1568
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 1569
    .local v3, "startAt":Ljava/util/Calendar;
    iget-object v4, p0, Lim/doit/pro/activity/TaskDetailFragment$OnRepeaterClick$1;->this$1:Lim/doit/pro/activity/TaskDetailFragment$OnRepeaterClick;

    invoke-static {v4}, Lim/doit/pro/activity/TaskDetailFragment$OnRepeaterClick;->access$1(Lim/doit/pro/activity/TaskDetailFragment$OnRepeaterClick;)Lim/doit/pro/activity/TaskDetailFragment;

    move-result-object v4

    invoke-static {v4}, Lim/doit/pro/activity/TaskDetailFragment;->access$0(Lim/doit/pro/activity/TaskDetailFragment;)Lim/doit/pro/model/Task;

    move-result-object v4

    invoke-virtual {v4}, Lim/doit/pro/model/Task;->isAllDay()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1570
    invoke-static {v3}, Lim/doit/pro/utils/DateUtils;->startOfDate(Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 1574
    :goto_0
    sget-object v0, Lim/doit/pro/model/enums/Attribute;->plan:Lim/doit/pro/model/enums/Attribute;

    .line 1575
    .local v0, "attribute":Lim/doit/pro/model/enums/Attribute;
    iget-object v4, p0, Lim/doit/pro/activity/TaskDetailFragment$OnRepeaterClick$1;->this$1:Lim/doit/pro/activity/TaskDetailFragment$OnRepeaterClick;

    invoke-static {v4}, Lim/doit/pro/activity/TaskDetailFragment$OnRepeaterClick;->access$1(Lim/doit/pro/activity/TaskDetailFragment$OnRepeaterClick;)Lim/doit/pro/activity/TaskDetailFragment;

    move-result-object v4

    invoke-static {v4}, Lim/doit/pro/activity/TaskDetailFragment;->access$0(Lim/doit/pro/activity/TaskDetailFragment;)Lim/doit/pro/model/Task;

    move-result-object v4

    invoke-virtual {v4, v0}, Lim/doit/pro/model/Task;->setAttribute(Lim/doit/pro/model/enums/Attribute;)V

    .line 1576
    iget-object v4, p0, Lim/doit/pro/activity/TaskDetailFragment$OnRepeaterClick$1;->this$1:Lim/doit/pro/activity/TaskDetailFragment$OnRepeaterClick;

    invoke-static {v4}, Lim/doit/pro/activity/TaskDetailFragment$OnRepeaterClick;->access$1(Lim/doit/pro/activity/TaskDetailFragment$OnRepeaterClick;)Lim/doit/pro/activity/TaskDetailFragment;

    move-result-object v4

    invoke-static {v4}, Lim/doit/pro/activity/TaskDetailFragment;->access$0(Lim/doit/pro/activity/TaskDetailFragment;)Lim/doit/pro/model/Task;

    move-result-object v4

    invoke-virtual {v4, v3}, Lim/doit/pro/model/Task;->setStartAt(Ljava/util/Calendar;)V

    .line 1577
    iget-object v4, p0, Lim/doit/pro/activity/TaskDetailFragment$OnRepeaterClick$1;->this$1:Lim/doit/pro/activity/TaskDetailFragment$OnRepeaterClick;

    invoke-static {v4}, Lim/doit/pro/activity/TaskDetailFragment$OnRepeaterClick;->access$1(Lim/doit/pro/activity/TaskDetailFragment$OnRepeaterClick;)Lim/doit/pro/activity/TaskDetailFragment;

    move-result-object v4

    invoke-static {v4}, Lim/doit/pro/activity/TaskDetailFragment;->access$0(Lim/doit/pro/activity/TaskDetailFragment;)Lim/doit/pro/model/Task;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lim/doit/pro/model/Task;->updateAfterStartAtChange(Ljava/util/Calendar;)V

    .line 1578
    iget-object v4, p0, Lim/doit/pro/activity/TaskDetailFragment$OnRepeaterClick$1;->this$1:Lim/doit/pro/activity/TaskDetailFragment$OnRepeaterClick;

    invoke-static {v4}, Lim/doit/pro/activity/TaskDetailFragment$OnRepeaterClick;->access$1(Lim/doit/pro/activity/TaskDetailFragment$OnRepeaterClick;)Lim/doit/pro/activity/TaskDetailFragment;

    move-result-object v4

    invoke-static {v4}, Lim/doit/pro/activity/TaskDetailFragment;->access$1(Lim/doit/pro/activity/TaskDetailFragment;)Z

    .line 1579
    iget-object v4, p0, Lim/doit/pro/activity/TaskDetailFragment$OnRepeaterClick$1;->this$1:Lim/doit/pro/activity/TaskDetailFragment$OnRepeaterClick;

    invoke-static {v4}, Lim/doit/pro/activity/TaskDetailFragment$OnRepeaterClick;->access$1(Lim/doit/pro/activity/TaskDetailFragment$OnRepeaterClick;)Lim/doit/pro/activity/TaskDetailFragment;

    move-result-object v4

    invoke-static {v4}, Lim/doit/pro/activity/TaskDetailFragment;->access$13(Lim/doit/pro/activity/TaskDetailFragment;)V

    .line 1580
    iget-object v4, p0, Lim/doit/pro/activity/TaskDetailFragment$OnRepeaterClick$1;->this$1:Lim/doit/pro/activity/TaskDetailFragment$OnRepeaterClick;

    invoke-static {v4}, Lim/doit/pro/activity/TaskDetailFragment$OnRepeaterClick;->access$1(Lim/doit/pro/activity/TaskDetailFragment$OnRepeaterClick;)Lim/doit/pro/activity/TaskDetailFragment;

    move-result-object v4

    invoke-static {v4}, Lim/doit/pro/activity/TaskDetailFragment;->access$14(Lim/doit/pro/activity/TaskDetailFragment;)V

    .line 1581
    iget-object v4, p0, Lim/doit/pro/activity/TaskDetailFragment$OnRepeaterClick$1;->this$1:Lim/doit/pro/activity/TaskDetailFragment$OnRepeaterClick;

    invoke-static {v4}, Lim/doit/pro/activity/TaskDetailFragment$OnRepeaterClick;->access$1(Lim/doit/pro/activity/TaskDetailFragment$OnRepeaterClick;)Lim/doit/pro/activity/TaskDetailFragment;

    move-result-object v4

    invoke-static {v4}, Lim/doit/pro/activity/TaskDetailFragment;->access$20(Lim/doit/pro/activity/TaskDetailFragment;)V

    .line 1582
    iget-object v4, p0, Lim/doit/pro/activity/TaskDetailFragment$OnRepeaterClick$1;->this$1:Lim/doit/pro/activity/TaskDetailFragment$OnRepeaterClick;

    invoke-static {v4}, Lim/doit/pro/activity/TaskDetailFragment$OnRepeaterClick;->access$1(Lim/doit/pro/activity/TaskDetailFragment$OnRepeaterClick;)Lim/doit/pro/activity/TaskDetailFragment;

    move-result-object v4

    invoke-static {v4}, Lim/doit/pro/activity/TaskDetailFragment;->access$19(Lim/doit/pro/activity/TaskDetailFragment;)V

    .line 1583
    iget-object v4, p0, Lim/doit/pro/activity/TaskDetailFragment$OnRepeaterClick$1;->this$1:Lim/doit/pro/activity/TaskDetailFragment$OnRepeaterClick;

    invoke-static {v4}, Lim/doit/pro/activity/TaskDetailFragment$OnRepeaterClick;->access$1(Lim/doit/pro/activity/TaskDetailFragment$OnRepeaterClick;)Lim/doit/pro/activity/TaskDetailFragment;

    move-result-object v4

    invoke-static {v4}, Lim/doit/pro/activity/TaskDetailFragment;->access$15(Lim/doit/pro/activity/TaskDetailFragment;)V

    .line 1584
    iget-object v4, p0, Lim/doit/pro/activity/TaskDetailFragment$OnRepeaterClick$1;->this$1:Lim/doit/pro/activity/TaskDetailFragment$OnRepeaterClick;

    invoke-static {v4}, Lim/doit/pro/activity/TaskDetailFragment$OnRepeaterClick;->access$1(Lim/doit/pro/activity/TaskDetailFragment$OnRepeaterClick;)Lim/doit/pro/activity/TaskDetailFragment;

    move-result-object v4

    invoke-static {v4}, Lim/doit/pro/activity/TaskDetailFragment;->access$8(Lim/doit/pro/activity/TaskDetailFragment;)V

    .line 1586
    .end local v0    # "attribute":Lim/doit/pro/model/enums/Attribute;
    .end local v3    # "startAt":Ljava/util/Calendar;
    :cond_0
    iget-object v4, p0, Lim/doit/pro/activity/TaskDetailFragment$OnRepeaterClick$1;->this$1:Lim/doit/pro/activity/TaskDetailFragment$OnRepeaterClick;

    invoke-static {v4}, Lim/doit/pro/activity/TaskDetailFragment$OnRepeaterClick;->access$1(Lim/doit/pro/activity/TaskDetailFragment$OnRepeaterClick;)Lim/doit/pro/activity/TaskDetailFragment;

    move-result-object v4

    invoke-static {v4}, Lim/doit/pro/activity/TaskDetailFragment;->access$0(Lim/doit/pro/activity/TaskDetailFragment;)Lim/doit/pro/model/Task;

    move-result-object v4

    invoke-virtual {v4, p1}, Lim/doit/pro/model/Task;->setRepeater(Lim/doit/pro/model/Repeater;)V

    .line 1587
    iget-object v4, p0, Lim/doit/pro/activity/TaskDetailFragment$OnRepeaterClick$1;->this$1:Lim/doit/pro/activity/TaskDetailFragment$OnRepeaterClick;

    invoke-static {v4}, Lim/doit/pro/activity/TaskDetailFragment$OnRepeaterClick;->access$1(Lim/doit/pro/activity/TaskDetailFragment$OnRepeaterClick;)Lim/doit/pro/activity/TaskDetailFragment;

    move-result-object v4

    invoke-static {v4}, Lim/doit/pro/activity/TaskDetailFragment;->access$0(Lim/doit/pro/activity/TaskDetailFragment;)Lim/doit/pro/model/Task;

    move-result-object v4

    invoke-virtual {v4}, Lim/doit/pro/model/Task;->getRepeater()Lim/doit/pro/model/Repeater;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 1588
    iget-object v4, p0, Lim/doit/pro/activity/TaskDetailFragment$OnRepeaterClick$1;->this$1:Lim/doit/pro/activity/TaskDetailFragment$OnRepeaterClick;

    invoke-static {v4}, Lim/doit/pro/activity/TaskDetailFragment$OnRepeaterClick;->access$1(Lim/doit/pro/activity/TaskDetailFragment$OnRepeaterClick;)Lim/doit/pro/activity/TaskDetailFragment;

    move-result-object v4

    invoke-static {v4}, Lim/doit/pro/activity/TaskDetailFragment;->access$0(Lim/doit/pro/activity/TaskDetailFragment;)Lim/doit/pro/model/Task;

    move-result-object v4

    invoke-virtual {v4}, Lim/doit/pro/model/Task;->getReminders()Ljava/util/ArrayList;

    move-result-object v4

    invoke-static {v4}, Lim/doit/pro/utils/CollectionUtils;->isNotEmpty(Ljava/util/List;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1590
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1591
    .local v2, "reminders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/Reminder;>;"
    iget-object v4, p0, Lim/doit/pro/activity/TaskDetailFragment$OnRepeaterClick$1;->this$1:Lim/doit/pro/activity/TaskDetailFragment$OnRepeaterClick;

    invoke-static {v4}, Lim/doit/pro/activity/TaskDetailFragment$OnRepeaterClick;->access$1(Lim/doit/pro/activity/TaskDetailFragment$OnRepeaterClick;)Lim/doit/pro/activity/TaskDetailFragment;

    move-result-object v4

    invoke-static {v4}, Lim/doit/pro/activity/TaskDetailFragment;->access$0(Lim/doit/pro/activity/TaskDetailFragment;)Lim/doit/pro/model/Task;

    move-result-object v4

    invoke-virtual {v4}, Lim/doit/pro/model/Task;->getReminders()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_4

    .line 1596
    iget-object v4, p0, Lim/doit/pro/activity/TaskDetailFragment$OnRepeaterClick$1;->this$1:Lim/doit/pro/activity/TaskDetailFragment$OnRepeaterClick;

    invoke-static {v4}, Lim/doit/pro/activity/TaskDetailFragment$OnRepeaterClick;->access$1(Lim/doit/pro/activity/TaskDetailFragment$OnRepeaterClick;)Lim/doit/pro/activity/TaskDetailFragment;

    move-result-object v4

    invoke-static {v4}, Lim/doit/pro/activity/TaskDetailFragment;->access$0(Lim/doit/pro/activity/TaskDetailFragment;)Lim/doit/pro/model/Task;

    move-result-object v4

    invoke-virtual {v4, v2}, Lim/doit/pro/model/Task;->setReminders(Ljava/util/ArrayList;)V

    .line 1597
    iget-object v4, p0, Lim/doit/pro/activity/TaskDetailFragment$OnRepeaterClick$1;->this$1:Lim/doit/pro/activity/TaskDetailFragment$OnRepeaterClick;

    invoke-static {v4}, Lim/doit/pro/activity/TaskDetailFragment$OnRepeaterClick;->access$1(Lim/doit/pro/activity/TaskDetailFragment$OnRepeaterClick;)Lim/doit/pro/activity/TaskDetailFragment;

    move-result-object v4

    invoke-static {v4}, Lim/doit/pro/activity/TaskDetailFragment;->access$8(Lim/doit/pro/activity/TaskDetailFragment;)V

    .line 1599
    .end local v2    # "reminders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/Reminder;>;"
    :cond_2
    iget-object v4, p0, Lim/doit/pro/activity/TaskDetailFragment$OnRepeaterClick$1;->this$1:Lim/doit/pro/activity/TaskDetailFragment$OnRepeaterClick;

    invoke-static {v4}, Lim/doit/pro/activity/TaskDetailFragment$OnRepeaterClick;->access$1(Lim/doit/pro/activity/TaskDetailFragment$OnRepeaterClick;)Lim/doit/pro/activity/TaskDetailFragment;

    move-result-object v4

    invoke-static {v4}, Lim/doit/pro/activity/TaskDetailFragment;->access$15(Lim/doit/pro/activity/TaskDetailFragment;)V

    .line 1600
    return-void

    .line 1572
    .restart local v3    # "startAt":Ljava/util/Calendar;
    :cond_3
    invoke-static {v3, v5, v5}, Lim/doit/pro/utils/DateUtils;->addCurrentDateHour(Ljava/util/Calendar;IZ)V

    goto/16 :goto_0

    .line 1591
    .end local v3    # "startAt":Ljava/util/Calendar;
    .restart local v2    # "reminders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/Reminder;>;"
    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lim/doit/pro/model/Reminder;

    .line 1592
    .local v1, "reminder":Lim/doit/pro/model/Reminder;
    invoke-virtual {v1}, Lim/doit/pro/model/Reminder;->isRelative()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1593
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method
