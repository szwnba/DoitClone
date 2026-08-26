.class public Lim/doit/pro/activity/SigninWithGoogleWebViewActivity;
.super Lim/doit/pro/activity/BaseActivity;
.source "SigninWithGoogleWebViewActivity.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "SetJavaScriptEnabled"
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "Doit-GoogleLogin"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lim/doit/pro/activity/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lim/doit/pro/activity/SigninWithGoogleWebViewActivity;)V
    .locals 0

    .prologue
    .line 85
    invoke-direct {p0}, Lim/doit/pro/activity/SigninWithGoogleWebViewActivity;->dismissDialog()V

    return-void
.end method

.method static synthetic access$1(Lim/doit/pro/activity/SigninWithGoogleWebViewActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 113
    invoke-direct {p0, p1}, Lim/doit/pro/activity/SigninWithGoogleWebViewActivity;->getGoogleAuth(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2(Lim/doit/pro/activity/SigninWithGoogleWebViewActivity;)V
    .locals 0

    .prologue
    .line 95
    invoke-direct {p0}, Lim/doit/pro/activity/SigninWithGoogleWebViewActivity;->alertError()V

    return-void
.end method

.method static synthetic access$3(Lim/doit/pro/activity/SigninWithGoogleWebViewActivity;)V
    .locals 0

    .prologue
    .line 99
    invoke-direct {p0}, Lim/doit/pro/activity/SigninWithGoogleWebViewActivity;->finishAfterError()V

    return-void
.end method

.method static synthetic access$4(Lim/doit/pro/activity/SigninWithGoogleWebViewActivity;)V
    .locals 0

    .prologue
    .line 105
    invoke-direct {p0}, Lim/doit/pro/activity/SigninWithGoogleWebViewActivity;->toHome()V

    return-void
.end method

.method private alertError()V
    .locals 2

    .prologue
    .line 96
    const v0, 0x7f0c0083

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 97
    return-void
.end method

.method private dismissDialog()V
    .locals 0

    .prologue
    .line 86
    invoke-static {p0}, Lim/doit/pro/ui/component/DProgressDialog;->closeDialog(Landroid/app/Activity;)V

    .line 87
    return-void
.end method

.method private finishAfterError()V
    .locals 2

    .prologue
    .line 100
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 101
    .local v0, "intent":Landroid/content/Intent;
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lim/doit/pro/activity/SigninWithGoogleWebViewActivity;->setResult(ILandroid/content/Intent;)V

    .line 102
    invoke-virtual {p0}, Lim/doit/pro/activity/SigninWithGoogleWebViewActivity;->finish()V

    .line 103
    return-void
.end method

.method private getGoogleAuth(Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 114
    new-instance v0, Lim/doit/pro/activity/SigninWithGoogleWebViewActivity$2;

    invoke-direct {v0, p0}, Lim/doit/pro/activity/SigninWithGoogleWebViewActivity$2;-><init>(Lim/doit/pro/activity/SigninWithGoogleWebViewActivity;)V

    .line 156
    .local v0, "task":Lim/doit/pro/asynctask/DoitAsyncTask;, "Lim/doit/pro/asynctask/DoitAsyncTask<Ljava/lang/String;Ljava/lang/Void;Lim/doit/pro/api/Response;>;"
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lim/doit/pro/asynctask/DoitAsyncTask;->execute([Ljava/lang/Object;)Lim/doit/pro/asynctask/DoitAsyncTask;

    .line 157
    return-void
.end method

.method private showDialog(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 82
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lim/doit/pro/ui/component/DProgressDialog;->show(Landroid/app/Activity;Ljava/lang/CharSequence;Z)Lim/doit/pro/ui/component/DProgressDialog;

    .line 83
    return-void
.end method

.method private toHome()V
    .locals 2

    .prologue
    .line 106
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lim/doit/pro/activity/HomeActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 107
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 108
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 109
    invoke-virtual {p0, v0}, Lim/doit/pro/activity/SigninWithGoogleWebViewActivity;->startActivity(Landroid/content/Intent;)V

    .line 110
    invoke-virtual {p0}, Lim/doit/pro/activity/SigninWithGoogleWebViewActivity;->finish()V

    .line 111
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 32
    invoke-super {p0, p1}, Lim/doit/pro/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    const v0, 0x7f03003e

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/SigninWithGoogleWebViewActivity;->setContentView(I)V

    .line 34
    return-void
.end method

.method protected onStart()V
    .locals 6

    .prologue
    const/4 v4, 0x1

    .line 38
    invoke-super {p0}, Lim/doit/pro/activity/BaseActivity;->onStart()V

    .line 39
    const v3, 0x7f0c007e

    invoke-static {v3}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lim/doit/pro/activity/SigninWithGoogleWebViewActivity;->showDialog(Ljava/lang/String;)V

    .line 41
    const v3, 0x7f0b00c9

    invoke-virtual {p0, v3}, Lim/doit/pro/activity/SigninWithGoogleWebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/webkit/WebView;

    .line 43
    .local v2, "wv":Landroid/webkit/WebView;
    new-instance v3, Lim/doit/pro/activity/SigninWithGoogleWebViewActivity$1;

    invoke-direct {v3, p0}, Lim/doit/pro/activity/SigninWithGoogleWebViewActivity$1;-><init>(Lim/doit/pro/activity/SigninWithGoogleWebViewActivity;)V

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 70
    invoke-virtual {v2}, Landroid/webkit/WebView;->clearHistory()V

    .line 71
    invoke-virtual {v2}, Landroid/webkit/WebView;->clearFormData()V

    .line 72
    invoke-virtual {v2, v4}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 73
    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    .line 74
    .local v1, "webSettings":Landroid/webkit/WebSettings;
    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 75
    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 77
    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lim/doit/pro/api/utils/D;->GOOGLE_LOGIN_ADDRESS:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lim/doit/pro/utils/DateUtils;->getLocalOffset()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 78
    .local v0, "url":Ljava/lang/String;
    invoke-virtual {v2, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 79
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 91
    invoke-direct {p0}, Lim/doit/pro/activity/SigninWithGoogleWebViewActivity;->dismissDialog()V

    .line 92
    invoke-super {p0}, Lim/doit/pro/activity/BaseActivity;->onStop()V

    .line 93
    return-void
.end method

.method protected toLogin()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 28
    return-void
.end method
