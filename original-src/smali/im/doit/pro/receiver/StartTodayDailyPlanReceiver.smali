.class public Lim/doit/pro/receiver/StartTodayDailyPlanReceiver;
.super Landroid/content/BroadcastReceiver;
.source "StartTodayDailyPlanReceiver.java"


# static fields
.field public static final ACTION:Ljava/lang/String; = "im.doit.pro.receiver.StartTodayDailyPlanReceiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private isTodayPlanned()Z
    .locals 2

    .prologue
    .line 49
    invoke-static {}, Lim/doit/pro/utils/PrefUtils;->getLastDailyPlanDoneTime()Ljava/util/Calendar;

    move-result-object v0

    .line 50
    .local v0, "lastDailyPlanDoneTime":Ljava/util/Calendar;
    if-eqz v0, :cond_0

    .line 52
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 51
    invoke-static {v0, v1}, Lim/doit/pro/utils/DateUtils;->diffDay(Ljava/util/Calendar;Ljava/util/Calendar;)I

    move-result v1

    if-nez v1, :cond_0

    .line 53
    const/4 v1, 0x1

    .line 55
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private notShowDailyPlan()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 36
    invoke-static {}, Lim/doit/pro/utils/UserUtils;->isNotReminderDailyPlan()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 45
    :cond_0
    :goto_0
    return v0

    .line 39
    :cond_1
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->isDailyPlaning()Z

    move-result v1

    if-nez v1, :cond_0

    .line 42
    invoke-direct {p0}, Lim/doit/pro/receiver/StartTodayDailyPlanReceiver;->isTodayPlanned()Z

    move-result v1

    if-nez v1, :cond_0

    .line 45
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 22
    invoke-direct {p0}, Lim/doit/pro/receiver/StartTodayDailyPlanReceiver;->notShowDailyPlan()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 23
    const-string v1, "**daily plan is done or doing**"

    invoke-static {v1}, Lim/doit/pro/utils/Logger;->d(Ljava/lang/Object;)V

    .line 32
    :goto_0
    return-void

    .line 26
    :cond_0
    const-string v1, "**StartTodayDailyPlanReceiver**"

    invoke-static {v1}, Lim/doit/pro/utils/Logger;->d(Ljava/lang/Object;)V

    .line 27
    new-instance v0, Landroid/content/Intent;

    .line 28
    const-class v1, Lim/doit/pro/activity/StartDailyPlanDialog;

    .line 27
    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 29
    .local v0, "startDailyPlanIntent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 30
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 31
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
