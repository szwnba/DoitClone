.class Lim/doit/pro/activity/DailyPlanActivity$5;
.super Ljava/lang/Object;
.source "DailyPlanActivity.java"

# interfaces
.implements Lim/doit/pro/ui/component/AddCommentDialog$OnAddCommentFinishListner;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/activity/DailyPlanActivity;->showAddCommentDialog()V
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
    iput-object p1, p0, Lim/doit/pro/activity/DailyPlanActivity$5;->this$0:Lim/doit/pro/activity/DailyPlanActivity;

    .line 525
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public finish(Lim/doit/pro/model/TaskComment;)V
    .locals 3
    .param p1, "comment"    # Lim/doit/pro/model/TaskComment;

    .prologue
    .line 529
    iget-object v1, p0, Lim/doit/pro/activity/DailyPlanActivity$5;->this$0:Lim/doit/pro/activity/DailyPlanActivity;

    invoke-static {v1}, Lim/doit/pro/activity/DailyPlanActivity;->access$6(Lim/doit/pro/activity/DailyPlanActivity;)Lim/doit/pro/activity/DailyPlanActivity$DailyPlanPagerAdapter;

    move-result-object v1

    .line 530
    iget-object v2, p0, Lim/doit/pro/activity/DailyPlanActivity$5;->this$0:Lim/doit/pro/activity/DailyPlanActivity;

    invoke-static {v2}, Lim/doit/pro/activity/DailyPlanActivity;->access$7(Lim/doit/pro/activity/DailyPlanActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Lim/doit/pro/activity/DailyPlanActivity$DailyPlanPagerAdapter;->getRegisteredFragment(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 531
    .local v0, "fragment":Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lim/doit/pro/activity/TaskDetailFragment;

    if-eqz v1, :cond_0

    .line 532
    check-cast v0, Lim/doit/pro/activity/TaskDetailFragment;

    .end local v0    # "fragment":Landroid/support/v4/app/Fragment;
    invoke-virtual {v0, p1}, Lim/doit/pro/activity/TaskDetailFragment;->addComment(Lim/doit/pro/model/TaskComment;)V

    .line 534
    :cond_0
    return-void
.end method
