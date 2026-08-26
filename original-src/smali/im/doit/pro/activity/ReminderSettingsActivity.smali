.class public Lim/doit/pro/activity/ReminderSettingsActivity;
.super Lim/doit/pro/activity/DSwipeBackBaseActivity;
.source "ReminderSettingsActivity.java"


# instance fields
.field private detailPopBtn:Landroid/widget/RelativeLayout;

.field private isCreateView:Z

.field private isSystemChanged:Z

.field private mDailyPlanView:Lim/doit/pro/ui/component/LabelArrowButton;

.field private mDailyReviewView:Lim/doit/pro/ui/component/LabelArrowButton;

.field private mRemindMeOnWeekendsView:Lim/doit/pro/ui/component/LabelSwitchButton;

.field private onDailyPlanSettingsClick:Lim/doit/pro/activity/listener/OnLayoutClickListener;

.field private onDailyReviewSettingsActivity:Lim/doit/pro/activity/listener/OnLayoutClickListener;

.field private onDetailPopClick:Landroid/view/View$OnClickListener;

.field private onRemindMeOnWeekendsChange:Lim/doit/pro/ui/component/LabelSwitchButton$OnSwitchCheckedChangeListener;

.field private onReminderIsShowInNotificationClick:Lim/doit/pro/ui/component/LabelSwitchButton$OnSwitchCheckedChangeListener;

.field private onReminderSettingsClick:Lim/doit/pro/activity/listener/OnLayoutClickListener;

.field private onReminderSnoozeTimeClick:Lim/doit/pro/activity/listener/OnLayoutClickListener;

.field private onTitlePopClick:Landroid/view/View$OnClickListener;

.field private reminderIsShowInNotificationView:Lim/doit/pro/ui/component/LabelSwitchButton;

.field private reminderRingtoneView:Lim/doit/pro/ui/component/LabelArrowButton;

.field private reminderSnoozeTimeView:Lim/doit/pro/ui/component/LabelArrowButton;

.field private titlePopBtn:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lim/doit/pro/activity/DSwipeBackBaseActivity;-><init>()V

    .line 120
    new-instance v0, Lim/doit/pro/activity/ReminderSettingsActivity$1;

    invoke-direct {v0, p0}, Lim/doit/pro/activity/ReminderSettingsActivity$1;-><init>(Lim/doit/pro/activity/ReminderSettingsActivity;)V

    iput-object v0, p0, Lim/doit/pro/activity/ReminderSettingsActivity;->onReminderSettingsClick:Lim/doit/pro/activity/listener/OnLayoutClickListener;

    .line 136
    new-instance v0, Lim/doit/pro/activity/ReminderSettingsActivity$2;

    invoke-direct {v0, p0}, Lim/doit/pro/activity/ReminderSettingsActivity$2;-><init>(Lim/doit/pro/activity/ReminderSettingsActivity;)V

    iput-object v0, p0, Lim/doit/pro/activity/ReminderSettingsActivity;->onReminderSnoozeTimeClick:Lim/doit/pro/activity/listener/OnLayoutClickListener;

    .line 152
    new-instance v0, Lim/doit/pro/activity/ReminderSettingsActivity$3;

    invoke-direct {v0, p0}, Lim/doit/pro/activity/ReminderSettingsActivity$3;-><init>(Lim/doit/pro/activity/ReminderSettingsActivity;)V

    iput-object v0, p0, Lim/doit/pro/activity/ReminderSettingsActivity;->onReminderIsShowInNotificationClick:Lim/doit/pro/ui/component/LabelSwitchButton$OnSwitchCheckedChangeListener;

    .line 161
    new-instance v0, Lim/doit/pro/activity/ReminderSettingsActivity$4;

    invoke-direct {v0, p0}, Lim/doit/pro/activity/ReminderSettingsActivity$4;-><init>(Lim/doit/pro/activity/ReminderSettingsActivity;)V

    iput-object v0, p0, Lim/doit/pro/activity/ReminderSettingsActivity;->onTitlePopClick:Landroid/view/View$OnClickListener;

    .line 175
    new-instance v0, Lim/doit/pro/activity/ReminderSettingsActivity$5;

    invoke-direct {v0, p0}, Lim/doit/pro/activity/ReminderSettingsActivity$5;-><init>(Lim/doit/pro/activity/ReminderSettingsActivity;)V

    iput-object v0, p0, Lim/doit/pro/activity/ReminderSettingsActivity;->onDetailPopClick:Landroid/view/View$OnClickListener;

    .line 189
    new-instance v0, Lim/doit/pro/activity/ReminderSettingsActivity$6;

    invoke-direct {v0, p0}, Lim/doit/pro/activity/ReminderSettingsActivity$6;-><init>(Lim/doit/pro/activity/ReminderSettingsActivity;)V

    iput-object v0, p0, Lim/doit/pro/activity/ReminderSettingsActivity;->onDailyPlanSettingsClick:Lim/doit/pro/activity/listener/OnLayoutClickListener;

    .line 204
    new-instance v0, Lim/doit/pro/activity/ReminderSettingsActivity$7;

    invoke-direct {v0, p0}, Lim/doit/pro/activity/ReminderSettingsActivity$7;-><init>(Lim/doit/pro/activity/ReminderSettingsActivity;)V

    iput-object v0, p0, Lim/doit/pro/activity/ReminderSettingsActivity;->onDailyReviewSettingsActivity:Lim/doit/pro/activity/listener/OnLayoutClickListener;

    .line 219
    const/4 v0, 0x0

    iput-boolean v0, p0, Lim/doit/pro/activity/ReminderSettingsActivity;->isSystemChanged:Z

    .line 220
    new-instance v0, Lim/doit/pro/activity/ReminderSettingsActivity$8;

    invoke-direct {v0, p0}, Lim/doit/pro/activity/ReminderSettingsActivity$8;-><init>(Lim/doit/pro/activity/ReminderSettingsActivity;)V

    iput-object v0, p0, Lim/doit/pro/activity/ReminderSettingsActivity;->onRemindMeOnWeekendsChange:Lim/doit/pro/ui/component/LabelSwitchButton$OnSwitchCheckedChangeListener;

    .line 28
    return-void
