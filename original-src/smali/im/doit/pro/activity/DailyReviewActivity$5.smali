.class Lim/doit/pro/activity/DailyReviewActivity$5;
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
    iput-object p1, p0, Lim/doit/pro/activity/DailyReviewActivity$5;->this$0:Lim/doit/pro/activity/DailyReviewActivity;

    .line 646
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 650
    iget-object v0, p0, Lim/doit/pro/activity/DailyReviewActivity$5;->this$0:Lim/doit/pro/activity/DailyReviewActivity;

    invoke-static {v0}, Lim/doit/pro/activity/DailyReviewActivity;->access$8(Lim/doit/pro/activity/DailyReviewActivity;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Lim/doit/pro/activity/DailyReviewActivity;->access$0(Lim/doit/pro/activity/DailyReviewActivity;I)V

    .line 651
    iget-object v0, p0, Lim/doit/pro/activity/DailyReviewActivity$5;->this$0:Lim/doit/pro/activity/DailyReviewActivity;

    invoke-static {v0}, Lim/doit/pro/activity/DailyReviewActivity;->access$2(Lim/doit/pro/activity/DailyReviewActivity;)Lim/doit/pro/ui/component/DViewPager;

    move-result-object v0

    iget-object v1, p0, Lim/doit/pro/activity/DailyReviewActivity$5;->this$0:Lim/doit/pro/activity/DailyReviewActivity;

    invoke-static {v1}, Lim/doit/pro/activity/DailyReviewActivity;->access$8(Lim/doit/pro/activity/DailyReviewActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/DViewPager;->setCurrentItem(I)V

    .line 652
    iget-object v0, p0, Lim/doit/pro/activity/DailyReviewActivity$5;->this$0:Lim/doit/pro/activity/DailyReviewActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lim/doit/pro/activity/DailyReviewActivity;->access$7(Lim/doit/pro/activity/DailyReviewActivity;Lim/doit/pro/model/Task;)V

    .line 653
    iget-object v0, p0, Lim/doit/pro/activity/DailyReviewActivity$5;->this$0:Lim/doit/pro/activity/DailyReviewActivity;

    invoke-static {v0}, Lim/doit/pro/activity/DailyReviewActivity;->access$15(Lim/doit/pro/activity/DailyReviewActivity;)Lim/doit/pro/activity/DailyReviewActivity$DailyPlanPagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lim/doit/pro/activity/DailyReviewActivity$DailyPlanPagerAdapter;->notifyDataSetChanged()V

    .line 654
    return-void
.end method
