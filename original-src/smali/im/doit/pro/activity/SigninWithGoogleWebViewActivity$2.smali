.class Lim/doit/pro/activity/SigninWithGoogleWebViewActivity$2;
.super Lim/doit/pro/asynctask/DoitAsyncTask;
.source "SigninWithGoogleWebViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/activity/SigninWithGoogleWebViewActivity;->getGoogleAuth(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lim/doit/pro/asynctask/DoitAsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Lim/doit/pro/api/Response;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/activity/SigninWithGoogleWebViewActivity;


# direct methods
.method constructor <init>(Lim/doit/pro/activity/SigninWithGoogleWebViewActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lim/doit/pro/activity/SigninWithGoogleWebViewActivity$2;->this$0:Lim/doit/pro/activity/SigninWithGoogleWebViewActivity;

    .line 114
    invoke-direct {p0}, Lim/doit/pro/asynctask/DoitAsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Lim/doit/pro/api/Response;
    .locals 7
    .param p1, "args"    # [Ljava/lang/String;

    .prologue
    .line 124
    const/4 v5, 0x0

    aget-object v3, p1, v5

    .line 125
    .local v3, "url":Ljava/lang/String;
    sget-object v5, Lim/doit/pro/api/utils/D;->GOOGLE_LOGIN_SUCCESS:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 127
    .local v0, "params":Ljava/lang/String;
    const-string v5, "username="

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0x9

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 129
    .local v4, "username":Ljava/lang/String;
    const-string v5, "token="

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0x6

    const-string v6, "&"

    invoke-virtual {v0, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 128
    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 130
    .local v1, "password":Ljava/lang/String;
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->doitAPI()Lim/doit/pro/api/DoitAPI;

    move-result-object v5

    invoke-virtual {v5, v4, v1}, Lim/doit/pro/api/DoitAPI;->signinWithGoogle(Ljava/lang/String;Ljava/lang/String;)Lim/doit/pro/api/Response;

    move-result-object v2

    .line 132
    .local v2, "response":Lim/doit/pro/api/Response;
    return-object v2
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lim/doit/pro/activity/SigninWithGoogleWebViewActivity$2;->doInBackground([Ljava/lang/String;)Lim/doit/pro/api/Response;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lim/doit/pro/api/Response;)V
    .locals 1
    .param p1, "response"    # Lim/doit/pro/api/Response;

    .prologue
    .line 137
    if-eqz p1, :cond_2

    .line 138
    invoke-virtual {p1}, Lim/doit/pro/api/Response;->isSucces()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lim/doit/pro/activity/SigninWithGoogleWebViewActivity$2;->this$0:Lim/doit/pro/activity/SigninWithGoogleWebViewActivity;

    invoke-static {v0}, Lim/doit/pro/activity/SigninWithGoogleWebViewActivity;->access$4(Lim/doit/pro/activity/SigninWithGoogleWebViewActivity;)V

    .line 153
    :goto_0
    iget-object v0, p0, Lim/doit/pro/activity/SigninWithGoogleWebViewActivity$2;->this$0:Lim/doit/pro/activity/SigninWithGoogleWebViewActivity;

    invoke-static {v0}, Lim/doit/pro/ui/component/DProgressDialog;->closeDialog(Landroid/app/Activity;)V

    .line 154
    return-void

    .line 140
    :cond_0
    invoke-virtual {p1}, Lim/doit/pro/api/Response;->isVersionTooOld()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 143
    iget-object v0, p0, Lim/doit/pro/activity/SigninWithGoogleWebViewActivity$2;->this$0:Lim/doit/pro/activity/SigninWithGoogleWebViewActivity;

    invoke-static {v0}, Lim/doit/pro/utils/AlertDialogUtils;->alertVersionTooOldDialog(Landroid/app/Activity;)V

    goto :goto_0

    .line 145
    :cond_1
    iget-object v0, p0, Lim/doit/pro/activity/SigninWithGoogleWebViewActivity$2;->this$0:Lim/doit/pro/activity/SigninWithGoogleWebViewActivity;

    invoke-static {v0}, Lim/doit/pro/activity/SigninWithGoogleWebViewActivity;->access$2(Lim/doit/pro/activity/SigninWithGoogleWebViewActivity;)V

    .line 146
    iget-object v0, p0, Lim/doit/pro/activity/SigninWithGoogleWebViewActivity$2;->this$0:Lim/doit/pro/activity/SigninWithGoogleWebViewActivity;

    invoke-static {v0}, Lim/doit/pro/activity/SigninWithGoogleWebViewActivity;->access$3(Lim/doit/pro/activity/SigninWithGoogleWebViewActivity;)V

    goto :goto_0

    .line 149
    :cond_2
    iget-object v0, p0, Lim/doit/pro/activity/SigninWithGoogleWebViewActivity$2;->this$0:Lim/doit/pro/activity/SigninWithGoogleWebViewActivity;

    invoke-static {v0}, Lim/doit/pro/activity/SigninWithGoogleWebViewActivity;->access$2(Lim/doit/pro/activity/SigninWithGoogleWebViewActivity;)V

    .line 150
    iget-object v0, p0, Lim/doit/pro/activity/SigninWithGoogleWebViewActivity$2;->this$0:Lim/doit/pro/activity/SigninWithGoogleWebViewActivity;

    invoke-static {v0}, Lim/doit/pro/activity/SigninWithGoogleWebViewActivity;->access$3(Lim/doit/pro/activity/SigninWithGoogleWebViewActivity;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lim/doit/pro/api/Response;

    invoke-virtual {p0, p1}, Lim/doit/pro/activity/SigninWithGoogleWebViewActivity$2;->onPostExecute(Lim/doit/pro/api/Response;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 118
    invoke-super {p0}, Lim/doit/pro/asynctask/DoitAsyncTask;->onPreExecute()V

    .line 119
    iget-object v0, p0, Lim/doit/pro/activity/SigninWithGoogleWebViewActivity$2;->this$0:Lim/doit/pro/activity/SigninWithGoogleWebViewActivity;

    invoke-static {v0}, Lim/doit/pro/ui/component/DProgressDialog;->show(Landroid/app/Activity;)Lim/doit/pro/ui/component/DProgressDialog;

    .line 120
    return-void
.end method
