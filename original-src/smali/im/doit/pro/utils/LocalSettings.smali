.class public Lim/doit/pro/utils/LocalSettings;
.super Ljava/lang/Object;
.source "LocalSettings.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFormatDateHourMinute()Ljava/lang/String;
    .locals 2

    .prologue
    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Lim/doit/pro/utils/UserUtils;->getDateFormat()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lim/doit/pro/utils/LocalSettings;->getFormatHourMinute()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFormatDateTime()Ljava/lang/String;
    .locals 2

    .prologue
    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Lim/doit/pro/utils/UserUtils;->getDateFormat()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lim/doit/pro/utils/UserUtils;->is12Hour()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "hh"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":mm:ss"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lim/doit/pro/utils/UserUtils;->is12Hour()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, " a"

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "HH"

    goto :goto_0

    :cond_1
    const-string v0, ""

    goto :goto_1
.end method

.method public static getFormatHourMinute()Ljava/lang/String;
    .locals 2

    .prologue
    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Lim/doit/pro/utils/UserUtils;->is12Hour()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "hh"

    :goto_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, ":mm"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lim/doit/pro/utils/UserUtils;->is12Hour()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, " a"

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "HH"

    goto :goto_0

    :cond_1
    const-string v0, ""

    goto :goto_1
.end method

