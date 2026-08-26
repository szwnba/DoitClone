.class public Lim/doit/pro/activity/ViewNoteFragment;
.super Landroid/support/v4/app/Fragment;
.source "ViewNoteFragment.java"


# static fields
.field private static final KEY_SHARED_URL:Ljava/lang/String; = "shared_url"


# instance fields
.field private mUrl:Ljava/lang/String;

.field private mWebView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lim/doit/pro/activity/ViewNoteFragment;)V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Lim/doit/pro/activity/ViewNoteFragment;->dismissProgress()V

    return-void
.end method

.method private dismissProgress()V
    .locals 1

    .prologue
    .line 79
    invoke-virtual {p0}, Lim/doit/pro/activity/ViewNoteFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lim/doit/pro/ui/component/DProgressDialog;->closeDialog(Landroid/app/Activity;)V

    .line 80
    return-void
.end method

.method private loadNote()V
    .locals 2

    .prologue
    .line 74
    invoke-virtual {p0}, Lim/doit/pro/activity/ViewNoteFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lim/doit/pro/ui/component/DProgressDialog;->show(Landroid/app/Activity;)Lim/doit/pro/ui/component/DProgressDialog;

    .line 75
    iget-object v0, p0, Lim/doit/pro/activity/ViewNoteFragment;->mWebView:Landroid/webkit/WebView;

    iget-object v1, p0, Lim/doit/pro/activity/ViewNoteFragment;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 76
    return-void
.end method

.method public static newInstance(Ljava/lang/String;)Lim/doit/pro/activity/ViewNoteFragment;
    .locals 3
    .param p0, "sharedUrl"    # Ljava/lang/String;

    .prologue
    .line 24
    new-instance v1, Lim/doit/pro/activity/ViewNoteFragment;

    invoke-direct {v1}, Lim/doit/pro/activity/ViewNoteFragment;-><init>()V

    .line 25
    .local v1, "newFragment":Lim/doit/pro/activity/ViewNoteFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 26
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "shared_url"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    invoke-virtual {v1, v0}, Lim/doit/pro/activity/ViewNoteFragment;->setArguments(Landroid/os/Bundle;)V

    .line 28
    return-object v1
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 40
    invoke-virtual {p0}, Lim/doit/pro/activity/ViewNoteFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "shared_url"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lim/doit/pro/activity/ViewNoteFragment;->mUrl:Ljava/lang/String;

    .line 42
    const v2, 0x7f030068

    .line 43
    const/4 v3, 0x0

    .line 42
    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 44
    .local v0, "view":Landroid/view/View;
    const v2, 0x7f0b00c9

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/webkit/WebView;

    iput-object v2, p0, Lim/doit/pro/activity/ViewNoteFragment;->mWebView:Landroid/webkit/WebView;

    .line 46
    iget-object v2, p0, Lim/doit/pro/activity/ViewNoteFragment;->mWebView:Landroid/webkit/WebView;

    new-instance v3, Lim/doit/pro/activity/ViewNoteFragment$1;

    invoke-direct {v3, p0}, Lim/doit/pro/activity/ViewNoteFragment$1;-><init>(Lim/doit/pro/activity/ViewNoteFragment;)V

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 62
    iget-object v2, p0, Lim/doit/pro/activity/ViewNoteFragment;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->clearHistory()V

    .line 63
    iget-object v2, p0, Lim/doit/pro/activity/ViewNoteFragment;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->clearFormData()V

    .line 64
    iget-object v2, p0, Lim/doit/pro/activity/ViewNoteFragment;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2, v4}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 65
    iget-object v2, p0, Lim/doit/pro/activity/ViewNoteFragment;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    .line 66
    .local v1, "webSettings":Landroid/webkit/WebSettings;
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 67
    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 68
    invoke-direct {p0}, Lim/doit/pro/activity/ViewNoteFragment;->loadNote()V

    .line 70
    return-object v0
.end method

.method public reload()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lim/doit/pro/activity/ViewNoteFragment;->loadNote()V

    .line 33
    return-void
.end method
