.class public Lim/doit/pro/activity/UserDateAndTimeFormatActivity;
.super Lim/doit/pro/activity/DSwipeBackBaseActivity;
.source "UserDateAndTimeFormatActivity.java"


# instance fields
.field private dateFormatView:Lim/doit/pro/ui/component/LabelArrowButton;

.field private isCreateView:Z

.field private onDateFormatClick:Lim/doit/pro/activity/listener/OnLayoutClickListener;

.field private onTimeFormatClick:Lim/doit/pro/activity/listener/OnLayoutClickListener;

.field private onWeekStartsOnClick:Lim/doit/pro/activity/listener/OnLayoutClickListener;

.field private onWorkingHoursClick:Lim/doit/pro/activity/listener/OnLayoutClickListener;

.field private timeFormatView:Lim/doit/pro/ui/component/LabelArrowButton;

.field private user:Lim/doit/pro/model/User;

.field private weekStartsOnView:Lim/doit/pro/ui/component/LabelArrowButton;

.field private workingHoursView:Lim/doit/pro/ui/component/LabelArrowButton;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Lim/doit/pro/activity/DSwipeBackBaseActivity;-><init>()V

    .line 106
    new-instance v0, Lim/doit/pro/activity/UserDateAndTimeFormatActivity$1;

    invoke-direct {v0, p0}, Lim/doit/pro/activity/UserDateAndTimeFormatActivity$1;-><init>(Lim/doit/pro/activity/UserDateAndTimeFormatActivity;)V

    iput-object v0, p0, Lim/doit/pro/activity/UserDateAndTimeFormatActivity;->onDateFormatClick:Lim/doit/pro/activity/listener/OnLayoutClickListener;

    .line 115
    new-instance v0, Lim/doit/pro/activity/UserDateAndTimeFormatActivity$2;

    invoke-direct {v0, p0}, Lim/doit/pro/activity/UserDateAndTimeFormatActivity$2;-><init>(Lim/doit/pro/activity/UserDateAndTimeFormatActivity;)V

    iput-object v0, p0, Lim/doit/pro/activity/UserDateAndTimeFormatActivity;->onTimeFormatClick:Lim/doit/pro/activity/listener/OnLayoutClickListener;

    .line 124
    new-instance v0, Lim/doit/pro/activity/UserDateAndTimeFormatActivity$3;

    invoke-direct {v0, p0}, Lim/doit/pro/activity/UserDateAndTimeFormatActivity$3;-><init>(Lim/doit/pro/activity/UserDateAndTimeFormatActivity;)V

    iput-object v0, p0, Lim/doit/pro/activity/UserDateAndTimeFormatActivity;->onWeekStartsOnClick:Lim/doit/pro/activity/listener/OnLayoutClickListener;

    .line 133
    new-instance v0, Lim/doit/pro/activity/UserDateAndTimeFormatActivity$4;

    invoke-direct {v0, p0}, Lim/doit/pro/activity/UserDateAndTimeFormatActivity$4;-><init>(Lim/doit/pro/activity/UserDateAndTimeFormatActivity;)V

    iput-object v0, p0, Lim/doit/pro/activity/UserDateAndTimeFormatActivity;->onWorkingHoursClick:Lim/doit/pro/activity/listener/OnLayoutClickListener;

    .line 19
    return-void
.end method

.method static synthetic access$0(Lim/doit/pro/activity/UserDateAndTimeFormatActivity;)V
    .locals 0

    .prologue
    .line 93
    invoke-direct {p0}, Lim/doit/pro/activity/UserDateAndTimeFormatActivity;->setWorkingHoursViewContent()V

    return-void
.end method

.method private init()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Lim/doit/pro/activity/UserDateAndTimeFormatActivity;->initData()V

    .line 58
    invoke-direct {p0}, Lim/doit/pro/activity/UserDateAndTimeFormatActivity;->initView()V

    .line 59
    invoke-direct {p0}, Lim/doit/pro/activity/UserDateAndTimeFormatActivity;->initViewContent()V

    .line 60
    invoke-direct {p0}, Lim/doit/pro/activity/UserDateAndTimeFormatActivity;->initListener()V

    .line 61
    return-void
.end method

.method private initActionBar()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 76
    invoke-virtual {p0}, Lim/doit/pro/activity/UserDateAndTimeFormatActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 77
    .local v0, "actionBar":Landroid/app/ActionBar;
    const v1, 0x7f0c0111

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    .line 78
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 79
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 80
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 81
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayUseLogoEnabled(Z)V

    .line 82
    return-void