.end method

.method static synthetic access$0(Lim/doit/pro/activity/ReminderSettingsActivity;)V
    .locals 0

    .prologue
    .line 248
    invoke-direct {p0}, Lim/doit/pro/activity/ReminderSettingsActivity;->setReminderRingtoneViewContent()V

    return-void
.end method

.method static synthetic access$1(Lim/doit/pro/activity/ReminderSettingsActivity;)V
    .locals 0

    .prologue
    .line 256
    invoke-direct {p0}, Lim/doit/pro/activity/ReminderSettingsActivity;->setReminderSnoozeTimeViewContent()V

    return-void
.end method

.method static synthetic access$2(Lim/doit/pro/activity/ReminderSettingsActivity;)V
    .locals 0

    .prologue
    .line 262
    invoke-direct {p0}, Lim/doit/pro/activity/ReminderSettingsActivity;->setReminderIsShowInNotificationViewContent()V

    return-void
.end method

.method static synthetic access$3(Lim/doit/pro/activity/ReminderSettingsActivity;)V
    .locals 0

    .prologue
    .line 267
    invoke-direct {p0}, Lim/doit/pro/activity/ReminderSettingsActivity;->setReminderPopupStyleViewContent()V

    return-void
.end method

.method static synthetic access$4(Lim/doit/pro/activity/ReminderSettingsActivity;)Z
    .locals 1

    .prologue
    .line 219
    iget-boolean v0, p0, Lim/doit/pro/activity/ReminderSettingsActivity;->isSystemChanged:Z

    return v0
.end method

.method static synthetic access$5(Lim/doit/pro/activity/ReminderSettingsActivity;Z)V
    .locals 0

    .prologue
    .line 219
    iput-boolean p1, p0, Lim/doit/pro/activity/ReminderSettingsActivity;->isSystemChanged:Z

    return-void
.end method

.method static synthetic access$6(Lim/doit/pro/activity/ReminderSettingsActivity;)V
    .locals 0

    .prologue
    .line 278
    invoke-direct {p0}, Lim/doit/pro/activity/ReminderSettingsActivity;->setReminMeOnWeekends()V

    return-void
.end method

.method private init()V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Lim/doit/pro/activity/ReminderSettingsActivity;->initView()V

    .line 70
    invoke-direct {p0}, Lim/doit/pro/activity/ReminderSettingsActivity;->initViewContent()V

    .line 71
    invoke-direct {p0}, Lim/doit/pro/activity/ReminderSettingsActivity;->initListener()V

    .line 72
    return-void
.end method

.method private initActionBar()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 87
    invoke-virtual {p0}, Lim/doit/pro/activity/ReminderSettingsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 88
    .local v0, "actionBar":Landroid/app/ActionBar;
    const v1, 0x7f0c0127

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    .line 89
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 90
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 91
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 92
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayUseLogoEnabled(Z)V

    .line 93
    return-void
.end method

