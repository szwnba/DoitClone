.class public Lim/doit/pro/activity/SendTaskActivity;
.super Lim/doit/pro/activity/DSwipeBackFragmentActivity;
.source "SendTaskActivity.java"

# interfaces
.implements Lim/doit/pro/activity/TaskDetailFragment$TaskChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lim/doit/pro/activity/SendTaskActivity$OnCancelClick;,
        Lim/doit/pro/activity/SendTaskActivity$OnSendClick;
    }
.end annotation


# static fields
.field private static final TASK_DETAIL_FRAGMENT_TAG:Ljava/lang/String; = "task_detail_fragtment"


# instance fields
.field private cancelBtn:Landroid/widget/Button;

.field private mTask:Lim/doit/pro/model/Task;

.field private sendBtn:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lim/doit/pro/activity/DSwipeBackFragmentActivity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lim/doit/pro/activity/SendTaskActivity;)Lim/doit/pro/model/Task;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lim/doit/pro/activity/SendTaskActivity;->mTask:Lim/doit/pro/model/Task;

    return-object v0
.end method

.method static synthetic access$1(Lim/doit/pro/activity/SendTaskActivity;)V
    .locals 0

    .prologue
    .line 135
    invoke-direct {p0}, Lim/doit/pro/activity/SendTaskActivity;->sendTask()V

    return-void
.end method

.method static synthetic access$2(Lim/doit/pro/activity/SendTaskActivity;)V
    .locals 0

    .prologue
    .line 160
    invoke-direct {p0}, Lim/doit/pro/activity/SendTaskActivity;->finishMyself()V

    return-void
.end method

.method private finishMyself()V
    .locals 2

    .prologue
    .line 161
    invoke-virtual {p0}, Lim/doit/pro/activity/SendTaskActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    .line 162
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/widget/EditText;

    if-eqz v1, :cond_0

    .line 163
    check-cast v0, Landroid/widget/EditText;

    .end local v0    # "view":Landroid/view/View;
    invoke-static {v0}, Lim/doit/pro/activity/utils/ViewUtils;->hideSoftKeyboard(Landroid/widget/EditText;)V

    .line 165
    :cond_0
    invoke-virtual {p0}, Lim/doit/pro/activity/SendTaskActivity;->finish()V

    .line 166
    return-void
.end method

.method private init()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Lim/doit/pro/activity/SendTaskActivity;->initData()V

    .line 56
    invoke-direct {p0}, Lim/doit/pro/activity/SendTaskActivity;->initView()V

    .line 57
    invoke-direct {p0}, Lim/doit/pro/activity/SendTaskActivity;->initViewContent()V

    .line 58
    invoke-direct {p0}, Lim/doit/pro/activity/SendTaskActivity;->initListener()V

    .line 59
    return-void
.end method

.method private initActionBar()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 90
    invoke-virtual {p0}, Lim/doit/pro/activity/SendTaskActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 91
    .local v0, "actionBar":Landroid/app/ActionBar;
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 92
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 93
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 94
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayUseLogoEnabled(Z)V

    .line 95
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 96
    const v1, 0x7f03009a

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setCustomView(I)V

    .line 97
    return-void
.end method

