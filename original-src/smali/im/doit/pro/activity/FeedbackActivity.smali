.class public Lim/doit/pro/activity/FeedbackActivity;
.super Lim/doit/pro/activity/DSwipeBackBaseActivity;
.source "FeedbackActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lim/doit/pro/activity/FeedbackActivity$DoPostFeedBack;
    }
.end annotation


# instance fields
.field private mCancelBtn:Landroid/widget/Button;

.field private mFeedback:Lim/doit/pro/model/Feedback;

.field private mNotesET:Landroid/widget/EditText;

.field private mPostBtn:Landroid/widget/Button;

.field private mTipsView:Landroid/widget/TextView;

.field private mTitleET:Lim/doit/pro/ui/component/NoEnterEditText;

.field private onCancelClick:Landroid/view/View$OnClickListener;

.field onNotesChangeListener:Landroid/text/TextWatcher;

.field private onPostClick:Landroid/view/View$OnClickListener;

.field onTitleChangeListener:Landroid/text/TextWatcher;

.field onTitleDoneListener:Lim/doit/pro/ui/component/NoEnterEditText$OnDoneListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Lim/doit/pro/activity/DSwipeBackBaseActivity;-><init>()V

    .line 89
    new-instance v0, Lim/doit/pro/activity/FeedbackActivity$1;

    invoke-direct {v0, p0}, Lim/doit/pro/activity/FeedbackActivity$1;-><init>(Lim/doit/pro/activity/FeedbackActivity;)V

    iput-object v0, p0, Lim/doit/pro/activity/FeedbackActivity;->onCancelClick:Landroid/view/View$OnClickListener;

    .line 97
    new-instance v0, Lim/doit/pro/activity/FeedbackActivity$2;

    invoke-direct {v0, p0}, Lim/doit/pro/activity/FeedbackActivity$2;-><init>(Lim/doit/pro/activity/FeedbackActivity;)V

    iput-object v0, p0, Lim/doit/pro/activity/FeedbackActivity;->onPostClick:Landroid/view/View$OnClickListener;

    .line 148
    new-instance v0, Lim/doit/pro/activity/FeedbackActivity$3;

    invoke-direct {v0, p0}, Lim/doit/pro/activity/FeedbackActivity$3;-><init>(Lim/doit/pro/activity/FeedbackActivity;)V

    iput-object v0, p0, Lim/doit/pro/activity/FeedbackActivity;->onTitleDoneListener:Lim/doit/pro/ui/component/NoEnterEditText$OnDoneListener;

    .line 162
    new-instance v0, Lim/doit/pro/activity/FeedbackActivity$4;

    invoke-direct {v0, p0}, Lim/doit/pro/activity/FeedbackActivity$4;-><init>(Lim/doit/pro/activity/FeedbackActivity;)V

    iput-object v0, p0, Lim/doit/pro/activity/FeedbackActivity;->onTitleChangeListener:Landroid/text/TextWatcher;

    .line 182
    new-instance v0, Lim/doit/pro/activity/FeedbackActivity$5;

    invoke-direct {v0, p0}, Lim/doit/pro/activity/FeedbackActivity$5;-><init>(Lim/doit/pro/activity/FeedbackActivity;)V

    iput-object v0, p0, Lim/doit/pro/activity/FeedbackActivity;->onNotesChangeListener:Landroid/text/TextWatcher;

    .line 27
    return-void
.end method

