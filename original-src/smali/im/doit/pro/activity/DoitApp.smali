.class public Lim/doit/pro/activity/DoitApp;
.super Landroid/app/Application;
.source "DoitApp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lim/doit/pro/activity/DoitApp$MyLifecycleHandler;
    }
.end annotation


# static fields
.field private static final EVERNOTE_CONSUMER_KEY:Ljava/lang/String; = "katedoit"

.field private static final EVERNOTE_CONSUMER_SECRET:Ljava/lang/String; = "1a04f0bbac282e8a"

.field private static final EVERNOTE_SERVICE:Lcom/evernote/client/android/EvernoteSession$EvernoteService;

.field private static final EVERNOTE_SUPPORT_APP_LINKED_NOTEBOOKS:Z = true

.field public static final FLURRY_API_KEY:Ljava/lang/String; = "JTMBWCVNFKF98PJ7J48N"

.field private static _context:Landroid/content/Context;

.field private static _doitAPI:Lim/doit/pro/api/DoitAPI;

.field private static _evernoteSession:Lcom/evernote/client/android/EvernoteSession;

.field private static _isDailyPlaning:Z

.field private static _isDailyReviewing:Z

.field private static _jsonFormat:Lim/doit/pro/utils/JsonFormat;

.field private static _maxUSN:J

.field private static _persist:Lim/doit/pro/db/Persist;

.field private static _pref:Landroid/content/SharedPreferences;

.field private static _reminderQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lim/doit/pro/db/metadata/ReminderMessage;",
            ">;"
        }
    .end annotation
.end field

.field private static _screenHeight:I

.field private static _screenWidth:I

.field private static _selectedBox:Lim/doit/pro/model/Box;

.field private static _smartAddLastInput:Ljava/lang/String;

.field private static _user:Lim/doit/pro/model/User;

.field private static _versionCode:I

.field private static _versionName:Ljava/lang/String;

.field private static started:J

.field private static stopped:J


# instance fields
.field private _isAppResumed:Z

.field private activites:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 58
    sget-object v0, Lcom/evernote/client/android/EvernoteSession$EvernoteService;->PRODUCTION:Lcom/evernote/client/android/EvernoteSession$EvernoteService;

    sput-object v0, Lim/doit/pro/activity/DoitApp;->EVERNOTE_SERVICE:Lcom/evernote/client/android/EvernoteSession$EvernoteService;

    .line 79
    sput-boolean v1, Lim/doit/pro/activity/DoitApp;->_isDailyPlaning:Z

    .line 80
    sput-boolean v1, Lim/doit/pro/activity/DoitApp;->_isDailyReviewing:Z

    .line 81
    const/4 v0, 0x0

    sput-object v0, Lim/doit/pro/activity/DoitApp;->_reminderQueue:Ljava/util/ArrayList;

    .line 357
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 68
    const/4 v0, 0x1

    iput-boolean v0, p0, Lim/doit/pro/activity/DoitApp;->_isAppResumed:Z

    .line 358
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lim/doit/pro/activity/DoitApp;->activites:Ljava/util/Set;

    .line 51
    return-void
.end method

.method static synthetic access$0(Lim/doit/pro/activity/DoitApp;)Ljava/util/Set;
    .locals 1

    .prologue
    .line 358
    iget-object v0, p0, Lim/doit/pro/activity/DoitApp;->activites:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$1()J
    .locals 2

    .prologue
    .line 356
    sget-wide v0, Lim/doit/pro/activity/DoitApp;->started:J

    return-wide v0
.end method

.method static synthetic access$2(J)V
    .locals 0

    .prologue
    .line 356
    sput-wide p0, Lim/doit/pro/activity/DoitApp;->started:J

    return-void
.end method

.method static synthetic access$3()J
    .locals 2

    .prologue
    .line 357
    sget-wide v0, Lim/doit/pro/activity/DoitApp;->stopped:J

    return-wide v0
.end method

.method static synthetic access$4(J)V
    .locals 0

    .prologue
    .line 357
    sput-wide p0, Lim/doit/pro/activity/DoitApp;->stopped:J

    return-void
.end method

.method private static clearAlarm()V
    .locals 1

    .prologue
    .line 275
    sget-object v0, Lim/doit/pro/activity/DoitApp;->_context:Landroid/content/Context;

    invoke-static {v0}, Lim/doit/pro/receiver/ReminderComputeReceiver;->cancelAlarm(Landroid/content/Context;)V

    .line 276
    sget-object v0, Lim/doit/pro/activity/DoitApp;->_context:Landroid/content/Context;

    invoke-static {v0}, Lim/doit/pro/service/DoitService;->clearAlarms(Landroid/content/Context;)V

    .line 277
    return-void
.end method