.method private initData()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 62
    invoke-virtual {p0}, Lim/doit/pro/activity/SendTaskActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "uuid"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 63
    .local v4, "uuid":Ljava/lang/String;
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v5

    iget-object v5, v5, Lim/doit/pro/db/Persist;->contactDao:Lim/doit/pro/db/persist/ContactDao;

    invoke-virtual {v5, v4}, Lim/doit/pro/db/persist/ContactDao;->findByUUID(Ljava/lang/String;)Lim/doit/pro/model/BaseEntity;

    move-result-object v3

    check-cast v3, Lim/doit/pro/model/Contact;

    .line 64
    .local v3, "contact":Lim/doit/pro/model/Contact;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lim/doit/pro/model/Contact;->getDeleted()Ljava/util/Calendar;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 65
    :cond_0
    invoke-virtual {p0}, Lim/doit/pro/activity/SendTaskActivity;->finish()V

    .line 81
    :goto_0
    return-void

    .line 68
    :cond_1
    new-instance v0, Lim/doit/pro/model/Assignment;

    invoke-direct {v0}, Lim/doit/pro/model/Assignment;-><init>()V

    .line 69
    .local v0, "assignment":Lim/doit/pro/model/Assignment;
    invoke-virtual {v0, v7}, Lim/doit/pro/model/Assignment;->setAutocomplete(Z)V

    .line 70
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 71
    .local v2, "assignmentItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/AssignmentItem;>;"
    new-instance v1, Lim/doit/pro/model/AssignmentItem;

    invoke-direct {v1}, Lim/doit/pro/model/AssignmentItem;-><init>()V

    .line 72
    .local v1, "assignmentItem":Lim/doit/pro/model/AssignmentItem;
    invoke-virtual {v3}, Lim/doit/pro/model/Contact;->getUserId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lim/doit/pro/model/AssignmentItem;->setUserId(Ljava/lang/String;)V

    .line 73
    invoke-virtual {v3}, Lim/doit/pro/model/Contact;->getEmail()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lim/doit/pro/model/AssignmentItem;->setEmail(Ljava/lang/String;)V

    .line 74
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    invoke-virtual {v0, v2}, Lim/doit/pro/model/Assignment;->setItems(Ljava/util/ArrayList;)V

    .line 76
    new-instance v5, Lim/doit/pro/model/Task;

    invoke-direct {v5}, Lim/doit/pro/model/Task;-><init>()V

    iput-object v5, p0, Lim/doit/pro/activity/SendTaskActivity;->mTask:Lim/doit/pro/model/Task;

    .line 77
    iget-object v5, p0, Lim/doit/pro/activity/SendTaskActivity;->mTask:Lim/doit/pro/model/Task;

    invoke-virtual {v5, v7}, Lim/doit/pro/model/Task;->setAllDay(Z)V

    .line 78
    iget-object v5, p0, Lim/doit/pro/activity/SendTaskActivity;->mTask:Lim/doit/pro/model/Task;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lim/doit/pro/model/Task;->setUuid(Ljava/lang/String;)V

    .line 79
    iget-object v5, p0, Lim/doit/pro/activity/SendTaskActivity;->mTask:Lim/doit/pro/model/Task;

    sget-object v6, Lim/doit/pro/model/enums/Attribute;->waiting:Lim/doit/pro/model/enums/Attribute;

    invoke-virtual {v5, v6}, Lim/doit/pro/model/Task;->setAttribute(Lim/doit/pro/model/enums/Attribute;)V

    .line 80
    iget-object v5, p0, Lim/doit/pro/activity/SendTaskActivity;->mTask:Lim/doit/pro/model/Task;

    invoke-virtual {v5, v0}, Lim/doit/pro/model/Task;->setAssignment(Lim/doit/pro/model/Assignment;)V

    goto :goto_0
.end method

