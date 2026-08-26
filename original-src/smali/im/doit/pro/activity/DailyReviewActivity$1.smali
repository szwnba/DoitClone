.class Lim/doit/pro/activity/DailyReviewActivity$1;
.super Ljava/lang/Object;
.source "DailyReviewActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


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
    iput-object p1, p0, Lim/doit/pro/activity/DailyReviewActivity$1;->this$0:Lim/doit/pro/activity/DailyReviewActivity;

    .line 431
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 4
    .param p1, "state"    # I

    .prologue
    .line 460
    iget-object v2, p0, Lim/doit/pro/activity/DailyReviewActivity$1;->this$0:Lim/doit/pro/activity/DailyReviewActivity;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lim/doit/pro/activity/DailyReviewActivity;->access$5(Lim/doit/pro/activity/DailyReviewActivity;Z)V

    .line 461
    iget-object v2, p0, Lim/doit/pro/activity/DailyReviewActivity$1;->this$0:Lim/doit/pro/activity/DailyReviewActivity;

    invoke-virtual {v2}, Lim/doit/pro/activity/DailyReviewActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    .line 462
    .local v1, "view":Landroid/view/View;
    if-eqz v1, :cond_0

    instance-of v2, v1, Landroid/widget/EditText;

    if-eqz v2, :cond_0

    .line 463
    check-cast v1, Landroid/widget/EditText;

    .end local v1    # "view":Landroid/view/View;
    invoke-static {v1}, Lim/doit/pro/activity/utils/ViewUtils;->hideSoftKeyboard(Landroid/widget/EditText;)V

    .line 466
    :cond_0
    iget-object v2, p0, Lim/doit/pro/activity/DailyReviewActivity$1;->this$0:Lim/doit/pro/activity/DailyReviewActivity;

    invoke-static {v2}, Lim/doit/pro/activity/DailyReviewActivity;->access$8(Lim/doit/pro/activity/DailyReviewActivity;)I

    move-result v2

    if-ltz v2, :cond_2

    iget-object v2, p0, Lim/doit/pro/activity/DailyReviewActivity$1;->this$0:Lim/doit/pro/activity/DailyReviewActivity;

    invoke-static {v2}, Lim/doit/pro/activity/DailyReviewActivity;->access$8(Lim/doit/pro/activity/DailyReviewActivity;)I

    move-result v2

    iget-object v3, p0, Lim/doit/pro/activity/DailyReviewActivity$1;->this$0:Lim/doit/pro/activity/DailyReviewActivity;

    invoke-static {v3}, Lim/doit/pro/activity/DailyReviewActivity;->access$6(Lim/doit/pro/activity/DailyReviewActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 467
    iget-object v2, p0, Lim/doit/pro/activity/DailyReviewActivity$1;->this$0:Lim/doit/pro/activity/DailyReviewActivity;

    invoke-static {v2}, Lim/doit/pro/activity/DailyReviewActivity;->access$6(Lim/doit/pro/activity/DailyReviewActivity;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lim/doit/pro/activity/DailyReviewActivity$1;->this$0:Lim/doit/pro/activity/DailyReviewActivity;

    invoke-static {v3}, Lim/doit/pro/activity/DailyReviewActivity;->access$8(Lim/doit/pro/activity/DailyReviewActivity;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lim/doit/pro/model/Task;

    .line 468
    .local v0, "task":Lim/doit/pro/model/Task;
    invoke-virtual {v0}, Lim/doit/pro/model/Task;->isChanged()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 469
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v2

    iget-object v2, v2, Lim/doit/pro/db/Persist;->taskDao:Lim/doit/pro/db/persist/TaskDao;

    invoke-virtual {v2, v0}, Lim/doit/pro/db/persist/TaskDao;->updateAndSaveLog(Lim/doit/pro/model/Task;)V

    .line 470
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lim/doit/pro/model/Task;->setChanged(Z)V

    .line 472
    :cond_1
    iget-object v2, p0, Lim/doit/pro/activity/DailyReviewActivity$1;->this$0:Lim/doit/pro/activity/DailyReviewActivity;

    invoke-static {v2, v0}, Lim/doit/pro/activity/DailyReviewActivity;->access$9(Lim/doit/pro/activity/DailyReviewActivity;Lim/doit/pro/model/Task;)V

    .line 474
    .end local v0    # "task":Lim/doit/pro/model/Task;
    :cond_2
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "paramInt1"    # I
    .param p2, "paramFloat"    # F
    .param p3, "paramInt2"    # I

    .prologue
    .line 456
    return-void
.end method

.method public onPageSelected(I)V
    .locals 4
    .param p1, "position"    # I

    .prologue
    const/4 v3, 0x1

    .line 435
    iget-object v1, p0, Lim/doit/pro/activity/DailyReviewActivity$1;->this$0:Lim/doit/pro/activity/DailyReviewActivity;

    invoke-static {v1, p1}, Lim/doit/pro/activity/DailyReviewActivity;->access$0(Lim/doit/pro/activity/DailyReviewActivity;I)V

    .line 437
    iget-object v1, p0, Lim/doit/pro/activity/DailyReviewActivity$1;->this$0:Lim/doit/pro/activity/DailyReviewActivity;

    invoke-static {v1}, Lim/doit/pro/activity/DailyReviewActivity;->access$1(Lim/doit/pro/activity/DailyReviewActivity;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 438
    iget-object v1, p0, Lim/doit/pro/activity/DailyReviewActivity$1;->this$0:Lim/doit/pro/activity/DailyReviewActivity;

    invoke-static {v1}, Lim/doit/pro/activity/DailyReviewActivity;->access$2(Lim/doit/pro/activity/DailyReviewActivity;)Lim/doit/pro/ui/component/DViewPager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lim/doit/pro/ui/component/DViewPager;->enableSwipeRight(Ljava/lang/Boolean;)V

    .line 442
    :goto_0
    iget-object v1, p0, Lim/doit/pro/activity/DailyReviewActivity$1;->this$0:Lim/doit/pro/activity/DailyReviewActivity;

    invoke-static {v1}, Lim/doit/pro/activity/DailyReviewActivity;->access$3(Lim/doit/pro/activity/DailyReviewActivity;)I

    move-result v1

    if-ltz v1, :cond_0

    .line 443
    iget-object v1, p0, Lim/doit/pro/activity/DailyReviewActivity$1;->this$0:Lim/doit/pro/activity/DailyReviewActivity;

    const/4 v2, -0x1

    invoke-static {v1, v2}, Lim/doit/pro/activity/DailyReviewActivity;->access$4(Lim/doit/pro/activity/DailyReviewActivity;I)V

    .line 444
    iget-object v1, p0, Lim/doit/pro/activity/DailyReviewActivity$1;->this$0:Lim/doit/pro/activity/DailyReviewActivity;

    invoke-static {v1, v3}, Lim/doit/pro/activity/DailyReviewActivity;->access$5(Lim/doit/pro/activity/DailyReviewActivity;Z)V

    .line 446
    :cond_0
    const/4 v0, 0x0

    .line 447
    .local v0, "task":Lim/doit/pro/model/Task;
    iget-object v1, p0, Lim/doit/pro/activity/DailyReviewActivity$1;->this$0:Lim/doit/pro/activity/DailyReviewActivity;

    invoke-static {v1}, Lim/doit/pro/activity/DailyReviewActivity;->access$6(Lim/doit/pro/activity/DailyReviewActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_1

    .line 448
    iget-object v1, p0, Lim/doit/pro/activity/DailyReviewActivity$1;->this$0:Lim/doit/pro/activity/DailyReviewActivity;

    invoke-static {v1}, Lim/doit/pro/activity/DailyReviewActivity;->access$6(Lim/doit/pro/activity/DailyReviewActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "task":Lim/doit/pro/model/Task;
    check-cast v0, Lim/doit/pro/model/Task;

    .line 450
    .restart local v0    # "task":Lim/doit/pro/model/Task;
    :cond_1
    iget-object v1, p0, Lim/doit/pro/activity/DailyReviewActivity$1;->this$0:Lim/doit/pro/activity/DailyReviewActivity;

    invoke-static {v1, v0}, Lim/doit/pro/activity/DailyReviewActivity;->access$7(Lim/doit/pro/activity/DailyReviewActivity;Lim/doit/pro/model/Task;)V

    .line 451
    return-void

    .line 440
    .end local v0    # "task":Lim/doit/pro/model/Task;
    :cond_2
    iget-object v1, p0, Lim/doit/pro/activity/DailyReviewActivity$1;->this$0:Lim/doit/pro/activity/DailyReviewActivity;

    invoke-static {v1}, Lim/doit/pro/activity/DailyReviewActivity;->access$2(Lim/doit/pro/activity/DailyReviewActivity;)Lim/doit/pro/ui/component/DViewPager;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lim/doit/pro/ui/component/DViewPager;->enableSwipeRight(Ljava/lang/Boolean;)V

    goto :goto_0
.end method
