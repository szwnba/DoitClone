.class public Lim/doit/pro/activity/TaskDetailActivity;
.super Lim/doit/pro/activity/DSwipeBackFragmentActivity;
.source "TaskDetailActivity.java"

# interfaces
.implements Lim/doit/pro/activity/TaskDetailFragment$TaskChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lim/doit/pro/activity/TaskDetailActivity$OnBackClick;,
        Lim/doit/pro/activity/TaskDetailActivity$OnCancelClick;,
        Lim/doit/pro/activity/TaskDetailActivity$OnReminderSnoozeClick;,
        Lim/doit/pro/activity/TaskDetailActivity$OnSaveBtnClick;,
        Lim/doit/pro/activity/TaskDetailActivity$OnSendBtnClick;
    }
.end annotation


# static fields
.field private static final REQUEST_SELECT_CONTACTS:I = 0x1

.field private static final TASK_DETAIL_FRAGMENT_TAG:Ljava/lang/String; = "task_detail_fragtment"


# instance fields
.field private final SCREEN_ON_TIME:I

.field private backBtn:Landroid/widget/ImageButton;

.field private cancelBtn:Landroid/widget/Button;

.field private isCreate:Z

.field private isDetailPopup:Z

.field private isReminderView:Z

.field private mTask:Lim/doit/pro/model/Task;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWindowFlags:I

.field private reminderSnoozeBtn:Landroid/widget/TextView;

.field private reminderSnoozeWrap:Landroid/widget/LinearLayout;

.field private saveBtn:Landroid/widget/Button;

.field private sendBtn:Landroid/widget/Button;

.field private sendDivider:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 43
    invoke-direct {p0}, Lim/doit/pro/activity/DSwipeBackFragmentActivity;-><init>()V

    .line 50
    const/16 v0, 0x2710

    iput v0, p0, Lim/doit/pro/activity/TaskDetailActivity;->SCREEN_ON_TIME:I

    .line 54
    iput-boolean v1, p0, Lim/doit/pro/activity/TaskDetailActivity;->isReminderView:Z

    iput-boolean v1, p0, Lim/doit/pro/activity/TaskDetailActivity;->isDetailPopup:Z

    .line 63
    const v0, 0x680080

    iput v0, p0, Lim/doit/pro/activity/TaskDetailActivity;->mWindowFlags:I

    .line 43
    return-void
.end method

.method static synthetic access$0(Lim/doit/pro/activity/TaskDetailActivity;)Lim/doit/pro/model/Task;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lim/doit/pro/activity/TaskDetailActivity;->mTask:Lim/doit/pro/model/Task;

    return-object v0
.end method

.method static synthetic access$1(Lim/doit/pro/activity/TaskDetailActivity;)V
    .locals 0

    .prologue
    .line 195
    invoke-direct {p0}, Lim/doit/pro/activity/TaskDetailActivity;->finishMyself()V

    return-void
.end method

.method static synthetic access$2(Lim/doit/pro/activity/TaskDetailActivity;)V
    .locals 0

    .prologue
    .line 187
    invoke-direct {p0}, Lim/doit/pro/activity/TaskDetailActivity;->saveAndFinish()V

    return-void
.end method

.method static synthetic access$3(Lim/doit/pro/activity/TaskDetailActivity;)V
    .locals 0

    .prologue
    .line 139
    invoke-direct {p0}, Lim/doit/pro/activity/TaskDetailActivity;->startSelectContacts()V

    return-void
.end method

.method static synthetic access$4(Lim/doit/pro/activity/TaskDetailActivity;)I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lim/doit/pro/activity/TaskDetailActivity;->mWindowFlags:I

    return v0
.end method

.method static synthetic access$5(Lim/doit/pro/activity/TaskDetailActivity;)Landroid/os/PowerManager$WakeLock;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lim/doit/pro/activity/TaskDetailActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method private acquireWakeLock()V
    .locals 3

    .prologue
    .line 247
    const-string v1, "power"

    invoke-virtual {p0, v1}, Lim/doit/pro/activity/TaskDetailActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 248
    .local v0, "pm":Landroid/os/PowerManager;
    const/4 v1, 0x1

    .line 249
    const-string v2, "remindPopup"

    .line 248
    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lim/doit/pro/activity/TaskDetailActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 250
    iget-object v1, p0, Lim/doit/pro/activity/TaskDetailActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 251
    invoke-virtual {p0}, Lim/doit/pro/activity/TaskDetailActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    iget v2, p0, Lim/doit/pro/activity/TaskDetailActivity;->mWindowFlags:I

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 252
    return-void
