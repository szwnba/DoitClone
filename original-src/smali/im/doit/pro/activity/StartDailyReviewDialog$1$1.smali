.class Lim/doit/pro/activity/StartDailyReviewDialog$1$1;
.super Ljava/lang/Object;
.source "StartDailyReviewDialog.java"

# interfaces
.implements Lim/doit/pro/ui/component/PlanDailyReview$OnFinishListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/activity/StartDailyReviewDialog$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lim/doit/pro/activity/StartDailyReviewDialog$1;


# direct methods
.method constructor <init>(Lim/doit/pro/activity/StartDailyReviewDialog$1;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lim/doit/pro/activity/StartDailyReviewDialog$1$1;->this$1:Lim/doit/pro/activity/StartDailyReviewDialog$1;

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lim/doit/pro/activity/StartDailyReviewDialog$1$1;->this$1:Lim/doit/pro/activity/StartDailyReviewDialog$1;

    invoke-static {v0}, Lim/doit/pro/activity/StartDailyReviewDialog$1;->access$0(Lim/doit/pro/activity/StartDailyReviewDialog$1;)Lim/doit/pro/activity/StartDailyReviewDialog;

    move-result-object v0

    invoke-virtual {v0}, Lim/doit/pro/activity/StartDailyReviewDialog;->finish()V

    .line 61
    return-void
.end method
