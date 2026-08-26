.class public Lim/doit/pro/widget/WidgetTaskList3x3Provider;
.super Lim/doit/pro/widget/DoitBaseProvider;
.source "WidgetTaskList3x3Provider.java"


# static fields
.field protected static final ACTION_CLICK:Ljava/lang/String; = "im.doit.pro.widget.WidgetTaskList3x3Provider.click"

.field protected static final ACTION_COMPLETE_CLICK:Ljava/lang/String; = "im.doit.pro.widget.WidgetTaskList3x3Provider.complete_click"

.field public static EXTRA_DATA_ID:Ljava/lang/String;

.field public static EXTRA_DATA_TYPE:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-string v0, "im.doit.pro.widget.WidgetTaskList3x3Provider.data_id"

    sput-object v0, Lim/doit/pro/widget/WidgetTaskList3x3Provider;->EXTRA_DATA_ID:Ljava/lang/String;

    .line 40
    const-string v0, "im.doit.pro.widget.WidgetTaskList3x3Provider.data_type"

    sput-object v0, Lim/doit/pro/widget/WidgetTaskList3x3Provider;->EXTRA_DATA_TYPE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lim/doit/pro/widget/DoitBaseProvider;-><init>()V

    return-void
.end method

.method private buildLayout(Landroid/content/Context;I)Landroid/widget/RemoteViews;
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appWidgetId"    # I

    .prologue
    .line 212
    new-instance v6, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 213
    const v8, 0x7f0300b9

    .line 212
    invoke-direct {v6, v7, v8}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 214
    .local v6, "views":Landroid/widget/RemoteViews;
    invoke-virtual {p0, v6}, Lim/doit/pro/widget/WidgetTaskList3x3Provider;->setWidgetBackgroundColor(Landroid/widget/RemoteViews;)V

    .line 215
    invoke-direct {p0, v6}, Lim/doit/pro/widget/WidgetTaskList3x3Provider;->setDividerColor(Landroid/widget/RemoteViews;)V

    .line 217
    invoke-direct {p0}, Lim/doit/pro/widget/WidgetTaskList3x3Provider;->getPrefsName()Ljava/lang/String;

    move-result-object v7

    .line 218
    const/4 v8, 0x0

    .line 217
    invoke-virtual {p1, v7, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 219
    .local v3, "prefs":Landroid/content/SharedPreferences;
    invoke-direct {p0, v3, p2}, Lim/doit/pro/widget/WidgetTaskList3x3Provider;->getType(Landroid/content/SharedPreferences;I)Ljava/lang/String;

    move-result-object v4

    .line 220
    .local v4, "type":Ljava/lang/String;
    invoke-direct {p0, v3, p2}, Lim/doit/pro/widget/WidgetTaskList3x3Provider;->getId(Landroid/content/SharedPreferences;I)Ljava/lang/String;

    move-result-object v5

    .line 222
    .local v5, "uuid":Ljava/lang/String;
    invoke-direct {p0, v6, v4, v5}, Lim/doit/pro/widget/WidgetTaskList3x3Provider;->setWidgetTitle(Landroid/widget/RemoteViews;Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    new-instance v0, Landroid/content/Intent;

    const-class v7, Lim/doit/pro/widget/WidgetListWidgetService;

    invoke-direct {v0, p1, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 225
    .local v0, "intent":Landroid/content/Intent;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 226
    const-string v7, "appWidgetId"

    invoke-virtual {v0, v7, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 227
    const-string v7, "widget_data_type"

    invoke-virtual {v0, v7, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 228
    const-string v7, "widget_data_uuid"

    invoke-virtual {v0, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 229
    const/4 v1, 0x0

    .line 230
    .local v1, "isShowCompleteBtn":Z
    invoke-direct {p0, v3, p2}, Lim/doit/pro/widget/WidgetTaskList3x3Provider;->getMinWidth(Landroid/content/SharedPreferences;I)I

    move-result v2

    .line 231
    .local v2, "minWidth":I
    const/16 v7, 0xb4

    if-lt v2, v7, :cond_0

    .line 232
    const/4 v1, 0x1

    .line 234
    :cond_0
    const-string v7, "widget_show_complete_btn"

    invoke-virtual {v0, v7, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 235
    const v7, 0x7f0b0069

    invoke-virtual {v6, v7, v0}, Landroid/widget/RemoteViews;->setRemoteAdapter(ILandroid/content/Intent;)V

    .line 237
    invoke-direct {p0, p1, v6, v4, v5}, Lim/doit/pro/widget/WidgetTaskList3x3Provider;->setOnTitleClick(Landroid/content/Context;Landroid/widget/RemoteViews;Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    invoke-direct {p0, p1, p2, v6}, Lim/doit/pro/widget/WidgetTaskList3x3Provider;->setOnItemClickTemplate(Landroid/content/Context;ILandroid/widget/RemoteViews;)V

    .line 239
    invoke-direct {p0, p1, v6}, Lim/doit/pro/widget/WidgetTaskList3x3Provider;->setOnAddClick(Landroid/content/Context;Landroid/widget/RemoteViews;)V

    .line 241
    return-object v6
.end method

.method private getId(Landroid/content/SharedPreferences;I)Ljava/lang/String;
    .locals 2
    .param p1, "prefs"    # Landroid/content/SharedPreferences;
    .param p2, "appWidgetId"    # I

    .prologue
    .line 317
    .line 318
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "prefix_key_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 319
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 318
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 319
    const/4 v1, 0x0

    .line 317
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getMinWidth(Landroid/content/SharedPreferences;I)I
    .locals 2
    .param p1, "prefs"    # Landroid/content/SharedPreferences;
    .param p2, "appWidgetId"    # I

    .prologue
    .line 323
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "min_width"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 324
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 323
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getPrefsName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 307
    const-string v0, "im.doit.pro.widget.WidgetSelectBox3x3ConfigureActivity"

    return-object v0
.end method

.method private getType(Landroid/content/SharedPreferences;I)Ljava/lang/String;
    .locals 2
    .param p1, "prefs"    # Landroid/content/SharedPreferences;
    .param p2, "appWidgetId"    # I

    .prologue
    .line 311
    .line 312
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "prefix_key_type_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 313
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 312
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 313
    const/4 v1, 0x0

    .line 311
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private onItemClick(Landroid/content/Context;Landroid/content/Intent;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "appWidgetManager"    # Landroid/appwidget/AppWidgetManager;
    .param p4, "appWidgetIds"    # [I

    .prologue
    .line 140
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->isLogin()Z

    move-result v2

    if-nez v2, :cond_1

    .line 141
    invoke-direct {p0, p1, p3, p4}, Lim/doit/pro/widget/WidgetTaskList3x3Provider;->refreshView(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    .line 142
    invoke-virtual {p0, p1}, Lim/doit/pro/widget/WidgetTaskList3x3Provider;->toLogin(Landroid/content/Context;)V

    .line 152
    :cond_0
    :goto_0
    return-void

    .line 145
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    sget-object v3, Lim/doit/pro/widget/WidgetTaskList3x3Provider;->EXTRA_DATA_TYPE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 146
    .local v1, "dataType":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    sget-object v3, Lim/doit/pro/widget/WidgetTaskList3x3Provider;->EXTRA_DATA_ID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 147
    .local v0, "dataId":Ljava/lang/String;
    const-class v2, Lim/doit/pro/model/Task;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 148
    invoke-direct {p0, p1, p3, p4, v0}, Lim/doit/pro/widget/WidgetTaskList3x3Provider;->onViewTaskClick(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[ILjava/lang/String;)V

    goto :goto_0

    .line 149
    :cond_2
    const-class v2, Lim/doit/pro/model/Task;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 150
    invoke-direct {p0, p1, p3, p4, v0}, Lim/doit/pro/widget/WidgetTaskList3x3Provider;->onViewProjectClick(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[ILjava/lang/String;)V

    goto :goto_0
.end method

.method private onViewProjectClick(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[ILjava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appWidgetManager"    # Landroid/appwidget/AppWidgetManager;
    .param p3, "appWidgetIds"    # [I
    .param p4, "dataId"    # Ljava/lang/String;

    .prologue
    .line 178
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v2

    iget-object v2, v2, Lim/doit/pro/db/Persist;->projectDao:Lim/doit/pro/db/persist/ProjectDao;

    invoke-virtual {v2, p4}, Lim/doit/pro/db/persist/ProjectDao;->findByUUID(Ljava/lang/String;)Lim/doit/pro/model/BaseEntity;

    move-result-object v0

    check-cast v0, Lim/doit/pro/model/Project;

    .line 179
    .local v0, "project":Lim/doit/pro/model/Project;
    if-eqz v0, :cond_0

    .line 180
    new-instance v1, Landroid/content/Intent;

    .line 181
    const-class v2, Lim/doit/pro/activity/ProjectViewPagerActivity;

    .line 180
    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 182
    .local v1, "projectIntent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 183
    const-string v2, "project"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 184
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 188
    .end local v1    # "projectIntent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 186
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lim/doit/pro/widget/WidgetTaskList3x3Provider;->refreshView(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    goto :goto_0
.end method

.method private onViewTaskClick(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[ILjava/lang/String;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appWidgetManager"    # Landroid/appwidget/AppWidgetManager;
    .param p3, "appWidgetIds"    # [I
    .param p4, "dataId"    # Ljava/lang/String;

    .prologue
    .line 156
    const/4 v4, 0x0

    .local v4, "uuid":Ljava/lang/String;
    const/4 v1, 0x0

    .line 157
    .local v1, "repeatNo":Ljava/lang/String;
    const-string v5, "_"

    invoke-virtual {p4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 158
    const-string v5, "_"

    invoke-virtual {p4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 159
    .local v0, "arr":[Ljava/lang/String;
    const/4 v5, 0x0

    aget-object v4, v0, v5

    .line 160
    const/4 v5, 0x1

    aget-object v1, v0, v5

    .line 164
    .end local v0    # "arr":[Ljava/lang/String;
    :goto_0
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v5

    iget-object v5, v5, Lim/doit/pro/db/Persist;->taskDao:Lim/doit/pro/db/persist/TaskDao;

    invoke-virtual {v5, v4, v1}, Lim/doit/pro/db/persist/TaskDao;->findByUUIDAndRepeatNo(Ljava/lang/String;Ljava/lang/String;)Lim/doit/pro/model/Task;

    move-result-object v2

    .line 166
    .local v2, "task":Lim/doit/pro/model/Task;
    if-eqz v2, :cond_1

    .line 167
    new-instance v3, Landroid/content/Intent;

    const-class v5, Lim/doit/pro/activity/TaskDetailActivity;

    invoke-direct {v3, p1, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 168
    .local v3, "taskIntent":Landroid/content/Intent;
    const/high16 v5, 0x10000000

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 169
    const-string v5, "task"

    invoke-virtual {v3, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 170
    invoke-virtual {p1, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 174
    .end local v3    # "taskIntent":Landroid/content/Intent;
    :goto_1
    return-void

    .line 162
    .end local v2    # "task":Lim/doit/pro/model/Task;
    :cond_0
    move-object v4, p4

    goto :goto_0

    .line 172
    .restart local v2    # "task":Lim/doit/pro/model/Task;
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lim/doit/pro/widget/WidgetTaskList3x3Provider;->refreshView(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    goto :goto_1
.end method

.method private refreshView(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appWidgetManager"    # Landroid/appwidget/AppWidgetManager;
    .param p3, "appWidgetIds"    # [I

    .prologue
    .line 201
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, p3

    if-lt v1, v3, :cond_0

    .line 209
    return-void

    .line 202
    :cond_0
    invoke-virtual {p0}, Lim/doit/pro/widget/WidgetTaskList3x3Provider;->initWidgetSettings()V

    .line 203
    aget v0, p3, v1

    .line 204
    .local v0, "appWidgetId":I
    invoke-direct {p0, p1, v0}, Lim/doit/pro/widget/WidgetTaskList3x3Provider;->buildLayout(Landroid/content/Context;I)Landroid/widget/RemoteViews;

    move-result-object v2

    .line 206
    .local v2, "layout":Landroid/widget/RemoteViews;
    const v3, 0x7f0b0069

    .line 205
    invoke-virtual {p2, v0, v3}, Landroid/appwidget/AppWidgetManager;->notifyAppWidgetViewDataChanged(II)V

    .line 207
    invoke-virtual {p2, v0, v2}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 201
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private setDividerColor(Landroid/widget/RemoteViews;)V
    .locals 3
    .param p1, "views"    # Landroid/widget/RemoteViews;

    .prologue
    .line 245
    const v0, 0x7f0b01e7

    const-string v1, "setBackgroundColor"

    iget v2, p0, Lim/doit/pro/widget/WidgetTaskList3x3Provider;->dividerColor:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 246
    return-void
.end method

.method private setOnAddClick(Landroid/content/Context;Landroid/widget/RemoteViews;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "views"    # Landroid/widget/RemoteViews;

    .prologue
    const v4, 0x7f0b0114

    .line 328
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 329
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "im.doit.pro.widget.DoitBaseProvider.add"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 331
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    invoke-virtual {v2}, Ljava/util/Random;->nextInt()I

    move-result v2

    .line 332
    const/high16 v3, 0x8000000

    .line 330
    invoke-static {p1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 333
    .local v1, "pendingIntent":Landroid/app/PendingIntent;
    invoke-virtual {p2, v4, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 334
    const-string v2, "setImageResource"

    iget v3, p0, Lim/doit/pro/widget/WidgetTaskList3x3Provider;->addBtnSrc:I

    invoke-virtual {p2, v4, v2, v3}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 335
    return-void
.end method

.method private setOnItemClickTemplate(Landroid/content/Context;ILandroid/widget/RemoteViews;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appWidgetId"    # I
    .param p3, "rv"    # Landroid/widget/RemoteViews;

    .prologue
    .line 263
    new-instance v0, Landroid/content/Intent;

    .line 264
    const-class v2, Lim/doit/pro/widget/WidgetTaskList3x3Provider;

    .line 263
    invoke-direct {v0, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 266
    .local v0, "intent":Landroid/content/Intent;
    const/4 v2, 0x0

    const/high16 v3, 0x8000000

    .line 265
    invoke-static {p1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 267
    .local v1, "pendingIntent":Landroid/app/PendingIntent;
    const v2, 0x7f0b0069

    invoke-virtual {p3, v2, v1}, Landroid/widget/RemoteViews;->setPendingIntentTemplate(ILandroid/app/PendingIntent;)V

    .line 268
    return-void
.end method

.method private setOnTitleClick(Landroid/content/Context;Landroid/widget/RemoteViews;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "views"    # Landroid/widget/RemoteViews;
    .param p3, "type"    # Ljava/lang/String;
    .param p4, "uuid"    # Ljava/lang/String;

    .prologue
    .line 250
    new-instance v0, Landroid/content/Intent;

    .line 251
    const-class v2, Lim/doit/pro/widget/WidgetTaskList3x3Provider;

    .line 250
    invoke-direct {v0, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 252
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "im.doit.pro.widget.DoitBaseProvider.title_click"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 253
    const-string v2, "widget_data_type"

    invoke-virtual {v0, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 254
    const-string v2, "widget_data_uuid"

    invoke-virtual {v0, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 256
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    invoke-virtual {v2}, Ljava/util/Random;->nextInt()I

    move-result v2

    .line 257
    const/high16 v3, 0x8000000

    .line 255
    invoke-static {p1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 258
    .local v1, "pendingIntent":Landroid/app/PendingIntent;
    const v2, 0x7f0b003a

    invoke-virtual {p2, v2, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 259
    return-void
.end method

.method private setWidgetTitle(Landroid/widget/RemoteViews;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "rv"    # Landroid/widget/RemoteViews;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "uuid"    # Ljava/lang/String;

    .prologue
    const v8, 0x7f0b003a

    .line 271
    const/4 v5, 0x0

    .line 272
    .local v5, "titleName":Ljava/lang/String;
    const-class v6, Lim/doit/pro/model/Box;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 273
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v6

    iget-object v6, v6, Lim/doit/pro/db/Persist;->boxDao:Lim/doit/pro/db/persist/BoxDao;

    invoke-virtual {v6, p3}, Lim/doit/pro/db/persist/BoxDao;->findByUUID(Ljava/lang/String;)Lim/doit/pro/model/BaseEntity;

    move-result-object v0

    check-cast v0, Lim/doit/pro/model/Box;

    .line 274
    .local v0, "box":Lim/doit/pro/model/Box;
    if-eqz v0, :cond_0

    .line 275
    invoke-virtual {v0}, Lim/doit/pro/model/Box;->getType()Lim/doit/pro/model/enums/BoxType;

    move-result-object v6

    .line 276
    invoke-virtual {v6}, Lim/doit/pro/model/enums/BoxType;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "string"

    .line 275
    invoke-static {v6, v7}, Lim/doit/pro/activity/utils/ViewUtils;->getId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v5

    .line 300
    .end local v0    # "box":Lim/doit/pro/model/Box;
    :cond_0
    :goto_0
    invoke-virtual {p1, v8, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 301
    const v6, 0x7f090063

    invoke-static {v6}, Lim/doit/pro/activity/utils/ViewUtils;->getDimens(I)F

    move-result v6

    .line 302
    iget v7, p0, Lim/doit/pro/widget/WidgetTaskList3x3Provider;->fontScale:F

    mul-float/2addr v6, v7

    .line 301
    invoke-virtual {p0, p1, v8, v6}, Lim/doit/pro/widget/WidgetTaskList3x3Provider;->setTextSize(Landroid/widget/RemoteViews;IF)V

    .line 303
    iget v6, p0, Lim/doit/pro/widget/WidgetTaskList3x3Provider;->textColor:I

    invoke-virtual {p1, v8, v6}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 304
    return-void

    .line 278
    :cond_1
    const-class v6, Lim/doit/pro/model/Filter;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 279
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v6

    iget-object v6, v6, Lim/doit/pro/db/Persist;->filterDao:Lim/doit/pro/db/persist/FilterDao;

    invoke-virtual {v6, p3}, Lim/doit/pro/db/persist/FilterDao;->findByUUID(Ljava/lang/String;)Lim/doit/pro/model/BaseEntity;

    move-result-object v1

    check-cast v1, Lim/doit/pro/model/Filter;

    .line 280
    .local v1, "filter":Lim/doit/pro/model/Filter;
    if-eqz v1, :cond_0

    .line 281
    invoke-virtual {v1}, Lim/doit/pro/model/Filter;->getName()Ljava/lang/String;

    move-result-object v5

    .line 283
    goto :goto_0

    .end local v1    # "filter":Lim/doit/pro/model/Filter;
    :cond_2
    const-class v6, Lim/doit/pro/model/Project;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 284
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v6

    iget-object v6, v6, Lim/doit/pro/db/Persist;->projectDao:Lim/doit/pro/db/persist/ProjectDao;

    invoke-virtual {v6, p3}, Lim/doit/pro/db/persist/ProjectDao;->findByUUID(Ljava/lang/String;)Lim/doit/pro/model/BaseEntity;

    move-result-object v3

    check-cast v3, Lim/doit/pro/model/Project;

    .line 285
    .local v3, "project":Lim/doit/pro/model/Project;
    if-eqz v3, :cond_0

    .line 286
    invoke-virtual {v3}, Lim/doit/pro/model/Project;->getName()Ljava/lang/String;

    move-result-object v5

    .line 288
    goto :goto_0

    .end local v3    # "project":Lim/doit/pro/model/Project;
    :cond_3
    const-class v6, Lim/doit/pro/model/TaskContext;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 289
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v6

    iget-object v6, v6, Lim/doit/pro/db/Persist;->taskContextDao:Lim/doit/pro/db/persist/TaskContextDao;

    .line 290
    invoke-virtual {v6, p3}, Lim/doit/pro/db/persist/TaskContextDao;->findByUUID(Ljava/lang/String;)Lim/doit/pro/model/BaseEntity;

    move-result-object v4

    check-cast v4, Lim/doit/pro/model/TaskContext;

    .line 291
    .local v4, "taskContext":Lim/doit/pro/model/TaskContext;
    if-eqz v4, :cond_0

    .line 292
    invoke-virtual {v4}, Lim/doit/pro/model/TaskContext;->getName()Ljava/lang/String;

    move-result-object v5

    .line 294
    goto :goto_0

    .end local v4    # "taskContext":Lim/doit/pro/model/TaskContext;
    :cond_4
    const-class v6, Lim/doit/pro/model/Goal;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 295
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v6

    iget-object v6, v6, Lim/doit/pro/db/Persist;->goalDao:Lim/doit/pro/db/persist/GoalDao;

    invoke-virtual {v6, p3}, Lim/doit/pro/db/persist/GoalDao;->findByUUID(Ljava/lang/String;)Lim/doit/pro/model/BaseEntity;

    move-result-object v2

    check-cast v2, Lim/doit/pro/model/Goal;

    .line 296
    .local v2, "goal":Lim/doit/pro/model/Goal;
    if-eqz v2, :cond_0

    .line 297
    invoke-virtual {v2}, Lim/doit/pro/model/Goal;->getName()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0
.end method


# virtual methods
.method protected getDataId(Landroid/content/Intent;)Ljava/lang/String;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 72
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    sget-object v1, Lim/doit/pro/widget/WidgetTaskList3x3Provider;->EXTRA_DATA_ID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getDataType(Landroid/content/Intent;)Ljava/lang/String;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 67
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    sget-object v1, Lim/doit/pro/widget/WidgetTaskList3x3Provider;->EXTRA_DATA_TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onAppWidgetOptionsChanged(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;ILandroid/os/Bundle;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appWidgetManager"    # Landroid/appwidget/AppWidgetManager;
    .param p3, "appWidgetId"    # I
    .param p4, "newOptions"    # Landroid/os/Bundle;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .prologue
    .line 342
    invoke-super {p0, p1, p2, p3, p4}, Lim/doit/pro/widget/DoitBaseProvider;->onAppWidgetOptionsChanged(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;ILandroid/os/Bundle;)V

    .line 345
    const-string v3, "appWidgetMinWidth"

    invoke-virtual {p4, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 346
    .local v1, "minWidth":I
    invoke-direct {p0}, Lim/doit/pro/widget/WidgetTaskList3x3Provider;->getPrefsName()Ljava/lang/String;

    move-result-object v3

    .line 347
    const/4 v4, 0x0

    .line 346
    invoke-virtual {p1, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 348
    .local v2, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 349
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "min_width"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 350
    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 349
    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 351
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 352
    new-instance v3, Landroid/content/Intent;

    .line 353
    const-class v4, Lim/doit/pro/widget/WidgetTaskList3x3Provider;

    invoke-direct {v3, p1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 354
    const-string v4, "im.doit.pro.widget.DoitBaseProvider.refresh"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    .line 352
    invoke-virtual {p1, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 356
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 44
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 45
    .local v0, "action":Ljava/lang/String;
    new-instance v3, Landroid/content/ComponentName;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-direct {v3, p1, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 47
    .local v3, "thisWidget":Landroid/content/ComponentName;
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v2

    .line 48
    .local v2, "appWidgetManager":Landroid/appwidget/AppWidgetManager;
    invoke-virtual {v2, v3}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v1

    .line 49
    .local v1, "appWidgetIds":[I
    const-string v4, "im.doit.pro.widget.WidgetTaskList3x3Provider.click"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 50
    invoke-direct {p0, p1, p2, v2, v1}, Lim/doit/pro/widget/WidgetTaskList3x3Provider;->onItemClick(Landroid/content/Context;Landroid/content/Intent;Landroid/appwidget/AppWidgetManager;[I)V

    .line 56
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lim/doit/pro/widget/DoitBaseProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 57
    return-void

    .line 51
    :cond_1
    const-string v4, "im.doit.pro.widget.DoitBaseProvider.add"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 52
    invoke-virtual {p0, p1}, Lim/doit/pro/widget/WidgetTaskList3x3Provider;->onSmartAddClick(Landroid/content/Context;)V

    goto :goto_0

    .line 53
    :cond_2
    const-string v4, "im.doit.pro.widget.WidgetTaskList3x3Provider.complete_click"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 54
    invoke-virtual {p0, p1, p2, v2, v1}, Lim/doit/pro/widget/WidgetTaskList3x3Provider;->onItemCompleteClick(Landroid/content/Context;Landroid/content/Intent;Landroid/appwidget/AppWidgetManager;[I)V

    goto :goto_0
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appWidgetManager"    # Landroid/appwidget/AppWidgetManager;
    .param p3, "appWidgetIds"    # [I

    .prologue
    .line 62
    invoke-super {p0, p1, p2, p3}, Lim/doit/pro/widget/DoitBaseProvider;->onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    .line 63
    return-void
.end method

.method protected toHome(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "data"    # Landroid/content/Intent;

    .prologue
    const/high16 v9, 0x10000000

    .line 77
    const-string v8, "widget_data_type"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 78
    .local v6, "type":Ljava/lang/String;
    const-string v8, "widget_data_uuid"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 79
    .local v7, "uuid":Ljava/lang/String;
    const-class v8, Lim/doit/pro/model/Box;

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 80
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v8

    iget-object v8, v8, Lim/doit/pro/db/Persist;->boxDao:Lim/doit/pro/db/persist/BoxDao;

    invoke-virtual {v8, v7}, Lim/doit/pro/db/persist/BoxDao;->findByUUID(Ljava/lang/String;)Lim/doit/pro/model/BaseEntity;

    move-result-object v0

    check-cast v0, Lim/doit/pro/model/Box;

    .line 81
    .local v0, "box":Lim/doit/pro/model/Box;
    if-nez v0, :cond_1

    .line 82
    invoke-super {p0, p1, p2}, Lim/doit/pro/widget/DoitBaseProvider;->toHome(Landroid/content/Context;Landroid/content/Intent;)V

    .line 136
    .end local v0    # "box":Lim/doit/pro/model/Box;
    :cond_0
    :goto_0
    return-void

    .line 85
    .restart local v0    # "box":Lim/doit/pro/model/Box;
    :cond_1
    invoke-virtual {v0}, Lim/doit/pro/model/Box;->isDoitNow()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 86
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v8

    iget-object v8, v8, Lim/doit/pro/db/Persist;->boxDao:Lim/doit/pro/db/persist/BoxDao;

    invoke-virtual {v8}, Lim/doit/pro/db/persist/BoxDao;->findToday()Lim/doit/pro/model/Box;

    move-result-object v0

    .line 88
    :cond_2
    invoke-static {v0}, Lim/doit/pro/utils/BoxUtils;->setBoxViewRes(Lim/doit/pro/model/Box;)V

    .line 89
    new-instance v3, Landroid/content/Intent;

    const-class v8, Lim/doit/pro/activity/HomeActivity;

    invoke-direct {v3, p1, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 90
    .local v3, "intent":Landroid/content/Intent;
    const-string v8, "box"

    invoke-virtual {v3, v8, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 91
    invoke-virtual {v3, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 92
    invoke-virtual {p1, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 93
    .end local v0    # "box":Lim/doit/pro/model/Box;
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_3
    const-class v8, Lim/doit/pro/model/Filter;

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 94
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v8

    iget-object v8, v8, Lim/doit/pro/db/Persist;->filterDao:Lim/doit/pro/db/persist/FilterDao;

    invoke-virtual {v8, v7}, Lim/doit/pro/db/persist/FilterDao;->findByUUID(Ljava/lang/String;)Lim/doit/pro/model/BaseEntity;

    move-result-object v1

    check-cast v1, Lim/doit/pro/model/Filter;

    .line 95
    .local v1, "filter":Lim/doit/pro/model/Filter;
    if-nez v1, :cond_4

    .line 96
    invoke-super {p0, p1, p2}, Lim/doit/pro/widget/DoitBaseProvider;->toHome(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 99
    :cond_4
    new-instance v3, Landroid/content/Intent;

    const-class v8, Lim/doit/pro/activity/FilterViewPagerActivity;

    invoke-direct {v3, p1, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 100
    .restart local v3    # "intent":Landroid/content/Intent;
    const-string v8, "filter"

    invoke-virtual {v3, v8, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 101
    invoke-virtual {v3, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 102
    invoke-virtual {p1, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 103
    .end local v1    # "filter":Lim/doit/pro/model/Filter;
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_5
    const-class v8, Lim/doit/pro/model/Project;

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 104
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v8

    iget-object v8, v8, Lim/doit/pro/db/Persist;->projectDao:Lim/doit/pro/db/persist/ProjectDao;

    invoke-virtual {v8, v7}, Lim/doit/pro/db/persist/ProjectDao;->findByUUID(Ljava/lang/String;)Lim/doit/pro/model/BaseEntity;

    move-result-object v4

    check-cast v4, Lim/doit/pro/model/Project;

    .line 105
    .local v4, "project":Lim/doit/pro/model/Project;
    if-nez v4, :cond_6

    .line 106
    invoke-super {p0, p1, p2}, Lim/doit/pro/widget/DoitBaseProvider;->toHome(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 109
    :cond_6
    new-instance v3, Landroid/content/Intent;

    const-class v8, Lim/doit/pro/activity/ProjectViewPagerActivity;

    invoke-direct {v3, p1, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 110
    .restart local v3    # "intent":Landroid/content/Intent;
    const-string v8, "project"

    invoke-virtual {v3, v8, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 111
    invoke-virtual {v3, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 112
    invoke-virtual {p1, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 113
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "project":Lim/doit/pro/model/Project;
    :cond_7
    const-class v8, Lim/doit/pro/model/TaskContext;

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 114
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v8

    iget-object v8, v8, Lim/doit/pro/db/Persist;->taskContextDao:Lim/doit/pro/db/persist/TaskContextDao;

    .line 115
    invoke-virtual {v8, v7}, Lim/doit/pro/db/persist/TaskContextDao;->findByUUID(Ljava/lang/String;)Lim/doit/pro/model/BaseEntity;

    move-result-object v5

    check-cast v5, Lim/doit/pro/model/TaskContext;

    .line 116
    .local v5, "taskContext":Lim/doit/pro/model/TaskContext;
    if-nez v5, :cond_8

    .line 117
    invoke-super {p0, p1, p2}, Lim/doit/pro/widget/DoitBaseProvider;->toHome(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 120
    :cond_8
    new-instance v3, Landroid/content/Intent;

    .line 121
    const-class v8, Lim/doit/pro/activity/TaskContextViewPagerActivity;

    .line 120
    invoke-direct {v3, p1, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 122
    .restart local v3    # "intent":Landroid/content/Intent;
    const-string v8, "taskContext"

    invoke-virtual {v3, v8, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 123
    invoke-virtual {v3, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 124
    invoke-virtual {p1, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 125
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v5    # "taskContext":Lim/doit/pro/model/TaskContext;
    :cond_9
    const-class v8, Lim/doit/pro/model/Goal;

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 126
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v8

    iget-object v8, v8, Lim/doit/pro/db/Persist;->goalDao:Lim/doit/pro/db/persist/GoalDao;

    invoke-virtual {v8, v7}, Lim/doit/pro/db/persist/GoalDao;->findByUUID(Ljava/lang/String;)Lim/doit/pro/model/BaseEntity;

    move-result-object v2

    check-cast v2, Lim/doit/pro/model/Goal;

    .line 127
    .local v2, "goal":Lim/doit/pro/model/Goal;
    if-nez v2, :cond_a

    .line 128
    invoke-super {p0, p1, p2}, Lim/doit/pro/widget/DoitBaseProvider;->toHome(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 131
    :cond_a
    new-instance v3, Landroid/content/Intent;

    const-class v8, Lim/doit/pro/activity/GoalViewPagerActivity;

    invoke-direct {v3, p1, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 132
    .restart local v3    # "intent":Landroid/content/Intent;
    const-string v8, "goal"

    invoke-virtual {v3, v8, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 133
    invoke-virtual {v3, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 134
    invoke-virtual {p1, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method protected updateViews(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 192
    new-instance v2, Landroid/content/ComponentName;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v2, p1, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 194
    .local v2, "thisWidget":Landroid/content/ComponentName;
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    .line 195
    .local v1, "appWidgetManager":Landroid/appwidget/AppWidgetManager;
    invoke-virtual {v1, v2}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v0

    .line 196
    .local v0, "appWidgetIds":[I
    invoke-direct {p0, p1, v1, v0}, Lim/doit/pro/widget/WidgetTaskList3x3Provider;->refreshView(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    .line 197
    return-void
.end method
