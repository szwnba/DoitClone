.class Lim/doit/pro/activity/SigninWithGoogleWebViewActivity$1;
.super Landroid/webkit/WebViewClient;
.source "SigninWithGoogleWebViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/activity/SigninWithGoogleWebViewActivity;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/activity/SigninWithGoogleWebViewActivity;


# direct methods
.method constructor <init>(Lim/doit/pro/activity/SigninWithGoogleWebViewActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lim/doit/pro/activity/SigninWithGoogleWebViewActivity$1;->this$0:Lim/doit/pro/activity/SigninWithGoogleWebViewActivity;

    .line 43
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public doUpdateVisitedHistory(Landroid/webkit/WebView;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "isReload"    # Z

    .prologue
    .line 46
    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 59
    sget-object v0, Lim/doit/pro/api/utils/D;->GOOGLE_LOGIN_SUCCESS:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 60
    iget-object v0, p0, Lim/doit/pro/activity/SigninWithGoogleWebViewActivity$1;->this$0:Lim/doit/pro/activity/SigninWithGoogleWebViewActivity;

    invoke-static {v0, p2}, Lim/doit/pro/activity/SigninWithGoogleWebViewActivity;->access$1(Lim/doit/pro/activity/SigninWithGoogleWebViewActivity;Ljava/lang/String;)V

    .line 65
    :cond_0
    :goto_0
    iget-object v0, p0, Lim/doit/pro/activity/SigninWithGoogleWebViewActivity$1;->this$0:Lim/doit/pro/activity/SigninWithGoogleWebViewActivity;

    invoke-static {v0}, Lim/doit/pro/activity/SigninWithGoogleWebViewActivity;->access$0(Lim/doit/pro/activity/SigninWithGoogleWebViewActivity;)V

    .line 66
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 67
    return-void

    .line 61
    :cond_1
    sget-object v0, Lim/doit/pro/api/utils/D;->GOOGLE_LOGIN_FAILURE:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lim/doit/pro/activity/SigninWithGoogleWebViewActivity$1;->this$0:Lim/doit/pro/activity/SigninWithGoogleWebViewActivity;

    invoke-static {v0}, Lim/doit/pro/activity/SigninWithGoogleWebViewActivity;->access$2(Lim/doit/pro/activity/SigninWithGoogleWebViewActivity;)V

    .line 63
    iget-object v0, p0, Lim/doit/pro/activity/SigninWithGoogleWebViewActivity$1;->this$0:Lim/doit/pro/activity/SigninWithGoogleWebViewActivity;

    invoke-static {v0}, Lim/doit/pro/activity/SigninWithGoogleWebViewActivity;->access$3(Lim/doit/pro/activity/SigninWithGoogleWebViewActivity;)V

    goto :goto_0
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 50
    iget-object v1, p0, Lim/doit/pro/activity/SigninWithGoogleWebViewActivity$1;->this$0:Lim/doit/pro/activity/SigninWithGoogleWebViewActivity;

    invoke-static {v1}, Lim/doit/pro/activity/SigninWithGoogleWebViewActivity;->access$0(Lim/doit/pro/activity/SigninWithGoogleWebViewActivity;)V

    .line 51
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 52
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lim/doit/pro/activity/SigninWithGoogleWebViewActivity$1;->this$0:Lim/doit/pro/activity/SigninWithGoogleWebViewActivity;

    .line 53
    const/4 v2, 0x0

    .line 52
    invoke-virtual {v1, v2, v0}, Lim/doit/pro/activity/SigninWithGoogleWebViewActivity;->setResult(ILandroid/content/Intent;)V

    .line 54
    iget-object v1, p0, Lim/doit/pro/activity/SigninWithGoogleWebViewActivity$1;->this$0:Lim/doit/pro/activity/SigninWithGoogleWebViewActivity;

    invoke-virtual {v1}, Lim/doit/pro/activity/SigninWithGoogleWebViewActivity;->finish()V

    .line 55
    return-void
.end method
