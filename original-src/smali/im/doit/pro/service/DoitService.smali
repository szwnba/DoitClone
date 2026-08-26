.class public Lim/doit/pro/service/DoitService;
.super Landroid/app/Service;
.source "DoitService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lim/doit/pro/service/DoitService$LocalBinder;,
        Lim/doit/pro/service/DoitService$StartPullGcal;,
        Lim/doit/pro/service/DoitService$StartSyncAvatars;,
        Lim/doit/pro/service/DoitService$StartSyncMany;,
        Lim/doit/pro/service/DoitService$StartUploadAvatars;
    }
.end annotation


# static fields
.field private static final HOME_BG_SYNC_15_MIN:J = 0xdbba0L

.field private static final HOME_BG_SYNC_REQUEST_CODE:I = 0xe8

.field private static final MIDNIGHT_SYNC_REQUEST_CODE:I = 0xe9

.field private static final MIDNIGHT_WIDGET_REFRESH_REQUEST_CODE:I = 0xea

.field private static final SET_TODAY_DAILY_PLAN_ALARM_REQUEST_CODE:I = 0x1f4

.field private static final SET_TODAY_DAILY_REVIEW_ALARM_REQUEST_CODE:I = 0x258

.field private static final START_PLAN_PER_24_HOUR:J = 0x5265c00L

.field public static final SYNC_TYPE:Ljava/lang/String; = "sync_type"

.field public static final TYPE_PULL_GCAL:I = 0xc8

.field public static final TYPE_SYNC_AVATARS:I = 0x12c

.field public static final TYPE_SYNC_MANY:I = 0x64

.field public static final TYPE_UPDATE_ALARM:I = 0x1f4

.field public static final TYPE_UPLOAD_AVATARS:I = 0x190


# instance fields
.field private final mBinder:Landroid/os/IBinder;

.field private syncAvataring:Z

.field private syncGcaling:Z

.field private syncManying:Z

.field private uploadAvataring:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 31
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 49
    new-instance v0, Lim/doit/pro/service/DoitService$LocalBinder;

    invoke-direct {v0, p0}, Lim/doit/pro/service/DoitService$LocalBinder;-><init>(Lim/doit/pro/service/DoitService;)V

    iput-object v0, p0, Lim/doit/pro/service/DoitService;->mBinder:Landroid/os/IBinder;

    .line 51
    iput-boolean v1, p0, Lim/doit/pro/service/DoitService;->syncManying:Z

    .line 52
    iput-boolean v1, p0, Lim/doit/pro/service/DoitService;->syncAvataring:Z

    .line 53
    iput-boolean v1, p0, Lim/doit/pro/service/DoitService;->syncGcaling:Z

    .line 54
    iput-boolean v1, p0, Lim/doit/pro/service/DoitService;->uploadAvataring:Z

    .line 31
    return-void
.end method

.method static synthetic access$0(Lim/doit/pro/service/DoitService;Z)V
    .locals 0

    .prologue
    .line 51
    iput-boolean p1, p0, Lim/doit/pro/service/DoitService;->syncManying:Z

    return-void
.end method

.method static synthetic access$1(Lim/doit/pro/service/DoitService;Ljava/lang/String;Lim/doit/pro/api/Response;)V
    .locals 0

    .prologue
    .line 212
    invoke-direct {p0, p1, p2}, Lim/doit/pro/service/DoitService;->sendBroadcastAfterSync(Ljava/lang/String;Lim/doit/pro/api/Response;)V

    return-void
.end method

.method static synthetic access$2(Lim/doit/pro/service/DoitService;)V
    .locals 0

    .prologue
    .line 457
    invoke-direct {p0}, Lim/doit/pro/service/DoitService;->sendUploadAvatar()V

    return-void
.end method

.method static synthetic access$3(Lim/doit/pro/service/DoitService;Z)V
    .locals 0

    .prologue
    .line 53
    iput-boolean p1, p0, Lim/doit/pro/service/DoitService;->syncGcaling:Z

    return-void
.end method

.method static synthetic access$4(Lim/doit/pro/service/DoitService;Z)V
    .locals 0

    .prologue
    .line 54
    iput-boolean p1, p0, Lim/doit/pro/service/DoitService;->uploadAvataring:Z

    return-void
.end method

.method static synthetic access$5(Lim/doit/pro/service/DoitService;Z)V
    .locals 0

    .prologue
    .line 52
    iput-boolean p1, p0, Lim/doit/pro/service/DoitService;->syncAvataring:Z

    return-void