.method private static clearCache()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 425
    sput-object v2, Lim/doit/pro/activity/DoitApp;->_selectedBox:Lim/doit/pro/model/Box;

    .line 426
    const-wide/16 v0, 0x0

    sput-wide v0, Lim/doit/pro/activity/DoitApp;->_maxUSN:J

    .line 427
    sput-object v2, Lim/doit/pro/activity/DoitApp;->_user:Lim/doit/pro/model/User;

    .line 428
    sput-object v2, Lim/doit/pro/activity/DoitApp;->_smartAddLastInput:Ljava/lang/String;

    .line 429
    sput-object v2, Lim/doit/pro/activity/DoitApp;->_reminderQueue:Ljava/util/ArrayList;

    .line 430
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->logoutEvernote()V

    .line 431
    sput-object v2, Lim/doit/pro/activity/DoitApp;->_evernoteSession:Lcom/evernote/client/android/EvernoteSession;

    .line 432
    sput-object v2, Lim/doit/pro/activity/DoitApp;->_doitAPI:Lim/doit/pro/api/DoitAPI;

    .line 433
    sput-object v2, Lim/doit/pro/activity/DoitApp;->_persist:Lim/doit/pro/db/Persist;

    .line 434
    sput-object v2, Lim/doit/pro/activity/DoitApp;->_jsonFormat:Lim/doit/pro/utils/JsonFormat;

    .line 435
    return-void
.end method

.method public static clearDataExceptLoginInfo()V
    .locals 4

    .prologue
    .line 234
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->clearAlarm()V

    .line 236
    sget-object v0, Lim/doit/pro/activity/DoitApp;->_context:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lim/doit/pro/activity/DoitApp;->_context:Landroid/content/Context;

    const-class v3, Lim/doit/pro/service/DoitService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 237
    sget-object v0, Lim/doit/pro/activity/DoitApp;->_context:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lim/doit/pro/activity/DoitApp;->_context:Landroid/content/Context;

    const-class v3, Lim/doit/pro/service/DoitReminderService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 239
    invoke-static {}, Lim/doit/pro/utils/NotificationUtils;->cancelAll()V

    .line 241
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v0

    invoke-virtual {v0}, Lim/doit/pro/db/Persist;->clear()V

    .line 243
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->refreshWidget()V

    .line 245
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->clearCache()V

    .line 246
    return-void
.end method

.method public static clearReminderQueue()V
    .locals 1

    .prologue
    .line 333
    sget-object v0, Lim/doit/pro/activity/DoitApp;->_reminderQueue:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 334
    sget-object v0, Lim/doit/pro/activity/DoitApp;->_reminderQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 335
    const/4 v0, 0x0

    sput-object v0, Lim/doit/pro/activity/DoitApp;->_reminderQueue:Ljava/util/ArrayList;

    .line 337
    :cond_0
    return-void
.end method

.method public static context()Landroid/content/Context;
    .locals 1

    .prologue
    .line 112
    sget-object v0, Lim/doit/pro/activity/DoitApp;->_context:Landroid/content/Context;

    return-object v0
.end method

.method public static currentBox()Lim/doit/pro/model/Box;
    .locals 2

    .prologue
    .line 280
    sget-object v0, Lim/doit/pro/activity/DoitApp;->_selectedBox:Lim/doit/pro/model/Box;

    if-nez v0, :cond_1

    .line 281
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v0

    iget-object v0, v0, Lim/doit/pro/db/Persist;->boxDao:Lim/doit/pro/db/persist/BoxDao;

    invoke-virtual {v0}, Lim/doit/pro/db/persist/BoxDao;->findToday()Lim/doit/pro/model/Box;

    move-result-object v0

    sput-object v0, Lim/doit/pro/activity/DoitApp;->_selectedBox:Lim/doit/pro/model/Box;

    .line 282
    sget-object v0, Lim/doit/pro/activity/DoitApp;->_selectedBox:Lim/doit/pro/model/Box;

    if-nez v0, :cond_0

    .line 283
    const-string v0, "cannot find today box"

    invoke-static {v0}, Lim/doit/pro/utils/Logger;->e(Ljava/lang/Object;)V

    .line 284
    sget-object v0, Lim/doit/pro/activity/DoitApp;->_selectedBox:Lim/doit/pro/model/Box;

    .line 289
    :goto_0
    return-object v0

    .line 286
    :cond_0
    sget-object v0, Lim/doit/pro/activity/DoitApp;->_selectedBox:Lim/doit/pro/model/Box;

    const v1, 0x7f0c004d

    invoke-virtual {v0, v1}, Lim/doit/pro/model/Box;->setNameResId(I)V

    .line 287
    sget-object v0, Lim/doit/pro/activity/DoitApp;->_selectedBox:Lim/doit/pro/model/Box;

    const v1, 0x7f0200ac

    invoke-virtual {v0, v1}, Lim/doit/pro/model/Box;->setIconResId(I)V

    .line 289
    :cond_1
    sget-object v0, Lim/doit/pro/activity/DoitApp;->_selectedBox:Lim/doit/pro/model/Box;

    goto :goto_0
