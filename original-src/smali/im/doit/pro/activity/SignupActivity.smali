.class public Lim/doit/pro/activity/SignupActivity;
.super Lim/doit/pro/activity/BaseActivity;
.source "SignupActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lim/doit/pro/activity/SignupActivity$Register;,
        Lim/doit/pro/activity/SignupActivity$UsernameTextWatch;
    }
.end annotation


# instance fields
.field private backBtn:Landroid/widget/Button;

.field private chooseServerTV:Landroid/widget/TextView;

.field private emailET:Landroid/widget/EditText;

.field private passwordET:Landroid/widget/EditText;

.field private scrollView:Landroid/widget/ScrollView;

.field private signupBtn:Landroid/widget/Button;

.field private usernameET:Landroid/widget/EditText;

.field private watcher:Landroid/text/TextWatcher;

.field private wrapLayout:Lim/doit/pro/ui/component/KeyboardDetectorRelativeLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Lim/doit/pro/activity/BaseActivity;-><init>()V

    .line 126
    new-instance v0, Lim/doit/pro/activity/SignupActivity$1;

    invoke-direct {v0, p0}, Lim/doit/pro/activity/SignupActivity$1;-><init>(Lim/doit/pro/activity/SignupActivity;)V

    iput-object v0, p0, Lim/doit/pro/activity/SignupActivity;->watcher:Landroid/text/TextWatcher;

    .line 32
    return-void
.end method

.method static synthetic access$0(Lim/doit/pro/activity/SignupActivity;)V
    .locals 0

    .prologue
    .line 184
    invoke-direct {p0}, Lim/doit/pro/activity/SignupActivity;->checkSigninBtnEnabled()V

    return-void
.end method

