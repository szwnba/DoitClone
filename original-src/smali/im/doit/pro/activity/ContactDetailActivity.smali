.class public Lim/doit/pro/activity/ContactDetailActivity;
.super Lim/doit/pro/activity/DSwipeBackBaseActivity;
.source "ContactDetailActivity.java"


# instance fields
.field private mAvatarView:Lim/doit/pro/ui/component/DRoundedAvatarView;

.field private mBackBtn:Landroid/widget/ImageButton;

.field private mBirthdayView:Lim/doit/pro/ui/component/LabelArrowButton;

.field private mContact:Lim/doit/pro/model/Contact;

.field private mNicknameView:Lim/doit/pro/ui/component/EditTextWithLabelLayout;

.field private mNotesView:Landroid/widget/EditText;

.field private mPhoneView:Lim/doit/pro/ui/component/EditTextWithLabelLayout;

.field private mTopBarTitleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lim/doit/pro/activity/DSwipeBackBaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lim/doit/pro/activity/ContactDetailActivity;)Lim/doit/pro/model/Contact;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lim/doit/pro/activity/ContactDetailActivity;->mContact:Lim/doit/pro/model/Contact;

    return-object v0
.end method

.method static synthetic access$1(Lim/doit/pro/activity/ContactDetailActivity;)V
    .locals 0

    .prologue
    .line 117
    invoke-direct {p0}, Lim/doit/pro/activity/ContactDetailActivity;->setBirthdayViewContent()V

    return-void
.end method

.method private init()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Lim/doit/pro/activity/ContactDetailActivity;->initData()V

    .line 61
    invoke-direct {p0}, Lim/doit/pro/activity/ContactDetailActivity;->initView()V

    .line 62
    invoke-direct {p0}, Lim/doit/pro/activity/ContactDetailActivity;->initViewContent()V

    .line 63
    invoke-direct {p0}, Lim/doit/pro/activity/ContactDetailActivity;->initListener()V

    .line 64
    return-void
.end method

.method private initActionBar()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 91
    invoke-virtual {p0}, Lim/doit/pro/activity/ContactDetailActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 92
    .local v0, "actionBar":Landroid/app/ActionBar;
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 93
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 94
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 95
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayUseLogoEnabled(Z)V

    .line 96
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 97
    const v1, 0x7f03006d

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setCustomView(I)V

    .line 98
    return-void
.end method

.method private initData()V
    .locals 3

    .prologue
    .line 67
    invoke-virtual {p0}, Lim/doit/pro/activity/ContactDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "uuid"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 68
    .local v0, "uuid":Ljava/lang/String;
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v1

    iget-object v1, v1, Lim/doit/pro/db/Persist;->contactDao:Lim/doit/pro/db/persist/ContactDao;

    invoke-virtual {v1, v0}, Lim/doit/pro/db/persist/ContactDao;->findByUUID(Ljava/lang/String;)Lim/doit/pro/model/BaseEntity;

    move-result-object v1

    check-cast v1, Lim/doit/pro/model/Contact;

    iput-object v1, p0, Lim/doit/pro/activity/ContactDetailActivity;->mContact:Lim/doit/pro/model/Contact;

    .line 69
    return-void
.end method

