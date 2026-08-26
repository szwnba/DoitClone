.class public Lim/doit/pro/activity/SettingsActivity;
.super Lim/doit/pro/activity/DSwipeBackBaseActivity;
.source "SettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lim/doit/pro/activity/SettingsActivity$OnSendLogClickListener;,
        Lim/doit/pro/activity/SettingsActivity$OnUpgradeToProClickListener;
    }
.end annotation


# static fields
.field private static final REQUEST_EVERNOTE_ACCOUNT_CODE:I = 0x1


# instance fields
.field private aboutUs:Lim/doit/pro/ui/component/LabelTextView;

.field private accountInfo:Lim/doit/pro/ui/component/LabelArrowButton;

.field private accountTypeMessageTV:Landroid/widget/TextView;

.field private avatarView:Lim/doit/pro/ui/component/DRoundedAvatarView;

.field private checkForUpdate:Lim/doit/pro/ui/component/LabelTextView;

.field private dateAndTimeFormat:Lim/doit/pro/ui/component/LabelArrowButton;

.field private evernoteBtn:Lim/doit/pro/ui/component/LabelArrowButton;

.field private followUs:Lim/doit/pro/ui/component/LabelTextView;

.field private gcalSyncBtn:Lim/doit/pro/ui/component/LabelTextView;

.field private isCreateView:Z

.field private isInitViewContent:Z

.field private mPasscodeSwitch:Lim/doit/pro/ui/component/LabelSwitchButton;

.field private mSetPasscodeView:Lim/doit/pro/ui/component/LabelArrowButton;

.field private onAboutUsClick:Lim/doit/pro/activity/listener/OnLayoutClickListener;

.field private onAccountInfoClick:Lim/doit/pro/activity/listener/OnLayoutClickListener;

.field private onCheckForUpdateClick:Lim/doit/pro/activity/listener/OnLayoutClickListener;

.field private onDateAndTimeFormatClick:Lim/doit/pro/activity/listener/OnLayoutClickListener;

.field private onEmailToTaskAddressClick:Lim/doit/pro/activity/listener/OnLayoutClickListener;

.field private onEvernoteClick:Lim/doit/pro/activity/listener/OnLayoutClickListener;

.field private onFeedbackClick:Lim/doit/pro/activity/listener/OnLayoutClickListener;

.field private onFollowUsClick:Lim/doit/pro/activity/listener/OnLayoutClickListener;

.field private onGCalSyncClick:Lim/doit/pro/activity/listener/OnLayoutClickListener;

.field private onHelpCenterClick:Lim/doit/pro/activity/listener/OnLayoutClickListener;

.field private onPasscodeSwitchChange:Lim/doit/pro/ui/component/LabelSwitchButton$OnSwitchCheckedChangeListener;

.field private onReminderSettingsClick:Lim/doit/pro/activity/listener/OnLayoutClickListener;

.field private onReportToDoitClick:Lim/doit/pro/activity/listener/OnLayoutClickListener;

.field private onSetPasscodeClick:Lim/doit/pro/activity/listener/OnLayoutClickListener;

.field private onSmartAddClick:Lim/doit/pro/ui/component/LabelSwitchButton$OnSwitchCheckedChangeListener;

.field private onWidgetStyleSettingsClick:Lim/doit/pro/activity/listener/OnLayoutClickListener;

.field private proMagicstick:Landroid/widget/ImageView;

.field private reminderSettings:Lim/doit/pro/ui/component/LabelArrowButton;

.field private smartAddSwitchBtn:Lim/doit/pro/ui/component/LabelSwitchButton;

.field private syncLogView:Lim/doit/pro/ui/component/LabelTextView;

.field private taskMailBox:Lim/doit/pro/ui/component/LabelTextView;

.field private upgradeToProBtn:Landroid/widget/Button;

