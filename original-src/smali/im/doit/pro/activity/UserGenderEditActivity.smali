.class public Lim/doit/pro/activity/UserGenderEditActivity;
.super Lim/doit/pro/activity/DSwipeBackBaseActivity;
.source "UserGenderEditActivity.java"


# instance fields
.field private femaleBtn:Landroid/widget/RadioButton;

.field private gender:Ljava/lang/String;

.field private maleBtn:Landroid/widget/RadioButton;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lim/doit/pro/activity/DSwipeBackBaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lim/doit/pro/activity/UserGenderEditActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 17
    iput-object p1, p0, Lim/doit/pro/activity/UserGenderEditActivity;->gender:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$1(Lim/doit/pro/activity/UserGenderEditActivity;)V
    .locals 0

    .prologue
    .line 86
    invoke-direct {p0}, Lim/doit/pro/activity/UserGenderEditActivity;->saveAndFinish()V

    return-void
.end method

.method private init()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lim/doit/pro/activity/UserGenderEditActivity;->initData()V

    .line 39
    invoke-direct {p0}, Lim/doit/pro/activity/UserGenderEditActivity;->initView()V

    .line 40
    invoke-direct {p0}, Lim/doit/pro/activity/UserGenderEditActivity;->initViewContent()V

    .line 41
    invoke-direct {p0}, Lim/doit/pro/activity/UserGenderEditActivity;->initListener()V

    .line 42
    return-void
.end method

.method private initActionBar()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 79
    invoke-virtual {p0}, Lim/doit/pro/activity/UserGenderEditActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 80
    .local v0, "actionBar":Landroid/app/ActionBar;
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 81
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 82
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 83
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayUseLogoEnabled(Z)V

    .line 84
    return-void
.end method

.method private initData()V
    .locals 1

    .prologue
    .line 45
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->user()Lim/doit/pro/model/User;

    move-result-object v0

    invoke-virtual {v0}, Lim/doit/pro/model/User;->getGender()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lim/doit/pro/activity/UserGenderEditActivity;->gender:Ljava/lang/String;

    .line 46
    return-void
.end method

.method private initListener()V
    .locals 2

    .prologue
    .line 60
    iget-object v0, p0, Lim/doit/pro/activity/UserGenderEditActivity;->maleBtn:Landroid/widget/RadioButton;

    new-instance v1, Lim/doit/pro/activity/UserGenderEditActivity$1;

    invoke-direct {v1, p0}, Lim/doit/pro/activity/UserGenderEditActivity$1;-><init>(Lim/doit/pro/activity/UserGenderEditActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    iget-object v0, p0, Lim/doit/pro/activity/UserGenderEditActivity;->femaleBtn:Landroid/widget/RadioButton;

    new-instance v1, Lim/doit/pro/activity/UserGenderEditActivity$2;

    invoke-direct {v1, p0}, Lim/doit/pro/activity/UserGenderEditActivity$2;-><init>(Lim/doit/pro/activity/UserGenderEditActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    return-void
.end method

.method private initView()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Lim/doit/pro/activity/UserGenderEditActivity;->initActionBar()V

    .line 50
    const v0, 0x7f0b00f9

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/UserGenderEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lim/doit/pro/activity/UserGenderEditActivity;->maleBtn:Landroid/widget/RadioButton;

    .line 51
    const v0, 0x7f0b00fa

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/UserGenderEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lim/doit/pro/activity/UserGenderEditActivity;->femaleBtn:Landroid/widget/RadioButton;

    .line 52
    return-void
.end method

.method private initViewContent()V
    .locals 3

    .prologue
    .line 55
    iget-object v0, p0, Lim/doit/pro/activity/UserGenderEditActivity;->maleBtn:Landroid/widget/RadioButton;

    const-string v1, "male"

    iget-object v2, p0, Lim/doit/pro/activity/UserGenderEditActivity;->gender:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 56
    iget-object v0, p0, Lim/doit/pro/activity/UserGenderEditActivity;->femaleBtn:Landroid/widget/RadioButton;

    const-string v1, "female"

    iget-object v2, p0, Lim/doit/pro/activity/UserGenderEditActivity;->gender:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 57
    return-void
.end method

.method private saveAndFinish()V
    .locals 2

    .prologue
    .line 87
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->user()Lim/doit/pro/model/User;

    move-result-object v0

    iget-object v1, p0, Lim/doit/pro/activity/UserGenderEditActivity;->gender:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lim/doit/pro/model/User;->setGender(Ljava/lang/String;)V

    .line 88
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v0

    iget-object v0, v0, Lim/doit/pro/db/Persist;->userDao:Lim/doit/pro/db/persist/UserDao;

    invoke-static {}, Lim/doit/pro/activity/DoitApp;->user()Lim/doit/pro/model/User;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/db/persist/UserDao;->updateAndSaveLog(Lim/doit/pro/model/User;)V

    .line 89
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/UserGenderEditActivity;->setResult(I)V

    .line 90
    invoke-virtual {p0}, Lim/doit/pro/activity/UserGenderEditActivity;->finish()V

    .line 91
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 21
    invoke-super {p0, p1}, Lim/doit/pro/activity/DSwipeBackBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 22
    const v0, 0x7f030048

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/UserGenderEditActivity;->setContentView(I)V

    .line 23
    invoke-direct {p0}, Lim/doit/pro/activity/UserGenderEditActivity;->init()V

    .line 24
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 28
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 33
    invoke-super {p0, p1}, Lim/doit/pro/activity/DSwipeBackBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 30
    :pswitch_0
    invoke-virtual {p0}, Lim/doit/pro/activity/UserGenderEditActivity;->finish()V

    .line 31
    const/4 v0, 0x1

    goto :goto_0

    .line 28
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
