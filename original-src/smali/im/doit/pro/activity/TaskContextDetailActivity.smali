.class public Lim/doit/pro/activity/TaskContextDetailActivity;
.super Lim/doit/pro/activity/DSwipeBackBaseActivity;
.source "TaskContextDetailActivity.java"


# instance fields
.field private cancelBtn:Landroid/widget/Button;

.field private isCreate:Z

.field private mTaskContext:Lim/doit/pro/model/TaskContext;

.field private mTitleET:Lim/doit/pro/ui/component/NoEnterEditText;

.field private onCancelClick:Landroid/view/View$OnClickListener;

.field private onSaveClick:Landroid/view/View$OnClickListener;

.field private saveBtn:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Lim/doit/pro/activity/DSwipeBackBaseActivity;-><init>()V

    .line 106
    new-instance v0, Lim/doit/pro/activity/TaskContextDetailActivity$1;

    invoke-direct {v0, p0}, Lim/doit/pro/activity/TaskContextDetailActivity$1;-><init>(Lim/doit/pro/activity/TaskContextDetailActivity;)V

    iput-object v0, p0, Lim/doit/pro/activity/TaskContextDetailActivity;->onSaveClick:Landroid/view/View$OnClickListener;

    .line 117
    new-instance v0, Lim/doit/pro/activity/TaskContextDetailActivity$2;

    invoke-direct {v0, p0}, Lim/doit/pro/activity/TaskContextDetailActivity$2;-><init>(Lim/doit/pro/activity/TaskContextDetailActivity;)V

    iput-object v0, p0, Lim/doit/pro/activity/TaskContextDetailActivity;->onCancelClick:Landroid/view/View$OnClickListener;

    .line 22
    return-void
.end method

.method static synthetic access$0(Lim/doit/pro/activity/TaskContextDetailActivity;)Z
    .locals 1

    .prologue
    .line 135
    invoke-direct {p0}, Lim/doit/pro/activity/TaskContextDetailActivity;->saveTaskContext()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1(Lim/doit/pro/activity/TaskContextDetailActivity;)V
    .locals 0

    .prologue
    .line 125
    invoke-direct {p0}, Lim/doit/pro/activity/TaskContextDetailActivity;->setSaveBtnStatus()V

    return-void
.end method

.method static synthetic access$2(Lim/doit/pro/activity/TaskContextDetailActivity;)Lim/doit/pro/model/TaskContext;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lim/doit/pro/activity/TaskContextDetailActivity;->mTaskContext:Lim/doit/pro/model/TaskContext;

    return-object v0
.end method

.method static synthetic access$3(Lim/doit/pro/activity/TaskContextDetailActivity;)Lim/doit/pro/ui/component/NoEnterEditText;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lim/doit/pro/activity/TaskContextDetailActivity;->mTitleET:Lim/doit/pro/ui/component/NoEnterEditText;

    return-object v0
.end method

.method private focusOnTitle()V
    .locals 4

    .prologue
    .line 165
    iget-object v0, p0, Lim/doit/pro/activity/TaskContextDetailActivity;->mTitleET:Lim/doit/pro/ui/component/NoEnterEditText;

    new-instance v1, Lim/doit/pro/activity/TaskContextDetailActivity$5;

    invoke-direct {v1, p0}, Lim/doit/pro/activity/TaskContextDetailActivity$5;-><init>(Lim/doit/pro/activity/TaskContextDetailActivity;)V

    .line 170
    const-wide/16 v2, 0x64

    .line 165
    invoke-virtual {v0, v1, v2, v3}, Lim/doit/pro/ui/component/NoEnterEditText;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 171
    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    .line 38
    invoke-direct {p0}, Lim/doit/pro/activity/TaskContextDetailActivity;->initData()V

    .line 39
    invoke-direct {p0}, Lim/doit/pro/activity/TaskContextDetailActivity;->initView()V

    .line 40
    invoke-direct {p0}, Lim/doit/pro/activity/TaskContextDetailActivity;->initViewContent()V

    .line 41
    invoke-direct {p0}, Lim/doit/pro/activity/TaskContextDetailActivity;->initListener()V

    .line 42
    iget-object v0, p0, Lim/doit/pro/activity/TaskContextDetailActivity;->mTaskContext:Lim/doit/pro/model/TaskContext;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lim/doit/pro/model/TaskContext;->setChanged(Z)V

    .line 43
    invoke-direct {p0}, Lim/doit/pro/activity/TaskContextDetailActivity;->setSaveBtnStatus()V

    .line 44
    return-void
