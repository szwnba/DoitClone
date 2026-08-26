.class public Lim/doit/pro/activity/GoalDetailActivity;
.super Lim/doit/pro/activity/DSwipeBackBaseActivity;
.source "GoalDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lim/doit/pro/activity/GoalDetailActivity$OnCompleteClick;
    }
.end annotation


# instance fields
.field private cancelBtn:Landroid/widget/Button;

.field private completeBtn:Landroid/widget/ImageView;

.field private isCreate:Z

.field private mGoal:Lim/doit/pro/model/Goal;

.field private notesET:Lim/doit/pro/ui/component/DEditText;

.field private onCancelClick:Landroid/view/View$OnClickListener;

.field private onSaveClick:Landroid/view/View$OnClickListener;

.field private saveBtn:Landroid/widget/Button;

.field private titleET:Lim/doit/pro/ui/component/NoEnterEditText;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lim/doit/pro/activity/DSwipeBackBaseActivity;-><init>()V

    .line 195
    new-instance v0, Lim/doit/pro/activity/GoalDetailActivity$1;

    invoke-direct {v0, p0}, Lim/doit/pro/activity/GoalDetailActivity$1;-><init>(Lim/doit/pro/activity/GoalDetailActivity;)V

    iput-object v0, p0, Lim/doit/pro/activity/GoalDetailActivity;->onSaveClick:Landroid/view/View$OnClickListener;

    .line 206
    new-instance v0, Lim/doit/pro/activity/GoalDetailActivity$2;

    invoke-direct {v0, p0}, Lim/doit/pro/activity/GoalDetailActivity$2;-><init>(Lim/doit/pro/activity/GoalDetailActivity;)V

    iput-object v0, p0, Lim/doit/pro/activity/GoalDetailActivity;->onCancelClick:Landroid/view/View$OnClickListener;

    .line 28
    return-void
.end method

.method static synthetic access$0(Lim/doit/pro/activity/GoalDetailActivity;)Z
    .locals 1

    .prologue
    .line 214
    invoke-direct {p0}, Lim/doit/pro/activity/GoalDetailActivity;->saveGoal()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1(Lim/doit/pro/activity/GoalDetailActivity;)Lim/doit/pro/model/Goal;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lim/doit/pro/activity/GoalDetailActivity;->mGoal:Lim/doit/pro/model/Goal;

    return-object v0
.end method

.method static synthetic access$2(Lim/doit/pro/activity/GoalDetailActivity;)V
    .locals 0

    .prologue
    .line 263
    invoke-direct {p0}, Lim/doit/pro/activity/GoalDetailActivity;->completeGoal()V

    return-void
.end method

.method static synthetic access$3(Lim/doit/pro/activity/GoalDetailActivity;)V
    .locals 0

    .prologue
    .line 104
    invoke-direct {p0}, Lim/doit/pro/activity/GoalDetailActivity;->setCompleteBtn()V

    return-void
.end method

.method static synthetic access$4(Lim/doit/pro/activity/GoalDetailActivity;)V
    .locals 0

    .prologue
    .line 175
    invoke-direct {p0}, Lim/doit/pro/activity/GoalDetailActivity;->setSaveBtnStatus()V

    return-void
.end method

.method static synthetic access$5(Lim/doit/pro/activity/GoalDetailActivity;)Lim/doit/pro/ui/component/NoEnterEditText;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lim/doit/pro/activity/GoalDetailActivity;->titleET:Lim/doit/pro/ui/component/NoEnterEditText;

    return-object v0
.end method

.method private completeGoal()V
    .locals 3

    .prologue
    .line 264
    new-instance v0, Lim/doit/pro/controller/CompleteGoal;

    invoke-direct {v0}, Lim/doit/pro/controller/CompleteGoal;-><init>()V

    iget-object v1, p0, Lim/doit/pro/activity/GoalDetailActivity;->mGoal:Lim/doit/pro/model/Goal;

    new-instance v2, Lim/doit/pro/activity/GoalDetailActivity$7;

    invoke-direct {v2, p0}, Lim/doit/pro/activity/GoalDetailActivity$7;-><init>(Lim/doit/pro/activity/GoalDetailActivity;)V

    invoke-virtual {v0, p0, v1, v2}, Lim/doit/pro/controller/CompleteGoal;->complete(Landroid/app/Activity;Lim/doit/pro/model/Goal;Lim/doit/pro/controller/CompleteGoal$CompleteGoalFinishListener;)V

    .line 273
    return-void