.field private usernameTV:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Lim/doit/pro/activity/DSwipeBackBaseActivity;-><init>()V

    .line 326
    new-instance v0, Lim/doit/pro/activity/SettingsActivity$1;

    invoke-direct {v0, p0}, Lim/doit/pro/activity/SettingsActivity$1;-><init>(Lim/doit/pro/activity/SettingsActivity;)V

    iput-object v0, p0, Lim/doit/pro/activity/SettingsActivity;->onReportToDoitClick:Lim/doit/pro/activity/listener/OnLayoutClickListener;

    .line 440
    new-instance v0, Lim/doit/pro/activity/SettingsActivity$2;

    invoke-direct {v0, p0}, Lim/doit/pro/activity/SettingsActivity$2;-><init>(Lim/doit/pro/activity/SettingsActivity;)V

    iput-object v0, p0, Lim/doit/pro/activity/SettingsActivity;->onAccountInfoClick:Lim/doit/pro/activity/listener/OnLayoutClickListener;

    .line 450
    new-instance v0, Lim/doit/pro/activity/SettingsActivity$3;

    invoke-direct {v0, p0}, Lim/doit/pro/activity/SettingsActivity$3;-><init>(Lim/doit/pro/activity/SettingsActivity;)V

    iput-object v0, p0, Lim/doit/pro/activity/SettingsActivity;->onDateAndTimeFormatClick:Lim/doit/pro/activity/listener/OnLayoutClickListener;

    .line 460
    new-instance v0, Lim/doit/pro/activity/SettingsActivity$4;

    invoke-direct {v0, p0}, Lim/doit/pro/activity/SettingsActivity$4;-><init>(Lim/doit/pro/activity/SettingsActivity;)V

    iput-object v0, p0, Lim/doit/pro/activity/SettingsActivity;->onWidgetStyleSettingsClick:Lim/doit/pro/activity/listener/OnLayoutClickListener;

    .line 470
    new-instance v0, Lim/doit/pro/activity/SettingsActivity$5;

    invoke-direct {v0, p0}, Lim/doit/pro/activity/SettingsActivity$5;-><init>(Lim/doit/pro/activity/SettingsActivity;)V

    iput-object v0, p0, Lim/doit/pro/activity/SettingsActivity;->onEmailToTaskAddressClick:Lim/doit/pro/activity/listener/OnLayoutClickListener;

    .line 485
    new-instance v0, Lim/doit/pro/activity/SettingsActivity$6;

    invoke-direct {v0, p0}, Lim/doit/pro/activity/SettingsActivity$6;-><init>(Lim/doit/pro/activity/SettingsActivity;)V

    iput-object v0, p0, Lim/doit/pro/activity/SettingsActivity;->onSmartAddClick:Lim/doit/pro/ui/component/LabelSwitchButton$OnSwitchCheckedChangeListener;

    .line 494
    new-instance v0, Lim/doit/pro/activity/SettingsActivity$7;

    invoke-direct {v0, p0}, Lim/doit/pro/activity/SettingsActivity$7;-><init>(Lim/doit/pro/activity/SettingsActivity;)V

    iput-object v0, p0, Lim/doit/pro/activity/SettingsActivity;->onReminderSettingsClick:Lim/doit/pro/activity/listener/OnLayoutClickListener;

    .line 504
    new-instance v0, Lim/doit/pro/activity/SettingsActivity$8;

    invoke-direct {v0, p0}, Lim/doit/pro/activity/SettingsActivity$8;-><init>(Lim/doit/pro/activity/SettingsActivity;)V

    iput-object v0, p0, Lim/doit/pro/activity/SettingsActivity;->onPasscodeSwitchChange:Lim/doit/pro/ui/component/LabelSwitchButton$OnSwitchCheckedChangeListener;

    .line 520
    new-instance v0, Lim/doit/pro/activity/SettingsActivity$9;

    invoke-direct {v0, p0}, Lim/doit/pro/activity/SettingsActivity$9;-><init>(Lim/doit/pro/activity/SettingsActivity;)V

    iput-object v0, p0, Lim/doit/pro/activity/SettingsActivity;->onSetPasscodeClick:Lim/doit/pro/activity/listener/OnLayoutClickListener;

    .line 539
    new-instance v0, Lim/doit/pro/activity/SettingsActivity$10;

    invoke-direct {v0, p0}, Lim/doit/pro/activity/SettingsActivity$10;-><init>(Lim/doit/pro/activity/SettingsActivity;)V

    iput-object v0, p0, Lim/doit/pro/activity/SettingsActivity;->onCheckForUpdateClick:Lim/doit/pro/activity/listener/OnLayoutClickListener;

    .line 547
    new-instance v0, Lim/doit/pro/activity/SettingsActivity$11;

    invoke-direct {v0, p0}, Lim/doit/pro/activity/SettingsActivity$11;-><init>(Lim/doit/pro/activity/SettingsActivity;)V

    iput-object v0, p0, Lim/doit/pro/activity/SettingsActivity;->onGCalSyncClick:Lim/doit/pro/activity/listener/OnLayoutClickListener;

    .line 555
    new-instance v0, Lim/doit/pro/activity/SettingsActivity$12;

    invoke-direct {v0, p0}, Lim/doit/pro/activity/SettingsActivity$12;-><init>(Lim/doit/pro/activity/SettingsActivity;)V

    iput-object v0, p0, Lim/doit/pro/activity/SettingsActivity;->onEvernoteClick:Lim/doit/pro/activity/listener/OnLayoutClickListener;

    .line 581
    new-instance v0, Lim/doit/pro/activity/SettingsActivity$13;

    invoke-direct {v0, p0}, Lim/doit/pro/activity/SettingsActivity$13;-><init>(Lim/doit/pro/activity/SettingsActivity;)V

    iput-object v0, p0, Lim/doit/pro/activity/SettingsActivity;->onAboutUsClick:Lim/doit/pro/activity/listener/OnLayoutClickListener;

    .line 591
    new-instance v0, Lim/doit/pro/activity/SettingsActivity$14;

    invoke-direct {v0, p0}, Lim/doit/pro/activity/SettingsActivity$14;-><init>(Lim/doit/pro/activity/SettingsActivity;)V

    iput-object v0, p0, Lim/doit/pro/activity/SettingsActivity;->onFollowUsClick:Lim/doit/pro/activity/listener/OnLayoutClickListener;

    .line 601
    new-instance v0, Lim/doit/pro/activity/SettingsActivity$15;

    invoke-direct {v0, p0}, Lim/doit/pro/activity/SettingsActivity$15;-><init>(Lim/doit/pro/activity/SettingsActivity;)V

    iput-object v0, p0, Lim/doit/pro/activity/SettingsActivity;->onFeedbackClick:Lim/doit/pro/activity/listener/OnLayoutClickListener;

    .line 626
    new-instance v0, Lim/doit/pro/activity/SettingsActivity$16;

    invoke-direct {v0, p0}, Lim/doit/pro/activity/SettingsActivity$16;-><init>(Lim/doit/pro/activity/SettingsActivity;)V

    iput-object v0, p0, Lim/doit/pro/activity/SettingsActivity;->onHelpCenterClick:Lim/doit/pro/activity/listener/OnLayoutClickListener;

    .line 60
    return-void
.end method

.method static synthetic access$0(Lim/doit/pro/activity/SettingsActivity;)V
    .locals 0

    .prologue
    .line 353
    invoke-direct {p0}, Lim/doit/pro/activity/SettingsActivity;->sendBugsToDoit()V

    return-void
.end method

.method static synthetic access$1(Lim/doit/pro/activity/SettingsActivity;)Z
    .locals 1

    .prologue
    .line 65
    iget-boolean v0, p0, Lim/doit/pro/activity/SettingsActivity;->isInitViewContent:Z

    return v0
.end method

.method static synthetic access$2(Lim/doit/pro/activity/SettingsActivity;)V
    .locals 0

    .prologue
    .line 528
    invoke-direct {p0}, Lim/doit/pro/activity/SettingsActivity;->startSetPasscode()V

    return-void
.end method

.method static synthetic access$3(Lim/doit/pro/activity/SettingsActivity;)V
    .locals 0

    .prologue
    .line 533
    invoke-direct {p0}, Lim/doit/pro/activity/SettingsActivity;->setUnsetPasscode()V

    return-void
.end method

.method static synthetic access$4(Lim/doit/pro/activity/SettingsActivity;)V
    .locals 0

    .prologue
    .line 281
    invoke-direct {p0}, Lim/doit/pro/activity/SettingsActivity;->setEvernoteViewContent()V

    return-void
.end method

.method static synthetic access$5(Lim/doit/pro/activity/SettingsActivity;)V
    .locals 0

    .prologue
    .line 179
    invoke-direct {p0}, Lim/doit/pro/activity/SettingsActivity;->showEvernoteAuthFailedDialog()V

    return-void
.end method

