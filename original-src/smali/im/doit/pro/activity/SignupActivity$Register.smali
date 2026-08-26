.class Lim/doit/pro/activity/SignupActivity$Register;
.super Lim/doit/pro/asynctask/DoitAsyncTask;
.source "SignupActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/activity/SignupActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Register"
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
.field private email:Ljava/lang/String;

.field private password:Ljava/lang/String;

.field final synthetic this$0:Lim/doit/pro/activity/SignupActivity;

.field private username:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lim/doit/pro/activity/SignupActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2, "username"    # Ljava/lang/String;
    .param p3, "email"    # Ljava/lang/String;
    .param p4, "password"    # Ljava/lang/String;

    .prologue
    .line 206
    iput-object p1, p0, Lim/doit/pro/activity/SignupActivity$Register;->this$0:Lim/doit/pro/activity/SignupActivity;

    invoke-direct {p0}, Lim/doit/pro/asynctask/DoitAsyncTask;-><init>()V

    .line 207
    iput-object p2, p0, Lim/doit/pro/activity/SignupActivity$Register;->username:Ljava/lang/String;

    .line 208
    iput-object p3, p0, Lim/doit/pro/activity/SignupActivity$Register;->email:Ljava/lang/String;

    .line 209
    iput-object p4, p0, Lim/doit/pro/activity/SignupActivity$Register;->password:Ljava/lang/String;

    .line 210
    return-void
.end method