.end method

.method private focusOnTitle()V
    .locals 4

    .prologue
    .line 187
    iget-object v0, p0, Lim/doit/pro/activity/GoalDetailActivity;->titleET:Lim/doit/pro/ui/component/NoEnterEditText;

    new-instance v1, Lim/doit/pro/activity/GoalDetailActivity$6;

    invoke-direct {v1, p0}, Lim/doit/pro/activity/GoalDetailActivity$6;-><init>(Lim/doit/pro/activity/GoalDetailActivity;)V

    .line 192
    const-wide/16 v2, 0x64

    .line 187
    invoke-virtual {v0, v1, v2, v3}, Lim/doit/pro/ui/component/NoEnterEditText;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 193
    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    .line 47
    invoke-direct {p0}, Lim/doit/pro/activity/GoalDetailActivity;->initData()V

    .line 48
    invoke-direct {p0}, Lim/doit/pro/activity/GoalDetailActivity;->initView()V

    .line 49
    invoke-direct {p0}, Lim/doit/pro/activity/GoalDetailActivity;->initViewLengthLimit()V

    .line 50
    invoke-direct {p0}, Lim/doit/pro/activity/GoalDetailActivity;->initViewContent()V

    .line 51
    invoke-direct {p0}, Lim/doit/pro/activity/GoalDetailActivity;->initListener()V

    .line 52
    iget-object v0, p0, Lim/doit/pro/activity/GoalDetailActivity;->mGoal:Lim/doit/pro/model/Goal;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lim/doit/pro/model/Goal;->setChanged(Z)V

    .line 53
    invoke-direct {p0}, Lim/doit/pro/activity/GoalDetailActivity;->setSaveBtnStatus()V

    .line 54
    return-void
.end method

.method private initActionBar()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 74
    invoke-virtual {p0}, Lim/doit/pro/activity/GoalDetailActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 75
    .local v0, "actionBar":Landroid/app/ActionBar;
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 76
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 77
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 78
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayUseLogoEnabled(Z)V

    .line 79
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 80
    const v1, 0x7f03008d

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setCustomView(I)V

    .line 81
    return-void
.end method

.method private initData()V
    .locals 2

    .prologue
    .line 57
    invoke-virtual {p0}, Lim/doit/pro/activity/GoalDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "goal"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lim/doit/pro/model/Goal;

    iput-object v0, p0, Lim/doit/pro/activity/GoalDetailActivity;->mGoal:Lim/doit/pro/model/Goal;

    .line 58
    iget-object v0, p0, Lim/doit/pro/activity/GoalDetailActivity;->mGoal:Lim/doit/pro/model/Goal;

    if-nez v0, :cond_0

    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Lim/doit/pro/activity/GoalDetailActivity;->isCreate:Z

    .line 60
    new-instance v0, Lim/doit/pro/model/Goal;

    invoke-direct {v0}, Lim/doit/pro/model/Goal;-><init>()V

    iput-object v0, p0, Lim/doit/pro/activity/GoalDetailActivity;->mGoal:Lim/doit/pro/model/Goal;

    .line 62
    :cond_0
    return-void
.end method

