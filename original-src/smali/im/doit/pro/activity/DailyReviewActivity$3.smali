.class Lim/doit/pro/activity/DailyReviewActivity$3;
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
    iput-object p1, p0, Lim/doit/pro/activity/DailyReviewActivity$3;->this$0:Lim/doit/pro/activity/DailyReviewActivity;

    .line 501
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 505
    iget-object v0, p0, Lim/doit/pro/activity/DailyReviewActivity$3;->this$0:Lim/doit/pro/activity/DailyReviewActivity;

    invoke-virtual {v0}, Lim/doit/pro/activity/DailyReviewActivity;->finish()V

    .line 506
    return-void
.end method