.method private getEvernoteUserName()V
    .locals 3

    .prologue
    .line 132
    :try_start_0
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->evernote()Lcom/evernote/client/android/EvernoteSession;

    move-result-object v1

    .line 133
    invoke-virtual {v1}, Lcom/evernote/client/android/EvernoteSession;->getClientFactory()Lcom/evernote/client/android/ClientFactory;

    move-result-object v1

    .line 134
    invoke-virtual {v1}, Lcom/evernote/client/android/ClientFactory;->createUserStoreClient()Lcom/evernote/client/android/AsyncUserStoreClient;

    move-result-object v1

    .line 136
    new-instance v2, Lim/doit/pro/activity/SettingsActivity$17;

    invoke-direct {v2, p0}, Lim/doit/pro/activity/SettingsActivity$17;-><init>(Lim/doit/pro/activity/SettingsActivity;)V

    .line 135
    invoke-virtual {v1, v2}, Lcom/evernote/client/android/AsyncUserStoreClient;->getUser(Lcom/evernote/client/android/OnClientCallback;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/evernote/thrift/transport/TTransportException; {:try_start_0 .. :try_end_0} :catch_1

    .line 177
    :goto_0
    return-void

    .line 172
    :catch_0
    move-exception v0

    .line 173
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-direct {p0}, Lim/doit/pro/activity/SettingsActivity;->showEvernoteAuthFailedDialog()V

    goto :goto_0

    .line 174
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v0

    .line 175
    .local v0, "e":Lcom/evernote/thrift/transport/TTransportException;
    invoke-direct {p0}, Lim/doit/pro/activity/SettingsActivity;->showEvernoteAuthFailedDialog()V

    goto :goto_0
.end method

.method private getReportEmailText()Ljava/lang/StringBuilder;
    .locals 5

    .prologue
    .line 387
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 388
    .local v0, "mailText":Ljava/lang/StringBuilder;
    const v3, 0x7f0c0082

    invoke-static {v3}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 389
    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->user()Lim/doit/pro/model/User;

    move-result-object v3

    invoke-virtual {v3}, Lim/doit/pro/model/User;->getEmail()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 391
    invoke-static {}, Lim/doit/pro/utils/PrefUtils;->getServer()Ljava/lang/String;

    move-result-object v1

    .line 392
    .local v1, "server":Ljava/lang/String;
    const/4 v2, 0x0

    .line 393
    .local v2, "serverName":Ljava/lang/String;
    const-string v3, "japan"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 394
    const v3, 0x7f0c007c

    invoke-static {v3}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v2

    .line 398
    :cond_0
    :goto_0
    const-string v3, "\r\t"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f0c007b

    invoke-static {v4}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 399
    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 400
    return-object v0

    .line 395
    :cond_1
    const-string v3, "china"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 396
    const v3, 0x7f0c007d

    invoke-static {v3}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private init()V
    .locals 0

    .prologue
    .line 205
    invoke-direct {p0}, Lim/doit/pro/activity/SettingsActivity;->initView()V

    .line 206
    invoke-direct {p0}, Lim/doit/pro/activity/SettingsActivity;->initViewContent()V

    .line 207
    invoke-direct {p0}, Lim/doit/pro/activity/SettingsActivity;->initListener()V

    .line 208
    return-void
.end method

.method private initActionBar()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 238
    invoke-virtual {p0}, Lim/doit/pro/activity/SettingsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 239
    .local v0, "actionBar":Landroid/app/ActionBar;
    const v1, 0x7f0c0102

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    .line 240
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 241
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 242
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 243
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayUseLogoEnabled(Z)V

    .line 244
    return-void
.end method

.method private initListener()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 404
    iget-object v3, p0, Lim/doit/pro/activity/SettingsActivity;->upgradeToProBtn:Landroid/widget/Button;

    new-instance v4, Lim/doit/pro/activity/SettingsActivity$OnUpgradeToProClickListener;

    invoke-direct {v4, p0, v5}, Lim/doit/pro/activity/SettingsActivity$OnUpgradeToProClickListener;-><init>(Lim/doit/pro/activity/SettingsActivity;Lim/doit/pro/activity/SettingsActivity$OnUpgradeToProClickListener;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 405
    iget-object v3, p0, Lim/doit/pro/activity/SettingsActivity;->accountInfo:Lim/doit/pro/ui/component/LabelArrowButton;

    iget-object v4, p0, Lim/doit/pro/activity/SettingsActivity;->onAccountInfoClick:Lim/doit/pro/activity/listener/OnLayoutClickListener;

    invoke-virtual {v3, v4}, Lim/doit/pro/ui/component/LabelArrowButton;->setOnLayoutClickListener(Lim/doit/pro/activity/listener/OnLayoutClickListener;)V

    .line 406
    iget-object v3, p0, Lim/doit/pro/activity/SettingsActivity;->taskMailBox:Lim/doit/pro/ui/component/LabelTextView;

    iget-object v4, p0, Lim/doit/pro/activity/SettingsActivity;->onEmailToTaskAddressClick:Lim/doit/pro/activity/listener/OnLayoutClickListener;

    invoke-virtual {v3, v4}, Lim/doit/pro/ui/component/LabelTextView;->setOnLayoutClickListener(Lim/doit/pro/activity/listener/OnLayoutClickListener;)V

    .line 407
    iget-object v3, p0, Lim/doit/pro/activity/SettingsActivity;->gcalSyncBtn:Lim/doit/pro/ui/component/LabelTextView;

    iget-object v4, p0, Lim/doit/pro/activity/SettingsActivity;->onGCalSyncClick:Lim/doit/pro/activity/listener/OnLayoutClickListener;

    invoke-virtual {v3, v4}, Lim/doit/pro/ui/component/LabelTextView;->setOnLayoutClickListener(Lim/doit/pro/activity/listener/OnLayoutClickListener;)V

    .line 408
    iget-object v3, p0, Lim/doit/pro/activity/SettingsActivity;->evernoteBtn:Lim/doit/pro/ui/component/LabelArrowButton;

    iget-object v4, p0, Lim/doit/pro/activity/SettingsActivity;->onEvernoteClick:Lim/doit/pro/activity/listener/OnLayoutClickListener;

    invoke-virtual {v3, v4}, Lim/doit/pro/ui/component/LabelArrowButton;->setOnLayoutClickListener(Lim/doit/pro/activity/listener/OnLayoutClickListener;)V

    .line 409
    iget-object v3, p0, Lim/doit/pro/activity/SettingsActivity;->smartAddSwitchBtn:Lim/doit/pro/ui/component/LabelSwitchButton;

    iget-object v4, p0, Lim/doit/pro/activity/SettingsActivity;->onSmartAddClick:Lim/doit/pro/ui/component/LabelSwitchButton$OnSwitchCheckedChangeListener;

    invoke-virtual {v3, v4}, Lim/doit/pro/ui/component/LabelSwitchButton;->setOnSwitchCheckedChangeListener(Lim/doit/pro/ui/component/LabelSwitchButton$OnSwitchCheckedChangeListener;)V

    .line 410
    iget-object v3, p0, Lim/doit/pro/activity/SettingsActivity;->dateAndTimeFormat:Lim/doit/pro/ui/component/LabelArrowButton;

    iget-object v4, p0, Lim/doit/pro/activity/SettingsActivity;->onDateAndTimeFormatClick:Lim/doit/pro/activity/listener/OnLayoutClickListener;

    invoke-virtual {v3, v4}, Lim/doit/pro/ui/component/LabelArrowButton;->setOnLayoutClickListener(Lim/doit/pro/activity/listener/OnLayoutClickListener;)V

    .line 411
    const v3, 0x7f0b00be

    invoke-virtual {p0, v3}, Lim/doit/pro/activity/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lim/doit/pro/ui/component/LabelArrowButton;

    .line 412
    .local v2, "widgetStyleBtn":Lim/doit/pro/ui/component/LabelArrowButton;
    iget-object v3, p0, Lim/doit/pro/activity/SettingsActivity;->onWidgetStyleSettingsClick:Lim/doit/pro/activity/listener/OnLayoutClickListener;

    invoke-virtual {v2, v3}, Lim/doit/pro/ui/component/LabelArrowButton;->setOnLayoutClickListener(Lim/doit/pro/activity/listener/OnLayoutClickListener;)V

    .line 413
    iget-object v3, p0, Lim/doit/pro/activity/SettingsActivity;->reminderSettings:Lim/doit/pro/ui/component/LabelArrowButton;

    iget-object v4, p0, Lim/doit/pro/activity/SettingsActivity;->onReminderSettingsClick:Lim/doit/pro/activity/listener/OnLayoutClickListener;

    invoke-virtual {v3, v4}, Lim/doit/pro/ui/component/LabelArrowButton;->setOnLayoutClickListener(Lim/doit/pro/activity/listener/OnLayoutClickListener;)V

    .line 414
    iget-object v3, p0, Lim/doit/pro/activity/SettingsActivity;->mPasscodeSwitch:Lim/doit/pro/ui/component/LabelSwitchButton;

    .line 415
    iget-object v4, p0, Lim/doit/pro/activity/SettingsActivity;->onPasscodeSwitchChange:Lim/doit/pro/ui/component/LabelSwitchButton$OnSwitchCheckedChangeListener;

    invoke-virtual {v3, v4}, Lim/doit/pro/ui/component/LabelSwitchButton;->setOnSwitchCheckedChangeListener(Lim/doit/pro/ui/component/LabelSwitchButton$OnSwitchCheckedChangeListener;)V

    .line 416
    iget-object v3, p0, Lim/doit/pro/activity/SettingsActivity;->mSetPasscodeView:Lim/doit/pro/ui/component/LabelArrowButton;

    iget-object v4, p0, Lim/doit/pro/activity/SettingsActivity;->onSetPasscodeClick:Lim/doit/pro/activity/listener/OnLayoutClickListener;

    invoke-virtual {v3, v4}, Lim/doit/pro/ui/component/LabelArrowButton;->setOnLayoutClickListener(Lim/doit/pro/activity/listener/OnLayoutClickListener;)V

    .line 417
    iget-object v3, p0, Lim/doit/pro/activity/SettingsActivity;->checkForUpdate:Lim/doit/pro/ui/component/LabelTextView;

    iget-object v4, p0, Lim/doit/pro/activity/SettingsActivity;->onCheckForUpdateClick:Lim/doit/pro/activity/listener/OnLayoutClickListener;

    invoke-virtual {v3, v4}, Lim/doit/pro/ui/component/LabelTextView;->setOnLayoutClickListener(Lim/doit/pro/activity/listener/OnLayoutClickListener;)V

    .line 418
    iget-object v3, p0, Lim/doit/pro/activity/SettingsActivity;->aboutUs:Lim/doit/pro/ui/component/LabelTextView;

    iget-object v4, p0, Lim/doit/pro/activity/SettingsActivity;->onAboutUsClick:Lim/doit/pro/activity/listener/OnLayoutClickListener;

    invoke-virtual {v3, v4}, Lim/doit/pro/ui/component/LabelTextView;->setOnLayoutClickListener(Lim/doit/pro/activity/listener/OnLayoutClickListener;)V

    .line 419
    iget-object v3, p0, Lim/doit/pro/activity/SettingsActivity;->followUs:Lim/doit/pro/ui/component/LabelTextView;

    iget-object v4, p0, Lim/doit/pro/activity/SettingsActivity;->onFollowUsClick:Lim/doit/pro/activity/listener/OnLayoutClickListener;

    invoke-virtual {v3, v4}, Lim/doit/pro/ui/component/LabelTextView;->setOnLayoutClickListener(Lim/doit/pro/activity/listener/OnLayoutClickListener;)V

    .line 421
    const v3, 0x7f0b00c6

    invoke-virtual {p0, v3}, Lim/doit/pro/activity/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lim/doit/pro/ui/component/LabelTextView;

    .line 422
    .local v0, "feedbackBtn":Lim/doit/pro/ui/component/LabelTextView;
    iget-object v3, p0, Lim/doit/pro/activity/SettingsActivity;->onFeedbackClick:Lim/doit/pro/activity/listener/OnLayoutClickListener;

    invoke-virtual {v0, v3}, Lim/doit/pro/ui/component/LabelTextView;->setOnLayoutClickListener(Lim/doit/pro/activity/listener/OnLayoutClickListener;)V

    .line 424
    const v3, 0x7f0b00c7

    invoke-virtual {p0, v3}, Lim/doit/pro/activity/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lim/doit/pro/ui/component/LabelTextView;

    .line 425
    .local v1, "helpCenterBtn":Lim/doit/pro/ui/component/LabelTextView;
    iget-object v3, p0, Lim/doit/pro/activity/SettingsActivity;->onHelpCenterClick:Lim/doit/pro/activity/listener/OnLayoutClickListener;

    invoke-virtual {v1, v3}, Lim/doit/pro/ui/component/LabelTextView;->setOnLayoutClickListener(Lim/doit/pro/activity/listener/OnLayoutClickListener;)V

    .line 427
    const v3, 0x7f0b00c8

    invoke-virtual {p0, v3}, Lim/doit/pro/activity/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lim/doit/pro/ui/component/LabelTextView;

    .line 428
    new-instance v4, Lim/doit/pro/activity/SettingsActivity$OnSendLogClickListener;

    invoke-direct {v4, p0, v5}, Lim/doit/pro/activity/SettingsActivity$OnSendLogClickListener;-><init>(Lim/doit/pro/activity/SettingsActivity;Lim/doit/pro/activity/SettingsActivity$OnSendLogClickListener;)V

    invoke-virtual {v3, v4}, Lim/doit/pro/ui/component/LabelTextView;->setOnLayoutClickListener(Lim/doit/pro/activity/listener/OnLayoutClickListener;)V

    .line 429
    return-void
.end method

.method private initView()V
    .locals 1

    .prologue
    .line 211
    invoke-direct {p0}, Lim/doit/pro/activity/SettingsActivity;->initActionBar()V

    .line 213
    const v0, 0x7f0b0057

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lim/doit/pro/ui/component/DRoundedAvatarView;

    iput-object v0, p0, Lim/doit/pro/activity/SettingsActivity;->avatarView:Lim/doit/pro/ui/component/DRoundedAvatarView;

    .line 214
    const v0, 0x7f0b00b5

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lim/doit/pro/activity/SettingsActivity;->proMagicstick:Landroid/widget/ImageView;

    .line 215
    const v0, 0x7f0b005c

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lim/doit/pro/activity/SettingsActivity;->usernameTV:Landroid/widget/TextView;

    .line 216
    const v0, 0x7f0b00b6

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lim/doit/pro/activity/SettingsActivity;->accountTypeMessageTV:Landroid/widget/TextView;

    .line 217
    const v0, 0x7f0b00b7

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lim/doit/pro/activity/SettingsActivity;->upgradeToProBtn:Landroid/widget/Button;

    .line 219
    const v0, 0x7f0b00b8

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lim/doit/pro/ui/component/LabelArrowButton;

    iput-object v0, p0, Lim/doit/pro/activity/SettingsActivity;->accountInfo:Lim/doit/pro/ui/component/LabelArrowButton;

    .line 220
    const v0, 0x7f0b00ba

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lim/doit/pro/ui/component/LabelTextView;

    iput-object v0, p0, Lim/doit/pro/activity/SettingsActivity;->gcalSyncBtn:Lim/doit/pro/ui/component/LabelTextView;

    .line 221
    const v0, 0x7f0b00b9

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lim/doit/pro/ui/component/LabelTextView;

    iput-object v0, p0, Lim/doit/pro/activity/SettingsActivity;->taskMailBox:Lim/doit/pro/ui/component/LabelTextView;

    .line 222
    const v0, 0x7f0b00bb

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lim/doit/pro/ui/component/LabelArrowButton;

    iput-object v0, p0, Lim/doit/pro/activity/SettingsActivity;->evernoteBtn:Lim/doit/pro/ui/component/LabelArrowButton;

    .line 224
    const v0, 0x7f0b00bc

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lim/doit/pro/ui/component/LabelSwitchButton;

    iput-object v0, p0, Lim/doit/pro/activity/SettingsActivity;->smartAddSwitchBtn:Lim/doit/pro/ui/component/LabelSwitchButton;

    .line 225
    const v0, 0x7f0b00bd

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lim/doit/pro/ui/component/LabelArrowButton;

    iput-object v0, p0, Lim/doit/pro/activity/SettingsActivity;->dateAndTimeFormat:Lim/doit/pro/ui/component/LabelArrowButton;

    .line 226
    const v0, 0x7f0b00bf

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lim/doit/pro/ui/component/LabelArrowButton;

    iput-object v0, p0, Lim/doit/pro/activity/SettingsActivity;->reminderSettings:Lim/doit/pro/ui/component/LabelArrowButton;

    .line 227
    const v0, 0x7f0b00c0

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lim/doit/pro/ui/component/LabelTextView;

    iput-object v0, p0, Lim/doit/pro/activity/SettingsActivity;->syncLogView:Lim/doit/pro/ui/component/LabelTextView;

    .line 229
    const v0, 0x7f0b00c1

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lim/doit/pro/ui/component/LabelSwitchButton;

    iput-object v0, p0, Lim/doit/pro/activity/SettingsActivity;->mPasscodeSwitch:Lim/doit/pro/ui/component/LabelSwitchButton;

    .line 230
    const v0, 0x7f0b00c2

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lim/doit/pro/ui/component/LabelArrowButton;

    iput-object v0, p0, Lim/doit/pro/activity/SettingsActivity;->mSetPasscodeView:Lim/doit/pro/ui/component/LabelArrowButton;

    .line 232
    const v0, 0x7f0b00c4

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lim/doit/pro/ui/component/LabelTextView;

    iput-object v0, p0, Lim/doit/pro/activity/SettingsActivity;->checkForUpdate:Lim/doit/pro/ui/component/LabelTextView;

    .line 233
    const v0, 0x7f0b0053

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lim/doit/pro/ui/component/LabelTextView;

    iput-object v0, p0, Lim/doit/pro/activity/SettingsActivity;->aboutUs:Lim/doit/pro/ui/component/LabelTextView;

    .line 234
    const v0, 0x7f0b00c5

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lim/doit/pro/ui/component/LabelTextView;

    iput-object v0, p0, Lim/doit/pro/activity/SettingsActivity;->followUs:Lim/doit/pro/ui/component/LabelTextView;

    .line 235
    return-void
.end method

.method private initViewContent()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 247
    const/4 v0, 0x1

    iput-boolean v0, p0, Lim/doit/pro/activity/SettingsActivity;->isInitViewContent:Z

    .line 248
    iget-object v0, p0, Lim/doit/pro/activity/SettingsActivity;->avatarView:Lim/doit/pro/ui/component/DRoundedAvatarView;

    invoke-static {}, Lim/doit/pro/activity/DoitApp;->user()Lim/doit/pro/model/User;

    move-result-object v1

    invoke-virtual {v1}, Lim/doit/pro/model/User;->getAvatar()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 249
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->user()Lim/doit/pro/model/User;

    move-result-object v2

    invoke-virtual {v2}, Lim/doit/pro/model/User;->getEmail()Ljava/lang/String;

    move-result-object v2

    .line 248
    invoke-virtual {v0, v1, v2}, Lim/doit/pro/ui/component/DRoundedAvatarView;->setAvatar(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 250
    invoke-static {}, Lim/doit/pro/utils/UserUtils;->isValidPro()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lim/doit/pro/activity/SettingsActivity;->proMagicstick:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 252
    iget-object v0, p0, Lim/doit/pro/activity/SettingsActivity;->accountTypeMessageTV:Landroid/widget/TextView;

    const v1, 0x7f0c01d3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 253
    iget-object v0, p0, Lim/doit/pro/activity/SettingsActivity;->upgradeToProBtn:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 260
    :goto_0
    iget-object v0, p0, Lim/doit/pro/activity/SettingsActivity;->usernameTV:Landroid/widget/TextView;

    invoke-static {}, Lim/doit/pro/activity/DoitApp;->user()Lim/doit/pro/model/User;

    move-result-object v1

    invoke-virtual {v1}, Lim/doit/pro/model/User;->getAccount()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 262
    iget-object v0, p0, Lim/doit/pro/activity/SettingsActivity;->taskMailBox:Lim/doit/pro/ui/component/LabelTextView;

    invoke-static {}, Lim/doit/pro/activity/DoitApp;->user()Lim/doit/pro/model/User;

    move-result-object v1

    invoke-virtual {v1}, Lim/doit/pro/model/User;->getEmailToTaskAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/LabelTextView;->setText(Ljava/lang/String;)V

    .line 263
    invoke-direct {p0}, Lim/doit/pro/activity/SettingsActivity;->setEvernoteViewContent()V

    .line 264
    iget-object v0, p0, Lim/doit/pro/activity/SettingsActivity;->smartAddSwitchBtn:Lim/doit/pro/ui/component/LabelSwitchButton;

    .line 265
    invoke-static {}, Lim/doit/pro/utils/LocalSettings;->isShowSmartaddOnNotification()Z

    move-result v1

    .line 264
    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/LabelSwitchButton;->setChecked(Z)V

    .line 266
    iget-object v0, p0, Lim/doit/pro/activity/SettingsActivity;->checkForUpdate:Lim/doit/pro/ui/component/LabelTextView;

    invoke-static {}, Lim/doit/pro/activity/DoitApp;->getVersionName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/LabelTextView;->setText(Ljava/lang/String;)V

    .line 268
    invoke-direct {p0}, Lim/doit/pro/activity/SettingsActivity;->setSyncLogViewContent()V

    .line 270
    invoke-direct {p0}, Lim/doit/pro/activity/SettingsActivity;->setPasscodeViewContent()V

    .line 273
    const v0, 0x7f0b0054

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    invoke-static {v0}, Lim/doit/pro/activity/utils/ViewUtils;->setChildBackground(Landroid/view/ViewGroup;)V

    .line 275
    const v0, 0x7f0b005b

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    invoke-static {v0}, Lim/doit/pro/activity/utils/ViewUtils;->setChildBackground(Landroid/view/ViewGroup;)V

    .line 277
    const v0, 0x7f0b00c3

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    invoke-static {v0}, Lim/doit/pro/activity/utils/ViewUtils;->setChildBackground(Landroid/view/ViewGroup;)V

    .line 278
    iput-boolean v3, p0, Lim/doit/pro/activity/SettingsActivity;->isInitViewContent:Z

    .line 279
    return-void

    .line 255
    :cond_0
    iget-object v0, p0, Lim/doit/pro/activity/SettingsActivity;->proMagicstick:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 256
    iget-object v0, p0, Lim/doit/pro/activity/SettingsActivity;->accountTypeMessageTV:Landroid/widget/TextView;

    const v1, 0x7f0c01d2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 257
    iget-object v0, p0, Lim/doit/pro/activity/SettingsActivity;->upgradeToProBtn:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method private sendBugsToDoit()V
    .locals 12

    .prologue
    .line 354
    new-instance v4, Landroid/content/Intent;

    const-string v8, "android.intent.action.SEND"

    invoke-direct {v4, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 355
    .local v4, "i":Landroid/content/Intent;
    const-string v8, "application/octet-stream"

    invoke-virtual {v4, v8}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 356
    const-string v8, "android.intent.extra.EMAIL"

    .line 357
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "bug@doitim.com"

    aput-object v11, v9, v10

    .line 356
    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 358
    const-string v8, "android.intent.extra.SUBJECT"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Error Report of Doit.im for Andriod("

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 359
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->getVersionName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 358
    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 360
    const-string v8, "android.intent.extra.TEXT"

    invoke-direct {p0}, Lim/doit/pro/activity/SettingsActivity;->getReportEmailText()Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 362
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v8

    iget-object v8, v8, Lim/doit/pro/db/Persist;->lastSyncLogDao:Lim/doit/pro/db/persist/LastSyncLogDao;

    .line 363
    invoke-virtual {v8}, Lim/doit/pro/db/persist/LastSyncLogDao;->findAllErrorLogs()Ljava/util/ArrayList;

    move-result-object v6

    .line 366
    .local v6, "logs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/LastSyncLog;>;"
    :try_start_0
    new-instance v0, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 367
    const-string v9, "/doit"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 366
    invoke-direct {v0, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 368
    .local v0, "doitDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 369
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 370
    const-string v9, "/doit/bug_error_log.txt"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 369
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 371
    .local v3, "filePath":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 373
    .local v2, "file":Ljava/io/File;
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 374
    .local v7, "outputStream":Ljava/io/FileOutputStream;
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_0

    .line 377
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V

    .line 378
    const-string v8, "android.intent.extra.STREAM"

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 380
    const v8, 0x7f0c01b1

    invoke-static {v8}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v8

    .line 379
    invoke-static {v4, v8}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {p0, v8}, Lim/doit/pro/activity/SettingsActivity;->startActivity(Landroid/content/Intent;)V

    .line 384
    .end local v0    # "doitDir":Ljava/io/File;
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "filePath":Ljava/lang/String;
    .end local v7    # "outputStream":Ljava/io/FileOutputStream;
    :goto_1
    return-void

    .line 374
    .restart local v0    # "doitDir":Ljava/io/File;
    .restart local v2    # "file":Ljava/io/File;
    .restart local v3    # "filePath":Ljava/lang/String;
    .restart local v7    # "outputStream":Ljava/io/FileOutputStream;
    :cond_0
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lim/doit/pro/model/LastSyncLog;

    .line 375
    .local v5, "log":Lim/doit/pro/model/LastSyncLog;
    invoke-virtual {v5}, Lim/doit/pro/model/LastSyncLog;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 381
    .end local v0    # "doitDir":Ljava/io/File;
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "filePath":Ljava/lang/String;
    .end local v5    # "log":Lim/doit/pro/model/LastSyncLog;
    .end local v7    # "outputStream":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v1

    .line 382
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private setEvernoteViewContent()V
    .locals 2

    .prologue
    .line 282
    invoke-static {}, Lim/doit/pro/utils/DEvernoteUtils;->isAuth()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 283
    invoke-static {}, Lim/doit/pro/utils/DEvernoteUtils;->isEvernoteAuth()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lim/doit/pro/activity/SettingsActivity;->evernoteBtn:Lim/doit/pro/ui/component/LabelArrowButton;

    const v1, 0x7f0c0107

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/LabelArrowButton;->setLabel(I)V

    .line 288
    :goto_0
    iget-object v0, p0, Lim/doit/pro/activity/SettingsActivity;->evernoteBtn:Lim/doit/pro/ui/component/LabelArrowButton;

    invoke-static {}, Lim/doit/pro/utils/DEvernoteUtils;->getEvernoteUsername()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/LabelArrowButton;->setText(Ljava/lang/String;)V

    .line 293
    :goto_1
    return-void

    .line 286
    :cond_0
    iget-object v0, p0, Lim/doit/pro/activity/SettingsActivity;->evernoteBtn:Lim/doit/pro/ui/component/LabelArrowButton;

    const v1, 0x7f0c0106

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/LabelArrowButton;->setLabel(I)V

    goto :goto_0

    .line 290
    :cond_1
    iget-object v0, p0, Lim/doit/pro/activity/SettingsActivity;->evernoteBtn:Lim/doit/pro/ui/component/LabelArrowButton;

    const v1, 0x7f0c0105

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/LabelArrowButton;->setLabel(I)V

    .line 291
    iget-object v0, p0, Lim/doit/pro/activity/SettingsActivity;->evernoteBtn:Lim/doit/pro/ui/component/LabelArrowButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/LabelArrowButton;->setText(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private setPasscodeViewContent()V
    .locals 3

    .prologue
    .line 296
    invoke-static {}, Lim/doit/pro/utils/LocalSettings;->isShowGenstureLock()Z

    move-result v0

    .line 297
    .local v0, "isShow":Z
    iget-object v1, p0, Lim/doit/pro/activity/SettingsActivity;->mPasscodeSwitch:Lim/doit/pro/ui/component/LabelSwitchButton;

    invoke-virtual {v1, v0}, Lim/doit/pro/ui/component/LabelSwitchButton;->setChecked(Z)V

    .line 298
    iget-object v2, p0, Lim/doit/pro/activity/SettingsActivity;->mSetPasscodeView:Lim/doit/pro/ui/component/LabelArrowButton;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v2, v1}, Lim/doit/pro/ui/component/LabelArrowButton;->setVisibility(I)V

    .line 300
    const v1, 0x7f0b005f

    invoke-virtual {p0, v1}, Lim/doit/pro/activity/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    invoke-static {v1}, Lim/doit/pro/activity/utils/ViewUtils;->setChildBackground(Landroid/view/ViewGroup;)V

    .line 301
    return-void

    .line 298
    :cond_0
    const/16 v1, 0x8

    goto :goto_0
.end method

.method private setSyncLogViewContent()V
    .locals 6

    .prologue
    .line 304
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v1

    iget-object v1, v1, Lim/doit/pro/db/Persist;->lastSyncLogDao:Lim/doit/pro/db/persist/LastSyncLogDao;

    invoke-virtual {v1}, Lim/doit/pro/db/persist/LastSyncLogDao;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 305
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v1

    iget-object v1, v1, Lim/doit/pro/db/Persist;->lastSyncLogDao:Lim/doit/pro/db/persist/LastSyncLogDao;

    invoke-virtual {v1}, Lim/doit/pro/db/persist/LastSyncLogDao;->findSuccessLog()Lim/doit/pro/model/LastSyncLog;

    move-result-object v0

    .line 306
    .local v0, "log":Lim/doit/pro/model/LastSyncLog;
    iget-object v1, p0, Lim/doit/pro/activity/SettingsActivity;->syncLogView:Lim/doit/pro/ui/component/LabelTextView;

    new-instance v2, Ljava/lang/StringBuilder;

    const v3, 0x7f0c021b

    invoke-static {v3}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 307
    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 309
    invoke-virtual {v0}, Lim/doit/pro/model/LastSyncLog;->getCreated()J

    move-result-wide v4

    .line 308
    invoke-static {v4, v5}, Lim/doit/pro/utils/DateUtils;->convertToDate(J)Ljava/util/Calendar;

    move-result-object v3

    invoke-static {v3}, Lim/doit/pro/utils/DateUtils;->formatDateTime(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 306
    invoke-virtual {v1, v2}, Lim/doit/pro/ui/component/LabelTextView;->setText(Ljava/lang/String;)V

    .line 324
    :cond_0
    :goto_0
    return-void

    .line 311
    .end local v0    # "log":Lim/doit/pro/model/LastSyncLog;
    :cond_1
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v1

    iget-object v1, v1, Lim/doit/pro/db/Persist;->lastSyncLogDao:Lim/doit/pro/db/persist/LastSyncLogDao;

    invoke-virtual {v1}, Lim/doit/pro/db/persist/LastSyncLogDao;->findLastErrorLog()Lim/doit/pro/model/LastSyncLog;

    move-result-object v0

    .line 312
    .restart local v0    # "log":Lim/doit/pro/model/LastSyncLog;
    if-eqz v0, :cond_0

    .line 316
    iget-object v1, p0, Lim/doit/pro/activity/SettingsActivity;->syncLogView:Lim/doit/pro/ui/component/LabelTextView;

    new-instance v2, Ljava/lang/StringBuilder;

    const v3, 0x7f0c021c

    invoke-static {v3}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 317
    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 319
    invoke-virtual {v0}, Lim/doit/pro/model/LastSyncLog;->getCreated()J

    move-result-wide v4

    .line 318
    invoke-static {v4, v5}, Lim/doit/pro/utils/DateUtils;->convertToDate(J)Ljava/util/Calendar;

    move-result-object v3

    invoke-static {v3}, Lim/doit/pro/utils/DateUtils;->formatDateTime(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 316
    invoke-virtual {v1, v2}, Lim/doit/pro/ui/component/LabelTextView;->setText(Ljava/lang/String;)V

    .line 320
    iget-object v1, p0, Lim/doit/pro/activity/SettingsActivity;->syncLogView:Lim/doit/pro/ui/component/LabelTextView;

    .line 321
    const v2, 0x7f0200f6

    invoke-static {v2}, Lim/doit/pro/activity/utils/ViewUtils;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 320
    invoke-virtual {v1, v2}, Lim/doit/pro/ui/component/LabelTextView;->setRightDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 322
    iget-object v1, p0, Lim/doit/pro/activity/SettingsActivity;->syncLogView:Lim/doit/pro/ui/component/LabelTextView;

    iget-object v2, p0, Lim/doit/pro/activity/SettingsActivity;->onReportToDoitClick:Lim/doit/pro/activity/listener/OnLayoutClickListener;

    invoke-virtual {v1, v2}, Lim/doit/pro/ui/component/LabelTextView;->setOnLayoutClickListener(Lim/doit/pro/activity/listener/OnLayoutClickListener;)V

    goto :goto_0
.end method

.method private setUnsetPasscode()V
    .locals 3

    .prologue
    .line 534
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lim/doit/pro/activity/LockSetupActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 535
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "unset_passcode"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 536
    invoke-virtual {p0, v0}, Lim/doit/pro/activity/SettingsActivity;->startActivity(Landroid/content/Intent;)V

    .line 537
    return-void
.end method

.method private showEvernoteAuthFailedDialog()V
    .locals 4

    .prologue
    .line 180
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 181
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "dialog_message"

    const v3, 0x7f0c0109

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 182
    const-string v2, "dialog_negative_button"

    const v3, 0x7f0c0027

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 183
    invoke-static {p0, v0}, Lim/doit/pro/utils/AlertDialogUtils;->showDialog(Landroid/app/Activity;Landroid/os/Bundle;)Lim/doit/pro/ui/component/DMessageDialog;

    move-result-object v1

    .line 184
    .local v1, "dialog":Lim/doit/pro/ui/component/DMessageDialog;
    invoke-virtual {p0}, Lim/doit/pro/activity/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "DIALOG_TAG_EVERNOTE_AUTH_FAILED"

    invoke-virtual {v1, v2, v3}, Lim/doit/pro/ui/component/DMessageDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 185
    return-void
.end method

.method private startSetPasscode()V
    .locals 2

    .prologue
    .line 529
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lim/doit/pro/activity/LockSetupActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 530
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lim/doit/pro/activity/SettingsActivity;->startActivity(Landroid/content/Intent;)V

    .line 531
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v2, -0x1

    .line 101
    invoke-super {p0, p1, p2, p3}, Lim/doit/pro/activity/DSwipeBackBaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 102
    sparse-switch p1, :sswitch_data_0

    .line 126
    invoke-super {p0, p1, p2, p3}, Lim/doit/pro/activity/DSwipeBackBaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 128
    :cond_0
    :goto_0
    return-void

    .line 104
    :sswitch_0
    if-ne p2, v2, :cond_1

    .line 105
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->evernote()Lcom/evernote/client/android/EvernoteSession;

    move-result-object v2

    .line 106
    invoke-virtual {v2}, Lcom/evernote/client/android/EvernoteSession;->getAuthenticationResult()Lcom/evernote/client/android/AuthenticationResult;

    move-result-object v0

    .line 107
    .local v0, "authResult":Lcom/evernote/client/android/AuthenticationResult;
    new-instance v1, Lim/doit/pro/model/Evernote;

    invoke-direct {v1}, Lim/doit/pro/model/Evernote;-><init>()V

    .line 108
    .local v1, "evernoteInfo":Lim/doit/pro/model/Evernote;
    invoke-virtual {v0}, Lcom/evernote/client/android/AuthenticationResult;->getAuthToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lim/doit/pro/model/Evernote;->setToken(Ljava/lang/String;)V

    .line 109
    invoke-virtual {v0}, Lcom/evernote/client/android/AuthenticationResult;->getEvernoteHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lim/doit/pro/model/Evernote;->setServiceHost(Ljava/lang/String;)V

    .line 110
    invoke-virtual {v0}, Lcom/evernote/client/android/AuthenticationResult;->getUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Lim/doit/pro/model/Evernote;->setUserId(I)V

    .line 111
    invoke-virtual {v0}, Lcom/evernote/client/android/AuthenticationResult;->getNoteStoreUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lim/doit/pro/model/Evernote;->setNoteStoreUrl(Ljava/lang/String;)V

    .line 113
    invoke-virtual {v0}, Lcom/evernote/client/android/AuthenticationResult;->getWebApiUrlPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lim/doit/pro/model/Evernote;->setWebApiUrlPrefix(Ljava/lang/String;)V

    .line 114
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->user()Lim/doit/pro/model/User;

    move-result-object v2

    invoke-virtual {v2, v1}, Lim/doit/pro/model/User;->setEvernote(Lim/doit/pro/model/Evernote;)V

    .line 115
    invoke-direct {p0}, Lim/doit/pro/activity/SettingsActivity;->getEvernoteUserName()V

    goto :goto_0

    .line 116
    .end local v0    # "authResult":Lcom/evernote/client/android/AuthenticationResult;
    .end local v1    # "evernoteInfo":Lim/doit/pro/model/Evernote;
    :cond_1
    if-nez p2, :cond_0

    .line 117
    invoke-direct {p0}, Lim/doit/pro/activity/SettingsActivity;->showEvernoteAuthFailedDialog()V

    goto :goto_0

    .line 121
    :sswitch_1
    if-ne p2, v2, :cond_0

    .line 122
    invoke-direct {p0}, Lim/doit/pro/activity/SettingsActivity;->setEvernoteViewContent()V

    goto :goto_0

    .line 102
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x3836 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 189
    invoke-super {p0, p1}, Lim/doit/pro/activity/DSwipeBackBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 190
    const/4 v0, 0x1

    iput-boolean v0, p0, Lim/doit/pro/activity/SettingsActivity;->isCreateView:Z

    .line 191
    const v0, 0x7f03003d

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/SettingsActivity;->setContentView(I)V

    .line 192
    invoke-direct {p0}, Lim/doit/pro/activity/SettingsActivity;->init()V

    .line 193
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 90
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 95
    invoke-super {p0, p1}, Lim/doit/pro/activity/DSwipeBackBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 92
    :pswitch_0
    invoke-virtual {p0}, Lim/doit/pro/activity/SettingsActivity;->finish()V

    .line 93
    const/4 v0, 0x1

    goto :goto_0

    .line 90
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 197
    invoke-super {p0}, Lim/doit/pro/activity/DSwipeBackBaseActivity;->onResume()V

    .line 198
    iget-boolean v0, p0, Lim/doit/pro/activity/SettingsActivity;->isCreateView:Z

    if-nez v0, :cond_0

    .line 199
    invoke-direct {p0}, Lim/doit/pro/activity/SettingsActivity;->initViewContent()V

    .line 201
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lim/doit/pro/activity/SettingsActivity;->isCreateView:Z

    .line 202
    return-void
.end method
