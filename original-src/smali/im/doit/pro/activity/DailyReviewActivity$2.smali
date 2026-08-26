.class Lim/doit/pro/activity/DailyReviewActivity$2;
.super Ljava/lang/Object;
.source "DailyReviewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/activity/DailyReviewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/activity/DailyReviewActivity;


# direct methods
.method constructor <init>(Lim/doit/pro/activity/DailyReviewActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lim/doit/pro/activity/DailyReviewActivity$2;->this$0:Lim/doit/pro/activity/DailyReviewActivity;

    .line 478
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 482
    iget-object v0, p0, Lim/doit/pro/activity/DailyReviewActivity$2;->this$0:Lim/doit/pro/activity/DailyReviewActivity;

    invoke-static {v0}, Lim/doit/pro/activity/DailyReviewActivity;->access$10(Lim/doit/pro/activity/DailyReviewActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 483
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v0

    iget-object v0, v0, Lim/doit/pro/db/Persist;->dailyReviewDao:Lim/doit/pro/db/persist/DailyReviewDao;

    iget-object v1, p0, Lim/doit/pro/activity/DailyReviewActivity$2;->this$0:Lim/doit/pro/activity/DailyReviewActivity;

    invoke-static {v1}, Lim/doit/pro/activity/DailyReviewActivity;->access$11(Lim/doit/pro/activity/DailyReviewActivity;)Lim/doit/pro/model/DailyReview;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/db/persist/DailyReviewDao;->createAndSaveLog(Lim/doit/pro/model/DailyReview;)V

    .line 484
    iget-object v0, p0, Lim/doit/pro/activity/DailyReviewActivity$2;->this$0:Lim/doit/pro/activity/DailyReviewActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lim/doit/pro/activity/DailyReviewActivity;->access$12(Lim/doit/pro/activity/DailyReviewActivity;Z)V

    .line 489
    :goto_0
    iget-object v0, p0, Lim/doit/pro/activity/DailyReviewActivity$2;->this$0:Lim/doit/pro/activity/DailyReviewActivity;

    invoke-static {v0}, Lim/doit/pro/activity/DailyReviewActivity;->access$11(Lim/doit/pro/activity/DailyReviewActivity;)Lim/doit/pro/model/DailyReview;

    move-result-object v0

    invoke-virtual {v0}, Lim/doit/pro/model/DailyReview;->getDate()Ljava/lang/String;

    move-result-object v0

    const-string v1, "yyyyMMdd"

    .line 488
    invoke-static {v0, v1}, Lim/doit/pro/utils/DateUtils;->parse(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v0

    invoke-static {v0}, Lim/doit/pro/utils/PrefUtils;->saveLastDailyReviewDoneTime(Ljava/util/Calendar;)V

    .line 490
    iget-object v0, p0, Lim/doit/pro/activity/DailyReviewActivity$2;->this$0:Lim/doit/pro/activity/DailyReviewActivity;

    invoke-static {v0}, Lim/doit/pro/activity/DailyReviewActivity;->access$13(Lim/doit/pro/activity/DailyReviewActivity;)V

    .line 491
    return-void

    .line 486
    :cond_0
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v0

    iget-object v0, v0, Lim/doit/pro/db/Persist;->dailyReviewDao:Lim/doit/pro/db/persist/DailyReviewDao;

    iget-object v1, p0, Lim/doit/pro/activity/DailyReviewActivity$2;->this$0:Lim/doit/pro/activity/DailyReviewActivity;

    invoke-static {v1}, Lim/doit/pro/activity/DailyReviewActivity;->access$11(Lim/doit/pro/activity/DailyReviewActivity;)Lim/doit/pro/model/DailyReview;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/db/persist/DailyReviewDao;->updateAndSaveLog(Lim/doit/pro/model/DailyReview;)V

    goto :goto_0
.end method
