.class public Lim/doit/pro/activity/AboutUsActivity;
.super Lim/doit/pro/activity/DSwipeBackBaseActivity;
.source "AboutUsActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lim/doit/pro/activity/DSwipeBackBaseActivity;-><init>()V

    return-void
.end method

.method private initActionBar()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 55
    invoke-virtual {p0}, Lim/doit/pro/activity/AboutUsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 56
    .local v0, "actionBar":Landroid/app/ActionBar;
    const v1, 0x7f0c0139

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    .line 57
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 58
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 59
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 60
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayUseLogoEnabled(Z)V

    .line 61
    return-void
.end method

.method private initView()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Lim/doit/pro/activity/AboutUsActivity;->initActionBar()V

    .line 52
    return-void
.end method

.method private initViewContent()V
    .locals 5

    .prologue
    .line 22
    const v3, 0x7f0b0053

    :try_start_0
    invoke-virtual {p0, v3}, Lim/doit/pro/activity/AboutUsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/webkit/WebView;

    .line 23
    .local v2, "wv":Landroid/webkit/WebView;
    const-string v1, "file:///android_asset/html/aboutus/"

    .line 24
    .local v1, "path":Ljava/lang/String;
    invoke-static {}, Lim/doit/pro/utils/LocalSettings;->isCn()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 25
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "aboutCN.html"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 31
    :goto_0
    invoke-virtual {v2, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 36
    return-void

    .line 26
    :cond_0
    invoke-static {}, Lim/doit/pro/utils/LocalSettings;->isJa()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 27
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "aboutJP.html"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "aboutEN.html"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 32
    .end local v1    # "path":Ljava/lang/String;
    .end local v2    # "wv":Landroid/webkit/WebView;
    :catch_0
    move-exception v0

    .line 33
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 14
    invoke-super {p0, p1}, Lim/doit/pro/activity/DSwipeBackBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 15
    const v0, 0x7f030018

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/AboutUsActivity;->setContentView(I)V

    .line 16
    invoke-direct {p0}, Lim/doit/pro/activity/AboutUsActivity;->initView()V

    .line 17
    invoke-direct {p0}, Lim/doit/pro/activity/AboutUsActivity;->initViewContent()V

    .line 18
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 40
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 45
    invoke-super {p0, p1}, Lim/doit/pro/activity/DSwipeBackBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 42
    :pswitch_0
    invoke-virtual {p0}, Lim/doit/pro/activity/AboutUsActivity;->finish()V

    .line 43
    const/4 v0, 0x1

    goto :goto_0

    .line 40
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
