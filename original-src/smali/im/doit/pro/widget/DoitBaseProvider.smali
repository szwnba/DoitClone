.class public abstract Lim/doit/pro/widget/DoitBaseProvider;
.super Landroid/appwidget/AppWidgetProvider;
.source "DoitBaseProvider.java"


# static fields
.field public static final ACTION_ADD:Ljava/lang/String; = "im.doit.pro.widget.DoitBaseProvider.add"

.field public static final ACTION_REFRESH:Ljava/lang/String; = "im.doit.pro.widget.DoitBaseProvider.refresh"

.field public static final ACTION_TITLE_CLICK:Ljava/lang/String; = "im.doit.pro.widget.DoitBaseProvider.title_click"


# instance fields
.field protected addBtnSrc:I

.field protected dividerColor:I

.field protected fontScale:F

.field protected textColor:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    return-void
.end method

.method private onCompleteGoalClick(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[ILjava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appWidgetManager"    # Landroid/appwidget/AppWidgetManager;
    .param p3, "appWidgetIds"    # [I
    .param p4, "dataId"    # Ljava/lang/String;

    .prologue
    .line 199
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v1

    iget-object v1, v1, Lim/doit/pro/db/Persist;->goalDao:Lim/doit/pro/db/persist/GoalDao;

    invoke-virtual {v1, p4}, Lim/doit/pro/db/persist/GoalDao;->findByUUID(Ljava/lang/String;)Lim/doit/pro/model/BaseEntity;

    move-result-object v0

    check-cast v0, Lim/doit/pro/model/Goal;

    .line 200
    .local v0, "goal":Lim/doit/pro/model/Goal;
    if-eqz v0, :cond_0

    .line 201
    invoke-virtual {v0}, Lim/doit/pro/model/Goal;->isCompleted()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 202
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v1

    iget-object v1, v1, Lim/doit/pro/db/Persist;->goalDao:Lim/doit/pro/db/persist/GoalDao;

    invoke-virtual {v1, v0}, Lim/doit/pro/db/persist/GoalDao;->uncomplete(Lim/doit/pro/model/Goal;)V

    .line 207
    :cond_0
    :goto_0
    invoke-virtual {p0, p1}, Lim/doit/pro/widget/DoitBaseProvider;->updateViews(Landroid/content/Context;)V

    .line 208
    return-void

    .line 204
    :cond_1
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v1

    iget-object v1, v1, Lim/doit/pro/db/Persist;->goalDao:Lim/doit/pro/db/persist/GoalDao;

    invoke-virtual {v1, v0}, Lim/doit/pro/db/persist/GoalDao;->complete(Lim/doit/pro/model/Goal;)V

    goto :goto_0
.end method

.method private onCompleteProjectClick(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[ILjava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appWidgetManager"    # Landroid/appwidget/AppWidgetManager;
    .param p3, "appWidgetIds"    # [I
    .param p4, "dataId"    # Ljava/lang/String;

    .prologue
    .line 186
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v1

    iget-object v1, v1, Lim/doit/pro/db/Persist;->projectDao:Lim/doit/pro/db/persist/ProjectDao;

    invoke-virtual {v1, p4}, Lim/doit/pro/db/persist/ProjectDao;->findByUUID(Ljava/lang/String;)Lim/doit/pro/model/BaseEntity;

    move-result-object v0

    check-cast v0, Lim/doit/pro/model/Project;

    .line 187
    .local v0, "project":Lim/doit/pro/model/Project;
    if-eqz v0, :cond_0

    .line 188
    invoke-virtual {v0}, Lim/doit/pro/model/Project;->isCompleted()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 189
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v1

    iget-object v1, v1, Lim/doit/pro/db/Persist;->projectDao:Lim/doit/pro/db/persist/ProjectDao;

    invoke-virtual {v1, v0}, Lim/doit/pro/db/persist/ProjectDao;->uncomplete(Lim/doit/pro/model/Project;)V

    .line 194
    :cond_0
    :goto_0
    invoke-virtual {p0, p1}, Lim/doit/pro/widget/DoitBaseProvider;->updateViews(Landroid/content/Context;)V

    .line 195
    return-void

    .line 191
    :cond_1
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v1

    iget-object v1, v1, Lim/doit/pro/db/Persist;->projectDao:Lim/doit/pro/db/persist/ProjectDao;

    invoke-virtual {v1, v0}, Lim/doit/pro/db/persist/ProjectDao;->complete(Lim/doit/pro/model/Project;)V

    goto :goto_0
.end method

.method private onCompleteTaskClick(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[ILjava/lang/String;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appWidgetManager"    # Landroid/appwidget/AppWidgetManager;
    .param p3, "appWidgetIds"    # [I
    .param p4, "dataId"    # Ljava/lang/String;

    .prologue
    .line 164
    const/4 v3, 0x0

    .local v3, "uuid":Ljava/lang/String;
    const/4 v1, 0x0

    .line 165
    .local v1, "repeatNo":Ljava/lang/String;
    const-string v4, "_"

    invoke-virtual {p4, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 166
    const-string v4, "_"

    invoke-virtual {p4, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 167
    .local v0, "arr":[Ljava/lang/String;
    const/4 v4, 0x0

    aget-object v3, v0, v4

    .line 168
    const/4 v4, 0x1

    aget-object v1, v0, v4

    .line 172
    .end local v0    # "arr":[Ljava/lang/String;
    :goto_0
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v4

    iget-object v4, v4, Lim/doit/pro/db/Persist;->taskDao:Lim/doit/pro/db/persist/TaskDao;

    invoke-virtual {v4, v3, v1}, Lim/doit/pro/db/persist/TaskDao;->findByUUIDAndRepeatNo(Ljava/lang/String;Ljava/lang/String;)Lim/doit/pro/model/Task;

    move-result-object v2

    .line 174
    .local v2, "task":Lim/doit/pro/model/Task;
    if-eqz v2, :cond_0

    .line 175
    invoke-virtual {v2}, Lim/doit/pro/model/Task;->isCompleted()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 176
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v4

    iget-object v4, v4, Lim/doit/pro/db/Persist;->taskDao:Lim/doit/pro/db/persist/TaskDao;

    invoke-virtual {v4, v2}, Lim/doit/pro/db/persist/TaskDao;->uncomplete(Lim/doit/pro/model/Task;)V

    .line 181
    :cond_0
    :goto_1
    invoke-virtual {p0, p1}, Lim/doit/pro/widget/DoitBaseProvider;->updateViews(Landroid/content/Context;)V

    .line 182
    return-void

    .line 170
    .end local v2    # "task":Lim/doit/pro/model/Task;
    :cond_1
    move-object v3, p4

    goto :goto_0

    .line 178
    .restart local v2    # "task":Lim/doit/pro/model/Task;
    :cond_2
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v4

    iget-object v4, v4, Lim/doit/pro/db/Persist;->taskDao:Lim/doit/pro/db/persist/TaskDao;

    invoke-virtual {v4, v2}, Lim/doit/pro/db/persist/TaskDao;->complete(Lim/doit/pro/model/Task;)V

    goto :goto_1
.end method

.method private toSmartAdd(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 136
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lim/doit/pro/activity/SmartAddActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 137
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 138
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 139
    return-void
.end method


# virtual methods
.method protected getDataId(Landroid/content/Intent;)Ljava/lang/String;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 83
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getDataType(Landroid/content/Intent;)Ljava/lang/String;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 79
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getWidgetBgColor()I
    .locals 6

    .prologue
    .line 70
    invoke-static {}, Lim/doit/pro/utils/LocalSettings;->getWidgetBGAlpha()I

    move-result v0

    .line 71
    .local v0, "alpha":I
    invoke-static {}, Lim/doit/pro/utils/LocalSettings;->getWidgetBGColor()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    .line 72
    .local v2, "color":I
    invoke-static {v2}, Landroid/graphics/Color;->red(I)I

    move-result v4

    .line 73
    .local v4, "red":I
    invoke-static {v2}, Landroid/graphics/Color;->green(I)I

    move-result v3

    .line 74
    .local v3, "green":I
    invoke-static {v2}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    .line 75
    .local v1, "blue":I
    invoke-static {v0, v4, v3, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    return v5
.end method

.method protected initWidgetSettings()V
    .locals 2

    .prologue
    .line 51
    const-string v0, "#000000"

    invoke-static {}, Lim/doit/pro/utils/LocalSettings;->getWidgetBGColor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    const/4 v0, -0x1

    iput v0, p0, Lim/doit/pro/widget/DoitBaseProvider;->textColor:I

    .line 53
    const v0, 0x7f020122

    iput v0, p0, Lim/doit/pro/widget/DoitBaseProvider;->addBtnSrc:I

    .line 55
    const v0, 0x7f08007b

    invoke-static {v0}, Lim/doit/pro/activity/utils/ViewUtils;->getColor(I)I

    move-result v0

    .line 54
    iput v0, p0, Lim/doit/pro/widget/DoitBaseProvider;->dividerColor:I

    .line 62
    :goto_0
    invoke-static {}, Lim/doit/pro/utils/LocalSettings;->getWidgetFontScale()F

    move-result v0

    iput v0, p0, Lim/doit/pro/widget/DoitBaseProvider;->fontScale:F

    .line 63
    return-void

    .line 57
    :cond_0
    const/high16 v0, -0x1000000

    iput v0, p0, Lim/doit/pro/widget/DoitBaseProvider;->textColor:I

    .line 58
    const v0, 0x7f020123

    iput v0, p0, Lim/doit/pro/widget/DoitBaseProvider;->addBtnSrc:I

    .line 60
    const v0, 0x7f08007a

    invoke-static {v0}, Lim/doit/pro/activity/utils/ViewUtils;->getColor(I)I

    move-result v0

    .line 59
    iput v0, p0, Lim/doit/pro/widget/DoitBaseProvider;->dividerColor:I

    goto :goto_0
.end method

.method protected onItemCompleteClick(Landroid/content/Context;Landroid/content/Intent;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "appWidgetManager"    # Landroid/appwidget/AppWidgetManager;
    .param p4, "appWidgetIds"    # [I

    .prologue
    .line 143
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->isLogin()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 144
    invoke-virtual {p0, p2}, Lim/doit/pro/widget/DoitBaseProvider;->getDataType(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    .line 145
    .local v1, "dataType":Ljava/lang/String;
    invoke-virtual {p0, p2}, Lim/doit/pro/widget/DoitBaseProvider;->getDataId(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 146
    .local v0, "dataId":Ljava/lang/String;
    const-class v2, Lim/doit/pro/model/Task;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 147
    invoke-direct {p0, p1, p3, p4, v0}, Lim/doit/pro/widget/DoitBaseProvider;->onCompleteTaskClick(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[ILjava/lang/String;)V

    .line 160
    .end local v0    # "dataId":Ljava/lang/String;
    .end local v1    # "dataType":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 149
    .restart local v0    # "dataId":Ljava/lang/String;
    .restart local v1    # "dataType":Ljava/lang/String;
    :cond_1
    const-class v2, Lim/doit/pro/model/Project;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 150
    invoke-direct {p0, p1, p3, p4, v0}, Lim/doit/pro/widget/DoitBaseProvider;->onCompleteProjectClick(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[ILjava/lang/String;)V

    goto :goto_0

    .line 152
    :cond_2
    const-class v2, Lim/doit/pro/model/Goal;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 153
    invoke-direct {p0, p1, p3, p4, v0}, Lim/doit/pro/widget/DoitBaseProvider;->onCompleteGoalClick(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[ILjava/lang/String;)V

    goto :goto_0

    .line 158
    .end local v0    # "dataId":Ljava/lang/String;
    .end local v1    # "dataType":Ljava/lang/String;
    :cond_3
    invoke-virtual {p0, p1}, Lim/doit/pro/widget/DoitBaseProvider;->updateViews(Landroid/content/Context;)V

    .line 159
    invoke-virtual {p0, p1}, Lim/doit/pro/widget/DoitBaseProvider;->toLogin(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 39
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 40
    .local v0, "action":Ljava/lang/String;
    const-string v1, "im.doit.pro.widget.DoitBaseProvider.refresh"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 41
    invoke-virtual {p0, p1}, Lim/doit/pro/widget/DoitBaseProvider;->updateViews(Landroid/content/Context;)V

    .line 45
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 46
    return-void

    .line 42
    :cond_1
    const-string v1, "im.doit.pro.widget.DoitBaseProvider.title_click"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 43
    invoke-virtual {p0, p1, p2}, Lim/doit/pro/widget/DoitBaseProvider;->toApp(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected onSmartAddClick(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 87
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->isLogin()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    invoke-direct {p0, p1}, Lim/doit/pro/widget/DoitBaseProvider;->toSmartAdd(Landroid/content/Context;)V

    .line 92
    :goto_0
    return-void

    .line 90
    :cond_0
    invoke-virtual {p0, p1}, Lim/doit/pro/widget/DoitBaseProvider;->toLogin(Landroid/content/Context;)V

    goto :goto_0
.end method

.method protected setTextSize(Landroid/widget/RemoteViews;IF)V
    .locals 2
    .param p1, "views"    # Landroid/widget/RemoteViews;
    .param p2, "id"    # I
    .param p3, "fontSize"    # F
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 128
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 129
    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0, p3}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V

    .line 133
    :goto_0
    return-void

    .line 131
    :cond_0
    const-string v0, "setTextSize"

    invoke-virtual {p1, p2, v0, p3}, Landroid/widget/RemoteViews;->setFloat(ILjava/lang/String;F)V

    goto :goto_0
.end method

.method protected setWidgetBackgroundColor(Landroid/widget/RemoteViews;)V
    .locals 3
    .param p1, "views"    # Landroid/widget/RemoteViews;

    .prologue
    .line 66
    const v0, 0x7f0b01de

    const-string v1, "setBackgroundColor"

    invoke-virtual {p0}, Lim/doit/pro/widget/DoitBaseProvider;->getWidgetBgColor()I

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 67
    return-void
.end method

.method protected toApp(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 95
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->isLogin()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    invoke-virtual {p0, p1, p2}, Lim/doit/pro/widget/DoitBaseProvider;->toHome(Landroid/content/Context;Landroid/content/Intent;)V

    .line 100
    :goto_0
    return-void

    .line 98
    :cond_0
    invoke-virtual {p0, p1}, Lim/doit/pro/widget/DoitBaseProvider;->toLogin(Landroid/content/Context;)V

    goto :goto_0
.end method

.method protected toHome(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "data"    # Landroid/content/Intent;

    .prologue
    .line 121
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lim/doit/pro/activity/HomeActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 122
    .local v0, "homeIntent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 123
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 124
    return-void
.end method

.method protected toLogin(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 103
    invoke-static {}, Lim/doit/pro/utils/PrefUtils;->getLoginAgain()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 104
    invoke-virtual {p0, p1}, Lim/doit/pro/widget/DoitBaseProvider;->toLoginAgain(Landroid/content/Context;)V

    .line 111
    :goto_0
    return-void

    .line 106
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lim/doit/pro/activity/LoginActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 107
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 108
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 109
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected toLoginAgain(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 114
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lim/doit/pro/activity/LoginAgainActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 115
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 116
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 117
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 118
    return-void
.end method

.method protected abstract updateViews(Landroid/content/Context;)V
.end method
