.class Lim/doit/pro/ui/component/SelectRemindersDialog$7;
.super Ljava/lang/Object;
.source "SelectRemindersDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/ui/component/SelectRemindersDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/ui/component/SelectRemindersDialog;


# direct methods
.method constructor <init>(Lim/doit/pro/ui/component/SelectRemindersDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lim/doit/pro/ui/component/SelectRemindersDialog$7;->this$0:Lim/doit/pro/ui/component/SelectRemindersDialog;

    .line 522
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/16 v9, 0xc

    .line 526
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 527
    .local v2, "position":I
    iget-object v7, p0, Lim/doit/pro/ui/component/SelectRemindersDialog$7;->this$0:Lim/doit/pro/ui/component/SelectRemindersDialog;

    invoke-static {v7}, Lim/doit/pro/ui/component/SelectRemindersDialog;->access$0(Lim/doit/pro/ui/component/SelectRemindersDialog;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lim/doit/pro/ui/component/SelectRemindersDialog$ListData;

    .line 528
    .local v1, "listData":Lim/doit/pro/ui/component/SelectRemindersDialog$ListData;
    iget-object v3, v1, Lim/doit/pro/ui/component/SelectRemindersDialog$ListData;->reminder:Lim/doit/pro/model/Reminder;

    .line 529
    .local v3, "reminder":Lim/doit/pro/model/Reminder;
    iget-object v7, p0, Lim/doit/pro/ui/component/SelectRemindersDialog$7;->this$0:Lim/doit/pro/ui/component/SelectRemindersDialog;

    invoke-static {v7}, Lim/doit/pro/ui/component/SelectRemindersDialog;->access$7(Lim/doit/pro/ui/component/SelectRemindersDialog;)Ljava/util/Calendar;

    move-result-object v7

    invoke-virtual {v3}, Lim/doit/pro/model/Reminder;->getTime()Ljava/util/Calendar;

    move-result-object v8

    invoke-static {v7, v8}, Lim/doit/pro/utils/DateUtils;->diffMinute(Ljava/util/Calendar;Ljava/util/Calendar;)I

    move-result v6

    .line 530
    .local v6, "time":I
    iget-object v7, p0, Lim/doit/pro/ui/component/SelectRemindersDialog$7;->this$0:Lim/doit/pro/ui/component/SelectRemindersDialog;

    invoke-static {v7}, Lim/doit/pro/ui/component/SelectRemindersDialog;->access$7(Lim/doit/pro/ui/component/SelectRemindersDialog;)Ljava/util/Calendar;

    move-result-object v7

    invoke-static {v7}, Lim/doit/pro/utils/DateUtils;->copyDate(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v4

    .line 531
    .local v4, "reminderTime":Ljava/util/Calendar;
    invoke-static {}, Lim/doit/pro/ui/component/SelectRemindersDialog;->access$8()Ljava/util/List;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-gt v6, v7, :cond_1

    .line 532
    invoke-static {}, Lim/doit/pro/ui/component/SelectRemindersDialog;->access$8()Ljava/util/List;

    move-result-object v7

    invoke-static {}, Lim/doit/pro/ui/component/SelectRemindersDialog;->access$8()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    neg-int v7, v7

    invoke-virtual {v4, v9, v7}, Ljava/util/Calendar;->add(II)V

    .line 543
    :goto_0
    invoke-virtual {v3, v4}, Lim/doit/pro/model/Reminder;->setTime(Ljava/util/Calendar;)V

    .line 545
    iget-boolean v7, v1, Lim/doit/pro/ui/component/SelectRemindersDialog$ListData;->isSelected:Z

    if-nez v7, :cond_0

    iget-object v7, p0, Lim/doit/pro/ui/component/SelectRemindersDialog$7;->this$0:Lim/doit/pro/ui/component/SelectRemindersDialog;

    invoke-static {v7}, Lim/doit/pro/ui/component/SelectRemindersDialog;->access$3(Lim/doit/pro/ui/component/SelectRemindersDialog;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 546
    const/4 v7, 0x1

    iput-boolean v7, v1, Lim/doit/pro/ui/component/SelectRemindersDialog$ListData;->isSelected:Z

    .line 547
    iget-object v7, p0, Lim/doit/pro/ui/component/SelectRemindersDialog$7;->this$0:Lim/doit/pro/ui/component/SelectRemindersDialog;

    invoke-static {v7, v1}, Lim/doit/pro/ui/component/SelectRemindersDialog;->access$6(Lim/doit/pro/ui/component/SelectRemindersDialog;Lim/doit/pro/ui/component/SelectRemindersDialog$ListData;)V

    .line 549
    :cond_0
    iget-object v7, p0, Lim/doit/pro/ui/component/SelectRemindersDialog$7;->this$0:Lim/doit/pro/ui/component/SelectRemindersDialog;

    invoke-static {v7}, Lim/doit/pro/ui/component/SelectRemindersDialog;->access$2(Lim/doit/pro/ui/component/SelectRemindersDialog;)Lim/doit/pro/ui/component/SelectRemindersDialog$ListAdapter;

    move-result-object v7

    invoke-virtual {v7}, Lim/doit/pro/ui/component/SelectRemindersDialog$ListAdapter;->notifyDataSetChanged()V

    .line 550
    return-void

    .line 534
    :cond_1
    invoke-static {}, Lim/doit/pro/ui/component/SelectRemindersDialog;->access$8()Ljava/util/List;

    move-result-object v7

    invoke-static {}, Lim/doit/pro/ui/component/SelectRemindersDialog;->access$8()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 535
    .local v5, "tempTime":I
    invoke-static {}, Lim/doit/pro/ui/component/SelectRemindersDialog;->access$8()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_3

    .line 541
    :cond_2
    neg-int v7, v5

    invoke-virtual {v4, v9, v7}, Ljava/util/Calendar;->add(II)V

    goto :goto_0

    .line 535
    :cond_3
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 536
    .local v0, "item":I
    if-le v6, v0, :cond_2

    .line 539
    move v5, v0

    goto :goto_1
.end method
