.class public Lcom/evernote/client/android/EvernoteOAuthActivity;
.super Landroid/app/Activity;
.source "EvernoteOAuthActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/evernote/client/android/EvernoteOAuthActivity$BootstrapAsyncTask;,
        Lcom/evernote/client/android/EvernoteOAuthActivity$CompleteAuthAsyncTask;
    }
.end annotation


# static fields
.field static final EXTRA_BOOTSTRAP_SELECTED_PROFILE:Ljava/lang/String; = "BOOTSTRAP_SELECTED_PROFILE"

.field static final EXTRA_BOOTSTRAP_SELECTED_PROFILES:Ljava/lang/String; = "BOOTSTRAP_SELECTED_PROFILES"

.field static final EXTRA_BOOTSTRAP_SELECTED_PROFILE_POS:Ljava/lang/String; = "BOOTSTRAP_SELECTED_PROFILE_POS"

.field static final EXTRA_CONSUMER_KEY:Ljava/lang/String; = "CONSUMER_KEY"

.field static final EXTRA_CONSUMER_SECRET:Ljava/lang/String; = "CONSUMER_SECRET"

.field static final EXTRA_EVERNOTE_SERVICE:Ljava/lang/String; = "EVERNOTE_HOST"

.field static final EXTRA_REQUEST_TOKEN:Ljava/lang/String; = "REQUEST_TOKEN"

.field static final EXTRA_REQUEST_TOKEN_SECRET:Ljava/lang/String; = "REQUEST_TOKEN_SECRET"

.field static final EXTRA_SUPPORT_APP_LINKED_NOTEBOOKS:Ljava/lang/String; = "SUPPORT_APP_LINKED_NOTEBOOKS"

.field private static final LOGTAG:Ljava/lang/String; = "EvernoteOAuthActivity"


# instance fields
.field private final DIALOG_PROGRESS:I

.field private mActivity:Landroid/app/Activity;

.field private mBeginAuthSyncTask:Landroid/os/AsyncTask;

.field private mBootstrapProfiles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/evernote/edam/userstore/BootstrapProfile;",
            ">;"
        }
    .end annotation
.end field

.field private mCompleteAuthSyncTask:Landroid/os/AsyncTask;

.field private mConsumerKey:Ljava/lang/String;

.field private mConsumerSecret:Ljava/lang/String;

.field private mEvernoteService:Lcom/evernote/client/android/EvernoteSession$EvernoteService;

.field private mRequestToken:Ljava/lang/String;

.field private mRequestTokenSecret:Ljava/lang/String;

.field private mSelectedBootstrapProfile:Lcom/evernote/edam/userstore/BootstrapProfile;

.field private mSelectedBootstrapProfilePos:I

.field private mSupportAppLinkedNotebooks:Z

.field private mWebChromeClient:Landroid/webkit/WebChromeClient;

.field private mWebView:Landroid/webkit/WebView;

.field private mWebViewClient:Landroid/webkit/WebViewClient;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 68
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 81
    iput-object v1, p0, Lcom/evernote/client/android/EvernoteOAuthActivity;->mEvernoteService:Lcom/evernote/client/android/EvernoteSession$EvernoteService;

    .line 84
    iput v2, p0, Lcom/evernote/client/android/EvernoteOAuthActivity;->mSelectedBootstrapProfilePos:I

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/evernote/client/android/EvernoteOAuthActivity;->mBootstrapProfiles:Ljava/util/ArrayList;

    .line 87
    iput-object v1, p0, Lcom/evernote/client/android/EvernoteOAuthActivity;->mConsumerKey:Ljava/lang/String;

    .line 88
    iput-object v1, p0, Lcom/evernote/client/android/EvernoteOAuthActivity;->mConsumerSecret:Ljava/lang/String;

    .line 89
    iput-object v1, p0, Lcom/evernote/client/android/EvernoteOAuthActivity;->mRequestToken:Ljava/lang/String;

    .line 90
    iput-object v1, p0, Lcom/evernote/client/android/EvernoteOAuthActivity;->mRequestTokenSecret:Ljava/lang/String;

    .line 91
    iput-boolean v2, p0, Lcom/evernote/client/android/EvernoteOAuthActivity;->mSupportAppLinkedNotebooks:Z

    .line 93
    const/16 v0, 0x65

    iput v0, p0, Lcom/evernote/client/android/EvernoteOAuthActivity;->DIALOG_PROGRESS:I

    .line 99
    iput-object v1, p0, Lcom/evernote/client/android/EvernoteOAuthActivity;->mBeginAuthSyncTask:Landroid/os/AsyncTask;

    .line 100
    iput-object v1, p0, Lcom/evernote/client/android/EvernoteOAuthActivity;->mCompleteAuthSyncTask:Landroid/os/AsyncTask;

    .line 105
    new-instance v0, Lcom/evernote/client/android/EvernoteOAuthActivity$1;

    invoke-direct {v0, p0}, Lcom/evernote/client/android/EvernoteOAuthActivity$1;-><init>(Lcom/evernote/client/android/EvernoteOAuthActivity;)V

    iput-object v0, p0, Lcom/evernote/client/android/EvernoteOAuthActivity;->mWebViewClient:Landroid/webkit/WebViewClient;

    .line 123
    new-instance v0, Lcom/evernote/client/android/EvernoteOAuthActivity$2;

    invoke-direct {v0, p0}, Lcom/evernote/client/android/EvernoteOAuthActivity$2;-><init>(Lcom/evernote/client/android/EvernoteOAuthActivity;)V

    iput-object v0, p0, Lcom/evernote/client/android/EvernoteOAuthActivity;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    .line 68
    return-void