.method private initListener()V
    .locals 2

    .prologue
    .line 106
    iget-object v0, p0, Lim/doit/pro/activity/ReminderSettingsActivity;->reminderRingtoneView:Lim/doit/pro/ui/component/LabelArrowButton;

    iget-object v1, p0, Lim/doit/pro/activity/ReminderSettingsActivity;->onReminderSettingsClick:Lim/doit/pro/activity/listener/OnLayoutClickListener;

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/LabelArrowButton;->setOnLayoutClickListener(Lim/doit/pro/activity/listener/OnLayoutClickListener;)V

    .line 107
    iget-object v0, p0, Lim/doit/pro/activity/ReminderSettingsActivity;->reminderSnoozeTimeView:Lim/doit/pro/ui/component/LabelArrowButton;

    .line 108
    iget-object v1, p0, Lim/doit/pro/activity/ReminderSettingsActivity;->onReminderSnoozeTimeClick:Lim/doit/pro/activity/listener/OnLayoutClickListener;

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/LabelArrowButton;->setOnLayoutClickListener(Lim/doit/pro/activity/listener/OnLayoutClickListener;)V

    .line 109
    iget-object v0, p0, Lim/doit/pro/activity/ReminderSettingsActivity;->reminderIsShowInNotificationView:Lim/doit/pro/ui/component/LabelSwitchButton;

    .line 110
    iget-object v1, p0, Lim/doit/pro/activity/ReminderSettingsActivity;->onReminderIsShowInNotificationClick:Lim/doit/pro/ui/component/LabelSwitchButton$OnSwitchCheckedChangeListener;

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/LabelSwitchButton;->setOnSwitchCheckedChangeListener(Lim/doit/pro/ui/component/LabelSwitchButton$OnSwitchCheckedChangeListener;)V

    .line 111
    iget-object v0, p0, Lim/doit/pro/activity/ReminderSettingsActivity;->titlePopBtn:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lim/doit/pro/activity/ReminderSettingsActivity;->onTitlePopClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    iget-object v0, p0, Lim/doit/pro/activity/ReminderSettingsActivity;->detailPopBtn:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lim/doit/pro/activity/ReminderSettingsActivity;->onDetailPopClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    iget-object v0, p0, Lim/doit/pro/activity/ReminderSettingsActivity;->mDailyPlanView:Lim/doit/pro/ui/component/LabelArrowButton;

    iget-object v1, p0, Lim/doit/pro/activity/ReminderSettingsActivity;->onDailyPlanSettingsClick:Lim/doit/pro/activity/listener/OnLayoutClickListener;

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/LabelArrowButton;->setOnLayoutClickListener(Lim/doit/pro/activity/listener/OnLayoutClickListener;)V

    .line 114
    iget-object v0, p0, Lim/doit/pro/activity/ReminderSettingsActivity;->mDailyReviewView:Lim/doit/pro/ui/component/LabelArrowButton;

    .line 115
    iget-object v1, p0, Lim/doit/pro/activity/ReminderSettingsActivity;->onDailyReviewSettingsActivity:Lim/doit/pro/activity/listener/OnLayoutClickListener;

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/LabelArrowButton;->setOnLayoutClickListener(Lim/doit/pro/activity/listener/OnLayoutClickListener;)V

    .line 116
    iget-object v0, p0, Lim/doit/pro/activity/ReminderSettingsActivity;->mRemindMeOnWeekendsView:Lim/doit/pro/ui/component/LabelSwitchButton;

    .line 117
    iget-object v1, p0, Lim/doit/pro/activity/ReminderSettingsActivity;->onRemindMeOnWeekendsChange:Lim/doit/pro/ui/component/LabelSwitchButton$OnSwitchCheckedChangeListener;

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/LabelSwitchButton;->setOnSwitchCheckedChangeListener(Lim/doit/pro/ui/component/LabelSwitchButton$OnSwitchCheckedChangeListener;)V

    .line 118
    return-void
.end method

