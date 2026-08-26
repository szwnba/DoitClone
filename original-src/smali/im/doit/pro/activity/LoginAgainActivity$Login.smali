.class Lim/doit/pro/activity/LoginAgainActivity$Login;
.super Lim/doit/pro/asynctask/DoitAsyncTask;
.source "LoginAgainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/activity/LoginAgainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Login"
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
.field private password:Ljava/lang/String;

.field final synthetic this$0:Lim/doit/pro/activity/LoginAgainActivity;

.field private username:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lim/doit/pro/activity/LoginAgainActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2, "username"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;

    .prologue
    .line 169
    iput-object p1, p0, Lim/doit/pro/activity/LoginAgainActivity$Login;->this$0:Lim/doit/pro/activity/LoginAgainActivity;

    invoke-direct {p0}, Lim/doit/pro/asynctask/DoitAsyncTask;-><init>()V

    .line 170
    iput-object p2, p0, Lim/doit/pro/activity/LoginAgainActivity$Login;->username:Ljava/lang/String;

    .line 171
    iput-object p3, p0, Lim/doit/pro/activity/LoginAgainActivity$Login;->password:Ljava/lang/String;

    .line 172
    return-void
.end method

.method private dismissDialog()V
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lim/doit/pro/activity/LoginAgainActivity$Login;->this$0:Lim/doit/pro/activity/LoginAgainActivity;

    invoke-static {v0}, Lim/doit/pro/ui/component/DProgressDialog;->closeDialog(Landroid/app/Activity;)V

    .line 219
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lim/doit/pro/api/Response;
    .locals 3
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 182
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->doitAPI()Lim/doit/pro/api/DoitAPI;

    move-result-object v0

    iget-object v1, p0, Lim/doit/pro/activity/LoginAgainActivity$Login;->username:Ljava/lang/String;

    iget-object v2, p0, Lim/doit/pro/activity/LoginAgainActivity$Login;->password:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lim/doit/pro/api/DoitAPI;->checkPassword(Ljava/lang/String;Ljava/lang/String;)Lim/doit/pro/api/Response;

    move-result-object v0

    return-object v0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lim/doit/pro/activity/LoginAgainActivity$Login;->doInBackground([Ljava/lang/Void;)Lim/doit/pro/api/Response;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lim/doit/pro/api/Response;)V
    .locals 5
    .param p1, "response"    # Lim/doit/pro/api/Response;

    .prologue
    const v4, 0x7f0c006a

    const/4 v3, 0x1

    .line 187
    invoke-direct {p0}, Lim/doit/pro/activity/LoginAgainActivity$Login;->dismissDialog()V

    .line 188
    iget-object v1, p0, Lim/doit/pro/activity/LoginAgainActivity$Login;->this$0:Lim/doit/pro/activity/LoginAgainActivity;

    invoke-static {v1}, Lim/doit/pro/activity/LoginAgainActivity;->access$1(Lim/doit/pro/activity/LoginAgainActivity;)V

    .line 189
    if-nez p1, :cond_0

    .line 190
    iget-object v1, p0, Lim/doit/pro/activity/LoginAgainActivity$Login;->this$0:Lim/doit/pro/activity/LoginAgainActivity;

    invoke-static {v1}, Lim/doit/pro/activity/LoginAgainActivity;->access$2(Lim/doit/pro/activity/LoginAgainActivity;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 191
    iget-object v1, p0, Lim/doit/pro/activity/LoginAgainActivity$Login;->this$0:Lim/doit/pro/activity/LoginAgainActivity;

    invoke-static {v1}, Lim/doit/pro/activity/LoginAgainActivity;->access$2(Lim/doit/pro/activity/LoginAgainActivity;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setText(I)V

    .line 192
    const v1, 0x7f0c0086

    invoke-static {v1}, Lim/doit/pro/utils/ToastUtils;->show(I)V

    .line 215
    :goto_0
    return-void

    .line 195
    :cond_0
    iget v1, p1, Lim/doit/pro/api/Response;->code:I

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_2

    .line 196
    iget-object v1, p0, Lim/doit/pro/activity/LoginAgainActivity$Login;->this$0:Lim/doit/pro/activity/LoginAgainActivity;

    invoke-virtual {v1}, Lim/doit/pro/activity/LoginAgainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "need_callback"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 197
    iget-object v1, p0, Lim/doit/pro/activity/LoginAgainActivity$Login;->this$0:Lim/doit/pro/activity/LoginAgainActivity;

    invoke-static {v1}, Lim/doit/pro/activity/LoginAgainActivity;->access$3(Lim/doit/pro/activity/LoginAgainActivity;)V

    goto :goto_0

    .line 199
    :cond_1
    iget-object v1, p0, Lim/doit/pro/activity/LoginAgainActivity$Login;->this$0:Lim/doit/pro/activity/LoginAgainActivity;

    invoke-static {v1}, Lim/doit/pro/activity/LoginAgainActivity;->access$4(Lim/doit/pro/activity/LoginAgainActivity;)V

    goto :goto_0

    .line 202
    :cond_2
    iget-object v1, p0, Lim/doit/pro/activity/LoginAgainActivity$Login;->this$0:Lim/doit/pro/activity/LoginAgainActivity;

    invoke-static {v1}, Lim/doit/pro/activity/LoginAgainActivity;->access$2(Lim/doit/pro/activity/LoginAgainActivity;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 203
    iget-object v1, p0, Lim/doit/pro/activity/LoginAgainActivity$Login;->this$0:Lim/doit/pro/activity/LoginAgainActivity;

    invoke-static {v1}, Lim/doit/pro/activity/LoginAgainActivity;->access$2(Lim/doit/pro/activity/LoginAgainActivity;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setText(I)V

    .line 204
    const/16 v1, 0x1aa

    iget v2, p1, Lim/doit/pro/api/Response;->code:I

    if-ne v1, v2, :cond_3

    .line 206
    iget-object v1, p0, Lim/doit/pro/activity/LoginAgainActivity$Login;->this$0:Lim/doit/pro/activity/LoginAgainActivity;

    invoke-static {v1}, Lim/doit/pro/utils/AlertDialogUtils;->alertVersionTooOldDialog(Landroid/app/Activity;)V

    goto :goto_0

    .line 209
    :cond_3
    const v0, 0x7f0c0086

    .line 210
    .local v0, "msg":I
    const/16 v1, 0x191

    iget v2, p1, Lim/doit/pro/api/Response;->code:I

    if-ne v1, v2, :cond_4

    .line 211
    const v0, 0x7f0c0084

    .line 213
    :cond_4
    invoke-static {v0}, Lim/doit/pro/utils/ToastUtils;->show(I)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lim/doit/pro/api/Response;

    invoke-virtual {p0, p1}, Lim/doit/pro/activity/LoginAgainActivity$Login;->onPostExecute(Lim/doit/pro/api/Response;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 176
    invoke-direct {p0}, Lim/doit/pro/activity/LoginAgainActivity$Login;->dismissDialog()V

    .line 177
    iget-object v0, p0, Lim/doit/pro/activity/LoginAgainActivity$Login;->this$0:Lim/doit/pro/activity/LoginAgainActivity;

    invoke-static {v0}, Lim/doit/pro/ui/component/DProgressDialog;->show(Landroid/app/Activity;)Lim/doit/pro/ui/component/DProgressDialog;

    .line 178
    return-void
.end method