.end method

.method private initActionBar()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 63
    invoke-virtual {p0}, Lim/doit/pro/activity/TaskContextDetailActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 64
    .local v0, "actionBar":Landroid/app/ActionBar;
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 65
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 66
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 67
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayUseLogoEnabled(Z)V

    .line 68
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 69
    const v1, 0x7f03008d

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setCustomView(I)V

    .line 70
    return-void
.end method

.method private initData()V
    .locals 2

    .prologue
    .line 47
    invoke-virtual {p0}, Lim/doit/pro/activity/TaskContextDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 48
    const-string v1, "taskContext"

    .line 47
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lim/doit/pro/model/TaskContext;

    iput-object v0, p0, Lim/doit/pro/activity/TaskContextDetailActivity;->mTaskContext:Lim/doit/pro/model/TaskContext;

    .line 49
    iget-object v0, p0, Lim/doit/pro/activity/TaskContextDetailActivity;->mTaskContext:Lim/doit/pro/model/TaskContext;

    if-nez v0, :cond_0

    .line 50
    const/4 v0, 0x1

    iput-boolean v0, p0, Lim/doit/pro/activity/TaskContextDetailActivity;->isCreate:Z

    .line 51
    new-instance v0, Lim/doit/pro/model/TaskContext;

    invoke-direct {v0}, Lim/doit/pro/model/TaskContext;-><init>()V

    iput-object v0, p0, Lim/doit/pro/activity/TaskContextDetailActivity;->mTaskContext:Lim/doit/pro/model/TaskContext;

    .line 53
    :cond_0
    return-void
.end method

.method private initListener()V
    .locals 2

    .prologue
    .line 78
    iget-object v0, p0, Lim/doit/pro/activity/TaskContextDetailActivity;->saveBtn:Landroid/widget/Button;

    iget-object v1, p0, Lim/doit/pro/activity/TaskContextDetailActivity;->onSaveClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    iget-object v0, p0, Lim/doit/pro/activity/TaskContextDetailActivity;->cancelBtn:Landroid/widget/Button;

    iget-object v1, p0, Lim/doit/pro/activity/TaskContextDetailActivity;->onCancelClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    iget-object v0, p0, Lim/doit/pro/activity/TaskContextDetailActivity;->mTaskContext:Lim/doit/pro/model/TaskContext;

    new-instance v1, Lim/doit/pro/activity/TaskContextDetailActivity$3;

    invoke-direct {v1, p0}, Lim/doit/pro/activity/TaskContextDetailActivity$3;-><init>(Lim/doit/pro/activity/TaskContextDetailActivity;)V

    invoke-virtual {v0, v1}, Lim/doit/pro/model/TaskContext;->setOnDataChangeListener(Lim/doit/pro/model/BaseEntity$OnPropertyChangeListener;)V

    .line 87
    iget-object v0, p0, Lim/doit/pro/activity/TaskContextDetailActivity;->mTitleET:Lim/doit/pro/ui/component/NoEnterEditText;

    new-instance v1, Lim/doit/pro/activity/TaskContextDetailActivity$4;

    invoke-direct {v1, p0}, Lim/doit/pro/activity/TaskContextDetailActivity$4;-><init>(Lim/doit/pro/activity/TaskContextDetailActivity;)V

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/NoEnterEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 104
    return-void
.end method

