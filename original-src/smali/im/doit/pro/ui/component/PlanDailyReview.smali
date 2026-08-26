.class public Lim/doit/pro/ui/component/PlanDailyReview;
.super Ljava/lang/Object;
.source "PlanDailyReview.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lim/doit/pro/ui/component/PlanDailyReview$OnFinishListener;
    }
.end annotation


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mFinishListener:Lim/doit/pro/ui/component/PlanDailyReview$OnFinishListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lim/doit/pro/ui/component/PlanDailyReview;->mActivity:Landroid/app/Activity;

    .line 34
    return-void
.end method

.method static synthetic access$0(Lim/doit/pro/ui/component/PlanDailyReview;)V
    .locals 0

    .prologue
    .line 108
    invoke-direct {p0}, Lim/doit/pro/ui/component/PlanDailyReview;->startTodayDailyReview()V

    return-void
.end method

.method static synthetic access$1(Lim/doit/pro/ui/component/PlanDailyReview;)V
    .locals 0

    .prologue
    .line 113
    invoke-direct {p0}, Lim/doit/pro/ui/component/PlanDailyReview;->startYesterdayDailyReview()V

    return-void
.end method

.method private buildDialogArgs(Ljava/util/Calendar;)Landroid/os/Bundle;
    .locals 4
    .param p1, "now"    # Ljava/util/Calendar;

    .prologue
    .line 50
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 51
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v2, "dialog_title"

    const v3, 0x7f0c0097

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 52
    invoke-direct {p0, p1}, Lim/doit/pro/ui/component/PlanDailyReview;->formatBody(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v0

    .line 53
    .local v0, "body":Ljava/lang/String;
    const-string v2, "dialog_message_str"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    const-string v2, "dialog_positive_button"

    const v3, 0x7f0c00e1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 55
    const-string v2, "dialog_negative_button"

    const v3, 0x7f0c00e3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 56
    return-object v1
.end method

.method private formatBody(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 5
    .param p1, "date"    # Ljava/util/Calendar;

    .prologue
    .line 61
    const v2, 0x7f0c0098

    invoke-static {v2}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v1

    .line 62
    .local v1, "message":Ljava/lang/String;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Lim/doit/pro/ui/component/PlanDailyReview;->formatDateForBody(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lim/doit/pro/activity/utils/ViewUtils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 63
    .local v0, "body":Ljava/lang/String;
    return-object v0
.end method

.method private formatDateForBody(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 7
    .param p1, "date"    # Ljava/util/Calendar;

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x5

    .line 67
    const/4 v3, 0x0

    .line 68
    .local v3, "result":Ljava/lang/String;
    const/4 v0, 0x0

    .line 69
    .local v0, "am":Ljava/lang/String;
    const/4 v1, 0x0

    .line 70
    .local v1, "format":Ljava/lang/String;
    invoke-static {}, Lim/doit/pro/utils/LocalSettings;->isCn()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 74
    const/16 v4, 0xb

    invoke-virtual {p1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 75
    .local v2, "hour":I
    if-ltz v2, :cond_1

    if-ge v2, v5, :cond_1

    .line 76
    const v4, 0x7f0c0272

    invoke-static {v4}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v0

    .line 82
    :cond_0
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "MM\u6708dd\u65e5"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "KK:mm"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 88
    .end local v2    # "hour":I
    :goto_1
    invoke-static {p1, v1}, Lim/doit/pro/utils/DateUtils;->format(Ljava/util/Calendar;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 89
    return-object v3

    .line 77
    .restart local v2    # "hour":I
    :cond_1
    if-lt v2, v5, :cond_2

    if-ge v2, v6, :cond_2

    .line 78
    const v4, 0x7f0c0273

    invoke-static {v4}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v0

    .line 79
    goto :goto_0

    :cond_2
    if-lt v2, v6, :cond_0

    const/16 v4, 0xc

    if-ge v2, v4, :cond_0

    .line 80
    const v4, 0x7f0c0274

    invoke-static {v4}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 83
    .end local v2    # "hour":I
    :cond_3
    invoke-static {}, Lim/doit/pro/utils/LocalSettings;->isJa()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 84
    const-string v1, "MM\u6708dd\u65e5\u5348\u524dKK:mm"

    .line 85
    goto :goto_1

    .line 86
    :cond_4
    const-string v1, "KK:mm a \'on\' LLLL dd"

    goto :goto_1
.end method

.method private initDialogListener(Lim/doit/pro/ui/component/DMessageDialog;)V
    .locals 2
    .param p1, "dialog"    # Lim/doit/pro/ui/component/DMessageDialog;

    .prologue
    .line 93
    new-instance v0, Lim/doit/pro/ui/component/PlanDailyReview$1;

    invoke-direct {v0, p0}, Lim/doit/pro/ui/component/PlanDailyReview$1;-><init>(Lim/doit/pro/ui/component/PlanDailyReview;)V

    invoke-virtual {p1, v0}, Lim/doit/pro/ui/component/DMessageDialog;->setOnPositiveButtonClickListener(Lim/doit/pro/ui/component/DMessageDialog$OnButtonClickListener;)Lim/doit/pro/ui/component/DMessageDialog;

    move-result-object v0

    .line 99
    new-instance v1, Lim/doit/pro/ui/component/PlanDailyReview$2;

    invoke-direct {v1, p0}, Lim/doit/pro/ui/component/PlanDailyReview$2;-><init>(Lim/doit/pro/ui/component/PlanDailyReview;)V

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/DMessageDialog;->setOnNegativeButtonClickListener(Lim/doit/pro/ui/component/DMessageDialog$OnButtonClickListener;)Lim/doit/pro/ui/component/DMessageDialog;

    .line 106
    return-void
.end method

.method private startDailyReview(Ljava/util/Calendar;)V
    .locals 3
    .param p1, "date"    # Ljava/util/Calendar;

    .prologue
    .line 120
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lim/doit/pro/ui/component/PlanDailyReview;->mActivity:Landroid/app/Activity;

    const-class v2, Lim/doit/pro/activity/DailyReviewActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 121
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "daily_review_date"

    invoke-static {p1}, Lim/doit/pro/utils/DateUtils;->formatRepeatNo(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 122
    iget-object v1, p0, Lim/doit/pro/ui/component/PlanDailyReview;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 123
    iget-object v1, p0, Lim/doit/pro/ui/component/PlanDailyReview;->mFinishListener:Lim/doit/pro/ui/component/PlanDailyReview$OnFinishListener;

    if-eqz v1, :cond_0

    .line 124
    iget-object v1, p0, Lim/doit/pro/ui/component/PlanDailyReview;->mFinishListener:Lim/doit/pro/ui/component/PlanDailyReview$OnFinishListener;

    invoke-interface {v1}, Lim/doit/pro/ui/component/PlanDailyReview$OnFinishListener;->onFinish()V

    .line 126
    :cond_0
    return-void
.end method

.method private startTodayDailyReview()V
    .locals 1

    .prologue
    .line 109
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 110
    .local v0, "today":Ljava/util/Calendar;
    invoke-direct {p0, v0}, Lim/doit/pro/ui/component/PlanDailyReview;->startDailyReview(Ljava/util/Calendar;)V

    .line 111
    return-void
.end method

.method private startYesterdayDailyReview()V
    .locals 3

    .prologue
    .line 114
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 115
    .local v0, "yesterday":Ljava/util/Calendar;
    const/4 v1, 0x5

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 116
    invoke-direct {p0, v0}, Lim/doit/pro/ui/component/PlanDailyReview;->startDailyReview(Ljava/util/Calendar;)V

    .line 117
    return-void
.end method


# virtual methods
.method public setOnFinishListener(Lim/doit/pro/ui/component/PlanDailyReview$OnFinishListener;)V
    .locals 0
    .param p1, "l"    # Lim/doit/pro/ui/component/PlanDailyReview$OnFinishListener;

    .prologue
    .line 29
    iput-object p1, p0, Lim/doit/pro/ui/component/PlanDailyReview;->mFinishListener:Lim/doit/pro/ui/component/PlanDailyReview$OnFinishListener;

    .line 30
    return-void
.end method

.method public start()V
    .locals 5

    .prologue
    .line 37
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 38
    .local v2, "now":Ljava/util/Calendar;
    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-nez v3, :cond_0

    .line 39
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v3

    iget-object v3, v3, Lim/doit/pro/db/Persist;->dailyReviewDao:Lim/doit/pro/db/persist/DailyReviewDao;

    invoke-virtual {v3}, Lim/doit/pro/db/persist/DailyReviewDao;->isYesterdayNotReviewed()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 40
    invoke-direct {p0, v2}, Lim/doit/pro/ui/component/PlanDailyReview;->buildDialogArgs(Ljava/util/Calendar;)Landroid/os/Bundle;

    move-result-object v0

    .line 41
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-static {v0}, Lim/doit/pro/ui/component/DMessageDialog;->newInstance(Landroid/os/Bundle;)Lim/doit/pro/ui/component/DMessageDialog;

    move-result-object v1

    .line 42
    .local v1, "dialog":Lim/doit/pro/ui/component/DMessageDialog;
    invoke-direct {p0, v1}, Lim/doit/pro/ui/component/PlanDailyReview;->initDialogListener(Lim/doit/pro/ui/component/DMessageDialog;)V

    .line 43
    iget-object v3, p0, Lim/doit/pro/ui/component/PlanDailyReview;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const-string v4, "dialog"

    invoke-virtual {v1, v3, v4}, Lim/doit/pro/ui/component/DMessageDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 47
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "dialog":Lim/doit/pro/ui/component/DMessageDialog;
    :goto_0
    return-void

    .line 45
    :cond_0
    invoke-direct {p0}, Lim/doit/pro/ui/component/PlanDailyReview;->startTodayDailyReview()V

    goto :goto_0
.end method
