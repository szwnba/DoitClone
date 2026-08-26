.class Lcom/evernote/client/android/EvernoteOAuthActivity$1;
.super Landroid/webkit/WebViewClient;
.source "EvernoteOAuthActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/evernote/client/android/EvernoteOAuthActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/evernote/client/android/EvernoteOAuthActivity;


# direct methods
.method constructor <init>(Lcom/evernote/client/android/EvernoteOAuthActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/evernote/client/android/EvernoteOAuthActivity$1;->this$0:Lcom/evernote/client/android/EvernoteOAuthActivity;

    .line 105
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 6
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 109
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 110
    .local v0, "uri":Landroid/net/Uri;
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/evernote/client/android/EvernoteOAuthActivity$1;->this$0:Lcom/evernote/client/android/EvernoteOAuthActivity;

    invoke-static {v3}, Lcom/evernote/client/android/EvernoteOAuthActivity;->access$0(Lcom/evernote/client/android/EvernoteOAuthActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 111
    iget-object v2, p0, Lcom/evernote/client/android/EvernoteOAuthActivity$1;->this$0:Lcom/evernote/client/android/EvernoteOAuthActivity;

    invoke-static {v2}, Lcom/evernote/client/android/EvernoteOAuthActivity;->access$1(Lcom/evernote/client/android/EvernoteOAuthActivity;)Landroid/os/AsyncTask;

    move-result-object v2

    if-nez v2, :cond_0

    .line 112
    iget-object v2, p0, Lcom/evernote/client/android/EvernoteOAuthActivity$1;->this$0:Lcom/evernote/client/android/EvernoteOAuthActivity;

    new-instance v3, Lcom/evernote/client/android/EvernoteOAuthActivity$CompleteAuthAsyncTask;

    iget-object v4, p0, Lcom/evernote/client/android/EvernoteOAuthActivity$1;->this$0:Lcom/evernote/client/android/EvernoteOAuthActivity;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/evernote/client/android/EvernoteOAuthActivity$CompleteAuthAsyncTask;-><init>(Lcom/evernote/client/android/EvernoteOAuthActivity;Lcom/evernote/client/android/EvernoteOAuthActivity$CompleteAuthAsyncTask;)V

    new-array v4, v1, [Landroid/net/Uri;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-virtual {v3, v4}, Lcom/evernote/client/android/EvernoteOAuthActivity$CompleteAuthAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/evernote/client/android/EvernoteOAuthActivity;->access$2(Lcom/evernote/client/android/EvernoteOAuthActivity;Landroid/os/AsyncTask;)V

    .line 116
    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method