.method private initView()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Lim/doit/pro/activity/TaskContextDetailActivity;->initActionBar()V

    .line 57
    const v0, 0x7f0b003a

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/TaskContextDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lim/doit/pro/ui/component/NoEnterEditText;

    iput-object v0, p0, Lim/doit/pro/activity/TaskContextDetailActivity;->mTitleET:Lim/doit/pro/ui/component/NoEnterEditText;

    .line 58
    const v0, 0x7f0b0150

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/TaskContextDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lim/doit/pro/activity/TaskContextDetailActivity;->saveBtn:Landroid/widget/Button;

    .line 59
    const v0, 0x7f0b0092

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/TaskContextDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lim/doit/pro/activity/TaskContextDetailActivity;->cancelBtn:Landroid/widget/Button;

    .line 60
    return-void
.end method

.method private initViewContent()V
    .locals 2

    .prologue
    .line 73
    iget-object v0, p0, Lim/doit/pro/activity/TaskContextDetailActivity;->mTitleET:Lim/doit/pro/ui/component/NoEnterEditText;

    iget-object v1, p0, Lim/doit/pro/activity/TaskContextDetailActivity;->mTaskContext:Lim/doit/pro/model/TaskContext;

    invoke-virtual {v1}, Lim/doit/pro/model/TaskContext;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/NoEnterEditText;->setText(Ljava/lang/CharSequence;)V

    .line 74
    invoke-direct {p0}, Lim/doit/pro/activity/TaskContextDetailActivity;->focusOnTitle()V

    .line 75
    return-void
.end method