.method private initListener()V
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Lim/doit/pro/activity/ContactDetailActivity;->mBackBtn:Landroid/widget/ImageButton;

    new-instance v1, Lim/doit/pro/activity/ContactDetailActivity$1;

    invoke-direct {v1, p0}, Lim/doit/pro/activity/ContactDetailActivity$1;-><init>(Lim/doit/pro/activity/ContactDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    iget-object v0, p0, Lim/doit/pro/activity/ContactDetailActivity;->mNicknameView:Lim/doit/pro/ui/component/EditTextWithLabelLayout;

    new-instance v1, Lim/doit/pro/activity/ContactDetailActivity$2;

    invoke-direct {v1, p0}, Lim/doit/pro/activity/ContactDetailActivity$2;-><init>(Lim/doit/pro/activity/ContactDetailActivity;)V

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/EditTextWithLabelLayout;->setOnContentChangeListener(Lim/doit/pro/ui/component/EditTextWithLabelLayout$OnContentChangeListener;)V

    .line 136
    iget-object v0, p0, Lim/doit/pro/activity/ContactDetailActivity;->mNicknameView:Lim/doit/pro/ui/component/EditTextWithLabelLayout;

    new-instance v1, Lim/doit/pro/activity/ContactDetailActivity$3;

    invoke-direct {v1, p0}, Lim/doit/pro/activity/ContactDetailActivity$3;-><init>(Lim/doit/pro/activity/ContactDetailActivity;)V

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/EditTextWithLabelLayout;->setOnContentDoneListener(Lim/doit/pro/ui/component/EditTextWithLabelLayout$OnContentDoneListener;)V

    .line 143
    iget-object v0, p0, Lim/doit/pro/activity/ContactDetailActivity;->mPhoneView:Lim/doit/pro/ui/component/EditTextWithLabelLayout;

    new-instance v1, Lim/doit/pro/activity/ContactDetailActivity$4;

    invoke-direct {v1, p0}, Lim/doit/pro/activity/ContactDetailActivity$4;-><init>(Lim/doit/pro/activity/ContactDetailActivity;)V

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/EditTextWithLabelLayout;->setOnContentChangeListener(Lim/doit/pro/ui/component/EditTextWithLabelLayout$OnContentChangeListener;)V

    .line 150
    iget-object v0, p0, Lim/doit/pro/activity/ContactDetailActivity;->mPhoneView:Lim/doit/pro/ui/component/EditTextWithLabelLayout;

    new-instance v1, Lim/doit/pro/activity/ContactDetailActivity$5;

    invoke-direct {v1, p0}, Lim/doit/pro/activity/ContactDetailActivity$5;-><init>(Lim/doit/pro/activity/ContactDetailActivity;)V

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/EditTextWithLabelLayout;->setOnContentDoneListener(Lim/doit/pro/ui/component/EditTextWithLabelLayout$OnContentDoneListener;)V

    .line 157
    iget-object v0, p0, Lim/doit/pro/activity/ContactDetailActivity;->mBirthdayView:Lim/doit/pro/ui/component/LabelArrowButton;

    new-instance v1, Lim/doit/pro/activity/ContactDetailActivity$6;

    invoke-direct {v1, p0}, Lim/doit/pro/activity/ContactDetailActivity$6;-><init>(Lim/doit/pro/activity/ContactDetailActivity;)V

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/LabelArrowButton;->setOnLayoutClickListener(Lim/doit/pro/activity/listener/OnLayoutClickListener;)V

    .line 180
    iget-object v0, p0, Lim/doit/pro/activity/ContactDetailActivity;->mNotesView:Landroid/widget/EditText;

    new-instance v1, Lim/doit/pro/activity/ContactDetailActivity$7;

    invoke-direct {v1, p0}, Lim/doit/pro/activity/ContactDetailActivity$7;-><init>(Lim/doit/pro/activity/ContactDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 197
    return-void
.end method

.method private initView()V
    .locals 3

    .prologue
    const v2, 0x7f0a0017

    .line 72
    invoke-direct {p0}, Lim/doit/pro/activity/ContactDetailActivity;->initActionBar()V

    .line 73
    const v0, 0x7f0b00ca

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/ContactDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lim/doit/pro/activity/ContactDetailActivity;->mBackBtn:Landroid/widget/ImageButton;

    .line 74
    const v0, 0x7f0b014c

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/ContactDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lim/doit/pro/activity/ContactDetailActivity;->mTopBarTitleView:Landroid/widget/TextView;

    .line 76
    const v0, 0x7f0b006b

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/ContactDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lim/doit/pro/ui/component/DRoundedAvatarView;

    iput-object v0, p0, Lim/doit/pro/activity/ContactDetailActivity;->mAvatarView:Lim/doit/pro/ui/component/DRoundedAvatarView;

    .line 77
    const v0, 0x7f0b0058

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/ContactDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lim/doit/pro/ui/component/EditTextWithLabelLayout;

    iput-object v0, p0, Lim/doit/pro/activity/ContactDetailActivity;->mNicknameView:Lim/doit/pro/ui/component/EditTextWithLabelLayout;

    .line 78
    iget-object v0, p0, Lim/doit/pro/activity/ContactDetailActivity;->mNicknameView:Lim/doit/pro/ui/component/EditTextWithLabelLayout;

    .line 79
    invoke-static {v2}, Lim/doit/pro/activity/utils/ViewUtils;->getInteger(I)I

    move-result v1

    .line 78
    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/EditTextWithLabelLayout;->setMaxLength(I)V

    .line 80
    const v0, 0x7f0b006c

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/ContactDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lim/doit/pro/ui/component/EditTextWithLabelLayout;

    iput-object v0, p0, Lim/doit/pro/activity/ContactDetailActivity;->mPhoneView:Lim/doit/pro/ui/component/EditTextWithLabelLayout;

    .line 81
    iget-object v0, p0, Lim/doit/pro/activity/ContactDetailActivity;->mPhoneView:Lim/doit/pro/ui/component/EditTextWithLabelLayout;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/EditTextWithLabelLayout;->setInputType(I)V

    .line 82
    iget-object v0, p0, Lim/doit/pro/activity/ContactDetailActivity;->mPhoneView:Lim/doit/pro/ui/component/EditTextWithLabelLayout;

    .line 83
    invoke-static {v2}, Lim/doit/pro/activity/utils/ViewUtils;->getInteger(I)I

    move-result v1

    .line 82
    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/EditTextWithLabelLayout;->setMaxLength(I)V

    .line 84
    const v0, 0x7f0b005a

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/ContactDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lim/doit/pro/ui/component/LabelArrowButton;

    iput-object v0, p0, Lim/doit/pro/activity/ContactDetailActivity;->mBirthdayView:Lim/doit/pro/ui/component/LabelArrowButton;

    .line 85
    iget-object v0, p0, Lim/doit/pro/activity/ContactDetailActivity;->mBirthdayView:Lim/doit/pro/ui/component/LabelArrowButton;

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/LabelArrowButton;->setBackgroundResource(I)V

    .line 87
    const v0, 0x7f0b006d

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/ContactDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lim/doit/pro/activity/ContactDetailActivity;->mNotesView:Landroid/widget/EditText;

    .line 88
    return-void
.end method

.method private initViewContent()V
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Lim/doit/pro/activity/ContactDetailActivity;->mTopBarTitleView:Landroid/widget/TextView;

    iget-object v1, p0, Lim/doit/pro/activity/ContactDetailActivity;->mContact:Lim/doit/pro/model/Contact;

    invoke-virtual {v1}, Lim/doit/pro/model/Contact;->getEmail()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    invoke-direct {p0}, Lim/doit/pro/activity/ContactDetailActivity;->setAvatarViewContent()V

    .line 103
    iget-object v0, p0, Lim/doit/pro/activity/ContactDetailActivity;->mNicknameView:Lim/doit/pro/ui/component/EditTextWithLabelLayout;

    iget-object v1, p0, Lim/doit/pro/activity/ContactDetailActivity;->mContact:Lim/doit/pro/model/Contact;

    invoke-virtual {v1}, Lim/doit/pro/model/Contact;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/EditTextWithLabelLayout;->setText(Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lim/doit/pro/activity/ContactDetailActivity;->mPhoneView:Lim/doit/pro/ui/component/EditTextWithLabelLayout;

    iget-object v1, p0, Lim/doit/pro/activity/ContactDetailActivity;->mContact:Lim/doit/pro/model/Contact;

    invoke-virtual {v1}, Lim/doit/pro/model/Contact;->getPhone()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/EditTextWithLabelLayout;->setText(Ljava/lang/String;)V

    .line 105
    invoke-direct {p0}, Lim/doit/pro/activity/ContactDetailActivity;->setBirthdayViewContent()V

    .line 106
    iget-object v0, p0, Lim/doit/pro/activity/ContactDetailActivity;->mNotesView:Landroid/widget/EditText;

    iget-object v1, p0, Lim/doit/pro/activity/ContactDetailActivity;->mContact:Lim/doit/pro/model/Contact;

    invoke-virtual {v1}, Lim/doit/pro/model/Contact;->getNotes()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 107
    return-void
.end method

.method private setAvatarViewContent()V
    .locals 3

    .prologue
    .line 110
    iget-object v1, p0, Lim/doit/pro/activity/ContactDetailActivity;->mContact:Lim/doit/pro/model/Contact;

    invoke-virtual {v1}, Lim/doit/pro/model/Contact;->getName()Ljava/lang/String;

    move-result-object v0

    .line 111
    .local v0, "name":Ljava/lang/String;
    invoke-static {v0}, Lim/doit/pro/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 112
    iget-object v1, p0, Lim/doit/pro/activity/ContactDetailActivity;->mContact:Lim/doit/pro/model/Contact;

    invoke-virtual {v1}, Lim/doit/pro/model/Contact;->getEmail()Ljava/lang/String;

    move-result-object v0

    .line 114
    :cond_0
    iget-object v1, p0, Lim/doit/pro/activity/ContactDetailActivity;->mAvatarView:Lim/doit/pro/ui/component/DRoundedAvatarView;

    iget-object v2, p0, Lim/doit/pro/activity/ContactDetailActivity;->mContact:Lim/doit/pro/model/Contact;

    invoke-virtual {v2}, Lim/doit/pro/model/Contact;->getAvatar()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lim/doit/pro/ui/component/DRoundedAvatarView;->setAvatar(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 115
    return-void
.end method

.method private setBirthdayViewContent()V
    .locals 2

    .prologue
    .line 118
    iget-object v0, p0, Lim/doit/pro/activity/ContactDetailActivity;->mBirthdayView:Lim/doit/pro/ui/component/LabelArrowButton;

    iget-object v1, p0, Lim/doit/pro/activity/ContactDetailActivity;->mContact:Lim/doit/pro/model/Contact;

    invoke-virtual {v1}, Lim/doit/pro/model/Contact;->getBirthday()Ljava/util/Calendar;

    move-result-object v1

    invoke-static {v1}, Lim/doit/pro/utils/DateUtils;->formatDate(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/LabelArrowButton;->setText(Ljava/lang/String;)V

    .line 119
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 46
    invoke-super {p0, p1}, Lim/doit/pro/activity/DSwipeBackBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    const v0, 0x7f03001c

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/ContactDetailActivity;->setContentView(I)V

    .line 48
    invoke-direct {p0}, Lim/doit/pro/activity/ContactDetailActivity;->init()V

    .line 49
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 53
    iget-object v0, p0, Lim/doit/pro/activity/ContactDetailActivity;->mContact:Lim/doit/pro/model/Contact;

    invoke-virtual {v0}, Lim/doit/pro/model/Contact;->isChanged()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v0

    iget-object v0, v0, Lim/doit/pro/db/Persist;->contactDao:Lim/doit/pro/db/persist/ContactDao;

    iget-object v1, p0, Lim/doit/pro/activity/ContactDetailActivity;->mContact:Lim/doit/pro/model/Contact;

    invoke-virtual {v0, v1}, Lim/doit/pro/db/persist/ContactDao;->updateAndSaveLog(Lim/doit/pro/model/Contact;)V

    .line 56
    :cond_0
    invoke-super {p0}, Lim/doit/pro/activity/DSwipeBackBaseActivity;->onPause()V

    .line 57
    return-void
.end method