.end method

.method private finishMyself()V
    .locals 2

    .prologue
    .line 196
    invoke-virtual {p0}, Lim/doit/pro/activity/TaskDetailActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    .line 197
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/widget/EditText;

    if-eqz v1, :cond_0

    .line 198
    check-cast v0, Landroid/widget/EditText;

    .end local v0    # "view":Landroid/view/View;
    invoke-static {v0}, Lim/doit/pro/activity/utils/ViewUtils;->hideSoftKeyboard(Landroid/widget/EditText;)V

    .line 200
    :cond_0
    invoke-virtual {p0}, Lim/doit/pro/activity/TaskDetailActivity;->finish()V

    .line 201
    iget-boolean v1, p0, Lim/doit/pro/activity/TaskDetailActivity;->isReminderView:Z

    if-eqz v1, :cond_1

    .line 202
    invoke-static {p0}, Lim/doit/pro/utils/PlayReminderPopRingtone;->getInstance(Landroid/content/Context;)Lim/doit/pro/utils/PlayReminderPopRingtone;

    move-result-object v1

    invoke-virtual {v1}, Lim/doit/pro/utils/PlayReminderPopRingtone;->stop()V

    .line 204
    :cond_1
    return-void
.end method

.method private init()V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0}, Lim/doit/pro/activity/TaskDetailActivity;->initView()V

    .line 78
    invoke-direct {p0}, Lim/doit/pro/activity/TaskDetailActivity;->initDataAndViewContent()V

    .line 79
    invoke-direct {p0}, Lim/doit/pro/activity/TaskDetailActivity;->initListener()V

    .line 80
    return-void
.end method

.method private initActionBar()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 291
    invoke-virtual {p0}, Lim/doit/pro/activity/TaskDetailActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 292
    .local v0, "actionBar":Landroid/app/ActionBar;
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 293
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 294
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 295
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayUseLogoEnabled(Z)V

    .line 296
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 297
    const v1, 0x7f03009f

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setCustomView(I)V

    .line 298
    return-void
.end method

