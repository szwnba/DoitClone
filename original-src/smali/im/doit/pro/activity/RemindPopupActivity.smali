.class public Lim/doit/pro/activity/RemindPopupActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "RemindPopupActivity.java"

# interfaces
.implements Lim/doit/pro/ui/component/ReminderPopupView$ReminderPopupViewButtonsListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lim/doit/pro/activity/RemindPopupActivity$ReminderPopupAdapter;
    }
.end annotation


# instance fields
.field private final SCREEN_ON_TIME:I

.field private currentPage:I

.field private mIndicator:Lim/doit/pro/ui/component/CirclePageIndicator;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWindowFlags:I

.field private popupAdapter:Lim/doit/pro/activity/RemindPopupActivity$ReminderPopupAdapter;

.field private popupPager:Landroid/support/v4/view/ViewPager;

.field private reminders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lim/doit/pro/db/metadata/ReminderMessage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 35
    const/16 v0, 0x2710

    iput v0, p0, Lim/doit/pro/activity/RemindPopupActivity;->SCREEN_ON_TIME:I

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lim/doit/pro/activity/RemindPopupActivity;->reminders:Ljava/util/ArrayList;

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Lim/doit/pro/activity/RemindPopupActivity;->currentPage:I

    .line 45
    const v0, 0x680080

    iput v0, p0, Lim/doit/pro/activity/RemindPopupActivity;->mWindowFlags:I

    .line 32
    return-void
.end method