.method static synthetic access$0(Lim/doit/pro/activity/FeedbackActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lim/doit/pro/activity/FeedbackActivity;->mNotesET:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1(Lim/doit/pro/activity/FeedbackActivity;)Lim/doit/pro/model/Feedback;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lim/doit/pro/activity/FeedbackActivity;->mFeedback:Lim/doit/pro/model/Feedback;

    return-object v0
.end method

.method static synthetic access$2(Lim/doit/pro/activity/FeedbackActivity;)V
    .locals 0

    .prologue
    .line 202
    invoke-direct {p0}, Lim/doit/pro/activity/FeedbackActivity;->setPostBtnStatus()V

    return-void
.end method

.method static synthetic access$3(Lim/doit/pro/activity/FeedbackActivity;)V
    .locals 0

    .prologue
    .line 211
    invoke-direct {p0}, Lim/doit/pro/activity/FeedbackActivity;->setTipsStatus()V

    return-void
.end method

.method private init()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lim/doit/pro/activity/FeedbackActivity;->initData()V

    .line 46
    invoke-direct {p0}, Lim/doit/pro/activity/FeedbackActivity;->initView()V

    .line 47
    invoke-direct {p0}, Lim/doit/pro/activity/FeedbackActivity;->initViewContent()V

    .line 48
    invoke-direct {p0}, Lim/doit/pro/activity/FeedbackActivity;->initListener()V

    .line 49
    return-void
.end method

.method private initActionBar()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 67
    invoke-virtual {p0}, Lim/doit/pro/activity/FeedbackActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 68
    .local v0, "actionBar":Landroid/app/ActionBar;
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 69
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 70
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 71
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayUseLogoEnabled(Z)V

    .line 72
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 73
    const v1, 0x7f030078

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setCustomView(I)V

    .line 74
    return-void
.end method

.method private initData()V
    .locals 3

    .prologue
    .line 52
    invoke-virtual {p0}, Lim/doit/pro/activity/FeedbackActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "type"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 53
    .local v0, "type":Ljava/lang/String;
    new-instance v1, Lim/doit/pro/model/Feedback;

    invoke-direct {v1}, Lim/doit/pro/model/Feedback;-><init>()V

    iput-object v1, p0, Lim/doit/pro/activity/FeedbackActivity;->mFeedback:Lim/doit/pro/model/Feedback;

    .line 54
    iget-object v1, p0, Lim/doit/pro/activity/FeedbackActivity;->mFeedback:Lim/doit/pro/model/Feedback;

    invoke-virtual {v1, v0}, Lim/doit/pro/model/Feedback;->setType(Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method private initListener()V
    .locals 2

    .prologue
    .line 82
    iget-object v0, p0, Lim/doit/pro/activity/FeedbackActivity;->mCancelBtn:Landroid/widget/Button;

    iget-object v1, p0, Lim/doit/pro/activity/FeedbackActivity;->onCancelClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    iget-object v0, p0, Lim/doit/pro/activity/FeedbackActivity;->mPostBtn:Landroid/widget/Button;

    iget-object v1, p0, Lim/doit/pro/activity/FeedbackActivity;->onPostClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    iget-object v0, p0, Lim/doit/pro/activity/FeedbackActivity;->mTitleET:Lim/doit/pro/ui/component/NoEnterEditText;

    iget-object v1, p0, Lim/doit/pro/activity/FeedbackActivity;->onTitleDoneListener:Lim/doit/pro/ui/component/NoEnterEditText$OnDoneListener;

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/NoEnterEditText;->setOnDoneListener(Lim/doit/pro/ui/component/NoEnterEditText$OnDoneListener;)V

    .line 85
    iget-object v0, p0, Lim/doit/pro/activity/FeedbackActivity;->mTitleET:Lim/doit/pro/ui/component/NoEnterEditText;

    iget-object v1, p0, Lim/doit/pro/activity/FeedbackActivity;->onTitleChangeListener:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/NoEnterEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 86
    iget-object v0, p0, Lim/doit/pro/activity/FeedbackActivity;->mNotesET:Landroid/widget/EditText;

    iget-object v1, p0, Lim/doit/pro/activity/FeedbackActivity;->onNotesChangeListener:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 87
    return-void
.end method

.method private initView()V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Lim/doit/pro/activity/FeedbackActivity;->initActionBar()V

    .line 59
    const v0, 0x7f0b0092

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lim/doit/pro/activity/FeedbackActivity;->mCancelBtn:Landroid/widget/Button;

    .line 60
    const v0, 0x7f0b016c

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lim/doit/pro/activity/FeedbackActivity;->mPostBtn:Landroid/widget/Button;

    .line 61
    const v0, 0x7f0b003a

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lim/doit/pro/ui/component/NoEnterEditText;

    iput-object v0, p0, Lim/doit/pro/activity/FeedbackActivity;->mTitleET:Lim/doit/pro/ui/component/NoEnterEditText;

    .line 62
    const v0, 0x7f0b006d

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lim/doit/pro/activity/FeedbackActivity;->mNotesET:Landroid/widget/EditText;

    .line 63
    const v0, 0x7f0b0087

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lim/doit/pro/activity/FeedbackActivity;->mTipsView:Landroid/widget/TextView;

    .line 64
    return-void
.end method

.method private initViewContent()V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0}, Lim/doit/pro/activity/FeedbackActivity;->setPostBtnStatus()V

    .line 78
    invoke-direct {p0}, Lim/doit/pro/activity/FeedbackActivity;->setTipsStatus()V

    .line 79
    return-void
.end method

.method private setPostBtnStatus()V
    .locals 2

    .prologue
    .line 203
    iget-object v0, p0, Lim/doit/pro/activity/FeedbackActivity;->mFeedback:Lim/doit/pro/model/Feedback;

    invoke-virtual {v0}, Lim/doit/pro/model/Feedback;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lim/doit/pro/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lim/doit/pro/activity/FeedbackActivity;->mFeedback:Lim/doit/pro/model/Feedback;

    invoke-virtual {v0}, Lim/doit/pro/model/Feedback;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lim/doit/pro/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lim/doit/pro/activity/FeedbackActivity;->mPostBtn:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 209
    :goto_0
    return-void

    .line 207
    :cond_0
    iget-object v0, p0, Lim/doit/pro/activity/FeedbackActivity;->mPostBtn:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method private setTipsStatus()V
    .locals 2

    .prologue
    .line 212
    iget-object v0, p0, Lim/doit/pro/activity/FeedbackActivity;->mFeedback:Lim/doit/pro/model/Feedback;

    invoke-virtual {v0}, Lim/doit/pro/model/Feedback;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lim/doit/pro/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 213
    iget-object v0, p0, Lim/doit/pro/activity/FeedbackActivity;->mFeedback:Lim/doit/pro/model/Feedback;

    invoke-virtual {v0}, Lim/doit/pro/model/Feedback;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lim/doit/pro/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 214
    :cond_0
    iget-object v0, p0, Lim/doit/pro/activity/FeedbackActivity;->mTipsView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 218
    :goto_0
    return-void

    .line 216
    :cond_1
    iget-object v0, p0, Lim/doit/pro/activity/FeedbackActivity;->mTipsView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 39
    invoke-super {p0, p1}, Lim/doit/pro/activity/DSwipeBackBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    const v0, 0x7f030026

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/FeedbackActivity;->setContentView(I)V

    .line 41
    invoke-direct {p0}, Lim/doit/pro/activity/FeedbackActivity;->init()V

    .line 42
    return-void
.end method