.end method

.method public static doitAPI()Lim/doit/pro/api/DoitAPI;
    .locals 1

    .prologue
    .line 309
    sget-object v0, Lim/doit/pro/activity/DoitApp;->_doitAPI:Lim/doit/pro/api/DoitAPI;

    if-nez v0, :cond_0

    .line 310
    new-instance v0, Lim/doit/pro/api/DoitAPI;

    invoke-direct {v0}, Lim/doit/pro/api/DoitAPI;-><init>()V

    sput-object v0, Lim/doit/pro/activity/DoitApp;->_doitAPI:Lim/doit/pro/api/DoitAPI;

    .line 312
    :cond_0
    sget-object v0, Lim/doit/pro/activity/DoitApp;->_doitAPI:Lim/doit/pro/api/DoitAPI;

    return-object v0
.end method

.method public static evernote()Lcom/evernote/client/android/EvernoteSession;
    .locals 1

    .prologue
    .line 421
    sget-object v0, Lim/doit/pro/activity/DoitApp;->_evernoteSession:Lcom/evernote/client/android/EvernoteSession;

    return-object v0
.end method

.method private finishAllActivities(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 266
    iget-object v1, p0, Lim/doit/pro/activity/DoitApp;->activites:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 272
    return-void

    .line 266
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 267
    .local v0, "item":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_0

    if-eq v0, p1, :cond_0

    .line 270
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method public static getLastReminder()Lim/doit/pro/db/metadata/ReminderMessage;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 320
    sget-object v1, Lim/doit/pro/activity/DoitApp;->_reminderQueue:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 321
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v1

    iget-object v1, v1, Lim/doit/pro/db/Persist;->taskDao:Lim/doit/pro/db/persist/TaskDao;

    invoke-virtual {v1}, Lim/doit/pro/db/persist/TaskDao;->findAllValidReminder()Ljava/util/ArrayList;

    move-result-object v1

    sput-object v1, Lim/doit/pro/activity/DoitApp;->_reminderQueue:Ljava/util/ArrayList;

    .line 323
    :cond_0
    sget-object v1, Lim/doit/pro/activity/DoitApp;->_reminderQueue:Ljava/util/ArrayList;

    invoke-static {v1}, Lim/doit/pro/utils/CollectionUtils;->isNotEmpty(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 324
    sget-object v1, Lim/doit/pro/activity/DoitApp;->_reminderQueue:Ljava/util/ArrayList;

    invoke-static {v1}, Lim/doit/pro/utils/SortUtils;->sortReminders(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 325
    sget-object v1, Lim/doit/pro/activity/DoitApp;->_reminderQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lim/doit/pro/db/metadata/ReminderMessage;

    .line 326
    .local v0, "reminder":Lim/doit/pro/db/metadata/ReminderMessage;
    sget-object v1, Lim/doit/pro/activity/DoitApp;->_reminderQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 329
    :goto_0
    return-object v0

    .end local v0    # "reminder":Lim/doit/pro/db/metadata/ReminderMessage;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getMaxUSN()J
    .locals 4

    .prologue
    .line 222
    sget-wide v0, Lim/doit/pro/activity/DoitApp;->_maxUSN:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 223
    invoke-static {}, Lim/doit/pro/utils/PrefUtils;->getMaxUSN()J

    move-result-wide v0

    sput-wide v0, Lim/doit/pro/activity/DoitApp;->_maxUSN:J

    .line 225
    :cond_0
    sget-wide v0, Lim/doit/pro/activity/DoitApp;->_maxUSN:J

    return-wide v0
.end method

.method public static getScreenHeight()I
    .locals 1

    .prologue
    .line 179
    sget v0, Lim/doit/pro/activity/DoitApp;->_screenHeight:I

    if-nez v0, :cond_0

    .line 180
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->initScreenSize()V

    .line 182
    :cond_0
    sget v0, Lim/doit/pro/activity/DoitApp;->_screenHeight:I

    return v0
.end method

.method public static getScreenWidth()I
    .locals 1

    .prologue
    .line 172
    sget v0, Lim/doit/pro/activity/DoitApp;->_screenWidth:I

    if-nez v0, :cond_0

    .line 173
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->initScreenSize()V

    .line 175
    :cond_0
    sget v0, Lim/doit/pro/activity/DoitApp;->_screenWidth:I

    return v0
.end method

.method public static getSmartAddLastInput()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    sget-object v0, Lim/doit/pro/activity/DoitApp;->_smartAddLastInput:Ljava/lang/String;

    return-object v0
.end method

.method public static getVersionCode()I
    .locals 5

    .prologue
    .line 189
    sget v3, Lim/doit/pro/activity/DoitApp;->_versionCode:I

    if-nez v3, :cond_0

    .line 191
    :try_start_0
    sget-object v3, Lim/doit/pro/activity/DoitApp;->_context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 192
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    sget-object v3, Lim/doit/pro/activity/DoitApp;->_context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 193
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    iget v3, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    sput v3, Lim/doit/pro/activity/DoitApp;->_versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 200
    .end local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    :cond_0
    :goto_0
    sget v3, Lim/doit/pro/activity/DoitApp;->_versionCode:I

    return v3

    .line 194
    :catch_0
    move-exception v0

    .line 195
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 196
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v0

    .line 197
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getVersionName()Ljava/lang/String;
    .locals 5

    .prologue
    .line 207
    sget-object v3, Lim/doit/pro/activity/DoitApp;->_versionName:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 209
    :try_start_0
    sget-object v3, Lim/doit/pro/activity/DoitApp;->_context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 210
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    sget-object v3, Lim/doit/pro/activity/DoitApp;->_context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 211
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    sput-object v3, Lim/doit/pro/activity/DoitApp;->_versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 218
    .end local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    :cond_0
    :goto_0
    sget-object v3, Lim/doit/pro/activity/DoitApp;->_versionName:Ljava/lang/String;

    return-object v3

    .line 212
    :catch_0
    move-exception v0

    .line 213
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 214
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v0

    .line 215
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private init()V
    .locals 1

    .prologue
    .line 156
    sput-object p0, Lim/doit/pro/activity/DoitApp;->_context:Landroid/content/Context;

    .line 157
    invoke-static {}, Lim/doit/pro/utils/Config;->getConfig()Lim/doit/pro/utils/Config;

    move-result-object v0

    .line 158
    .local v0, "config":Lim/doit/pro/utils/Config;
    invoke-virtual {v0, p0}, Lim/doit/pro/utils/Config;->init(Landroid/content/Context;)V

    .line 159
    invoke-direct {p0}, Lim/doit/pro/activity/DoitApp;->initWhenFirstOpen()V

    .line 160
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->initEvernoteSession()V

    .line 161
    return-void
.end method

.method public static initEvernote(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 410
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {p0, v0}, Lim/doit/pro/activity/DoitApp;->initEvernote(Landroid/content/Context;Ljava/util/Locale;)V

    .line 411
    return-void
.end method

.method private static initEvernote(Landroid/content/Context;Ljava/util/Locale;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 415
    const-string v1, "katedoit"

    .line 416
    const-string v2, "1a04f0bbac282e8a"

    sget-object v3, Lim/doit/pro/activity/DoitApp;->EVERNOTE_SERVICE:Lcom/evernote/client/android/EvernoteSession$EvernoteService;

    .line 417
    const/4 v4, 0x1

    move-object v0, p0

    move-object v5, p1

    .line 415
    invoke-static/range {v0 .. v5}, Lcom/evernote/client/android/EvernoteSession;->getInstance(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/evernote/client/android/EvernoteSession$EvernoteService;ZLjava/util/Locale;)Lcom/evernote/client/android/EvernoteSession;

    move-result-object v0

    .line 414
    sput-object v0, Lim/doit/pro/activity/DoitApp;->_evernoteSession:Lcom/evernote/client/android/EvernoteSession;

    .line 418
    return-void
.end method

.method public static initEvernoteSession()V
    .locals 9

    .prologue
    const/4 v4, 0x1

    .line 449
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->isAuth()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 450
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->user()Lim/doit/pro/model/User;

    move-result-object v0

    invoke-virtual {v0}, Lim/doit/pro/model/User;->getEvernote()Lim/doit/pro/model/Evernote;

    move-result-object v0

    if-nez v0, :cond_1

    .line 451
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->logoutEvernote()V

    .line 476
    .local v6, "editor":Landroid/content/SharedPreferences$Editor;
    .local v7, "evernoteAccountInfo":Lim/doit/pro/model/Evernote;
    .local v8, "evernotePrefs":Landroid/content/SharedPreferences;
    :cond_0
    :goto_0
    return-void

    .line 455
    .end local v6    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v7    # "evernoteAccountInfo":Lim/doit/pro/model/Evernote;
    .end local v8    # "evernotePrefs":Landroid/content/SharedPreferences;
    :cond_1
    sget-object v0, Lim/doit/pro/activity/DoitApp;->_context:Landroid/content/Context;

    invoke-static {v0}, Lcom/evernote/client/android/SessionPreferences;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 456
    .restart local v8    # "evernotePrefs":Landroid/content/SharedPreferences;
    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 457
    .restart local v6    # "editor":Landroid/content/SharedPreferences$Editor;
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->user()Lim/doit/pro/model/User;

    move-result-object v0

    invoke-virtual {v0}, Lim/doit/pro/model/User;->getEvernote()Lim/doit/pro/model/Evernote;

    move-result-object v7

    .line 458
    .restart local v7    # "evernoteAccountInfo":Lim/doit/pro/model/Evernote;
    const-string v0, "evernote.mAuthToken"

    .line 459
    invoke-virtual {v7}, Lim/doit/pro/model/Evernote;->getToken()Ljava/lang/String;

    move-result-object v1

    .line 458
    invoke-interface {v6, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 460
    const-string v0, "evernote.notestoreUrl"

    .line 461
    invoke-virtual {v7}, Lim/doit/pro/model/Evernote;->getNoteStoreUrl()Ljava/lang/String;

    move-result-object v1

    .line 460
    invoke-interface {v6, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 462
    const-string v0, "evernote.webApiUrlPrefix"

    .line 463
    invoke-virtual {v7}, Lim/doit/pro/model/Evernote;->getWebApiUrlPrefix()Ljava/lang/String;

    move-result-object v1

    .line 462
    invoke-interface {v6, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 464
    const-string v0, "evernote.mEvernoteHost"

    .line 465
    invoke-virtual {v7}, Lim/doit/pro/model/Evernote;->getServiceHost()Ljava/lang/String;

    move-result-object v1

    .line 464
    invoke-interface {v6, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 466
    const-string v0, "evernote.userId"

    .line 467
    invoke-virtual {v7}, Lim/doit/pro/model/Evernote;->getUserId()I

    move-result v1

    .line 466
    invoke-interface {v6, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 468
    const-string v0, "evernote.isAppLinkedNotebook"

    invoke-interface {v6, v0, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 470
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 471
    sget-object v0, Lim/doit/pro/activity/DoitApp;->_context:Landroid/content/Context;

    .line 472
    const-string v1, "katedoit"

    const-string v2, "1a04f0bbac282e8a"

    .line 473
    sget-object v3, Lim/doit/pro/activity/DoitApp;->EVERNOTE_SERVICE:Lcom/evernote/client/android/EvernoteSession$EvernoteService;

    .line 474
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    .line 471
    invoke-static/range {v0 .. v5}, Lcom/evernote/client/android/EvernoteSession;->getInstance(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/evernote/client/android/EvernoteSession$EvernoteService;ZLjava/util/Locale;)Lcom/evernote/client/android/EvernoteSession;

    move-result-object v0

    sput-object v0, Lim/doit/pro/activity/DoitApp;->_evernoteSession:Lcom/evernote/client/android/EvernoteSession;

    goto :goto_0
.end method

.method private static initScreenSize()V
    .locals 11

    .prologue
    const/16 v9, 0x11

    .line 479
    sget-object v6, Lim/doit/pro/activity/DoitApp;->_context:Landroid/content/Context;

    .line 480
    const-string v7, "window"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 479
    check-cast v5, Landroid/view/WindowManager;

    .line 481
    .local v5, "w":Landroid/view/WindowManager;
    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 482
    .local v0, "d":Landroid/view/Display;
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 483
    .local v2, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {v0, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 484
    iget v6, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    sput v6, Lim/doit/pro/activity/DoitApp;->_screenWidth:I

    .line 485
    iget v6, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    sput v6, Lim/doit/pro/activity/DoitApp;->_screenHeight:I

    .line 486
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 487
    .local v4, "sdk":I
    const/16 v6, 0xe

    if-lt v4, v6, :cond_0

    if-ge v4, v9, :cond_0

    .line 491
    :try_start_0
    const-class v6, Landroid/view/Display;

    const-string v7, "getRawWidth"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Class;

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 492
    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v6, v0, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 491
    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    sput v6, Lim/doit/pro/activity/DoitApp;->_screenWidth:I

    .line 493
    const-class v6, Landroid/view/Display;

    .line 494
    const-string v7, "getRawHeight"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Class;

    .line 493
    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 494
    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v6, v0, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 493
    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    sput v6, Lim/doit/pro/activity/DoitApp;->_screenHeight:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 499
    :cond_0
    :goto_0
    if-lt v4, v9, :cond_1

    .line 503
    :try_start_1
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 504
    .local v3, "realSize":Landroid/graphics/Point;
    const-class v6, Landroid/view/Display;

    const-string v7, "getRealSize"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Landroid/graphics/Point;

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    .line 505
    aput-object v3, v7, v8

    .line 504
    invoke-virtual {v6, v0, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 506
    iget v6, v3, Landroid/graphics/Point;->x:I

    sput v6, Lim/doit/pro/activity/DoitApp;->_screenWidth:I

    .line 507
    iget v6, v3, Landroid/graphics/Point;->y:I

    sput v6, Lim/doit/pro/activity/DoitApp;->_screenHeight:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 512
    .end local v3    # "realSize":Landroid/graphics/Point;
    :cond_1
    :goto_1
    return-void

    .line 495
    :catch_0
    move-exception v1

    .line 496
    .local v1, "ignored":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 508
    .end local v1    # "ignored":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 509
    .restart local v1    # "ignored":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private initWhenFirstOpen()V
    .locals 1

    .prologue
    .line 164
    invoke-static {}, Lim/doit/pro/utils/PrefUtils;->isInitInstall()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    invoke-static {}, Lim/doit/pro/utils/Config;->getConfig()Lim/doit/pro/utils/Config;

    move-result-object v0

    invoke-virtual {v0}, Lim/doit/pro/utils/Config;->getIntelIPAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lim/doit/pro/utils/PrefUtils;->saveIntelIPAddress(Ljava/lang/String;)V

    .line 166
    invoke-static {}, Lim/doit/pro/utils/Config;->getConfig()Lim/doit/pro/utils/Config;

    move-result-object v0

    invoke-virtual {v0}, Lim/doit/pro/utils/Config;->getChinaIPAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lim/doit/pro/utils/PrefUtils;->saveChinaIPAddress(Ljava/lang/String;)V

    .line 167
    const/4 v0, 0x0

    invoke-static {v0}, Lim/doit/pro/utils/PrefUtils;->updateInitInstall(Z)V

    .line 169
    :cond_0
    return-void
.end method

.method public static initYinXiangBiJi(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 406
    sget-object v0, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-static {p0, v0}, Lim/doit/pro/activity/DoitApp;->initEvernote(Landroid/content/Context;Ljava/util/Locale;)V

    .line 407
    return-void
.end method

.method public static isApplicationInForeground()Z
    .locals 4

    .prologue
    .line 394
    sget-wide v0, Lim/doit/pro/activity/DoitApp;->started:J

    sget-wide v2, Lim/doit/pro/activity/DoitApp;->stopped:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isAuth()Z
    .locals 1

    const/4 v0, 0x1

    return v0

.end method

.method public static isDailyPlaning()Z
    .locals 1

    .prologue
    .line 132
    sget-boolean v0, Lim/doit/pro/activity/DoitApp;->_isDailyPlaning:Z

    return v0
.end method

.method public static isDailyReviewing()Z
    .locals 1

    .prologue
    .line 140
    sget-boolean v0, Lim/doit/pro/activity/DoitApp;->_isDailyReviewing:Z

    return v0
.end method

.method public static isLogin()Z
    .locals 1

    const/4 v0, 0x1

    return v0

.end method

.method public static isLoginAgain()Z
    .locals 1

    const/4 v0, 0x0

    return v0

.end method

.method private static isLoginFinish()Z
    .locals 1

    .prologue
    .line 305
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->isAuth()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lim/doit/pro/utils/PrefUtils;->isCheckoutFinish()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static json()Lim/doit/pro/utils/JsonFormat;
    .locals 1

    .prologue
    .line 116
    sget-object v0, Lim/doit/pro/activity/DoitApp;->_jsonFormat:Lim/doit/pro/utils/JsonFormat;

    if-eqz v0, :cond_0

    .line 117
    sget-object v0, Lim/doit/pro/activity/DoitApp;->_jsonFormat:Lim/doit/pro/utils/JsonFormat;

    .line 120
    :goto_0
    return-object v0

    .line 119
    :cond_0
    new-instance v0, Lim/doit/pro/utils/JsonFormat;

    invoke-direct {v0}, Lim/doit/pro/utils/JsonFormat;-><init>()V

    sput-object v0, Lim/doit/pro/activity/DoitApp;->_jsonFormat:Lim/doit/pro/utils/JsonFormat;

    .line 120
    sget-object v0, Lim/doit/pro/activity/DoitApp;->_jsonFormat:Lim/doit/pro/utils/JsonFormat;

    goto :goto_0
.end method

.method private static logoutEvernote()V
    .locals 3

    .prologue
    .line 438
    sget-object v1, Lim/doit/pro/activity/DoitApp;->_evernoteSession:Lcom/evernote/client/android/EvernoteSession;

    if-nez v1, :cond_0

    .line 446
    .local v0, "e":Lcom/evernote/client/android/InvalidAuthenticationException;
    :goto_0
    return-void

    .line 442
    .end local v0    # "e":Lcom/evernote/client/android/InvalidAuthenticationException;
    :cond_0
    :try_start_0
    sget-object v1, Lim/doit/pro/activity/DoitApp;->_evernoteSession:Lcom/evernote/client/android/EvernoteSession;

    sget-object v2, Lim/doit/pro/activity/DoitApp;->_context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/evernote/client/android/EvernoteSession;->logOut(Landroid/content/Context;)V
    :try_end_0
    .catch Lcom/evernote/client/android/InvalidAuthenticationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 443
    :catch_0
    move-exception v0

    .line 444
    .restart local v0    # "e":Lcom/evernote/client/android/InvalidAuthenticationException;
    invoke-virtual {v0}, Lcom/evernote/client/android/InvalidAuthenticationException;->printStackTrace()V

    goto :goto_0
.end method

.method public static persist()Lim/doit/pro/db/Persist;
    .locals 2

    .prologue
    .line 96
    sget-object v0, Lim/doit/pro/activity/DoitApp;->_persist:Lim/doit/pro/db/Persist;

    if-eqz v0, :cond_0

    .line 97
    sget-object v0, Lim/doit/pro/activity/DoitApp;->_persist:Lim/doit/pro/db/Persist;

    .line 100
    :goto_0
    return-object v0

    .line 99
    :cond_0
    new-instance v0, Lim/doit/pro/db/Persist;

    sget-object v1, Lim/doit/pro/activity/DoitApp;->_context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lim/doit/pro/db/Persist;-><init>(Landroid/content/Context;)V

    sput-object v0, Lim/doit/pro/activity/DoitApp;->_persist:Lim/doit/pro/db/Persist;

    .line 100
    sget-object v0, Lim/doit/pro/activity/DoitApp;->_persist:Lim/doit/pro/db/Persist;

    goto :goto_0
.end method

.method public static pref()Landroid/content/SharedPreferences;
    .locals 3

    .prologue
    .line 104
    sget-object v0, Lim/doit/pro/activity/DoitApp;->_pref:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 105
    sget-object v0, Lim/doit/pro/activity/DoitApp;->_pref:Landroid/content/SharedPreferences;

    .line 108
    :goto_0
    return-object v0

    .line 107
    :cond_0
    sget-object v0, Lim/doit/pro/activity/DoitApp;->_context:Landroid/content/Context;

    const-string v1, "im.doit"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lim/doit/pro/activity/DoitApp;->_pref:Landroid/content/SharedPreferences;

    .line 108
    sget-object v0, Lim/doit/pro/activity/DoitApp;->_pref:Landroid/content/SharedPreferences;

    goto :goto_0
.end method

.method public static refreshWidget()V
    .locals 4

    .prologue
    .line 343
    const-string v0, "refresh all widgets"

    invoke-static {v0}, Lim/doit/pro/utils/Logger;->d(Ljava/lang/Object;)V

    .line 344
    sget-object v0, Lim/doit/pro/activity/DoitApp;->_context:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lim/doit/pro/activity/DoitApp;->_context:Landroid/content/Context;

    const-class v3, Lim/doit/pro/widget/WidgetBadgeProvider;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 345
    const-string v2, "im.doit.pro.widget.DoitBaseProvider.refresh"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 344
    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 346
    sget-object v0, Lim/doit/pro/activity/DoitApp;->_context:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lim/doit/pro/activity/DoitApp;->_context:Landroid/content/Context;

    .line 347
    const-class v3, Lim/doit/pro/widget/WidgetTaskList3x3Provider;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 348
    const-string v2, "im.doit.pro.widget.DoitBaseProvider.refresh"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 346
    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 349
    sget-object v0, Lim/doit/pro/activity/DoitApp;->_context:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lim/doit/pro/activity/DoitApp;->_context:Landroid/content/Context;

    .line 350
    const-class v3, Lim/doit/pro/widget/WidgetCalendarProvider;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 351
    const-string v2, "im.doit.pro.widget.DoitBaseProvider.refresh"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 349
    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 352
    sget-object v0, Lim/doit/pro/activity/DoitApp;->_context:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lim/doit/pro/activity/DoitApp;->_context:Landroid/content/Context;

    const-class v3, Lim/doit/pro/widget/WidgetAddProvider;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 353
    const-string v2, "im.doit.pro.widget.DoitBaseProvider.refresh"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 352
    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 354
    return-void
.end method

.method public static setCurrentBox(Lim/doit/pro/model/Box;)V
    .locals 0
    .param p0, "box"    # Lim/doit/pro/model/Box;

    .prologue
    .line 293
    sput-object p0, Lim/doit/pro/activity/DoitApp;->_selectedBox:Lim/doit/pro/model/Box;

    .line 294
    return-void
.end method

.method public static setDailyPlaning(Z)V
    .locals 0
    .param p0, "isDailyPlaning"    # Z

    .prologue
    .line 136
    sput-boolean p0, Lim/doit/pro/activity/DoitApp;->_isDailyPlaning:Z

    .line 137
    return-void
.end method

.method public static setDailyReviewing(Z)V
    .locals 0
    .param p0, "isDailyReviewing"    # Z

    .prologue
    .line 144
    sput-boolean p0, Lim/doit/pro/activity/DoitApp;->_isDailyReviewing:Z

    .line 145
    return-void
.end method

.method public static setSmartAddLastInput(Ljava/lang/String;)V
    .locals 0
    .param p0, "smartAddLastInput"    # Ljava/lang/String;

    .prologue
    .line 128
    sput-object p0, Lim/doit/pro/activity/DoitApp;->_smartAddLastInput:Ljava/lang/String;

    .line 129
    return-void
.end method

.method public static setUser(Lim/doit/pro/model/User;)V
    .locals 0
    .param p0, "user"    # Lim/doit/pro/model/User;

    .prologue
    .line 92
    sput-object p0, Lim/doit/pro/activity/DoitApp;->_user:Lim/doit/pro/model/User;

    .line 93
    return-void
.end method

.method public static updateMaxUSN(J)V
    .locals 0
    .param p0, "maxUSN"    # J

    .prologue
    .line 229
    sput-wide p0, Lim/doit/pro/activity/DoitApp;->_maxUSN:J

    .line 230
    return-void
.end method

.method public static user()Lim/doit/pro/model/User;
    .locals 2

    .prologue
    .line 84
    sget-object v0, Lim/doit/pro/activity/DoitApp;->_user:Lim/doit/pro/model/User;

    if-eqz v0, :cond_0

    .line 85
    sget-object v0, Lim/doit/pro/activity/DoitApp;->_user:Lim/doit/pro/model/User;

    .line 88
    :goto_0
    return-object v0

    .line 87
    :cond_0
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v0

    iget-object v0, v0, Lim/doit/pro/db/Persist;->userDao:Lim/doit/pro/db/persist/UserDao;

    invoke-static {}, Lim/doit/pro/utils/PrefUtils;->getLoginUsername()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/db/persist/UserDao;->findCurrentUser(Ljava/lang/String;)Lim/doit/pro/model/User;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Lim/doit/pro/model/User;

    invoke-direct {v0}, Lim/doit/pro/model/User;-><init>()V

    :cond_1
    sput-object v0, Lim/doit/pro/activity/DoitApp;->_user:Lim/doit/pro/model/User;

    .line 88
    sget-object v0, Lim/doit/pro/activity/DoitApp;->_user:Lim/doit/pro/model/User;

    goto :goto_0
.end method


# virtual methods
.method public isAppResumed()Z
    .locals 1

    .prologue
    .line 398
    iget-boolean v0, p0, Lim/doit/pro/activity/DoitApp;->_isAppResumed:Z

    return v0
.end method

.method public logout(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 250
    invoke-static {}, Lim/doit/pro/utils/PrefUtils;->clearPrefs()V

    .line 252
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->doitAPI()Lim/doit/pro/api/DoitAPI;

    move-result-object v1

    const-string v2, "japan"

    invoke-virtual {v1, v2}, Lim/doit/pro/api/DoitAPI;->clearCredentials(Ljava/lang/String;)V

    .line 253
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->clearDataExceptLoginInfo()V

    .line 254
    invoke-direct {p0, p1}, Lim/doit/pro/activity/DoitApp;->finishAllActivities(Landroid/app/Activity;)V

    .line 257
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lim/doit/pro/activity/StartUpActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 258
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x54000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 261
    invoke-virtual {p0, v0}, Lim/doit/pro/activity/DoitApp;->startActivity(Landroid/content/Intent;)V

    .line 262
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 263
    return-void
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 149
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 150
    invoke-static {}, Lim/doit/pro/exception/DoitCrashException;->getInstance()Lim/doit/pro/exception/DoitCrashException;

    move-result-object v0

    invoke-virtual {v0, p0}, Lim/doit/pro/exception/DoitCrashException;->init(Landroid/content/Context;)V

    .line 151
    new-instance v0, Lim/doit/pro/activity/DoitApp$MyLifecycleHandler;

    invoke-direct {v0, p0}, Lim/doit/pro/activity/DoitApp$MyLifecycleHandler;-><init>(Lim/doit/pro/activity/DoitApp;)V

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/DoitApp;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 152
    invoke-direct {p0}, Lim/doit/pro/activity/DoitApp;->init()V

    .line 153
    return-void
.end method

.method public saveAppResumed(Z)V
    .locals 0
    .param p1, "resumed"    # Z

    .prologue
    .line 402
    iput-boolean p1, p0, Lim/doit/pro/activity/DoitApp;->_isAppResumed:Z

    .line 403
    return-void
.end method
