.class Lim/doit/pro/activity/FeedbackActivity$2;
.super Ljava/lang/Object;
.source "FeedbackActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/activity/FeedbackActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/activity/FeedbackActivity;


# direct methods
.method constructor <init>(Lim/doit/pro/activity/FeedbackActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lim/doit/pro/activity/FeedbackActivity$2;->this$0:Lim/doit/pro/activity/FeedbackActivity;

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 101
    new-instance v0, Lim/doit/pro/activity/FeedbackActivity$DoPostFeedBack;

    iget-object v1, p0, Lim/doit/pro/activity/FeedbackActivity$2;->this$0:Lim/doit/pro/activity/FeedbackActivity;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lim/doit/pro/activity/FeedbackActivity$DoPostFeedBack;-><init>(Lim/doit/pro/activity/FeedbackActivity;Lim/doit/pro/activity/FeedbackActivity$DoPostFeedBack;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lim/doit/pro/activity/FeedbackActivity$DoPostFeedBack;->execute([Ljava/lang/Object;)Lim/doit/pro/asynctask/DoitAsyncTask;

    .line 102
    return-void
.end method
