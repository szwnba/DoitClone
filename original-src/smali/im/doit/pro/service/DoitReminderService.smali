.class public Lim/doit/pro/service/DoitReminderService;
.super Lim/doit/pro/service/WakefulIntentService;
.source "DoitReminderService.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final ACTION_REMINDER:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lim/doit/pro/service/DoitReminderService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lim/doit/pro/service/DoitReminderService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lim/doit/pro/service/DoitReminderService;->TAG:Ljava/lang/String;

    invoke-direct {p0, v0}, Lim/doit/pro/service/WakefulIntentService;-><init>(Ljava/lang/String;)V

    .line 31
    const-string v0, "ACTION_REMINDER"

    iput-object v0, p0, Lim/doit/pro/service/DoitReminderService;->ACTION_REMINDER:Ljava/lang/String;

    .line 37
    return-void
.end method

.method private popupReminderDetail(Lim/doit/pro/db/metadata/ReminderMessage;)V
    .locals 6
    .param p1, "message"    # Lim/doit/pro/db/metadata/ReminderMessage;

    .prologue
    const/4 v5, 0x1

    .line 104
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lim/doit/pro/activity/TaskDetailActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 105
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v2

    iget-object v2, v2, Lim/doit/pro/db/Persist;->taskDao:Lim/doit/pro/db/persist/TaskDao;

    iget-object v3, p1, Lim/doit/pro/db/metadata/ReminderMessage;->uuid:Ljava/lang/String;

    iget-object v4, p1, Lim/doit/pro/db/metadata/ReminderMessage;->repeatNo:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lim/doit/pro/db/persist/TaskDao;->findByUUIDAndRepeatNo(Ljava/lang/String;Ljava/lang/String;)Lim/doit/pro/model/Task;

    move-result-object v1

    .line 106
    .local v1, "task":Lim/doit/pro/model/Task;
    const-string v2, "task"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 107
    const-string v2, "is_reminder_view"

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 108
    const-string v2, "is_detail_popup"

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 109
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 110
    invoke-virtual {p1}, Lim/doit/pro/db/metadata/ReminderMessage;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 111
    invoke-virtual {p0, v0}, Lim/doit/pro/service/DoitReminderService;->startActivity(Landroid/content/Intent;)V

    .line 112
    return-void
.end method

.method private popupReminderDialog(Lim/doit/pro/db/metadata/ReminderMessage;)V
    .locals 2
    .param p1, "message"    # Lim/doit/pro/db/metadata/ReminderMessage;

    .prologue
    .line 97
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lim/doit/pro/activity/RemindPopupActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 98
    .local v0, "popup":Landroid/content/Intent;
    const/high16 v1, 0x10800000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 99
    invoke-virtual {p1}, Lim/doit/pro/db/metadata/ReminderMessage;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 100
    invoke-virtual {p0, v0}, Lim/doit/pro/service/DoitReminderService;->startActivity(Landroid/content/Intent;)V

    .line 101
    return-void
.end method