.method private initListener()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 115
    iget-object v0, p0, Lim/doit/pro/activity/SendTaskActivity;->cancelBtn:Landroid/widget/Button;

    new-instance v1, Lim/doit/pro/activity/SendTaskActivity$OnCancelClick;

    invoke-direct {v1, p0, v2}, Lim/doit/pro/activity/SendTaskActivity$OnCancelClick;-><init>(Lim/doit/pro/activity/SendTaskActivity;Lim/doit/pro/activity/SendTaskActivity$OnCancelClick;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    iget-object v0, p0, Lim/doit/pro/activity/SendTaskActivity;->sendBtn:Landroid/widget/Button;

    new-instance v1, Lim/doit/pro/activity/SendTaskActivity$OnSendClick;

    invoke-direct {v1, p0, v2}, Lim/doit/pro/activity/SendTaskActivity$OnSendClick;-><init>(Lim/doit/pro/activity/SendTaskActivity;Lim/doit/pro/activity/SendTaskActivity$OnSendClick;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    return-void
.end method

.method private initView()V
    .locals 1

    .prologue
    .line 84
    invoke-direct {p0}, Lim/doit/pro/activity/SendTaskActivity;->initActionBar()V

    .line 85
    const v0, 0x7f0b0092

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/SendTaskActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lim/doit/pro/activity/SendTaskActivity;->cancelBtn:Landroid/widget/Button;

    .line 86
    const v0, 0x7f0b0152

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/SendTaskActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lim/doit/pro/activity/SendTaskActivity;->sendBtn:Landroid/widget/Button;

    .line 87
    return-void
.end method

.method private initViewContent()V
    .locals 4

    .prologue
    .line 100
    iget-object v2, p0, Lim/doit/pro/activity/SendTaskActivity;->mTask:Lim/doit/pro/model/Task;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lim/doit/pro/activity/TaskDetailFragment;->newInstance(Lim/doit/pro/model/Task;Z)Lim/doit/pro/activity/TaskDetailFragment;

    move-result-object v0

    .line 101
    .local v0, "fragment":Landroid/support/v4/app/Fragment;
    invoke-virtual {p0}, Lim/doit/pro/activity/SendTaskActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    .line 102
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 103
    .local v1, "transaction":Landroid/support/v4/app/FragmentTransaction;
    const v2, 0x7f0b00b4

    .line 104
    const-string v3, "task_detail_fragtment"

    .line 103
    invoke-virtual {v1, v2, v0, v3}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 105
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 106
    invoke-direct {p0}, Lim/doit/pro/activity/SendTaskActivity;->setSaveBtnStatus()V

    .line 107
    return-void
.end method

.method private sendTask()V
    .locals 2

    .prologue
    .line 136
    iget-object v0, p0, Lim/doit/pro/activity/SendTaskActivity;->mTask:Lim/doit/pro/model/Task;

    invoke-virtual {v0}, Lim/doit/pro/model/Task;->clearSomethingBeforeSendTask()V

    .line 137
    iget-object v0, p0, Lim/doit/pro/activity/SendTaskActivity;->mTask:Lim/doit/pro/model/Task;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/model/Task;->setSentAt(Ljava/util/Calendar;)V

    .line 138
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v0

    iget-object v0, v0, Lim/doit/pro/db/Persist;->taskDao:Lim/doit/pro/db/persist/TaskDao;

    iget-object v1, p0, Lim/doit/pro/activity/SendTaskActivity;->mTask:Lim/doit/pro/model/Task;

    invoke-virtual {v0, v1}, Lim/doit/pro/db/persist/TaskDao;->createAndSaveLog(Lim/doit/pro/model/Task;)V

    .line 139
    iget-object v0, p0, Lim/doit/pro/activity/SendTaskActivity;->mTask:Lim/doit/pro/model/Task;

    invoke-static {v0}, Lim/doit/pro/utils/TaskUtils;->createCommentsAndSubTasks(Lim/doit/pro/model/Task;)V

    .line 140
    invoke-direct {p0}, Lim/doit/pro/activity/SendTaskActivity;->finishMyself()V

    .line 141
    return-void
.end method

.method private setSaveBtnStatus()V
    .locals 2

    .prologue
    .line 110
    iget-object v0, p0, Lim/doit/pro/activity/SendTaskActivity;->sendBtn:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 111
    iget-object v0, p0, Lim/doit/pro/activity/SendTaskActivity;->sendBtn:Landroid/widget/Button;

    iget-object v1, p0, Lim/doit/pro/activity/SendTaskActivity;->mTask:Lim/doit/pro/model/Task;

    invoke-virtual {v1}, Lim/doit/pro/model/Task;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lim/doit/pro/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 112
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 39
    invoke-virtual {p0}, Lim/doit/pro/activity/SendTaskActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 40
    const-string v2, "task_detail_fragtment"

    .line 39
    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 41
    .local v0, "fragment":Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lim/doit/pro/activity/TaskDetailFragment;

    if-eqz v1, :cond_0

    .line 42
    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 44
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lim/doit/pro/activity/DSwipeBackFragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 45
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 49
    invoke-super {p0, p1}, Lim/doit/pro/activity/DSwipeBackFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    const v0, 0x7f03003c

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/SendTaskActivity;->setContentView(I)V

    .line 51
    invoke-direct {p0}, Lim/doit/pro/activity/SendTaskActivity;->init()V

    .line 52
    return-void
.end method

.method public onTaskChange(Lim/doit/pro/model/Task;)V
    .locals 0
    .param p1, "task"    # Lim/doit/pro/model/Task;

    .prologue
    .line 145
    iput-object p1, p0, Lim/doit/pro/activity/SendTaskActivity;->mTask:Lim/doit/pro/model/Task;

    .line 146
    invoke-direct {p0}, Lim/doit/pro/activity/SendTaskActivity;->setSaveBtnStatus()V

    .line 147
    return-void
.end method

.method public onTaskComplete(Lim/doit/pro/model/Task;)V
    .locals 0
    .param p1, "task"    # Lim/doit/pro/model/Task;

    .prologue
    .line 151
    iput-object p1, p0, Lim/doit/pro/activity/SendTaskActivity;->mTask:Lim/doit/pro/model/Task;

    .line 152
    invoke-direct {p0}, Lim/doit/pro/activity/SendTaskActivity;->finishMyself()V

    .line 153
    return-void
.end method

.method public setHideEmptyView(Z)V
    .locals 0
    .param p1, "show"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 158
    return-void
.end method
