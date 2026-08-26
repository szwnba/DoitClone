.class public Lim/doit/pro/utils/PrefUtils;
.super Ljava/lang/Object;
.source "PrefUtils.java"


# static fields
.field public static final LOCAL_SETTING:Ljava/lang/String; = "im.doit.localsetting"

.field public static final SP_NAME:Ljava/lang/String; = "im.doit"

.field public static final SP_ROOT_NAME:Ljava/lang/String; = "im.doit.root"

.field private static _localPrefs:Landroid/content/SharedPreferences;

.field private static _rootPrefs:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static changeServer()V
    .locals 2

    .prologue
    .line 38
    invoke-static {}, Lim/doit/pro/utils/PrefUtils;->getServer()Ljava/lang/String;

    move-result-object v0

    .line 39
    .local v0, "server":Ljava/lang/String;
    const-string v1, "japan"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 40
    const-string v0, "china"

    .line 44
    :cond_0
    :goto_0
    invoke-static {v0}, Lim/doit/pro/utils/PrefUtils;->saveServer(Ljava/lang/String;)V

    .line 45
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->doitAPI()Lim/doit/pro/api/DoitAPI;

    move-result-object v1

    invoke-virtual {v1, v0}, Lim/doit/pro/api/DoitAPI;->changeServer(Ljava/lang/String;)V

    .line 46
    return-void

    .line 41
    :cond_1
    const-string v1, "china"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 42
    const-string v0, "japan"

    goto :goto_0
.end method

.method public static clearLoginInfoNotChangeServer()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 91
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->pref()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 92
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "login_username"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 93
    const-string v1, "login_password"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 94
    const-string v1, "login_type"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 95
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->doitAPI()Lim/doit/pro/api/DoitAPI;

    move-result-object v1

    invoke-static {}, Lim/doit/pro/utils/PrefUtils;->getServer()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lim/doit/pro/api/DoitAPI;->clearCredentials(Ljava/lang/String;)V

    .line 96
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 97
    return-void
.end method

.method public static clearPrefs()V
    .locals 2

    .prologue
    .line 201
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->pref()Landroid/content/SharedPreferences;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 202
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->pref()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 203
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 204
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 206
    :cond_0
    invoke-static {}, Lim/doit/pro/utils/PrefUtils;->localPrefs()Landroid/content/SharedPreferences;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 207
    invoke-static {}, Lim/doit/pro/utils/PrefUtils;->localPrefs()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 208
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 209
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 211
    :cond_1
    return-void
.end method

.method public static downloadAllAfterDBUpgrade(Z)V
    .locals 2
    .param p0, "downloadAll"    # Z

    .prologue
    .line 178
    invoke-static {}, Lim/doit/pro/utils/PrefUtils;->localPrefs()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 179
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_local_setting_download_all"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 180
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 181
    return-void
.end method

.method public static getIPAddress()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 273
    invoke-static {}, Lim/doit/pro/api/utils/D;->isCn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 274
    invoke-static {}, Lim/doit/pro/utils/PrefUtils;->rootPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "ip_china"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 276
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lim/doit/pro/utils/PrefUtils;->rootPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "ip_japan"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getLastDailyPlanDoneTime()Ljava/util/Calendar;
    .locals 6

    .prologue
    .line 221
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->pref()Landroid/content/SharedPreferences;

    move-result-object v2

    .line 222
    const-string v3, "last_daily_plan_done_time"

    const-wide/16 v4, 0x0

    .line 221
    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 223
    .local v0, "millis":J
    invoke-static {v0, v1}, Lim/doit/pro/utils/DateUtils;->convertToDate(J)Ljava/util/Calendar;

    move-result-object v2

    return-object v2
.end method

.method public static getLastDailyReviewDoneTime()Ljava/util/Calendar;
    .locals 6

    .prologue
    .line 234
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->pref()Landroid/content/SharedPreferences;

    move-result-object v2

    .line 235
    const-string v3, "last_daily_review_done_time"

    const-wide/16 v4, 0x0

    .line 234
    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 236
    .local v0, "millis":J
    invoke-static {v0, v1}, Lim/doit/pro/utils/DateUtils;->convertToDate(J)Ljava/util/Calendar;

    move-result-object v2

    return-object v2