.method private sendReminderNotification(Lim/doit/pro/db/metadata/ReminderMessage;)V
    .locals 11
    .param p1, "reminder"    # Lim/doit/pro/db/metadata/ReminderMessage;

    .prologue
    .line 77
    new-instance v1, Landroid/content/Intent;

    const-class v5, Lim/doit/pro/activity/TaskDetailActivity;

    invoke-direct {v1, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 78
    .local v1, "intent":Landroid/content/Intent;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "ACTION_REMINDER"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    const/16 v7, 0xe

    invoke-virtual {v6, v7}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 79
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v5

    iget-object v5, v5, Lim/doit/pro/db/Persist;->taskDao:Lim/doit/pro/db/persist/TaskDao;

    iget-object v6, p1, Lim/doit/pro/db/metadata/ReminderMessage;->uuid:Ljava/lang/String;

    iget-object v7, p1, Lim/doit/pro/db/metadata/ReminderMessage;->repeatNo:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lim/doit/pro/db/persist/TaskDao;->findByUUIDAndRepeatNo(Ljava/lang/String;Ljava/lang/String;)Lim/doit/pro/model/Task;

    move-result-object v4

    .line 80
    .local v4, "task":Lim/doit/pro/model/Task;
    const-string v5, "task"

    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 81
    const-string v5, "is_reminder_view"

    const/4 v6, 0x1

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 82
    const/4 v5, 0x0

    const/high16 v6, 0x10400000

    invoke-static {p0, v5, v1, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 84
    .local v0, "contentIntent":Landroid/app/PendingIntent;
    new-instance v5, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-direct {v5, p0}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x7f0c0022

    invoke-static {v6}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    .line 85
    const v6, 0x7f020162

    invoke-virtual {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    iget-object v6, p1, Lim/doit/pro/db/metadata/ReminderMessage;->title:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    .line 86
    iget-wide v6, p1, Lim/doit/pro/db/metadata/ReminderMessage;->startAt:J

    iget-wide v8, p1, Lim/doit/pro/db/metadata/ReminderMessage;->endAt:J

    iget-boolean v10, p1, Lim/doit/pro/db/metadata/ReminderMessage;->allDay:Z

    invoke-static {v6, v7, v8, v9, v10}, Lim/doit/pro/activity/utils/TaskUIHelper;->formatReminderForNotice(JJZ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    .line 87
    invoke-virtual {v5, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v3

    .line 88
    .local v3, "noti":Landroid/app/Notification;
    const v5, -0xffff01

    iput v5, v3, Landroid/app/Notification;->ledARGB:I

    .line 89
    const/16 v5, 0x7d0

    iput v5, v3, Landroid/app/Notification;->ledOffMS:I

    .line 90
    const/16 v5, 0x3e8

    iput v5, v3, Landroid/app/Notification;->ledOnMS:I

    .line 91
    const/16 v5, 0x11

    iput v5, v3, Landroid/app/Notification;->flags:I

    .line 92
    const-string v5, "notification"

    invoke-virtual {p0, v5}, Lim/doit/pro/service/DoitReminderService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 93
    .local v2, "manager":Landroid/app/NotificationManager;
    iget v5, p1, Lim/doit/pro/db/metadata/ReminderMessage;->notifyId:I

    invoke-virtual {v2, v5, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 94
    return-void
.end method


# virtual methods
.method protected doWakefulWork(Landroid/content/Intent;)V
    .locals 10
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 46
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 48
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_2

    .line 49
    const-string v5, "REMINDER"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    .line 50
    .local v2, "obj":Ljava/io/Serializable;
    if-eqz v2, :cond_2

    move-object v4, v2

    .line 51
    check-cast v4, Lim/doit/pro/db/metadata/ReminderMessage;

    .line 52
    .local v4, "reminder":Lim/doit/pro/db/metadata/ReminderMessage;
    invoke-static {p0}, Lim/doit/pro/utils/PlayReminderPopRingtone;->getInstance(Landroid/content/Context;)Lim/doit/pro/utils/PlayReminderPopRingtone;

    move-result-object v5

    invoke-virtual {v5}, Lim/doit/pro/utils/PlayReminderPopRingtone;->play()V

    .line 53
    invoke-static {}, Lim/doit/pro/utils/LocalSettings;->getReminderPopupStyle()Ljava/lang/String;

    move-result-object v3

    .line 54
    .local v3, "popupStype":Ljava/lang/String;
    const-string v5, "title_pop"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 55
    invoke-direct {p0, v4}, Lim/doit/pro/service/DoitReminderService;->popupReminderDialog(Lim/doit/pro/db/metadata/ReminderMessage;)V

    .line 59
    :cond_0
    :goto_0
    invoke-static {}, Lim/doit/pro/utils/LocalSettings;->isReminderShowInNotification()Z

    move-result v1

    .line 60
    .local v1, "isShowInNotification":Z
    if-eqz v1, :cond_1

    .line 61
    invoke-direct {p0, v4}, Lim/doit/pro/service/DoitReminderService;->sendReminderNotification(Lim/doit/pro/db/metadata/ReminderMessage;)V

    .line 65
    :cond_1
    iget-wide v6, v4, Lim/doit/pro/db/metadata/ReminderMessage;->checkDate:J

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-lez v5, :cond_2

    .line 66
    iget-object v5, v4, Lim/doit/pro/db/metadata/ReminderMessage;->uuid:Ljava/lang/String;

    iget-wide v6, v4, Lim/doit/pro/db/metadata/ReminderMessage;->checkDate:J

    invoke-static {v5, v6, v7}, Lim/doit/pro/utils/TaskUtils;->buildAndSaveRepeatInstances(Ljava/lang/String;J)Lim/doit/pro/model/Task;

    .line 70
    .end local v1    # "isShowInNotification":Z
    .end local v2    # "obj":Ljava/io/Serializable;
    .end local v3    # "popupStype":Ljava/lang/String;
    .end local v4    # "reminder":Lim/doit/pro/db/metadata/ReminderMessage;
    :cond_2
    invoke-static {p0}, Lim/doit/pro/utils/BroadcastUtils;->sendReminder(Landroid/content/Context;)V

    .line 71
    return-void

    .line 56
    .restart local v2    # "obj":Ljava/io/Serializable;
    .restart local v3    # "popupStype":Ljava/lang/String;
    .restart local v4    # "reminder":Lim/doit/pro/db/metadata/ReminderMessage;
    :cond_3
    const-string v5, "detail_pop"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 57
    invoke-direct {p0, v4}, Lim/doit/pro/service/DoitReminderService;->popupReminderDetail(Lim/doit/pro/db/metadata/ReminderMessage;)V

    goto :goto_0
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 41
    invoke-super {p0}, Lim/doit/pro/service/WakefulIntentService;->onCreate()V

    .line 42
    return-void
.end method
