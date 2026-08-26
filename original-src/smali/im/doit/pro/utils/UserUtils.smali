.class public Lim/doit/pro/utils/UserUtils;
.super Ljava/lang/Object;
.source "UserUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAccount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->user()Lim/doit/pro/model/User;

    move-result-object v0

    invoke-virtual {v0}, Lim/doit/pro/model/User;->getAccount()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDateFormat()Ljava/lang/String;
    .locals 2

    .prologue
    .line 30
    const/4 v0, 0x0

    .line 31
    .local v0, "dateFormat":Ljava/lang/String;
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->user()Lim/doit/pro/model/User;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 32
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->user()Lim/doit/pro/model/User;

    move-result-object v1

    invoke-virtual {v1}, Lim/doit/pro/model/User;->getDateFormat()Ljava/lang/String;

    move-result-object v0

    .line 34
    :cond_0
    const-string v1, "yyyy-mm-dd"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 35
    const-string v0, "yyyy-MM-dd"

    .line 43
    :goto_0
    return-object v0

    .line 36
    :cond_1
    const-string v1, "mm/dd/yyyy"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 37
    const-string v0, "MM/dd/yyyy"

    .line 38
    goto :goto_0

    :cond_2
    const-string v1, "dd/mm/yyyy"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 39
    const-string v0, "dd/MM/yyyy"

    .line 40
    goto :goto_0

    .line 41
    :cond_3
    const-string v0, "yyyy-MM-dd"

    goto :goto_0
.end method

.method public static getDayOfWeekEnd(I)I
    .locals 1
    .param p0, "weekStart"    # I

    .prologue
    .line 239
    add-int/lit8 v0, p0, 0x6

    rem-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public static getDayOfWeekStart()I
    .locals 3

    .prologue
    .line 226
    invoke-static {}, Lim/doit/pro/utils/UserUtils;->getUserWeekStart()Ljava/lang/String;

    move-result-object v1

    .line 227
    .local v1, "weekStart":Ljava/lang/String;
    const/4 v0, 0x1

    .line 228
    .local v0, "start":I
    const-string v2, "Sunday"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 229
    const/4 v0, 0x1

    .line 235
    :cond_0
    :goto_0
    return v0

    .line 230
    :cond_1
    const-string v2, "Monday"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 231
    const/4 v0, 0x2

    .line 232
    goto :goto_0

    :cond_2
    const-string v2, "Saturday"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 233
    const/4 v0, 0x7

    goto :goto_0
.end method