.method private initListener()V
    .locals 3

    .prologue
    .line 132
    iget-object v0, p0, Lim/doit/pro/activity/GoalDetailActivity;->saveBtn:Landroid/widget/Button;

    iget-object v1, p0, Lim/doit/pro/activity/GoalDetailActivity;->onSaveClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    iget-object v0, p0, Lim/doit/pro/activity/GoalDetailActivity;->cancelBtn:Landroid/widget/Button;

    iget-object v1, p0, Lim/doit/pro/activity/GoalDetailActivity;->onCancelClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    iget-object v0, p0, Lim/doit/pro/activity/GoalDetailActivity;->completeBtn:Landroid/widget/ImageView;

    new-instance v1, Lim/doit/pro/activity/GoalDetailActivity$OnCompleteClick;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lim/doit/pro/activity/GoalDetailActivity$OnCompleteClick;-><init>(Lim/doit/pro/activity/GoalDetailActivity;Lim/doit/pro/activity/GoalDetailActivity$OnCompleteClick;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    iget-object v0, p0, Lim/doit/pro/activity/GoalDetailActivity;->mGoal:Lim/doit/pro/model/Goal;

    new-instance v1, Lim/doit/pro/activity/GoalDetailActivity$3;

    invoke-direct {v1, p0}, Lim/doit/pro/activity/GoalDetailActivity$3;-><init>(Lim/doit/pro/activity/GoalDetailActivity;)V

    invoke-virtual {v0, v1}, Lim/doit/pro/model/Goal;->setOnDataChangeListener(Lim/doit/pro/model/BaseEntity$OnPropertyChangeListener;)V

    .line 143
    iget-object v0, p0, Lim/doit/pro/activity/GoalDetailActivity;->titleET:Lim/doit/pro/ui/component/NoEnterEditText;

    new-instance v1, Lim/doit/pro/activity/GoalDetailActivity$4;

    invoke-direct {v1, p0}, Lim/doit/pro/activity/GoalDetailActivity$4;-><init>(Lim/doit/pro/activity/GoalDetailActivity;)V

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/NoEnterEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 158
    iget-object v0, p0, Lim/doit/pro/activity/GoalDetailActivity;->notesET:Lim/doit/pro/ui/component/DEditText;

    new-instance v1, Lim/doit/pro/activity/GoalDetailActivity$5;

    invoke-direct {v1, p0}, Lim/doit/pro/activity/GoalDetailActivity$5;-><init>(Lim/doit/pro/activity/GoalDetailActivity;)V

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/DEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 173
    return-void
.end method

.method private initView()V
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0}, Lim/doit/pro/activity/GoalDetailActivity;->initActionBar()V

    .line 66
    const v0, 0x7f0b0092

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/GoalDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lim/doit/pro/activity/GoalDetailActivity;->cancelBtn:Landroid/widget/Button;

    .line 67
    const v0, 0x7f0b0150

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/GoalDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lim/doit/pro/activity/GoalDetailActivity;->saveBtn:Landroid/widget/Button;

    .line 68
    const v0, 0x7f0b008c

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/GoalDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lim/doit/pro/activity/GoalDetailActivity;->completeBtn:Landroid/widget/ImageView;

    .line 69
    const v0, 0x7f0b003a

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/GoalDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lim/doit/pro/ui/component/NoEnterEditText;

    iput-object v0, p0, Lim/doit/pro/activity/GoalDetailActivity;->titleET:Lim/doit/pro/ui/component/NoEnterEditText;

    .line 70
    const v0, 0x7f0b006d

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/GoalDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lim/doit/pro/ui/component/DEditText;

    iput-object v0, p0, Lim/doit/pro/activity/GoalDetailActivity;->notesET:Lim/doit/pro/ui/component/DEditText;

    .line 71
    return-void
.end method

