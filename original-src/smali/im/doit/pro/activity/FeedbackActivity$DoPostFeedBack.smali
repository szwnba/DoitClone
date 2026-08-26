.class Lim/doit/pro/activity/FeedbackActivity$DoPostFeedBack;
.super Lim/doit/pro/asynctask/DoitAsyncTask;
.source "FeedbackActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/activity/FeedbackActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DoPostFeedBack"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lim/doit/pro/asynctask/DoitAsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lim/doit/pro/api/Response;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/activity/FeedbackActivity;


# direct methods
.method private constructor <init>(Lim/doit/pro/activity/FeedbackActivity;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lim/doit/pro/activity/FeedbackActivity$DoPostFeedBack;->this$0:Lim/doit/pro/activity/FeedbackActivity;

    invoke-direct {p0}, Lim/doit/pro/asynctask/DoitAsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lim/doit/pro/activity/FeedbackActivity;Lim/doit/pro/activity/FeedbackActivity$DoPostFeedBack;)V
    .locals 0

    .prologue
    .line 105
    invoke-direct {p0, p1}, Lim/doit/pro/activity/FeedbackActivity$DoPostFeedBack;-><init>(Lim/doit/pro/activity/FeedbackActivity;)V

    return-void
.end method

.method static synthetic access$3(Lim/doit/pro/activity/FeedbackActivity$DoPostFeedBack;)Lim/doit/pro/activity/FeedbackActivity;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lim/doit/pro/activity/FeedbackActivity$DoPostFeedBack;->this$0:Lim/doit/pro/activity/FeedbackActivity;

    return-object v0
.end method

.method private showPostFailedTips()V
    .locals 1

    .prologue
    .line 128
    const v0, 0x7f0c0086

    invoke-static {v0}, Lim/doit/pro/utils/ToastUtils;->show(I)V

    .line 129
    return-void
.end method

.method private showPostSuccessDialog()V
    .locals 4

    .prologue
    .line 132
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 133
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "dialog_message"

    const v3, 0x7f0c0258

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 134
    const-string v2, "dialog_positive_button"

    const v3, 0x7f0c0259

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 136
    iget-object v2, p0, Lim/doit/pro/activity/FeedbackActivity$DoPostFeedBack;->this$0:Lim/doit/pro/activity/FeedbackActivity;

    .line 135
    invoke-static {v2, v0}, Lim/doit/pro/utils/AlertDialogUtils;->showDialog(Landroid/app/Activity;Landroid/os/Bundle;)Lim/doit/pro/ui/component/DMessageDialog;

    move-result-object v1

    .line 137
    .local v1, "dialog":Lim/doit/pro/ui/component/DMessageDialog;
    new-instance v2, Lim/doit/pro/activity/FeedbackActivity$DoPostFeedBack$1;

    invoke-direct {v2, p0}, Lim/doit/pro/activity/FeedbackActivity$DoPostFeedBack$1;-><init>(Lim/doit/pro/activity/FeedbackActivity$DoPostFeedBack;)V

    invoke-virtual {v1, v2}, Lim/doit/pro/ui/component/DMessageDialog;->setOnPositiveButtonClickListener(Lim/doit/pro/ui/component/DMessageDialog$OnButtonClickListener;)Lim/doit/pro/ui/component/DMessageDialog;

    .line 144
    iget-object v2, p0, Lim/doit/pro/activity/FeedbackActivity$DoPostFeedBack;->this$0:Lim/doit/pro/activity/FeedbackActivity;

    invoke-virtual {v2}, Lim/doit/pro/activity/FeedbackActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "post_feedback_success"

    invoke-virtual {v1, v2, v3}, Lim/doit/pro/ui/component/DMessageDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 145
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lim/doit/pro/api/Response;
    .locals 2
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 114
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->doitAPI()Lim/doit/pro/api/DoitAPI;

    move-result-object v0

    iget-object v1, p0, Lim/doit/pro/activity/FeedbackActivity$DoPostFeedBack;->this$0:Lim/doit/pro/activity/FeedbackActivity;

    invoke-static {v1}, Lim/doit/pro/activity/FeedbackActivity;->access$1(Lim/doit/pro/activity/FeedbackActivity;)Lim/doit/pro/model/Feedback;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/api/DoitAPI;->postFeedback(Lim/doit/pro/model/Feedback;)Lim/doit/pro/api/Response;

    move-result-object v0

    return-object v0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lim/doit/pro/activity/FeedbackActivity$DoPostFeedBack;->doInBackground([Ljava/lang/Void;)Lim/doit/pro/api/Response;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lim/doit/pro/api/Response;)V
    .locals 1
    .param p1, "result"    # Lim/doit/pro/api/Response;

    .prologue
    .line 119
    iget-object v0, p0, Lim/doit/pro/activity/FeedbackActivity$DoPostFeedBack;->this$0:Lim/doit/pro/activity/FeedbackActivity;

    invoke-static {v0}, Lim/doit/pro/ui/component/DProgressDialog;->closeDialog(Landroid/app/Activity;)V

    .line 120
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lim/doit/pro/api/Response;->isSucces()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    invoke-direct {p0}, Lim/doit/pro/activity/FeedbackActivity$DoPostFeedBack;->showPostSuccessDialog()V

    .line 125
    :goto_0
    return-void

    .line 123
    :cond_0
    invoke-direct {p0}, Lim/doit/pro/activity/FeedbackActivity$DoPostFeedBack;->showPostFailedTips()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lim/doit/pro/api/Response;

    invoke-virtual {p0, p1}, Lim/doit/pro/activity/FeedbackActivity$DoPostFeedBack;->onPostExecute(Lim/doit/pro/api/Response;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lim/doit/pro/activity/FeedbackActivity$DoPostFeedBack;->this$0:Lim/doit/pro/activity/FeedbackActivity;

    invoke-static {v0}, Lim/doit/pro/ui/component/DProgressDialog;->show(Landroid/app/Activity;)Lim/doit/pro/ui/component/DProgressDialog;

    .line 110
    return-void
.end method
