.class Lim/doit/pro/activity/StartDailyReviewDialog$3;
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
    iput-object p1, p0, Lim/doit/pro/activity/StartDailyReviewDialog$3;->this$0:Lim/doit/pro/activity/StartDailyReviewDialog;

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 102
    iget-object v0, p0, Lim/doit/pro/activity/StartDailyReviewDialog$3;->this$0:Lim/doit/pro/activity/StartDailyReviewDialog;

    invoke-virtual {v0}, Lim/doit/pro/activity/StartDailyReviewDialog;->finish()V

    .line 103
    return-void
.end method
