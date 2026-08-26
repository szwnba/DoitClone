.class Lcom/evernote/client/android/EvernoteOAuthActivity$BootstrapAsyncTask;
.super Landroid/os/AsyncTask;
.source "EvernoteOAuthActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/evernote/client/android/EvernoteOAuthActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BootstrapAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/evernote/client/android/EvernoteOAuthActivity;


# direct methods
.method private constructor <init>(Lcom/evernote/client/android/EvernoteOAuthActivity;)V
    .locals 0

    .prologue
    .line 355
    iput-object p1, p0, Lcom/evernote/client/android/EvernoteOAuthActivity$BootstrapAsyncTask;->this$0:Lcom/evernote/client/android/EvernoteOAuthActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/evernote/client/android/EvernoteOAuthActivity;Lcom/evernote/client/android/EvernoteOAuthActivity$BootstrapAsyncTask;)V
    .locals 0

    .prologue
    .line 355
    invoke-direct {p0, p1}, Lcom/evernote/client/android/EvernoteOAuthActivity$BootstrapAsyncTask;-><init>(Lcom/evernote/client/android/EvernoteOAuthActivity;)V

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/evernote/client/android/EvernoteOAuthActivity$BootstrapAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 12
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v9, 0x0

    .line 365
    const/4 v7, 0x0

    .line 368
    .local v7, "url":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcom/evernote/client/android/EvernoteSession;->getOpenSession()Lcom/evernote/client/android/EvernoteSession;

    move-result-object v6

    .line 369
    .local v6, "session":Lcom/evernote/client/android/EvernoteSession;
    if-eqz v6, :cond_0

    .line 371
    invoke-virtual {v6}, Lcom/evernote/client/android/EvernoteSession;->getBootstrapSession()Lcom/evernote/client/android/BootstrapManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/evernote/client/android/BootstrapManager;->getBootstrapInfo()Lcom/evernote/client/android/BootstrapManager$BootstrapInfoWrapper;

    move-result-object v3

    .line 373
    .local v3, "infoWrapper":Lcom/evernote/client/android/BootstrapManager$BootstrapInfoWrapper;
    if-eqz v3, :cond_0

    .line 374
    invoke-virtual {v3}, Lcom/evernote/client/android/BootstrapManager$BootstrapInfoWrapper;->getBootstrapInfo()Lcom/evernote/edam/userstore/BootstrapInfo;

    move-result-object v2

    .line 375
    .local v2, "info":Lcom/evernote/edam/userstore/BootstrapInfo;
    if-eqz v2, :cond_0

    .line 376
    iget-object v10, p0, Lcom/evernote/client/android/EvernoteOAuthActivity$BootstrapAsyncTask;->this$0:Lcom/evernote/client/android/EvernoteOAuthActivity;

    invoke-virtual {v2}, Lcom/evernote/edam/userstore/BootstrapInfo;->getProfiles()Ljava/util/List;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    invoke-static {v10, v8}, Lcom/evernote/client/android/EvernoteOAuthActivity;->access$4(Lcom/evernote/client/android/EvernoteOAuthActivity;Ljava/util/ArrayList;)V

    .line 377
    iget-object v8, p0, Lcom/evernote/client/android/EvernoteOAuthActivity$BootstrapAsyncTask;->this$0:Lcom/evernote/client/android/EvernoteOAuthActivity;

    invoke-static {v8}, Lcom/evernote/client/android/EvernoteOAuthActivity;->access$5(Lcom/evernote/client/android/EvernoteOAuthActivity;)Ljava/util/ArrayList;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 378
    iget-object v8, p0, Lcom/evernote/client/android/EvernoteOAuthActivity$BootstrapAsyncTask;->this$0:Lcom/evernote/client/android/EvernoteOAuthActivity;

    invoke-static {v8}, Lcom/evernote/client/android/EvernoteOAuthActivity;->access$5(Lcom/evernote/client/android/EvernoteOAuthActivity;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_0

    .line 379
    iget-object v8, p0, Lcom/evernote/client/android/EvernoteOAuthActivity$BootstrapAsyncTask;->this$0:Lcom/evernote/client/android/EvernoteOAuthActivity;

    invoke-static {v8}, Lcom/evernote/client/android/EvernoteOAuthActivity;->access$6(Lcom/evernote/client/android/EvernoteOAuthActivity;)I

    move-result v8

    iget-object v10, p0, Lcom/evernote/client/android/EvernoteOAuthActivity$BootstrapAsyncTask;->this$0:Lcom/evernote/client/android/EvernoteOAuthActivity;

    invoke-static {v10}, Lcom/evernote/client/android/EvernoteOAuthActivity;->access$5(Lcom/evernote/client/android/EvernoteOAuthActivity;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v8, v10, :cond_0

    .line 381
    iget-object v10, p0, Lcom/evernote/client/android/EvernoteOAuthActivity$BootstrapAsyncTask;->this$0:Lcom/evernote/client/android/EvernoteOAuthActivity;

    iget-object v8, p0, Lcom/evernote/client/android/EvernoteOAuthActivity$BootstrapAsyncTask;->this$0:Lcom/evernote/client/android/EvernoteOAuthActivity;

    invoke-static {v8}, Lcom/evernote/client/android/EvernoteOAuthActivity;->access$5(Lcom/evernote/client/android/EvernoteOAuthActivity;)Ljava/util/ArrayList;

    move-result-object v8

    iget-object v11, p0, Lcom/evernote/client/android/EvernoteOAuthActivity$BootstrapAsyncTask;->this$0:Lcom/evernote/client/android/EvernoteOAuthActivity;

    invoke-static {v11}, Lcom/evernote/client/android/EvernoteOAuthActivity;->access$6(Lcom/evernote/client/android/EvernoteOAuthActivity;)I

    move-result v11

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/evernote/edam/userstore/BootstrapProfile;

    invoke-static {v10, v8}, Lcom/evernote/client/android/EvernoteOAuthActivity;->access$7(Lcom/evernote/client/android/EvernoteOAuthActivity;Lcom/evernote/edam/userstore/BootstrapProfile;)V

    .line 387
    .end local v2    # "info":Lcom/evernote/edam/userstore/BootstrapInfo;
    .end local v3    # "infoWrapper":Lcom/evernote/client/android/BootstrapManager$BootstrapInfoWrapper;
    :cond_0
    iget-object v8, p0, Lcom/evernote/client/android/EvernoteOAuthActivity$BootstrapAsyncTask;->this$0:Lcom/evernote/client/android/EvernoteOAuthActivity;

    invoke-static {v8}, Lcom/evernote/client/android/EvernoteOAuthActivity;->access$8(Lcom/evernote/client/android/EvernoteOAuthActivity;)Lcom/evernote/edam/userstore/BootstrapProfile;

    move-result-object v8

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/evernote/client/android/EvernoteOAuthActivity$BootstrapAsyncTask;->this$0:Lcom/evernote/client/android/EvernoteOAuthActivity;

    invoke-static {v8}, Lcom/evernote/client/android/EvernoteOAuthActivity;->access$8(Lcom/evernote/client/android/EvernoteOAuthActivity;)Lcom/evernote/edam/userstore/BootstrapProfile;

    move-result-object v8

    invoke-virtual {v8}, Lcom/evernote/edam/userstore/BootstrapProfile;->getSettings()Lcom/evernote/edam/userstore/BootstrapSettings;

    move-result-object v8

    invoke-virtual {v8}, Lcom/evernote/edam/userstore/BootstrapSettings;->getServiceHost()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 388
    :cond_1
    const-string v8, "EvernoteOAuthActivity"

    const-string v10, "Bootstrap did not return a valid host"

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v8, v9

    .line 410
    .end local v6    # "session":Lcom/evernote/client/android/EvernoteSession;
    :goto_0
    return-object v8

    .line 392
    .restart local v6    # "session":Lcom/evernote/client/android/EvernoteSession;
    :cond_2
    iget-object v8, p0, Lcom/evernote/client/android/EvernoteOAuthActivity$BootstrapAsyncTask;->this$0:Lcom/evernote/client/android/EvernoteOAuthActivity;

    invoke-static {v8}, Lcom/evernote/client/android/EvernoteOAuthActivity;->access$9(Lcom/evernote/client/android/EvernoteOAuthActivity;)Lorg/scribe/oauth/OAuthService;

    move-result-object v5

    .line 394
    .local v5, "service":Lorg/scribe/oauth/OAuthService;
    const-string v8, "EvernoteOAuthActivity"

    const-string v10, "Retrieving OAuth request token..."

    invoke-static {v8, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    invoke-interface {v5}, Lorg/scribe/oauth/OAuthService;->getRequestToken()Lorg/scribe/model/Token;

    move-result-object v4

    .line 396
    .local v4, "reqToken":Lorg/scribe/model/Token;
    iget-object v8, p0, Lcom/evernote/client/android/EvernoteOAuthActivity$BootstrapAsyncTask;->this$0:Lcom/evernote/client/android/EvernoteOAuthActivity;

    invoke-virtual {v4}, Lorg/scribe/model/Token;->getToken()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Lcom/evernote/client/android/EvernoteOAuthActivity;->access$10(Lcom/evernote/client/android/EvernoteOAuthActivity;Ljava/lang/String;)V

    .line 397
    iget-object v8, p0, Lcom/evernote/client/android/EvernoteOAuthActivity$BootstrapAsyncTask;->this$0:Lcom/evernote/client/android/EvernoteOAuthActivity;

    invoke-virtual {v4}, Lorg/scribe/model/Token;->getSecret()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Lcom/evernote/client/android/EvernoteOAuthActivity;->access$11(Lcom/evernote/client/android/EvernoteOAuthActivity;Ljava/lang/String;)V

    .line 399
    const-string v8, "EvernoteOAuthActivity"

    const-string v10, "Redirecting user for authorization..."

    invoke-static {v8, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    invoke-interface {v5, v4}, Lorg/scribe/oauth/OAuthService;->getAuthorizationUrl(Lorg/scribe/model/Token;)Ljava/lang/String;

    move-result-object v7

    .line 401
    iget-object v8, p0, Lcom/evernote/client/android/EvernoteOAuthActivity$BootstrapAsyncTask;->this$0:Lcom/evernote/client/android/EvernoteOAuthActivity;

    invoke-static {v8}, Lcom/evernote/client/android/EvernoteOAuthActivity;->access$12(Lcom/evernote/client/android/EvernoteOAuthActivity;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 402
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "&supportLinkedSandbox=true"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lcom/evernote/client/android/BootstrapManager$ClientUnsupportedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v7

    .end local v4    # "reqToken":Lorg/scribe/model/Token;
    .end local v5    # "service":Lorg/scribe/oauth/OAuthService;
    .end local v6    # "session":Lcom/evernote/client/android/EvernoteSession;
    :cond_3
    :goto_1
    move-object v8, v7

    .line 410
    goto :goto_0

    .line 404
    :catch_0
    move-exception v0

    .local v0, "cue":Lcom/evernote/client/android/BootstrapManager$ClientUnsupportedException;
    move-object v8, v9

    .line 406
    goto :goto_0

    .line 407
    .end local v0    # "cue":Lcom/evernote/client/android/BootstrapManager$ClientUnsupportedException;
    :catch_1
    move-exception v1

    .line 408
    .local v1, "ex":Ljava/lang/Exception;
    const-string v8, "EvernoteOAuthActivity"

    const-string v9, "Failed to obtain OAuth request token"

    invoke-static {v8, v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/evernote/client/android/EvernoteOAuthActivity$BootstrapAsyncTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 420
    iget-object v0, p0, Lcom/evernote/client/android/EvernoteOAuthActivity$BootstrapAsyncTask;->this$0:Lcom/evernote/client/android/EvernoteOAuthActivity;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Lcom/evernote/client/android/EvernoteOAuthActivity;->removeDialog(I)V

    .line 421
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 422
    iget-object v0, p0, Lcom/evernote/client/android/EvernoteOAuthActivity$BootstrapAsyncTask;->this$0:Lcom/evernote/client/android/EvernoteOAuthActivity;

    invoke-static {v0}, Lcom/evernote/client/android/EvernoteOAuthActivity;->access$13(Lcom/evernote/client/android/EvernoteOAuthActivity;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 424
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 425
    iget-object v0, p0, Lcom/evernote/client/android/EvernoteOAuthActivity$BootstrapAsyncTask;->this$0:Lcom/evernote/client/android/EvernoteOAuthActivity;

    invoke-virtual {v0}, Lcom/evernote/client/android/EvernoteOAuthActivity;->invalidateOptionsMenu()V

    .line 430
    :cond_0
    :goto_0
    return-void

    .line 428
    :cond_1
    iget-object v0, p0, Lcom/evernote/client/android/EvernoteOAuthActivity$BootstrapAsyncTask;->this$0:Lcom/evernote/client/android/EvernoteOAuthActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/evernote/client/android/EvernoteOAuthActivity;->access$14(Lcom/evernote/client/android/EvernoteOAuthActivity;Z)V

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 360
    iget-object v0, p0, Lcom/evernote/client/android/EvernoteOAuthActivity$BootstrapAsyncTask;->this$0:Lcom/evernote/client/android/EvernoteOAuthActivity;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Lcom/evernote/client/android/EvernoteOAuthActivity;->showDialog(I)V

    .line 361
    return-void
.end method
