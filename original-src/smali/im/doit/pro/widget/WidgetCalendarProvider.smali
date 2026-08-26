.class public Lim/doit/pro/widget/WidgetCalendarProvider;
.super Lim/doit/pro/widget/DoitBaseProvider;
.source "WidgetCalendarProvider.java"


# static fields
.field public static final ACTION_COMPLETE_CLICK:Ljava/lang/String; = "im.doit.pro.widget.WidgetCalendarProvider.complete_click"

.field public static final ACTION_DAY_OF_MONTH_CLICK:Ljava/lang/String; = "im.doit.pro.widget.WidgetCalendarProvider.day_of_month_click"

.field public static final ACTION_ITEM_CLICK:Ljava/lang/String; = "im.doit.pro.widget.WidgetCalendarProvider.item_click"

.field public static final ACTION_NEXT_WEEK:Ljava/lang/String; = "im.doit.pro.widget.WidgetCalendarProvider.next_week"

.field public static final ACTION_PRE_WEEK:Ljava/lang/String; = "im.doit.pro.widget.WidgetCalendarProvider.pre_week"

.field public static final ACTION_TODAY:Ljava/lang/String; = "im.doit.pro.widget.WidgetCalendarProvider.today"

.field public static final ACTION_UPDATE_SELECTED_DATE_TO_TODAY:Ljava/lang/String; = "im.doit.pro.widget.WidgetCalendarProvider.update_selected_date_to_today"

.field public static EXTRA_APP_WIDGET_ID:Ljava/lang/String; = null

.field public static EXTRA_DATA_ID:Ljava/lang/String; = null

.field public static EXTRA_DATA_TYPE:Ljava/lang/String; = null

.field public static final PREFS_NAME:Ljava/lang/String; = "im.doit.pro.widget.WidgetCalendarProvider"

.field public static PREF_SELECTED_DATE:Ljava/lang/String;


# instance fields
.field private nextBtnSrc:I

.field private preBtnSrc:I

.field private todaySrc:I

.field private weekSelectedSrc:I

.field private withtaskSrc:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-string v0, "im.doit.pro.widget.WidgetCalendarProvider.data_id"

    sput-object v0, Lim/doit/pro/widget/WidgetCalendarProvider;->EXTRA_DATA_ID:Ljava/lang/String;

    .line 40
    const-string v0, "im.doit.pro.widget.WidgetCalendarProvider.data_type"

    sput-object v0, Lim/doit/pro/widget/WidgetCalendarProvider;->EXTRA_DATA_TYPE:Ljava/lang/String;

    .line 41
    const-string v0, "im.doit.pro.widget.WidgetCalendarProvider.app_widget_id"

    sput-object v0, Lim/doit/pro/widget/WidgetCalendarProvider;->EXTRA_APP_WIDGET_ID:Ljava/lang/String;

    .line 43
    const-string v0, "selected_date_"

    sput-object v0, Lim/doit/pro/widget/WidgetCalendarProvider;->PREF_SELECTED_DATE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lim/doit/pro/widget/DoitBaseProvider;-><init>()V

    return-void
.end method

