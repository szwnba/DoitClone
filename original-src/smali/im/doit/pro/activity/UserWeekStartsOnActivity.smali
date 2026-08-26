.class public Lim/doit/pro/activity/UserWeekStartsOnActivity;
.super Lim/doit/pro/activity/DSwipeBackBaseActivity;
.source "UserWeekStartsOnActivity.java"


# instance fields
.field private groupsView:Landroid/widget/RadioGroup;

.field private user:Lim/doit/pro/model/User;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lim/doit/pro/activity/DSwipeBackBaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lim/doit/pro/activity/UserWeekStartsOnActivity;)Lim/doit/pro/model/User;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lim/doit/pro/activity/UserWeekStartsOnActivity;->user:Lim/doit/pro/model/User;

    return-object v0
.end method

.method private init()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lim/doit/pro/activity/UserWeekStartsOnActivity;->initData()V

    .line 38
    invoke-direct {p0}, Lim/doit/pro/activity/UserWeekStartsOnActivity;->initView()V

    .line 39
    invoke-direct {p0}, Lim/doit/pro/activity/UserWeekStartsOnActivity;->initViewContent()V

    .line 40
    invoke-direct {p0}, Lim/doit/pro/activity/UserWeekStartsOnActivity;->initListener()V

    .line 41
    return-void
.end method

.method private initActionBar()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 53
    invoke-virtual {p0}, Lim/doit/pro/activity/UserWeekStartsOnActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 54
    .local v0, "actionBar":Landroid/app/ActionBar;
    const v1, 0x7f0c0132

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    .line 55
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 56
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 57
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 58
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayUseLogoEnabled(Z)V

    .line 59
    return-void
.end method

.method private initData()V
    .locals 1

    .prologue
    .line 44
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->user()Lim/doit/pro/model/User;

    move-result-object v0

    iput-object v0, p0, Lim/doit/pro/activity/UserWeekStartsOnActivity;->user:Lim/doit/pro/model/User;

    .line 45
    return-void
.end method

.method private initListener()V
    .locals 2

    .prologue
    .line 73
    iget-object v0, p0, Lim/doit/pro/activity/UserWeekStartsOnActivity;->groupsView:Landroid/widget/RadioGroup;

    new-instance v1, Lim/doit/pro/activity/UserWeekStartsOnActivity$1;

    invoke-direct {v1, p0}, Lim/doit/pro/activity/UserWeekStartsOnActivity$1;-><init>(Lim/doit/pro/activity/UserWeekStartsOnActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 83
    return-void
.end method

.method private initView()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Lim/doit/pro/activity/UserWeekStartsOnActivity;->initActionBar()V

    .line 49
    const v0, 0x7f0b00fd

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/UserWeekStartsOnActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lim/doit/pro/activity/UserWeekStartsOnActivity;->groupsView:Landroid/widget/RadioGroup;

    .line 50
    return-void
.end method

.method private initViewContent()V
    .locals 5

    .prologue
    .line 62
    iget-object v4, p0, Lim/doit/pro/activity/UserWeekStartsOnActivity;->user:Lim/doit/pro/model/User;

    invoke-virtual {v4}, Lim/doit/pro/model/User;->getWeekStart()Ljava/lang/String;

    move-result-object v3

    .line 63
    .local v3, "weekStart":Ljava/lang/String;
    iget-object v4, p0, Lim/doit/pro/activity/UserWeekStartsOnActivity;->groupsView:Landroid/widget/RadioGroup;

    invoke-virtual {v4}, Landroid/widget/RadioGroup;->getChildCount()I

    move-result v0

    .line 64
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v0, :cond_0

    .line 70
    return-void

    .line 65
    :cond_0
    iget-object v4, p0, Lim/doit/pro/activity/UserWeekStartsOnActivity;->groupsView:Landroid/widget/RadioGroup;

    invoke-virtual {v4, v1}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    .line 66
    .local v2, "radioBtn":Landroid/widget/RadioButton;
    sget-object v4, Lim/doit/pro/activity/utils/UserUIHelper;->WeekStartsOn:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v2, v4}, Landroid/widget/RadioButton;->setTag(Ljava/lang/Object;)V

    .line 67
    sget-object v4, Lim/doit/pro/activity/utils/UserUIHelper;->WeekStartsOnForView:[I

    aget v4, v4, v1

    invoke-virtual {v2, v4}, Landroid/widget/RadioButton;->setText(I)V

    .line 68
    sget-object v4, Lim/doit/pro/activity/utils/UserUIHelper;->WeekStartsOn:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 64
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 31
    invoke-super {p0, p1}, Lim/doit/pro/activity/DSwipeBackBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    const v0, 0x7f03004b

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/UserWeekStartsOnActivity;->setContentView(I)V

    .line 33
    invoke-direct {p0}, Lim/doit/pro/activity/UserWeekStartsOnActivity;->init()V

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
    invoke-virtual {p0}, Lim/doit/pro/activity/UserWeekStartsOnActivity;->finish()V

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
