.class Lim/doit/pro/activity/DailyReviewActivity$OnSendBtnClick;
.super Ljava/lang/Object;
.source "DailyReviewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/activity/DailyReviewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnSendBtnClick"
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/activity/DailyReviewActivity;


# direct methods
.method private constructor <init>(Lim/doit/pro/activity/DailyReviewActivity;)V
    .locals 0

    .prologue
    .line 516
    iput-object p1, p0, Lim/doit/pro/activity/DailyReviewActivity$OnSendBtnClick;->this$0:Lim/doit/pro/activity/DailyReviewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lim/doit/pro/activity/DailyReviewActivity;Lim/doit/pro/activity/DailyReviewActivity$OnSendBtnClick;)V
    .locals 0

    .prologue
    .line 516
    invoke-direct {p0, p1}, Lim/doit/pro/activity/DailyReviewActivity$OnSendBtnClick;-><init>(Lim/doit/pro/activity/DailyReviewActivity;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 519
    iget-object v0, p0, Lim/doit/pro/activity/DailyReviewActivity$OnSendBtnClick;->this$0:Lim/doit/pro/activity/DailyReviewActivity;

    invoke-static {v0}, Lim/doit/pro/activity/DailyReviewActivity;->access$19(Lim/doit/pro/activity/DailyReviewActivity;)V

    .line 520
    return-void
.end method
