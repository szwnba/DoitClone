.class Lim/doit/pro/activity/ViewNoteFragment$1;
.super Landroid/webkit/WebViewClient;
.source "ViewNoteFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/activity/ViewNoteFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/activity/ViewNoteFragment;


# direct methods
.method constructor <init>(Lim/doit/pro/activity/ViewNoteFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lim/doit/pro/activity/ViewNoteFragment$1;->this$0:Lim/doit/pro/activity/ViewNoteFragment;

    .line 46
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 49
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 50
    iget-object v0, p0, Lim/doit/pro/activity/ViewNoteFragment$1;->this$0:Lim/doit/pro/activity/ViewNoteFragment;

    invoke-static {v0}, Lim/doit/pro/activity/ViewNoteFragment;->access$0(Lim/doit/pro/activity/ViewNoteFragment;)V

    .line 51
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 56
    iget-object v0, p0, Lim/doit/pro/activity/ViewNoteFragment$1;->this$0:Lim/doit/pro/activity/ViewNoteFragment;

    invoke-static {v0}, Lim/doit/pro/activity/ViewNoteFragment;->access$0(Lim/doit/pro/activity/ViewNoteFragment;)V

    .line 58
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 59
    return-void
.end method
