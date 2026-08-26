.class public Lim/doit/pro/activity/LoginActivity;
.super Lim/doit/pro/activity/BaseActivity;
.source "LoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lim/doit/pro/activity/LoginActivity$Login;
    }
.end annotation


# instance fields
.field private appNameTV:Landroid/widget/TextView;

.field private chooseServerTV:Landroid/widget/TextView;

.field private passwordET:Landroid/widget/EditText;

.field private scrollView:Landroid/widget/ScrollView;

.field private signinBtn:Landroid/widget/Button;

.field private signinWithGoogleTV:Landroid/widget/TextView;

.field private usernameET:Landroid/widget/EditText;

.field private watcher:Landroid/text/TextWatcher;

.field private wrapLayout:Lim/doit/pro/ui/component/KeyboardDetectorRelativeLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Lim/doit/pro/activity/BaseActivity;-><init>()V

    .line 124
    new-instance v0, Lim/doit/pro/activity/LoginActivity$1;

    invoke-direct {v0, p0}, Lim/doit/pro/activity/LoginActivity$1;-><init>(Lim/doit/pro/activity/LoginActivity;)V

    iput-object v0, p0, Lim/doit/pro/activity/LoginActivity;->watcher:Landroid/text/TextWatcher;

    .line 30
    return-void
.end method

.method static synthetic access$0(Lim/doit/pro/activity/LoginActivity;)V
    .locals 0

    .prologue
    .line 143
    invoke-direct {p0}, Lim/doit/pro/activity/LoginActivity;->checkSigninBtnEnabled()V

    return-void
.end method

.method static synthetic access$1(Lim/doit/pro/activity/LoginActivity;)V
    .locals 0

    .prologue
    .line 249
    invoke-direct {p0}, Lim/doit/pro/activity/LoginActivity;->callbackAfterLoginSuccess()V

    return-void
.end method

.method static synthetic access$2(Lim/doit/pro/activity/LoginActivity;)V
    .locals 0

    .prologue
    .line 254
    invoke-direct {p0}, Lim/doit/pro/activity/LoginActivity;->toHomeAfterLogin()V

    return-void
.end method

