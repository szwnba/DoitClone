.class Lim/doit/pro/activity/DailyReviewDoneFragment$1;
.super Ljava/lang/Object;
.source "DailyReviewDoneFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/activity/DailyReviewDoneFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/activity/DailyReviewDoneFragment;


# direct methods
.method constructor <init>(Lim/doit/pro/activity/DailyReviewDoneFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lim/doit/pro/activity/DailyReviewDoneFragment$1;->this$0:Lim/doit/pro/activity/DailyReviewDoneFragment;

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 147
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 148
    .local v0, "tag":I
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lim/doit/pro/activity/DailyReviewDoneFragment$1;->this$0:Lim/doit/pro/activity/DailyReviewDoneFragment;

    invoke-static {v1}, Lim/doit/pro/activity/DailyReviewDoneFragment;->access$0(Lim/doit/pro/activity/DailyReviewDoneFragment;)I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 149
    add-int/lit8 v0, v0, -0x1

    .line 151
    :cond_0
    iget-object v1, p0, Lim/doit/pro/activity/DailyReviewDoneFragment$1;->this$0:Lim/doit/pro/activity/DailyReviewDoneFragment;

    invoke-static {v1, v0}, Lim/doit/pro/activity/DailyReviewDoneFragment;->access$1(Lim/doit/pro/activity/DailyReviewDoneFragment;I)V

    .line 152
    iget-object v1, p0, Lim/doit/pro/activity/DailyReviewDoneFragment$1;->this$0:Lim/doit/pro/activity/DailyReviewDoneFragment;

    invoke-static {v1}, Lim/doit/pro/activity/DailyReviewDoneFragment;->access$2(Lim/doit/pro/activity/DailyReviewDoneFragment;)V

    .line 153
    iget-object v1, p0, Lim/doit/pro/activity/DailyReviewDoneFragment$1;->this$0:Lim/doit/pro/activity/DailyReviewDoneFragment;

    invoke-static {v1}, Lim/doit/pro/activity/DailyReviewDoneFragment;->access$3(Lim/doit/pro/activity/DailyReviewDoneFragment;)Lim/doit/pro/activity/DailyReviewDoneFragment$TopBarChangeListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 154
    iget-object v1, p0, Lim/doit/pro/activity/DailyReviewDoneFragment$1;->this$0:Lim/doit/pro/activity/DailyReviewDoneFragment;

    invoke-static {v1}, Lim/doit/pro/activity/DailyReviewDoneFragment;->access$3(Lim/doit/pro/activity/DailyReviewDoneFragment;)Lim/doit/pro/activity/DailyReviewDoneFragment$TopBarChangeListener;

    move-result-object v1

    iget-object v2, p0, Lim/doit/pro/activity/DailyReviewDoneFragment$1;->this$0:Lim/doit/pro/activity/DailyReviewDoneFragment;

    invoke-static {v2}, Lim/doit/pro/activity/DailyReviewDoneFragment;->access$4(Lim/doit/pro/activity/DailyReviewDoneFragment;)Ljava/lang/String;

    move-result-object v2

    .line 155
    iget-object v3, p0, Lim/doit/pro/activity/DailyReviewDoneFragment$1;->this$0:Lim/doit/pro/activity/DailyReviewDoneFragment;

    invoke-static {v3}, Lim/doit/pro/activity/DailyReviewDoneFragment;->access$0(Lim/doit/pro/activity/DailyReviewDoneFragment;)I

    move-result v3

    iget-object v4, p0, Lim/doit/pro/activity/DailyReviewDoneFragment$1;->this$0:Lim/doit/pro/activity/DailyReviewDoneFragment;

    invoke-static {v4}, Lim/doit/pro/activity/DailyReviewDoneFragment;->access$5(Lim/doit/pro/activity/DailyReviewDoneFragment;)Ljava/lang/String;

    move-result-object v4

    .line 154
    invoke-interface {v1, v2, v3, v4}, Lim/doit/pro/activity/DailyReviewDoneFragment$TopBarChangeListener;->updateDailyReview(Ljava/lang/String;ILjava/lang/String;)V

    .line 157
    :cond_1
    return-void
.end method
