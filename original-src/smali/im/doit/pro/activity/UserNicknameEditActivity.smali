.class public Lim/doit/pro/activity/UserNicknameEditActivity;
.super Lim/doit/pro/activity/DSwipeBackBaseActivity;
.source "UserNicknameEditActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lim/doit/pro/activity/UserNicknameEditActivity$OnCancelClick;,
        Lim/doit/pro/activity/UserNicknameEditActivity$OnSaveBtnClick;
    }
.end annotation


# instance fields
.field private cancelBtn:Landroid/widget/Button;

.field private nickname:Ljava/lang/String;

.field private nicknameET:Landroid/widget/EditText;

.field private saveBtn:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lim/doit/pro/activity/DSwipeBackBaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lim/doit/pro/activity/UserNicknameEditActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lim/doit/pro/activity/UserNicknameEditActivity;->nickname:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lim/doit/pro/activity/UserNicknameEditActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lim/doit/pro/activity/UserNicknameEditActivity;->nickname:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$2(Lim/doit/pro/activity/UserNicknameEditActivity;)V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Lim/doit/pro/activity/UserNicknameEditActivity;->setSaveBtnStatus()V

    return-void
.end method

.method private init()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lim/doit/pro/activity/UserNicknameEditActivity;->initData()V

    .line 32
    invoke-direct {p0}, Lim/doit/pro/activity/UserNicknameEditActivity;->initView()V

    .line 33
    invoke-direct {p0}, Lim/doit/pro/activity/UserNicknameEditActivity;->initViewContent()V

    .line 34
    invoke-direct {p0}, Lim/doit/pro/activity/UserNicknameEditActivity;->initListener()V

    .line 35
    invoke-direct {p0}, Lim/doit/pro/activity/UserNicknameEditActivity;->setSaveBtnStatus()V

    .line 36
    return-void
.end method

.method private initActionBar()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 80
    invoke-virtual {p0}, Lim/doit/pro/activity/UserNicknameEditActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 81
    .local v0, "actionBar":Landroid/app/ActionBar;
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 82
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 83
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 84
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayUseLogoEnabled(Z)V

    .line 85
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 86
    const v1, 0x7f03008d

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setCustomView(I)V

    .line 87
    return-void
.end method

.method private initData()V
    .locals 2

    .prologue
    .line 39
    invoke-virtual {p0}, Lim/doit/pro/activity/UserNicknameEditActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "nickname"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lim/doit/pro/activity/UserNicknameEditActivity;->nickname:Ljava/lang/String;

    .line 40
    return-void
.end method

.method private initListener()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 54
    iget-object v0, p0, Lim/doit/pro/activity/UserNicknameEditActivity;->cancelBtn:Landroid/widget/Button;

    new-instance v1, Lim/doit/pro/activity/UserNicknameEditActivity$OnCancelClick;

    invoke-direct {v1, p0, v2}, Lim/doit/pro/activity/UserNicknameEditActivity$OnCancelClick;-><init>(Lim/doit/pro/activity/UserNicknameEditActivity;Lim/doit/pro/activity/UserNicknameEditActivity$OnCancelClick;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    iget-object v0, p0, Lim/doit/pro/activity/UserNicknameEditActivity;->saveBtn:Landroid/widget/Button;

    new-instance v1, Lim/doit/pro/activity/UserNicknameEditActivity$OnSaveBtnClick;

    invoke-direct {v1, p0, v2}, Lim/doit/pro/activity/UserNicknameEditActivity$OnSaveBtnClick;-><init>(Lim/doit/pro/activity/UserNicknameEditActivity;Lim/doit/pro/activity/UserNicknameEditActivity$OnSaveBtnClick;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    iget-object v0, p0, Lim/doit/pro/activity/UserNicknameEditActivity;->nicknameET:Landroid/widget/EditText;

    new-instance v1, Lim/doit/pro/activity/UserNicknameEditActivity$1;

    invoke-direct {v1, p0}, Lim/doit/pro/activity/UserNicknameEditActivity$1;-><init>(Lim/doit/pro/activity/UserNicknameEditActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 72
    return-void
.end method

.method private initView()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Lim/doit/pro/activity/UserNicknameEditActivity;->initActionBar()V

    .line 44
    const v0, 0x7f0b0092

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/UserNicknameEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lim/doit/pro/activity/UserNicknameEditActivity;->cancelBtn:Landroid/widget/Button;

    .line 45
    const v0, 0x7f0b0150

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/UserNicknameEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lim/doit/pro/activity/UserNicknameEditActivity;->saveBtn:Landroid/widget/Button;

    .line 46
    const v0, 0x7f0b0058

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/UserNicknameEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lim/doit/pro/activity/UserNicknameEditActivity;->nicknameET:Landroid/widget/EditText;

    .line 47
    return-void
.end method

.method private initViewContent()V
    .locals 2

    .prologue
    .line 50
    iget-object v0, p0, Lim/doit/pro/activity/UserNicknameEditActivity;->nicknameET:Landroid/widget/EditText;

    iget-object v1, p0, Lim/doit/pro/activity/UserNicknameEditActivity;->nickname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 51
    return-void
.end method

.method private setSaveBtnStatus()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 75
    iget-object v2, p0, Lim/doit/pro/activity/UserNicknameEditActivity;->saveBtn:Landroid/widget/Button;

    iget-object v0, p0, Lim/doit/pro/activity/UserNicknameEditActivity;->nickname:Ljava/lang/String;

    invoke-static {v0}, Lim/doit/pro/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 76
    iget-object v0, p0, Lim/doit/pro/activity/UserNicknameEditActivity;->saveBtn:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 77
    return-void

    .line 75
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 25
    invoke-super {p0, p1}, Lim/doit/pro/activity/DSwipeBackBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 26
    const v0, 0x7f030049

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/UserNicknameEditActivity;->setContentView(I)V

    .line 27
    invoke-direct {p0}, Lim/doit/pro/activity/UserNicknameEditActivity;->init()V

    .line 28
    return-void
.end method
