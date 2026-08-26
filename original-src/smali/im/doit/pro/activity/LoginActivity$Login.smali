.class Lim/doit/pro/activity/LoginActivity$Login;
.super Lim/doit/pro/asynctask/DoitAsyncTask;
.source "LoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/activity/LoginActivity;
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

.field final synthetic this$0:Lim/doit/pro/activity/LoginActivity;

.field private username:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lim/doit/pro/activity/LoginActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2, "username"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;

    .prologue
    .line 192
    iput-object p1, p0, Lim/doit/pro/activity/LoginActivity$Login;->this$0:Lim/doit/pro/activity/LoginActivity;

    invoke-direct {p0}, Lim/doit/pro/asynctask/DoitAsyncTask;-><init>()V

    .line 193
    iput-object p2, p0, Lim/doit/pro/activity/LoginActivity$Login;->username:Ljava/lang/String;

    .line 194
    iput-object p3, p0, Lim/doit/pro/activity/LoginActivity$Login;->password:Ljava/lang/String;

    .line 195
    return-void
.end method

.method private dismissDialog()V
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lim/doit/pro/activity/LoginActivity$Login;->this$0:Lim/doit/pro/activity/LoginActivity;

    invoke-static {v0}, Lim/doit/pro/ui/component/DProgressDialog;->closeDialog(Landroid/app/Activity;)V

    .line 245
    return-void
.end method

.method private enableSigninBtn()V
    .locals 2

    .prologue
    .line 239
    iget-object v0, p0, Lim/doit/pro/activity/LoginActivity$Login;->this$0:Lim/doit/pro/activity/LoginActivity;

    invoke-static {v0}, Lim/doit/pro/activity/LoginActivity;->access$3(Lim/doit/pro/activity/LoginActivity;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 240
    iget-object v0, p0, Lim/doit/pro/activity/LoginActivity$Login;->this$0:Lim/doit/pro/activity/LoginActivity;

    invoke-static {v0}, Lim/doit/pro/activity/LoginActivity;->access$3(Lim/doit/pro/activity/LoginActivity;)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f0c006a

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 241
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lim/doit/pro/api/Response;
    .locals 4
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 205
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->doitAPI()Lim/doit/pro/api/DoitAPI;

    move-result-object v0

    iget-object v1, p0, Lim/doit/pro/activity/LoginActivity$Login;->username:Ljava/lang/String;

    iget-object v2, p0, Lim/doit/pro/activity/LoginActivity$Login;->password:Ljava/lang/String;

    .line 206
    const-string v3, "DOIT"

    .line 205
    invoke-virtual {v0, v1, v2, v3}, Lim/doit/pro/api/DoitAPI;->checkout(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lim/doit/pro/api/Response;

    move-result-object v0

    return-object v0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lim/doit/pro/activity/LoginActivity$Login;->doInBackground([Ljava/lang/Void;)Lim/doit/pro/api/Response;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lim/doit/pro/api/Response;)V
    .locals 4
    .param p1, "response"    # Lim/doit/pro/api/Response;

    .prologue
    .line 211
    invoke-direct {p0}, Lim/doit/pro/activity/LoginActivity$Login;->dismissDialog()V

    .line 212
    if-nez p1, :cond_0

    .line 213
    invoke-direct {p0}, Lim/doit/pro/activity/LoginActivity$Login;->enableSigninBtn()V

    .line 214
    const v1, 0x7f0c0086

    invoke-static {v1}, Lim/doit/pro/utils/ToastUtils;->show(I)V

    .line 236
    :goto_0
    return-void

    .line 217
    :cond_0
    iget v1, p1, Lim/doit/pro/api/Response;->code:I

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_2

    .line 218
    iget-object v1, p0, Lim/doit/pro/activity/LoginActivity$Login;->this$0:Lim/doit/pro/activity/LoginActivity;

    invoke-virtual {v1}, Lim/doit/pro/activity/LoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "need_callback"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 219
    iget-object v1, p0, Lim/doit/pro/activity/LoginActivity$Login;->this$0:Lim/doit/pro/activity/LoginActivity;

    invoke-static {v1}, Lim/doit/pro/activity/LoginActivity;->access$1(Lim/doit/pro/activity/LoginActivity;)V

    goto :goto_0

    .line 221
    :cond_1
    iget-object v1, p0, Lim/doit/pro/activity/LoginActivity$Login;->this$0:Lim/doit/pro/activity/LoginActivity;

    invoke-static {v1}, Lim/doit/pro/activity/LoginActivity;->access$2(Lim/doit/pro/activity/LoginActivity;)V

    goto :goto_0

    .line 224
    :cond_2
    invoke-direct {p0}, Lim/doit/pro/activity/LoginActivity$Login;->enableSigninBtn()V

    .line 225
    const/16 v1, 0x1aa

    iget v2, p1, Lim/doit/pro/api/Response;->code:I

    if-ne v1, v2, :cond_3

    .line 227
    iget-object v1, p0, Lim/doit/pro/activity/LoginActivity$Login;->this$0:Lim/doit/pro/activity/LoginActivity;

    invoke-static {v1}, Lim/doit/pro/utils/AlertDialogUtils;->alertVersionTooOldDialog(Landroid/app/Activity;)V

    goto :goto_0

    .line 230
    :cond_3
    const v0, 0x7f0c0086

    .line 231
    .local v0, "msg":I
    const/16 v1, 0x191

    iget v2, p1, Lim/doit/pro/api/Response;->code:I

    if-ne v1, v2, :cond_4

    .line 232
    const v0, 0x7f0c0084

    .line 234
    :cond_4
    invoke-static {v0}, Lim/doit/pro/utils/ToastUtils;->show(I)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lim/doit/pro/api/Response;

    invoke-virtual {p0, p1}, Lim/doit/pro/activity/LoginActivity$Login;->onPostExecute(Lim/doit/pro/api/Response;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 199
    invoke-direct {p0}, Lim/doit/pro/activity/LoginActivity$Login;->dismissDialog()V

    .line 200
    iget-object v0, p0, Lim/doit/pro/activity/LoginActivity$Login;->this$0:Lim/doit/pro/activity/LoginActivity;

    invoke-static {v0}, Lim/doit/pro/ui/component/DProgressDialog;->show(Landroid/app/Activity;)Lim/doit/pro/ui/component/DProgressDialog;

    .line 201
    return-void
.end method