.end method

.method public static getLoginAgain()Z
    .locals 3

    .prologue
    .line 148
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->pref()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "login_again"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getLoginUsername()Ljava/lang/String;
    .locals 3

    .prologue
    .line 79
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->pref()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "login_username"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMaxPosition()J
    .locals 4

    .prologue
    .line 131
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->pref()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "max_position"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getMaxUSN()J
    .locals 4

    .prologue
    .line 55
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->pref()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "max_usn"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getPassword()Ljava/lang/String;
    .locals 3

    .prologue
    .line 83
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->pref()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "login_password"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getServer()Ljava/lang/String;
    .locals 3

    .prologue
    .line 33
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->pref()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pref_server"

    .line 34
    const-string v2, "japan"

    .line 33
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getServerTime()J
    .locals 4

    .prologue
    .line 75
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->pref()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "server_time"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getTooOldVersion()I
    .locals 3

    .prologue
    .line 144
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->pref()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "too_old_version"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static isCheckoutFinish()Z
    .locals 3

    .prologue
    .line 120
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->pref()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 121
    const-string v1, "is_checkout_data_finish"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 120
    return v0
.end method

.method public static isDownloadAllAfterDBUpgrade()Z
    .locals 3

    .prologue
    .line 184
    invoke-static {}, Lim/doit/pro/utils/PrefUtils;->localPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 185
    const-string v1, "pref_local_setting_download_all"

    const/4 v2, 0x0

    .line 184
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isDownloadAvatars()Z
    .locals 3

    .prologue
    .line 196
    invoke-static {}, Lim/doit/pro/utils/PrefUtils;->localPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 197
    const-string v1, "pref_local_setting_download_aratars"

    const/4 v2, 0x0

    .line 196
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isInitInstall()Z
    .locals 3

    .prologue
    .line 23
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->pref()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "init_install"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isShowDailyPlanOrReviewGuestureGuide()Z
    .locals 3

    .prologue
    .line 261
    invoke-static {}, Lim/doit/pro/utils/PrefUtils;->rootPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 262
    const-string v1, "is_show_daily_plan_or_review_guesture_guide"

    const/4 v2, 0x1

    .line 261
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isShowDailyPlanReviewGuide()Z
    .locals 3

    .prologue
    .line 250
    invoke-static {}, Lim/doit/pro/utils/PrefUtils;->rootPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "is_show_daily_plan_review_guide"

    .line 251
    const/4 v2, 0x1

    .line 250
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isShowEvernoteGuide()Z
    .locals 3

    .prologue
    .line 240
    invoke-static {}, Lim/doit/pro/utils/PrefUtils;->rootPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "is_show_evernote_guide"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static localPrefs()Landroid/content/SharedPreferences;
    .locals 3

    .prologue
    .line 308
    sget-object v0, Lim/doit/pro/utils/PrefUtils;->_localPrefs:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 309
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->context()Landroid/content/Context;

    move-result-object v0

    const-string v1, "im.doit.localsetting"

    .line 310
    const/4 v2, 0x0

    .line 309
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lim/doit/pro/utils/PrefUtils;->_localPrefs:Landroid/content/SharedPreferences;

    .line 312
    :cond_0
    sget-object v0, Lim/doit/pro/utils/PrefUtils;->_localPrefs:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method private static rootPrefs()Landroid/content/SharedPreferences;
    .locals 3

    .prologue
    .line 316
    sget-object v0, Lim/doit/pro/utils/PrefUtils;->_rootPrefs:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 317
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->context()Landroid/content/Context;

    move-result-object v0

    const-string v1, "im.doit.root"

    .line 318
    const/4 v2, 0x0

    .line 317
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lim/doit/pro/utils/PrefUtils;->_rootPrefs:Landroid/content/SharedPreferences;

    .line 320
    :cond_0
    sget-object v0, Lim/doit/pro/utils/PrefUtils;->_rootPrefs:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public static saveCheckoutFinish(Z)V
    .locals 2
    .param p0, "finish"    # Z

    .prologue
    .line 125
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->pref()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 126
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "is_checkout_data_finish"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 127
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 128
    return-void