.end method

.method private static cancelBackgroundSyncAlarm(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 343
    const-string v3, "cancel backgroun sync alarm"

    invoke-static {v3}, Lim/doit/pro/utils/Logger;->d(Ljava/lang/Object;)V

    .line 345
    const-string v3, "alarm"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 344
    check-cast v0, Landroid/app/AlarmManager;

    .line 346
    .local v0, "am":Landroid/app/AlarmManager;
    new-instance v1, Landroid/content/Intent;

    const-string v3, "im.doit.pro.receiver.DoitSyncReceiver"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 348
    .local v1, "intent":Landroid/content/Intent;
    const/16 v3, 0xe8

    .line 349
    const/high16 v4, 0x20000000

    .line 348
    invoke-static {p0, v3, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 350
    .local v2, "sender":Landroid/app/PendingIntent;
    if-eqz v2, :cond_0

    .line 351
    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 353
    :cond_0
    return-void
.end method

.method public static cancelDailyPlanAlarm(Landroid/content/Context;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 382
    invoke-static {p0}, Lim/doit/pro/service/DoitService;->cancelSetTodayDailyPlanAlarm(Landroid/content/Context;)V

    .line 383
    invoke-static {p0}, Lim/doit/pro/service/DoitService;->cancelStartTodayDailyPlanAlarm(Landroid/content/Context;)V

    .line 384
    return-void
.end method

.method public static cancelDailyReviewAlarm(Landroid/content/Context;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 413
    invoke-static {p0}, Lim/doit/pro/service/DoitService;->cancelSetTodayDailyReviewAlarm(Landroid/content/Context;)V

    .line 414
    invoke-static {p0}, Lim/doit/pro/service/DoitService;->cancelStartTodayDailyReviewAlarm(Landroid/content/Context;)V

    .line 415
    return-void
.end method

.method private static cancelMidnightRefreshWidgetAlarm(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 369
    const-string v3, "cancel midnight refresh widget alarm"

    invoke-static {v3}, Lim/doit/pro/utils/Logger;->d(Ljava/lang/Object;)V

    .line 371
    const-string v3, "alarm"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 370
    check-cast v0, Landroid/app/AlarmManager;

    .line 372
    .local v0, "am":Landroid/app/AlarmManager;
    new-instance v1, Landroid/content/Intent;

    const-string v3, "im.doit.pro.receiver.RefreshWidgetReceiver"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 374
    .local v1, "intent":Landroid/content/Intent;
    const/16 v3, 0xea

    .line 375
    const/high16 v4, 0x20000000

    .line 373
    invoke-static {p0, v3, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 376
    .local v2, "sender":Landroid/app/PendingIntent;
    if-eqz v2, :cond_0

    .line 377
    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 379
    :cond_0
    return-void
.end method

.method private static cancelMidnightSyncAlarm(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 356
    const-string v3, "cancel midnight sync alarm"

    invoke-static {v3}, Lim/doit/pro/utils/Logger;->d(Ljava/lang/Object;)V

    .line 358
    const-string v3, "alarm"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 357
    check-cast v0, Landroid/app/AlarmManager;

    .line 359
    .local v0, "am":Landroid/app/AlarmManager;
    new-instance v1, Landroid/content/Intent;

    const-string v3, "im.doit.pro.receiver.DoitSyncReceiver"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 361
    .local v1, "intent":Landroid/content/Intent;
    const/16 v3, 0xe9

    .line 362
    const/high16 v4, 0x20000000

    .line 360
    invoke-static {p0, v3, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 363
    .local v2, "sender":Landroid/app/PendingIntent;
    if-eqz v2, :cond_0

    .line 364
    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 366
    :cond_0
    return-void
.end method

.method private static cancelSetTodayDailyPlanAlarm(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 387
    const-string v3, "cancel set today daily plan alarm"

    invoke-static {v3}, Lim/doit/pro/utils/Logger;->d(Ljava/lang/Object;)V

    .line 389
    const-string v3, "alarm"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 388
    check-cast v0, Landroid/app/AlarmManager;

    .line 390
    .local v0, "am":Landroid/app/AlarmManager;
    new-instance v1, Landroid/content/Intent;

    const-string v3, "im.doit.pro.receiver.SetTodayDailyPlanAlarmReceiver"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 392
    .local v1, "intent":Landroid/content/Intent;
    const/16 v3, 0x1f4

    .line 393
    const/high16 v4, 0x20000000

    .line 391
    invoke-static {p0, v3, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 394
    .local v2, "sender":Landroid/app/PendingIntent;
    if-eqz v2, :cond_0

    .line 395
    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 397
    :cond_0
    return-void
.end method

.method private static cancelSetTodayDailyReviewAlarm(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 418
    const-string v3, "cancel set today daily review alarm"

    invoke-static {v3}, Lim/doit/pro/utils/Logger;->d(Ljava/lang/Object;)V

    .line 420
    const-string v3, "alarm"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 419
    check-cast v0, Landroid/app/AlarmManager;

    .line 421
    .local v0, "am":Landroid/app/AlarmManager;
    new-instance v1, Landroid/content/Intent;

    const-string v3, "im.doit.pro.receiver.SetTodayDailyReviewAlarmReceiver"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 423
    .local v1, "intent":Landroid/content/Intent;
    const/16 v3, 0x258

    .line 424
    const/high16 v4, 0x20000000

    .line 422
    invoke-static {p0, v3, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 425
    .local v2, "sender":Landroid/app/PendingIntent;
    if-eqz v2, :cond_0

    .line 426
    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 428
    :cond_0
    return-void
.end method

.method private static cancelStartTodayDailyPlanAlarm(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 400
    const-string v3, "cancel start today daily plan alarm"

    invoke-static {v3}, Lim/doit/pro/utils/Logger;->d(Ljava/lang/Object;)V

    .line 402
    const-string v3, "alarm"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 401
    check-cast v0, Landroid/app/AlarmManager;

    .line 403
    .local v0, "am":Landroid/app/AlarmManager;
    new-instance v1, Landroid/content/Intent;

    const-string v3, "im.doit.pro.receiver.StartTodayDailyPlanReceiver"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 405
    .local v1, "intent":Landroid/content/Intent;
    const/16 v3, 0x1f5

    .line 406
    const/high16 v4, 0x20000000

    .line 404
    invoke-static {p0, v3, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 407
    .local v2, "sender":Landroid/app/PendingIntent;
    if-eqz v2, :cond_0

    .line 408
    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 410
    :cond_0
    return-void
.end method

.method private static cancelStartTodayDailyReviewAlarm(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 431
    const-string v3, "cancel start today review plan alarm"

    invoke-static {v3}, Lim/doit/pro/utils/Logger;->d(Ljava/lang/Object;)V

    .line 433
    const-string v3, "alarm"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 432
    check-cast v0, Landroid/app/AlarmManager;

    .line 434
    .local v0, "am":Landroid/app/AlarmManager;
    new-instance v1, Landroid/content/Intent;

    const-string v3, "im.doit.pro.receiver.StartTodayDailyReviewReceiver"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 438
    .local v1, "intent":Landroid/content/Intent;
    const/16 v3, 0x259

    .line 439
    const/high16 v4, 0x20000000

    .line 436
    invoke-static {p0, v3, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 440
    .local v2, "sender":Landroid/app/PendingIntent;
    if-eqz v2, :cond_0

    .line 441
    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 443
    :cond_0
    return-void
.end method

.method public static clearAlarms(Landroid/content/Context;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 335
    invoke-static {p0}, Lim/doit/pro/service/DoitService;->cancelBackgroundSyncAlarm(Landroid/content/Context;)V

    .line 336
    invoke-static {p0}, Lim/doit/pro/service/DoitService;->cancelMidnightSyncAlarm(Landroid/content/Context;)V

    .line 337
    invoke-static {p0}, Lim/doit/pro/service/DoitService;->cancelMidnightRefreshWidgetAlarm(Landroid/content/Context;)V

    .line 338
    invoke-static {p0}, Lim/doit/pro/service/DoitService;->cancelDailyPlanAlarm(Landroid/content/Context;)V

    .line 339
    invoke-static {p0}, Lim/doit/pro/service/DoitService;->cancelDailyReviewAlarm(Landroid/content/Context;)V

    .line 340
    return-void
.end method

.method private createAlarms()V
    .locals 0

    .prologue
    .line 236
    invoke-direct {p0}, Lim/doit/pro/service/DoitService;->createBgSync()V

    .line 237
    invoke-direct {p0}, Lim/doit/pro/service/DoitService;->createMidnightSync()V

    .line 238
    invoke-direct {p0}, Lim/doit/pro/service/DoitService;->createSetTodayStartPlanAlarm()V

    .line 239
    invoke-direct {p0}, Lim/doit/pro/service/DoitService;->createSetTodayStartReviewAlarm()V

    .line 240
    return-void
.end method

.method private createBgSync()V
    .locals 8

    .prologue
    const-wide/32 v4, 0xdbba0

    .line 243
    invoke-static {p0}, Lim/doit/pro/service/DoitService;->cancelBackgroundSyncAlarm(Landroid/content/Context;)V

    .line 244
    invoke-static {}, Lim/doit/pro/utils/UserUtils;->isNotPro()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 259
    :goto_0
    return-void

    .line 247
    :cond_0
    const-string v1, "create background sync"

    invoke-static {v1}, Lim/doit/pro/utils/Logger;->d(Ljava/lang/Object;)V

    .line 248
    const-string v1, "alarm"

    invoke-virtual {p0, v1}, Lim/doit/pro/service/DoitService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 249
    .local v0, "alarmManager":Landroid/app/AlarmManager;
    new-instance v7, Landroid/content/Intent;

    const-class v1, Lim/doit/pro/receiver/DoitSyncReceiver;

    invoke-direct {v7, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 250
    .local v7, "intent":Landroid/content/Intent;
    const-string v1, "im.doit.pro.receiver.DoitSyncReceiver"

    invoke-virtual {v7, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 251
    const-string v1, "im.doit.pro.service.DoitSyncService.SYNC"

    const-string v2, "im.doit.pro.service.DoitSyncService.SYNC_BACKGROUND"

    invoke-virtual {v7, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 253
    const/16 v1, 0xe8

    .line 254
    const/high16 v2, 0x10000000

    .line 252
    invoke-static {p0, v1, v7, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 255
    .local v6, "pi":Landroid/app/PendingIntent;
    invoke-virtual {v0, v6}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 256
    const/4 v1, 0x0

    .line 257
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v2, v4

    .line 256
    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method private createMidnightRefreshWidgetReceiver()V
    .locals 10

    .prologue
    .line 282
    const-string v1, "create minight refresh widget alarm"

    invoke-static {v1}, Lim/doit/pro/utils/Logger;->e(Ljava/lang/Object;)V

    .line 283
    const-string v1, "alarm"

    invoke-virtual {p0, v1}, Lim/doit/pro/service/DoitService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 284
    .local v0, "alarmManager":Landroid/app/AlarmManager;
    new-instance v7, Landroid/content/Intent;

    const-class v1, Lim/doit/pro/receiver/RefreshWidgetReceiver;

    invoke-direct {v7, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 285
    .local v7, "intent":Landroid/content/Intent;
    const-string v1, "im.doit.pro.receiver.RefreshWidgetReceiver"

    invoke-virtual {v7, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 286
    const-string v1, "im.doit.pro.service.DoitSyncService.SYNC"

    const-string v4, "im.doit.pro.service.DoitSyncService.SYNC_MIDNIGHT"

    invoke-virtual {v7, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 288
    const/16 v1, 0xea

    .line 289
    const/high16 v4, 0x10000000

    .line 287
    invoke-static {p0, v1, v7, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 290
    .local v6, "pi":Landroid/app/PendingIntent;
    invoke-static {}, Lim/doit/pro/utils/DateUtils;->startOfTomorrowMills()J

    move-result-wide v4

    const-wide/16 v8, 0x2710

    add-long v2, v4, v8

    .line 291
    .local v2, "triggerAtTime":J
    const/4 v1, 0x0

    .line 292
    const-wide/32 v4, 0x5265c00

    .line 291
    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 293
    return-void
.end method

.method private createMidnightSync()V
    .locals 10

    .prologue
    .line 262
    invoke-static {p0}, Lim/doit/pro/service/DoitService;->cancelMidnightSyncAlarm(Landroid/content/Context;)V

    .line 263
    invoke-static {p0}, Lim/doit/pro/service/DoitService;->cancelMidnightRefreshWidgetAlarm(Landroid/content/Context;)V

    .line 264
    invoke-static {}, Lim/doit/pro/utils/UserUtils;->isNotPro()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 265
    invoke-direct {p0}, Lim/doit/pro/service/DoitService;->createMidnightRefreshWidgetReceiver()V

    .line 279
    :goto_0
    return-void

    .line 268
    :cond_0
    const-string v1, "create minight sync alarm"

    invoke-static {v1}, Lim/doit/pro/utils/Logger;->e(Ljava/lang/Object;)V

    .line 269
    const-string v1, "alarm"

    invoke-virtual {p0, v1}, Lim/doit/pro/service/DoitService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 270
    .local v0, "alarmManager":Landroid/app/AlarmManager;
    new-instance v7, Landroid/content/Intent;

    const-class v1, Lim/doit/pro/receiver/DoitSyncReceiver;

    invoke-direct {v7, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 271
    .local v7, "intent":Landroid/content/Intent;
    const-string v1, "im.doit.pro.receiver.DoitSyncReceiver"

    invoke-virtual {v7, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 272
    const-string v1, "im.doit.pro.service.DoitSyncService.SYNC"

    const-string v4, "im.doit.pro.service.DoitSyncService.SYNC_MIDNIGHT"

    invoke-virtual {v7, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 274
    const/16 v1, 0xe9

    .line 275
    const/high16 v4, 0x10000000

    .line 273
    invoke-static {p0, v1, v7, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 276
    .local v6, "pi":Landroid/app/PendingIntent;
    invoke-static {}, Lim/doit/pro/utils/DateUtils;->startOfTomorrowMills()J

    move-result-wide v4

    const-wide/16 v8, 0x2710

    add-long v2, v4, v8

    .line 277
    .local v2, "triggerAtTime":J
    const/4 v1, 0x0

    .line 278
    const-wide/32 v4, 0x5265c00

    .line 277
    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method private createSetTodayStartPlanAlarm()V
    .locals 8

    .prologue
    .line 296
    invoke-static {p0}, Lim/doit/pro/service/DoitService;->cancelSetTodayDailyPlanAlarm(Landroid/content/Context;)V

    .line 297
    invoke-static {}, Lim/doit/pro/utils/UserUtils;->isNotReminderDailyPlan()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 313
    :goto_0
    return-void

    .line 300
    :cond_0
    const-string v1, "create set today daily plan alarm"

    invoke-static {v1}, Lim/doit/pro/utils/Logger;->d(Ljava/lang/Object;)V

    .line 301
    const-string v1, "alarm"

    invoke-virtual {p0, v1}, Lim/doit/pro/service/DoitService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 302
    .local v0, "alarmManager":Landroid/app/AlarmManager;
    new-instance v7, Landroid/content/Intent;

    const-class v1, Lim/doit/pro/receiver/SetTodayDailyPlanAlarmReceiver;

    invoke-direct {v7, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 303
    .local v7, "intent":Landroid/content/Intent;
    const-string v1, "im.doit.pro.receiver.SetTodayDailyPlanAlarmReceiver"

    invoke-virtual {v7, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 305
    const/16 v1, 0x1f4

    .line 306
    const/high16 v4, 0x10000000

    .line 304
    invoke-static {p0, v1, v7, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 307
    .local v6, "pi":Landroid/app/PendingIntent;
    invoke-virtual {v0, v6}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 309
    invoke-static {}, Lim/doit/pro/utils/DateUtils;->startOfTodayMillis()J

    move-result-wide v2

    .line 311
    .local v2, "time":J
    const/4 v1, 0x0

    .line 312
    const-wide/32 v4, 0x5265c00

    .line 311
    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method private createSetTodayStartReviewAlarm()V
    .locals 8

    .prologue
    .line 316
    invoke-static {p0}, Lim/doit/pro/service/DoitService;->cancelSetTodayDailyReviewAlarm(Landroid/content/Context;)V

    .line 317
    invoke-static {}, Lim/doit/pro/utils/UserUtils;->isNotReminderDailyReview()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 332
    :goto_0
    return-void

    .line 320
    :cond_0
    const-string v1, "create set today daily review alarm"

    invoke-static {v1}, Lim/doit/pro/utils/Logger;->d(Ljava/lang/Object;)V

    .line 321
    const-string v1, "alarm"

    invoke-virtual {p0, v1}, Lim/doit/pro/service/DoitService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 322
    .local v0, "alarmManager":Landroid/app/AlarmManager;
    new-instance v7, Landroid/content/Intent;

    const-class v1, Lim/doit/pro/receiver/SetTodayDailyReviewAlarmReceiver;

    invoke-direct {v7, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 323
    .local v7, "intent":Landroid/content/Intent;
    const-string v1, "im.doit.pro.receiver.SetTodayDailyReviewAlarmReceiver"

    invoke-virtual {v7, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 325
    const/16 v1, 0x258

    .line 326
    const/high16 v4, 0x10000000

    .line 324
    invoke-static {p0, v1, v7, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 327
    .local v6, "pi":Landroid/app/PendingIntent;
    invoke-virtual {v0, v6}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 329
    invoke-static {}, Lim/doit/pro/utils/DateUtils;->startOfTodayMillis()J

    move-result-wide v2

    .line 330
    .local v2, "time":J
    const/4 v1, 0x0

    .line 331
    const-wide/32 v4, 0x5265c00

    .line 330
    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method private sendBroadcastAfterSync(Ljava/lang/String;Lim/doit/pro/api/Response;)V
    .locals 6
    .param p1, "syncType"    # Ljava/lang/String;
    .param p2, "result"    # Lim/doit/pro/api/Response;

    .prologue
    .line 213
    new-instance v2, Landroid/content/Intent;

    const-string v3, "im.doit.pro.service.DoitSyncService.SYNC_FINISH"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 214
    .local v2, "intent":Landroid/content/Intent;
    const-string v3, "sync_type"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 215
    if-eqz p2, :cond_2

    .line 216
    invoke-virtual {p2}, Lim/doit/pro/api/Response;->isUnauthorized()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 217
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->isAuth()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lim/doit/pro/utils/PrefUtils;->isCheckoutFinish()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 218
    const-string v3, "------to login again------"

    invoke-static {v3}, Lim/doit/pro/utils/Logger;->e(Ljava/lang/Object;)V

    .line 219
    invoke-direct {p0}, Lim/doit/pro/service/DoitService;->toLoginAgain()V

    .line 233
    :cond_0
    :goto_0
    return-void

    .line 223
    :cond_1
    const-string v3, "response_code"

    iget v4, p2, Lim/doit/pro/api/Response;->code:I

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 225
    :try_start_0
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->json()Lim/doit/pro/utils/JsonFormat;

    move-result-object v3

    .line 226
    iget-object v4, p2, Lim/doit/pro/api/Response;->body:Ljava/lang/String;

    const-class v5, Lim/doit/pro/model/ResponseErrorResult;

    .line 225
    invoke-virtual {v3, v4, v5}, Lim/doit/pro/utils/JsonFormat;->deserialize(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lim/doit/pro/model/ResponseErrorResult;

    .line 227
    .local v1, "errorData":Lim/doit/pro/model/ResponseErrorResult;
    const-string v3, "response_error_code"

    invoke-virtual {v1}, Lim/doit/pro/model/ResponseErrorResult;->getCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 232
    .end local v1    # "errorData":Lim/doit/pro/model/ResponseErrorResult;
    :cond_2
    :goto_1
    invoke-virtual {p0, v2}, Lim/doit/pro/service/DoitService;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 228
    :catch_0
    move-exception v0

    .line 229
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private sendComputeReminder()V
    .locals 0

    .prologue
    .line 446
    invoke-static {p0}, Lim/doit/pro/utils/BroadcastUtils;->sendReminder(Landroid/content/Context;)V

    .line 447
    return-void
.end method

.method private sendUploadAvatar()V
    .locals 3

    .prologue
    .line 458
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lim/doit/pro/service/DoitService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 459
    .local v0, "service":Landroid/content/Intent;
    const-string v1, "sync_type"

    const/16 v2, 0x190

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 460
    invoke-virtual {p0, v0}, Lim/doit/pro/service/DoitService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 461
    return-void
.end method

.method private toLoginAgain()V
    .locals 2

    .prologue
    .line 450
    const/4 v1, 0x1

    invoke-static {v1}, Lim/doit/pro/utils/PrefUtils;->saveLoginAgain(Z)V

    .line 451
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lim/doit/pro/activity/LoginAgainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 452
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 453
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 454
    invoke-virtual {p0, v0}, Lim/doit/pro/service/DoitService;->startActivity(Landroid/content/Intent;)V

    .line 455
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 58
    iget-object v0, p0, Lim/doit/pro/service/DoitService;->mBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 69
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 70
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->isLogin()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    invoke-direct {p0}, Lim/doit/pro/service/DoitService;->sendComputeReminder()V

    .line 72
    invoke-direct {p0}, Lim/doit/pro/service/DoitService;->createAlarms()V

    .line 76
    :goto_0
    return-void

    .line 74
    :cond_0
    invoke-virtual {p0}, Lim/doit/pro/service/DoitService;->stopSelf()V

    goto :goto_0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1

    const/4 v0, 0x2

    return v0

.end method
