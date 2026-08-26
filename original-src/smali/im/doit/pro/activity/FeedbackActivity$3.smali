.class Lim/doit/pro/activity/FeedbackActivity$3;
.super Ljava/lang/Object;
.source "FeedbackActivity.java"

# interfaces
.implements Lim/doit/pro/ui/component/NoEnterEditText$OnDoneListener;


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
    iput-object p1, p0, Lim/doit/pro/activity/FeedbackActivity$3;->this$0:Lim/doit/pro/activity/FeedbackActivity;

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public done(Landroid/widget/EditText;)V
    .locals 3
    .param p1, "v"    # Landroid/widget/EditText;

    .prologue
    .line 153
    iget-object v2, p0, Lim/doit/pro/activity/FeedbackActivity$3;->this$0:Lim/doit/pro/activity/FeedbackActivity;

    invoke-static {v2}, Lim/doit/pro/activity/FeedbackActivity;->access$0(Lim/doit/pro/activity/FeedbackActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    .line 154
    iget-object v2, p0, Lim/doit/pro/activity/FeedbackActivity$3;->this$0:Lim/doit/pro/activity/FeedbackActivity;

    invoke-static {v2}, Lim/doit/pro/activity/FeedbackActivity;->access$0(Lim/doit/pro/activity/FeedbackActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 155
    .local v1, "notes":Landroid/text/Editable;
    if-eqz v1, :cond_0

    .line 156
    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    .line 157
    .local v0, "endIndex":I
    iget-object v2, p0, Lim/doit/pro/activity/FeedbackActivity$3;->this$0:Lim/doit/pro/activity/FeedbackActivity;

    invoke-static {v2}, Lim/doit/pro/activity/FeedbackActivity;->access$0(Lim/doit/pro/activity/FeedbackActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-static {v2, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 159
    .end local v0    # "endIndex":I
    :cond_0
    return-void
.end method
