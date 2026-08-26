.class Lim/doit/pro/activity/SigninWithGoogleDialogActivity$5;
.super Ljava/lang/Object;
.source "SigninWithGoogleDialogActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/activity/SigninWithGoogleDialogActivity;->getAndUseAuthTokenBlocking(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/activity/SigninWithGoogleDialogActivity;

.field private final synthetic val$response:Lim/doit/pro/api/Response;


# direct methods
.method constructor <init>(Lim/doit/pro/activity/SigninWithGoogleDialogActivity;Lim/doit/pro/api/Response;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lim/doit/pro/activity/SigninWithGoogleDialogActivity$5;->this$0:Lim/doit/pro/activity/SigninWithGoogleDialogActivity;

    iput-object p2, p0, Lim/doit/pro/activity/SigninWithGoogleDialogActivity$5;->val$response:Lim/doit/pro/api/Response;

    .line 251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const v3, 0x7f0c0083

    const/4 v2, 0x1

    .line 255
    iget-object v0, p0, Lim/doit/pro/activity/SigninWithGoogleDialogActivity$5;->val$response:Lim/doit/pro/api/Response;

    if-eqz v0, :cond_2

    .line 256
    iget-object v0, p0, Lim/doit/pro/activity/SigninWithGoogleDialogActivity$5;->val$response:Lim/doit/pro/api/Response;

    invoke-virtual {v0}, Lim/doit/pro/api/Response;->isSucces()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Lim/doit/pro/activity/SigninWithGoogleDialogActivity$5;->this$0:Lim/doit/pro/activity/SigninWithGoogleDialogActivity;

    invoke-static {v0}, Lim/doit/pro/activity/SigninWithGoogleDialogActivity;->access$6(Lim/doit/pro/activity/SigninWithGoogleDialogActivity;)V

    .line 277
    :goto_0
    return-void

    .line 258
    :cond_0
    iget-object v0, p0, Lim/doit/pro/activity/SigninWithGoogleDialogActivity$5;->val$response:Lim/doit/pro/api/Response;

    invoke-virtual {v0}, Lim/doit/pro/api/Response;->isVersionTooOld()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 261
    iget-object v0, p0, Lim/doit/pro/activity/SigninWithGoogleDialogActivity$5;->this$0:Lim/doit/pro/activity/SigninWithGoogleDialogActivity;

    invoke-static {v0}, Lim/doit/pro/utils/AlertDialogUtils;->alertVersionTooOldDialog(Landroid/app/Activity;)V

    goto :goto_0

    .line 264
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "sign up with google account failed. code is "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 265
    iget-object v1, p0, Lim/doit/pro/activity/SigninWithGoogleDialogActivity$5;->val$response:Lim/doit/pro/api/Response;

    iget v1, v1, Lim/doit/pro/api/Response;->code:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 264
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lim/doit/pro/utils/Logger;->d(Ljava/lang/Object;)V

    .line 267
    iget-object v0, p0, Lim/doit/pro/activity/SigninWithGoogleDialogActivity$5;->this$0:Lim/doit/pro/activity/SigninWithGoogleDialogActivity;

    .line 266
    invoke-static {v0, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 269
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 273
    :cond_2
    const-string v0, "sign up with google account failed. response is null"

    invoke-static {v0}, Lim/doit/pro/utils/Logger;->d(Ljava/lang/Object;)V

    .line 274
    iget-object v0, p0, Lim/doit/pro/activity/SigninWithGoogleDialogActivity$5;->this$0:Lim/doit/pro/activity/SigninWithGoogleDialogActivity;

    invoke-static {v0, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 275
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
