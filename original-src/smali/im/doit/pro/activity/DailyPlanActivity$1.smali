.class Lim/doit/pro/activity/DailyPlanActivity$1;
.super Ljava/lang/Object;
.source "DailyPlanActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/activity/DailyPlanActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/activity/DailyPlanActivity;


# direct methods
.method constructor <init>(Lim/doit/pro/activity/DailyPlanActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lim/doit/pro/activity/DailyPlanActivity$1;->this$0:Lim/doit/pro/activity/DailyPlanActivity;

    .line 404
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 4
    .param p1, "state"    # I

    .prologue
    .line 431
    iget-object v2, p0, Lim/doit/pro/activity/DailyPlanActivity$1;->this$0:Lim/doit/pro/activity/DailyPlanActivity;

    invoke-virtual {v2}, Lim/doit/pro/activity/DailyPlanActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    .line 432
    .local v1, "view":Landroid/view/View;
    if-eqz v1, :cond_0

    instance-of v2, v1, Landroid/widget/EditText;

    if-eqz v2, :cond_0

    .line 433
    check-cast v1, Landroid/widget/EditText;

    .end local v1    # "view":Landroid/view/View;
    invoke-static {v1}, Lim/doit/pro/activity/utils/ViewUtils;->hideSoftKeyboard(Landroid/widget/EditText;)V

    .line 436
    :cond_0
    iget-object v2, p0, Lim/doit/pro/activity/DailyPlanActivity$1;->this$0:Lim/doit/pro/activity/DailyPlanActivity;

    invoke-static {v2}, Lim/doit/pro/activity/DailyPlanActivity;->access$7(Lim/doit/pro/activity/DailyPlanActivity;)I

    move-result v2

    if-lez v2, :cond_1

    iget-object v2, p0, Lim/doit/pro/activity/DailyPlanActivity$1;->this$0:Lim/doit/pro/activity/DailyPlanActivity;

    invoke-static {v2}, Lim/doit/pro/activity/DailyPlanActivity;->access$7(Lim/doit/pro/activity/DailyPlanActivity;)I

    move-result v2

    iget-object v3, p0, Lim/doit/pro/activity/DailyPlanActivity$1;->this$0:Lim/doit/pro/activity/DailyPlanActivity;

    invoke-static {v3}, Lim/doit/pro/activity/DailyPlanActivity;->access$4(Lim/doit/pro/activity/DailyPlanActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 437
    iget-object v2, p0, Lim/doit/pro/activity/DailyPlanActivity$1;->this$0:Lim/doit/pro/activity/DailyPlanActivity;

    invoke-static {v2}, Lim/doit/pro/activity/DailyPlanActivity;->access$4(Lim/doit/pro/activity/DailyPlanActivity;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lim/doit/pro/activity/DailyPlanActivity$1;->this$0:Lim/doit/pro/activity/DailyPlanActivity;

    invoke-static {v3}, Lim/doit/pro/activity/DailyPlanActivity;->access$7(Lim/doit/pro/activity/DailyPlanActivity;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lim/doit/pro/model/Task;

    .line 438
    .local v0, "task":Lim/doit/pro/model/Task;
    invoke-virtual {v0}, Lim/doit/pro/model/Task;->isChanged()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 439
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v2

    iget-object v2, v2, Lim/doit/pro/db/Persist;->taskDao:Lim/doit/pro/db/persist/TaskDao;

    invoke-virtual {v2, v0}, Lim/doit/pro/db/persist/TaskDao;->updateAndSaveLog(Lim/doit/pro/model/Task;)V

    .line 440
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lim/doit/pro/model/Task;->setChanged(Z)V

    .line 443
    .end local v0    # "task":Lim/doit/pro/model/Task;
    :cond_1
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "paramInt1"    # I
    .param p2, "paramFloat"    # F
    .param p3, "paramInt2"    # I

    .prologue
    .line 427
    return-void
.end method

.method public onPageSelected(I)V
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 408
    iget-object v1, p0, Lim/doit/pro/activity/DailyPlanActivity$1;->this$0:Lim/doit/pro/activity/DailyPlanActivity;

    invoke-static {v1, p1}, Lim/doit/pro/activity/DailyPlanActivity;->access$0(Lim/doit/pro/activity/DailyPlanActivity;I)V

    .line 409
    iget-object v1, p0, Lim/doit/pro/activity/DailyPlanActivity$1;->this$0:Lim/doit/pro/activity/DailyPlanActivity;

    invoke-static {v1}, Lim/doit/pro/activity/DailyPlanActivity;->access$1(Lim/doit/pro/activity/DailyPlanActivity;)I

    move-result v1

    if-ltz v1, :cond_0

    .line 410
    iget-object v1, p0, Lim/doit/pro/activity/DailyPlanActivity$1;->this$0:Lim/doit/pro/activity/DailyPlanActivity;

    const/4 v2, -0x1

    invoke-static {v1, v2}, Lim/doit/pro/activity/DailyPlanActivity;->access$2(Lim/doit/pro/activity/DailyPlanActivity;I)V

    .line 411
    iget-object v1, p0, Lim/doit/pro/activity/DailyPlanActivity$1;->this$0:Lim/doit/pro/activity/DailyPlanActivity;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lim/doit/pro/activity/DailyPlanActivity;->access$3(Lim/doit/pro/activity/DailyPlanActivity;Z)V

    .line 414
    :cond_0
    const/4 v0, 0x0

    .line 415
    .local v0, "task":Lim/doit/pro/model/Task;
    iget-object v1, p0, Lim/doit/pro/activity/DailyPlanActivity$1;->this$0:Lim/doit/pro/activity/DailyPlanActivity;

    invoke-static {v1}, Lim/doit/pro/activity/DailyPlanActivity;->access$4(Lim/doit/pro/activity/DailyPlanActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_1

    .line 416
    iget-object v1, p0, Lim/doit/pro/activity/DailyPlanActivity$1;->this$0:Lim/doit/pro/activity/DailyPlanActivity;

    invoke-static {v1}, Lim/doit/pro/activity/DailyPlanActivity;->access$4(Lim/doit/pro/activity/DailyPlanActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "task":Lim/doit/pro/model/Task;
    check-cast v0, Lim/doit/pro/model/Task;

    .line 418
    .restart local v0    # "task":Lim/doit/pro/model/Task;
    :cond_1
    iget-object v1, p0, Lim/doit/pro/activity/DailyPlanActivity$1;->this$0:Lim/doit/pro/activity/DailyPlanActivity;

    invoke-static {v1, v0}, Lim/doit/pro/activity/DailyPlanActivity;->access$5(Lim/doit/pro/activity/DailyPlanActivity;Lim/doit/pro/model/Task;)V

    .line 419
    iget-object v1, p0, Lim/doit/pro/activity/DailyPlanActivity$1;->this$0:Lim/doit/pro/activity/DailyPlanActivity;

    invoke-static {v1}, Lim/doit/pro/activity/DailyPlanActivity;->access$6(Lim/doit/pro/activity/DailyPlanActivity;)Lim/doit/pro/activity/DailyPlanActivity$DailyPlanPagerAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lim/doit/pro/activity/DailyPlanActivity$DailyPlanPagerAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne p1, v1, :cond_2

    .line 420
    iget-object v1, p0, Lim/doit/pro/activity/DailyPlanActivity$1;->this$0:Lim/doit/pro/activity/DailyPlanActivity;

    invoke-static {v1}, Lim/doit/pro/activity/DailyPlanActivity;->access$6(Lim/doit/pro/activity/DailyPlanActivity;)Lim/doit/pro/activity/DailyPlanActivity$DailyPlanPagerAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lim/doit/pro/activity/DailyPlanActivity$DailyPlanPagerAdapter;->notifyDataSetChanged()V

    .line 422
    :cond_2
    return-void
.end method
