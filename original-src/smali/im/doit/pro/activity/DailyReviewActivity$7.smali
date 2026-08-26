.class Lim/doit/pro/activity/DailyReviewActivity$7;
.super Ljava/lang/Object;
.source "DailyReviewActivity.java"

# interfaces
.implements Lim/doit/pro/ui/component/AddCommentDialog$OnAddCommentFinishListner;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/activity/DailyReviewActivity;->showAddCommentDialog()V
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
    iput-object p1, p0, Lim/doit/pro/activity/DailyReviewActivity$7;->this$0:Lim/doit/pro/activity/DailyReviewActivity;

    .line 571
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public finish(Lim/doit/pro/model/TaskComment;)V
    .locals 3
    .param p1, "comment"    # Lim/doit/pro/model/TaskComment;

    .prologue
    .line 575
    iget-object v1, p0, Lim/doit/pro/activity/DailyReviewActivity$7;->this$0:Lim/doit/pro/activity/DailyReviewActivity;

    invoke-static {v1}, Lim/doit/pro/activity/DailyReviewActivity;->access$15(Lim/doit/pro/activity/DailyReviewActivity;)Lim/doit/pro/activity/DailyReviewActivity$DailyPlanPagerAdapter;

    move-result-object v1

    .line 576
    iget-object v2, p0, Lim/doit/pro/activity/DailyReviewActivity$7;->this$0:Lim/doit/pro/activity/DailyReviewActivity;

    invoke-static {v2}, Lim/doit/pro/activity/DailyReviewActivity;->access$8(Lim/doit/pro/activity/DailyReviewActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Lim/doit/pro/activity/DailyReviewActivity$DailyPlanPagerAdapter;->getRegisteredFragment(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 577
    .local v0, "fragment":Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lim/doit/pro/activity/TaskDetailFragment;

    if-eqz v1, :cond_0

    .line 578
    check-cast v0, Lim/doit/pro/activity/TaskDetailFragment;

    .end local v0    # "fragment":Landroid/support/v4/app/Fragment;
    invoke-virtual {v0, p1}, Lim/doit/pro/activity/TaskDetailFragment;->addComment(Lim/doit/pro/model/TaskComment;)V

    .line 580
    :cond_0
    return-void
.end method
