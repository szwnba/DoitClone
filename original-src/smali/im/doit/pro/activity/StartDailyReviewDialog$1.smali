.class Lim/doit/pro/activity/StartDailyReviewDialog$1;
.super Ljava/lang/Object;
.source "StartDailyReviewDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/activity/StartDailyReviewDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/activity/StartDailyReviewDialog;


# direct methods
.method constructor <init>(Lim/doit/pro/activity/StartDailyReviewDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lim/doit/pro/activity/StartDailyReviewDialog$1;->this$0:Lim/doit/pro/activity/StartDailyReviewDialog;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lim/doit/pro/activity/StartDailyReviewDialog$1;)Lim/doit/pro/activity/StartDailyReviewDialog;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lim/doit/pro/activity/StartDailyReviewDialog$1;->this$0:Lim/doit/pro/activity/StartDailyReviewDialog;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 53
    new-instance v0, Lim/doit/pro/ui/component/PlanDailyReview;

    .line 54
    iget-object v1, p0, Lim/doit/pro/activity/StartDailyReviewDialog$1;->this$0:Lim/doit/pro/activity/StartDailyReviewDialog;

    .line 53
    invoke-direct {v0, v1}, Lim/doit/pro/ui/component/PlanDailyReview;-><init>(Landroid/app/Activity;)V

    .line 55
    .local v0, "playDailyReview":Lim/doit/pro/ui/component/PlanDailyReview;
    invoke-virtual {v0}, Lim/doit/pro/ui/component/PlanDailyReview;->start()V

    .line 56
    new-instance v1, Lim/doit/pro/activity/StartDailyReviewDialog$1$1;

    invoke-direct {v1, p0}, Lim/doit/pro/activity/StartDailyReviewDialog$1$1;-><init>(Lim/doit/pro/activity/StartDailyReviewDialog$1;)V

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/PlanDailyReview;->setOnFinishListener(Lim/doit/pro/ui/component/PlanDailyReview$OnFinishListener;)V

    .line 63
    return-void
.end method