.method private buildLayout(Landroid/content/Context;I)Landroid/widget/RemoteViews;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appWidgetId"    # I

    .prologue
    .line 134
    invoke-static {}, Lim/doit/pro/utils/DateUtils;->startOfToday()Ljava/util/Calendar;

    move-result-object v3

    .line 136
    .local v3, "today":Ljava/util/Calendar;
    new-instance v4, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 137
    const v6, 0x7f0300b3

    .line 136
    invoke-direct {v4, v5, v6}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 138
    .local v4, "views":Landroid/widget/RemoteViews;
    invoke-virtual {p0, v4}, Lim/doit/pro/widget/WidgetCalendarProvider;->setWidgetBackgroundColor(Landroid/widget/RemoteViews;)V

    .line 139
    invoke-direct {p0, v4}, Lim/doit/pro/widget/WidgetCalendarProvider;->setDividerColor(Landroid/widget/RemoteViews;)V

    .line 140
    invoke-direct {p0, p1, p2, v4, v3}, Lim/doit/pro/widget/WidgetCalendarProvider;->setTodayViewContent(Landroid/content/Context;ILandroid/widget/RemoteViews;Ljava/util/Calendar;)V

    .line 142
    invoke-direct {p0, p1}, Lim/doit/pro/widget/WidgetCalendarProvider;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 143
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-direct {p0, v1, p2}, Lim/doit/pro/widget/WidgetCalendarProvider;->getSelectedDate(Landroid/content/SharedPreferences;I)Ljava/util/Calendar;

    move-result-object v2

    .line 144
    .local v2, "selectedDate":Ljava/util/Calendar;
    invoke-direct {p0, v4, v2}, Lim/doit/pro/widget/WidgetCalendarProvider;->setWidgetTitle(Landroid/widget/RemoteViews;Ljava/util/Calendar;)V

    .line 146
    invoke-direct {p0, p1, v4, p2}, Lim/doit/pro/widget/WidgetCalendarProvider;->setOnPreWeek(Landroid/content/Context;Landroid/widget/RemoteViews;I)V

    .line 147
    invoke-direct {p0, p1, v4, p2}, Lim/doit/pro/widget/WidgetCalendarProvider;->setOnNextWeek(Landroid/content/Context;Landroid/widget/RemoteViews;I)V

    .line 148
    invoke-direct {p0, p1, v4}, Lim/doit/pro/widget/WidgetCalendarProvider;->setOnAddClick(Landroid/content/Context;Landroid/widget/RemoteViews;)V

    .line 150
    invoke-direct {p0, p1, p2, v4, v2}, Lim/doit/pro/widget/WidgetCalendarProvider;->setWeekViewContent(Landroid/content/Context;ILandroid/widget/RemoteViews;Ljava/util/Calendar;)V

    .line 152
    new-instance v0, Landroid/content/Intent;

    const-class v5, Lim/doit/pro/widget/WidgetCalendarService;

    invoke-direct {v0, p1, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 153
    .local v0, "intent":Landroid/content/Intent;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 154
    const-string v5, "appWidgetId"

    invoke-virtual {v0, v5, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 155
    const-string v5, "widget_date"

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    invoke-virtual {v0, v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 156
    const v5, 0x7f0b0069

    invoke-virtual {v4, v5, v0}, Landroid/widget/RemoteViews;->setRemoteAdapter(ILandroid/content/Intent;)V

    .line 158
    invoke-direct {p0, p1, p2, v4}, Lim/doit/pro/widget/WidgetCalendarProvider;->setOnItemClickTemplate(Landroid/content/Context;ILandroid/widget/RemoteViews;)V

    .line 160
    return-object v4
.end method

.method private getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 369
    const-string v0, "im.doit.pro.widget.WidgetCalendarProvider"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method private getSelectedDate(Landroid/content/SharedPreferences;I)Ljava/util/Calendar;
    .locals 4
    .param p1, "prefs"    # Landroid/content/SharedPreferences;
    .param p2, "appWidgetId"    # I

    .prologue
    .line 346
    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lim/doit/pro/widget/WidgetCalendarProvider;->PREF_SELECTED_DATE:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 347
    const/4 v3, 0x0

    .line 346
    invoke-interface {p1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 349
    .local v1, "dateFormat":Ljava/lang/String;
    invoke-static {v1}, Lim/doit/pro/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 350
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 354
    .local v0, "date":Ljava/util/Calendar;
    :goto_0
    return-object v0

    .line 352
    .end local v0    # "date":Ljava/util/Calendar;
    :cond_0
    const-string v2, "yyyy-MM-dd"

    invoke-static {v1, v2}, Lim/doit/pro/utils/DateUtils;->parse(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v0

    .restart local v0    # "date":Ljava/util/Calendar;
    goto :goto_0
.end method

.method private onDayOfMonthClick(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appWidgetManager"    # Landroid/appwidget/AppWidgetManager;
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    const-wide/16 v8, 0x0

    .line 403
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    sget-object v6, Lim/doit/pro/widget/WidgetCalendarProvider;->EXTRA_APP_WIDGET_ID:Ljava/lang/String;

    const/4 v7, -0x1

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 404
    .local v0, "appWidgetId":I
    invoke-direct {p0, p1}, Lim/doit/pro/widget/WidgetCalendarProvider;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 405
    .local v4, "prefs":Landroid/content/SharedPreferences;
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "widget_date"

    invoke-virtual {v5, v6, v8, v9}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 406
    .local v2, "millis":J
    cmp-long v5, v2, v8

    if-gtz v5, :cond_0

    .line 412
    :goto_0
    return-void

    .line 409
    :cond_0
    invoke-static {v2, v3}, Lim/doit/pro/utils/DateUtils;->convertToDate(J)Ljava/util/Calendar;

    move-result-object v1

    .line 410
    .local v1, "date":Ljava/util/Calendar;
    invoke-direct {p0, v4, v0, v1}, Lim/doit/pro/widget/WidgetCalendarProvider;->saveSelectedDate(Landroid/content/SharedPreferences;ILjava/util/Calendar;)V

    .line 411
    invoke-direct {p0, p1, p2, v0}, Lim/doit/pro/widget/WidgetCalendarProvider;->refreshView(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;I)V

    goto :goto_0
.end method

.method private onItemClick(Landroid/content/Context;Landroid/content/Intent;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "appWidgetManager"    # Landroid/appwidget/AppWidgetManager;
    .param p4, "appWidgetIds"    # [I

    .prologue
    .line 416
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->isLogin()Z

    move-result v2

    if-nez v2, :cond_1

    .line 417
    invoke-direct {p0, p1, p3, p4}, Lim/doit/pro/widget/WidgetCalendarProvider;->refreshView(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    .line 418
    invoke-virtual {p0, p1}, Lim/doit/pro/widget/WidgetCalendarProvider;->toLogin(Landroid/content/Context;)V

    .line 426
    :cond_0
    :goto_0
    return-void

    .line 421
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    sget-object v3, Lim/doit/pro/widget/WidgetCalendarProvider;->EXTRA_DATA_TYPE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 422
    .local v1, "dataType":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    sget-object v3, Lim/doit/pro/widget/WidgetCalendarProvider;->EXTRA_DATA_ID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 423
    .local v0, "dataId":Ljava/lang/String;
    const-class v2, Lim/doit/pro/model/Task;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 424
    invoke-direct {p0, p1, p3, p4, v0}, Lim/doit/pro/widget/WidgetCalendarProvider;->onViewTaskClick(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[ILjava/lang/String;)V

    goto :goto_0
.end method

.method private onNextWeekClick(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appWidgetManager"    # Landroid/appwidget/AppWidgetManager;
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    .line 393
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    sget-object v4, Lim/doit/pro/widget/WidgetCalendarProvider;->EXTRA_APP_WIDGET_ID:Ljava/lang/String;

    const/4 v5, -0x1

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 394
    .local v0, "appWidgetId":I
    invoke-direct {p0, p1}, Lim/doit/pro/widget/WidgetCalendarProvider;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 395
    .local v2, "prefs":Landroid/content/SharedPreferences;
    invoke-direct {p0, v2, v0}, Lim/doit/pro/widget/WidgetCalendarProvider;->getSelectedDate(Landroid/content/SharedPreferences;I)Ljava/util/Calendar;

    move-result-object v1

    .line 396
    .local v1, "date":Ljava/util/Calendar;
    const/4 v3, 0x3

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Ljava/util/Calendar;->add(II)V

    .line 397
    invoke-direct {p0, v2, v0, v1}, Lim/doit/pro/widget/WidgetCalendarProvider;->saveSelectedDate(Landroid/content/SharedPreferences;ILjava/util/Calendar;)V

    .line 398
    invoke-direct {p0, p1, p2, v0}, Lim/doit/pro/widget/WidgetCalendarProvider;->refreshView(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;I)V

    .line 399
    return-void
.end method

.method private onPreWeekClick(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appWidgetManager"    # Landroid/appwidget/AppWidgetManager;
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, -0x1

    .line 383
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    sget-object v4, Lim/doit/pro/widget/WidgetCalendarProvider;->EXTRA_APP_WIDGET_ID:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 384
    .local v0, "appWidgetId":I
    invoke-direct {p0, p1}, Lim/doit/pro/widget/WidgetCalendarProvider;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 385
    .local v2, "prefs":Landroid/content/SharedPreferences;
    invoke-direct {p0, v2, v0}, Lim/doit/pro/widget/WidgetCalendarProvider;->getSelectedDate(Landroid/content/SharedPreferences;I)Ljava/util/Calendar;

    move-result-object v1

    .line 386
    .local v1, "date":Ljava/util/Calendar;
    const/4 v3, 0x3

    invoke-virtual {v1, v3, v5}, Ljava/util/Calendar;->add(II)V

    .line 387
    invoke-direct {p0, v2, v0, v1}, Lim/doit/pro/widget/WidgetCalendarProvider;->saveSelectedDate(Landroid/content/SharedPreferences;ILjava/util/Calendar;)V

    .line 388
    invoke-direct {p0, p1, p2, v0}, Lim/doit/pro/widget/WidgetCalendarProvider;->refreshView(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;I)V

    .line 389
    return-void
.end method

.method private onTodayClick(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appWidgetManager"    # Landroid/appwidget/AppWidgetManager;
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    .line 374
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    sget-object v4, Lim/doit/pro/widget/WidgetCalendarProvider;->EXTRA_APP_WIDGET_ID:Ljava/lang/String;

    const/4 v5, -0x1

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 375
    .local v0, "appWidgetId":I
    invoke-direct {p0, p1}, Lim/doit/pro/widget/WidgetCalendarProvider;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 376
    .local v2, "prefs":Landroid/content/SharedPreferences;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 377
    .local v1, "date":Ljava/util/Calendar;
    invoke-direct {p0, v2, v0, v1}, Lim/doit/pro/widget/WidgetCalendarProvider;->saveSelectedDate(Landroid/content/SharedPreferences;ILjava/util/Calendar;)V

    .line 378
    invoke-direct {p0, p1, p2, v0}, Lim/doit/pro/widget/WidgetCalendarProvider;->refreshView(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;I)V

    .line 379
    return-void
.end method

.method private onViewTaskClick(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[ILjava/lang/String;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appWidgetManager"    # Landroid/appwidget/AppWidgetManager;
    .param p3, "appWidgetIds"    # [I
    .param p4, "dataId"    # Ljava/lang/String;

    .prologue
    .line 430
    const/4 v6, 0x0

    .local v6, "uuid":Ljava/lang/String;
    const/4 v2, 0x0

    .line 431
    .local v2, "repeatNo":Ljava/lang/String;
    const-string v7, "_"

    invoke-virtual {p4, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 432
    const-string v7, "_"

    invoke-virtual {p4, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 433
    .local v0, "arr":[Ljava/lang/String;
    const/4 v7, 0x0

    aget-object v6, v0, v7

    .line 434
    const/4 v7, 0x1

    aget-object v2, v0, v7

    .line 438
    .end local v0    # "arr":[Ljava/lang/String;
    :goto_0
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v7

    iget-object v7, v7, Lim/doit/pro/db/Persist;->taskDao:Lim/doit/pro/db/persist/TaskDao;

    invoke-virtual {v7, v6, v2}, Lim/doit/pro/db/persist/TaskDao;->findByUUIDAndRepeatNo(Ljava/lang/String;Ljava/lang/String;)Lim/doit/pro/model/Task;

    move-result-object v4

    .line 441
    .local v4, "task":Lim/doit/pro/model/Task;
    if-nez v4, :cond_0

    invoke-static {v2}, Lim/doit/pro/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 442
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v7

    iget-object v7, v7, Lim/doit/pro/db/Persist;->taskDao:Lim/doit/pro/db/persist/TaskDao;

    .line 443
    const/4 v8, 0x0

    .line 442
    invoke-virtual {v7, v6, v8}, Lim/doit/pro/db/persist/TaskDao;->findByUUIDAndRepeatNo(Ljava/lang/String;Ljava/lang/String;)Lim/doit/pro/model/Task;

    move-result-object v3

    .line 445
    .local v3, "repeaterTask":Lim/doit/pro/model/Task;
    const-string v7, "yyyyMMdd"

    .line 444
    invoke-static {v2, v7}, Lim/doit/pro/utils/DateUtils;->parse(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v1

    .line 446
    .local v1, "checkDate":Ljava/util/Calendar;
    if-eqz v3, :cond_0

    .line 447
    invoke-static {v3, v1}, Lim/doit/pro/utils/TaskUtils;->buildRepeaterInstance(Lim/doit/pro/model/Task;Ljava/util/Calendar;)Lim/doit/pro/model/Task;

    move-result-object v4

    .line 450
    .end local v1    # "checkDate":Ljava/util/Calendar;
    .end local v3    # "repeaterTask":Lim/doit/pro/model/Task;
    :cond_0
    if-eqz v4, :cond_2

    .line 451
    new-instance v5, Landroid/content/Intent;

    const-class v7, Lim/doit/pro/activity/TaskDetailActivity;

    invoke-direct {v5, p1, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 452
    .local v5, "taskIntent":Landroid/content/Intent;
    const/high16 v7, 0x10000000

    invoke-virtual {v5, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 453
    const-string v7, "task"

    invoke-virtual {v5, v7, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 454
    invoke-virtual {p1, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 458
    .end local v5    # "taskIntent":Landroid/content/Intent;
    :goto_1
    return-void

    .line 436
    .end local v4    # "task":Lim/doit/pro/model/Task;
    :cond_1
    move-object v6, p4

    goto :goto_0

    .line 456
    .restart local v4    # "task":Lim/doit/pro/model/Task;
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lim/doit/pro/widget/WidgetCalendarProvider;->refreshView(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    goto :goto_1
.end method

.method private refreshView(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appWidgetManager"    # Landroid/appwidget/AppWidgetManager;
    .param p3, "appWidgetId"    # I

    .prologue
    .line 470
    invoke-virtual {p0}, Lim/doit/pro/widget/WidgetCalendarProvider;->initWidgetSettings()V

    .line 471
    invoke-direct {p0, p1, p3}, Lim/doit/pro/widget/WidgetCalendarProvider;->buildLayout(Landroid/content/Context;I)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 473
    .local v0, "layout":Landroid/widget/RemoteViews;
    const v1, 0x7f0b0069

    .line 472
    invoke-virtual {p2, p3, v1}, Landroid/appwidget/AppWidgetManager;->notifyAppWidgetViewDataChanged(II)V

    .line 474
    invoke-virtual {p2, p3, v0}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 475
    return-void
.end method

.method private refreshView(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appWidgetManager"    # Landroid/appwidget/AppWidgetManager;
    .param p3, "appWidgetIds"    # [I

    .prologue
    .line 462
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p3

    if-lt v1, v2, :cond_0

    .line 466
    return-void

    .line 463
    :cond_0
    aget v0, p3, v1

    .line 464
    .local v0, "appWidgetId":I
    invoke-direct {p0, p1, p2, v0}, Lim/doit/pro/widget/WidgetCalendarProvider;->refreshView(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;I)V

    .line 462
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private saveSelectedDate(Landroid/content/SharedPreferences;ILjava/util/Calendar;)V
    .locals 3
    .param p1, "prefs"    # Landroid/content/SharedPreferences;
    .param p2, "appWidgetId"    # I
    .param p3, "selectedDate"    # Ljava/util/Calendar;

    .prologue
    .line 359
    if-nez p3, :cond_0

    .line 366
    :goto_0
    return-void

    .line 362
    :cond_0
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 363
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lim/doit/pro/widget/WidgetCalendarProvider;->PREF_SELECTED_DATE:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 364
    const-string v2, "yyyy-MM-dd"

    invoke-static {p3, v2}, Lim/doit/pro/utils/DateUtils;->format(Ljava/util/Calendar;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 363
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 365
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method

.method private setDividerColor(Landroid/widget/RemoteViews;)V
    .locals 3
    .param p1, "views"    # Landroid/widget/RemoteViews;

    .prologue
    .line 164
    const v0, 0x7f0b01e7

    const-string v1, "setBackgroundColor"

    .line 165
    iget v2, p0, Lim/doit/pro/widget/WidgetCalendarProvider;->dividerColor:I

    .line 164
    invoke-virtual {p1, v0, v1, v2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 166
    const v0, 0x7f0b020b

    const-string v1, "setBackgroundColor"

    .line 167
    iget v2, p0, Lim/doit/pro/widget/WidgetCalendarProvider;->dividerColor:I

    .line 166
    invoke-virtual {p1, v0, v1, v2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 168
    return-void
.end method

.method private setOnAddClick(Landroid/content/Context;Landroid/widget/RemoteViews;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "views"    # Landroid/widget/RemoteViews;

    .prologue
    const v4, 0x7f0b0114

    .line 310
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 311
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "im.doit.pro.widget.DoitBaseProvider.add"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 313
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    invoke-virtual {v2}, Ljava/util/Random;->nextInt()I

    move-result v2

    .line 314
    const/high16 v3, 0x8000000

    .line 312
    invoke-static {p1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 315
    .local v1, "pendingIntent":Landroid/app/PendingIntent;
    invoke-virtual {p2, v4, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 316
    const-string v2, "setImageResource"

    iget v3, p0, Lim/doit/pro/widget/WidgetCalendarProvider;->addBtnSrc:I

    invoke-virtual {p2, v4, v2, v3}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 317
    return-void
.end method

.method private setOnDayOfMonthClick(Landroid/content/Context;Landroid/widget/RemoteViews;IIJ)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "views"    # Landroid/widget/RemoteViews;
    .param p3, "appWidgetId"    # I
    .param p4, "viewId"    # I
    .param p5, "dateMillis"    # J

    .prologue
    .line 321
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 322
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "im.doit.pro.widget.WidgetCalendarProvider.day_of_month_click"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 323
    sget-object v2, Lim/doit/pro/widget/WidgetCalendarProvider;->EXTRA_APP_WIDGET_ID:Ljava/lang/String;

    invoke-virtual {v0, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 324
    const-string v2, "widget_date"

    invoke-virtual {v0, v2, p5, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 326
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    invoke-virtual {v2}, Ljava/util/Random;->nextInt()I

    move-result v2

    .line 327
    const/high16 v3, 0x8000000

    .line 325
    invoke-static {p1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 328
    .local v1, "pendingIntent":Landroid/app/PendingIntent;
    invoke-virtual {p2, p4, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 329
    return-void
.end method

.method private setOnItemClickTemplate(Landroid/content/Context;ILandroid/widget/RemoteViews;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appWidgetId"    # I
    .param p3, "rv"    # Landroid/widget/RemoteViews;

    .prologue
    .line 333
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lim/doit/pro/widget/WidgetCalendarProvider;

    invoke-direct {v0, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 335
    .local v0, "intent":Landroid/content/Intent;
    const/4 v2, 0x0

    const/high16 v3, 0x8000000

    .line 334
    invoke-static {p1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 336
    .local v1, "pendingIntent":Landroid/app/PendingIntent;
    const v2, 0x7f0b0069

    invoke-virtual {p3, v2, v1}, Landroid/widget/RemoteViews;->setPendingIntentTemplate(ILandroid/app/PendingIntent;)V

    .line 337
    return-void
.end method

.method private setOnNextWeek(Landroid/content/Context;Landroid/widget/RemoteViews;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "views"    # Landroid/widget/RemoteViews;
    .param p3, "appWidgetId"    # I

    .prologue
    const v4, 0x7f0b01e6

    .line 299
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 300
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "im.doit.pro.widget.WidgetCalendarProvider.next_week"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 301
    sget-object v2, Lim/doit/pro/widget/WidgetCalendarProvider;->EXTRA_APP_WIDGET_ID:Ljava/lang/String;

    invoke-virtual {v0, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 303
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    invoke-virtual {v2}, Ljava/util/Random;->nextInt()I

    move-result v2

    .line 304
    const/high16 v3, 0x8000000

    .line 302
    invoke-static {p1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 305
    .local v1, "pendingIntent":Landroid/app/PendingIntent;
    invoke-virtual {p2, v4, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 306
    const-string v2, "setImageResource"

    iget v3, p0, Lim/doit/pro/widget/WidgetCalendarProvider;->nextBtnSrc:I

    invoke-virtual {p2, v4, v2, v3}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 307
    return-void
.end method

.method private setOnPreWeek(Landroid/content/Context;Landroid/widget/RemoteViews;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "views"    # Landroid/widget/RemoteViews;
    .param p3, "appWidgetId"    # I

    .prologue
    const v4, 0x7f0b01e5

    .line 287
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 288
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "im.doit.pro.widget.WidgetCalendarProvider.pre_week"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 289
    sget-object v2, Lim/doit/pro/widget/WidgetCalendarProvider;->EXTRA_APP_WIDGET_ID:Ljava/lang/String;

    invoke-virtual {v0, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 291
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    invoke-virtual {v2}, Ljava/util/Random;->nextInt()I

    move-result v2

    .line 292
    const/high16 v3, 0x8000000

    .line 290
    invoke-static {p1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 293
    .local v1, "pendingIntent":Landroid/app/PendingIntent;
    invoke-virtual {p2, v4, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 294
    const-string v2, "setImageResource"

    iget v3, p0, Lim/doit/pro/widget/WidgetCalendarProvider;->preBtnSrc:I

    invoke-virtual {p2, v4, v2, v3}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 295
    return-void
.end method

.method private setTodayViewContent(Landroid/content/Context;ILandroid/widget/RemoteViews;Ljava/util/Calendar;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appWidgetId"    # I
    .param p3, "views"    # Landroid/widget/RemoteViews;
    .param p4, "today"    # Ljava/util/Calendar;

    .prologue
    const v4, 0x7f0b0072

    .line 216
    new-instance v2, Ljava/lang/StringBuilder;

    const/4 v3, 0x5

    invoke-virtual {p4, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v4, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 218
    const v2, 0x7f090062

    invoke-static {v2}, Lim/doit/pro/activity/utils/ViewUtils;->getDimens(I)F

    move-result v2

    .line 219
    iget v3, p0, Lim/doit/pro/widget/WidgetCalendarProvider;->fontScale:F

    mul-float/2addr v2, v3

    .line 218
    invoke-virtual {p0, p3, v4, v2}, Lim/doit/pro/widget/WidgetCalendarProvider;->setTextSize(Landroid/widget/RemoteViews;IF)V

    .line 220
    iget v2, p0, Lim/doit/pro/widget/WidgetCalendarProvider;->textColor:I

    invoke-virtual {p3, v4, v2}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 221
    const-string v2, "setBackgroundResource"

    iget v3, p0, Lim/doit/pro/widget/WidgetCalendarProvider;->todaySrc:I

    invoke-virtual {p3, v4, v2, v3}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 223
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 224
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "im.doit.pro.widget.WidgetCalendarProvider.today"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 225
    sget-object v2, Lim/doit/pro/widget/WidgetCalendarProvider;->EXTRA_APP_WIDGET_ID:Ljava/lang/String;

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 227
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    invoke-virtual {v2}, Ljava/util/Random;->nextInt()I

    move-result v2

    .line 228
    const/high16 v3, 0x8000000

    .line 226
    invoke-static {p1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 229
    .local v1, "pendingIntent":Landroid/app/PendingIntent;
    invoke-virtual {p3, v4, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 230
    return-void
.end method

.method private setWeekViewContent(Landroid/content/Context;ILandroid/widget/RemoteViews;Ljava/util/Calendar;)V
    .locals 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appWidgetId"    # I
    .param p3, "views"    # Landroid/widget/RemoteViews;
    .param p4, "selectedDate"    # Ljava/util/Calendar;

    .prologue
    .line 172
    invoke-static/range {p4 .. p4}, Lim/doit/pro/utils/DateUtils;->getDoitStartOfThisWeek(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v2

    .line 173
    .local v2, "date":Ljava/util/Calendar;
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    const/4 v3, 0x7

    if-lt v11, v3, :cond_0

    .line 212
    return-void

    .line 175
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "cell_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "id"

    invoke-static {v3, v4}, Lim/doit/pro/activity/utils/ViewUtils;->getId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 177
    .local v7, "cellId":I
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    move-object v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p3

    move/from16 v6, p2

    .line 176
    invoke-direct/range {v3 .. v9}, Lim/doit/pro/widget/WidgetCalendarProvider;->setOnDayOfMonthClick(Landroid/content/Context;Landroid/widget/RemoteViews;IIJ)V

    .line 179
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "week_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "id"

    invoke-static {v3, v4}, Lim/doit/pro/activity/utils/ViewUtils;->getId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v13

    .line 181
    .local v13, "weekId":I
    sget-object v3, Lim/doit/pro/utils/Constants;->DAY_OF_WEEK_SHORT:[I

    .line 182
    const/4 v4, 0x7

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .line 181
    aget v3, v3, v4

    invoke-static {v3}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v3

    .line 180
    move-object/from16 v0, p3

    invoke-virtual {v0, v13, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 184
    const v3, 0x7f090060

    invoke-static {v3}, Lim/doit/pro/activity/utils/ViewUtils;->getDimens(I)F

    move-result v3

    .line 185
    iget v4, p0, Lim/doit/pro/widget/WidgetCalendarProvider;->fontScale:F

    .line 184
    mul-float/2addr v3, v4

    .line 183
    move-object/from16 v0, p3

    invoke-virtual {p0, v0, v13, v3}, Lim/doit/pro/widget/WidgetCalendarProvider;->setTextSize(Landroid/widget/RemoteViews;IF)V

    .line 186
    iget v3, p0, Lim/doit/pro/widget/WidgetCalendarProvider;->textColor:I

    move-object/from16 v0, p3

    invoke-virtual {v0, v13, v3}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 188
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "day_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "id"

    invoke-static {v3, v4}, Lim/doit/pro/activity/utils/ViewUtils;->getId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    .line 190
    .local v10, "dayId":I
    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 189
    move-object/from16 v0, p3

    invoke-virtual {v0, v10, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 192
    const v3, 0x7f090061

    invoke-static {v3}, Lim/doit/pro/activity/utils/ViewUtils;->getDimens(I)F

    move-result v3

    .line 193
    iget v4, p0, Lim/doit/pro/widget/WidgetCalendarProvider;->fontScale:F

    .line 192
    mul-float/2addr v3, v4

    .line 191
    move-object/from16 v0, p3

    invoke-virtual {p0, v0, v10, v3}, Lim/doit/pro/widget/WidgetCalendarProvider;->setTextSize(Landroid/widget/RemoteViews;IF)V

    .line 194
    iget v3, p0, Lim/doit/pro/widget/WidgetCalendarProvider;->textColor:I

    move-object/from16 v0, p3

    invoke-virtual {v0, v10, v3}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 196
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "withtask_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "id"

    invoke-static {v3, v4}, Lim/doit/pro/activity/utils/ViewUtils;->getId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v14

    .line 197
    .local v14, "withtaskId":I
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v3

    iget-object v3, v3, Lim/doit/pro/db/Persist;->taskDao:Lim/doit/pro/db/persist/TaskDao;

    invoke-virtual {v3, v2}, Lim/doit/pro/db/persist/TaskDao;->countOfLiveByStartAt(Ljava/util/Calendar;)I

    move-result v3

    if-lez v3, :cond_1

    .line 198
    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v14, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 199
    const-string v3, "setImageResource"

    iget v4, p0, Lim/doit/pro/widget/WidgetCalendarProvider;->withtaskSrc:I

    move-object/from16 v0, p3

    invoke-virtual {v0, v14, v3, v4}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 204
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "selected_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "id"

    invoke-static {v3, v4}, Lim/doit/pro/activity/utils/ViewUtils;->getId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v12

    .line 205
    .local v12, "selectedId":I
    move-object/from16 v0, p4

    invoke-static {v2, v0}, Lim/doit/pro/utils/DateUtils;->diffDay(Ljava/util/Calendar;Ljava/util/Calendar;)I

    move-result v3

    if-nez v3, :cond_2

    .line 206
    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v12, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 207
    const-string v3, "setImageResource"

    iget v4, p0, Lim/doit/pro/widget/WidgetCalendarProvider;->weekSelectedSrc:I

    move-object/from16 v0, p3

    invoke-virtual {v0, v12, v3, v4}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 173
    :goto_2
    add-int/lit8 v11, v11, 0x1

    const/4 v3, 0x5

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->add(II)V

    goto/16 :goto_0

    .line 201
    .end local v12    # "selectedId":I
    :cond_1
    const/4 v3, 0x4

    move-object/from16 v0, p3

    invoke-virtual {v0, v14, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_1

    .line 209
    .restart local v12    # "selectedId":I
    :cond_2
    const/4 v3, 0x4

    move-object/from16 v0, p3

    invoke-virtual {v0, v12, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_2
.end method

.method private setWidgetTitle(Landroid/widget/RemoteViews;Ljava/util/Calendar;)V
    .locals 10
    .param p1, "views"    # Landroid/widget/RemoteViews;
    .param p2, "selectedDate"    # Ljava/util/Calendar;

    .prologue
    const v9, 0x7f09005e

    const v8, 0x7f0b01e4

    const v7, 0x7f0b01e3

    .line 233
    const-string v1, ""

    .line 234
    .local v1, "dayOfWeek":Ljava/lang/String;
    invoke-static {p2}, Lim/doit/pro/utils/DateUtils;->isToday(Ljava/util/Calendar;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 235
    const v5, 0x7f0c00e1

    invoke-static {v5}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v1

    .line 269
    :goto_0
    invoke-static {v9}, Lim/doit/pro/activity/utils/ViewUtils;->getDimens(I)F

    move-result v5

    .line 270
    iget v6, p0, Lim/doit/pro/widget/WidgetCalendarProvider;->fontScale:F

    .line 268
    mul-float v2, v5, v6

    .line 272
    .local v2, "dayOfWeekTextSize":F
    invoke-static {v9}, Lim/doit/pro/activity/utils/ViewUtils;->getDimens(I)F

    move-result v5

    .line 273
    iget v6, p0, Lim/doit/pro/widget/WidgetCalendarProvider;->fontScale:F

    .line 271
    mul-float v4, v5, v6

    .line 274
    .local v4, "yearMonthTextSize":F
    invoke-static {p2}, Lim/doit/pro/utils/DateUtils;->formatDate(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v3

    .line 275
    .local v3, "yearAndMonth":Ljava/lang/String;
    invoke-virtual {p1, v7, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 276
    invoke-virtual {p0, p1, v7, v2}, Lim/doit/pro/widget/WidgetCalendarProvider;->setTextSize(Landroid/widget/RemoteViews;IF)V

    .line 277
    iget v5, p0, Lim/doit/pro/widget/WidgetCalendarProvider;->textColor:I

    invoke-virtual {p1, v7, v5}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 280
    const/4 v5, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x3

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 279
    invoke-virtual {p1, v8, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 281
    invoke-virtual {p0, p1, v8, v4}, Lim/doit/pro/widget/WidgetCalendarProvider;->setTextSize(Landroid/widget/RemoteViews;IF)V

    .line 282
    iget v5, p0, Lim/doit/pro/widget/WidgetCalendarProvider;->textColor:I

    invoke-virtual {p1, v8, v5}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 283
    return-void

    .line 236
    .end local v2    # "dayOfWeekTextSize":F
    .end local v3    # "yearAndMonth":Ljava/lang/String;
    .end local v4    # "yearMonthTextSize":F
    :cond_0
    invoke-static {p2}, Lim/doit/pro/utils/DateUtils;->isTomorrow(Ljava/util/Calendar;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 237
    const v5, 0x7f0c00e2

    invoke-static {v5}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v1

    .line 238
    goto :goto_0

    :cond_1
    invoke-static {p2}, Lim/doit/pro/utils/DateUtils;->isYesterday(Ljava/util/Calendar;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 239
    const v5, 0x7f0c00e3

    invoke-static {v5}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v1

    .line 240
    goto :goto_0

    .line 241
    :cond_2
    const/4 v5, 0x7

    invoke-virtual {p2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 242
    .local v0, "dateOfWeek":I
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 244
    :pswitch_0
    const v5, 0x7f0c00d6

    invoke-static {v5}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v1

    .line 245
    goto :goto_0

    .line 247
    :pswitch_1
    const v5, 0x7f0c00d0

    invoke-static {v5}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v1

    .line 248
    goto :goto_0

    .line 250
    :pswitch_2
    const v5, 0x7f0c00d1

    invoke-static {v5}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v1

    .line 251
    goto :goto_0

    .line 253
    :pswitch_3
    const v5, 0x7f0c00d2

    invoke-static {v5}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v1

    .line 254
    goto/16 :goto_0

    .line 256
    :pswitch_4
    const v5, 0x7f0c00d3

    invoke-static {v5}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v1

    .line 257
    goto/16 :goto_0

    .line 259
    :pswitch_5
    const v5, 0x7f0c00d4

    invoke-static {v5}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v1

    .line 260
    goto/16 :goto_0

    .line 262
    :pswitch_6
    const v5, 0x7f0c00d5

    invoke-static {v5}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v1

    .line 263
    goto/16 :goto_0

    .line 242
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private updateCalendarSelectedDateToToday(Landroid/content/Context;[I)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appWidgetIds"    # [I

    .prologue
    .line 103
    .line 104
    const-string v5, "im.doit.pro.widget.WidgetCalendarProvider"

    const/4 v6, 0x0

    .line 103
    invoke-virtual {p1, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 105
    .local v3, "prefs":Landroid/content/SharedPreferences;
    invoke-static {}, Lim/doit/pro/utils/DateUtils;->startOfToday()Ljava/util/Calendar;

    move-result-object v4

    .line 106
    .local v4, "selectedDate":Ljava/util/Calendar;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v5, p2

    if-lt v2, v5, :cond_0

    .line 113
    return-void

    .line 107
    :cond_0
    aget v0, p2, v2

    .line 108
    .local v0, "appWidgetId":I
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 109
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v5, Ljava/lang/StringBuilder;

    sget-object v6, Lim/doit/pro/widget/WidgetCalendarProvider;->PREF_SELECTED_DATE:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 110
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "yyyy-MM-dd"

    invoke-static {v4, v6}, Lim/doit/pro/utils/DateUtils;->format(Ljava/util/Calendar;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 109
    invoke-interface {v1, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 111
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 106
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected getDataId(Landroid/content/Intent;)Ljava/lang/String;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 93
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    sget-object v1, Lim/doit/pro/widget/WidgetCalendarProvider;->EXTRA_DATA_ID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getDataType(Landroid/content/Intent;)Ljava/lang/String;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 88
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    sget-object v1, Lim/doit/pro/widget/WidgetCalendarProvider;->EXTRA_DATA_TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected initWidgetSettings()V
    .locals 2

    .prologue
    .line 117
    invoke-super {p0}, Lim/doit/pro/widget/DoitBaseProvider;->initWidgetSettings()V

    .line 118
    const-string v0, "#000000"

    invoke-static {}, Lim/doit/pro/utils/LocalSettings;->getWidgetBGColor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    const v0, 0x7f020186

    iput v0, p0, Lim/doit/pro/widget/WidgetCalendarProvider;->todaySrc:I

    .line 120
    const v0, 0x7f02012a

    iput v0, p0, Lim/doit/pro/widget/WidgetCalendarProvider;->preBtnSrc:I

    .line 121
    const v0, 0x7f020128

    iput v0, p0, Lim/doit/pro/widget/WidgetCalendarProvider;->nextBtnSrc:I

    .line 122
    const v0, 0x7f020188

    iput v0, p0, Lim/doit/pro/widget/WidgetCalendarProvider;->weekSelectedSrc:I

    .line 123
    const v0, 0x7f020189

    iput v0, p0, Lim/doit/pro/widget/WidgetCalendarProvider;->withtaskSrc:I

    .line 131
    :goto_0
    return-void

    .line 125
    :cond_0
    const v0, 0x7f020185

    iput v0, p0, Lim/doit/pro/widget/WidgetCalendarProvider;->todaySrc:I

    .line 126
    const v0, 0x7f02012b

    iput v0, p0, Lim/doit/pro/widget/WidgetCalendarProvider;->preBtnSrc:I

    .line 127
    const v0, 0x7f020129

    iput v0, p0, Lim/doit/pro/widget/WidgetCalendarProvider;->nextBtnSrc:I

    .line 128
    const v0, 0x7f020187

    iput v0, p0, Lim/doit/pro/widget/WidgetCalendarProvider;->weekSelectedSrc:I

    .line 129
    const v0, 0x7f02018a

    iput v0, p0, Lim/doit/pro/widget/WidgetCalendarProvider;->withtaskSrc:I

    goto :goto_0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 52
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 53
    .local v0, "action":Ljava/lang/String;
    new-instance v3, Landroid/content/ComponentName;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-direct {v3, p1, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 55
    .local v3, "thisWidget":Landroid/content/ComponentName;
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v2

    .line 56
    .local v2, "appWidgetManager":Landroid/appwidget/AppWidgetManager;
    invoke-virtual {v2, v3}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v1

    .line 57
    .local v1, "appWidgetIds":[I
    const-string v4, "im.doit.pro.widget.WidgetCalendarProvider.today"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 58
    invoke-direct {p0, p1, v2, p2}, Lim/doit/pro/widget/WidgetCalendarProvider;->onTodayClick(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;Landroid/content/Intent;)V

    .line 74
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lim/doit/pro/widget/DoitBaseProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 75
    return-void

    .line 59
    :cond_1
    const-string v4, "im.doit.pro.widget.WidgetCalendarProvider.pre_week"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 60
    invoke-direct {p0, p1, v2, p2}, Lim/doit/pro/widget/WidgetCalendarProvider;->onPreWeekClick(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;Landroid/content/Intent;)V

    goto :goto_0

    .line 61
    :cond_2
    const-string v4, "im.doit.pro.widget.WidgetCalendarProvider.next_week"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 62
    invoke-direct {p0, p1, v2, p2}, Lim/doit/pro/widget/WidgetCalendarProvider;->onNextWeekClick(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;Landroid/content/Intent;)V

    goto :goto_0

    .line 63
    :cond_3
    const-string v4, "im.doit.pro.widget.DoitBaseProvider.add"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 64
    invoke-virtual {p0, p1}, Lim/doit/pro/widget/WidgetCalendarProvider;->onSmartAddClick(Landroid/content/Context;)V

    goto :goto_0

    .line 65
    :cond_4
    const-string v4, "im.doit.pro.widget.WidgetCalendarProvider.day_of_month_click"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 66
    invoke-direct {p0, p1, v2, p2}, Lim/doit/pro/widget/WidgetCalendarProvider;->onDayOfMonthClick(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;Landroid/content/Intent;)V

    goto :goto_0

    .line 67
    :cond_5
    const-string v4, "im.doit.pro.widget.WidgetCalendarProvider.item_click"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 68
    invoke-direct {p0, p1, p2, v2, v1}, Lim/doit/pro/widget/WidgetCalendarProvider;->onItemClick(Landroid/content/Context;Landroid/content/Intent;Landroid/appwidget/AppWidgetManager;[I)V

    goto :goto_0

    .line 69
    :cond_6
    const-string v4, "im.doit.pro.widget.WidgetCalendarProvider.update_selected_date_to_today"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 70
    invoke-direct {p0, p1, v1}, Lim/doit/pro/widget/WidgetCalendarProvider;->updateCalendarSelectedDateToToday(Landroid/content/Context;[I)V

    goto :goto_0

    .line 71
    :cond_7
    const-string v4, "im.doit.pro.widget.WidgetCalendarProvider.complete_click"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 72
    invoke-virtual {p0, p1, p2, v2, v1}, Lim/doit/pro/widget/WidgetCalendarProvider;->onItemCompleteClick(Landroid/content/Context;Landroid/content/Intent;Landroid/appwidget/AppWidgetManager;[I)V

    goto :goto_0
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appWidgetManager"    # Landroid/appwidget/AppWidgetManager;
    .param p3, "appWidgetIds"    # [I

    .prologue
    .line 342
    invoke-virtual {p0, p1}, Lim/doit/pro/widget/WidgetCalendarProvider;->updateViews(Landroid/content/Context;)V

    .line 343
    return-void
.end method

.method protected updateViews(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 79
    new-instance v2, Landroid/content/ComponentName;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v2, p1, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 81
    .local v2, "thisWidget":Landroid/content/ComponentName;
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    .line 82
    .local v1, "appWidgetManager":Landroid/appwidget/AppWidgetManager;
    invoke-virtual {v1, v2}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v0

    .line 83
    .local v0, "allWidgetIds":[I
    invoke-direct {p0, p1, v1, v0}, Lim/doit/pro/widget/WidgetCalendarProvider;->refreshView(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    .line 84
    return-void
.end method
