.class public Lim/doit/pro/receiver/SetTodayDailyPlanAlarmReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SetTodayDailyPlanAlarmReceiver.java"


# static fields
.field public static final ACTION:Ljava/lang/String; = "im.doit.pro.receiver.SetTodayDailyPlanAlarmReceiver"

.field public static final START_DAILY_PLAN_REQUEST_CODE:I = 0x1f5


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private getCurrentDailyPlanIndex()I
    .locals 4

    .prologue
    .line 76
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 77
    .local v2, "now":Ljava/util/Calendar;
    const/4 v1, -0x1

    .line 78
    .local v1, "index":I
    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 79
    .local v0, "dayOfWeek":I
    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    .line 80
    const/4 v1, 0x6

    .line 84
    :goto_0
    return v1

    .line 82
    :cond_0
    add-int/lit8 v1, v0, -0x2

    goto :goto_0
.end method

.method private isCurrentDailyPlanIndexValid(Ljava/util/ArrayList;I)Z
    .locals 1
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;I)Z"
        }
    .end annotation

    .prologue
    .line 71
    .local p1, "times":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-ltz p2, :cond_0

    invoke-static {p1}, Lim/doit/pro/utils/CollectionUtils;->isNotEmpty(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 71
    if-le v0, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setTodayDailyPlanAlarm(Landroid/content/Context;Ljava/util/ArrayList;I)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 40
    .local p2, "times":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 41
    .local v2, "now":Ljava/util/Calendar;
    invoke-static {v2}, Lim/doit/pro/utils/DateUtils;->isWeekend(Ljava/util/Calendar;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 42
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->user()Lim/doit/pro/model/User;

    move-result-object v8

    invoke-virtual {v8}, Lim/doit/pro/model/User;->isPlanReviewRemindOnWeekends()Z

    move-result v8

    if-nez v8, :cond_1

    .line 67
    .end local v2    # "now":Ljava/util/Calendar;
    :cond_0
    :goto_0
    return-void

    .line 46
    .restart local v2    # "now":Ljava/util/Calendar;
    :cond_1
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 45
    invoke-static {v2, v8}, Lim/doit/pro/utils/DateUtils;->parseHourMinuteToCurrentTime(Ljava/util/Calendar;Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v4

    .line 48
    .local v4, "planTime":Ljava/util/Calendar;
    const/4 v8, 0x0

    invoke-static {v4, v2, v8}, Lim/doit/pro/utils/DateUtils;->before(Ljava/util/Calendar;Ljava/util/Calendar;Z)Z

    move-result v8

    if-nez v8, :cond_0

    .line 53
    const-string v8, "alarm"

    invoke-virtual {p1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 52
    check-cast v0, Landroid/app/AlarmManager;

    .line 54
    .local v0, "alarmManager":Landroid/app/AlarmManager;
    new-instance v5, Landroid/content/Intent;

    .line 55
    const-string v8, "im.doit.pro.receiver.StartTodayDailyPlanReceiver"

    .line 54
    invoke-direct {v5, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 57
    .local v5, "service":Landroid/content/Intent;
    const/16 v8, 0x1f5

    .line 58
    const/high16 v9, 0x10000000

    .line 56
    invoke-static {p1, v8, v5, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 59
    .local v3, "pi":Landroid/app/PendingIntent;
    invoke-virtual {v0, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 61
    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    .line 63
    .local v6, "triggerAtMillis":J
    const/4 v8, 0x0

    invoke-virtual {v0, v8, v6, v7, v3}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 64
    .end local v0    # "alarmManager":Landroid/app/AlarmManager;
    .end local v2    # "now":Ljava/util/Calendar;
    .end local v3    # "pi":Landroid/app/PendingIntent;
    .end local v4    # "planTime":Ljava/util/Calendar;
    .end local v5    # "service":Landroid/content/Intent;
    .end local v6    # "triggerAtMillis":J
    :catch_0
    move-exception v1

    .line 65
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 26
    const-string v2, "**SetTodayDailyPlanAlarmReceiver**"

    invoke-static {v2}, Lim/doit/pro/utils/Logger;->d(Ljava/lang/Object;)V

    .line 27
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->user()Lim/doit/pro/model/User;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {}, Lim/doit/pro/utils/UserUtils;->isNotPro()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 35
    :cond_0
    :goto_0
    return-void

    .line 30
    :cond_1
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->user()Lim/doit/pro/model/User;

    move-result-object v2

    invoke-virtual {v2}, Lim/doit/pro/model/User;->getDailyPlanningTimes()Ljava/util/ArrayList;

    move-result-object v1

    .line 31
    .local v1, "times":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0}, Lim/doit/pro/receiver/SetTodayDailyPlanAlarmReceiver;->getCurrentDailyPlanIndex()I

    move-result v0

    .line 32
    .local v0, "index":I
    invoke-direct {p0, v1, v0}, Lim/doit/pro/receiver/SetTodayDailyPlanAlarmReceiver;->isCurrentDailyPlanIndexValid(Ljava/util/ArrayList;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 33
    invoke-direct {p0, p1, v1, v0}, Lim/doit/pro/receiver/SetTodayDailyPlanAlarmReceiver;->setTodayDailyPlanAlarm(Landroid/content/Context;Ljava/util/ArrayList;I)V

    goto :goto_0
.end method