.method public static getGenstureLockKey()Ljava/lang/String;
    .locals 3

    .prologue
    .line 147
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->pref()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "gensture_lock_key"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLastCheckTimezoneTime()J
    .locals 4

    .prologue
    .line 119
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->pref()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "last_check_timezone_time"

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getLastCheckVersionTime()J
    .locals 4

    .prologue
    .line 109
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->pref()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "last_check_version_time"

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getLocalLang()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLocaleInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getReminderPopupStyle()Ljava/lang/String;
    .locals 3

    .prologue
    .line 133
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->pref()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "reminder_popup_style"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getReminderSnoozeTime()I
    .locals 3

    .prologue
    .line 89
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->pref()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "reminder_snooze_time"

    const/4 v2, 0x5

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getUrlRingtone()Ljava/lang/String;
    .locals 3

    .prologue
    .line 85
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->pref()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "reminder_ringtone_uri"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getWidgetBGAlpha()I
    .locals 3

    .prologue
    .line 183
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->pref()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "widget_bg_alpha"

    const/16 v2, 0x64

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getWidgetBGColor()Ljava/lang/String;
    .locals 3

    .prologue
    .line 173
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->pref()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "widget_bg_color"

    const-string v2, "#000000"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getWidgetFontScale()F
    .locals 3

    .prologue
    .line 163
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->pref()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "widget_font_scale"

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public static isCn()Z
    .locals 2

    .prologue
    .line 33
    invoke-static {}, Lim/doit/pro/utils/LocalSettings;->getLocalLang()Ljava/lang/String;

    move-result-object v0

    .line 34
    .local v0, "lang":Ljava/lang/String;
    invoke-static {v0}, Lim/doit/pro/utils/LocalSettings;->isCn(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public static isCn(Ljava/lang/String;)Z
    .locals 1
    .param p0, "lang"    # Ljava/lang/String;

    .prologue
    .line 38
    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 39
    :cond_0
    const/4 v0, 0x1

    .line 41
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isEn()Z
    .locals 2

    .prologue
    .line 57
    invoke-static {}, Lim/doit/pro/utils/LocalSettings;->getLocalLang()Ljava/lang/String;

    move-result-object v0

    .line 58
    .local v0, "lang":Ljava/lang/String;
    invoke-static {v0}, Lim/doit/pro/utils/LocalSettings;->isEn(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public static isEn(Ljava/lang/String;)Z
    .locals 1
    .param p0, "lang"    # Ljava/lang/String;

    .prologue
    .line 62
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Ljava/util/Locale;->UK:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 63
    :cond_0
    const/4 v0, 0x1

    .line 65
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isJa()Z
    .locals 2

    .prologue
    .line 69
    invoke-static {}, Lim/doit/pro/utils/LocalSettings;->getLocalLang()Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, "lang":Ljava/lang/String;
    invoke-static {v0}, Lim/doit/pro/utils/LocalSettings;->isJa(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public static isJa(Ljava/lang/String;)Z
    .locals 1
    .param p0, "lang"    # Ljava/lang/String;

    .prologue
    .line 74
    sget-object v0, Ljava/util/Locale;->JAPAN:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Ljava/util/Locale;->JAPANESE:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 75
    :cond_0
    const/4 v0, 0x1

    .line 77
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isReminderShowInNotification()Z
    .locals 3

    .prologue
    .line 129
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->pref()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "reminder_is_show_in_notification"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isShowGenstureLock()Z
    .locals 3

    .prologue
    .line 137
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->pref()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "is_show_gensture_lock"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isShowSmartaddOnNotification()Z
    .locals 3

    .prologue
    .line 99
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->pref()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "is_show_smartadd_on_notification"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isTw()Z
    .locals 2

    .prologue
    .line 45
    invoke-static {}, Lim/doit/pro/utils/LocalSettings;->getLocalLang()Ljava/lang/String;

    move-result-object v0

    .line 46
    .local v0, "lang":Ljava/lang/String;
    invoke-static {v0}, Lim/doit/pro/utils/LocalSettings;->isTw(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public static isTw(Ljava/lang/String;)Z
    .locals 1
    .param p0, "lang"    # Ljava/lang/String;

    .prologue
    .line 50
    sget-object v0, Ljava/util/Locale;->TAIWAN:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    const/4 v0, 0x1

    .line 53
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isVibrate()Z
    .locals 3

    .prologue
    .line 81
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->pref()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "reminder_vibrate"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static saveGenstureLockKey(Ljava/lang/String;)V
    .locals 2
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 151
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->pref()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 152
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "gensture_lock_key"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 153
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 154
    return-void
.end method

.method public static saveIsShowGenstureLock(Z)V
    .locals 2
    .param p0, "isShow"    # Z

    .prologue
    .line 141
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->pref()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 142
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "is_show_gensture_lock"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 143
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 144
    return-void
.end method

.method public static saveReminderSnoozeTime(I)V
    .locals 2
    .param p0, "time"    # I

    .prologue
    .line 93
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->pref()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 94
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "reminder_snooze_time"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 95
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 96
    return-void
.end method

.method public static saveShowSmartaddOnNotification(Z)V
    .locals 2
    .param p0, "isShow"    # Z

    .prologue
    .line 103
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->pref()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 104
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "is_show_smartadd_on_notification"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 105
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 106
    return-void
.end method

.method public static saveWidgetBGAlpha(I)V
    .locals 2
    .param p0, "alpha"    # I

    .prologue
    .line 177
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->pref()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 178
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "widget_bg_alpha"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 179
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 180
    return-void
.end method

.method public static saveWidgetBGColor(Ljava/lang/String;)V
    .locals 2
    .param p0, "color"    # Ljava/lang/String;

    .prologue
    .line 167
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->pref()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 168
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "widget_bg_color"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 169
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 170
    return-void
.end method

.method public static saveWidgetFontScale(F)V
    .locals 2
    .param p0, "scale"    # F

    .prologue
    .line 157
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->pref()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 158
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "widget_font_scale"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 159
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 160
    return-void
.end method

.method public static updateCheckTimezoneTime(J)V
    .locals 2
    .param p0, "timeMillis"    # J

    .prologue
    .line 123
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->pref()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 124
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "last_check_timezone_time"

    invoke-interface {v0, v1, p0, p1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 125
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 126
    return-void
.end method

.method public static updateCheckVersionTime(J)V
    .locals 2
    .param p0, "timeMillis"    # J

    .prologue
    .line 113
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->pref()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 114
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "last_check_version_time"

    invoke-interface {v0, v1, p0, p1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 115
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 116
    return-void
.end method