.method private initView()V
    .locals 1

    .prologue
    .line 75
    invoke-direct {p0}, Lim/doit/pro/activity/ReminderSettingsActivity;->initActionBar()V

    .line 76
    const v0, 0x7f0b00a4

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/ReminderSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lim/doit/pro/ui/component/LabelArrowButton;

    iput-object v0, p0, Lim/doit/pro/activity/ReminderSettingsActivity;->reminderRingtoneView:Lim/doit/pro/ui/component/LabelArrowButton;

    .line 77
    const v0, 0x7f0b00a5

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/ReminderSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lim/doit/pro/ui/component/LabelArrowButton;

    iput-object v0, p0, Lim/doit/pro/activity/ReminderSettingsActivity;->reminderSnoozeTimeView:Lim/doit/pro/ui/component/LabelArrowButton;

    .line 78
    const v0, 0x7f0b00a6

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/ReminderSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lim/doit/pro/ui/component/LabelSwitchButton;

    iput-object v0, p0, Lim/doit/pro/activity/ReminderSettingsActivity;->reminderIsShowInNotificationView:Lim/doit/pro/ui/component/LabelSwitchButton;

    .line 79
    const v0, 0x7f0b00a8

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/ReminderSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lim/doit/pro/activity/ReminderSettingsActivity;->titlePopBtn:Landroid/widget/RelativeLayout;

    .line 80
    const v0, 0x7f0b00aa

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/ReminderSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lim/doit/pro/activity/ReminderSettingsActivity;->detailPopBtn:Landroid/widget/RelativeLayout;

    .line 81
    const v0, 0x7f0b00ac

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/ReminderSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lim/doit/pro/ui/component/LabelArrowButton;

    iput-object v0, p0, Lim/doit/pro/activity/ReminderSettingsActivity;->mDailyPlanView:Lim/doit/pro/ui/component/LabelArrowButton;

    .line 82
    const v0, 0x7f0b00ad

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/ReminderSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lim/doit/pro/ui/component/LabelArrowButton;

    iput-object v0, p0, Lim/doit/pro/activity/ReminderSettingsActivity;->mDailyReviewView:Lim/doit/pro/ui/component/LabelArrowButton;

    .line 83
    const v0, 0x7f0b00ae

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/ReminderSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lim/doit/pro/ui/component/LabelSwitchButton;

    iput-object v0, p0, Lim/doit/pro/activity/ReminderSettingsActivity;->mRemindMeOnWeekendsView:Lim/doit/pro/ui/component/LabelSwitchButton;

    .line 84
    return-void
.end method

.method private initViewContent()V
    .locals 1

    .prologue
    .line 96
    invoke-direct {p0}, Lim/doit/pro/activity/ReminderSettingsActivity;->setReminderRingtoneViewContent()V

    .line 97
    invoke-direct {p0}, Lim/doit/pro/activity/ReminderSettingsActivity;->setReminderSnoozeTimeViewContent()V

    .line 98
    invoke-direct {p0}, Lim/doit/pro/activity/ReminderSettingsActivity;->setReminderIsShowInNotificationViewContent()V

    .line 99
    invoke-direct {p0}, Lim/doit/pro/activity/ReminderSettingsActivity;->setReminderPopupStyleViewContent()V

    .line 100
    invoke-direct {p0}, Lim/doit/pro/activity/ReminderSettingsActivity;->setReminMeOnWeekends()V

    .line 102
    const v0, 0x7f0b005b

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/ReminderSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    invoke-static {v0}, Lim/doit/pro/activity/utils/ViewUtils;->setChildBackground(Landroid/view/ViewGroup;)V

    .line 103
    return-void
.end method

.method private setReminMeOnWeekends()V
    .locals 3

    .prologue
    .line 279
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->user()Lim/doit/pro/model/User;

    move-result-object v0

    .line 280
    .local v0, "user":Lim/doit/pro/model/User;
    iget-object v1, p0, Lim/doit/pro/activity/ReminderSettingsActivity;->mRemindMeOnWeekendsView:Lim/doit/pro/ui/component/LabelSwitchButton;

    invoke-virtual {v0}, Lim/doit/pro/model/User;->isPlanReviewRemindOnWeekends()Z

    move-result v2

    invoke-virtual {v1, v2}, Lim/doit/pro/ui/component/LabelSwitchButton;->setChecked(Z)V

    .line 281
    invoke-virtual {v0}, Lim/doit/pro/model/User;->isRemindDailyPlan()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lim/doit/pro/model/User;->isRemindDailyReview()Z

    move-result v1

    if-nez v1, :cond_0

    .line 282
    iget-object v1, p0, Lim/doit/pro/activity/ReminderSettingsActivity;->mRemindMeOnWeekendsView:Lim/doit/pro/ui/component/LabelSwitchButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lim/doit/pro/ui/component/LabelSwitchButton;->setEnabled(Z)V

    .line 286
    :goto_0
    return-void

    .line 284
    :cond_0
    iget-object v1, p0, Lim/doit/pro/activity/ReminderSettingsActivity;->mRemindMeOnWeekendsView:Lim/doit/pro/ui/component/LabelSwitchButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lim/doit/pro/ui/component/LabelSwitchButton;->setEnabled(Z)V

    goto :goto_0
.end method

