.class public Lim/doit/pro/activity/LoginAgainActivity;
.super Lim/doit/pro/activity/BaseActivity;
.source "LoginAgainActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lim/doit/pro/activity/LoginAgainActivity$Login;
    }
.end annotation


# instance fields
.field private appNameTV:Landroid/widget/TextView;

.field private chooseServerTV:Landroid/widget/TextView;

.field private passwordET:Landroid/widget/EditText;

.field private scrollView:Landroid/widget/ScrollView;

.field private signinBtn:Landroid/widget/Button;

.field private usernameET:Landroid/widget/TextView;

.field private watcher:Landroid/text/TextWatcher;

.field private wrapLayout:Lim/doit/pro/ui/component/KeyboardDetectorRelativeLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Lim/doit/pro/activity/BaseActivity;-><init>()V

    .line 126
    new-instance v0, Lim/doit/pro/activity/LoginAgainActivity$1;

    invoke-direct {v0, p0}, Lim/doit/pro/activity/LoginAgainActivity$1;-><init>(Lim/doit/pro/activity/LoginAgainActivity;)V

    iput-object v0, p0, Lim/doit/pro/activity/LoginAgainActivity;->watcher:Landroid/text/TextWatcher;

    .line 27
    return-void
.end method

.method static synthetic access$0(Lim/doit/pro/activity/LoginAgainActivity;)V
    .locals 0

    .prologue
    .line 118
    invoke-direct {p0}, Lim/doit/pro/activity/LoginAgainActivity;->checkSigninBtnEnabled()V

    return-void
.end method

.method static synthetic access$1(Lim/doit/pro/activity/LoginAgainActivity;)V
    .locals 0

    .prologue
    .line 109
    invoke-direct {p0}, Lim/doit/pro/activity/LoginAgainActivity;->setServerViewContent()V

    return-void
.end method

