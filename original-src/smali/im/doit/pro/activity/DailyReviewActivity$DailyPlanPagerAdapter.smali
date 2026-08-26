.class public Lim/doit/pro/activity/DailyReviewActivity$DailyPlanPagerAdapter;
.super Landroid/support/v4/app/FragmentStatePagerAdapter;
.source "DailyReviewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/activity/DailyReviewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DailyPlanPagerAdapter"
.end annotation


# instance fields
.field registeredFragments:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lim/doit/pro/activity/DailyReviewActivity;


# direct methods
.method public constructor <init>(Lim/doit/pro/activity/DailyReviewActivity;Landroid/support/v4/app/FragmentManager;)V
    .locals 1
    .param p2, "fm"    # Landroid/support/v4/app/FragmentManager;

    .prologue
    .line 336
    iput-object p1, p0, Lim/doit/pro/activity/DailyReviewActivity$DailyPlanPagerAdapter;->this$0:Lim/doit/pro/activity/DailyReviewActivity;

    .line 337
    invoke-direct {p0, p2}, Landroid/support/v4/app/FragmentStatePagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 334
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lim/doit/pro/activity/DailyReviewActivity$DailyPlanPagerAdapter;->registeredFragments:Landroid/util/SparseArray;

    .line 338
    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 1
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 350
    iget-object v0, p0, Lim/doit/pro/activity/DailyReviewActivity$DailyPlanPagerAdapter;->registeredFragments:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 351
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/FragmentStatePagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 352
    return-void
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 365
    const/4 v0, 0x2

    .line 366
    .local v0, "count":I
    iget-object v1, p0, Lim/doit/pro/activity/DailyReviewActivity$DailyPlanPagerAdapter;->this$0:Lim/doit/pro/activity/DailyReviewActivity;

    invoke-static {v1}, Lim/doit/pro/activity/DailyReviewActivity;->access$6(Lim/doit/pro/activity/DailyReviewActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v1}, Lim/doit/pro/utils/CollectionUtils;->isNotEmpty(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 367
    iget-object v1, p0, Lim/doit/pro/activity/DailyReviewActivity$DailyPlanPagerAdapter;->this$0:Lim/doit/pro/activity/DailyReviewActivity;

    invoke-static {v1}, Lim/doit/pro/activity/DailyReviewActivity;->access$6(Lim/doit/pro/activity/DailyReviewActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    .line 369
    :cond_0
    return v0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 3
    .param p1, "position"    # I

    .prologue
    const/4 v2, 0x0

    .line 374
    iget-object v0, p0, Lim/doit/pro/activity/DailyReviewActivity$DailyPlanPagerAdapter;->this$0:Lim/doit/pro/activity/DailyReviewActivity;

    invoke-static {v0, p1}, Lim/doit/pro/activity/DailyReviewActivity;->access$16(Lim/doit/pro/activity/DailyReviewActivity;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 376
    iget-object v0, p0, Lim/doit/pro/activity/DailyReviewActivity$DailyPlanPagerAdapter;->this$0:Lim/doit/pro/activity/DailyReviewActivity;

    invoke-static {v0}, Lim/doit/pro/activity/DailyReviewActivity;->access$11(Lim/doit/pro/activity/DailyReviewActivity;)Lim/doit/pro/model/DailyReview;

    move-result-object v0

    invoke-static {v0}, Lim/doit/pro/activity/DailyReviewChartFragment;->newInstance(Lim/doit/pro/model/DailyReview;)Lim/doit/pro/activity/DailyReviewChartFragment;

    move-result-object v0

    .line 385
    :goto_0
    return-object v0

    .line 377
    :cond_0
    iget-object v0, p0, Lim/doit/pro/activity/DailyReviewActivity$DailyPlanPagerAdapter;->this$0:Lim/doit/pro/activity/DailyReviewActivity;

    invoke-static {v0, p1}, Lim/doit/pro/activity/DailyReviewActivity;->access$17(Lim/doit/pro/activity/DailyReviewActivity;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 379
    iget-object v0, p0, Lim/doit/pro/activity/DailyReviewActivity$DailyPlanPagerAdapter;->this$0:Lim/doit/pro/activity/DailyReviewActivity;

    invoke-static {v0}, Lim/doit/pro/activity/DailyReviewActivity;->access$11(Lim/doit/pro/activity/DailyReviewActivity;)Lim/doit/pro/model/DailyReview;

    move-result-object v0

    invoke-static {v0}, Lim/doit/pro/activity/DailyReviewDoneFragment;->newInstance(Lim/doit/pro/model/DailyReview;)Lim/doit/pro/activity/DailyReviewDoneFragment;

    move-result-object v0

    goto :goto_0

    .line 381
    :cond_1
    iget-object v0, p0, Lim/doit/pro/activity/DailyReviewActivity$DailyPlanPagerAdapter;->this$0:Lim/doit/pro/activity/DailyReviewActivity;

    invoke-static {v0}, Lim/doit/pro/activity/DailyReviewActivity;->access$3(Lim/doit/pro/activity/DailyReviewActivity;)I

    move-result v0

    if-eq p1, v0, :cond_2

    .line 382
    iget-object v0, p0, Lim/doit/pro/activity/DailyReviewActivity$DailyPlanPagerAdapter;->this$0:Lim/doit/pro/activity/DailyReviewActivity;

    invoke-static {v0}, Lim/doit/pro/activity/DailyReviewActivity;->access$6(Lim/doit/pro/activity/DailyReviewActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lim/doit/pro/model/Task;

    invoke-static {v0, v2}, Lim/doit/pro/activity/TaskDetailFragment;->newInstance(Lim/doit/pro/model/Task;Z)Lim/doit/pro/activity/TaskDetailFragment;

    move-result-object v0

    goto :goto_0

    .line 385
    :cond_2
    iget-object v0, p0, Lim/doit/pro/activity/DailyReviewActivity$DailyPlanPagerAdapter;->this$0:Lim/doit/pro/activity/DailyReviewActivity;

    invoke-static {v0}, Lim/doit/pro/activity/DailyReviewActivity;->access$6(Lim/doit/pro/activity/DailyReviewActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lim/doit/pro/model/Task;

    .line 386
    iget-object v1, p0, Lim/doit/pro/activity/DailyReviewActivity$DailyPlanPagerAdapter;->this$0:Lim/doit/pro/activity/DailyReviewActivity;

    invoke-static {v1}, Lim/doit/pro/activity/DailyReviewActivity;->access$18(Lim/doit/pro/activity/DailyReviewActivity;)Z

    move-result v1

    .line 385
    invoke-static {v0, v2, v1}, Lim/doit/pro/activity/TaskDetailFragment;->newInstance(Lim/doit/pro/model/Task;ZZ)Lim/doit/pro/activity/TaskDetailFragment;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 360
    const/4 v0, -0x2

    return v0
.end method

.method public getRegisteredFragment(I)Landroid/support/v4/app/Fragment;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 355
    iget-object v0, p0, Lim/doit/pro/activity/DailyReviewActivity$DailyPlanPagerAdapter;->registeredFragments:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    return-object v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 2
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .prologue
    .line 342
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentStatePagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 344
    .local v0, "fragment":Landroid/support/v4/app/Fragment;
    iget-object v1, p0, Lim/doit/pro/activity/DailyReviewActivity$DailyPlanPagerAdapter;->registeredFragments:Landroid/util/SparseArray;

    invoke-virtual {v1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 345
    return-object v0
.end method