.method private setReminderIsShowInNotificationViewContent()V
    .locals 2

    .prologue
    .line 263
    iget-object v0, p0, Lim/doit/pro/activity/ReminderSettingsActivity;->reminderIsShowInNotificationView:Lim/doit/pro/ui/component/LabelSwitchButton;

    .line 264
    invoke-static {}, Lim/doit/pro/utils/LocalSettings;->isReminderShowInNotification()Z

    move-result v1

    .line 263
    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/LabelSwitchButton;->setChecked(Z)V

    .line 265
    return-void
.end method

.method private setReminderPopupStyleViewContent()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 268
    iget-object v1, p0, Lim/doit/pro/activity/ReminderSettingsActivity;->titlePopBtn:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setSelected(Z)V

    .line 269
    iget-object v1, p0, Lim/doit/pro/activity/ReminderSettingsActivity;->detailPopBtn:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setSelected(Z)V

    .line 270
    invoke-static {}, Lim/doit/pro/utils/LocalSettings;->getReminderPopupStyle()Ljava/lang/String;

    move-result-object v0

    .line 271
    .local v0, "popStype":Ljava/lang/String;
    const-string v1, "title_pop"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 272
    iget-object v1, p0, Lim/doit/pro/activity/ReminderSettingsActivity;->titlePopBtn:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setSelected(Z)V

    .line 276
    :cond_0
    :goto_0
    return-void

    .line 273
    :cond_1
    const-string v1, "detail_pop"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 274
    iget-object v1, p0, Lim/doit/pro/activity/ReminderSettingsActivity;->detailPopBtn:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setSelected(Z)V

    goto :goto_0
.end method

.method private setReminderRingtoneViewContent()V
    .locals 5

    .prologue
    .line 249
    invoke-static {}, Lim/doit/pro/utils/LocalSettings;->isVibrate()Z

    move-result v0

    .line 250
    .local v0, "isVibrate":Z
    if-eqz v0, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const v3, 0x7f0c0118

    invoke-static {v3}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " + "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 252
    .local v1, "vibrateFormat":Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lim/doit/pro/activity/ReminderSettingsActivity;->reminderRingtoneView:Lim/doit/pro/ui/component/LabelArrowButton;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 253
    invoke-static {p0}, Lim/doit/pro/utils/RingtoneUtils;->getSelectedRingtoneTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 252
    invoke-virtual {v2, v3}, Lim/doit/pro/ui/component/LabelArrowButton;->setText(Ljava/lang/String;)V

    .line 254
    return-void

    .line 251
    .end local v1    # "vibrateFormat":Ljava/lang/String;
    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method private setReminderSnoozeTimeViewContent()V
    .locals 6

    .prologue
    .line 257
    invoke-static {}, Lim/doit/pro/utils/LocalSettings;->getReminderSnoozeTime()I

    move-result v0

    .line 258
    .local v0, "snoozeTime":I
    iget-object v1, p0, Lim/doit/pro/activity/ReminderSettingsActivity;->reminderSnoozeTimeView:Lim/doit/pro/ui/component/LabelArrowButton;

    .line 259
    const v2, 0x7f0c005f

    invoke-static {v2}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 258
    invoke-static {v2, v3}, Lim/doit/pro/activity/utils/ViewUtils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lim/doit/pro/ui/component/LabelArrowButton;->setText(Ljava/lang/String;)V

    .line 260
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 42
    invoke-super {p0, p1}, Lim/doit/pro/activity/DSwipeBackBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lim/doit/pro/activity/ReminderSettingsActivity;->isCreateView:Z

    .line 44
    const v0, 0x7f030037

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/ReminderSettingsActivity;->setContentView(I)V

    .line 45
    invoke-direct {p0}, Lim/doit/pro/activity/ReminderSettingsActivity;->init()V

    .line 46
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 50
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 55
    invoke-super {p0, p1}, Lim/doit/pro/activity/DSwipeBackBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 52
    :pswitch_0
    invoke-virtual {p0}, Lim/doit/pro/activity/ReminderSettingsActivity;->finish()V

    .line 53
    const/4 v0, 0x1

    goto :goto_0

    .line 50
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 61
    invoke-super {p0}, Lim/doit/pro/activity/DSwipeBackBaseActivity;->onResume()V

    .line 62
    iget-boolean v0, p0, Lim/doit/pro/activity/ReminderSettingsActivity;->isCreateView:Z

    if-nez v0, :cond_0

    .line 63
    invoke-direct {p0}, Lim/doit/pro/activity/ReminderSettingsActivity;->initViewContent()V

    .line 65
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lim/doit/pro/activity/ReminderSettingsActivity;->isCreateView:Z

    .line 66
    return-void
.end method
