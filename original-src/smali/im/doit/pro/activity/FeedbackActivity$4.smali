.class Lim/doit/pro/activity/FeedbackActivity$4;
.super Ljava/lang/Object;
.source "FeedbackActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


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
    iput-object p1, p0, Lim/doit/pro/activity/FeedbackActivity$4;->this$0:Lim/doit/pro/activity/FeedbackActivity;

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 176
    iget-object v0, p0, Lim/doit/pro/activity/FeedbackActivity$4;->this$0:Lim/doit/pro/activity/FeedbackActivity;

    invoke-static {v0}, Lim/doit/pro/activity/FeedbackActivity;->access$1(Lim/doit/pro/activity/FeedbackActivity;)Lim/doit/pro/model/Feedback;

    move-result-object v0

    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/model/Feedback;->setTitle(Ljava/lang/String;)V

    .line 177
    iget-object v0, p0, Lim/doit/pro/activity/FeedbackActivity$4;->this$0:Lim/doit/pro/activity/FeedbackActivity;

    invoke-static {v0}, Lim/doit/pro/activity/FeedbackActivity;->access$2(Lim/doit/pro/activity/FeedbackActivity;)V

    .line 178
    iget-object v0, p0, Lim/doit/pro/activity/FeedbackActivity$4;->this$0:Lim/doit/pro/activity/FeedbackActivity;

    invoke-static {v0}, Lim/doit/pro/activity/FeedbackActivity;->access$3(Lim/doit/pro/activity/FeedbackActivity;)V

    .line 179
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 172
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 167
    return-void
.end method