.end method

.method private initData()V
    .locals 1

    .prologue
    .line 64
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->user()Lim/doit/pro/model/User;

    move-result-object v0

    iput-object v0, p0, Lim/doit/pro/activity/UserDateAndTimeFormatActivity;->user:Lim/doit/pro/model/User;

    .line 65
    return-void
.end method

.method private initListener()V
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Lim/doit/pro/activity/UserDateAndTimeFormatActivity;->dateFormatView:Lim/doit/pro/ui/component/LabelArrowButton;

    iget-object v1, p0, Lim/doit/pro/activity/UserDateAndTimeFormatActivity;->onDateFormatClick:Lim/doit/pro/activity/listener/OnLayoutClickListener;

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/LabelArrowButton;->setOnLayoutClickListener(Lim/doit/pro/activity/listener/OnLayoutClickListener;)V

    .line 101
    iget-object v0, p0, Lim/doit/pro/activity/UserDateAndTimeFormatActivity;->timeFormatView:Lim/doit/pro/ui/component/LabelArrowButton;

    iget-object v1, p0, Lim/doit/pro/activity/UserDateAndTimeFormatActivity;->onTimeFormatClick:Lim/doit/pro/activity/listener/OnLayoutClickListener;

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/LabelArrowButton;->setOnLayoutClickListener(Lim/doit/pro/activity/listener/OnLayoutClickListener;)V

    .line 102
    iget-object v0, p0, Lim/doit/pro/activity/UserDateAndTimeFormatActivity;->weekStartsOnView:Lim/doit/pro/ui/component/LabelArrowButton;

    iget-object v1, p0, Lim/doit/pro/activity/UserDateAndTimeFormatActivity;->onWeekStartsOnClick:Lim/doit/pro/activity/listener/OnLayoutClickListener;

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/LabelArrowButton;->setOnLayoutClickListener(Lim/doit/pro/activity/listener/OnLayoutClickListener;)V

    .line 103
    iget-object v0, p0, Lim/doit/pro/activity/UserDateAndTimeFormatActivity;->workingHoursView:Lim/doit/pro/ui/component/LabelArrowButton;

    iget-object v1, p0, Lim/doit/pro/activity/UserDateAndTimeFormatActivity;->onWorkingHoursClick:Lim/doit/pro/activity/listener/OnLayoutClickListener;

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/LabelArrowButton;->setOnLayoutClickListener(Lim/doit/pro/activity/listener/OnLayoutClickListener;)V

    .line 104
    return-void
.end method

.method private initView()V
    .locals 1

    .prologue
    .line 68
    invoke-direct {p0}, Lim/doit/pro/activity/UserDateAndTimeFormatActivity;->initActionBar()V

    .line 69
    const v0, 0x7f0b00f1

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/UserDateAndTimeFormatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lim/doit/pro/ui/component/LabelArrowButton;

    iput-object v0, p0, Lim/doit/pro/activity/UserDateAndTimeFormatActivity;->dateFormatView:Lim/doit/pro/ui/component/LabelArrowButton;

    .line 70
    const v0, 0x7f0b00f2

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/UserDateAndTimeFormatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lim/doit/pro/ui/component/LabelArrowButton;

    iput-object v0, p0, Lim/doit/pro/activity/UserDateAndTimeFormatActivity;->timeFormatView:Lim/doit/pro/ui/component/LabelArrowButton;

    .line 71
    const v0, 0x7f0b00f3

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/UserDateAndTimeFormatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lim/doit/pro/ui/component/LabelArrowButton;

    iput-object v0, p0, Lim/doit/pro/activity/UserDateAndTimeFormatActivity;->weekStartsOnView:Lim/doit/pro/ui/component/LabelArrowButton;

    .line 72
    const v0, 0x7f0b00f4

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/UserDateAndTimeFormatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lim/doit/pro/ui/component/LabelArrowButton;

    iput-object v0, p0, Lim/doit/pro/activity/UserDateAndTimeFormatActivity;->workingHoursView:Lim/doit/pro/ui/component/LabelArrowButton;

    .line 73
    return-void
.end method

