.class Lim/doit/pro/activity/FeedbackActivity$DoPostFeedBack$1;
.super Ljava/lang/Object;
.source "FeedbackActivity.java"

# interfaces
.implements Lim/doit/pro/ui/component/DMessageDialog$OnButtonClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/activity/FeedbackActivity$DoPostFeedBack;->showPostSuccessDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lim/doit/pro/activity/FeedbackActivity$DoPostFeedBack;


# direct methods
.method constructor <init>(Lim/doit/pro/activity/FeedbackActivity$DoPostFeedBack;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lim/doit/pro/activity/FeedbackActivity$DoPostFeedBack$1;->this$1:Lim/doit/pro/activity/FeedbackActivity$DoPostFeedBack;

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 141
    iget-object v0, p0, Lim/doit/pro/activity/FeedbackActivity$DoPostFeedBack$1;->this$1:Lim/doit/pro/activity/FeedbackActivity$DoPostFeedBack;

    invoke-static {v0}, Lim/doit/pro/activity/FeedbackActivity$DoPostFeedBack;->access$3(Lim/doit/pro/activity/FeedbackActivity$DoPostFeedBack;)Lim/doit/pro/activity/FeedbackActivity;

    move-result-object v0

    invoke-virtual {v0}, Lim/doit/pro/activity/FeedbackActivity;->finish()V

    .line 142
    return-void
.end method