.method private enableSignupBtn()V
    .locals 2

    .prologue
    .line 262
    iget-object v0, p0, Lim/doit/pro/activity/SignupActivity$Register;->this$0:Lim/doit/pro/activity/SignupActivity;

    invoke-static {v0}, Lim/doit/pro/activity/SignupActivity;->access$3(Lim/doit/pro/activity/SignupActivity;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 263
    iget-object v0, p0, Lim/doit/pro/activity/SignupActivity$Register;->this$0:Lim/doit/pro/activity/SignupActivity;

    invoke-static {v0}, Lim/doit/pro/activity/SignupActivity;->access$3(Lim/doit/pro/activity/SignupActivity;)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f0c0070

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 264
    return-void
.end method

.method private toHome()V
    .locals 3

    .prologue
    .line 267
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lim/doit/pro/activity/SignupActivity$Register;->this$0:Lim/doit/pro/activity/SignupActivity;

    const-class v2, Lim/doit/pro/activity/HomeActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 268
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 269
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 270
    iget-object v1, p0, Lim/doit/pro/activity/SignupActivity$Register;->this$0:Lim/doit/pro/activity/SignupActivity;

    invoke-virtual {v1, v0}, Lim/doit/pro/activity/SignupActivity;->startActivity(Landroid/content/Intent;)V

    .line 271
    iget-object v1, p0, Lim/doit/pro/activity/SignupActivity$Register;->this$0:Lim/doit/pro/activity/SignupActivity;

    invoke-virtual {v1}, Lim/doit/pro/activity/SignupActivity;->finish()V

    .line 272
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lim/doit/pro/api/Response;
    .locals 4
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 219
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->doitAPI()Lim/doit/pro/api/DoitAPI;

    move-result-object v0

    iget-object v1, p0, Lim/doit/pro/activity/SignupActivity$Register;->email:Ljava/lang/String;

    iget-object v2, p0, Lim/doit/pro/activity/SignupActivity$Register;->username:Ljava/lang/String;

    iget-object v3, p0, Lim/doit/pro/activity/SignupActivity$Register;->password:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lim/doit/pro/api/DoitAPI;->regist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lim/doit/pro/api/Response;

    move-result-object v0

    return-object v0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lim/doit/pro/activity/SignupActivity$Register;->doInBackground([Ljava/lang/Void;)Lim/doit/pro/api/Response;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lim/doit/pro/api/Response;)V
    .locals 5
    .param p1, "response"    # Lim/doit/pro/api/Response;

    .prologue
    .line 224
    iget-object v2, p0, Lim/doit/pro/activity/SignupActivity$Register;->this$0:Lim/doit/pro/activity/SignupActivity;

    invoke-static {v2}, Lim/doit/pro/ui/component/DProgressDialog;->closeDialog(Landroid/app/Activity;)V

    .line 225
    iget-object v2, p0, Lim/doit/pro/activity/SignupActivity$Register;->this$0:Lim/doit/pro/activity/SignupActivity;

    invoke-static {v2}, Lim/doit/pro/activity/SignupActivity;->access$2(Lim/doit/pro/activity/SignupActivity;)V

    .line 226
    if-nez p1, :cond_0

    .line 227
    invoke-direct {p0}, Lim/doit/pro/activity/SignupActivity$Register;->enableSignupBtn()V

    .line 229
    const v2, 0x7f0c0085

    invoke-static {v2}, Lim/doit/pro/utils/ToastUtils;->show(I)V

    .line 259
    :goto_0
    return-void

    .line 232
    :cond_0
    iget v2, p1, Lim/doit/pro/api/Response;->code:I

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_1

    .line 233
    invoke-direct {p0}, Lim/doit/pro/activity/SignupActivity$Register;->toHome()V

    goto :goto_0

    .line 235
    :cond_1
    invoke-direct {p0}, Lim/doit/pro/activity/SignupActivity$Register;->enableSignupBtn()V

    .line 236
    invoke-virtual {p1}, Lim/doit/pro/api/Response;->isVersionTooOld()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 238
    iget-object v2, p0, Lim/doit/pro/activity/SignupActivity$Register;->this$0:Lim/doit/pro/activity/SignupActivity;

    invoke-static {v2}, Lim/doit/pro/utils/AlertDialogUtils;->alertVersionTooOldDialog(Landroid/app/Activity;)V

    .line 240
    :cond_2
    const v1, 0x7f0c007a

    .line 241
    .local v1, "msg":I
    const/16 v2, 0x190

    iget v3, p1, Lim/doit/pro/api/Response;->code:I

    if-ne v2, v3, :cond_3

    .line 242
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->json()Lim/doit/pro/utils/JsonFormat;

    move-result-object v2

    .line 243
    iget-object v3, p1, Lim/doit/pro/api/Response;->body:Ljava/lang/String;

    const-class v4, Lim/doit/pro/model/ResponseErrorResult;

    .line 242
    invoke-virtual {v2, v3, v4}, Lim/doit/pro/utils/JsonFormat;->deserialize(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lim/doit/pro/model/ResponseErrorResult;

    .line 244
    .local v0, "body":Lim/doit/pro/model/ResponseErrorResult;
    if-eqz v0, :cond_3

    .line 245
    const-string v2, "E10019"

    invoke-virtual {v0}, Lim/doit/pro/model/ResponseErrorResult;->getCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 247
    const v1, 0x7f0c0077

    .line 257
    .end local v0    # "body":Lim/doit/pro/model/ResponseErrorResult;
    :cond_3
    :goto_1
    invoke-static {v1}, Lim/doit/pro/utils/ToastUtils;->show(I)V

    goto :goto_0

    .line 248
    .restart local v0    # "body":Lim/doit/pro/model/ResponseErrorResult;
    :cond_4
    const-string v2, "E10020"

    invoke-virtual {v0}, Lim/doit/pro/model/ResponseErrorResult;->getCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 250
    const v1, 0x7f0c0078

    .line 251
    goto :goto_1

    :cond_5
    const-string v2, "E10002"

    invoke-virtual {v0}, Lim/doit/pro/model/ResponseErrorResult;->getCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 253
    const v1, 0x7f0c0079

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lim/doit/pro/api/Response;

    invoke-virtual {p0, p1}, Lim/doit/pro/activity/SignupActivity$Register;->onPostExecute(Lim/doit/pro/api/Response;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lim/doit/pro/activity/SignupActivity$Register;->this$0:Lim/doit/pro/activity/SignupActivity;

    invoke-static {v0}, Lim/doit/pro/ui/component/DProgressDialog;->show(Landroid/app/Activity;)Lim/doit/pro/ui/component/DProgressDialog;

    .line 215
    return-void
.end method
