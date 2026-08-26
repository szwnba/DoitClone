.class public Lim/doit/pro/activity/UserDateFormatActivity;
.super Lim/doit/pro/activity/DSwipeBackBaseActivity;
.source "UserDateFormatActivity.java"


# instance fields
.field private dateFormatRadioGroup:Landroid/widget/RadioGroup;

.field private user:Lim/doit/pro/model/User;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lim/doit/pro/activity/DSwipeBackBaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lim/doit/pro/activity/UserDateFormatActivity;)Lim/doit/pro/model/User;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lim/doit/pro/activity/UserDateFormatActivity;->user:Lim/doit/pro/model/User;

    return-object v0
.end method

.method private init()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lim/doit/pro/activity/UserDateFormatActivity;->initData()V

    .line 37
    invoke-direct {p0}, Lim/doit/pro/activity/UserDateFormatActivity;->initView()V

    .line 38
    invoke-direct {p0}, Lim/doit/pro/activity/UserDateFormatActivity;->initViewContent()V

    .line 39
    invoke-direct {p0}, Lim/doit/pro/activity/UserDateFormatActivity;->initListener()V

    .line 40
    return-void
.end method

.method private initActionBar()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 52
    invoke-virtual {p0}, Lim/doit/pro/activity/UserDateFormatActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 53
    .local v0, "actionBar":Landroid/app/ActionBar;
    const v1, 0x7f0c012e

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    .line 54
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 55
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 56
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 57
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayUseLogoEnabled(Z)V

    .line 58
    return-void
.end method

.method private initData()V
    .locals 1

    .prologue
    .line 43
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->user()Lim/doit/pro/model/User;

    move-result-object v0

    iput-object v0, p0, Lim/doit/pro/activity/UserDateFormatActivity;->user:Lim/doit/pro/model/User;

    .line 44
    return-void
.end method

.method private initListener()V
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lim/doit/pro/activity/UserDateFormatActivity;->dateFormatRadioGroup:Landroid/widget/RadioGroup;

    new-instance v1, Lim/doit/pro/activity/UserDateFormatActivity$1;

    invoke-direct {v1, p0}, Lim/doit/pro/activity/UserDateFormatActivity$1;-><init>(Lim/doit/pro/activity/UserDateFormatActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 82
    return-void
.end method

.method private initView()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Lim/doit/pro/activity/UserDateFormatActivity;->initActionBar()V

    .line 48
    const v0, 0x7f0b00f5

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/UserDateFormatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lim/doit/pro/activity/UserDateFormatActivity;->dateFormatRadioGroup:Landroid/widget/RadioGroup;

    .line 49
    return-void
.end method

.method private initViewContent()V
    .locals 5

    .prologue
    .line 61
    iget-object v4, p0, Lim/doit/pro/activity/UserDateFormatActivity;->user:Lim/doit/pro/model/User;

    invoke-virtual {v4}, Lim/doit/pro/model/User;->getDateFormat()Ljava/lang/String;

    move-result-object v2

    .line 62
    .local v2, "dateFormat":Ljava/lang/String;
    iget-object v4, p0, Lim/doit/pro/activity/UserDateFormatActivity;->dateFormatRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v4}, Landroid/widget/RadioGroup;->getChildCount()I

    move-result v1

    .line 63
    .local v1, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-lt v3, v1, :cond_0

    .line 69
    return-void

    .line 64
    :cond_0
    iget-object v4, p0, Lim/doit/pro/activity/UserDateFormatActivity;->dateFormatRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v4, v3}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    .line 65
    .local v0, "btn":Landroid/widget/RadioButton;
    sget-object v4, Lim/doit/pro/activity/utils/UserUIHelper;->DateFormat:[Ljava/lang/String;

    aget-object v4, v4, v3

    invoke-virtual {v0, v4}, Landroid/widget/RadioButton;->setTag(Ljava/lang/Object;)V

    .line 66
    sget-object v4, Lim/doit/pro/activity/utils/UserUIHelper;->DateFormatForView:[Ljava/lang/String;

    aget-object v4, v4, v3

    invoke-virtual {v0, v4}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 67
    sget-object v4, Lim/doit/pro/activity/utils/UserUIHelper;->DateFormat:[Ljava/lang/String;

    aget-object v4, v4, v3

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 63
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 30
    invoke-super {p0, p1}, Lim/doit/pro/activity/DSwipeBackBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    const v0, 0x7f030047

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/UserDateFormatActivity;->setContentView(I)V

    .line 32
    invoke-direct {p0}, Lim/doit/pro/activity/UserDateFormatActivity;->init()V

    .line 33
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 19
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 24
    invoke-super {p0, p1}, Lim/doit/pro/activity/DSwipeBackBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 21
    :pswitch_0
    invoke-virtual {p0}, Lim/doit/pro/activity/UserDateFormatActivity;->finish()V

    .line 22
    const/4 v0, 0x1

    goto :goto_0

    .line 19
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
