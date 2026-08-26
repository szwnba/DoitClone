.class public Lim/doit/pro/receiver/StartTodayDailyReviewReceiver;
.super Landroid/content/BroadcastReceiver;
.source "StartTodayDailyReviewReceiver.java"


# static fields
.field public static final ACTION:Ljava/lang/String; = "im.doit.pro.receiver.StartTodayDailyReviewReceiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private isTodayReviewed()Z
    .locals 3

    .prologue
    .line 56
    invoke-static {}, Lim/doit/pro/utils/PrefUtils;->getLastDailyPlanDoneTime()Ljava/util/Calendar;

    move-result-object v0

    .line 57
    .local v0, "lastDate":Ljava/util/Calendar;
    const/4 v1, 0x0

    .line 58
    .local v1, "needReview":Z
    if-eqz v0, :cond_0

    invoke-static {v0}, Lim/doit/pro/utils/DateUtils;->isToday(Ljava/util/Calendar;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 59
    const/4 v1, 0x0

    .line 61
    :cond_0
    return v1
.end method

.method private notShowDailyReview()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 37
    invoke-static {}, Lim/doit/pro/utils/UserUtils;->isNotReminderDailyReview()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 52
    :cond_0
    :goto_0
    return v2

    .line 40
    :cond_1
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->isDailyReviewing()Z

    move-result v3

    if-nez v3, :cond_0

    .line 43
    invoke-direct {p0}, Lim/doit/pro/receiver/StartTodayDailyReviewReceiver;->isTodayReviewed()Z

    move-result v3

    if-nez v3, :cond_0

    .line 46
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    invoke-static {v3}, Lim/doit/pro/utils/DateUtils;->formatRepeatNo(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v1

    .line 47
    .local v1, "date":Ljava/lang/String;
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v3

    iget-object v3, v3, Lim/doit/pro/db/Persist;->dailyReviewDao:Lim/doit/pro/db/persist/DailyReviewDao;

    .line 48
    invoke-virtual {v3, v1}, Lim/doit/pro/db/persist/DailyReviewDao;->findByDate(Ljava/lang/String;)Lim/doit/pro/model/DailyReview;

    move-result-object v0

    .line 49
    .local v0, "dailyReview":Lim/doit/pro/model/DailyReview;
    if-nez v0, :cond_0

    .line 52
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 23
    invoke-direct {p0}, Lim/doit/pro/receiver/StartTodayDailyReviewReceiver;->notShowDailyReview()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 24
    const-string v1, "**daily review is done or doing**"

    invoke-static {v1}, Lim/doit/pro/utils/Logger;->d(Ljava/lang/Object;)V

    .line 33
    :goto_0
    return-void

    .line 27
    :cond_0
    const-string v1, "**StartTodayDailyReviewReceiver**"

    invoke-static {v1}, Lim/doit/pro/utils/Logger;->d(Ljava/lang/Object;)V

    .line 28
    new-instance v0, Landroid/content/Intent;

    .line 29
    const-class v1, Lim/doit/pro/activity/StartDailyReviewDialog;

    .line 28
    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 30
    .local v0, "startDailyReviewIntent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 31
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 32
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
