.class Lcom/evernote/client/android/EvernoteOAuthActivity$CompleteAuthAsyncTask;
.super Landroid/os/AsyncTask;
.source "EvernoteOAuthActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/evernote/client/android/EvernoteOAuthActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CompleteAuthAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/net/Uri;",
        "Ljava/lang/Void;",
        "Lcom/evernote/client/oauth/EvernoteAuthToken;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/evernote/client/android/EvernoteOAuthActivity;


# direct methods
.method private constructor <init>(Lcom/evernote/client/android/EvernoteOAuthActivity;)V
    .locals 0

    .prologue
    .line 436
    iput-object p1, p0, Lcom/evernote/client/android/EvernoteOAuthActivity$CompleteAuthAsyncTask;->this$0:Lcom/evernote/client/android/EvernoteOAuthActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/evernote/client/android/EvernoteOAuthActivity;Lcom/evernote/client/android/EvernoteOAuthActivity$CompleteAuthAsyncTask;)V
    .locals 0

    .prologue
    .line 436
    invoke-direct {p0, p1}, Lcom/evernote/client/android/EvernoteOAuthActivity$CompleteAuthAsyncTask;-><init>(Lcom/evernote/client/android/EvernoteOAuthActivity;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Landroid/net/Uri;)Lcom/evernote/client/oauth/EvernoteAuthToken;
    .locals 12
    .param p1, "uris"    # [Landroid/net/Uri;

    .prologue
    .line 446
    const/4 v1, 0x0

    .line 447
    .local v1, "authToken":Lcom/evernote/client/oauth/EvernoteAuthToken;
    if-eqz p1, :cond_0

    array-length v10, p1

    if-nez v10, :cond_1

    .line 448
    :cond_0
    const/4 v10, 0x0

    .line 476
    :goto_0
    return-object v10

    .line 450
    :cond_1
    const/4 v10, 0x0

    aget-object v7, p1, v10

    .line 452
    .local v7, "uri":Landroid/net/Uri;
    iget-object v10, p0, Lcom/evernote/client/android/EvernoteOAuthActivity$CompleteAuthAsyncTask;->this$0:Lcom/evernote/client/android/EvernoteOAuthActivity;

    invoke-static {v10}, Lcom/evernote/client/android/EvernoteOAuthActivity;->access$15(Lcom/evernote/client/android/EvernoteOAuthActivity;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 453
    iget-object v10, p0, Lcom/evernote/client/android/EvernoteOAuthActivity$CompleteAuthAsyncTask;->this$0:Lcom/evernote/client/android/EvernoteOAuthActivity;

    invoke-static {v10}, Lcom/evernote/client/android/EvernoteOAuthActivity;->access$9(Lcom/evernote/client/android/EvernoteOAuthActivity;)Lorg/scribe/oauth/OAuthService;

    move-result-object v6

    .line 454
    .local v6, "service":Lorg/scribe/oauth/OAuthService;
    const-string v10, "oauth_verifier"

    invoke-virtual {v7, v10}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 455
    .local v9, "verifierString":Ljava/lang/String;
    const-string v10, "sandbox_lnb"

    invoke-virtual {v7, v10}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 456
    .local v0, "appLnbString":Ljava/lang/String;
    const-string v10, "true"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    .line 458
    .local v4, "isAppLinkedNotebook":Z
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 459
    const-string v10, "EvernoteOAuthActivity"

    const-string v11, "User did not authorize access"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "appLnbString":Ljava/lang/String;
    .end local v4    # "isAppLinkedNotebook":Z
    .end local v6    # "service":Lorg/scribe/oauth/OAuthService;
    .end local v9    # "verifierString":Ljava/lang/String;
    :goto_1
    move-object v10, v1

    .line 476
    goto :goto_0

    .line 461
    .restart local v0    # "appLnbString":Ljava/lang/String;
    .restart local v4    # "isAppLinkedNotebook":Z
    .restart local v6    # "service":Lorg/scribe/oauth/OAuthService;
    .restart local v9    # "verifierString":Ljava/lang/String;
    :cond_2
    new-instance v8, Lorg/scribe/model/Verifier;

    invoke-direct {v8, v9}, Lorg/scribe/model/Verifier;-><init>(Ljava/lang/String;)V

    .line 462
    .local v8, "verifier":Lorg/scribe/model/Verifier;
    const-string v10, "EvernoteOAuthActivity"

    const-string v11, "Retrieving OAuth access token..."

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    :try_start_0
    new-instance v5, Lorg/scribe/model/Token;

    iget-object v10, p0, Lcom/evernote/client/android/EvernoteOAuthActivity$CompleteAuthAsyncTask;->this$0:Lcom/evernote/client/android/EvernoteOAuthActivity;

    invoke-static {v10}, Lcom/evernote/client/android/EvernoteOAuthActivity;->access$15(Lcom/evernote/client/android/EvernoteOAuthActivity;)Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcom/evernote/client/android/EvernoteOAuthActivity$CompleteAuthAsyncTask;->this$0:Lcom/evernote/client/android/EvernoteOAuthActivity;

    invoke-static {v11}, Lcom/evernote/client/android/EvernoteOAuthActivity;->access$16(Lcom/evernote/client/android/EvernoteOAuthActivity;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v5, v10, v11}, Lorg/scribe/model/Token;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    .local v5, "reqToken":Lorg/scribe/model/Token;
    new-instance v2, Lcom/evernote/client/oauth/EvernoteAuthToken;

    invoke-interface {v6, v5, v8}, Lorg/scribe/oauth/OAuthService;->getAccessToken(Lorg/scribe/model/Token;Lorg/scribe/model/Verifier;)Lorg/scribe/model/Token;

    move-result-object v10

    invoke-direct {v2, v10, v4}, Lcom/evernote/client/oauth/EvernoteAuthToken;-><init>(Lorg/scribe/model/Token;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "authToken":Lcom/evernote/client/oauth/EvernoteAuthToken;
    .local v2, "authToken":Lcom/evernote/client/oauth/EvernoteAuthToken;
    move-object v1, v2

    .line 468
    .end local v2    # "authToken":Lcom/evernote/client/oauth/EvernoteAuthToken;
    .restart local v1    # "authToken":Lcom/evernote/client/oauth/EvernoteAuthToken;
    goto :goto_1

    .end local v5    # "reqToken":Lorg/scribe/model/Token;
    :catch_0
    move-exception v3

    .line 469
    .local v3, "ex":Ljava/lang/Exception;
    const-string v10, "EvernoteOAuthActivity"

    const-string v11, "Failed to obtain OAuth access token"

    invoke-static {v10, v11, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 473
    .end local v0    # "appLnbString":Ljava/lang/String;
    .end local v3    # "ex":Ljava/lang/Exception;
    .end local v4    # "isAppLinkedNotebook":Z
    .end local v6    # "service":Lorg/scribe/oauth/OAuthService;
    .end local v8    # "verifier":Lorg/scribe/model/Verifier;
    .end local v9    # "verifierString":Ljava/lang/String;
    :cond_3
    const-string v10, "EvernoteOAuthActivity"

    const-string v11, "Unable to retrieve OAuth access token, no request token"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Landroid/net/Uri;

    invoke-virtual {p0, p1}, Lcom/evernote/client/android/EvernoteOAuthActivity$CompleteAuthAsyncTask;->doInBackground([Landroid/net/Uri;)Lcom/evernote/client/oauth/EvernoteAuthToken;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/evernote/client/oauth/EvernoteAuthToken;)V
    .locals 4
    .param p1, "authToken"    # Lcom/evernote/client/oauth/EvernoteAuthToken;

    .prologue
    .line 487
    iget-object v0, p0, Lcom/evernote/client/android/EvernoteOAuthActivity$CompleteAuthAsyncTask;->this$0:Lcom/evernote/client/android/EvernoteOAuthActivity;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Lcom/evernote/client/android/EvernoteOAuthActivity;->removeDialog(I)V

    .line 488
    invoke-static {}, Lcom/evernote/client/android/EvernoteSession;->getOpenSession()Lcom/evernote/client/android/EvernoteSession;

    move-result-object v0

    if-nez v0, :cond_0

    .line 489
    iget-object v0, p0, Lcom/evernote/client/android/EvernoteOAuthActivity$CompleteAuthAsyncTask;->this$0:Lcom/evernote/client/android/EvernoteOAuthActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/evernote/client/android/EvernoteOAuthActivity;->access$14(Lcom/evernote/client/android/EvernoteOAuthActivity;Z)V

    .line 495
    :goto_0
    return-void

    .line 493
    :cond_0
    iget-object v0, p0, Lcom/evernote/client/android/EvernoteOAuthActivity$CompleteAuthAsyncTask;->this$0:Lcom/evernote/client/android/EvernoteOAuthActivity;

    invoke-static {}, Lcom/evernote/client/android/EvernoteSession;->getOpenSession()Lcom/evernote/client/android/EvernoteSession;

    move-result-object v1

    .line 494
    iget-object v2, p0, Lcom/evernote/client/android/EvernoteOAuthActivity$CompleteAuthAsyncTask;->this$0:Lcom/evernote/client/android/EvernoteOAuthActivity;

    invoke-virtual {v2}, Lcom/evernote/client/android/EvernoteOAuthActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/evernote/client/android/EvernoteOAuthActivity$CompleteAuthAsyncTask;->this$0:Lcom/evernote/client/android/EvernoteOAuthActivity;

    invoke-static {v3}, Lcom/evernote/client/android/EvernoteOAuthActivity;->access$8(Lcom/evernote/client/android/EvernoteOAuthActivity;)Lcom/evernote/edam/userstore/BootstrapProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/evernote/edam/userstore/BootstrapProfile;->getSettings()Lcom/evernote/edam/userstore/BootstrapSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/evernote/edam/userstore/BootstrapSettings;->getServiceHost()Ljava/lang/String;

    move-result-object v3

    .line 493
    invoke-virtual {v1, v2, p1, v3}, Lcom/evernote/client/android/EvernoteSession;->persistAuthenticationToken(Landroid/content/Context;Lcom/evernote/client/oauth/EvernoteAuthToken;Ljava/lang/String;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/evernote/client/android/EvernoteOAuthActivity;->access$14(Lcom/evernote/client/android/EvernoteOAuthActivity;Z)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/evernote/client/oauth/EvernoteAuthToken;

    invoke-virtual {p0, p1}, Lcom/evernote/client/android/EvernoteOAuthActivity$CompleteAuthAsyncTask;->onPostExecute(Lcom/evernote/client/oauth/EvernoteAuthToken;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 441
    iget-object v0, p0, Lcom/evernote/client/android/EvernoteOAuthActivity$CompleteAuthAsyncTask;->this$0:Lcom/evernote/client/android/EvernoteOAuthActivity;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Lcom/evernote/client/android/EvernoteOAuthActivity;->showDialog(I)V

    .line 442
    return-void
.end method
