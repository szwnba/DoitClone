.class Lim/doit/pro/activity/TaskDetailFragment$OnEstimatedTimeClick;
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
    name = "OnEstimatedTimeClick"
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/activity/TaskDetailFragment;


# direct methods
.method private constructor <init>(Lim/doit/pro/activity/TaskDetailFragment;)V
    .locals 0

    .prologue
    .line 1400
    iput-object p1, p0, Lim/doit/pro/activity/TaskDetailFragment$OnEstimatedTimeClick;->this$0:Lim/doit/pro/activity/TaskDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lim/doit/pro/activity/TaskDetailFragment;Lim/doit/pro/activity/TaskDetailFragment$OnEstimatedTimeClick;)V
    .locals 0

    .prologue
    .line 1400
    invoke-direct {p0, p1}, Lim/doit/pro/activity/TaskDetailFragment$OnEstimatedTimeClick;-><init>(Lim/doit/pro/activity/TaskDetailFragment;)V

    return-void
.end method


# virtual methods
.method public click(Landroid/view/View;)V
    .locals 10
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v9, 0x0

    .line 1403
    const/4 v2, 0x0

    .local v2, "hour":I
    const/4 v5, 0x0

    .line 1404
    .local v5, "minute":I
    iget-object v7, p0, Lim/doit/pro/activity/TaskDetailFragment$OnEstimatedTimeClick;->this$0:Lim/doit/pro/activity/TaskDetailFragment;

    invoke-static {v7}, Lim/doit/pro/activity/TaskDetailFragment;->access$0(Lim/doit/pro/activity/TaskDetailFragment;)Lim/doit/pro/model/Task;

    move-result-object v7

    invoke-virtual {v7}, Lim/doit/pro/model/Task;->getEstimatedTime()I

    move-result v7

    if-lez v7, :cond_0

    .line 1405
    iget-object v7, p0, Lim/doit/pro/activity/TaskDetailFragment$OnEstimatedTimeClick;->this$0:Lim/doit/pro/activity/TaskDetailFragment;

    invoke-static {v7}, Lim/doit/pro/activity/TaskDetailFragment;->access$0(Lim/doit/pro/activity/TaskDetailFragment;)Lim/doit/pro/model/Task;

    move-result-object v7

    invoke-virtual {v7}, Lim/doit/pro/model/Task;->getEstimatedTime()I

    move-result v7

    div-int/lit8 v2, v7, 0x3c

    .line 1406
    iget-object v7, p0, Lim/doit/pro/activity/TaskDetailFragment$OnEstimatedTimeClick;->this$0:Lim/doit/pro/activity/TaskDetailFragment;

    invoke-static {v7}, Lim/doit/pro/activity/TaskDetailFragment;->access$0(Lim/doit/pro/activity/TaskDetailFragment;)Lim/doit/pro/model/Task;

    move-result-object v7

    invoke-virtual {v7}, Lim/doit/pro/model/Task;->getEstimatedTime()I

    move-result v7

    rem-int/lit8 v5, v7, 0x3c

    .line 1408
    :cond_0
    iget-object v7, p0, Lim/doit/pro/activity/TaskDetailFragment$OnEstimatedTimeClick;->this$0:Lim/doit/pro/activity/TaskDetailFragment;

    invoke-virtual {v7}, Lim/doit/pro/activity/TaskDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v4

    .line 1409
    .local v4, "manager":Landroid/support/v4/app/FragmentManager;
    invoke-virtual {v4}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 1410
    .local v1, "ft":Landroid/support/v4/app/FragmentTransaction;
    const-string v7, "time_dialog"

    invoke-virtual {v4, v7}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v6

    .line 1411
    .local v6, "prev":Landroid/support/v4/app/Fragment;
    if-eqz v6, :cond_1

    .line 1412
    invoke-virtual {v1, v6}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 1414
    :cond_1
    invoke-virtual {v1, v9}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 1416
    const/4 v7, -0x1

    const v8, 0x7f0d0193

    invoke-static {v7, v8, v2, v5}, Lcom/doomonafireball/betterpickers/timepicker/TimePickerDialogFragment;->newInstance(IIII)Lcom/doomonafireball/betterpickers/timepicker/TimePickerDialogFragment;

    move-result-object v0

    .line 1418
    .local v0, "fragment":Lcom/doomonafireball/betterpickers/timepicker/TimePickerDialogFragment;
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    .line 1419
    .local v3, "mTimePickerDialogHandlers":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/doomonafireball/betterpickers/timepicker/TimePickerDialogFragment$TimePickerDialogHandler;>;"
    new-instance v7, Lim/doit/pro/activity/TaskDetailFragment$SetEstimatedTimeCallBack;

    iget-object v8, p0, Lim/doit/pro/activity/TaskDetailFragment$OnEstimatedTimeClick;->this$0:Lim/doit/pro/activity/TaskDetailFragment;

    invoke-direct {v7, v8, v9}, Lim/doit/pro/activity/TaskDetailFragment$SetEstimatedTimeCallBack;-><init>(Lim/doit/pro/activity/TaskDetailFragment;Lim/doit/pro/activity/TaskDetailFragment$SetEstimatedTimeCallBack;)V

    invoke-virtual {v3, v7}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1420
    invoke-virtual {v0, v3}, Lcom/doomonafireball/betterpickers/timepicker/TimePickerDialogFragment;->setTimePickerDialogHandlers(Ljava/util/Vector;)V

    .line 1421
    const-string v7, "time_dialog"

    invoke-virtual {v0, v1, v7}, Lcom/doomonafireball/betterpickers/timepicker/TimePickerDialogFragment;->show(Landroid/support/v4/app/FragmentTransaction;Ljava/lang/String;)I

    .line 1422
    return-void
.end method
