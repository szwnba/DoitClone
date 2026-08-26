.class public Lim/doit/pro/activity/DailyReviewSettingsActivity;
.super Lim/doit/pro/activity/DSwipeBackBaseActivity;
.source "DailyReviewSettingsActivity.java"


# instance fields
.field private final DEFAULT_HOUR:I

.field private final DEFAULT_MINUTE:I

.field private final DEFAULT_TIME:Ljava/lang/String;

.field private mCurrentPos:I

.field private mFridayRemindView:Lim/doit/pro/ui/component/LabelArrowButton;

.field private mMondayRemindView:Lim/doit/pro/ui/component/LabelArrowButton;

.field private mRemindChanged:Z

.field private mRemindSwitchBtn:Lim/doit/pro/ui/component/LabelSwitchButton;

.field private mRemindTimesWrap:Landroid/widget/RelativeLayout;

.field private mSaturdayRemindView:Lim/doit/pro/ui/component/LabelArrowButton;

.field private mSundayRemindView:Lim/doit/pro/ui/component/LabelArrowButton;

.field private mThursdayRemindView:Lim/doit/pro/ui/component/LabelArrowButton;

.field private mTuesdayRemindView:Lim/doit/pro/ui/component/LabelArrowButton;

.field private mWednesdayRemindView:Lim/doit/pro/ui/component/LabelArrowButton;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 24
    invoke-direct {p0}, Lim/doit/pro/activity/DSwipeBackBaseActivity;-><init>()V

    .line 26
    const/16 v0, 0x15

    iput v0, p0, Lim/doit/pro/activity/DailyReviewSettingsActivity;->DEFAULT_HOUR:I

    .line 27
    iput v1, p0, Lim/doit/pro/activity/DailyReviewSettingsActivity;->DEFAULT_MINUTE:I

    .line 28
    const-string v0, "21:00"

    iput-object v0, p0, Lim/doit/pro/activity/DailyReviewSettingsActivity;->DEFAULT_TIME:Ljava/lang/String;

    .line 36
    iput-boolean v1, p0, Lim/doit/pro/activity/DailyReviewSettingsActivity;->mRemindChanged:Z

    .line 24
    return-void
.end method

.method static synthetic access$0(Lim/doit/pro/activity/DailyReviewSettingsActivity;Z)V
    .locals 0

    .prologue
    .line 36
    iput-boolean p1, p0, Lim/doit/pro/activity/DailyReviewSettingsActivity;->mRemindChanged:Z

    return-void
.end method

.method static synthetic access$1(Lim/doit/pro/activity/DailyReviewSettingsActivity;)V
    .locals 0

    .prologue
    .line 115
    invoke-direct {p0}, Lim/doit/pro/activity/DailyReviewSettingsActivity;->setRemindTimesWrapStatus()V

    return-void
.end method