.method private initViewContent()V
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Lim/doit/pro/activity/UserDateAndTimeFormatActivity;->dateFormatView:Lim/doit/pro/ui/component/LabelArrowButton;

    iget-object v1, p0, Lim/doit/pro/activity/UserDateAndTimeFormatActivity;->user:Lim/doit/pro/model/User;

    invoke-virtual {v1}, Lim/doit/pro/model/User;->getDateFormat()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lim/doit/pro/activity/utils/UserUIHelper;->getDateFormatForView(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/LabelArrowButton;->setText(Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lim/doit/pro/activity/UserDateAndTimeFormatActivity;->timeFormatView:Lim/doit/pro/ui/component/LabelArrowButton;

    iget-object v1, p0, Lim/doit/pro/activity/UserDateAndTimeFormatActivity;->user:Lim/doit/pro/model/User;

    invoke-virtual {v1}, Lim/doit/pro/model/User;->getTimeFormat()I

    move-result v1

    invoke-static {v1}, Lim/doit/pro/activity/utils/UserUIHelper;->getTimeFormatForView(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/LabelArrowButton;->setText(Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lim/doit/pro/activity/UserDateAndTimeFormatActivity;->weekStartsOnView:Lim/doit/pro/ui/component/LabelArrowButton;

    iget-object v1, p0, Lim/doit/pro/activity/UserDateAndTimeFormatActivity;->user:Lim/doit/pro/model/User;

    invoke-virtual {v1}, Lim/doit/pro/model/User;->getWeekStart()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lim/doit/pro/activity/utils/UserUIHelper;->getWeekStartsOnForView(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/LabelArrowButton;->setText(Ljava/lang/String;)V

    .line 88
    invoke-direct {p0}, Lim/doit/pro/activity/UserDateAndTimeFormatActivity;->setWorkingHoursViewContent()V

    .line 89
    const v0, 0x7f0b0054

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/UserDateAndTimeFormatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    invoke-static {v0}, Lim/doit/pro/activity/utils/ViewUtils;->setChildBackground(Landroid/view/ViewGroup;)V

    .line 90
    const v0, 0x7f0b005b

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/UserDateAndTimeFormatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    invoke-static {v0}, Lim/doit/pro/activity/utils/ViewUtils;->setChildBackground(Landroid/view/ViewGroup;)V

    .line 91
    return-void
.end method

.method private setWorkingHoursViewContent()V
    .locals 3

    .prologue
    .line 94
    iget-object v0, p0, Lim/doit/pro/activity/UserDateAndTimeFormatActivity;->user:Lim/doit/pro/model/User;

    invoke-virtual {v0}, Lim/doit/pro/model/User;->getWorkingStartTime()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lim/doit/pro/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lim/doit/pro/activity/UserDateAndTimeFormatActivity;->workingHoursView:Lim/doit/pro/ui/component/LabelArrowButton;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lim/doit/pro/activity/UserDateAndTimeFormatActivity;->user:Lim/doit/pro/model/User;

    invoke-virtual {v2}, Lim/doit/pro/model/User;->getWorkingStartTime()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lim/doit/pro/activity/UserDateAndTimeFormatActivity;->user:Lim/doit/pro/model/User;

    invoke-virtual {v2}, Lim/doit/pro/model/User;->getWorkingEndTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/LabelArrowButton;->setText(Ljava/lang/String;)V

    .line 97
    :cond_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 40
    invoke-super {p0, p1}, Lim/doit/pro/activity/DSwipeBackBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Lim/doit/pro/activity/UserDateAndTimeFormatActivity;->isCreateView:Z

    .line 42
    const v0, 0x7f030046

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/UserDateAndTimeFormatActivity;->setContentView(I)V

    .line 43
    invoke-direct {p0}, Lim/doit/pro/activity/UserDateAndTimeFormatActivity;->init()V

    .line 44
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 29
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 34
    invoke-super {p0, p1}, Lim/doit/pro/activity/DSwipeBackBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 31
    :pswitch_0
    invoke-virtual {p0}, Lim/doit/pro/activity/UserDateAndTimeFormatActivity;->finish()V

    .line 32
    const/4 v0, 0x1

    goto :goto_0

    .line 29
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 48
    invoke-super {p0}, Lim/doit/pro/activity/DSwipeBackBaseActivity;->onResume()V

    .line 49
    iget-boolean v0, p0, Lim/doit/pro/activity/UserDateAndTimeFormatActivity;->isCreateView:Z

    if-nez v0, :cond_0

    .line 50
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->user()Lim/doit/pro/model/User;

    move-result-object v0

    iput-object v0, p0, Lim/doit/pro/activity/UserDateAndTimeFormatActivity;->user:Lim/doit/pro/model/User;

    .line 51
    invoke-direct {p0}, Lim/doit/pro/activity/UserDateAndTimeFormatActivity;->initViewContent()V

    .line 53
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lim/doit/pro/activity/UserDateAndTimeFormatActivity;->isCreateView:Z

    .line 54
    return-void
.end method