.end method

.method static synthetic access$0(Lcom/evernote/client/android/EvernoteOAuthActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 229
    invoke-direct {p0}, Lcom/evernote/client/android/EvernoteOAuthActivity;->getCallbackScheme()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1(Lcom/evernote/client/android/EvernoteOAuthActivity;)Landroid/os/AsyncTask;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/evernote/client/android/EvernoteOAuthActivity;->mCompleteAuthSyncTask:Landroid/os/AsyncTask;

    return-object v0
.end method

.method static synthetic access$10(Lcom/evernote/client/android/EvernoteOAuthActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/evernote/client/android/EvernoteOAuthActivity;->mRequestToken:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$11(Lcom/evernote/client/android/EvernoteOAuthActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/evernote/client/android/EvernoteOAuthActivity;->mRequestTokenSecret:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$12(Lcom/evernote/client/android/EvernoteOAuthActivity;)Z
    .locals 1

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/evernote/client/android/EvernoteOAuthActivity;->mSupportAppLinkedNotebooks:Z

    return v0
.end method

.method static synthetic access$13(Lcom/evernote/client/android/EvernoteOAuthActivity;)Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/evernote/client/android/EvernoteOAuthActivity;->mWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$14(Lcom/evernote/client/android/EvernoteOAuthActivity;Z)V
    .locals 0

    .prologue
    .line 273
    invoke-direct {p0, p1}, Lcom/evernote/client/android/EvernoteOAuthActivity;->exit(Z)V

    return-void
.end method

.method static synthetic access$15(Lcom/evernote/client/android/EvernoteOAuthActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/evernote/client/android/EvernoteOAuthActivity;->mRequestToken:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$16(Lcom/evernote/client/android/EvernoteOAuthActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/evernote/client/android/EvernoteOAuthActivity;->mRequestTokenSecret:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lcom/evernote/client/android/EvernoteOAuthActivity;Landroid/os/AsyncTask;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lcom/evernote/client/android/EvernoteOAuthActivity;->mCompleteAuthSyncTask:Landroid/os/AsyncTask;

    return-void
.end method

.method static synthetic access$3(Lcom/evernote/client/android/EvernoteOAuthActivity;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/evernote/client/android/EvernoteOAuthActivity;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$4(Lcom/evernote/client/android/EvernoteOAuthActivity;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lcom/evernote/client/android/EvernoteOAuthActivity;->mBootstrapProfiles:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$5(Lcom/evernote/client/android/EvernoteOAuthActivity;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/evernote/client/android/EvernoteOAuthActivity;->mBootstrapProfiles:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$6(Lcom/evernote/client/android/EvernoteOAuthActivity;)I
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Lcom/evernote/client/android/EvernoteOAuthActivity;->mSelectedBootstrapProfilePos:I

    return v0
.end method

.method static synthetic access$7(Lcom/evernote/client/android/EvernoteOAuthActivity;Lcom/evernote/edam/userstore/BootstrapProfile;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/evernote/client/android/EvernoteOAuthActivity;->mSelectedBootstrapProfile:Lcom/evernote/edam/userstore/BootstrapProfile;

    return-void
.end method

.method static synthetic access$8(Lcom/evernote/client/android/EvernoteOAuthActivity;)Lcom/evernote/edam/userstore/BootstrapProfile;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/evernote/client/android/EvernoteOAuthActivity;->mSelectedBootstrapProfile:Lcom/evernote/edam/userstore/BootstrapProfile;

    return-object v0
.end method

.method static synthetic access$9(Lcom/evernote/client/android/EvernoteOAuthActivity;)Lorg/scribe/oauth/OAuthService;
    .locals 1

    .prologue
    .line 239
    invoke-direct {p0}, Lcom/evernote/client/android/EvernoteOAuthActivity;->createService()Lorg/scribe/oauth/OAuthService;

    move-result-object v0

    return-object v0
.end method

.method private createService()Lorg/scribe/oauth/OAuthService;
    .locals 6

    .prologue
    .line 240
    const/4 v1, 0x0

    .line 242
    .local v1, "builder":Lorg/scribe/oauth/OAuthService;
    const/4 v0, 0x0

    .line 243
    .local v0, "apiClass":Ljava/lang/Class;
    iget-object v3, p0, Lcom/evernote/client/android/EvernoteOAuthActivity;->mSelectedBootstrapProfile:Lcom/evernote/edam/userstore/BootstrapProfile;

    invoke-virtual {v3}, Lcom/evernote/edam/userstore/BootstrapProfile;->getSettings()Lcom/evernote/edam/userstore/BootstrapSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/evernote/edam/userstore/BootstrapSettings;->getServiceHost()Ljava/lang/String;

    move-result-object v2

    .line 245
    .local v2, "host":Ljava/lang/String;
    if-eqz v2, :cond_0

    const-string v3, "http"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 246
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "https://"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 249
    :cond_0
    const-string v3, "https://sandbox.evernote.com"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 250
    const-class v0, Lorg/scribe/builder/api/EvernoteApi$Sandbox;

    .line 259
    :goto_0
    new-instance v3, Lorg/scribe/builder/ServiceBuilder;

    invoke-direct {v3}, Lorg/scribe/builder/ServiceBuilder;-><init>()V

    .line 260
    invoke-virtual {v3, v0}, Lorg/scribe/builder/ServiceBuilder;->provider(Ljava/lang/Class;)Lorg/scribe/builder/ServiceBuilder;

    move-result-object v3

    .line 261
    iget-object v4, p0, Lcom/evernote/client/android/EvernoteOAuthActivity;->mConsumerKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lorg/scribe/builder/ServiceBuilder;->apiKey(Ljava/lang/String;)Lorg/scribe/builder/ServiceBuilder;

    move-result-object v3

    .line 262
    iget-object v4, p0, Lcom/evernote/client/android/EvernoteOAuthActivity;->mConsumerSecret:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lorg/scribe/builder/ServiceBuilder;->apiSecret(Ljava/lang/String;)Lorg/scribe/builder/ServiceBuilder;

    move-result-object v3

    .line 263
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/evernote/client/android/EvernoteOAuthActivity;->getCallbackScheme()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "://callback"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/scribe/builder/ServiceBuilder;->callback(Ljava/lang/String;)Lorg/scribe/builder/ServiceBuilder;

    move-result-object v3

    .line 264
    invoke-virtual {v3}, Lorg/scribe/builder/ServiceBuilder;->build()Lorg/scribe/oauth/OAuthService;

    move-result-object v1

    .line 266
    return-object v1

    .line 251
    :cond_1
    const-string v3, "https://www.evernote.com"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 252
    const-class v0, Lorg/scribe/builder/api/EvernoteApi;

    .line 253
    goto :goto_0

    :cond_2
    const-string v3, "https://app.yinxiang.com"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 254
    const-class v0, Lcom/evernote/client/oauth/YinxiangApi;

    .line 255
    goto :goto_0

    .line 256
    :cond_3
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Unsupported Evernote host: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 257
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 256
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private exit(Z)V
    .locals 1
    .param p1, "success"    # Z

    .prologue
    .line 274
    new-instance v0, Lcom/evernote/client/android/EvernoteOAuthActivity$3;

    invoke-direct {v0, p0, p1}, Lcom/evernote/client/android/EvernoteOAuthActivity$3;-><init>(Lcom/evernote/client/android/EvernoteOAuthActivity;Z)V

    invoke-virtual {p0, v0}, Lcom/evernote/client/android/EvernoteOAuthActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 282
    return-void
.end method

.method private getCallbackScheme()Ljava/lang/String;
    .locals 1

    .prologue
    .line 230
    const-string v0, "en-oauth"

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    .prologue
    .line 135
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 138
    invoke-virtual {p0}, Lcom/evernote/client/android/EvernoteOAuthActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/view/Window;->requestFeature(I)Z

    .line 140
    sget v1, Lcom/evernote/androidsdk/R$layout;->esdk__webview:I

    invoke-virtual {p0, v1}, Lcom/evernote/client/android/EvernoteOAuthActivity;->setContentView(I)V

    .line 141
    iput-object p0, p0, Lcom/evernote/client/android/EvernoteOAuthActivity;->mActivity:Landroid/app/Activity;

    .line 143
    sget v1, Lcom/evernote/androidsdk/R$id;->esdk__webview:I

    invoke-virtual {p0, v1}, Lcom/evernote/client/android/EvernoteOAuthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/webkit/WebView;

    iput-object v1, p0, Lcom/evernote/client/android/EvernoteOAuthActivity;->mWebView:Landroid/webkit/WebView;

    .line 144
    iget-object v1, p0, Lcom/evernote/client/android/EvernoteOAuthActivity;->mWebView:Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/evernote/client/android/EvernoteOAuthActivity;->mWebViewClient:Landroid/webkit/WebViewClient;

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 145
    iget-object v1, p0, Lcom/evernote/client/android/EvernoteOAuthActivity;->mWebView:Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/evernote/client/android/EvernoteOAuthActivity;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 146
    iget-object v1, p0, Lcom/evernote/client/android/EvernoteOAuthActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 148
    if-eqz p1, :cond_0

    .line 149
    const-string v1, "EVERNOTE_HOST"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/evernote/client/android/EvernoteSession$EvernoteService;

    iput-object v1, p0, Lcom/evernote/client/android/EvernoteOAuthActivity;->mEvernoteService:Lcom/evernote/client/android/EvernoteSession$EvernoteService;

    .line 150
    const-string v1, "CONSUMER_KEY"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/evernote/client/android/EvernoteOAuthActivity;->mConsumerKey:Ljava/lang/String;

    .line 151
    const-string v1, "CONSUMER_SECRET"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/evernote/client/android/EvernoteOAuthActivity;->mConsumerSecret:Ljava/lang/String;

    .line 152
    const-string v1, "REQUEST_TOKEN"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/evernote/client/android/EvernoteOAuthActivity;->mRequestToken:Ljava/lang/String;

    .line 153
    const-string v1, "REQUEST_TOKEN_SECRET"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/evernote/client/android/EvernoteOAuthActivity;->mRequestTokenSecret:Ljava/lang/String;

    .line 154
    const-string v1, "SUPPORT_APP_LINKED_NOTEBOOKS"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/evernote/client/android/EvernoteOAuthActivity;->mSupportAppLinkedNotebooks:Z

    .line 155
    const-string v1, "BOOTSTRAP_SELECTED_PROFILE"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/evernote/edam/userstore/BootstrapProfile;

    iput-object v1, p0, Lcom/evernote/client/android/EvernoteOAuthActivity;->mSelectedBootstrapProfile:Lcom/evernote/edam/userstore/BootstrapProfile;

    .line 156
    const-string v1, "BOOTSTRAP_SELECTED_PROFILE_POS"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/evernote/client/android/EvernoteOAuthActivity;->mSelectedBootstrapProfilePos:I

    .line 157
    const-string v1, "BOOTSTRAP_SELECTED_PROFILES"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/evernote/client/android/EvernoteOAuthActivity;->mBootstrapProfiles:Ljava/util/ArrayList;

    .line 158
    iget-object v1, p0, Lcom/evernote/client/android/EvernoteOAuthActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1, p1}, Landroid/webkit/WebView;->restoreState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    .line 167
    :goto_0
    return-void

    .line 161
    :cond_0
    invoke-virtual {p0}, Lcom/evernote/client/android/EvernoteOAuthActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 162
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "EVERNOTE_HOST"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/evernote/client/android/EvernoteSession$EvernoteService;

    iput-object v1, p0, Lcom/evernote/client/android/EvernoteOAuthActivity;->mEvernoteService:Lcom/evernote/client/android/EvernoteSession$EvernoteService;

    .line 163
    const-string v1, "CONSUMER_KEY"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/evernote/client/android/EvernoteOAuthActivity;->mConsumerKey:Ljava/lang/String;

    .line 164
    const-string v1, "CONSUMER_SECRET"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/evernote/client/android/EvernoteOAuthActivity;->mConsumerSecret:Ljava/lang/String;

    .line 165
    const-string v1, "SUPPORT_APP_LINKED_NOTEBOOKS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/evernote/client/android/EvernoteOAuthActivity;->mSupportAppLinkedNotebooks:Z

    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 206
    packed-switch p1, :pswitch_data_0

    .line 211
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 208
    :pswitch_0
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 206
    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 292
    invoke-virtual {p0}, Lcom/evernote/client/android/EvernoteOAuthActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 293
    .local v0, "inflater":Landroid/view/MenuInflater;
    sget v1, Lcom/evernote/androidsdk/R$menu;->esdk__oauth:I

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 295
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v2, 0x0

    .line 336
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Lcom/evernote/androidsdk/R$id;->esdk__switch_service:I

    if-ne v0, v1, :cond_1

    .line 337
    iget-object v0, p0, Lcom/evernote/client/android/EvernoteOAuthActivity;->mBeginAuthSyncTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/evernote/client/android/EvernoteOAuthActivity;->mBeginAuthSyncTask:Landroid/os/AsyncTask;

    invoke-virtual {v0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_1

    .line 338
    :cond_0
    iget-object v0, p0, Lcom/evernote/client/android/EvernoteOAuthActivity;->mSelectedBootstrapProfile:Lcom/evernote/edam/userstore/BootstrapProfile;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/evernote/client/android/EvernoteOAuthActivity;->mBootstrapProfiles:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 340
    iget v0, p0, Lcom/evernote/client/android/EvernoteOAuthActivity;->mSelectedBootstrapProfilePos:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/evernote/client/android/EvernoteOAuthActivity;->mBootstrapProfiles:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/evernote/client/android/EvernoteOAuthActivity;->mSelectedBootstrapProfilePos:I

    .line 341
    iput-object v2, p0, Lcom/evernote/client/android/EvernoteOAuthActivity;->mBootstrapProfiles:Ljava/util/ArrayList;

    .line 342
    iput-object v2, p0, Lcom/evernote/client/android/EvernoteOAuthActivity;->mSelectedBootstrapProfile:Lcom/evernote/edam/userstore/BootstrapProfile;

    .line 344
    new-instance v0, Lcom/evernote/client/android/EvernoteOAuthActivity$BootstrapAsyncTask;

    invoke-direct {v0, p0, v2}, Lcom/evernote/client/android/EvernoteOAuthActivity$BootstrapAsyncTask;-><init>(Lcom/evernote/client/android/EvernoteOAuthActivity;Lcom/evernote/client/android/EvernoteOAuthActivity$BootstrapAsyncTask;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/evernote/client/android/EvernoteOAuthActivity$BootstrapAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/evernote/client/android/EvernoteOAuthActivity;->mBeginAuthSyncTask:Landroid/os/AsyncTask;

    .line 347
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "dialog"    # Landroid/app/Dialog;

    .prologue
    .line 216
    packed-switch p1, :pswitch_data_0

    .line 222
    .end local p2    # "dialog":Landroid/app/Dialog;
    :goto_0
    return-void

    .restart local p2    # "dialog":Landroid/app/Dialog;
    :pswitch_0
    move-object v0, p2

    .line 218
    check-cast v0, Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 219
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 220
    check-cast p2, Landroid/app/ProgressDialog;

    .end local p2    # "dialog":Landroid/app/Dialog;
    sget v0, Lcom/evernote/androidsdk/R$string;->esdk__loading:I

    invoke-virtual {p0, v0}, Lcom/evernote/client/android/EvernoteOAuthActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 216
    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v3, 0x1

    .line 311
    sget v1, Lcom/evernote/androidsdk/R$id;->esdk__switch_service:I

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 313
    .local v0, "itemSwitchService":Landroid/view/MenuItem;
    iget-object v1, p0, Lcom/evernote/client/android/EvernoteOAuthActivity;->mBootstrapProfiles:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/evernote/client/android/EvernoteOAuthActivity;->mBootstrapProfiles:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v3, :cond_1

    .line 314
    const-string v1, "Evernote-China"

    iget-object v2, p0, Lcom/evernote/client/android/EvernoteOAuthActivity;->mSelectedBootstrapProfile:Lcom/evernote/edam/userstore/BootstrapProfile;

    invoke-virtual {v2}, Lcom/evernote/edam/userstore/BootstrapProfile;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 315
    const-string v1, "Evernote International"

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 320
    :goto_0
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 325
    :goto_1
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1

    .line 317
    :cond_0
    const-string v1, "\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd"

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_0

    .line 322
    :cond_1
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1
.end method

.method protected onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 171
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 173
    iget-object v0, p0, Lcom/evernote/client/android/EvernoteOAuthActivity;->mConsumerKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/evernote/client/android/EvernoteOAuthActivity;->mConsumerSecret:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 175
    :cond_0
    invoke-direct {p0, v2}, Lcom/evernote/client/android/EvernoteOAuthActivity;->exit(Z)V

    .line 182
    :cond_1
    :goto_0
    return-void

    .line 179
    :cond_2
    iget-object v0, p0, Lcom/evernote/client/android/EvernoteOAuthActivity;->mSelectedBootstrapProfile:Lcom/evernote/edam/userstore/BootstrapProfile;

    if-nez v0, :cond_1

    .line 180
    new-instance v0, Lcom/evernote/client/android/EvernoteOAuthActivity$BootstrapAsyncTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/evernote/client/android/EvernoteOAuthActivity$BootstrapAsyncTask;-><init>(Lcom/evernote/client/android/EvernoteOAuthActivity;Lcom/evernote/client/android/EvernoteOAuthActivity$BootstrapAsyncTask;)V

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/evernote/client/android/EvernoteOAuthActivity$BootstrapAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/evernote/client/android/EvernoteOAuthActivity;->mBeginAuthSyncTask:Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 190
    const-string v0, "EVERNOTE_HOST"

    iget-object v1, p0, Lcom/evernote/client/android/EvernoteOAuthActivity;->mEvernoteService:Lcom/evernote/client/android/EvernoteSession$EvernoteService;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 191
    const-string v0, "CONSUMER_KEY"

    iget-object v1, p0, Lcom/evernote/client/android/EvernoteOAuthActivity;->mConsumerKey:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    const-string v0, "CONSUMER_SECRET"

    iget-object v1, p0, Lcom/evernote/client/android/EvernoteOAuthActivity;->mConsumerSecret:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    const-string v0, "SUPPORT_APP_LINKED_NOTEBOOKS"

    iget-boolean v1, p0, Lcom/evernote/client/android/EvernoteOAuthActivity;->mSupportAppLinkedNotebooks:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 194
    const-string v0, "REQUEST_TOKEN"

    iget-object v1, p0, Lcom/evernote/client/android/EvernoteOAuthActivity;->mRequestToken:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    const-string v0, "REQUEST_TOKEN_SECRET"

    iget-object v1, p0, Lcom/evernote/client/android/EvernoteOAuthActivity;->mRequestTokenSecret:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    const-string v0, "BOOTSTRAP_SELECTED_PROFILE"

    iget-object v1, p0, Lcom/evernote/client/android/EvernoteOAuthActivity;->mSelectedBootstrapProfile:Lcom/evernote/edam/userstore/BootstrapProfile;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 197
    const-string v0, "BOOTSTRAP_SELECTED_PROFILE_POS"

    iget v1, p0, Lcom/evernote/client/android/EvernoteOAuthActivity;->mSelectedBootstrapProfilePos:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 198
    const-string v0, "BOOTSTRAP_SELECTED_PROFILES"

    iget-object v1, p0, Lcom/evernote/client/android/EvernoteOAuthActivity;->mBootstrapProfiles:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 199
    iget-object v0, p0, Lcom/evernote/client/android/EvernoteOAuthActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->saveState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    .line 201
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 202
    return-void
.end method
