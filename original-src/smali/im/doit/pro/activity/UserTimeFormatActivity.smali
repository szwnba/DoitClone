.class public Lim/doit/pro/activity/UserTimeFormatActivity;
.super Lim/doit/pro/activity/DSwipeBackBaseActivity;
.source "UserTimeFormatActivity.java"


# instance fields
.field private hourTime12Btn:Landroid/widget/RadioButton;

.field private hourTime24Btn:Landroid/widget/RadioButton;

.field private user:Lim/doit/pro/model/User;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lim/doit/pro/activity/DSwipeBackBaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lim/doit/pro/activity/UserTimeFormatActivity;)Lim/doit/pro/model/User;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lim/doit/pro/activity/UserTimeFormatActivity;->user:Lim/doit/pro/model/User;

    return-object v0
.end method

.method private init()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lim/doit/pro/activity/UserTimeFormatActivity;->initData()V

    .line 38
    invoke-direct {p0}, Lim/doit/pro/activity/UserTimeFormatActivity;->initView()V

    .line 39
    invoke-direct {p0}, Lim/doit/pro/activity/UserTimeFormatActivity;->initViewContent()V

    .line 40
    invoke-direct {p0}, Lim/doit/pro/activity/UserTimeFormatActivity;->initListener()V

    .line 41
    return-void
.end method

.method private initActionBar()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 54
    invoke-virtual {p0}, Lim/doit/pro/activity/UserTimeFormatActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 55
    .local v0, "actionBar":Landroid/app/ActionBar;
    const v1, 0x7f0c012f

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    .line 56
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 57
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 58
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 59
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayUseLogoEnabled(Z)V

    .line 60
    return-void
.end method

.method private initData()V
    .locals 1

    .prologue
    .line 44
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->user()Lim/doit/pro/model/User;

    move-result-object v0

    iput-object v0, p0, Lim/doit/pro/activity/UserTimeFormatActivity;->user:Lim/doit/pro/model/User;

    .line 45
    return-void
.end method

.method private initListener()V
    .locals 2

    .prologue
    .line 69
    iget-object v0, p0, Lim/doit/pro/activity/UserTimeFormatActivity;->hourTime24Btn:Landroid/widget/RadioButton;

    new-instance v1, Lim/doit/pro/activity/UserTimeFormatActivity$1;

    invoke-direct {v1, p0}, Lim/doit/pro/activity/UserTimeFormatActivity$1;-><init>(Lim/doit/pro/activity/UserTimeFormatActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    iget-object v0, p0, Lim/doit/pro/activity/UserTimeFormatActivity;->hourTime12Btn:Landroid/widget/RadioButton;

    new-instance v1, Lim/doit/pro/activity/UserTimeFormatActivity$2;

    invoke-direct {v1, p0}, Lim/doit/pro/activity/UserTimeFormatActivity$2;-><init>(Lim/doit/pro/activity/UserTimeFormatActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    return-void
.end method

.method private initView()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Lim/doit/pro/activity/UserTimeFormatActivity;->initActionBar()V

    .line 49
    const v0, 0x7f0b00fb

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/UserTimeFormatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lim/doit/pro/activity/UserTimeFormatActivity;->hourTime24Btn:Landroid/widget/RadioButton;

    .line 50
    const v0, 0x7f0b00fc

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/UserTimeFormatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lim/doit/pro/activity/UserTimeFormatActivity;->hourTime12Btn:Landroid/widget/RadioButton;

    .line 51
    return-void
.end method

.method private initViewContent()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 63
    iget-object v1, p0, Lim/doit/pro/activity/UserTimeFormatActivity;->user:Lim/doit/pro/model/User;

    invoke-virtual {v1}, Lim/doit/pro/model/User;->getTimeFormat()I

    move-result v0

    .line 64
    .local v0, "timeFormat":I
    iget-object v4, p0, Lim/doit/pro/activity/UserTimeFormatActivity;->hourTime24Btn:Landroid/widget/RadioButton;

    const/16 v1, 0x18

    if-ne v1, v0, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 65
    iget-object v1, p0, Lim/doit/pro/activity/UserTimeFormatActivity;->hourTime12Btn:Landroid/widget/RadioButton;

    const/16 v4, 0xc

    if-ne v4, v0, :cond_1

    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 66
    return-void

    :cond_0
    move v1, v3

    .line 64
    goto :goto_0

    :cond_1
    move v2, v3

    .line 65
    goto :goto_1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 31
    invoke-super {p0, p1}, Lim/doit/pro/activity/DSwipeBackBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    const v0, 0x7f03004a

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/UserTimeFormatActivity;->setContentView(I)V

    .line 33
    invoke-direct {p0}, Lim/doit/pro/activity/UserTimeFormatActivity;->init()V

    .line 34
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 20
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 25
    invoke-super {p0, p1}, Lim/doit/pro/activity/DSwipeBackBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 22
    :pswitch_0
    invoke-virtual {p0}, Lim/doit/pro/activity/UserTimeFormatActivity;->finish()V

    .line 23
    const/4 v0, 0x1

    goto :goto_0

    .line 20
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