.method static synthetic access$2(Lim/doit/pro/activity/LoginAgainActivity;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lim/doit/pro/activity/LoginAgainActivity;->signinBtn:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$3(Lim/doit/pro/activity/LoginAgainActivity;)V
    .locals 0

    .prologue
    .line 223
    invoke-direct {p0}, Lim/doit/pro/activity/LoginAgainActivity;->callbackAfterLoginSuccess()V

    return-void
.end method

.method static synthetic access$4(Lim/doit/pro/activity/LoginAgainActivity;)V
    .locals 0

    .prologue
    .line 228
    invoke-direct {p0}, Lim/doit/pro/activity/LoginAgainActivity;->toHomeAfterLogin()V

    return-void
.end method

.method static synthetic access$5(Lim/doit/pro/activity/LoginAgainActivity;)Landroid/widget/ScrollView;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lim/doit/pro/activity/LoginAgainActivity;->scrollView:Landroid/widget/ScrollView;

    return-object v0
.end method

.method static synthetic access$6(Lim/doit/pro/activity/LoginAgainActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lim/doit/pro/activity/LoginAgainActivity;->appNameTV:Landroid/widget/TextView;

    return-object v0
.end method

.method private callbackAfterLoginSuccess()V
    .locals 1

    .prologue
    .line 224
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/LoginAgainActivity;->setResult(I)V

    .line 225
    invoke-virtual {p0}, Lim/doit/pro/activity/LoginAgainActivity;->finish()V

    .line 226
    return-void
.end method

.method private checkSigninBtnEnabled()V
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, Lim/doit/pro/activity/LoginAgainActivity;->passwordET:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lim/doit/pro/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lim/doit/pro/activity/LoginAgainActivity;->signinBtn:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 124
    :goto_0
    return-void

    .line 122
    :cond_0
    iget-object v0, p0, Lim/doit/pro/activity/LoginAgainActivity;->signinBtn:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method private init()V
    .locals 0

    .prologue
    .line 84
    invoke-direct {p0}, Lim/doit/pro/activity/LoginAgainActivity;->initView()V

    .line 85
    invoke-direct {p0}, Lim/doit/pro/activity/LoginAgainActivity;->initViewContent()V

    .line 86
    invoke-direct {p0}, Lim/doit/pro/activity/LoginAgainActivity;->initListener()V

    .line 87
    return-void
.end method

.method private initListener()V
    .locals 2

    .prologue
    .line 146
    iget-object v0, p0, Lim/doit/pro/activity/LoginAgainActivity;->wrapLayout:Lim/doit/pro/ui/component/KeyboardDetectorRelativeLayout;

    new-instance v1, Lim/doit/pro/activity/LoginAgainActivity$2;

    invoke-direct {v1, p0}, Lim/doit/pro/activity/LoginAgainActivity$2;-><init>(Lim/doit/pro/activity/LoginAgainActivity;)V

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/KeyboardDetectorRelativeLayout;->addKeyboardStateChangedListener(Lim/doit/pro/ui/component/KeyboardDetectorRelativeLayout$IKeyboardChanged;)V

    .line 164
    return-void
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 90
    const v0, 0x7f0b0063

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/LoginAgainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lim/doit/pro/activity/LoginAgainActivity;->scrollView:Landroid/widget/ScrollView;

    .line 91
    const v0, 0x7f0b0093

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/LoginAgainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lim/doit/pro/ui/component/KeyboardDetectorRelativeLayout;

    iput-object v0, p0, Lim/doit/pro/activity/LoginAgainActivity;->wrapLayout:Lim/doit/pro/ui/component/KeyboardDetectorRelativeLayout;

    .line 92
    const v0, 0x7f0b0094

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/LoginAgainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lim/doit/pro/activity/LoginAgainActivity;->appNameTV:Landroid/widget/TextView;

    .line 93
    const v0, 0x7f0b005c

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/LoginAgainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lim/doit/pro/activity/LoginAgainActivity;->usernameET:Landroid/widget/TextView;

    .line 94
    const v0, 0x7f0b0095

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/LoginAgainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lim/doit/pro/activity/LoginAgainActivity;->passwordET:Landroid/widget/EditText;

    .line 95
    const v0, 0x7f0b0096

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/LoginAgainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lim/doit/pro/activity/LoginAgainActivity;->signinBtn:Landroid/widget/Button;

    .line 96
    const v0, 0x7f0b0097

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/LoginAgainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lim/doit/pro/activity/LoginAgainActivity;->chooseServerTV:Landroid/widget/TextView;

    .line 98
    const v0, 0x7f0b0062

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/LoginAgainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    .line 99
    const/16 v1, 0x8

    .line 98
    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setFlags(I)V

    .line 100
    return-void
.end method

.method private initViewContent()V
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lim/doit/pro/activity/LoginAgainActivity;->usernameET:Landroid/widget/TextView;

    invoke-static {}, Lim/doit/pro/utils/PrefUtils;->getLoginUsername()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    invoke-direct {p0}, Lim/doit/pro/activity/LoginAgainActivity;->setServerViewContent()V

    .line 105
    invoke-direct {p0}, Lim/doit/pro/activity/LoginAgainActivity;->checkSigninBtnEnabled()V

    .line 106
    iget-object v0, p0, Lim/doit/pro/activity/LoginAgainActivity;->passwordET:Landroid/widget/EditText;

    iget-object v1, p0, Lim/doit/pro/activity/LoginAgainActivity;->watcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 107
    return-void
.end method

.method private logoutAndClearData()V
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lim/doit/pro/activity/LoginAgainActivity;->mApp:Lim/doit/pro/activity/DoitApp;

    invoke-virtual {v0, p0}, Lim/doit/pro/activity/DoitApp;->logout(Landroid/app/Activity;)V

    .line 238
    return-void
.end method

.method private setServerViewContent()V
    .locals 3

    .prologue
    .line 110
    invoke-static {}, Lim/doit/pro/utils/PrefUtils;->getServer()Ljava/lang/String;

    move-result-object v0

    .line 111
    .local v0, "server":Ljava/lang/String;
    const-string v1, "japan"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 112
    iget-object v1, p0, Lim/doit/pro/activity/LoginAgainActivity;->chooseServerTV:Landroid/widget/TextView;

    const v2, 0x7f0c007c

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 116
    :cond_0
    :goto_0
    return-void

    .line 113
    :cond_1
    const-string v1, "china"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 114
    iget-object v1, p0, Lim/doit/pro/activity/LoginAgainActivity;->chooseServerTV:Landroid/widget/TextView;

    const v2, 0x7f0c007d

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method private toHomeAfterLogin()V
    .locals 2

    .prologue
    .line 229
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lim/doit/pro/activity/HomeActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 230
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 231
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 232
    invoke-virtual {p0, v0}, Lim/doit/pro/activity/LoginAgainActivity;->startActivity(Landroid/content/Intent;)V

    .line 233
    invoke-virtual {p0}, Lim/doit/pro/activity/LoginAgainActivity;->finish()V

    .line 234
    return-void
.end method


# virtual methods
.method public onChooseServerClick(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 50
    invoke-static {}, Lim/doit/pro/utils/PrefUtils;->changeServer()V

    .line 51
    invoke-direct {p0}, Lim/doit/pro/activity/LoginAgainActivity;->setServerViewContent()V

    .line 52
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 61
    invoke-super {p0, p1}, Lim/doit/pro/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 62
    const v0, 0x7f030031

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/LoginAgainActivity;->setContentView(I)V

    .line 63
    invoke-direct {p0}, Lim/doit/pro/activity/LoginAgainActivity;->init()V

    .line 64
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 76
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 77
    invoke-virtual {p0}, Lim/doit/pro/activity/LoginAgainActivity;->goToScreen()V

    .line 78
    const/4 v0, 0x0

    .line 80
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lim/doit/pro/activity/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onLoginClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 42
    iget-object v2, p0, Lim/doit/pro/activity/LoginAgainActivity;->signinBtn:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 43
    iget-object v2, p0, Lim/doit/pro/activity/LoginAgainActivity;->signinBtn:Landroid/widget/Button;

    const v3, 0x7f0c0071

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    .line 44
    iget-object v2, p0, Lim/doit/pro/activity/LoginAgainActivity;->usernameET:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 45
    .local v1, "username":Ljava/lang/String;
    iget-object v2, p0, Lim/doit/pro/activity/LoginAgainActivity;->passwordET:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 46
    .local v0, "password":Ljava/lang/String;
    new-instance v2, Lim/doit/pro/activity/LoginAgainActivity$Login;

    invoke-direct {v2, p0, v1, v0}, Lim/doit/pro/activity/LoginAgainActivity$Login;-><init>(Lim/doit/pro/activity/LoginAgainActivity;Ljava/lang/String;Ljava/lang/String;)V

    new-array v3, v4, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lim/doit/pro/activity/LoginAgainActivity$Login;->execute([Ljava/lang/Object;)Lim/doit/pro/asynctask/DoitAsyncTask;

    .line 47
    return-void
.end method

.method public onLogoutClick(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 38
    invoke-direct {p0}, Lim/doit/pro/activity/LoginAgainActivity;->logoutAndClearData()V

    .line 39
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 68
    invoke-super {p0, p1}, Lim/doit/pro/activity/BaseActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 69
    invoke-virtual {p0, p1}, Lim/doit/pro/activity/LoginAgainActivity;->setIntent(Landroid/content/Intent;)V

    .line 70
    invoke-direct {p0}, Lim/doit/pro/activity/LoginAgainActivity;->init()V

    .line 71
    return-void
.end method

.method protected toLogin()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 57
    return-void
.end method