.method static synthetic access$0(Lim/doit/pro/activity/RemindPopupActivity;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lim/doit/pro/activity/RemindPopupActivity;->reminders:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1(Lim/doit/pro/activity/RemindPopupActivity;I)V
    .locals 0

    .prologue
    .line 43
    iput p1, p0, Lim/doit/pro/activity/RemindPopupActivity;->currentPage:I

    return-void
.end method

.method static synthetic access$2(Lim/doit/pro/activity/RemindPopupActivity;)I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lim/doit/pro/activity/RemindPopupActivity;->mWindowFlags:I

    return v0
.end method

.method static synthetic access$3(Lim/doit/pro/activity/RemindPopupActivity;)Landroid/os/PowerManager$WakeLock;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lim/doit/pro/activity/RemindPopupActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method private acquireWakeLock()V
    .locals 3

    .prologue
    .line 154
    const-string v1, "power"

    invoke-virtual {p0, v1}, Lim/doit/pro/activity/RemindPopupActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 155
    .local v0, "pm":Landroid/os/PowerManager;
    const/4 v1, 0x1

    .line 156
    const-string v2, "remindPopup"

    .line 155
    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lim/doit/pro/activity/RemindPopupActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 157
    iget-object v1, p0, Lim/doit/pro/activity/RemindPopupActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 158
    invoke-virtual {p0}, Lim/doit/pro/activity/RemindPopupActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    iget v2, p0, Lim/doit/pro/activity/RemindPopupActivity;->mWindowFlags:I

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 159
    return-void
.end method

.method private cancelReminderNotification(Lim/doit/pro/db/metadata/ReminderMessage;)V
    .locals 2
    .param p1, "reminder"    # Lim/doit/pro/db/metadata/ReminderMessage;

    .prologue
    .line 256
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Lim/doit/pro/activity/RemindPopupActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 257
    .local v0, "manager":Landroid/app/NotificationManager;
    iget v1, p1, Lim/doit/pro/db/metadata/ReminderMessage;->notifyId:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 258
    return-void
.end method

.method private closeMessage()V
    .locals 2

    .prologue
    .line 232
    iget-object v0, p0, Lim/doit/pro/activity/RemindPopupActivity;->reminders:Ljava/util/ArrayList;

    iget v1, p0, Lim/doit/pro/activity/RemindPopupActivity;->currentPage:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 233
    iget v0, p0, Lim/doit/pro/activity/RemindPopupActivity;->currentPage:I

    iget-object v1, p0, Lim/doit/pro/activity/RemindPopupActivity;->reminders:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_2

    .line 234
    iget v0, p0, Lim/doit/pro/activity/RemindPopupActivity;->currentPage:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lim/doit/pro/activity/RemindPopupActivity;->currentPage:I

    .line 238
    :cond_0
    :goto_0
    iget-object v0, p0, Lim/doit/pro/activity/RemindPopupActivity;->popupAdapter:Lim/doit/pro/activity/RemindPopupActivity$ReminderPopupAdapter;

    invoke-virtual {v0}, Lim/doit/pro/activity/RemindPopupActivity$ReminderPopupAdapter;->notifyDataSetChanged()V

    .line 239
    iget-object v0, p0, Lim/doit/pro/activity/RemindPopupActivity;->reminders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 240
    invoke-virtual {p0}, Lim/doit/pro/activity/RemindPopupActivity;->finish()V

    .line 242
    :cond_1
    return-void

    .line 235
    :cond_2
    iget v0, p0, Lim/doit/pro/activity/RemindPopupActivity;->currentPage:I

    if-lez v0, :cond_0

    .line 236
    iget v0, p0, Lim/doit/pro/activity/RemindPopupActivity;->currentPage:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lim/doit/pro/activity/RemindPopupActivity;->currentPage:I

    goto :goto_0
.end method

.method private closeReminder()V
    .locals 0

    .prologue
    .line 223
    invoke-direct {p0}, Lim/doit/pro/activity/RemindPopupActivity;->stopRingtone()V

    .line 224
    invoke-direct {p0}, Lim/doit/pro/activity/RemindPopupActivity;->closeMessage()V

    .line 225
    return-void
.end method

.method private init(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 67
    invoke-direct {p0}, Lim/doit/pro/activity/RemindPopupActivity;->initView()V

    .line 69
    if-eqz p1, :cond_0

    .line 70
    move-object v0, p1

    .line 74
    .local v0, "bundle":Landroid/os/Bundle;
    :goto_0
    invoke-direct {p0, v0}, Lim/doit/pro/activity/RemindPopupActivity;->initData(Landroid/os/Bundle;)V

    .line 75
    invoke-direct {p0}, Lim/doit/pro/activity/RemindPopupActivity;->initListener()V

    .line 76
    return-void

    .line 72
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_0
    invoke-virtual {p0}, Lim/doit/pro/activity/RemindPopupActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .restart local v0    # "bundle":Landroid/os/Bundle;
    goto :goto_0
.end method

.method private initData(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    .line 79
    new-instance v0, Lim/doit/pro/db/metadata/ReminderMessage;

    invoke-direct {v0, p0, p1}, Lim/doit/pro/db/metadata/ReminderMessage;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 80
    .local v0, "message":Lim/doit/pro/db/metadata/ReminderMessage;
    iget-object v1, p0, Lim/doit/pro/activity/RemindPopupActivity;->reminders:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    iget-object v1, p0, Lim/doit/pro/activity/RemindPopupActivity;->popupAdapter:Lim/doit/pro/activity/RemindPopupActivity$ReminderPopupAdapter;

    invoke-virtual {v1}, Lim/doit/pro/activity/RemindPopupActivity$ReminderPopupAdapter;->notifyDataSetChanged()V

    .line 83
    invoke-direct {p0}, Lim/doit/pro/activity/RemindPopupActivity;->setIndicatorStatus()V

    .line 84
    return-void
.end method

.method private initListener()V
    .locals 2

    .prologue
    .line 105
    iget-object v0, p0, Lim/doit/pro/activity/RemindPopupActivity;->mIndicator:Lim/doit/pro/ui/component/CirclePageIndicator;

    .line 106
    new-instance v1, Lim/doit/pro/activity/RemindPopupActivity$1;

    invoke-direct {v1, p0}, Lim/doit/pro/activity/RemindPopupActivity$1;-><init>(Lim/doit/pro/activity/RemindPopupActivity;)V

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/CirclePageIndicator;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 121
    return-void
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 96
    const v0, 0x7f0b00a2

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/RemindPopupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lim/doit/pro/activity/RemindPopupActivity;->popupPager:Landroid/support/v4/view/ViewPager;

    .line 97
    new-instance v0, Lim/doit/pro/activity/RemindPopupActivity$ReminderPopupAdapter;

    invoke-virtual {p0}, Lim/doit/pro/activity/RemindPopupActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lim/doit/pro/activity/RemindPopupActivity$ReminderPopupAdapter;-><init>(Lim/doit/pro/activity/RemindPopupActivity;Landroid/support/v4/app/FragmentManager;)V

    iput-object v0, p0, Lim/doit/pro/activity/RemindPopupActivity;->popupAdapter:Lim/doit/pro/activity/RemindPopupActivity$ReminderPopupAdapter;

    .line 98
    iget-object v0, p0, Lim/doit/pro/activity/RemindPopupActivity;->popupPager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lim/doit/pro/activity/RemindPopupActivity;->popupAdapter:Lim/doit/pro/activity/RemindPopupActivity$ReminderPopupAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 100
    const v0, 0x7f0b00a3

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/RemindPopupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lim/doit/pro/ui/component/CirclePageIndicator;

    iput-object v0, p0, Lim/doit/pro/activity/RemindPopupActivity;->mIndicator:Lim/doit/pro/ui/component/CirclePageIndicator;

    .line 101
    iget-object v0, p0, Lim/doit/pro/activity/RemindPopupActivity;->mIndicator:Lim/doit/pro/ui/component/CirclePageIndicator;

    iget-object v1, p0, Lim/doit/pro/activity/RemindPopupActivity;->popupPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/CirclePageIndicator;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 102
    return-void
.end method

.method private releaseWakeLock()V
    .locals 4

    .prologue
    .line 162
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    new-instance v1, Lim/doit/pro/activity/RemindPopupActivity$2;

    invoke-direct {v1, p0}, Lim/doit/pro/activity/RemindPopupActivity$2;-><init>(Lim/doit/pro/activity/RemindPopupActivity;)V

    .line 175
    const-wide/16 v2, 0x2710

    .line 162
    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 176
    return-void
.end method

.method private setIndicatorStatus()V
    .locals 3

    .prologue
    .line 87
    iget-object v1, p0, Lim/doit/pro/activity/RemindPopupActivity;->reminders:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 88
    .local v0, "total":I
    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 89
    iget-object v1, p0, Lim/doit/pro/activity/RemindPopupActivity;->mIndicator:Lim/doit/pro/ui/component/CirclePageIndicator;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lim/doit/pro/ui/component/CirclePageIndicator;->setVisibility(I)V

    .line 93
    :goto_0
    return-void

    .line 91
    :cond_0
    iget-object v1, p0, Lim/doit/pro/activity/RemindPopupActivity;->mIndicator:Lim/doit/pro/ui/component/CirclePageIndicator;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lim/doit/pro/ui/component/CirclePageIndicator;->setVisibility(I)V

    goto :goto_0
.end method

.method private stopRingtone()V
    .locals 1

    .prologue
    .line 228
    invoke-static {p0}, Lim/doit/pro/utils/PlayReminderPopRingtone;->getInstance(Landroid/content/Context;)Lim/doit/pro/utils/PlayReminderPopRingtone;

    move-result-object v0

    invoke-virtual {v0}, Lim/doit/pro/utils/PlayReminderPopRingtone;->stop()V

    .line 229
    return-void
.end method

.method private viewTask()V
    .locals 6

    .prologue
    .line 245
    iget-object v3, p0, Lim/doit/pro/activity/RemindPopupActivity;->reminders:Ljava/util/ArrayList;

    iget v4, p0, Lim/doit/pro/activity/RemindPopupActivity;->currentPage:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lim/doit/pro/db/metadata/ReminderMessage;

    .line 246
    .local v1, "reminder":Lim/doit/pro/db/metadata/ReminderMessage;
    invoke-direct {p0, v1}, Lim/doit/pro/activity/RemindPopupActivity;->cancelReminderNotification(Lim/doit/pro/db/metadata/ReminderMessage;)V

    .line 247
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lim/doit/pro/activity/TaskDetailActivity;

    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 248
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "is_reminder_view"

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 249
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v3

    iget-object v3, v3, Lim/doit/pro/db/Persist;->taskDao:Lim/doit/pro/db/persist/TaskDao;

    .line 250
    iget-object v4, v1, Lim/doit/pro/db/metadata/ReminderMessage;->uuid:Ljava/lang/String;

    iget-object v5, v1, Lim/doit/pro/db/metadata/ReminderMessage;->repeatNo:Ljava/lang/String;

    .line 249
    invoke-virtual {v3, v4, v5}, Lim/doit/pro/db/persist/TaskDao;->findByUUIDAndRepeatNo(Ljava/lang/String;Ljava/lang/String;)Lim/doit/pro/model/Task;

    move-result-object v2

    .line 251
    .local v2, "task":Lim/doit/pro/model/Task;
    const-string v3, "task"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 252
    invoke-virtual {p0, v0}, Lim/doit/pro/activity/RemindPopupActivity;->startActivity(Landroid/content/Intent;)V

    .line 253
    return-void
.end method

.method private wakeScreenUp()V
    .locals 0

    .prologue
    .line 149
    invoke-direct {p0}, Lim/doit/pro/activity/RemindPopupActivity;->acquireWakeLock()V

    .line 150
    invoke-direct {p0}, Lim/doit/pro/activity/RemindPopupActivity;->releaseWakeLock()V

    .line 151
    return-void
.end method


# virtual methods
.method public onCancelClick()V
    .locals 0

    .prologue
    .line 180
    invoke-direct {p0}, Lim/doit/pro/activity/RemindPopupActivity;->closeReminder()V

    .line 181
    return-void
.end method

.method public onCompleteClick()V
    .locals 6

    .prologue
    .line 205
    invoke-direct {p0}, Lim/doit/pro/activity/RemindPopupActivity;->stopRingtone()V

    .line 206
    iget-object v3, p0, Lim/doit/pro/activity/RemindPopupActivity;->reminders:Ljava/util/ArrayList;

    iget v4, p0, Lim/doit/pro/activity/RemindPopupActivity;->currentPage:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lim/doit/pro/db/metadata/ReminderMessage;

    .line 207
    .local v1, "reminder":Lim/doit/pro/db/metadata/ReminderMessage;
    invoke-direct {p0, v1}, Lim/doit/pro/activity/RemindPopupActivity;->cancelReminderNotification(Lim/doit/pro/db/metadata/ReminderMessage;)V

    .line 208
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v3

    iget-object v3, v3, Lim/doit/pro/db/Persist;->taskDao:Lim/doit/pro/db/persist/TaskDao;

    .line 209
    iget-object v4, v1, Lim/doit/pro/db/metadata/ReminderMessage;->uuid:Ljava/lang/String;

    iget-object v5, v1, Lim/doit/pro/db/metadata/ReminderMessage;->repeatNo:Ljava/lang/String;

    .line 208
    invoke-virtual {v3, v4, v5}, Lim/doit/pro/db/persist/TaskDao;->findByUUIDAndRepeatNo(Ljava/lang/String;Ljava/lang/String;)Lim/doit/pro/model/Task;

    move-result-object v2

    .line 210
    .local v2, "task":Lim/doit/pro/model/Task;
    if-eqz v2, :cond_0

    .line 211
    new-instance v0, Lim/doit/pro/controller/CompleteTask;

    invoke-direct {v0}, Lim/doit/pro/controller/CompleteTask;-><init>()V

    .line 212
    .local v0, "completeTask":Lim/doit/pro/controller/CompleteTask;
    new-instance v3, Lim/doit/pro/activity/RemindPopupActivity$3;

    invoke-direct {v3, p0}, Lim/doit/pro/activity/RemindPopupActivity$3;-><init>(Lim/doit/pro/activity/RemindPopupActivity;)V

    invoke-virtual {v0, p0, v2, v3}, Lim/doit/pro/controller/CompleteTask;->complete(Landroid/app/Activity;Lim/doit/pro/model/Task;Lim/doit/pro/controller/CompleteTask$CompleteTaskFinishListener;)V

    .line 219
    .end local v0    # "completeTask":Lim/doit/pro/controller/CompleteTask;
    :cond_0
    invoke-direct {p0}, Lim/doit/pro/activity/RemindPopupActivity;->closeMessage()V

    .line 220
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 53
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 54
    invoke-direct {p0}, Lim/doit/pro/activity/RemindPopupActivity;->wakeScreenUp()V

    .line 55
    const v0, 0x7f030036

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/RemindPopupActivity;->setContentView(I)V

    .line 56
    invoke-direct {p0, p1}, Lim/doit/pro/activity/RemindPopupActivity;->init(Landroid/os/Bundle;)V

    .line 57
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 61
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 62
    invoke-virtual {p0, p1}, Lim/doit/pro/activity/RemindPopupActivity;->setIntent(Landroid/content/Intent;)V

    .line 63
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lim/doit/pro/activity/RemindPopupActivity;->init(Landroid/os/Bundle;)V

    .line 64
    return-void
.end method

.method public onSnoozeClick()V
    .locals 5

    .prologue
    .line 192
    invoke-direct {p0}, Lim/doit/pro/activity/RemindPopupActivity;->stopRingtone()V

    .line 193
    iget-object v2, p0, Lim/doit/pro/activity/RemindPopupActivity;->reminders:Ljava/util/ArrayList;

    iget v3, p0, Lim/doit/pro/activity/RemindPopupActivity;->currentPage:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lim/doit/pro/db/metadata/ReminderMessage;

    .line 194
    .local v0, "reminder":Lim/doit/pro/db/metadata/ReminderMessage;
    invoke-direct {p0, v0}, Lim/doit/pro/activity/RemindPopupActivity;->cancelReminderNotification(Lim/doit/pro/db/metadata/ReminderMessage;)V

    .line 195
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v2

    iget-object v2, v2, Lim/doit/pro/db/Persist;->taskDao:Lim/doit/pro/db/persist/TaskDao;

    .line 196
    iget-object v3, v0, Lim/doit/pro/db/metadata/ReminderMessage;->uuid:Ljava/lang/String;

    iget-object v4, v0, Lim/doit/pro/db/metadata/ReminderMessage;->repeatNo:Ljava/lang/String;

    .line 195
    invoke-virtual {v2, v3, v4}, Lim/doit/pro/db/persist/TaskDao;->findByUUIDAndRepeatNo(Ljava/lang/String;Ljava/lang/String;)Lim/doit/pro/model/Task;

    move-result-object v1

    .line 197
    .local v1, "task":Lim/doit/pro/model/Task;
    if-eqz v1, :cond_0

    .line 198
    invoke-static {p0, v1}, Lim/doit/pro/utils/TaskUtils;->snoozeReminder(Landroid/content/Context;Lim/doit/pro/model/Task;)V

    .line 200
    :cond_0
    invoke-direct {p0}, Lim/doit/pro/activity/RemindPopupActivity;->closeMessage()V

    .line 201
    return-void
.end method

.method public onViewClick()V
    .locals 0

    .prologue
    .line 185
    invoke-direct {p0}, Lim/doit/pro/activity/RemindPopupActivity;->stopRingtone()V

    .line 186
    invoke-direct {p0}, Lim/doit/pro/activity/RemindPopupActivity;->viewTask()V

    .line 187
    invoke-direct {p0}, Lim/doit/pro/activity/RemindPopupActivity;->closeMessage()V

    .line 188
    return-void
.end method