.method private initViewContent()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 84
    iget-boolean v0, p0, Lim/doit/pro/activity/GoalDetailActivity;->isCreate:Z

    if-eqz v0, :cond_0

    .line 86
    invoke-direct {p0}, Lim/doit/pro/activity/GoalDetailActivity;->focusOnTitle()V

    .line 88
    :cond_0
    invoke-direct {p0}, Lim/doit/pro/activity/GoalDetailActivity;->setCompleteBtn()V

    .line 89
    iget-object v0, p0, Lim/doit/pro/activity/GoalDetailActivity;->titleET:Lim/doit/pro/ui/component/NoEnterEditText;

    iget-object v1, p0, Lim/doit/pro/activity/GoalDetailActivity;->mGoal:Lim/doit/pro/model/Goal;

    invoke-virtual {v1}, Lim/doit/pro/model/Goal;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/NoEnterEditText;->setText(Ljava/lang/CharSequence;)V

    .line 90
    iget-object v0, p0, Lim/doit/pro/activity/GoalDetailActivity;->notesET:Lim/doit/pro/ui/component/DEditText;

    iget-object v1, p0, Lim/doit/pro/activity/GoalDetailActivity;->mGoal:Lim/doit/pro/model/Goal;

    invoke-virtual {v1}, Lim/doit/pro/model/Goal;->getNotes()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/DEditText;->setText(Ljava/lang/CharSequence;)V

    .line 91
    iget-object v0, p0, Lim/doit/pro/activity/GoalDetailActivity;->mGoal:Lim/doit/pro/model/Goal;

    invoke-virtual {v0}, Lim/doit/pro/model/Goal;->isNotEditable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 92
    iget-object v0, p0, Lim/doit/pro/activity/GoalDetailActivity;->titleET:Lim/doit/pro/ui/component/NoEnterEditText;

    invoke-virtual {v0, v2}, Lim/doit/pro/ui/component/NoEnterEditText;->setEditable(Z)V

    .line 93
    iget-object v0, p0, Lim/doit/pro/activity/GoalDetailActivity;->notesET:Lim/doit/pro/ui/component/DEditText;

    invoke-virtual {v0, v2}, Lim/doit/pro/ui/component/DEditText;->setEditable(Z)V

    .line 95
    iget-object v0, p0, Lim/doit/pro/activity/GoalDetailActivity;->mGoal:Lim/doit/pro/model/Goal;

    invoke-virtual {v0}, Lim/doit/pro/model/Goal;->getNotes()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lim/doit/pro/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 96
    iget-object v0, p0, Lim/doit/pro/activity/GoalDetailActivity;->notesET:Lim/doit/pro/ui/component/DEditText;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/DEditText;->setVisibility(I)V

    .line 102
    :cond_1
    :goto_0
    return-void

    .line 99
    :cond_2
    iget-object v0, p0, Lim/doit/pro/activity/GoalDetailActivity;->titleET:Lim/doit/pro/ui/component/NoEnterEditText;

    invoke-virtual {v0, v3}, Lim/doit/pro/ui/component/NoEnterEditText;->setEditable(Z)V

    .line 100
    iget-object v0, p0, Lim/doit/pro/activity/GoalDetailActivity;->notesET:Lim/doit/pro/ui/component/DEditText;

    invoke-virtual {v0, v3}, Lim/doit/pro/ui/component/DEditText;->setEditable(Z)V

    goto :goto_0
.end method

.method private initViewLengthLimit()V
    .locals 0

    .prologue
    .line 120
    invoke-direct {p0}, Lim/doit/pro/activity/GoalDetailActivity;->setNoteEditViewLengthLimit()V

    .line 121
    return-void
.end method