.method static synthetic access$1(Lim/doit/pro/activity/SignupActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lim/doit/pro/activity/SignupActivity;->usernameET:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$2(Lim/doit/pro/activity/SignupActivity;)V
    .locals 0

    .prologue
    .line 194
    invoke-direct {p0}, Lim/doit/pro/activity/SignupActivity;->setServerViewContent()V

    return-void
.end method

.method static synthetic access$3(Lim/doit/pro/activity/SignupActivity;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lim/doit/pro/activity/SignupActivity;->signupBtn:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$4(Lim/doit/pro/activity/SignupActivity;)Landroid/widget/ScrollView;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lim/doit/pro/activity/SignupActivity;->scrollView:Landroid/widget/ScrollView;

    return-object v0
.end method

.method static synthetic access$5(Lim/doit/pro/activity/SignupActivity;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lim/doit/pro/activity/SignupActivity;->backBtn:Landroid/widget/Button;

    return-object v0
.end method

.method private checkSigninBtnEnabled()V
    .locals 2

    .prologue
    .line 185
    iget-object v0, p0, Lim/doit/pro/activity/SignupActivity;->usernameET:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lim/doit/pro/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 186
    iget-object v0, p0, Lim/doit/pro/activity/SignupActivity;->emailET:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lim/doit/pro/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 187
    iget-object v0, p0, Lim/doit/pro/activity/SignupActivity;->passwordET:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x6

    if-ge v0, v1, :cond_1

    .line 188
    :cond_0
    iget-object v0, p0, Lim/doit/pro/activity/SignupActivity;->signupBtn:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 192
    :goto_0
    return-void

    .line 190
    :cond_1
    iget-object v0, p0, Lim/doit/pro/activity/SignupActivity;->signupBtn:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 90
    const v0, 0x7f0b0063

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/SignupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lim/doit/pro/activity/SignupActivity;->scrollView:Landroid/widget/ScrollView;

    .line 91
    const v0, 0x7f0b0093

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/SignupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lim/doit/pro/ui/component/KeyboardDetectorRelativeLayout;

    iput-object v0, p0, Lim/doit/pro/activity/SignupActivity;->wrapLayout:Lim/doit/pro/ui/component/KeyboardDetectorRelativeLayout;

    .line 92
    iget-object v0, p0, Lim/doit/pro/activity/SignupActivity;->wrapLayout:Lim/doit/pro/ui/component/KeyboardDetectorRelativeLayout;

    new-instance v1, Lim/doit/pro/activity/SignupActivity$2;

    invoke-direct {v1, p0}, Lim/doit/pro/activity/SignupActivity$2;-><init>(Lim/doit/pro/activity/SignupActivity;)V

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/KeyboardDetectorRelativeLayout;->addKeyboardStateChangedListener(Lim/doit/pro/ui/component/KeyboardDetectorRelativeLayout$IKeyboardChanged;)V

    .line 110
    const v0, 0x7f0b00ca

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/SignupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lim/doit/pro/activity/SignupActivity;->backBtn:Landroid/widget/Button;

    .line 111
    const v0, 0x7f0b005c

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/SignupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lim/doit/pro/activity/SignupActivity;->usernameET:Landroid/widget/EditText;

    .line 112
    const v0, 0x7f0b005d

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/SignupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lim/doit/pro/activity/SignupActivity;->emailET:Landroid/widget/EditText;

    .line 113
    const v0, 0x7f0b0095

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/SignupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lim/doit/pro/activity/SignupActivity;->passwordET:Landroid/widget/EditText;

    .line 114
    const v0, 0x7f0b0096

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/SignupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lim/doit/pro/activity/SignupActivity;->signupBtn:Landroid/widget/Button;

    .line 115
    const v0, 0x7f0b0097

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/SignupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lim/doit/pro/activity/SignupActivity;->chooseServerTV:Landroid/widget/TextView;

    .line 116
    return-void
.end method

.method private initViewContent()V
    .locals 3

    .prologue
    .line 119
    invoke-direct {p0}, Lim/doit/pro/activity/SignupActivity;->setServerViewContent()V

    .line 120
    invoke-direct {p0}, Lim/doit/pro/activity/SignupActivity;->checkSigninBtnEnabled()V

    .line 121
    iget-object v0, p0, Lim/doit/pro/activity/SignupActivity;->usernameET:Landroid/widget/EditText;

    new-instance v1, Lim/doit/pro/activity/SignupActivity$UsernameTextWatch;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lim/doit/pro/activity/SignupActivity$UsernameTextWatch;-><init>(Lim/doit/pro/activity/SignupActivity;Lim/doit/pro/activity/SignupActivity$UsernameTextWatch;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 122
    iget-object v0, p0, Lim/doit/pro/activity/SignupActivity;->emailET:Landroid/widget/EditText;

    iget-object v1, p0, Lim/doit/pro/activity/SignupActivity;->watcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 123
    iget-object v0, p0, Lim/doit/pro/activity/SignupActivity;->passwordET:Landroid/widget/EditText;

    iget-object v1, p0, Lim/doit/pro/activity/SignupActivity;->watcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 124
    return-void
.end method

.method private setServerViewContent()V
    .locals 3

    .prologue
    .line 195
    invoke-static {}, Lim/doit/pro/utils/PrefUtils;->getServer()Ljava/lang/String;

    move-result-object v0

    .line 196
    .local v0, "server":Ljava/lang/String;
    const-string v1, "japan"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 197
    iget-object v1, p0, Lim/doit/pro/activity/SignupActivity;->chooseServerTV:Landroid/widget/TextView;

    const v2, 0x7f0c007c

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 201
    :cond_0
    :goto_0
    return-void

    .line 198
    :cond_1
    const-string v1, "china"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 199
    iget-object v1, p0, Lim/doit/pro/activity/SignupActivity;->chooseServerTV:Landroid/widget/TextView;

    const v2, 0x7f0c007d

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method


# virtual methods
.method public onBackClick(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 44
    invoke-virtual {p0}, Lim/doit/pro/activity/SignupActivity;->finish()V

    .line 45
    return-void
.end method

.method public onChooseServerClick(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 60
    invoke-static {}, Lim/doit/pro/utils/PrefUtils;->changeServer()V

    .line 61
    invoke-direct {p0}, Lim/doit/pro/activity/SignupActivity;->setServerViewContent()V

    .line 62
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 83
    invoke-super {p0, p1}, Lim/doit/pro/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 84
    const v0, 0x7f03003f

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/SignupActivity;->setContentView(I)V

    .line 85
    invoke-direct {p0}, Lim/doit/pro/activity/SignupActivity;->initView()V

    .line 86
    invoke-direct {p0}, Lim/doit/pro/activity/SignupActivity;->initViewContent()V

    .line 87
    return-void
.end method

.method public onPrivacyPolicyClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 71
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {}, Lim/doit/pro/api/utils/D;->getWebSiteUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/privacy"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 72
    .local v1, "uri":Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 73
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lim/doit/pro/activity/SignupActivity;->startActivity(Landroid/content/Intent;)V

    .line 74
    return-void
.end method

.method public onSignupClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    .line 48
    invoke-static {}, Lim/doit/pro/utils/ToastUtils;->showNetworkNotReady()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 57
    :goto_0
    return-void

    .line 51
    :cond_0
    iget-object v3, p0, Lim/doit/pro/activity/SignupActivity;->signupBtn:Landroid/widget/Button;

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 52
    iget-object v3, p0, Lim/doit/pro/activity/SignupActivity;->signupBtn:Landroid/widget/Button;

    const v4, 0x7f0c0071

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(I)V

    .line 53
    iget-object v3, p0, Lim/doit/pro/activity/SignupActivity;->usernameET:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 54
    .local v2, "username":Ljava/lang/String;
    iget-object v3, p0, Lim/doit/pro/activity/SignupActivity;->emailET:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 55
    .local v0, "email":Ljava/lang/String;
    iget-object v3, p0, Lim/doit/pro/activity/SignupActivity;->passwordET:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 56
    .local v1, "password":Ljava/lang/String;
    new-instance v3, Lim/doit/pro/activity/SignupActivity$Register;

    invoke-direct {v3, p0, v2, v0, v1}, Lim/doit/pro/activity/SignupActivity$Register;-><init>(Lim/doit/pro/activity/SignupActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-array v4, v5, [Ljava/lang/Void;

    invoke-virtual {v3, v4}, Lim/doit/pro/activity/SignupActivity$Register;->execute([Ljava/lang/Object;)Lim/doit/pro/asynctask/DoitAsyncTask;

    goto :goto_0
.end method

.method public onTermsOfServiceClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 65
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {}, Lim/doit/pro/api/utils/D;->getWebSiteUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/terms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 66
    .local v1, "uri":Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 67
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lim/doit/pro/activity/SignupActivity;->startActivity(Landroid/content/Intent;)V

    .line 68
    return-void
.end method

.method protected toLogin()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 79
    return-void
.end method