.end method

.method public static saveChinaIPAddress(Ljava/lang/String;)V
    .locals 2
    .param p0, "ipAddress"    # Ljava/lang/String;

    .prologue
    .line 281
    invoke-static {}, Lim/doit/pro/utils/PrefUtils;->rootPrefs()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 282
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "ip_china"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 283
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 284
    return-void
.end method

.method public static saveDownloadAvatars(Z)V
    .locals 2
    .param p0, "isDownload"    # Z

    .prologue
    .line 189
    invoke-static {}, Lim/doit/pro/utils/PrefUtils;->localPrefs()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 190
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_local_setting_download_aratars"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 192
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 193
    return-void
.end method

.method public static saveIPAddress(Ljava/lang/String;)V
    .locals 5
    .param p0, "ipAddress"    # Ljava/lang/String;

    .prologue
    .line 293
    const-string v1, "ip_japan"

    .line 294
    .local v1, "key":Ljava/lang/String;
    invoke-static {}, Lim/doit/pro/api/utils/D;->isCn()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 295
    const-string v1, "ip_china"

    .line 297
    :cond_0
    invoke-static {}, Lim/doit/pro/utils/PrefUtils;->rootPrefs()Landroid/content/SharedPreferences;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 298
    .local v2, "originIP":Ljava/lang/String;
    invoke-static {v2, p0}, Lim/doit/pro/utils/StringUtils;->isEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 305
    :goto_0
    return-void

    .line 301
    :cond_1
    invoke-static {}, Lim/doit/pro/utils/PrefUtils;->rootPrefs()Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 302
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 303
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 304
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->doitAPI()Lim/doit/pro/api/DoitAPI;

    move-result-object v3

    invoke-virtual {v3}, Lim/doit/pro/api/DoitAPI;->updateHost()V

    goto :goto_0
.end method

.method public static saveIntelIPAddress(Ljava/lang/String;)V
    .locals 2
    .param p0, "ipAddress"    # Ljava/lang/String;

    .prologue
    .line 287
    invoke-static {}, Lim/doit/pro/utils/PrefUtils;->rootPrefs()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 288
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "ip_japan"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 289
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 290
    return-void
.end method

.method public static saveLastDailyPlanDoneTime(Ljava/util/Calendar;)V
    .locals 4
    .param p0, "date"    # Ljava/util/Calendar;

    .prologue
    .line 214
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->pref()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 215
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "last_daily_plan_done_time"

    .line 216
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 215
    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 217
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 218
    return-void
.end method

.method public static saveLastDailyReviewDoneTime(Ljava/util/Calendar;)V
    .locals 4
    .param p0, "date"    # Ljava/util/Calendar;

    .prologue
    .line 227
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->pref()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 228
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "last_daily_review_done_time"

    .line 229
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 228
    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 230
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 231
    return-void
.end method

.method public static saveLoginAgain(Z)V
    .locals 2
    .param p0, "loginAgain"    # Z

    .prologue
    .line 160
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->pref()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 161
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "login_again"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 162
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 163
    return-void
.end method

