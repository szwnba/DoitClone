.class Lim/doit/pro/activity/TaskDetailFragment$OnEndAtClick;
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
    name = "OnEndAtClick"
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/activity/TaskDetailFragment;


# direct methods
.method private constructor <init>(Lim/doit/pro/activity/TaskDetailFragment;)V
    .locals 0

    .prologue
    .line 1370
    iput-object p1, p0, Lim/doit/pro/activity/TaskDetailFragment$OnEndAtClick;->this$0:Lim/doit/pro/activity/TaskDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lim/doit/pro/activity/TaskDetailFragment;Lim/doit/pro/activity/TaskDetailFragment$OnEndAtClick;)V
    .locals 0

    .prologue
    .line 1370
    invoke-direct {p0, p1}, Lim/doit/pro/activity/TaskDetailFragment$OnEndAtClick;-><init>(Lim/doit/pro/activity/TaskDetailFragment;)V

    return-void
.end method

.method static synthetic access$1(Lim/doit/pro/activity/TaskDetailFragment$OnEndAtClick;)Lim/doit/pro/activity/TaskDetailFragment;
    .locals 1

    .prologue
    .line 1370
    iget-object v0, p0, Lim/doit/pro/activity/TaskDetailFragment$OnEndAtClick;->this$0:Lim/doit/pro/activity/TaskDetailFragment;

    return-object v0
.end method


# virtual methods
.method public click(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    .line 1374
    new-instance v0, Lim/doit/pro/ui/component/SelectDateTimeDialog;

    .line 1375
    iget-object v2, p0, Lim/doit/pro/activity/TaskDetailFragment$OnEndAtClick;->this$0:Lim/doit/pro/activity/TaskDetailFragment;

    invoke-virtual {v2}, Lim/doit/pro/activity/TaskDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    .line 1374
    invoke-direct {v0, v2}, Lim/doit/pro/ui/component/SelectDateTimeDialog;-><init>(Landroid/app/Activity;)V

    .line 1376
    .local v0, "dialog":Lim/doit/pro/ui/component/SelectDateTimeDialog;
    iget-object v2, p0, Lim/doit/pro/activity/TaskDetailFragment$OnEndAtClick;->this$0:Lim/doit/pro/activity/TaskDetailFragment;

    invoke-static {v2}, Lim/doit/pro/activity/TaskDetailFragment;->access$0(Lim/doit/pro/activity/TaskDetailFragment;)Lim/doit/pro/model/Task;

    move-result-object v2

    invoke-virtual {v2}, Lim/doit/pro/model/Task;->getEndAt()Ljava/util/Calendar;

    move-result-object v2

    invoke-static {v2}, Lim/doit/pro/utils/DateUtils;->copyDate(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v1

    .line 1378
    .local v1, "endAt":Ljava/util/Calendar;
    if-nez v1, :cond_0

    .line 1379
    iget-object v2, p0, Lim/doit/pro/activity/TaskDetailFragment$OnEndAtClick;->this$0:Lim/doit/pro/activity/TaskDetailFragment;

    invoke-static {v2}, Lim/doit/pro/activity/TaskDetailFragment;->access$0(Lim/doit/pro/activity/TaskDetailFragment;)Lim/doit/pro/model/Task;

    move-result-object v2

    invoke-static {v2}, Lim/doit/pro/utils/TaskUtils;->getDefaultEndAt(Lim/doit/pro/model/Task;)Ljava/util/Calendar;

    move-result-object v1

    .line 1381
    :cond_0
    iget-object v2, p0, Lim/doit/pro/activity/TaskDetailFragment$OnEndAtClick;->this$0:Lim/doit/pro/activity/TaskDetailFragment;

    invoke-static {v2}, Lim/doit/pro/activity/TaskDetailFragment;->access$0(Lim/doit/pro/activity/TaskDetailFragment;)Lim/doit/pro/model/Task;

    move-result-object v2

    invoke-virtual {v2}, Lim/doit/pro/model/Task;->getStartAt()Ljava/util/Calendar;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1382
    iget-object v2, p0, Lim/doit/pro/activity/TaskDetailFragment$OnEndAtClick;->this$0:Lim/doit/pro/activity/TaskDetailFragment;

    invoke-static {v2}, Lim/doit/pro/activity/TaskDetailFragment;->access$0(Lim/doit/pro/activity/TaskDetailFragment;)Lim/doit/pro/model/Task;

    move-result-object v2

    invoke-virtual {v2}, Lim/doit/pro/model/Task;->getStartAt()Ljava/util/Calendar;

    move-result-object v2

    invoke-static {v2}, Lim/doit/pro/utils/DateUtils;->copyDate(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v0, v2}, Lim/doit/pro/ui/component/SelectDateTimeDialog;->setMinDate(Ljava/util/Calendar;)V

    .line 1384
    :cond_1
    iget-object v2, p0, Lim/doit/pro/activity/TaskDetailFragment$OnEndAtClick;->this$0:Lim/doit/pro/activity/TaskDetailFragment;

    invoke-static {v2}, Lim/doit/pro/activity/TaskDetailFragment;->access$0(Lim/doit/pro/activity/TaskDetailFragment;)Lim/doit/pro/model/Task;

    move-result-object v2

    invoke-virtual {v2}, Lim/doit/pro/model/Task;->isAllDay()Z

    move-result v2

    invoke-virtual {v0, v1, v3, v2, v3}, Lim/doit/pro/ui/component/SelectDateTimeDialog;->showDialog(Ljava/util/Calendar;ZZZ)V

    .line 1385
    new-instance v2, Lim/doit/pro/activity/TaskDetailFragment$OnEndAtClick$1;

    invoke-direct {v2, p0}, Lim/doit/pro/activity/TaskDetailFragment$OnEndAtClick$1;-><init>(Lim/doit/pro/activity/TaskDetailFragment$OnEndAtClick;)V

    invoke-virtual {v0, v2}, Lim/doit/pro/ui/component/SelectDateTimeDialog;->setOnSelectDateTimeListner(Lim/doit/pro/ui/component/SelectDateTimeDialog$OnSelectDateTimeListner;)V

    .line 1397
    return-void
.end method
