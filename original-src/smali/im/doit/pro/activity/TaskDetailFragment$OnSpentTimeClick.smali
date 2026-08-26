.class Lim/doit/pro/activity/TaskDetailFragment$OnSpentTimeClick;
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
    name = "OnSpentTimeClick"
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/activity/TaskDetailFragment;


# direct methods
.method private constructor <init>(Lim/doit/pro/activity/TaskDetailFragment;)V
    .locals 0

    .prologue
    .line 1425
    iput-object p1, p0, Lim/doit/pro/activity/TaskDetailFragment$OnSpentTimeClick;->this$0:Lim/doit/pro/activity/TaskDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lim/doit/pro/activity/TaskDetailFragment;Lim/doit/pro/activity/TaskDetailFragment$OnSpentTimeClick;)V
    .locals 0

    .prologue
    .line 1425
    invoke-direct {p0, p1}, Lim/doit/pro/activity/TaskDetailFragment$OnSpentTimeClick;-><init>(Lim/doit/pro/activity/TaskDetailFragment;)V

    return-void
.end method


# virtual methods
.method public click(Landroid/view/View;)V
    .locals 11
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v10, 0x0

    .line 1429
    const/4 v2, 0x0

    .local v2, "hour":I
    const/4 v5, 0x0

    .line 1430
    .local v5, "minute":I
    iget-object v8, p0, Lim/doit/pro/activity/TaskDetailFragment$OnSpentTimeClick;->this$0:Lim/doit/pro/activity/TaskDetailFragment;

    invoke-static {v8}, Lim/doit/pro/activity/TaskDetailFragment;->access$0(Lim/doit/pro/activity/TaskDetailFragment;)Lim/doit/pro/model/Task;

    move-result-object v8

    invoke-virtual {v8}, Lim/doit/pro/model/Task;->getSpentTime()I

    move-result v7

    .line 1431
    .local v7, "time":I
    if-nez v7, :cond_0

    .line 1432
    iget-object v8, p0, Lim/doit/pro/activity/TaskDetailFragment$OnSpentTimeClick;->this$0:Lim/doit/pro/activity/TaskDetailFragment;

    invoke-static {v8}, Lim/doit/pro/activity/TaskDetailFragment;->access$0(Lim/doit/pro/activity/TaskDetailFragment;)Lim/doit/pro/model/Task;

    move-result-object v8

    invoke-virtual {v8}, Lim/doit/pro/model/Task;->getEstimatedTime()I

    move-result v8

    if-lez v8, :cond_2

    .line 1433
    iget-object v8, p0, Lim/doit/pro/activity/TaskDetailFragment$OnSpentTimeClick;->this$0:Lim/doit/pro/activity/TaskDetailFragment;

    invoke-static {v8}, Lim/doit/pro/activity/TaskDetailFragment;->access$0(Lim/doit/pro/activity/TaskDetailFragment;)Lim/doit/pro/model/Task;

    move-result-object v8

    invoke-virtual {v8}, Lim/doit/pro/model/Task;->getEstimatedTime()I

    move-result v7

    .line 1438
    :cond_0
    :goto_0
    div-int/lit8 v2, v7, 0x3c

    .line 1439
    rem-int/lit8 v5, v7, 0x3c

    .line 1440
    iget-object v8, p0, Lim/doit/pro/activity/TaskDetailFragment$OnSpentTimeClick;->this$0:Lim/doit/pro/activity/TaskDetailFragment;

    invoke-virtual {v8}, Lim/doit/pro/activity/TaskDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v4

    .line 1441
    .local v4, "manager":Landroid/support/v4/app/FragmentManager;
    invoke-virtual {v4}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 1442
    .local v1, "ft":Landroid/support/v4/app/FragmentTransaction;
    const-string v8, "time_dialog"

    invoke-virtual {v4, v8}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v6

    .line 1443
    .local v6, "prev":Landroid/support/v4/app/Fragment;
    if-eqz v6, :cond_1

    .line 1444
    invoke-virtual {v1, v6}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 1446
    :cond_1
    invoke-virtual {v1, v10}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 1448
    const/4 v8, -0x1

    const v9, 0x7f0d0193

    invoke-static {v8, v9, v2, v5}, Lcom/doomonafireball/betterpickers/timepicker/TimePickerDialogFragment;->newInstance(IIII)Lcom/doomonafireball/betterpickers/timepicker/TimePickerDialogFragment;

    move-result-object v0

    .line 1450
    .local v0, "fragment":Lcom/doomonafireball/betterpickers/timepicker/TimePickerDialogFragment;
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    .line 1451
    .local v3, "mTimePickerDialogHandlers":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/doomonafireball/betterpickers/timepicker/TimePickerDialogFragment$TimePickerDialogHandler;>;"
    new-instance v8, Lim/doit/pro/activity/TaskDetailFragment$SetSpentTimeCallBack;

    iget-object v9, p0, Lim/doit/pro/activity/TaskDetailFragment$OnSpentTimeClick;->this$0:Lim/doit/pro/activity/TaskDetailFragment;

    invoke-direct {v8, v9, v10}, Lim/doit/pro/activity/TaskDetailFragment$SetSpentTimeCallBack;-><init>(Lim/doit/pro/activity/TaskDetailFragment;Lim/doit/pro/activity/TaskDetailFragment$SetSpentTimeCallBack;)V

    invoke-virtual {v3, v8}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1452
    invoke-virtual {v0, v3}, Lcom/doomonafireball/betterpickers/timepicker/TimePickerDialogFragment;->setTimePickerDialogHandlers(Ljava/util/Vector;)V

    .line 1453
    const-string v8, "time_dialog"

    invoke-virtual {v0, v1, v8}, Lcom/doomonafireball/betterpickers/timepicker/TimePickerDialogFragment;->show(Landroid/support/v4/app/FragmentTransaction;Ljava/lang/String;)I

    .line 1454
    return-void

    .line 1435
    .end local v0    # "fragment":Lcom/doomonafireball/betterpickers/timepicker/TimePickerDialogFragment;
    .end local v1    # "ft":Landroid/support/v4/app/FragmentTransaction;
    .end local v3    # "mTimePickerDialogHandlers":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/doomonafireball/betterpickers/timepicker/TimePickerDialogFragment$TimePickerDialogHandler;>;"
    .end local v4    # "manager":Landroid/support/v4/app/FragmentManager;
    .end local v6    # "prev":Landroid/support/v4/app/Fragment;
    :cond_2
    const/16 v7, 0x3c

    goto :goto_0
.end method
