.class Lim/doit/pro/activity/ProjectDetailActivity$OnEndAtClick;
.super Ljava/lang/Object;
.source "ProjectDetailActivity.java"

# interfaces
.implements Lim/doit/pro/activity/listener/OnLayoutClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/activity/ProjectDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnEndAtClick"
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/activity/ProjectDetailActivity;


# direct methods
.method private constructor <init>(Lim/doit/pro/activity/ProjectDetailActivity;)V
    .locals 0

    .prologue
    .line 461
    iput-object p1, p0, Lim/doit/pro/activity/ProjectDetailActivity$OnEndAtClick;->this$0:Lim/doit/pro/activity/ProjectDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lim/doit/pro/activity/ProjectDetailActivity;Lim/doit/pro/activity/ProjectDetailActivity$OnEndAtClick;)V
    .locals 0

    .prologue
    .line 461
    invoke-direct {p0, p1}, Lim/doit/pro/activity/ProjectDetailActivity$OnEndAtClick;-><init>(Lim/doit/pro/activity/ProjectDetailActivity;)V

    return-void
.end method

.method static synthetic access$1(Lim/doit/pro/activity/ProjectDetailActivity$OnEndAtClick;)Lim/doit/pro/activity/ProjectDetailActivity;
    .locals 1

    .prologue
    .line 461
    iget-object v0, p0, Lim/doit/pro/activity/ProjectDetailActivity$OnEndAtClick;->this$0:Lim/doit/pro/activity/ProjectDetailActivity;

    return-object v0
.end method


# virtual methods
.method public click(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x1

    .line 465
    new-instance v0, Lim/doit/pro/ui/component/SelectDateTimeDialog;

    .line 466
    iget-object v2, p0, Lim/doit/pro/activity/ProjectDetailActivity$OnEndAtClick;->this$0:Lim/doit/pro/activity/ProjectDetailActivity;

    .line 465
    invoke-direct {v0, v2}, Lim/doit/pro/ui/component/SelectDateTimeDialog;-><init>(Landroid/app/Activity;)V

    .line 467
    .local v0, "dialog":Lim/doit/pro/ui/component/SelectDateTimeDialog;
    const/4 v1, 0x0

    .line 468
    .local v1, "endAt":Ljava/util/Calendar;
    iget-object v2, p0, Lim/doit/pro/activity/ProjectDetailActivity$OnEndAtClick;->this$0:Lim/doit/pro/activity/ProjectDetailActivity;

    invoke-static {v2}, Lim/doit/pro/activity/ProjectDetailActivity;->access$0(Lim/doit/pro/activity/ProjectDetailActivity;)Lim/doit/pro/model/Project;

    move-result-object v2

    invoke-virtual {v2}, Lim/doit/pro/model/Project;->getEndAt()Ljava/util/Calendar;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 469
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 470
    iget-object v2, p0, Lim/doit/pro/activity/ProjectDetailActivity$OnEndAtClick;->this$0:Lim/doit/pro/activity/ProjectDetailActivity;

    invoke-static {v2}, Lim/doit/pro/activity/ProjectDetailActivity;->access$0(Lim/doit/pro/activity/ProjectDetailActivity;)Lim/doit/pro/model/Project;

    move-result-object v2

    invoke-virtual {v2}, Lim/doit/pro/model/Project;->getEndAt()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 472
    :cond_0
    invoke-virtual {v0, v1, v4, v4, v4}, Lim/doit/pro/ui/component/SelectDateTimeDialog;->showDialog(Ljava/util/Calendar;ZZZ)V

    .line 473
    new-instance v2, Lim/doit/pro/activity/ProjectDetailActivity$OnEndAtClick$1;

    invoke-direct {v2, p0}, Lim/doit/pro/activity/ProjectDetailActivity$OnEndAtClick$1;-><init>(Lim/doit/pro/activity/ProjectDetailActivity$OnEndAtClick;)V

    invoke-virtual {v0, v2}, Lim/doit/pro/ui/component/SelectDateTimeDialog;->setOnSelectDateTimeListner(Lim/doit/pro/ui/component/SelectDateTimeDialog$OnSelectDateTimeListner;)V

    .line 498
    return-void
.end method