.method static synthetic access$3(Lim/doit/pro/activity/LoginActivity;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lim/doit/pro/activity/LoginActivity;->signinBtn:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$4(Lim/doit/pro/activity/LoginActivity;)Landroid/widget/ScrollView;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lim/doit/pro/activity/LoginActivity;->scrollView:Landroid/widget/ScrollView;

    return-object v0
.end method

.method static synthetic access$5(Lim/doit/pro/activity/LoginActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lim/doit/pro/activity/LoginActivity;->appNameTV:Landroid/widget/TextView;

    return-object v0
.end method

.method private callbackAfterLoginSuccess()V
    .locals 1

    .prologue
    .line 250
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/LoginActivity;->setResult(I)V

    .line 251
    invoke-virtual {p0}, Lim/doit/pro/activity/LoginActivity;->finish()V

    .line 252
    return-void
.end method

.method private checkSigninBtnEnabled()V
    .locals 2

    .prologue
    .line 144
    iget-object v0, p0, Lim/doit/pro/activity/LoginActivity;->usernameET:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lim/doit/pro/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 145
    iget-object v0, p0, Lim/doit/pro/activity/LoginActivity;->passwordET:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lim/doit/pro/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 146
    :cond_0
    iget-object v0, p0, Lim/doit/pro/activity/LoginActivity;->signinBtn:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 150
    :goto_0
    return-void

    .line 148
    :cond_1
    iget-object v0, p0, Lim/doit/pro/activity/LoginActivity;->signinBtn:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method private init()V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0}, Lim/doit/pro/activity/LoginActivity;->initView()V

    .line 78
    invoke-direct {p0}, Lim/doit/pro/activity/LoginActivity;->initViewContent()V

    .line 79
    invoke-direct {p0}, Lim/doit/pro/activity/LoginActivity;->initListener()V

    .line 80
    return-void
.end method

.method private initListener()V
    .locals 2

    .prologue
    .line 104
    iget-object v0, p0, Lim/doit/pro/activity/LoginActivity;->wrapLayout:Lim/doit/pro/ui/component/KeyboardDetectorRelativeLayout;

    new-instance v1, Lim/doit/pro/activity/LoginActivity$2;

    invoke-direct {v1, p0}, Lim/doit/pro/activity/LoginActivity$2;-><init>(Lim/doit/pro/activity/LoginActivity;)V

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/KeyboardDetectorRelativeLayout;->addKeyboardStateChangedListener(Lim/doit/pro/ui/component/KeyboardDetectorRelativeLayout$IKeyboardChanged;)V

    .line 122
    return-void
.end method

.method private initView()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 83
    const v0, 0x7f0b0063

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lim/doit/pro/activity/LoginActivity;->scrollView:Landroid/widget/ScrollView;

    .line 84
    const v0, 0x7f0b0093

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lim/doit/pro/ui/component/KeyboardDetectorRelativeLayout;

    iput-object v0, p0, Lim/doit/pro/activity/LoginActivity;->wrapLayout:Lim/doit/pro/ui/component/KeyboardDetectorRelativeLayout;

    .line 85
    const v0, 0x7f0b0094

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lim/doit/pro/activity/LoginActivity;->appNameTV:Landroid/widget/TextView;

    .line 86
    const v0, 0x7f0b005c

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lim/doit/pro/activity/LoginActivity;->usernameET:Landroid/widget/EditText;

    .line 87
    const v0, 0x7f0b0095

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lim/doit/pro/activity/LoginActivity;->passwordET:Landroid/widget/EditText;

    .line 88
    const v0, 0x7f0b0096

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lim/doit/pro/activity/LoginActivity;->signinBtn:Landroid/widget/Button;

    .line 89
    const v0, 0x7f0b0097

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lim/doit/pro/activity/LoginActivity;->chooseServerTV:Landroid/widget/TextView;

    .line 90
    const v0, 0x7f0b0098

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lim/doit/pro/activity/LoginActivity;->signinWithGoogleTV:Landroid/widget/TextView;

    .line 91
    iget-object v0, p0, Lim/doit/pro/activity/LoginActivity;->signinWithGoogleTV:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setFlags(I)V

    .line 92
    const v0, 0x7f0b0099

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setFlags(I)V

    .line 94
    return-void
.end method

.method private initViewContent()V
    .locals 2

    .prologue
    .line 97
    invoke-direct {p0}, Lim/doit/pro/activity/LoginActivity;->setServerViewContent()V

    .line 98
    invoke-direct {p0}, Lim/doit/pro/activity/LoginActivity;->checkSigninBtnEnabled()V

    .line 99
    iget-object v0, p0, Lim/doit/pro/activity/LoginActivity;->usernameET:Landroid/widget/EditText;

    iget-object v1, p0, Lim/doit/pro/activity/LoginActivity;->watcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 100
    iget-object v0, p0, Lim/doit/pro/activity/LoginActivity;->passwordET:Landroid/widget/EditText;

    iget-object v1, p0, Lim/doit/pro/activity/LoginActivity;->watcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 101
    return-void
.end method

.method private setServerViewContent()V
    .locals 3

    .prologue
    .line 179
    invoke-static {}, Lim/doit/pro/utils/PrefUtils;->getServer()Ljava/lang/String;

    move-result-object v0

    .line 180
    .local v0, "server":Ljava/lang/String;
    const-string v1, "japan"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 181
    iget-object v1, p0, Lim/doit/pro/activity/LoginActivity;->chooseServerTV:Landroid/widget/TextView;

    const v2, 0x7f0c007c

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 182
    iget-object v1, p0, Lim/doit/pro/activity/LoginActivity;->signinWithGoogleTV:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 187
    :cond_0
    :goto_0
    return-void

    .line 183
    :cond_1
    const-string v1, "china"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 184
    iget-object v1, p0, Lim/doit/pro/activity/LoginActivity;->chooseServerTV:Landroid/widget/TextView;

    const v2, 0x7f0c007d

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 185
    iget-object v1, p0, Lim/doit/pro/activity/LoginActivity;->signinWithGoogleTV:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private toHomeAfterLogin()V
    .locals 3

    .prologue
    .line 255
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lim/doit/pro/activity/HomeActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 256
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 257
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 258
    const-string v1, "from_login"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 259
    invoke-virtual {p0, v0}, Lim/doit/pro/activity/LoginActivity;->startActivity(Landroid/content/Intent;)V

    .line 260
    invoke-virtual {p0}, Lim/doit/pro/activity/LoginActivity;->finish()V

    .line 261
    return-void
.end method


# virtual methods
.method public onChooseServerClick(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 164
    invoke-static {}, Lim/doit/pro/utils/PrefUtils;->changeServer()V

    .line 165
    invoke-direct {p0}, Lim/doit/pro/activity/LoginActivity;->setServerViewContent()V

    .line 166
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 57
    invoke-super {p0, p1}, Lim/doit/pro/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 58
    invoke-static {p0}, Lcom/crashlytics/android/Crashlytics;->start(Landroid/content/Context;)V

    .line 59
    const v0, 0x7f030030

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/LoginActivity;->setContentView(I)V

    .line 60
    invoke-direct {p0}, Lim/doit/pro/activity/LoginActivity;->init()V

    .line 61
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 48
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 49
    invoke-virtual {p0}, Lim/doit/pro/activity/LoginActivity;->goToScreen()V

    .line 50
    const/4 v0, 0x1

    .line 52
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

    .line 153
    invoke-static {}, Lim/doit/pro/utils/ToastUtils;->showNetworkNotReady()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 161
    :goto_0
    return-void

    .line 156
    :cond_0
    iget-object v2, p0, Lim/doit/pro/activity/LoginActivity;->signinBtn:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 157
    iget-object v2, p0, Lim/doit/pro/activity/LoginActivity;->signinBtn:Landroid/widget/Button;

    const v3, 0x7f0c0071

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    .line 158
    iget-object v2, p0, Lim/doit/pro/activity/LoginActivity;->usernameET:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 159
    .local v1, "username":Ljava/lang/String;
    iget-object v2, p0, Lim/doit/pro/activity/LoginActivity;->passwordET:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 160
    .local v0, "password":Ljava/lang/String;
    new-instance v2, Lim/doit/pro/activity/LoginActivity$Login;

    invoke-direct {v2, p0, v1, v0}, Lim/doit/pro/activity/LoginActivity$Login;-><init>(Lim/doit/pro/activity/LoginActivity;Ljava/lang/String;Ljava/lang/String;)V

    new-array v3, v4, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lim/doit/pro/activity/LoginActivity$Login;->execute([Ljava/lang/Object;)Lim/doit/pro/asynctask/DoitAsyncTask;

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 65
    invoke-super {p0, p1}, Lim/doit/pro/activity/BaseActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 66
    invoke-virtual {p0, p1}, Lim/doit/pro/activity/LoginActivity;->setIntent(Landroid/content/Intent;)V

    .line 67
    invoke-direct {p0}, Lim/doit/pro/activity/LoginActivity;->init()V

    .line 68
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "dialog"    # Landroid/app/Dialog;
    .param p3, "args"    # Landroid/os/Bundle;

    .prologue
    .line 265
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 72
    invoke-super {p0}, Lim/doit/pro/activity/BaseActivity;->onResume()V

    .line 73
    invoke-direct {p0}, Lim/doit/pro/activity/LoginActivity;->setServerViewContent()V

    .line 74
    return-void
.end method

.method public onSigninWithGoogleClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 169
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lim/doit/pro/activity/SigninWithGoogleDialogActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 170
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lim/doit/pro/activity/LoginActivity;->startActivity(Landroid/content/Intent;)V

    .line 171
    return-void
.end method

.method public onSignupClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 174
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lim/doit/pro/activity/SignupActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 175
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lim/doit/pro/activity/LoginActivity;->startActivity(Landroid/content/Intent;)V

    .line 176
    return-void
.end method

.method protected toLogin()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 44
    return-void
.end method
