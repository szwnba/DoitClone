.class Lim/doit/pro/activity/ProjectDetailActivity$OnEndAtClick$1;
.super Ljava/lang/Object;
.source "ProjectDetailActivity.java"

# interfaces
.implements Lim/doit/pro/ui/component/SelectDateTimeDialog$OnSelectDateTimeListner;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/activity/ProjectDetailActivity$OnEndAtClick;->click(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lim/doit/pro/activity/ProjectDetailActivity$OnEndAtClick;


# direct methods
.method constructor <init>(Lim/doit/pro/activity/ProjectDetailActivity$OnEndAtClick;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lim/doit/pro/activity/ProjectDetailActivity$OnEndAtClick$1;->this$1:Lim/doit/pro/activity/ProjectDetailActivity$OnEndAtClick;

    .line 473
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public finish(Ljava/util/Calendar;)V
    .locals 4
    .param p1, "date"    # Ljava/util/Calendar;

    .prologue
    const/4 v3, 0x1

    .line 477
    iget-object v2, p0, Lim/doit/pro/activity/ProjectDetailActivity$OnEndAtClick$1;->this$1:Lim/doit/pro/activity/ProjectDetailActivity$OnEndAtClick;

    invoke-static {v2}, Lim/doit/pro/activity/ProjectDetailActivity$OnEndAtClick;->access$1(Lim/doit/pro/activity/ProjectDetailActivity$OnEndAtClick;)Lim/doit/pro/activity/ProjectDetailActivity;

    move-result-object v2

    invoke-static {v2}, Lim/doit/pro/activity/ProjectDetailActivity;->access$0(Lim/doit/pro/activity/ProjectDetailActivity;)Lim/doit/pro/model/Project;

    move-result-object v2

    invoke-virtual {v2, p1}, Lim/doit/pro/model/Project;->setEndAt(Ljava/util/Calendar;)V

    .line 478
    iget-object v2, p0, Lim/doit/pro/activity/ProjectDetailActivity$OnEndAtClick$1;->this$1:Lim/doit/pro/activity/ProjectDetailActivity$OnEndAtClick;

    invoke-static {v2}, Lim/doit/pro/activity/ProjectDetailActivity$OnEndAtClick;->access$1(Lim/doit/pro/activity/ProjectDetailActivity$OnEndAtClick;)Lim/doit/pro/activity/ProjectDetailActivity;

    move-result-object v2

    invoke-static {v2}, Lim/doit/pro/activity/ProjectDetailActivity;->access$0(Lim/doit/pro/activity/ProjectDetailActivity;)Lim/doit/pro/model/Project;

    move-result-object v2

    invoke-virtual {v2}, Lim/doit/pro/model/Project;->getEndAt()Ljava/util/Calendar;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 479
    iget-object v2, p0, Lim/doit/pro/activity/ProjectDetailActivity$OnEndAtClick$1;->this$1:Lim/doit/pro/activity/ProjectDetailActivity$OnEndAtClick;

    invoke-static {v2}, Lim/doit/pro/activity/ProjectDetailActivity$OnEndAtClick;->access$1(Lim/doit/pro/activity/ProjectDetailActivity$OnEndAtClick;)Lim/doit/pro/activity/ProjectDetailActivity;

    move-result-object v2

    invoke-static {v2}, Lim/doit/pro/activity/ProjectDetailActivity;->access$0(Lim/doit/pro/activity/ProjectDetailActivity;)Lim/doit/pro/model/Project;

    move-result-object v2

    invoke-virtual {v2}, Lim/doit/pro/model/Project;->getStartAt()Ljava/util/Calendar;

    move-result-object v2

    if-nez v2, :cond_0

    .line 480
    invoke-static {}, Lim/doit/pro/utils/DateUtils;->startOfTomorrow()Ljava/util/Calendar;

    move-result-object v2

    .line 479
    invoke-static {p1, v2, v3}, Lim/doit/pro/utils/DateUtils;->before(Ljava/util/Calendar;Ljava/util/Calendar;Z)Z

    move-result v2

    .line 480
    if-nez v2, :cond_1

    .line 482
    :cond_0
    iget-object v2, p0, Lim/doit/pro/activity/ProjectDetailActivity$OnEndAtClick$1;->this$1:Lim/doit/pro/activity/ProjectDetailActivity$OnEndAtClick;

    invoke-static {v2}, Lim/doit/pro/activity/ProjectDetailActivity$OnEndAtClick;->access$1(Lim/doit/pro/activity/ProjectDetailActivity$OnEndAtClick;)Lim/doit/pro/activity/ProjectDetailActivity;

    move-result-object v2

    invoke-static {v2}, Lim/doit/pro/activity/ProjectDetailActivity;->access$0(Lim/doit/pro/activity/ProjectDetailActivity;)Lim/doit/pro/model/Project;

    move-result-object v2

    invoke-virtual {v2}, Lim/doit/pro/model/Project;->getStartAt()Ljava/util/Calendar;

    move-result-object v2

    .line 481
    invoke-static {p1, v2, v3}, Lim/doit/pro/utils/DateUtils;->before(Ljava/util/Calendar;Ljava/util/Calendar;Z)Z

    move-result v2

    .line 482
    if-eqz v2, :cond_3

    .line 483
    :cond_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 484
    .local v0, "cal":Ljava/util/Calendar;
    iget-object v2, p0, Lim/doit/pro/activity/ProjectDetailActivity$OnEndAtClick$1;->this$1:Lim/doit/pro/activity/ProjectDetailActivity$OnEndAtClick;

    invoke-static {v2}, Lim/doit/pro/activity/ProjectDetailActivity$OnEndAtClick;->access$1(Lim/doit/pro/activity/ProjectDetailActivity$OnEndAtClick;)Lim/doit/pro/activity/ProjectDetailActivity;

    move-result-object v2

    invoke-static {v2}, Lim/doit/pro/activity/ProjectDetailActivity;->access$0(Lim/doit/pro/activity/ProjectDetailActivity;)Lim/doit/pro/model/Project;

    move-result-object v2

    invoke-virtual {v2}, Lim/doit/pro/model/Project;->getEndAt()Ljava/util/Calendar;

    move-result-object v2

    .line 485
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 484
    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 486
    iget-object v2, p0, Lim/doit/pro/activity/ProjectDetailActivity$OnEndAtClick$1;->this$1:Lim/doit/pro/activity/ProjectDetailActivity$OnEndAtClick;

    invoke-static {v2}, Lim/doit/pro/activity/ProjectDetailActivity$OnEndAtClick;->access$1(Lim/doit/pro/activity/ProjectDetailActivity$OnEndAtClick;)Lim/doit/pro/activity/ProjectDetailActivity;

    move-result-object v2

    invoke-static {v2}, Lim/doit/pro/activity/ProjectDetailActivity;->access$0(Lim/doit/pro/activity/ProjectDetailActivity;)Lim/doit/pro/model/Project;

    move-result-object v2

    invoke-virtual {v2}, Lim/doit/pro/model/Project;->getStartAt()Ljava/util/Calendar;

    move-result-object v1

    .line 487
    .local v1, "oriStartAt":Ljava/util/Calendar;
    invoke-static {v0}, Lim/doit/pro/utils/DateUtils;->startOfDate(Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 488
    iget-object v2, p0, Lim/doit/pro/activity/ProjectDetailActivity$OnEndAtClick$1;->this$1:Lim/doit/pro/activity/ProjectDetailActivity$OnEndAtClick;

    invoke-static {v2}, Lim/doit/pro/activity/ProjectDetailActivity$OnEndAtClick;->access$1(Lim/doit/pro/activity/ProjectDetailActivity$OnEndAtClick;)Lim/doit/pro/activity/ProjectDetailActivity;

    move-result-object v2

    invoke-static {v2}, Lim/doit/pro/activity/ProjectDetailActivity;->access$0(Lim/doit/pro/activity/ProjectDetailActivity;)Lim/doit/pro/model/Project;

    move-result-object v2

    invoke-virtual {v2, v0}, Lim/doit/pro/model/Project;->setStartAt(Ljava/util/Calendar;)V

    .line 489
    if-eqz v1, :cond_2

    .line 490
    iget-object v2, p0, Lim/doit/pro/activity/ProjectDetailActivity$OnEndAtClick$1;->this$1:Lim/doit/pro/activity/ProjectDetailActivity$OnEndAtClick;

    invoke-static {v2}, Lim/doit/pro/activity/ProjectDetailActivity$OnEndAtClick;->access$1(Lim/doit/pro/activity/ProjectDetailActivity$OnEndAtClick;)Lim/doit/pro/activity/ProjectDetailActivity;

    move-result-object v2

    invoke-static {v2}, Lim/doit/pro/activity/ProjectDetailActivity;->access$0(Lim/doit/pro/activity/ProjectDetailActivity;)Lim/doit/pro/model/Project;

    move-result-object v2

    invoke-virtual {v2, v1}, Lim/doit/pro/model/Project;->updateAfterStartAtChange(Ljava/util/Calendar;)V

    .line 492
    :cond_2
    iget-object v2, p0, Lim/doit/pro/activity/ProjectDetailActivity$OnEndAtClick$1;->this$1:Lim/doit/pro/activity/ProjectDetailActivity$OnEndAtClick;

    invoke-static {v2}, Lim/doit/pro/activity/ProjectDetailActivity$OnEndAtClick;->access$1(Lim/doit/pro/activity/ProjectDetailActivity$OnEndAtClick;)Lim/doit/pro/activity/ProjectDetailActivity;

    move-result-object v2

    invoke-static {v2}, Lim/doit/pro/activity/ProjectDetailActivity;->access$5(Lim/doit/pro/activity/ProjectDetailActivity;)V

    .line 495
    .end local v0    # "cal":Ljava/util/Calendar;
    .end local v1    # "oriStartAt":Ljava/util/Calendar;
    :cond_3
    iget-object v2, p0, Lim/doit/pro/activity/ProjectDetailActivity$OnEndAtClick$1;->this$1:Lim/doit/pro/activity/ProjectDetailActivity$OnEndAtClick;

    invoke-static {v2}, Lim/doit/pro/activity/ProjectDetailActivity$OnEndAtClick;->access$1(Lim/doit/pro/activity/ProjectDetailActivity$OnEndAtClick;)Lim/doit/pro/activity/ProjectDetailActivity;

    move-result-object v2

    invoke-static {v2}, Lim/doit/pro/activity/ProjectDetailActivity;->access$6(Lim/doit/pro/activity/ProjectDetailActivity;)V

    .line 496
    return-void
.end method
