.class public Lim/doit/pro/activity/DailyPlanActivity$DailyPlanPagerAdapter;
.super Landroid/support/v4/app/FragmentStatePagerAdapter;
.source "DailyPlanActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/activity/DailyPlanActivity;
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

.field final synthetic this$0:Lim/doit/pro/activity/DailyPlanActivity;


# direct methods
.method public constructor <init>(Lim/doit/pro/activity/DailyPlanActivity;Landroid/support/v4/app/FragmentManager;)V
    .locals 1
    .param p2, "fm"    # Landroid/support/v4/app/FragmentManager;

    .prologue
    .line 312
    iput-object p1, p0, Lim/doit/pro/activity/DailyPlanActivity$DailyPlanPagerAdapter;->this$0:Lim/doit/pro/activity/DailyPlanActivity;

    .line 313
    invoke-direct {p0, p2}, Landroid/support/v4/app/FragmentStatePagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 310
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lim/doit/pro/activity/DailyPlanActivity$DailyPlanPagerAdapter;->registeredFragments:Landroid/util/SparseArray;

    .line 314
    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 1
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 326
    iget-object v0, p0, Lim/doit/pro/activity/DailyPlanActivity$DailyPlanPagerAdapter;->registeredFragments:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 327
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/FragmentStatePagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 328
    return-void
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 341
    const/4 v0, 0x1

    .line 342
    .local v0, "count":I
    iget-object v1, p0, Lim/doit/pro/activity/DailyPlanActivity$DailyPlanPagerAdapter;->this$0:Lim/doit/pro/activity/DailyPlanActivity;

    invoke-static {v1}, Lim/doit/pro/activity/DailyPlanActivity;->access$4(Lim/doit/pro/activity/DailyPlanActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v1}, Lim/doit/pro/utils/CollectionUtils;->isNotEmpty(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 343
    iget-object v1, p0, Lim/doit/pro/activity/DailyPlanActivity$DailyPlanPagerAdapter;->this$0:Lim/doit/pro/activity/DailyPlanActivity;

    invoke-static {v1}, Lim/doit/pro/activity/DailyPlanActivity;->access$4(Lim/doit/pro/activity/DailyPlanActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    .line 345
    :cond_0
    return v0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 5
    .param p1, "position"    # I

    .prologue
    const/4 v4, 0x0

    .line 350
    invoke-virtual {p0}, Lim/doit/pro/activity/DailyPlanActivity$DailyPlanPagerAdapter;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne p1, v2, :cond_0

    .line 351
    iget-object v2, p0, Lim/doit/pro/activity/DailyPlanActivity$DailyPlanPagerAdapter;->this$0:Lim/doit/pro/activity/DailyPlanActivity;

    invoke-static {v2}, Lim/doit/pro/activity/DailyPlanActivity;->access$9(Lim/doit/pro/activity/DailyPlanActivity;)I

    move-result v0

    .line 352
    .local v0, "arrangedTime":I
    iget-object v2, p0, Lim/doit/pro/activity/DailyPlanActivity$DailyPlanPagerAdapter;->this$0:Lim/doit/pro/activity/DailyPlanActivity;

    invoke-static {v2}, Lim/doit/pro/activity/DailyPlanActivity;->access$10(Lim/doit/pro/activity/DailyPlanActivity;)I

    move-result v2

    sub-int v1, v2, v0

    .line 354
    .local v1, "leftTime":I
    invoke-static {v0, v1}, Lim/doit/pro/activity/DailyPlanDoneFragment;->newInstance(II)Lim/doit/pro/activity/DailyPlanDoneFragment;

    move-result-object v2

    .line 360
    .end local v0    # "arrangedTime":I
    .end local v1    # "leftTime":I
    :goto_0
    return-object v2

    .line 356
    :cond_0
    iget-object v2, p0, Lim/doit/pro/activity/DailyPlanActivity$DailyPlanPagerAdapter;->this$0:Lim/doit/pro/activity/DailyPlanActivity;

    invoke-static {v2}, Lim/doit/pro/activity/DailyPlanActivity;->access$1(Lim/doit/pro/activity/DailyPlanActivity;)I

    move-result v2

    if-eq p1, v2, :cond_1

    .line 357
    iget-object v2, p0, Lim/doit/pro/activity/DailyPlanActivity$DailyPlanPagerAdapter;->this$0:Lim/doit/pro/activity/DailyPlanActivity;

    invoke-static {v2}, Lim/doit/pro/activity/DailyPlanActivity;->access$4(Lim/doit/pro/activity/DailyPlanActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lim/doit/pro/model/Task;

    invoke-static {v2, v4}, Lim/doit/pro/activity/TaskDetailFragment;->newInstance(Lim/doit/pro/model/Task;Z)Lim/doit/pro/activity/TaskDetailFragment;

    move-result-object v2

    goto :goto_0

    .line 360
    :cond_1
    iget-object v2, p0, Lim/doit/pro/activity/DailyPlanActivity$DailyPlanPagerAdapter;->this$0:Lim/doit/pro/activity/DailyPlanActivity;

    invoke-static {v2}, Lim/doit/pro/activity/DailyPlanActivity;->access$4(Lim/doit/pro/activity/DailyPlanActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lim/doit/pro/model/Task;

    .line 361
    iget-object v3, p0, Lim/doit/pro/activity/DailyPlanActivity$DailyPlanPagerAdapter;->this$0:Lim/doit/pro/activity/DailyPlanActivity;

    invoke-static {v3}, Lim/doit/pro/activity/DailyPlanActivity;->access$11(Lim/doit/pro/activity/DailyPlanActivity;)Z

    move-result v3

    .line 360
    invoke-static {v2, v4, v3}, Lim/doit/pro/activity/TaskDetailFragment;->newInstance(Lim/doit/pro/model/Task;ZZ)Lim/doit/pro/activity/TaskDetailFragment;

    move-result-object v2

    goto :goto_0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 336
    const/4 v0, -0x2

    return v0
.end method

.method public getRegisteredFragment(I)Landroid/support/v4/app/Fragment;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 331
    iget-object v0, p0, Lim/doit/pro/activity/DailyPlanActivity$DailyPlanPagerAdapter;->registeredFragments:Landroid/util/SparseArray;

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
    .line 318
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentStatePagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 320
    .local v0, "fragment":Landroid/support/v4/app/Fragment;
    iget-object v1, p0, Lim/doit/pro/activity/DailyPlanActivity$DailyPlanPagerAdapter;->registeredFragments:Landroid/util/SparseArray;

    invoke-virtual {v1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 321
    return-object v0
.end method