.method public static saveLoginAgain(ZLjava/lang/String;)V
    .locals 3
    .param p0, "loginAgain"    # Z
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 152
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->pref()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 153
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "login_password"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 154
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 155
    invoke-static {p0}, Lim/doit/pro/utils/PrefUtils;->saveLoginAgain(Z)V

    .line 156
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->doitAPI()Lim/doit/pro/api/DoitAPI;

    move-result-object v1

    invoke-static {}, Lim/doit/pro/utils/PrefUtils;->getLoginUsername()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lim/doit/pro/api/DoitAPI;->setCredentials(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    return-void
.end method

.method public static saveLoginInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "username"    # Ljava/lang/String;
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 87
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lim/doit/pro/utils/PrefUtils;->saveLoginInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 88
    return-void
.end method

.method public static saveLoginInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p0, "username"    # Ljava/lang/String;
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "loginType"    # Ljava/lang/String;

    .prologue
    .line 101
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->pref()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 102
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "login_username"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 103
    const-string v1, "login_password"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 104
    if-eqz p2, :cond_0

    .line 105
    const-string v1, "login_type"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 107
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 108
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->doitAPI()Lim/doit/pro/api/DoitAPI;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Lim/doit/pro/api/DoitAPI;->setCredentials(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    const/4 v1, 0x1

    return v1
.end method

.method public static saveMaxUSN(J)V
    .locals 4
    .param p0, "usn"    # J

    .prologue
    .line 59
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->getMaxUSN()J

    move-result-wide v2

    cmp-long v1, v2, p0

    if-lez v1, :cond_0

    .line 66
    :goto_0
    return-void

    .line 62
    :cond_0
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->pref()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 63
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "max_usn"

    invoke-interface {v0, v1, p0, p1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 64
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 65
    invoke-static {p0, p1}, Lim/doit/pro/activity/DoitApp;->updateMaxUSN(J)V

    goto :goto_0
.end method

.method public static savePassword(Ljava/lang/String;)Z
    .locals 2
    .param p0, "password"    # Ljava/lang/String;

    .prologue
    .line 113
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->pref()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 114
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "login_password"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 115
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 116
    const/4 v1, 0x1

    return v1
.end method

.method public static saveReminderIsShowInNotification(Z)V
    .locals 2
    .param p0, "isShow"    # Z

    .prologue
    .line 166
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->pref()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 167
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "reminder_is_show_in_notification"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 168
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 169
    return-void
.end method

.method public static saveReminderPopupStyle(Ljava/lang/String;)V
    .locals 2
    .param p0, "style"    # Ljava/lang/String;

    .prologue
    .line 172
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->pref()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 173
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "reminder_popup_style"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 174
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 175
    return-void
.end method

.method public static saveServer(Ljava/lang/String;)V
    .locals 2
    .param p0, "server"    # Ljava/lang/String;

    .prologue
    .line 49
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->pref()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 50
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_server"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 51
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 52
    return-void
.end method

.method public static saveServerTime(J)V
    .locals 2
    .param p0, "serverTime"    # J

    .prologue
    .line 69
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->pref()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 70
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "server_time"

    invoke-interface {v0, v1, p0, p1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 71
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 72
    return-void
.end method

.method public static saveShowDailyPlanOrReviewGuestureGuide(Z)V
    .locals 2
    .param p0, "show"    # Z

    .prologue
    .line 266
    invoke-static {}, Lim/doit/pro/utils/PrefUtils;->rootPrefs()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 267
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "is_show_daily_plan_or_review_guesture_guide"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 269
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 270
    return-void
.end method

.method public static saveShowDailyPlanReviewGuide(Z)V
    .locals 2
    .param p0, "show"    # Z

    .prologue
    .line 255
    invoke-static {}, Lim/doit/pro/utils/PrefUtils;->rootPrefs()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 256
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "is_show_daily_plan_review_guide"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 257
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 258
    return-void
.end method

.method public static saveShowEvernoteGuide(Z)V
    .locals 2
    .param p0, "show"    # Z

    .prologue
    .line 244
    invoke-static {}, Lim/doit/pro/utils/PrefUtils;->rootPrefs()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 245
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "is_show_evernote_guide"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 246
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 247
    return-void
.end method

.method public static updateInitInstall(Z)V
    .locals 2
    .param p0, "init"    # Z

    .prologue
    .line 27
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->pref()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 28
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "init_install"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 29
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 30
    return-void
.end method

.method public static updateMaxPosition(J)V
    .locals 4
    .param p0, "position"    # J

    .prologue
    .line 135
    invoke-static {}, Lim/doit/pro/utils/PrefUtils;->getMaxPosition()J

    move-result-wide v2

    .line 136
    .local v2, "maxPosition":J
    cmp-long v1, p0, v2

    if-lez v1, :cond_0

    .line 137
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->pref()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 138
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "max_position"

    invoke-interface {v0, v1, p0, p1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 139
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 141
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method
