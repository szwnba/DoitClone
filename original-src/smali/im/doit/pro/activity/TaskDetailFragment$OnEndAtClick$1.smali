.class Lim/doit/pro/activity/TaskDetailFragment$OnEndAtClick$1;
.super Ljava/lang/Object;
.source "TaskDetailFragment.java"

# interfaces
.implements Lim/doit/pro/ui/component/SelectDateTimeDialog$OnSelectDateTimeListner;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/activity/TaskDetailFragment$OnEndAtClick;->click(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lim/doit/pro/activity/TaskDetailFragment$OnEndAtClick;


# direct methods
.method constructor <init>(Lim/doit/pro/activity/TaskDetailFragment$OnEndAtClick;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lim/doit/pro/activity/TaskDetailFragment$OnEndAtClick$1;->this$1:Lim/doit/pro/activity/TaskDetailFragment$OnEndAtClick;

    .line 1385
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public finish(Ljava/util/Calendar;)V
    .locals 1
    .param p1, "date"    # Ljava/util/Calendar;

    .prologue
    .line 1389
    iget-object v0, p0, Lim/doit/pro/activity/TaskDetailFragment$OnEndAtClick$1;->this$1:Lim/doit/pro/activity/TaskDetailFragment$OnEndAtClick;

    invoke-static {v0}, Lim/doit/pro/activity/TaskDetailFragment$OnEndAtClick;->access$1(Lim/doit/pro/activity/TaskDetailFragment$OnEndAtClick;)Lim/doit/pro/activity/TaskDetailFragment;

    move-result-object v0

    invoke-static {v0}, Lim/doit/pro/activity/TaskDetailFragment;->access$0(Lim/doit/pro/activity/TaskDetailFragment;)Lim/doit/pro/model/Task;

    move-result-object v0

    invoke-virtual {v0, p1}, Lim/doit/pro/model/Task;->updateEndAt(Ljava/util/Calendar;)V

    .line 1390
    iget-object v0, p0, Lim/doit/pro/activity/TaskDetailFragment$OnEndAtClick$1;->this$1:Lim/doit/pro/activity/TaskDetailFragment$OnEndAtClick;

    invoke-static {v0}, Lim/doit/pro/activity/TaskDetailFragment$OnEndAtClick;->access$1(Lim/doit/pro/activity/TaskDetailFragment$OnEndAtClick;)Lim/doit/pro/activity/TaskDetailFragment;

    move-result-object v0

    invoke-static {v0}, Lim/doit/pro/activity/TaskDetailFragment;->access$1(Lim/doit/pro/activity/TaskDetailFragment;)Z

    .line 1391
    iget-object v0, p0, Lim/doit/pro/activity/TaskDetailFragment$OnEndAtClick$1;->this$1:Lim/doit/pro/activity/TaskDetailFragment$OnEndAtClick;

    invoke-static {v0}, Lim/doit/pro/activity/TaskDetailFragment$OnEndAtClick;->access$1(Lim/doit/pro/activity/TaskDetailFragment$OnEndAtClick;)Lim/doit/pro/activity/TaskDetailFragment;

    move-result-object v0

    invoke-static {v0}, Lim/doit/pro/activity/TaskDetailFragment;->access$13(Lim/doit/pro/activity/TaskDetailFragment;)V

    .line 1392
    iget-object v0, p0, Lim/doit/pro/activity/TaskDetailFragment$OnEndAtClick$1;->this$1:Lim/doit/pro/activity/TaskDetailFragment$OnEndAtClick;

    invoke-static {v0}, Lim/doit/pro/activity/TaskDetailFragment$OnEndAtClick;->access$1(Lim/doit/pro/activity/TaskDetailFragment$OnEndAtClick;)Lim/doit/pro/activity/TaskDetailFragment;

    move-result-object v0

    invoke-static {v0}, Lim/doit/pro/activity/TaskDetailFragment;->access$15(Lim/doit/pro/activity/TaskDetailFragment;)V

    .line 1393
    iget-object v0, p0, Lim/doit/pro/activity/TaskDetailFragment$OnEndAtClick$1;->this$1:Lim/doit/pro/activity/TaskDetailFragment$OnEndAtClick;

    invoke-static {v0}, Lim/doit/pro/activity/TaskDetailFragment$OnEndAtClick;->access$1(Lim/doit/pro/activity/TaskDetailFragment$OnEndAtClick;)Lim/doit/pro/activity/TaskDetailFragment;

    move-result-object v0

    invoke-static {v0}, Lim/doit/pro/activity/TaskDetailFragment;->access$8(Lim/doit/pro/activity/TaskDetailFragment;)V

    .line 1394
    iget-object v0, p0, Lim/doit/pro/activity/TaskDetailFragment$OnEndAtClick$1;->this$1:Lim/doit/pro/activity/TaskDetailFragment$OnEndAtClick;

    invoke-static {v0}, Lim/doit/pro/activity/TaskDetailFragment$OnEndAtClick;->access$1(Lim/doit/pro/activity/TaskDetailFragment$OnEndAtClick;)Lim/doit/pro/activity/TaskDetailFragment;

    move-result-object v0

    invoke-static {v0}, Lim/doit/pro/activity/TaskDetailFragment;->access$14(Lim/doit/pro/activity/TaskDetailFragment;)V

    .line 1395
    return-void
.end method