.method public static getDoitLanguage()Ljava/lang/String;
    .locals 3

    .prologue
    .line 115
    const-string v0, "en"

    .line 116
    .local v0, "language":Ljava/lang/String;
    invoke-static {}, Lim/doit/pro/utils/LocalSettings;->getLocalLang()Ljava/lang/String;

    move-result-object v1

    .line 117
    .local v1, "localLanguage":Ljava/lang/String;
    invoke-static {v1}, Lim/doit/pro/utils/LocalSettings;->isCn(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 118
    const-string v0, "cn"

    .line 124
    :cond_0
    :goto_0
    return-object v0

    .line 119
    :cond_1
    invoke-static {v1}, Lim/doit/pro/utils/LocalSettings;->isTw(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 120
    const-string v0, "tw"

    .line 121
    goto :goto_0

    :cond_2
    invoke-static {v1}, Lim/doit/pro/utils/LocalSettings;->isJa(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 122
    const-string v0, "ja"

    goto :goto_0
.end method

.method public static getGoogleToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 207
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->user()Lim/doit/pro/model/User;

    move-result-object v0

    if-nez v0, :cond_0

    .line 208
    const/4 v0, 0x0

    .line 210
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->user()Lim/doit/pro/model/User;

    move-result-object v0

    invoke-virtual {v0}, Lim/doit/pro/model/User;->getGoogleCalendar()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->user()Lim/doit/pro/model/User;

    move-result-object v0

    invoke-virtual {v0}, Lim/doit/pro/model/User;->getUuid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMonthDayFormat()Ljava/lang/String;
    .locals 3

    .prologue
    .line 47
    const/4 v0, 0x0

    .line 48
    .local v0, "dateFormat":Ljava/lang/String;
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->user()Lim/doit/pro/model/User;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 49
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->user()Lim/doit/pro/model/User;

    move-result-object v2

    invoke-virtual {v2}, Lim/doit/pro/model/User;->getDateFormat()Ljava/lang/String;

    move-result-object v0

    .line 51
    :cond_0
    const/4 v1, 0x0

    .line 52
    .local v1, "monthDayFormat":Ljava/lang/String;
    const-string v2, "yyyy-mm-dd"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 53
    const-string v1, "MM-dd"

    .line 61
    :goto_0
    return-object v1

    .line 54
    :cond_1
    const-string v2, "mm/dd/yyyy"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 55
    const-string v1, "MM/dd"

    .line 56
    goto :goto_0

    :cond_2
    const-string v2, "dd/mm/yyyy"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 57
    const-string v1, "dd/MM"

    .line 58
    goto :goto_0

    .line 59
    :cond_3
    const-string v1, "MM-dd"

    goto :goto_0
.end method

.method public static getTimeFormat()I
    .locals 2

    .prologue
    .line 65
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->user()Lim/doit/pro/model/User;

    move-result-object v1

    invoke-virtual {v1}, Lim/doit/pro/model/User;->getTimeFormat()I

    move-result v0

    .line 66
    .local v0, "timeFormat":I
    if-nez v0, :cond_0

    .line 67
    const/16 v0, 0x18

    .line 69
    :cond_0
    return v0
.end method

.method public static getTimeZone()Ljava/lang/String;
    .locals 3

    .prologue
    .line 194
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->user()Lim/doit/pro/model/User;

    move-result-object v1

    if-nez v1, :cond_0

    .line 195
    const/4 v0, 0x0

    .line 203
    .local v0, "timezone":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 197
    .end local v0    # "timezone":Ljava/lang/String;
    :cond_0
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->user()Lim/doit/pro/model/User;

    move-result-object v1

    invoke-virtual {v1}, Lim/doit/pro/model/User;->getTimezone()Ljava/lang/String;

    move-result-object v0

    .line 198
    .restart local v0    # "timezone":Ljava/lang/String;
    invoke-static {v0}, Lim/doit/pro/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 199
    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 200
    goto :goto_0

    .line 201
    :cond_1
    const-string v1, "get user timezone is null."

    invoke-static {v1}, Lim/doit/pro/utils/Logger;->e(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static getUserWeekStart()Ljava/lang/String;
    .locals 2

    .prologue
    .line 215
    const/4 v0, 0x0

    .line 216
    .local v0, "weekStart":Ljava/lang/String;
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->user()Lim/doit/pro/model/User;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 217
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->user()Lim/doit/pro/model/User;

    move-result-object v1

    invoke-virtual {v1}, Lim/doit/pro/model/User;->getWeekStart()Ljava/lang/String;

    move-result-object v0

    .line 219
    :cond_0
    invoke-static {v0}, Lim/doit/pro/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 220
    const-string v0, "Monday"

    .line 222
    :cond_1
    return-object v0
.end method

.method public static getUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->user()Lim/doit/pro/model/User;

    move-result-object v0

    invoke-virtual {v0}, Lim/doit/pro/model/User;->getEmail()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getWeekEnd()I
    .locals 1

    .prologue
    .line 243
    invoke-static {}, Lim/doit/pro/utils/UserUtils;->getDayOfWeekStart()I

    move-result v0

    add-int/lit8 v0, v0, 0x6

    rem-int/lit8 v0, v0, 0x7

    return v0
.end method

.method public static is12Hour()Z
    .locals 2

    .prologue
    .line 73
    const/16 v0, 0xc

    invoke-static {}, Lim/doit/pro/utils/UserUtils;->getTimeFormat()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 74
    const/4 v0, 0x1

    .line 76
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static is24Hour()Z
    .locals 2

    .prologue
    .line 80
    const/16 v0, 0x18

    invoke-static {}, Lim/doit/pro/utils/UserUtils;->getTimeFormat()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 81
    const/4 v0, 0x1

    .line 83
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isCn(Ljava/lang/String;)Z
    .locals 1
    .param p0, "language"    # Ljava/lang/String;

    .prologue
    .line 103
    const-string v0, "cn"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isEn(Ljava/lang/String;)Z
    .locals 1
    .param p0, "language"    # Ljava/lang/String;

    .prologue
    .line 99
    const-string v0, "en"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isJa(Ljava/lang/String;)Z
    .locals 1
    .param p0, "language"    # Ljava/lang/String;

    .prologue
    .line 111
    const-string v0, "ja"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isNotPro()Z
    .locals 1

    const/4 v0, 0x0

    return v0

.end method

.method public static isNotReminderDailyPlan()Z
    .locals 1

    .prologue
    .line 128
    invoke-static {}, Lim/doit/pro/utils/UserUtils;->isNotPro()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lim/doit/pro/activity/DoitApp;->user()Lim/doit/pro/model/User;

    move-result-object v0

    invoke-virtual {v0}, Lim/doit/pro/model/User;->isRemindDailyPlan()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isNotReminderDailyReview()Z
    .locals 1

    .prologue
    .line 132
    invoke-static {}, Lim/doit/pro/utils/UserUtils;->isNotPro()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lim/doit/pro/activity/DoitApp;->user()Lim/doit/pro/model/User;

    move-result-object v0

    invoke-virtual {v0}, Lim/doit/pro/model/User;->isRemindDailyReview()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isOverduePro()Z
    .locals 1

    .prologue
    .line 159
    invoke-static {}, Lim/doit/pro/utils/UserUtils;->isPro()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lim/doit/pro/utils/UserUtils;->isValidPro()Z

    move-result v0

    if-nez v0, :cond_0

    .line 160
    const/4 v0, 0x1

    .line 162
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isPro()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 183
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->user()Lim/doit/pro/model/User;

    move-result-object v2

    if-nez v2, :cond_1

    .line 190
    .local v0, "payEndAt":Ljava/util/Calendar;
    :cond_0
    :goto_0
    return v1

    .line 186
    .end local v0    # "payEndAt":Ljava/util/Calendar;
    :cond_1
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->user()Lim/doit/pro/model/User;

    move-result-object v2

    invoke-virtual {v2}, Lim/doit/pro/model/User;->getPayEndAt()Ljava/util/Calendar;

    move-result-object v0

    .line 187
    .restart local v0    # "payEndAt":Ljava/util/Calendar;
    if-eqz v0, :cond_0

    .line 188
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isStandardAccount()Z
    .locals 1

    .prologue
    .line 151
    invoke-static {}, Lim/doit/pro/utils/UserUtils;->isPro()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isTw(Ljava/lang/String;)Z
    .locals 1
    .param p0, "language"    # Ljava/lang/String;

    .prologue
    .line 107
    const-string v0, "tw"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isValidPro()Z
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 170
    invoke-static {}, Lim/doit/pro/utils/UserUtils;->isPro()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 171
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->user()Lim/doit/pro/model/User;

    move-result-object v4

    invoke-virtual {v4}, Lim/doit/pro/model/User;->getPayStartAt()Ljava/util/Calendar;

    move-result-object v2

    .line 172
    .local v2, "payStartAt":Ljava/util/Calendar;
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->user()Lim/doit/pro/model/User;

    move-result-object v4

    invoke-virtual {v4}, Lim/doit/pro/model/User;->getPayEndAt()Ljava/util/Calendar;

    move-result-object v1

    .line 173
    .local v1, "payEndAt":Ljava/util/Calendar;
    const-string v4, "UTC"

    invoke-static {v4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 174
    .local v0, "now":Ljava/util/Calendar;
    invoke-static {v0, v2, v3}, Lim/doit/pro/utils/DateUtils;->afterOrEq(Ljava/util/Calendar;Ljava/util/Calendar;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v0, v1, v3}, Lim/doit/pro/utils/DateUtils;->beforeOrEq(Ljava/util/Calendar;Ljava/util/Calendar;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 178
    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static saveDateFormat(Ljava/lang/String;)V
    .locals 2
    .param p0, "dateFormat"    # Ljava/lang/String;

    .prologue
    .line 20
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->user()Lim/doit/pro/model/User;

    move-result-object v0

    invoke-virtual {v0, p0}, Lim/doit/pro/model/User;->setDateFormat(Ljava/lang/String;)V

    .line 21
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v0

    iget-object v0, v0, Lim/doit/pro/db/Persist;->userDao:Lim/doit/pro/db/persist/UserDao;

    invoke-static {}, Lim/doit/pro/activity/DoitApp;->user()Lim/doit/pro/model/User;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/db/persist/UserDao;->updateAndSaveLog(Lim/doit/pro/model/User;)V

    .line 22
    return-void
.end method

.method public static saveTimeFormat(I)V
    .locals 2
    .param p0, "timeFormat"    # I

    .prologue
    .line 25
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->user()Lim/doit/pro/model/User;

    move-result-object v0

    invoke-virtual {v0, p0}, Lim/doit/pro/model/User;->setTimeFormat(I)V

    .line 26
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v0

    iget-object v0, v0, Lim/doit/pro/db/Persist;->userDao:Lim/doit/pro/db/persist/UserDao;

    invoke-static {}, Lim/doit/pro/activity/DoitApp;->user()Lim/doit/pro/model/User;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/db/persist/UserDao;->updateAndSaveLog(Lim/doit/pro/model/User;)V

    .line 27
    return-void
.end method

.method public static saveWeekStart(Z)V
    .locals 2
    .param p0, "weekStartsOnSunday"    # Z

    .prologue
    .line 11
    if-eqz p0, :cond_0

    .line 12
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->user()Lim/doit/pro/model/User;

    move-result-object v0

    const-string v1, "Sunday"

    invoke-virtual {v0, v1}, Lim/doit/pro/model/User;->setWeekStart(Ljava/lang/String;)V

    .line 16
    :goto_0
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v0

    iget-object v0, v0, Lim/doit/pro/db/Persist;->userDao:Lim/doit/pro/db/persist/UserDao;

    invoke-static {}, Lim/doit/pro/activity/DoitApp;->user()Lim/doit/pro/model/User;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/db/persist/UserDao;->updateAndSaveLog(Lim/doit/pro/model/User;)V

    .line 17
    return-void

    .line 14
    :cond_0
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->user()Lim/doit/pro/model/User;

    move-result-object v0

    const-string v1, "Monday"

    invoke-virtual {v0, v1}, Lim/doit/pro/model/User;->setWeekStart(Ljava/lang/String;)V

    goto :goto_0
.end method
