.class Lcom/evernote/client/android/EvernoteOAuthActivity$2;
.super Landroid/webkit/WebChromeClient;
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
    iput-object p1, p0, Lcom/evernote/client/android/EvernoteOAuthActivity$2;->this$0:Lcom/evernote/client/android/EvernoteOAuthActivity;

    .line 123
    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "newProgress"    # I

    .prologue
    .line 126
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    .line 127
    iget-object v0, p0, Lcom/evernote/client/android/EvernoteOAuthActivity$2;->this$0:Lcom/evernote/client/android/EvernoteOAuthActivity;

    invoke-static {v0}, Lcom/evernote/client/android/EvernoteOAuthActivity;->access$3(Lcom/evernote/client/android/EvernoteOAuthActivity;)Landroid/app/Activity;

    move-result-object v0

    mul-int/lit16 v1, p2, 0x3e8

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setProgress(I)V

    .line 128
    return-void
.end method
