.class Lim/doit/pro/activity/DailyReviewDoneFragment$2;
.super Ljava/lang/Object;
.source "DailyReviewDoneFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/activity/DailyReviewDoneFragment;->initListener()V
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
    iput-object p1, p0, Lim/doit/pro/activity/DailyReviewDoneFragment$2;->this$0:Lim/doit/pro/activity/DailyReviewDoneFragment;

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 134
    iget-object v0, p0, Lim/doit/pro/activity/DailyReviewDoneFragment$2;->this$0:Lim/doit/pro/activity/DailyReviewDoneFragment;

    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lim/doit/pro/activity/DailyReviewDoneFragment;->access$6(Lim/doit/pro/activity/DailyReviewDoneFragment;Ljava/lang/String;)V

    .line 135
    iget-object v0, p0, Lim/doit/pro/activity/DailyReviewDoneFragment$2;->this$0:Lim/doit/pro/activity/DailyReviewDoneFragment;

    invoke-static {v0}, Lim/doit/pro/activity/DailyReviewDoneFragment;->access$3(Lim/doit/pro/activity/DailyReviewDoneFragment;)Lim/doit/pro/activity/DailyReviewDoneFragment$TopBarChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lim/doit/pro/activity/DailyReviewDoneFragment$2;->this$0:Lim/doit/pro/activity/DailyReviewDoneFragment;

    invoke-static {v0}, Lim/doit/pro/activity/DailyReviewDoneFragment;->access$3(Lim/doit/pro/activity/DailyReviewDoneFragment;)Lim/doit/pro/activity/DailyReviewDoneFragment$TopBarChangeListener;

    move-result-object v0

    iget-object v1, p0, Lim/doit/pro/activity/DailyReviewDoneFragment$2;->this$0:Lim/doit/pro/activity/DailyReviewDoneFragment;

    invoke-static {v1}, Lim/doit/pro/activity/DailyReviewDoneFragment;->access$4(Lim/doit/pro/activity/DailyReviewDoneFragment;)Ljava/lang/String;

    move-result-object v1

    .line 137
    iget-object v2, p0, Lim/doit/pro/activity/DailyReviewDoneFragment$2;->this$0:Lim/doit/pro/activity/DailyReviewDoneFragment;

    invoke-static {v2}, Lim/doit/pro/activity/DailyReviewDoneFragment;->access$0(Lim/doit/pro/activity/DailyReviewDoneFragment;)I

    move-result v2

    iget-object v3, p0, Lim/doit/pro/activity/DailyReviewDoneFragment$2;->this$0:Lim/doit/pro/activity/DailyReviewDoneFragment;

    invoke-static {v3}, Lim/doit/pro/activity/DailyReviewDoneFragment;->access$5(Lim/doit/pro/activity/DailyReviewDoneFragment;)Ljava/lang/String;

    move-result-object v3

    .line 136
    invoke-interface {v0, v1, v2, v3}, Lim/doit/pro/activity/DailyReviewDoneFragment$TopBarChangeListener;->updateDailyReview(Ljava/lang/String;ILjava/lang/String;)V

    .line 139
    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 130
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 125
    return-void
.end method
