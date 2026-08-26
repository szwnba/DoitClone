.class Lim/doit/pro/activity/SigninWithGoogleDialogActivity$4;
.super Landroid/os/AsyncTask;
.source "SigninWithGoogleDialogActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/activity/SigninWithGoogleDialogActivity;->getGoogleAuth()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/activity/SigninWithGoogleDialogActivity;


# direct methods
.method constructor <init>(Lim/doit/pro/activity/SigninWithGoogleDialogActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lim/doit/pro/activity/SigninWithGoogleDialogActivity$4;->this$0:Lim/doit/pro/activity/SigninWithGoogleDialogActivity;

    .line 127
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lim/doit/pro/activity/SigninWithGoogleDialogActivity$4;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 137
    iget-object v0, p0, Lim/doit/pro/activity/SigninWithGoogleDialogActivity$4;->this$0:Lim/doit/pro/activity/SigninWithGoogleDialogActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lim/doit/pro/activity/SigninWithGoogleDialogActivity;->getAndUseAuthTokenBlocking(Z)V

    .line 138
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lim/doit/pro/activity/SigninWithGoogleDialogActivity$4;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 144
    iget-object v0, p0, Lim/doit/pro/activity/SigninWithGoogleDialogActivity$4;->this$0:Lim/doit/pro/activity/SigninWithGoogleDialogActivity;

    invoke-static {v0}, Lim/doit/pro/ui/component/DProgressDialog;->closeDialog(Landroid/app/Activity;)V

    .line 145
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 146
    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 131
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 132
    iget-object v0, p0, Lim/doit/pro/activity/SigninWithGoogleDialogActivity$4;->this$0:Lim/doit/pro/activity/SigninWithGoogleDialogActivity;

    invoke-static {v0}, Lim/doit/pro/ui/component/DProgressDialog;->show(Landroid/app/Activity;)Lim/doit/pro/ui/component/DProgressDialog;

    .line 133
    return-void
.end method
