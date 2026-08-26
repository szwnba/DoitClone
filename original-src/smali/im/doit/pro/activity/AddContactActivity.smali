.class public Lim/doit/pro/activity/AddContactActivity;
.super Lim/doit/pro/activity/DSwipeBackBaseActivity;
.source "AddContactActivity.java"


# instance fields
.field private addBtn:Landroid/widget/Button;

.field private cancenBtn:Landroid/widget/Button;

.field private mEmailET:Landroid/widget/EditText;

.field private onAddClick:Landroid/view/View$OnClickListener;

.field private onCancelClick:Landroid/view/View$OnClickListener;

.field private onEmailChange:Landroid/text/TextWatcher;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Lim/doit/pro/activity/DSwipeBackBaseActivity;-><init>()V

    .line 76
    new-instance v0, Lim/doit/pro/activity/AddContactActivity$1;

    invoke-direct {v0, p0}, Lim/doit/pro/activity/AddContactActivity$1;-><init>(Lim/doit/pro/activity/AddContactActivity;)V

    iput-object v0, p0, Lim/doit/pro/activity/AddContactActivity;->onCancelClick:Landroid/view/View$OnClickListener;

    .line 84
    new-instance v0, Lim/doit/pro/activity/AddContactActivity$2;

    invoke-direct {v0, p0}, Lim/doit/pro/activity/AddContactActivity$2;-><init>(Lim/doit/pro/activity/AddContactActivity;)V

    iput-object v0, p0, Lim/doit/pro/activity/AddContactActivity;->onAddClick:Landroid/view/View$OnClickListener;

    .line 114
    new-instance v0, Lim/doit/pro/activity/AddContactActivity$3;

    invoke-direct {v0, p0}, Lim/doit/pro/activity/AddContactActivity$3;-><init>(Lim/doit/pro/activity/AddContactActivity;)V

    iput-object v0, p0, Lim/doit/pro/activity/AddContactActivity;->onEmailChange:Landroid/text/TextWatcher;

    .line 21
    return-void
.end method

.method static synthetic access$0(Lim/doit/pro/activity/AddContactActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lim/doit/pro/activity/AddContactActivity;->mEmailET:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1(Lim/doit/pro/activity/AddContactActivity;)V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Lim/doit/pro/activity/AddContactActivity;->setAddBtnStatus()V

    return-void
.end method

.method private init()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lim/doit/pro/activity/AddContactActivity;->initView()V

    .line 35
    invoke-direct {p0}, Lim/doit/pro/activity/AddContactActivity;->initData()V

    .line 36
    invoke-direct {p0}, Lim/doit/pro/activity/AddContactActivity;->initViewContent()V

    .line 37
    invoke-direct {p0}, Lim/doit/pro/activity/AddContactActivity;->initListener()V

    .line 38
    return-void
.end method

.method private initActionBar()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 48
    invoke-virtual {p0}, Lim/doit/pro/activity/AddContactActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 49
    .local v0, "actionBar":Landroid/app/ActionBar;
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 50
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 51
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 52
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayUseLogoEnabled(Z)V

    .line 53
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 54
    const v1, 0x7f030069

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setCustomView(I)V

    .line 55
    return-void
.end method

.method private initData()V
    .locals 0

    .prologue
    .line 59
    return-void
.end method

.method private initListener()V
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Lim/doit/pro/activity/AddContactActivity;->cancenBtn:Landroid/widget/Button;

    iget-object v1, p0, Lim/doit/pro/activity/AddContactActivity;->onCancelClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    iget-object v0, p0, Lim/doit/pro/activity/AddContactActivity;->addBtn:Landroid/widget/Button;

    iget-object v1, p0, Lim/doit/pro/activity/AddContactActivity;->onAddClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    iget-object v0, p0, Lim/doit/pro/activity/AddContactActivity;->mEmailET:Landroid/widget/EditText;

    iget-object v1, p0, Lim/doit/pro/activity/AddContactActivity;->onEmailChange:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 74
    return-void
.end method

.method private initView()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Lim/doit/pro/activity/AddContactActivity;->initActionBar()V

    .line 42
    const v0, 0x7f0b0092

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/AddContactActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lim/doit/pro/activity/AddContactActivity;->cancenBtn:Landroid/widget/Button;

    .line 43
    const v0, 0x7f0b0105

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/AddContactActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lim/doit/pro/activity/AddContactActivity;->addBtn:Landroid/widget/Button;

    .line 44
    const v0, 0x7f0b0065

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/AddContactActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lim/doit/pro/activity/AddContactActivity;->mEmailET:Landroid/widget/EditText;

    .line 45
    return-void
.end method

.method private initViewContent()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Lim/doit/pro/activity/AddContactActivity;->setAddBtnStatus()V

    .line 63
    return-void
.end method

.method private setAddBtnStatus()V
    .locals 3

    .prologue
    .line 66
    iget-object v1, p0, Lim/doit/pro/activity/AddContactActivity;->mEmailET:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 67
    .local v0, "input":Ljava/lang/String;
    iget-object v1, p0, Lim/doit/pro/activity/AddContactActivity;->addBtn:Landroid/widget/Button;

    invoke-static {v0}, Lim/doit/pro/utils/StringUtils;->isEmail(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 68
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 28
    invoke-super {p0, p1}, Lim/doit/pro/activity/DSwipeBackBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    const v0, 0x7f03001a

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/AddContactActivity;->setContentView(I)V

    .line 30
    invoke-direct {p0}, Lim/doit/pro/activity/AddContactActivity;->init()V

    .line 31
    return-void
.end method