.method private saveTaskContext()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 137
    iget-object v2, p0, Lim/doit/pro/activity/TaskContextDetailActivity;->mTaskContext:Lim/doit/pro/model/TaskContext;

    invoke-virtual {v2}, Lim/doit/pro/model/TaskContext;->isChanged()Z

    move-result v2

    if-nez v2, :cond_0

    .line 138
    const-string v1, "taskcontext is not changed"

    invoke-static {v1}, Lim/doit/pro/utils/Logger;->d(Ljava/lang/Object;)V

    .line 161
    :goto_0
    return v0

    .line 142
    :cond_0
    iget-object v2, p0, Lim/doit/pro/activity/TaskContextDetailActivity;->mTaskContext:Lim/doit/pro/model/TaskContext;

    invoke-virtual {v2}, Lim/doit/pro/model/TaskContext;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lim/doit/pro/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 143
    const-string v0, "taskcontext title is null"

    invoke-static {v0}, Lim/doit/pro/utils/Logger;->d(Ljava/lang/Object;)V

    .line 144
    iget-object v0, p0, Lim/doit/pro/activity/TaskContextDetailActivity;->mTitleET:Lim/doit/pro/ui/component/NoEnterEditText;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lim/doit/pro/ui/component/NoEnterEditText;->setText(Ljava/lang/CharSequence;)V

    .line 145
    iget-object v0, p0, Lim/doit/pro/activity/TaskContextDetailActivity;->mTitleET:Lim/doit/pro/ui/component/NoEnterEditText;

    const v2, 0x7f0c0089

    invoke-virtual {v0, v2}, Lim/doit/pro/ui/component/NoEnterEditText;->setHint(I)V

    .line 146
    invoke-direct {p0}, Lim/doit/pro/activity/TaskContextDetailActivity;->focusOnTitle()V

    move v0, v1

    .line 147
    goto :goto_0

    .line 149
    :cond_1
    iget-object v2, p0, Lim/doit/pro/activity/TaskContextDetailActivity;->mTaskContext:Lim/doit/pro/model/TaskContext;

    invoke-virtual {v2}, Lim/doit/pro/model/TaskContext;->getUuid()Ljava/lang/String;

    move-result-object v2

    .line 150
    iget-object v3, p0, Lim/doit/pro/activity/TaskContextDetailActivity;->mTaskContext:Lim/doit/pro/model/TaskContext;

    invoke-virtual {v3}, Lim/doit/pro/model/TaskContext;->getName()Ljava/lang/String;

    move-result-object v3

    .line 149
    invoke-static {v2, v3}, Lim/doit/pro/utils/ToastUtils;->ContextExist(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 150
    if-eqz v2, :cond_2

    move v0, v1

    .line 151
    goto :goto_0

    .line 153
    :cond_2
    iget-boolean v2, p0, Lim/doit/pro/activity/TaskContextDetailActivity;->isCreate:Z

    if-eqz v2, :cond_3

    .line 154
    iget-object v2, p0, Lim/doit/pro/activity/TaskContextDetailActivity;->mTaskContext:Lim/doit/pro/model/TaskContext;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lim/doit/pro/model/TaskContext;->setUuid(Ljava/lang/String;)V

    .line 155
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v2

    iget-object v2, v2, Lim/doit/pro/db/Persist;->taskContextDao:Lim/doit/pro/db/persist/TaskContextDao;

    iget-object v3, p0, Lim/doit/pro/activity/TaskContextDetailActivity;->mTaskContext:Lim/doit/pro/model/TaskContext;

    invoke-virtual {v2, v3}, Lim/doit/pro/db/persist/TaskContextDao;->createAndSaveLog(Lim/doit/pro/model/TaskContext;)V

    .line 159
    :goto_1
    iget-object v2, p0, Lim/doit/pro/activity/TaskContextDetailActivity;->mTaskContext:Lim/doit/pro/model/TaskContext;

    invoke-virtual {v2, v1}, Lim/doit/pro/model/TaskContext;->setChanged(Z)V

    .line 160
    iput-boolean v1, p0, Lim/doit/pro/activity/TaskContextDetailActivity;->isCreate:Z

    goto :goto_0

    .line 157
    :cond_3
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v2

    iget-object v2, v2, Lim/doit/pro/db/Persist;->taskContextDao:Lim/doit/pro/db/persist/TaskContextDao;

    iget-object v3, p0, Lim/doit/pro/activity/TaskContextDetailActivity;->mTaskContext:Lim/doit/pro/model/TaskContext;

    invoke-virtual {v2, v3}, Lim/doit/pro/db/persist/TaskContextDao;->updateAndSaveLog(Lim/doit/pro/model/TaskContext;)V

    goto :goto_1
.end method

.method private setSaveBtnStatus()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 126
    iget-boolean v0, p0, Lim/doit/pro/activity/TaskContextDetailActivity;->isCreate:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lim/doit/pro/activity/TaskContextDetailActivity;->mTaskContext:Lim/doit/pro/model/TaskContext;

    invoke-virtual {v0}, Lim/doit/pro/model/TaskContext;->isChanged()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 127
    :cond_0
    iget-object v2, p0, Lim/doit/pro/activity/TaskContextDetailActivity;->saveBtn:Landroid/widget/Button;

    iget-object v0, p0, Lim/doit/pro/activity/TaskContextDetailActivity;->mTaskContext:Lim/doit/pro/model/TaskContext;

    invoke-virtual {v0}, Lim/doit/pro/model/TaskContext;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lim/doit/pro/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 128
    iget-object v0, p0, Lim/doit/pro/activity/TaskContextDetailActivity;->saveBtn:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 133
    :goto_1
    return-void

    .line 127
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 130
    :cond_2
    iget-object v0, p0, Lim/doit/pro/activity/TaskContextDetailActivity;->saveBtn:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 131
    iget-object v0, p0, Lim/doit/pro/activity/TaskContextDetailActivity;->saveBtn:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 32
    invoke-super {p0, p1}, Lim/doit/pro/activity/DSwipeBackBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    const v0, 0x7f030043

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/TaskContextDetailActivity;->setContentView(I)V

    .line 34
    invoke-direct {p0}, Lim/doit/pro/activity/TaskContextDetailActivity;->init()V

    .line 35
    return-void
.end method