.method private saveGoal()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 216
    iget-object v2, p0, Lim/doit/pro/activity/GoalDetailActivity;->mGoal:Lim/doit/pro/model/Goal;

    invoke-virtual {v2}, Lim/doit/pro/model/Goal;->isChanged()Z

    move-result v2

    if-nez v2, :cond_0

    .line 217
    const-string v1, "goal is not changed"

    invoke-static {v1}, Lim/doit/pro/utils/Logger;->d(Ljava/lang/Object;)V

    .line 239
    :goto_0
    return v0

    .line 221
    :cond_0
    iget-object v2, p0, Lim/doit/pro/activity/GoalDetailActivity;->mGoal:Lim/doit/pro/model/Goal;

    invoke-virtual {v2}, Lim/doit/pro/model/Goal;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lim/doit/pro/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 222
    const-string v0, "goal title is null"

    invoke-static {v0}, Lim/doit/pro/utils/Logger;->d(Ljava/lang/Object;)V

    .line 223
    iget-object v0, p0, Lim/doit/pro/activity/GoalDetailActivity;->titleET:Lim/doit/pro/ui/component/NoEnterEditText;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lim/doit/pro/ui/component/NoEnterEditText;->setText(Ljava/lang/CharSequence;)V

    .line 224
    iget-object v0, p0, Lim/doit/pro/activity/GoalDetailActivity;->titleET:Lim/doit/pro/ui/component/NoEnterEditText;

    const v2, 0x7f0c0089

    invoke-virtual {v0, v2}, Lim/doit/pro/ui/component/NoEnterEditText;->setHint(I)V

    .line 225
    invoke-direct {p0}, Lim/doit/pro/activity/GoalDetailActivity;->focusOnTitle()V

    move v0, v1

    .line 226
    goto :goto_0

    .line 228
    :cond_1
    iget-object v2, p0, Lim/doit/pro/activity/GoalDetailActivity;->mGoal:Lim/doit/pro/model/Goal;

    invoke-virtual {v2}, Lim/doit/pro/model/Goal;->getUuid()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lim/doit/pro/activity/GoalDetailActivity;->mGoal:Lim/doit/pro/model/Goal;

    invoke-virtual {v3}, Lim/doit/pro/model/Goal;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lim/doit/pro/utils/ToastUtils;->GoalExist(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    .line 229
    goto :goto_0

    .line 231
    :cond_2
    iget-boolean v2, p0, Lim/doit/pro/activity/GoalDetailActivity;->isCreate:Z

    if-eqz v2, :cond_3

    .line 232
    iget-object v2, p0, Lim/doit/pro/activity/GoalDetailActivity;->mGoal:Lim/doit/pro/model/Goal;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lim/doit/pro/model/Goal;->setUuid(Ljava/lang/String;)V

    .line 233
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v2

    iget-object v2, v2, Lim/doit/pro/db/Persist;->goalDao:Lim/doit/pro/db/persist/GoalDao;

    iget-object v3, p0, Lim/doit/pro/activity/GoalDetailActivity;->mGoal:Lim/doit/pro/model/Goal;

    invoke-virtual {v2, v3}, Lim/doit/pro/db/persist/GoalDao;->createAndSaveLog(Lim/doit/pro/model/Goal;)V

    .line 237
    :goto_1
    iget-object v2, p0, Lim/doit/pro/activity/GoalDetailActivity;->mGoal:Lim/doit/pro/model/Goal;

    invoke-virtual {v2, v1}, Lim/doit/pro/model/Goal;->setChanged(Z)V

    .line 238
    iput-boolean v1, p0, Lim/doit/pro/activity/GoalDetailActivity;->isCreate:Z

    goto :goto_0

    .line 235
    :cond_3
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v2

    iget-object v2, v2, Lim/doit/pro/db/Persist;->goalDao:Lim/doit/pro/db/persist/GoalDao;

    iget-object v3, p0, Lim/doit/pro/activity/GoalDetailActivity;->mGoal:Lim/doit/pro/model/Goal;

    invoke-virtual {v2, v3}, Lim/doit/pro/db/persist/GoalDao;->updateAndSaveLog(Lim/doit/pro/model/Goal;)V

    goto :goto_1
.end method

.method private setCompleteBtn()V
    .locals 6

    .prologue
    const v5, 0x7f09004c

    const/4 v4, 0x0

    .line 105
    iget-boolean v0, p0, Lim/doit/pro/activity/GoalDetailActivity;->isCreate:Z

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lim/doit/pro/activity/GoalDetailActivity;->completeBtn:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 107
    iget-object v0, p0, Lim/doit/pro/activity/GoalDetailActivity;->titleET:Lim/doit/pro/ui/component/NoEnterEditText;

    invoke-static {v5}, Lim/doit/pro/activity/utils/ViewUtils;->getDimens(I)F

    move-result v1

    float-to-int v1, v1

    iget-object v2, p0, Lim/doit/pro/activity/GoalDetailActivity;->titleET:Lim/doit/pro/ui/component/NoEnterEditText;

    invoke-virtual {v2}, Lim/doit/pro/ui/component/NoEnterEditText;->getPaddingTop()I

    move-result v2

    iget-object v3, p0, Lim/doit/pro/activity/GoalDetailActivity;->titleET:Lim/doit/pro/ui/component/NoEnterEditText;

    invoke-virtual {v3}, Lim/doit/pro/ui/component/NoEnterEditText;->getPaddingRight()I

    move-result v3

    .line 108
    iget-object v4, p0, Lim/doit/pro/activity/GoalDetailActivity;->titleET:Lim/doit/pro/ui/component/NoEnterEditText;

    invoke-virtual {v4}, Lim/doit/pro/ui/component/NoEnterEditText;->getPaddingBottom()I

    move-result v4

    .line 107
    invoke-virtual {v0, v1, v2, v3, v4}, Lim/doit/pro/ui/component/NoEnterEditText;->setPadding(IIII)V

    .line 109
    iget-object v0, p0, Lim/doit/pro/activity/GoalDetailActivity;->notesET:Lim/doit/pro/ui/component/DEditText;

    invoke-static {v5}, Lim/doit/pro/activity/utils/ViewUtils;->getDimens(I)F

    move-result v1

    float-to-int v1, v1

    iget-object v2, p0, Lim/doit/pro/activity/GoalDetailActivity;->notesET:Lim/doit/pro/ui/component/DEditText;

    invoke-virtual {v2}, Lim/doit/pro/ui/component/DEditText;->getPaddingTop()I

    move-result v2

    iget-object v3, p0, Lim/doit/pro/activity/GoalDetailActivity;->notesET:Lim/doit/pro/ui/component/DEditText;

    invoke-virtual {v3}, Lim/doit/pro/ui/component/DEditText;->getPaddingRight()I

    move-result v3

    .line 110
    iget-object v4, p0, Lim/doit/pro/activity/GoalDetailActivity;->notesET:Lim/doit/pro/ui/component/DEditText;

    invoke-virtual {v4}, Lim/doit/pro/ui/component/DEditText;->getPaddingBottom()I

    move-result v4

    .line 109
    invoke-virtual {v0, v1, v2, v3, v4}, Lim/doit/pro/ui/component/DEditText;->setPadding(IIII)V

    .line 116
    :goto_0
    iget-object v0, p0, Lim/doit/pro/activity/GoalDetailActivity;->completeBtn:Landroid/widget/ImageView;

    iget-object v1, p0, Lim/doit/pro/activity/GoalDetailActivity;->mGoal:Lim/doit/pro/model/Goal;

    invoke-virtual {v1}, Lim/doit/pro/model/Goal;->isEditable()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 117
    return-void

    .line 112
    :cond_0
    iget-object v0, p0, Lim/doit/pro/activity/GoalDetailActivity;->mGoal:Lim/doit/pro/model/Goal;

    iget-object v1, p0, Lim/doit/pro/activity/GoalDetailActivity;->completeBtn:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lim/doit/pro/activity/utils/ViewUtils;->setCompleteViewContent(Lim/doit/pro/model/BaseEntityWithPos;Landroid/widget/ImageView;)V

    .line 113
    iget-object v0, p0, Lim/doit/pro/activity/GoalDetailActivity;->titleET:Lim/doit/pro/ui/component/NoEnterEditText;

    iget-object v1, p0, Lim/doit/pro/activity/GoalDetailActivity;->titleET:Lim/doit/pro/ui/component/NoEnterEditText;

    invoke-virtual {v1}, Lim/doit/pro/ui/component/NoEnterEditText;->getPaddingTop()I

    move-result v1

    iget-object v2, p0, Lim/doit/pro/activity/GoalDetailActivity;->titleET:Lim/doit/pro/ui/component/NoEnterEditText;

    invoke-virtual {v2}, Lim/doit/pro/ui/component/NoEnterEditText;->getPaddingRight()I

    move-result v2

    iget-object v3, p0, Lim/doit/pro/activity/GoalDetailActivity;->titleET:Lim/doit/pro/ui/component/NoEnterEditText;

    invoke-virtual {v3}, Lim/doit/pro/ui/component/NoEnterEditText;->getPaddingBottom()I

    move-result v3

    invoke-virtual {v0, v4, v1, v2, v3}, Lim/doit/pro/ui/component/NoEnterEditText;->setPadding(IIII)V

    .line 114
    iget-object v0, p0, Lim/doit/pro/activity/GoalDetailActivity;->notesET:Lim/doit/pro/ui/component/DEditText;

    iget-object v1, p0, Lim/doit/pro/activity/GoalDetailActivity;->notesET:Lim/doit/pro/ui/component/DEditText;

    invoke-virtual {v1}, Lim/doit/pro/ui/component/DEditText;->getPaddingTop()I

    move-result v1

    iget-object v2, p0, Lim/doit/pro/activity/GoalDetailActivity;->notesET:Lim/doit/pro/ui/component/DEditText;

    invoke-virtual {v2}, Lim/doit/pro/ui/component/DEditText;->getPaddingRight()I

    move-result v2

    iget-object v3, p0, Lim/doit/pro/activity/GoalDetailActivity;->notesET:Lim/doit/pro/ui/component/DEditText;

    invoke-virtual {v3}, Lim/doit/pro/ui/component/DEditText;->getPaddingBottom()I

    move-result v3

    invoke-virtual {v0, v4, v1, v2, v3}, Lim/doit/pro/ui/component/DEditText;->setPadding(IIII)V

    goto :goto_0
.end method

.method private setNoteEditViewLengthLimit()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 124
    invoke-static {}, Lim/doit/pro/utils/UserUtils;->isValidPro()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lim/doit/pro/activity/GoalDetailActivity;->notesET:Lim/doit/pro/ui/component/DEditText;

    new-array v1, v1, [Landroid/text/InputFilter;

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    const v3, 0x7f0a0015

    invoke-static {v3}, Lim/doit/pro/activity/utils/ViewUtils;->getInteger(I)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/DEditText;->setFilters([Landroid/text/InputFilter;)V

    .line 129
    :goto_0
    return-void

    .line 127
    :cond_0
    iget-object v0, p0, Lim/doit/pro/activity/GoalDetailActivity;->notesET:Lim/doit/pro/ui/component/DEditText;

    new-array v1, v1, [Landroid/text/InputFilter;

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    const v3, 0x7f0a0014

    invoke-static {v3}, Lim/doit/pro/activity/utils/ViewUtils;->getInteger(I)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/DEditText;->setFilters([Landroid/text/InputFilter;)V

    goto :goto_0
.end method

.method private setSaveBtnStatus()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 176
    iget-boolean v0, p0, Lim/doit/pro/activity/GoalDetailActivity;->isCreate:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lim/doit/pro/activity/GoalDetailActivity;->mGoal:Lim/doit/pro/model/Goal;

    invoke-virtual {v0}, Lim/doit/pro/model/Goal;->isChanged()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 177
    :cond_0
    iget-object v2, p0, Lim/doit/pro/activity/GoalDetailActivity;->saveBtn:Landroid/widget/Button;

    iget-object v0, p0, Lim/doit/pro/activity/GoalDetailActivity;->mGoal:Lim/doit/pro/model/Goal;

    invoke-virtual {v0}, Lim/doit/pro/model/Goal;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lim/doit/pro/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 178
    iget-object v0, p0, Lim/doit/pro/activity/GoalDetailActivity;->saveBtn:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 183
    :goto_1
    invoke-virtual {p0}, Lim/doit/pro/activity/GoalDetailActivity;->invalidateOptionsMenu()V

    .line 184
    return-void

    .line 177
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 180
    :cond_2
    iget-object v0, p0, Lim/doit/pro/activity/GoalDetailActivity;->saveBtn:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 181
    iget-object v0, p0, Lim/doit/pro/activity/GoalDetailActivity;->saveBtn:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 41
    invoke-super {p0, p1}, Lim/doit/pro/activity/DSwipeBackBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    const v0, 0x7f03002a

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/GoalDetailActivity;->setContentView(I)V

    .line 43
    invoke-direct {p0}, Lim/doit/pro/activity/GoalDetailActivity;->init()V

    .line 44
    return-void
.end method