.method static synthetic access$2(Lim/doit/pro/activity/DailyReviewSettingsActivity;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 190
    invoke-direct {p0, p1}, Lim/doit/pro/activity/DailyReviewSettingsActivity;->showRemindTimePicker(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$3(Lim/doit/pro/activity/DailyReviewSettingsActivity;)I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lim/doit/pro/activity/DailyReviewSettingsActivity;->mCurrentPos:I

    return v0
.end method

.method static synthetic access$4(Lim/doit/pro/activity/DailyReviewSettingsActivity;)V
    .locals 0

    .prologue
    .line 123
    invoke-direct {p0}, Lim/doit/pro/activity/DailyReviewSettingsActivity;->setAllRemindViewContent()V

    return-void
.end method

.method private getRemindTime(I)Ljava/lang/String;
    .locals 2
    .param p1, "pos"    # I

    .prologue
    .line 229
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->user()Lim/doit/pro/model/User;

    move-result-object v1

    invoke-virtual {v1}, Lim/doit/pro/model/User;->getDailyReviewTimes()Ljava/util/ArrayList;

    move-result-object v0

    .line 230
    .local v0, "times":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {v0}, Lim/doit/pro/utils/CollectionUtils;->isEmpty(Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_0

    if-ltz p1, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le p1, v1, :cond_1

    .line 231
    :cond_0
    const/4 v1, 0x0

    .line 233
    :goto_0
    return-object v1

    :cond_1
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_0
.end method

.method private init()V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Lim/doit/pro/activity/DailyReviewSettingsActivity;->initData()V

    .line 72
    invoke-direct {p0}, Lim/doit/pro/activity/DailyReviewSettingsActivity;->initView()V

    .line 73
    invoke-direct {p0}, Lim/doit/pro/activity/DailyReviewSettingsActivity;->initViewContent()V

    .line 74
    invoke-direct {p0}, Lim/doit/pro/activity/DailyReviewSettingsActivity;->initListener()V

    .line 75
    return-void
.end method

.method private initActionBar()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 182
    invoke-virtual {p0}, Lim/doit/pro/activity/DailyReviewSettingsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 183
    .local v0, "actionBar":Landroid/app/ActionBar;
    const v1, 0x7f0c0220

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    .line 184
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 185
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 186
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 187
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayUseLogoEnabled(Z)V

    .line 188
    return-void
.end method

.method private initData()V
    .locals 4

    .prologue
    .line 78
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->user()Lim/doit/pro/model/User;

    move-result-object v3

    invoke-virtual {v3}, Lim/doit/pro/model/User;->getDailyReviewTimes()Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {v3}, Lim/doit/pro/utils/CollectionUtils;->isEmpty(Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 79
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 80
    .local v2, "times":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v3, 0x7

    if-lt v0, v3, :cond_1

    .line 83
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->json()Lim/doit/pro/utils/JsonFormat;

    move-result-object v3

    invoke-virtual {v3, v2}, Lim/doit/pro/utils/JsonFormat;->serialize(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 84
    .local v1, "json":Ljava/lang/String;
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->user()Lim/doit/pro/model/User;

    move-result-object v3

    invoke-virtual {v3, v1}, Lim/doit/pro/model/User;->setDailyReviewTime(Ljava/lang/String;)V

    .line 86
    .end local v0    # "i":I
    .end local v1    # "json":Ljava/lang/String;
    .end local v2    # "times":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    return-void

    .line 81
    .restart local v0    # "i":I
    .restart local v2    # "times":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    const-string v3, "21:00"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private initListener()V
    .locals 2

    .prologue
    .line 148
    iget-object v0, p0, Lim/doit/pro/activity/DailyReviewSettingsActivity;->mRemindSwitchBtn:Lim/doit/pro/ui/component/LabelSwitchButton;

    .line 149
    invoke-direct {p0}, Lim/doit/pro/activity/DailyReviewSettingsActivity;->onRemindSwitchChange()Lim/doit/pro/ui/component/LabelSwitchButton$OnSwitchCheckedChangeListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/LabelSwitchButton;->setOnSwitchCheckedChangeListener(Lim/doit/pro/ui/component/LabelSwitchButton$OnSwitchCheckedChangeListener;)V

    .line 150
    iget-object v0, p0, Lim/doit/pro/activity/DailyReviewSettingsActivity;->mMondayRemindView:Lim/doit/pro/ui/component/LabelArrowButton;

    invoke-direct {p0, v0}, Lim/doit/pro/activity/DailyReviewSettingsActivity;->setSetRemindTimeClickListener(Lim/doit/pro/ui/component/LabelArrowButton;)V

    .line 151
    iget-object v0, p0, Lim/doit/pro/activity/DailyReviewSettingsActivity;->mTuesdayRemindView:Lim/doit/pro/ui/component/LabelArrowButton;

    invoke-direct {p0, v0}, Lim/doit/pro/activity/DailyReviewSettingsActivity;->setSetRemindTimeClickListener(Lim/doit/pro/ui/component/LabelArrowButton;)V

    .line 152
    iget-object v0, p0, Lim/doit/pro/activity/DailyReviewSettingsActivity;->mWednesdayRemindView:Lim/doit/pro/ui/component/LabelArrowButton;

    invoke-direct {p0, v0}, Lim/doit/pro/activity/DailyReviewSettingsActivity;->setSetRemindTimeClickListener(Lim/doit/pro/ui/component/LabelArrowButton;)V

    .line 153
    iget-object v0, p0, Lim/doit/pro/activity/DailyReviewSettingsActivity;->mThursdayRemindView:Lim/doit/pro/ui/component/LabelArrowButton;

    invoke-direct {p0, v0}, Lim/doit/pro/activity/DailyReviewSettingsActivity;->setSetRemindTimeClickListener(Lim/doit/pro/ui/component/LabelArrowButton;)V

    .line 154
    iget-object v0, p0, Lim/doit/pro/activity/DailyReviewSettingsActivity;->mFridayRemindView:Lim/doit/pro/ui/component/LabelArrowButton;

    invoke-direct {p0, v0}, Lim/doit/pro/activity/DailyReviewSettingsActivity;->setSetRemindTimeClickListener(Lim/doit/pro/ui/component/LabelArrowButton;)V

    .line 155
    iget-object v0, p0, Lim/doit/pro/activity/DailyReviewSettingsActivity;->mSaturdayRemindView:Lim/doit/pro/ui/component/LabelArrowButton;

    invoke-direct {p0, v0}, Lim/doit/pro/activity/DailyReviewSettingsActivity;->setSetRemindTimeClickListener(Lim/doit/pro/ui/component/LabelArrowButton;)V

    .line 156
    iget-object v0, p0, Lim/doit/pro/activity/DailyReviewSettingsActivity;->mSundayRemindView:Lim/doit/pro/ui/component/LabelArrowButton;

    invoke-direct {p0, v0}, Lim/doit/pro/activity/DailyReviewSettingsActivity;->setSetRemindTimeClickListener(Lim/doit/pro/ui/component/LabelArrowButton;)V

    .line 157
    return-void
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 89
    invoke-direct {p0}, Lim/doit/pro/activity/DailyReviewSettingsActivity;->initActionBar()V

    .line 90
    const v0, 0x7f0b0075

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/DailyReviewSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lim/doit/pro/ui/component/LabelSwitchButton;

    iput-object v0, p0, Lim/doit/pro/activity/DailyReviewSettingsActivity;->mRemindSwitchBtn:Lim/doit/pro/ui/component/LabelSwitchButton;

    .line 91
    iget-object v0, p0, Lim/doit/pro/activity/DailyReviewSettingsActivity;->mRemindSwitchBtn:Lim/doit/pro/ui/component/LabelSwitchButton;

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/LabelSwitchButton;->setBackgroundResource(I)V

    .line 92
    const v0, 0x7f0b0076

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/DailyReviewSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lim/doit/pro/activity/DailyReviewSettingsActivity;->mRemindTimesWrap:Landroid/widget/RelativeLayout;

    .line 93
    const v0, 0x7f0b0077

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/DailyReviewSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lim/doit/pro/ui/component/LabelArrowButton;

    iput-object v0, p0, Lim/doit/pro/activity/DailyReviewSettingsActivity;->mMondayRemindView:Lim/doit/pro/ui/component/LabelArrowButton;

    .line 94
    const v0, 0x7f0b0078

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/DailyReviewSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lim/doit/pro/ui/component/LabelArrowButton;

    iput-object v0, p0, Lim/doit/pro/activity/DailyReviewSettingsActivity;->mTuesdayRemindView:Lim/doit/pro/ui/component/LabelArrowButton;

    .line 95
    const v0, 0x7f0b0079

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/DailyReviewSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lim/doit/pro/ui/component/LabelArrowButton;

    iput-object v0, p0, Lim/doit/pro/activity/DailyReviewSettingsActivity;->mWednesdayRemindView:Lim/doit/pro/ui/component/LabelArrowButton;

    .line 96
    const v0, 0x7f0b007a

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/DailyReviewSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lim/doit/pro/ui/component/LabelArrowButton;

    iput-object v0, p0, Lim/doit/pro/activity/DailyReviewSettingsActivity;->mThursdayRemindView:Lim/doit/pro/ui/component/LabelArrowButton;

    .line 97
    const v0, 0x7f0b007b

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/DailyReviewSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lim/doit/pro/ui/component/LabelArrowButton;

    iput-object v0, p0, Lim/doit/pro/activity/DailyReviewSettingsActivity;->mFridayRemindView:Lim/doit/pro/ui/component/LabelArrowButton;

    .line 98
    const v0, 0x7f0b007c

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/DailyReviewSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lim/doit/pro/ui/component/LabelArrowButton;

    iput-object v0, p0, Lim/doit/pro/activity/DailyReviewSettingsActivity;->mSaturdayRemindView:Lim/doit/pro/ui/component/LabelArrowButton;

    .line 99
    const v0, 0x7f0b007d

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/DailyReviewSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lim/doit/pro/ui/component/LabelArrowButton;

    iput-object v0, p0, Lim/doit/pro/activity/DailyReviewSettingsActivity;->mSundayRemindView:Lim/doit/pro/ui/component/LabelArrowButton;

    .line 100
    return-void
.end method

.method private initViewContent()V
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lim/doit/pro/activity/DailyReviewSettingsActivity;->mRemindSwitchBtn:Lim/doit/pro/ui/component/LabelSwitchButton;

    const v1, 0x7f0c0137

    invoke-static {v1}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/LabelSwitchButton;->setLabel(Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lim/doit/pro/activity/DailyReviewSettingsActivity;->mRemindSwitchBtn:Lim/doit/pro/ui/component/LabelSwitchButton;

    invoke-static {}, Lim/doit/pro/activity/DoitApp;->user()Lim/doit/pro/model/User;

    move-result-object v1

    invoke-virtual {v1}, Lim/doit/pro/model/User;->isRemindDailyReview()Z

    move-result v1

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/LabelSwitchButton;->setChecked(Z)V

    .line 105
    iget-object v0, p0, Lim/doit/pro/activity/DailyReviewSettingsActivity;->mMondayRemindView:Lim/doit/pro/ui/component/LabelArrowButton;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/LabelArrowButton;->setTag(Ljava/lang/Object;)V

    .line 106
    iget-object v0, p0, Lim/doit/pro/activity/DailyReviewSettingsActivity;->mTuesdayRemindView:Lim/doit/pro/ui/component/LabelArrowButton;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/LabelArrowButton;->setTag(Ljava/lang/Object;)V

    .line 107
    iget-object v0, p0, Lim/doit/pro/activity/DailyReviewSettingsActivity;->mWednesdayRemindView:Lim/doit/pro/ui/component/LabelArrowButton;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/LabelArrowButton;->setTag(Ljava/lang/Object;)V

    .line 108
    iget-object v0, p0, Lim/doit/pro/activity/DailyReviewSettingsActivity;->mThursdayRemindView:Lim/doit/pro/ui/component/LabelArrowButton;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/LabelArrowButton;->setTag(Ljava/lang/Object;)V

    .line 109
    iget-object v0, p0, Lim/doit/pro/activity/DailyReviewSettingsActivity;->mFridayRemindView:Lim/doit/pro/ui/component/LabelArrowButton;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/LabelArrowButton;->setTag(Ljava/lang/Object;)V

    .line 110
    iget-object v0, p0, Lim/doit/pro/activity/DailyReviewSettingsActivity;->mSaturdayRemindView:Lim/doit/pro/ui/component/LabelArrowButton;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/LabelArrowButton;->setTag(Ljava/lang/Object;)V

    .line 111
    iget-object v0, p0, Lim/doit/pro/activity/DailyReviewSettingsActivity;->mSundayRemindView:Lim/doit/pro/ui/component/LabelArrowButton;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/LabelArrowButton;->setTag(Ljava/lang/Object;)V

    .line 112
    invoke-direct {p0}, Lim/doit/pro/activity/DailyReviewSettingsActivity;->setAllRemindViewContent()V

    .line 113
    return-void
.end method

.method private onRemindSwitchChange()Lim/doit/pro/ui/component/LabelSwitchButton$OnSwitchCheckedChangeListener;
    .locals 1

    .prologue
    .line 160
    new-instance v0, Lim/doit/pro/activity/DailyReviewSettingsActivity$1;

    invoke-direct {v0, p0}, Lim/doit/pro/activity/DailyReviewSettingsActivity$1;-><init>(Lim/doit/pro/activity/DailyReviewSettingsActivity;)V

    return-object v0
.end method

.method private setAllRemindViewContent()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 124
    iget-object v0, p0, Lim/doit/pro/activity/DailyReviewSettingsActivity;->mMondayRemindView:Lim/doit/pro/ui/component/LabelArrowButton;

    invoke-direct {p0, v0}, Lim/doit/pro/activity/DailyReviewSettingsActivity;->setRemindViewContent(Lim/doit/pro/ui/component/LabelArrowButton;)V

    .line 125
    iget-object v0, p0, Lim/doit/pro/activity/DailyReviewSettingsActivity;->mTuesdayRemindView:Lim/doit/pro/ui/component/LabelArrowButton;

    invoke-direct {p0, v0}, Lim/doit/pro/activity/DailyReviewSettingsActivity;->setRemindViewContent(Lim/doit/pro/ui/component/LabelArrowButton;)V

    .line 126
    iget-object v0, p0, Lim/doit/pro/activity/DailyReviewSettingsActivity;->mWednesdayRemindView:Lim/doit/pro/ui/component/LabelArrowButton;

    invoke-direct {p0, v0}, Lim/doit/pro/activity/DailyReviewSettingsActivity;->setRemindViewContent(Lim/doit/pro/ui/component/LabelArrowButton;)V

    .line 127
    iget-object v0, p0, Lim/doit/pro/activity/DailyReviewSettingsActivity;->mThursdayRemindView:Lim/doit/pro/ui/component/LabelArrowButton;

    invoke-direct {p0, v0}, Lim/doit/pro/activity/DailyReviewSettingsActivity;->setRemindViewContent(Lim/doit/pro/ui/component/LabelArrowButton;)V

    .line 128
    iget-object v0, p0, Lim/doit/pro/activity/DailyReviewSettingsActivity;->mFridayRemindView:Lim/doit/pro/ui/component/LabelArrowButton;

    invoke-direct {p0, v0}, Lim/doit/pro/activity/DailyReviewSettingsActivity;->setRemindViewContent(Lim/doit/pro/ui/component/LabelArrowButton;)V

    .line 129
    iget-object v0, p0, Lim/doit/pro/activity/DailyReviewSettingsActivity;->mSaturdayRemindView:Lim/doit/pro/ui/component/LabelArrowButton;

    invoke-direct {p0, v0}, Lim/doit/pro/activity/DailyReviewSettingsActivity;->setRemindViewContent(Lim/doit/pro/ui/component/LabelArrowButton;)V

    .line 130
    iget-object v0, p0, Lim/doit/pro/activity/DailyReviewSettingsActivity;->mSundayRemindView:Lim/doit/pro/ui/component/LabelArrowButton;

    invoke-direct {p0, v0}, Lim/doit/pro/activity/DailyReviewSettingsActivity;->setRemindViewContent(Lim/doit/pro/ui/component/LabelArrowButton;)V

    .line 131
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->user()Lim/doit/pro/model/User;

    move-result-object v0

    invoke-virtual {v0}, Lim/doit/pro/model/User;->isPlanReviewRemindOnWeekends()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lim/doit/pro/activity/DailyReviewSettingsActivity;->mSaturdayRemindView:Lim/doit/pro/ui/component/LabelArrowButton;

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/LabelArrowButton;->setVisibility(I)V

    .line 133
    iget-object v0, p0, Lim/doit/pro/activity/DailyReviewSettingsActivity;->mSundayRemindView:Lim/doit/pro/ui/component/LabelArrowButton;

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/LabelArrowButton;->setVisibility(I)V

    .line 138
    :goto_0
    iget-object v0, p0, Lim/doit/pro/activity/DailyReviewSettingsActivity;->mRemindTimesWrap:Landroid/widget/RelativeLayout;

    invoke-static {v0}, Lim/doit/pro/activity/utils/ViewUtils;->setChildBackground(Landroid/view/ViewGroup;)V

    .line 139
    invoke-direct {p0}, Lim/doit/pro/activity/DailyReviewSettingsActivity;->setRemindTimesWrapStatus()V

    .line 140
    return-void

    .line 135
    :cond_0
    iget-object v0, p0, Lim/doit/pro/activity/DailyReviewSettingsActivity;->mSaturdayRemindView:Lim/doit/pro/ui/component/LabelArrowButton;

    invoke-virtual {v0, v2}, Lim/doit/pro/ui/component/LabelArrowButton;->setVisibility(I)V

    .line 136
    iget-object v0, p0, Lim/doit/pro/activity/DailyReviewSettingsActivity;->mSundayRemindView:Lim/doit/pro/ui/component/LabelArrowButton;

    invoke-virtual {v0, v2}, Lim/doit/pro/ui/component/LabelArrowButton;->setVisibility(I)V

    goto :goto_0
.end method

.method private setRemindTimesWrapStatus()V
    .locals 2

    .prologue
    .line 116
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->user()Lim/doit/pro/model/User;

    move-result-object v0

    invoke-virtual {v0}, Lim/doit/pro/model/User;->isRemindDailyReview()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lim/doit/pro/activity/DailyReviewSettingsActivity;->mRemindTimesWrap:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 121
    :goto_0
    return-void

    .line 119
    :cond_0
    iget-object v0, p0, Lim/doit/pro/activity/DailyReviewSettingsActivity;->mRemindTimesWrap:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private setRemindViewContent(Lim/doit/pro/ui/component/LabelArrowButton;)V
    .locals 2
    .param p1, "view"    # Lim/doit/pro/ui/component/LabelArrowButton;

    .prologue
    .line 143
    invoke-virtual {p1}, Lim/doit/pro/ui/component/LabelArrowButton;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 144
    .local v0, "pos":I
    invoke-direct {p0, v0}, Lim/doit/pro/activity/DailyReviewSettingsActivity;->getRemindTime(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lim/doit/pro/ui/component/LabelArrowButton;->setText(Ljava/lang/String;)V

    .line 145
    return-void
.end method

.method private setSetRemindTimeClickListener(Lim/doit/pro/ui/component/LabelArrowButton;)V
    .locals 1
    .param p1, "view"    # Lim/doit/pro/ui/component/LabelArrowButton;

    .prologue
    .line 172
    new-instance v0, Lim/doit/pro/activity/DailyReviewSettingsActivity$2;

    invoke-direct {v0, p0}, Lim/doit/pro/activity/DailyReviewSettingsActivity$2;-><init>(Lim/doit/pro/activity/DailyReviewSettingsActivity;)V

    invoke-virtual {p1, v0}, Lim/doit/pro/ui/component/LabelArrowButton;->setOnLayoutClickListener(Lim/doit/pro/activity/listener/OnLayoutClickListener;)V

    .line 179
    return-void
.end method

.method private showRemindTimePicker(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 191
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lim/doit/pro/activity/DailyReviewSettingsActivity;->mCurrentPos:I

    .line 192
    iget v5, p0, Lim/doit/pro/activity/DailyReviewSettingsActivity;->mCurrentPos:I

    invoke-direct {p0, v5}, Lim/doit/pro/activity/DailyReviewSettingsActivity;->getRemindTime(I)Ljava/lang/String;

    move-result-object v4

    .line 193
    .local v4, "time":Ljava/lang/String;
    const/16 v2, 0x15

    .line 194
    .local v2, "hourOfDay":I
    const/4 v3, 0x0

    .line 195
    .local v3, "minute":I
    invoke-static {v4}, Lim/doit/pro/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 196
    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 197
    .local v0, "arr":[Ljava/lang/String;
    array-length v5, v0

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    .line 198
    const/4 v5, 0x0

    aget-object v5, v0, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 199
    const/4 v5, 0x1

    aget-object v5, v0, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 202
    .end local v0    # "arr":[Ljava/lang/String;
    :cond_0
    new-instance v1, Lim/doit/pro/ui/component/DSetPlanReviewRemindTimeDialog;

    invoke-direct {v1, p0}, Lim/doit/pro/ui/component/DSetPlanReviewRemindTimeDialog;-><init>(Landroid/content/Context;)V

    .line 204
    .local v1, "dialog":Lim/doit/pro/ui/component/DSetPlanReviewRemindTimeDialog;
    new-instance v5, Lim/doit/pro/activity/DailyReviewSettingsActivity$3;

    invoke-direct {v5, p0}, Lim/doit/pro/activity/DailyReviewSettingsActivity$3;-><init>(Lim/doit/pro/activity/DailyReviewSettingsActivity;)V

    invoke-virtual {v1, v5}, Lim/doit/pro/ui/component/DSetPlanReviewRemindTimeDialog;->setOnRemindTimeDoneListner(Lim/doit/pro/ui/component/DSetPlanReviewRemindTimeDialog$OnRemindTimeDoneListner;)V

    .line 225
    invoke-virtual {v1, v2, v3}, Lim/doit/pro/ui/component/DSetPlanReviewRemindTimeDialog;->showDialog(II)V

    .line 226
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 52
    invoke-super {p0, p1}, Lim/doit/pro/activity/DSwipeBackBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    const v0, 0x7f030022

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/DailyReviewSettingsActivity;->setContentView(I)V

    .line 54
    invoke-direct {p0}, Lim/doit/pro/activity/DailyReviewSettingsActivity;->init()V

    .line 55
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 41
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 46
    invoke-super {p0, p1}, Lim/doit/pro/activity/DSwipeBackBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 43
    :pswitch_0
    invoke-virtual {p0}, Lim/doit/pro/activity/DailyReviewSettingsActivity;->finish()V

    .line 44
    const/4 v0, 0x1

    goto :goto_0

    .line 41
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 3

    .prologue
    .line 59
    iget-boolean v1, p0, Lim/doit/pro/activity/DailyReviewSettingsActivity;->mRemindChanged:Z

    if-eqz v1, :cond_0

    .line 60
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->json()Lim/doit/pro/utils/JsonFormat;

    move-result-object v1

    invoke-static {}, Lim/doit/pro/activity/DoitApp;->user()Lim/doit/pro/model/User;

    move-result-object v2

    .line 61
    invoke-virtual {v2}, Lim/doit/pro/model/User;->getDailyReviewTimes()Ljava/util/ArrayList;

    move-result-object v2

    .line 60
    invoke-virtual {v1, v2}, Lim/doit/pro/utils/JsonFormat;->serialize(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 62
    .local v0, "json":Ljava/lang/String;
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->user()Lim/doit/pro/model/User;

    move-result-object v1

    invoke-virtual {v1, v0}, Lim/doit/pro/model/User;->setDailyReviewTime(Ljava/lang/String;)V

    .line 63
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v1

    iget-object v1, v1, Lim/doit/pro/db/Persist;->userDao:Lim/doit/pro/db/persist/UserDao;

    invoke-static {}, Lim/doit/pro/activity/DoitApp;->user()Lim/doit/pro/model/User;

    move-result-object v2

    invoke-virtual {v1, v2}, Lim/doit/pro/db/persist/UserDao;->updateAndSaveLog(Lim/doit/pro/model/User;)V

    .line 64
    invoke-static {p0}, Lim/doit/pro/utils/BroadcastUtils;->updateTodayDailyReviewAlarm(Landroid/content/Context;)V

    .line 65
    const/4 v1, 0x0

    iput-boolean v1, p0, Lim/doit/pro/activity/DailyReviewSettingsActivity;->mRemindChanged:Z

    .line 67
    .end local v0    # "json":Ljava/lang/String;
    :cond_0
    invoke-super {p0}, Lim/doit/pro/activity/DSwipeBackBaseActivity;->onPause()V

    .line 68
    return-void
.end method