.method private initData()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 207
    iput-boolean v7, p0, Lim/doit/pro/activity/TaskDetailActivity;->isCreate:Z

    .line 208
    invoke-virtual {p0}, Lim/doit/pro/activity/TaskDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "task"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v4

    check-cast v4, Lim/doit/pro/model/Task;

    iput-object v4, p0, Lim/doit/pro/activity/TaskDetailActivity;->mTask:Lim/doit/pro/model/Task;

    .line 209
    iget-object v4, p0, Lim/doit/pro/activity/TaskDetailActivity;->mTask:Lim/doit/pro/model/Task;

    if-nez v4, :cond_3

    .line 210
    iput-boolean v8, p0, Lim/doit/pro/activity/TaskDetailActivity;->isCreate:Z

    .line 211
    invoke-virtual {p0}, Lim/doit/pro/activity/TaskDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "box"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lim/doit/pro/model/Box;

    .line 212
    .local v0, "box":Lim/doit/pro/model/Box;
    invoke-virtual {p0}, Lim/doit/pro/activity/TaskDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 213
    const-string v5, "project"

    .line 212
    invoke-virtual {v4, v5}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lim/doit/pro/model/Project;

    .line 214
    .local v2, "project":Lim/doit/pro/model/Project;
    invoke-virtual {p0}, Lim/doit/pro/activity/TaskDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 215
    const-string v5, "taskContext"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    .line 214
    check-cast v3, Lim/doit/pro/model/TaskContext;

    .line 216
    .local v3, "taskContext":Lim/doit/pro/model/TaskContext;
    invoke-virtual {p0}, Lim/doit/pro/activity/TaskDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "goal"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lim/doit/pro/model/Goal;

    .line 217
    .local v1, "goal":Lim/doit/pro/model/Goal;
    invoke-static {v0, v1, v2, v3}, Lim/doit/pro/utils/TaskUtils;->createTask(Lim/doit/pro/model/Box;Lim/doit/pro/model/Goal;Lim/doit/pro/model/Project;Lim/doit/pro/model/TaskContext;)Lim/doit/pro/model/Task;

    move-result-object v4

    iput-object v4, p0, Lim/doit/pro/activity/TaskDetailActivity;->mTask:Lim/doit/pro/model/Task;

    .line 228
    .end local v0    # "box":Lim/doit/pro/model/Box;
    .end local v1    # "goal":Lim/doit/pro/model/Goal;
    .end local v2    # "project":Lim/doit/pro/model/Project;
    .end local v3    # "taskContext":Lim/doit/pro/model/TaskContext;
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lim/doit/pro/activity/TaskDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 229
    const-string v5, "is_detail_popup"

    invoke-virtual {v4, v5, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 228
    iput-boolean v4, p0, Lim/doit/pro/activity/TaskDetailActivity;->isDetailPopup:Z

    .line 230
    invoke-virtual {p0}, Lim/doit/pro/activity/TaskDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "is_reminder_view"

    invoke-virtual {v4, v5, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lim/doit/pro/activity/TaskDetailActivity;->isReminderView:Z

    .line 233
    iget-boolean v4, p0, Lim/doit/pro/activity/TaskDetailActivity;->isReminderView:Z

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lim/doit/pro/activity/TaskDetailActivity;->isDetailPopup:Z

    if-nez v4, :cond_1

    .line 234
    invoke-static {p0}, Lim/doit/pro/utils/PlayReminderPopRingtone;->getInstance(Landroid/content/Context;)Lim/doit/pro/utils/PlayReminderPopRingtone;

    move-result-object v4

    invoke-virtual {v4}, Lim/doit/pro/utils/PlayReminderPopRingtone;->stop()V

    .line 236
    :cond_1
    iget-boolean v4, p0, Lim/doit/pro/activity/TaskDetailActivity;->isDetailPopup:Z

    if-eqz v4, :cond_2

    .line 237
    invoke-direct {p0}, Lim/doit/pro/activity/TaskDetailActivity;->wakeScreenUp()V

    .line 239
    :cond_2
    return-void

    .line 218
    :cond_3
    iget-object v4, p0, Lim/doit/pro/activity/TaskDetailActivity;->mTask:Lim/doit/pro/model/Task;

    invoke-virtual {v4}, Lim/doit/pro/model/Task;->getUuid()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lim/doit/pro/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 220
    iget-object v4, p0, Lim/doit/pro/activity/TaskDetailActivity;->mTask:Lim/doit/pro/model/Task;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lim/doit/pro/model/Task;->setUuid(Ljava/lang/String;)V

    .line 221
    iput-boolean v8, p0, Lim/doit/pro/activity/TaskDetailActivity;->isCreate:Z

    goto :goto_0

    .line 222
    :cond_4
    iget-object v4, p0, Lim/doit/pro/activity/TaskDetailActivity;->mTask:Lim/doit/pro/model/Task;

    invoke-virtual {v4}, Lim/doit/pro/model/Task;->getRepeatNo()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lim/doit/pro/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 223
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v4

    iget-object v4, v4, Lim/doit/pro/db/Persist;->taskDao:Lim/doit/pro/db/persist/TaskDao;

    iget-object v5, p0, Lim/doit/pro/activity/TaskDetailActivity;->mTask:Lim/doit/pro/model/Task;

    invoke-virtual {v5}, Lim/doit/pro/model/Task;->getUuid()Ljava/lang/String;

    move-result-object v5

    .line 224
    iget-object v6, p0, Lim/doit/pro/activity/TaskDetailActivity;->mTask:Lim/doit/pro/model/Task;

    invoke-virtual {v6}, Lim/doit/pro/model/Task;->getRepeatNo()Ljava/lang/String;

    move-result-object v6

    .line 223
    invoke-virtual {v4, v5, v6}, Lim/doit/pro/db/persist/TaskDao;->isExistedByUUID(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 224
    if-nez v4, :cond_0

    .line 226
    iput-boolean v8, p0, Lim/doit/pro/activity/TaskDetailActivity;->isCreate:Z

    goto :goto_0
.end method

.method private initDataAndViewContent()V
    .locals 2

    .prologue
    .line 167
    invoke-direct {p0}, Lim/doit/pro/activity/TaskDetailActivity;->initData()V

    .line 168
    invoke-direct {p0}, Lim/doit/pro/activity/TaskDetailActivity;->initViewContent()V

    .line 170
    iget-object v0, p0, Lim/doit/pro/activity/TaskDetailActivity;->mTask:Lim/doit/pro/model/Task;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lim/doit/pro/model/Task;->setChanged(Z)V

    .line 172
    iget-boolean v0, p0, Lim/doit/pro/activity/TaskDetailActivity;->isCreate:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lim/doit/pro/activity/TaskDetailActivity;->mTask:Lim/doit/pro/model/Task;

    invoke-virtual {v0}, Lim/doit/pro/model/Task;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lim/doit/pro/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lim/doit/pro/activity/TaskDetailActivity;->mTask:Lim/doit/pro/model/Task;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lim/doit/pro/model/Task;->setChanged(Z)V

    .line 175
    :cond_0
    invoke-direct {p0}, Lim/doit/pro/activity/TaskDetailActivity;->setTopBarBtnsStatus()V

    .line 176
    return-void
.end method

.method private initListener()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 283
    iget-object v0, p0, Lim/doit/pro/activity/TaskDetailActivity;->cancelBtn:Landroid/widget/Button;

    new-instance v1, Lim/doit/pro/activity/TaskDetailActivity$OnCancelClick;

    invoke-direct {v1, p0, v2}, Lim/doit/pro/activity/TaskDetailActivity$OnCancelClick;-><init>(Lim/doit/pro/activity/TaskDetailActivity;Lim/doit/pro/activity/TaskDetailActivity$OnCancelClick;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 284
    iget-object v0, p0, Lim/doit/pro/activity/TaskDetailActivity;->backBtn:Landroid/widget/ImageButton;

    new-instance v1, Lim/doit/pro/activity/TaskDetailActivity$OnBackClick;

    invoke-direct {v1, p0, v2}, Lim/doit/pro/activity/TaskDetailActivity$OnBackClick;-><init>(Lim/doit/pro/activity/TaskDetailActivity;Lim/doit/pro/activity/TaskDetailActivity$OnBackClick;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 285
    iget-object v0, p0, Lim/doit/pro/activity/TaskDetailActivity;->saveBtn:Landroid/widget/Button;

    new-instance v1, Lim/doit/pro/activity/TaskDetailActivity$OnSaveBtnClick;

    invoke-direct {v1, p0, v2}, Lim/doit/pro/activity/TaskDetailActivity$OnSaveBtnClick;-><init>(Lim/doit/pro/activity/TaskDetailActivity;Lim/doit/pro/activity/TaskDetailActivity$OnSaveBtnClick;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 286
    iget-object v0, p0, Lim/doit/pro/activity/TaskDetailActivity;->sendBtn:Landroid/widget/Button;

    new-instance v1, Lim/doit/pro/activity/TaskDetailActivity$OnSendBtnClick;

    invoke-direct {v1, p0, v2}, Lim/doit/pro/activity/TaskDetailActivity$OnSendBtnClick;-><init>(Lim/doit/pro/activity/TaskDetailActivity;Lim/doit/pro/activity/TaskDetailActivity$OnSendBtnClick;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 287
    iget-object v0, p0, Lim/doit/pro/activity/TaskDetailActivity;->reminderSnoozeBtn:Landroid/widget/TextView;

    new-instance v1, Lim/doit/pro/activity/TaskDetailActivity$OnReminderSnoozeClick;

    invoke-direct {v1, p0, v2}, Lim/doit/pro/activity/TaskDetailActivity$OnReminderSnoozeClick;-><init>(Lim/doit/pro/activity/TaskDetailActivity;Lim/doit/pro/activity/TaskDetailActivity$OnReminderSnoozeClick;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 288
    return-void
.end method

.method private initView()V
    .locals 1

    .prologue
    .line 272
    invoke-direct {p0}, Lim/doit/pro/activity/TaskDetailActivity;->initActionBar()V

    .line 273
    const v0, 0x7f0b0092

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/TaskDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lim/doit/pro/activity/TaskDetailActivity;->cancelBtn:Landroid/widget/Button;

    .line 274
    const v0, 0x7f0b00ca

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/TaskDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lim/doit/pro/activity/TaskDetailActivity;->backBtn:Landroid/widget/ImageButton;

    .line 275
    const v0, 0x7f0b0150

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/TaskDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lim/doit/pro/activity/TaskDetailActivity;->saveBtn:Landroid/widget/Button;

    .line 276
    const v0, 0x7f0b0152

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/TaskDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lim/doit/pro/activity/TaskDetailActivity;->sendBtn:Landroid/widget/Button;

    .line 277
    const v0, 0x7f0b0082

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/TaskDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lim/doit/pro/activity/TaskDetailActivity;->sendDivider:Landroid/view/View;

    .line 278
    const v0, 0x7f0b00d1

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/TaskDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lim/doit/pro/activity/TaskDetailActivity;->reminderSnoozeWrap:Landroid/widget/LinearLayout;

    .line 279
    const v0, 0x7f0b00d2

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/TaskDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lim/doit/pro/activity/TaskDetailActivity;->reminderSnoozeBtn:Landroid/widget/TextView;

    .line 280
    return-void
.end method

.method private initViewContent()V
    .locals 4

    .prologue
    .line 301
    iget-object v2, p0, Lim/doit/pro/activity/TaskDetailActivity;->mTask:Lim/doit/pro/model/Task;

    iget-boolean v3, p0, Lim/doit/pro/activity/TaskDetailActivity;->isCreate:Z

    invoke-static {v2, v3}, Lim/doit/pro/activity/TaskDetailFragment;->newInstance(Lim/doit/pro/model/Task;Z)Lim/doit/pro/activity/TaskDetailFragment;

    move-result-object v0

    .line 302
    .local v0, "fragment":Landroid/support/v4/app/Fragment;
    invoke-virtual {p0}, Lim/doit/pro/activity/TaskDetailActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    .line 303
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 304
    .local v1, "transaction":Landroid/support/v4/app/FragmentTransaction;
    const v2, 0x7f0b00b4

    .line 305
    const-string v3, "task_detail_fragtment"

    .line 304
    invoke-virtual {v1, v2, v0, v3}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 306
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 307
    invoke-direct {p0}, Lim/doit/pro/activity/TaskDetailActivity;->setReminderSnoozeViewContent()V

    .line 308
    return-void
.end method

.method private releaseWakeLock()V
    .locals 4

    .prologue
    .line 255
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    new-instance v1, Lim/doit/pro/activity/TaskDetailActivity$1;

    invoke-direct {v1, p0}, Lim/doit/pro/activity/TaskDetailActivity$1;-><init>(Lim/doit/pro/activity/TaskDetailActivity;)V

    .line 268
    const-wide/16 v2, 0x2710

    .line 255
    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 269
    return-void
.end method

.method private saveAndFinish()V
    .locals 2

    .prologue
    .line 188
    invoke-direct {p0}, Lim/doit/pro/activity/TaskDetailActivity;->saveTask()Z

    move-result v0

    .line 189
    .local v0, "success":Z
    if-eqz v0, :cond_0

    .line 190
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lim/doit/pro/activity/TaskDetailActivity;->setResult(I)V

    .line 191
    invoke-direct {p0}, Lim/doit/pro/activity/TaskDetailActivity;->finishMyself()V

    .line 193
    :cond_0
    return-void
.end method

.method private saveTask()Z
    .locals 3

    .prologue
    .line 179
    invoke-virtual {p0}, Lim/doit/pro/activity/TaskDetailActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 180
    const-string v2, "task_detail_fragtment"

    .line 179
    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 181
    .local v0, "fragment":Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_0

    .line 182
    check-cast v0, Lim/doit/pro/activity/TaskDetailFragment;

    .end local v0    # "fragment":Landroid/support/v4/app/Fragment;
    invoke-virtual {v0}, Lim/doit/pro/activity/TaskDetailFragment;->saveTask()Z

    move-result v1

    .line 184
    :goto_0
    return v1

    .restart local v0    # "fragment":Landroid/support/v4/app/Fragment;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private sendTask(Landroid/content/Intent;)V
    .locals 5
    .param p1, "data"    # Landroid/content/Intent;

    .prologue
    .line 415
    invoke-virtual {p0}, Lim/doit/pro/activity/TaskDetailActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    .line 416
    const-string v4, "task_detail_fragtment"

    .line 415
    invoke-virtual {v3, v4}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 417
    .local v0, "fragment":Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_0

    .line 418
    const-string v3, "auto_complete"

    .line 419
    const/4 v4, 0x1

    .line 418
    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 421
    .local v1, "isAutoComplete":Z
    const-string v3, "contacts"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    .line 420
    check-cast v2, Ljava/util/ArrayList;

    .line 422
    .local v2, "selectedContacts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/Contact;>;"
    check-cast v0, Lim/doit/pro/activity/TaskDetailFragment;

    .end local v0    # "fragment":Landroid/support/v4/app/Fragment;
    invoke-virtual {v0, v1, v2}, Lim/doit/pro/activity/TaskDetailFragment;->sendTask(ZLjava/util/ArrayList;)V

    .line 425
    .end local v1    # "isAutoComplete":Z
    .end local v2    # "selectedContacts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/Contact;>;"
    :cond_0
    return-void
.end method

.method private setLeftButtonViewContent()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 398
    iget-boolean v0, p0, Lim/doit/pro/activity/TaskDetailActivity;->isCreate:Z

    if-eqz v0, :cond_0

    .line 399
    iget-object v0, p0, Lim/doit/pro/activity/TaskDetailActivity;->backBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 400
    iget-object v0, p0, Lim/doit/pro/activity/TaskDetailActivity;->cancelBtn:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 412
    :goto_0
    return-void

    .line 403
    :cond_0
    iget-boolean v0, p0, Lim/doit/pro/activity/TaskDetailActivity;->isDetailPopup:Z

    if-eqz v0, :cond_1

    .line 404
    iget-object v0, p0, Lim/doit/pro/activity/TaskDetailActivity;->cancelBtn:Landroid/widget/Button;

    const v1, 0x7f0c0029

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 405
    iget-object v0, p0, Lim/doit/pro/activity/TaskDetailActivity;->cancelBtn:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 406
    iget-object v0, p0, Lim/doit/pro/activity/TaskDetailActivity;->backBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    .line 408
    :cond_1
    iget-object v0, p0, Lim/doit/pro/activity/TaskDetailActivity;->backBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 409
    iget-object v0, p0, Lim/doit/pro/activity/TaskDetailActivity;->cancelBtn:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method private setReminderSnoozeViewContent()V
    .locals 2

    .prologue
    .line 311
    iget-boolean v0, p0, Lim/doit/pro/activity/TaskDetailActivity;->isDetailPopup:Z

    if-eqz v0, :cond_0

    .line 312
    iget-object v0, p0, Lim/doit/pro/activity/TaskDetailActivity;->reminderSnoozeWrap:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 316
    :goto_0
    return-void

    .line 314
    :cond_0
    iget-object v0, p0, Lim/doit/pro/activity/TaskDetailActivity;->reminderSnoozeWrap:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private setTopBarBtnsStatus()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/16 v4, 0x8

    const/4 v1, 0x0

    .line 375
    iget-object v0, p0, Lim/doit/pro/activity/TaskDetailActivity;->mTask:Lim/doit/pro/model/Task;

    invoke-virtual {v0}, Lim/doit/pro/model/Task;->isNotEditable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 376
    iget-object v0, p0, Lim/doit/pro/activity/TaskDetailActivity;->saveBtn:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 377
    iget-object v0, p0, Lim/doit/pro/activity/TaskDetailActivity;->saveBtn:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 385
    :goto_0
    iget-boolean v0, p0, Lim/doit/pro/activity/TaskDetailActivity;->isCreate:Z

    if-eqz v0, :cond_4

    .line 386
    iget-object v0, p0, Lim/doit/pro/activity/TaskDetailActivity;->sendBtn:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 387
    iget-object v0, p0, Lim/doit/pro/activity/TaskDetailActivity;->sendDivider:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 388
    iget-object v0, p0, Lim/doit/pro/activity/TaskDetailActivity;->sendBtn:Landroid/widget/Button;

    iget-object v3, p0, Lim/doit/pro/activity/TaskDetailActivity;->mTask:Lim/doit/pro/model/Task;

    invoke-virtual {v3}, Lim/doit/pro/model/Task;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lim/doit/pro/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 393
    :goto_2
    invoke-direct {p0}, Lim/doit/pro/activity/TaskDetailActivity;->setLeftButtonViewContent()V

    .line 394
    invoke-virtual {p0}, Lim/doit/pro/activity/TaskDetailActivity;->invalidateOptionsMenu()V

    .line 395
    return-void

    .line 378
    :cond_0
    iget-boolean v0, p0, Lim/doit/pro/activity/TaskDetailActivity;->isCreate:Z

    if-eqz v0, :cond_2

    .line 379
    iget-object v3, p0, Lim/doit/pro/activity/TaskDetailActivity;->saveBtn:Landroid/widget/Button;

    iget-object v0, p0, Lim/doit/pro/activity/TaskDetailActivity;->mTask:Lim/doit/pro/model/Task;

    invoke-virtual {v0}, Lim/doit/pro/model/Task;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lim/doit/pro/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_3
    invoke-virtual {v3, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 380
    iget-object v0, p0, Lim/doit/pro/activity/TaskDetailActivity;->saveBtn:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    :cond_1
    move v0, v2

    .line 379
    goto :goto_3

    .line 382
    :cond_2
    iget-object v0, p0, Lim/doit/pro/activity/TaskDetailActivity;->saveBtn:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 383
    iget-object v0, p0, Lim/doit/pro/activity/TaskDetailActivity;->saveBtn:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    :cond_3
    move v1, v2

    .line 388
    goto :goto_1

    .line 390
    :cond_4
    iget-object v0, p0, Lim/doit/pro/activity/TaskDetailActivity;->sendBtn:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 391
    iget-object v0, p0, Lim/doit/pro/activity/TaskDetailActivity;->sendDivider:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2
.end method

.method private showAddCommentDialog()V
    .locals 2

    .prologue
    .line 348
    invoke-static {p0}, Lim/doit/pro/ui/component/AddCommentDialog;->getInstance(Landroid/content/Context;)Lim/doit/pro/ui/component/AddCommentDialog;

    move-result-object v0

    .line 349
    .local v0, "dialog":Lim/doit/pro/ui/component/AddCommentDialog;
    new-instance v1, Lim/doit/pro/activity/TaskDetailActivity$2;

    invoke-direct {v1, p0}, Lim/doit/pro/activity/TaskDetailActivity$2;-><init>(Lim/doit/pro/activity/TaskDetailActivity;)V

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/AddCommentDialog;->setOnAddCommentFinishListner(Lim/doit/pro/ui/component/AddCommentDialog$OnAddCommentFinishListner;)V

    .line 360
    invoke-virtual {v0}, Lim/doit/pro/ui/component/AddCommentDialog;->showDialog()V

    .line 361
    return-void
.end method

.method private startSelectContacts()V
    .locals 3

    .prologue
    .line 140
    new-instance v0, Landroid/content/Intent;

    .line 141
    const-class v1, Lim/doit/pro/activity/SelectContactsActivity;

    .line 140
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 142
    .local v0, "selectContactIntent":Landroid/content/Intent;
    const-string v1, "task"

    iget-object v2, p0, Lim/doit/pro/activity/TaskDetailActivity;->mTask:Lim/doit/pro/model/Task;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 143
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lim/doit/pro/activity/TaskDetailActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 144
    return-void
.end method

.method private wakeScreenUp()V
    .locals 0

    .prologue
    .line 242
    invoke-direct {p0}, Lim/doit/pro/activity/TaskDetailActivity;->acquireWakeLock()V

    .line 243
    invoke-direct {p0}, Lim/doit/pro/activity/TaskDetailActivity;->releaseWakeLock()V

    .line 244
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 148
    packed-switch p1, :pswitch_data_0

    .line 156
    invoke-virtual {p0}, Lim/doit/pro/activity/TaskDetailActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 157
    const-string v2, "task_detail_fragtment"

    .line 156
    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 158
    .local v0, "fragment":Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_0

    .line 159
    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 161
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lim/doit/pro/activity/DSwipeBackFragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 164
    .end local v0    # "fragment":Landroid/support/v4/app/Fragment;
    :cond_1
    :goto_0
    return-void

    .line 150
    :pswitch_0
    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    .line 151
    invoke-direct {p0, p3}, Lim/doit/pro/activity/TaskDetailActivity;->sendTask(Landroid/content/Intent;)V

    .line 152
    invoke-direct {p0}, Lim/doit/pro/activity/TaskDetailActivity;->finishMyself()V

    goto :goto_0

    .line 148
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 71
    invoke-super {p0, p1}, Lim/doit/pro/activity/DSwipeBackFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 72
    const v0, 0x7f030041

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/TaskDetailActivity;->setContentView(I)V

    .line 73
    invoke-direct {p0}, Lim/doit/pro/activity/TaskDetailActivity;->init()V

    .line 74
    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 3
    .param p1, "featureId"    # I
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v1, 0x1

    .line 128
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 129
    .local v0, "id":I
    const v2, 0x7f0b0226

    if-ne v0, v2, :cond_0

    .line 130
    invoke-direct {p0}, Lim/doit/pro/activity/TaskDetailActivity;->startSelectContacts()V

    .line 136
    :goto_0
    return v1

    .line 132
    :cond_0
    const v2, 0x7f0b0225

    if-ne v0, v2, :cond_1

    .line 133
    invoke-direct {p0}, Lim/doit/pro/activity/TaskDetailActivity;->showAddCommentDialog()V

    goto :goto_0

    .line 136
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 84
    invoke-super {p0, p1}, Lim/doit/pro/activity/DSwipeBackFragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 85
    invoke-virtual {p0, p1}, Lim/doit/pro/activity/TaskDetailActivity;->setIntent(Landroid/content/Intent;)V

    .line 86
    invoke-direct {p0}, Lim/doit/pro/activity/TaskDetailActivity;->init()V

    .line 87
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 91
    iget-boolean v0, p0, Lim/doit/pro/activity/TaskDetailActivity;->isCreate:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lim/doit/pro/activity/TaskDetailActivity;->mTask:Lim/doit/pro/model/Task;

    invoke-virtual {v0}, Lim/doit/pro/model/Task;->isChanged()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    invoke-direct {p0}, Lim/doit/pro/activity/TaskDetailActivity;->saveTask()Z

    .line 94
    :cond_0
    invoke-static {}, Lim/doit/pro/ui/component/AddCommentDialog;->finish()V

    .line 95
    invoke-super {p0}, Lim/doit/pro/activity/DSwipeBackFragmentActivity;->onPause()V

    .line 96
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 6
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 100
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 101
    invoke-virtual {p0}, Lim/doit/pro/activity/TaskDetailActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v2

    const v3, 0x7f0e0009

    invoke-virtual {v2, v3, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 102
    const v2, 0x7f0b0226

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 103
    .local v1, "sendToBtn":Landroid/view/MenuItem;
    const v2, 0x7f0b0225

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 104
    .local v0, "addComment":Landroid/view/MenuItem;
    iget-boolean v2, p0, Lim/doit/pro/activity/TaskDetailActivity;->isCreate:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lim/doit/pro/activity/TaskDetailActivity;->mTask:Lim/doit/pro/model/Task;

    invoke-virtual {v2}, Lim/doit/pro/model/Task;->isCannotSendTask()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 105
    :cond_0
    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 114
    :goto_0
    iget-object v2, p0, Lim/doit/pro/activity/TaskDetailActivity;->mTask:Lim/doit/pro/model/Task;

    invoke-virtual {v2}, Lim/doit/pro/model/Task;->isNotEditable()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 115
    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 123
    :cond_1
    :goto_1
    invoke-super {p0, p1}, Lim/doit/pro/activity/DSwipeBackFragmentActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v2

    return v2

    .line 108
    :cond_2
    iget-object v2, p0, Lim/doit/pro/activity/TaskDetailActivity;->mTask:Lim/doit/pro/model/Task;

    invoke-virtual {v2}, Lim/doit/pro/model/Task;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lim/doit/pro/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 109
    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 111
    :cond_3
    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 117
    :cond_4
    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 119
    iget-boolean v2, p0, Lim/doit/pro/activity/TaskDetailActivity;->isCreate:Z

    if-eqz v2, :cond_1

    .line 120
    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1
.end method

.method public onTaskChange(Lim/doit/pro/model/Task;)V
    .locals 0
    .param p1, "task"    # Lim/doit/pro/model/Task;

    .prologue
    .line 429
    iput-object p1, p0, Lim/doit/pro/activity/TaskDetailActivity;->mTask:Lim/doit/pro/model/Task;

    .line 430
    invoke-direct {p0}, Lim/doit/pro/activity/TaskDetailActivity;->setTopBarBtnsStatus()V

    .line 431
    return-void
.end method

.method public onTaskComplete(Lim/doit/pro/model/Task;)V
    .locals 0
    .param p1, "task"    # Lim/doit/pro/model/Task;

    .prologue
    .line 435
    iput-object p1, p0, Lim/doit/pro/activity/TaskDetailActivity;->mTask:Lim/doit/pro/model/Task;

    .line 436
    invoke-direct {p0}, Lim/doit/pro/activity/TaskDetailActivity;->finishMyself()V

    .line 437
    return-void
.end method

.method public setHideEmptyView(Z)V
    .locals 0
    .param p1, "show"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 442
    return-void
.end method
