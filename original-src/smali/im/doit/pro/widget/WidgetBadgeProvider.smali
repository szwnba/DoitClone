.class public Lim/doit/pro/widget/WidgetBadgeProvider;
.super Lim/doit/pro/widget/DoitBaseProvider;
.source "WidgetBadgeProvider.java"


# instance fields
.field private final ACTION_CLICK:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Lim/doit/pro/widget/DoitBaseProvider;-><init>()V

    .line 35
    const-string v0, "im.doit.pro.widget.WidgetBadgeProvider.click"

    iput-object v0, p0, Lim/doit/pro/widget/WidgetBadgeProvider;->ACTION_CLICK:Ljava/lang/String;

    .line 33
    return-void
.end method

.method private getCode(ILandroid/content/SharedPreferences;)Ljava/lang/String;
    .locals 3
    .param p1, "appWidgetId"    # I
    .param p2, "prefs"    # Landroid/content/SharedPreferences;

    .prologue
    .line 216
    .line 217
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "prefix_key_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 218
    const/4 v2, 0x0

    .line 216
    invoke-interface {p2, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 219
    .local v0, "code":Ljava/lang/String;
    return-object v0
.end method

.method private getId(Landroid/content/SharedPreferences;I)Ljava/lang/String;
    .locals 2
    .param p1, "prefs"    # Landroid/content/SharedPreferences;
    .param p2, "appWidgetId"    # I

    .prologue
    .line 229
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "prefix_key_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 230
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 229
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 210
    .line 211
    const-string v1, "im.doit.pro.widget.WidgetBadgeConfigureActivity"

    const/4 v2, 0x0

    .line 210
    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 212
    .local v0, "prefs":Landroid/content/SharedPreferences;
    return-object v0
.end method

.method private getType(Landroid/content/SharedPreferences;I)Ljava/lang/String;
    .locals 2
    .param p1, "prefs"    # Landroid/content/SharedPreferences;
    .param p2, "appWidgetId"    # I

    .prologue
    .line 223
    .line 224
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "prefix_key_type_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 225
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 224
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 225
    const/4 v1, 0x0

    .line 224
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 223
    return-object v0
.end method

.method private onClick(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 56
    invoke-virtual {p0, p1, p2}, Lim/doit/pro/widget/WidgetBadgeProvider;->toApp(Landroid/content/Context;Landroid/content/Intent;)V

    .line 57
    return-void
.end method

.method private setOnClick(Landroid/content/Context;Landroid/widget/RemoteViews;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "views"    # Landroid/widget/RemoteViews;
    .param p3, "type"    # Ljava/lang/String;
    .param p4, "uuid"    # Ljava/lang/String;

    .prologue
    .line 45
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 46
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "im.doit.pro.widget.WidgetBadgeProvider.click"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 47
    const-string v2, "widget_data_type"

    invoke-virtual {v0, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 48
    const-string v2, "widget_data_uuid"

    invoke-virtual {v0, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 50
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    invoke-virtual {v2}, Ljava/util/Random;->nextInt()I

    move-result v2

    .line 51
    const/high16 v3, 0x8000000

    .line 49
    invoke-static {p1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 52
    .local v1, "pendingIntent":Landroid/app/PendingIntent;
    const v2, 0x7f0b01e1

    invoke-virtual {p2, v2, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 53
    return-void
.end method

.method private setWidgetCountent(Landroid/widget/RemoteViews;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "views"    # Landroid/widget/RemoteViews;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "uuid"    # Ljava/lang/String;

    .prologue
    const v9, 0x7f0b01e2

    .line 165
    const/4 v6, 0x0

    .line 166
    .local v6, "titleName":Ljava/lang/String;
    const/4 v1, 0x0

    .line 167
    .local v1, "count":I
    const-class v7, Lim/doit/pro/model/Box;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 168
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v7

    iget-object v7, v7, Lim/doit/pro/db/Persist;->boxDao:Lim/doit/pro/db/persist/BoxDao;

    invoke-virtual {v7, p3}, Lim/doit/pro/db/persist/BoxDao;->findByUUID(Ljava/lang/String;)Lim/doit/pro/model/BaseEntity;

    move-result-object v0

    check-cast v0, Lim/doit/pro/model/Box;

    .line 169
    .local v0, "box":Lim/doit/pro/model/Box;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lim/doit/pro/model/Box;->getHidden()Ljava/util/Calendar;

    move-result-object v7

    if-nez v7, :cond_0

    .line 170
    invoke-virtual {v0}, Lim/doit/pro/model/Box;->getType()Lim/doit/pro/model/enums/BoxType;

    move-result-object v7

    .line 171
    invoke-virtual {v7}, Lim/doit/pro/model/enums/BoxType;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "string"

    .line 170
    invoke-static {v7, v8}, Lim/doit/pro/activity/utils/ViewUtils;->getId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v6

    .line 172
    invoke-static {v0}, Lim/doit/pro/utils/QueryUtils;->getTotalCount(Lim/doit/pro/model/Box;)I

    move-result v1

    .line 200
    .end local v0    # "box":Lim/doit/pro/model/Box;
    :cond_0
    :goto_0
    const v7, 0x7f0b003a

    invoke-virtual {p1, v7, v6}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 201
    if-lez v1, :cond_5

    .line 202
    const/4 v7, 0x0

    invoke-virtual {p1, v9, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 203
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v9, v7}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 207
    :goto_1
    return-void

    .line 174
    :cond_1
    const-class v7, Lim/doit/pro/model/Filter;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 175
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v7

    iget-object v7, v7, Lim/doit/pro/db/Persist;->filterDao:Lim/doit/pro/db/persist/FilterDao;

    invoke-virtual {v7, p3}, Lim/doit/pro/db/persist/FilterDao;->findByUUID(Ljava/lang/String;)Lim/doit/pro/model/BaseEntity;

    move-result-object v2

    check-cast v2, Lim/doit/pro/model/Filter;

    .line 176
    .local v2, "filter":Lim/doit/pro/model/Filter;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lim/doit/pro/model/Filter;->getDeleted()Ljava/util/Calendar;

    move-result-object v7

    if-nez v7, :cond_0

    .line 177
    invoke-virtual {v2}, Lim/doit/pro/model/Filter;->getName()Ljava/lang/String;

    move-result-object v6

    .line 178
    invoke-static {v2}, Lim/doit/pro/utils/QueryUtils;->getTotalCount(Lim/doit/pro/model/Filter;)I

    move-result v1

    .line 180
    goto :goto_0

    .end local v2    # "filter":Lim/doit/pro/model/Filter;
    :cond_2
    const-class v7, Lim/doit/pro/model/Project;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 181
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v7

    iget-object v7, v7, Lim/doit/pro/db/Persist;->projectDao:Lim/doit/pro/db/persist/ProjectDao;

    invoke-virtual {v7, p3}, Lim/doit/pro/db/persist/ProjectDao;->findByUUID(Ljava/lang/String;)Lim/doit/pro/model/BaseEntity;

    move-result-object v4

    check-cast v4, Lim/doit/pro/model/Project;

    .line 182
    .local v4, "project":Lim/doit/pro/model/Project;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lim/doit/pro/model/Project;->getDeleted()Ljava/util/Calendar;

    move-result-object v7

    if-nez v7, :cond_0

    .line 183
    invoke-virtual {v4}, Lim/doit/pro/model/Project;->getName()Ljava/lang/String;

    move-result-object v6

    .line 184
    invoke-static {v4}, Lim/doit/pro/utils/QueryUtils;->getTotalCount(Lim/doit/pro/model/Project;)I

    move-result v1

    .line 186
    goto :goto_0

    .end local v4    # "project":Lim/doit/pro/model/Project;
    :cond_3
    const-class v7, Lim/doit/pro/model/TaskContext;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 187
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v7

    iget-object v7, v7, Lim/doit/pro/db/Persist;->taskContextDao:Lim/doit/pro/db/persist/TaskContextDao;

    .line 188
    invoke-virtual {v7, p3}, Lim/doit/pro/db/persist/TaskContextDao;->findByUUID(Ljava/lang/String;)Lim/doit/pro/model/BaseEntity;

    move-result-object v5

    check-cast v5, Lim/doit/pro/model/TaskContext;

    .line 189
    .local v5, "taskContext":Lim/doit/pro/model/TaskContext;
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lim/doit/pro/model/TaskContext;->getDeleted()Ljava/util/Calendar;

    move-result-object v7

    if-nez v7, :cond_0

    .line 190
    invoke-virtual {v5}, Lim/doit/pro/model/TaskContext;->getName()Ljava/lang/String;

    move-result-object v6

    .line 191
    invoke-static {v5}, Lim/doit/pro/utils/QueryUtils;->getTotalCount(Lim/doit/pro/model/TaskContext;)I

    move-result v1

    .line 193
    goto/16 :goto_0

    .end local v5    # "taskContext":Lim/doit/pro/model/TaskContext;
    :cond_4
    const-class v7, Lim/doit/pro/model/Goal;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 194
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v7

    iget-object v7, v7, Lim/doit/pro/db/Persist;->goalDao:Lim/doit/pro/db/persist/GoalDao;

    invoke-virtual {v7, p3}, Lim/doit/pro/db/persist/GoalDao;->findByUUID(Ljava/lang/String;)Lim/doit/pro/model/BaseEntity;

    move-result-object v3

    check-cast v3, Lim/doit/pro/model/Goal;

    .line 195
    .local v3, "goal":Lim/doit/pro/model/Goal;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lim/doit/pro/model/Goal;->getDeleted()Ljava/util/Calendar;

    move-result-object v7

    if-nez v7, :cond_0

    .line 196
    invoke-virtual {v3}, Lim/doit/pro/model/Goal;->getName()Ljava/lang/String;

    move-result-object v6

    .line 197
    invoke-static {v3}, Lim/doit/pro/utils/QueryUtils;->getTotalCount(Lim/doit/pro/model/Goal;)I

    move-result v1

    goto/16 :goto_0

    .line 205
    .end local v3    # "goal":Lim/doit/pro/model/Goal;
    :cond_5
    const/16 v7, 0x8

    invoke-virtual {p1, v9, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto/16 :goto_1
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 124
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 125
    .local v0, "action":Ljava/lang/String;
    const-string v1, "im.doit.pro.widget.WidgetBadgeProvider.click"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 126
    invoke-direct {p0, p1, p2}, Lim/doit/pro/widget/WidgetBadgeProvider;->onClick(Landroid/content/Context;Landroid/content/Intent;)V

    .line 128
    :cond_0
    invoke-super {p0, p1, p2}, Lim/doit/pro/widget/DoitBaseProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 129
    return-void
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appWidgetManager"    # Landroid/appwidget/AppWidgetManager;
    .param p3, "appWidgetIds"    # [I

    .prologue
    .line 40
    invoke-virtual {p0, p1}, Lim/doit/pro/widget/WidgetBadgeProvider;->updateViews(Landroid/content/Context;)V

    .line 41
    return-void
.end method

.method protected toHome(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "data"    # Landroid/content/Intent;

    .prologue
    const/high16 v9, 0x10000000

    .line 61
    const-string v8, "widget_data_type"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 62
    .local v6, "type":Ljava/lang/String;
    const-string v8, "widget_data_uuid"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 63
    .local v7, "uuid":Ljava/lang/String;
    const-class v8, Lim/doit/pro/model/Box;

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 64
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v8

    iget-object v8, v8, Lim/doit/pro/db/Persist;->boxDao:Lim/doit/pro/db/persist/BoxDao;

    invoke-virtual {v8, v7}, Lim/doit/pro/db/persist/BoxDao;->findByUUID(Ljava/lang/String;)Lim/doit/pro/model/BaseEntity;

    move-result-object v0

    check-cast v0, Lim/doit/pro/model/Box;

    .line 65
    .local v0, "box":Lim/doit/pro/model/Box;
    if-nez v0, :cond_1

    .line 66
    invoke-super {p0, p1, p2}, Lim/doit/pro/widget/DoitBaseProvider;->toHome(Landroid/content/Context;Landroid/content/Intent;)V

    .line 120
    .end local v0    # "box":Lim/doit/pro/model/Box;
    :cond_0
    :goto_0
    return-void

    .line 69
    .restart local v0    # "box":Lim/doit/pro/model/Box;
    :cond_1
    invoke-virtual {v0}, Lim/doit/pro/model/Box;->isDoitNow()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 70
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v8

    iget-object v8, v8, Lim/doit/pro/db/Persist;->boxDao:Lim/doit/pro/db/persist/BoxDao;

    invoke-virtual {v8}, Lim/doit/pro/db/persist/BoxDao;->findToday()Lim/doit/pro/model/Box;

    move-result-object v0

    .line 72
    :cond_2
    invoke-static {v0}, Lim/doit/pro/utils/BoxUtils;->setBoxViewRes(Lim/doit/pro/model/Box;)V

    .line 73
    new-instance v3, Landroid/content/Intent;

    const-class v8, Lim/doit/pro/activity/HomeActivity;

    invoke-direct {v3, p1, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 74
    .local v3, "intent":Landroid/content/Intent;
    const-string v8, "box"

    invoke-virtual {v3, v8, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 75
    invoke-virtual {v3, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 76
    invoke-virtual {p1, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 77
    .end local v0    # "box":Lim/doit/pro/model/Box;
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_3
    const-class v8, Lim/doit/pro/model/Filter;

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 78
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v8

    iget-object v8, v8, Lim/doit/pro/db/Persist;->filterDao:Lim/doit/pro/db/persist/FilterDao;

    invoke-virtual {v8, v7}, Lim/doit/pro/db/persist/FilterDao;->findByUUID(Ljava/lang/String;)Lim/doit/pro/model/BaseEntity;

    move-result-object v1

    check-cast v1, Lim/doit/pro/model/Filter;

    .line 79
    .local v1, "filter":Lim/doit/pro/model/Filter;
    if-nez v1, :cond_4

    .line 80
    invoke-super {p0, p1, p2}, Lim/doit/pro/widget/DoitBaseProvider;->toHome(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 83
    :cond_4
    new-instance v3, Landroid/content/Intent;

    const-class v8, Lim/doit/pro/activity/FilterViewPagerActivity;

    invoke-direct {v3, p1, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 84
    .restart local v3    # "intent":Landroid/content/Intent;
    const-string v8, "filter"

    invoke-virtual {v3, v8, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 85
    invoke-virtual {v3, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 86
    invoke-virtual {p1, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 87
    .end local v1    # "filter":Lim/doit/pro/model/Filter;
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_5
    const-class v8, Lim/doit/pro/model/Project;

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 88
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v8

    iget-object v8, v8, Lim/doit/pro/db/Persist;->projectDao:Lim/doit/pro/db/persist/ProjectDao;

    invoke-virtual {v8, v7}, Lim/doit/pro/db/persist/ProjectDao;->findByUUID(Ljava/lang/String;)Lim/doit/pro/model/BaseEntity;

    move-result-object v4

    check-cast v4, Lim/doit/pro/model/Project;

    .line 89
    .local v4, "project":Lim/doit/pro/model/Project;
    if-nez v4, :cond_6

    .line 90
    invoke-super {p0, p1, p2}, Lim/doit/pro/widget/DoitBaseProvider;->toHome(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 93
    :cond_6
    new-instance v3, Landroid/content/Intent;

    const-class v8, Lim/doit/pro/activity/ProjectViewPagerActivity;

    invoke-direct {v3, p1, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 94
    .restart local v3    # "intent":Landroid/content/Intent;
    const-string v8, "project"

    invoke-virtual {v3, v8, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 95
    invoke-virtual {v3, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 96
    invoke-virtual {p1, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 97
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "project":Lim/doit/pro/model/Project;
    :cond_7
    const-class v8, Lim/doit/pro/model/TaskContext;

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 98
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v8

    iget-object v8, v8, Lim/doit/pro/db/Persist;->taskContextDao:Lim/doit/pro/db/persist/TaskContextDao;

    .line 99
    invoke-virtual {v8, v7}, Lim/doit/pro/db/persist/TaskContextDao;->findByUUID(Ljava/lang/String;)Lim/doit/pro/model/BaseEntity;

    move-result-object v5

    check-cast v5, Lim/doit/pro/model/TaskContext;

    .line 100
    .local v5, "taskContext":Lim/doit/pro/model/TaskContext;
    if-nez v5, :cond_8

    .line 101
    invoke-super {p0, p1, p2}, Lim/doit/pro/widget/DoitBaseProvider;->toHome(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 104
    :cond_8
    new-instance v3, Landroid/content/Intent;

    .line 105
    const-class v8, Lim/doit/pro/activity/TaskContextViewPagerActivity;

    .line 104
    invoke-direct {v3, p1, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 106
    .restart local v3    # "intent":Landroid/content/Intent;
    const-string v8, "taskContext"

    invoke-virtual {v3, v8, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 107
    invoke-virtual {v3, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 108
    invoke-virtual {p1, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 109
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v5    # "taskContext":Lim/doit/pro/model/TaskContext;
    :cond_9
    const-class v8, Lim/doit/pro/model/Goal;

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 110
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v8

    iget-object v8, v8, Lim/doit/pro/db/Persist;->goalDao:Lim/doit/pro/db/persist/GoalDao;

    invoke-virtual {v8, v7}, Lim/doit/pro/db/persist/GoalDao;->findByUUID(Ljava/lang/String;)Lim/doit/pro/model/BaseEntity;

    move-result-object v2

    check-cast v2, Lim/doit/pro/model/Goal;

    .line 111
    .local v2, "goal":Lim/doit/pro/model/Goal;
    if-nez v2, :cond_a

    .line 112
    invoke-super {p0, p1, p2}, Lim/doit/pro/widget/DoitBaseProvider;->toHome(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 115
    :cond_a
    new-instance v3, Landroid/content/Intent;

    const-class v8, Lim/doit/pro/activity/GoalViewPagerActivity;

    invoke-direct {v3, p1, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 116
    .restart local v3    # "intent":Landroid/content/Intent;
    const-string v8, "goal"

    invoke-virtual {v3, v8, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 117
    invoke-virtual {v3, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 118
    invoke-virtual {p1, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method protected updateViews(Landroid/content/Context;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 133
    new-instance v7, Landroid/content/ComponentName;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-direct {v7, p1, v11}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 135
    .local v7, "thisWidget":Landroid/content/ComponentName;
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v2

    .line 136
    .local v2, "appWidgetManager":Landroid/appwidget/AppWidgetManager;
    invoke-virtual {v2, v7}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v0

    .line 137
    .local v0, "allWidgetIds":[I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    array-length v11, v0

    if-lt v5, v11, :cond_0

    .line 162
    return-void

    .line 138
    :cond_0
    aget v1, v0, v5

    .line 139
    .local v1, "appWidgetId":I
    new-instance v10, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11

    .line 140
    const v12, 0x7f0300b1

    .line 139
    invoke-direct {v10, v11, v12}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 141
    .local v10, "views":Landroid/widget/RemoteViews;
    invoke-direct {p0, p1}, Lim/doit/pro/widget/WidgetBadgeProvider;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 142
    .local v6, "prefs":Landroid/content/SharedPreferences;
    invoke-direct {p0, v6, v1}, Lim/doit/pro/widget/WidgetBadgeProvider;->getType(Landroid/content/SharedPreferences;I)Ljava/lang/String;

    move-result-object v8

    .line 143
    .local v8, "type":Ljava/lang/String;
    invoke-direct {p0, v6, v1}, Lim/doit/pro/widget/WidgetBadgeProvider;->getId(Landroid/content/SharedPreferences;I)Ljava/lang/String;

    move-result-object v9

    .line 145
    .local v9, "uuid":Ljava/lang/String;
    invoke-direct {p0, v1, v6}, Lim/doit/pro/widget/WidgetBadgeProvider;->getCode(ILandroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object v4

    .line 146
    .local v4, "code":Ljava/lang/String;
    const-string v11, "inbox"

    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 147
    const-string v11, "today"

    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 148
    :cond_1
    const-class v11, Lim/doit/pro/model/Box;

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    .line 149
    const-string v11, "inbox"

    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 150
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v11

    iget-object v11, v11, Lim/doit/pro/db/Persist;->boxDao:Lim/doit/pro/db/persist/BoxDao;

    sget-object v12, Lim/doit/pro/model/enums/BoxType;->inbox:Lim/doit/pro/model/enums/BoxType;

    invoke-virtual {v11, v12}, Lim/doit/pro/db/persist/BoxDao;->findByType(Lim/doit/pro/model/enums/BoxType;)Lim/doit/pro/model/Box;

    move-result-object v3

    .line 151
    .local v3, "box":Lim/doit/pro/model/Box;
    invoke-virtual {v3}, Lim/doit/pro/model/Box;->getUuid()Ljava/lang/String;

    move-result-object v9

    .line 157
    .end local v3    # "box":Lim/doit/pro/model/Box;
    :cond_2
    :goto_1
    invoke-direct {p0, v10, v8, v9}, Lim/doit/pro/widget/WidgetBadgeProvider;->setWidgetCountent(Landroid/widget/RemoteViews;Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    invoke-direct {p0, p1, v10, v8, v9}, Lim/doit/pro/widget/WidgetBadgeProvider;->setOnClick(Landroid/content/Context;Landroid/widget/RemoteViews;Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    invoke-virtual {v2, v1, v10}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 137
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 153
    :cond_3
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v11

    iget-object v11, v11, Lim/doit/pro/db/Persist;->boxDao:Lim/doit/pro/db/persist/BoxDao;

    sget-object v12, Lim/doit/pro/model/enums/BoxType;->today:Lim/doit/pro/model/enums/BoxType;

    invoke-virtual {v11, v12}, Lim/doit/pro/db/persist/BoxDao;->findByType(Lim/doit/pro/model/enums/BoxType;)Lim/doit/pro/model/Box;

    move-result-object v3

    .line 154
    .restart local v3    # "box":Lim/doit/pro/model/Box;
    invoke-virtual {v3}, Lim/doit/pro/model/Box;->getUuid()Ljava/lang/String;

    move-result-object v9

    goto :goto_1
.end method
