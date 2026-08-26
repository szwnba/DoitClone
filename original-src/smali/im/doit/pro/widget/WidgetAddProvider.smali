.class public Lim/doit/pro/widget/WidgetAddProvider;
.super Lim/doit/pro/widget/DoitBaseProvider;
.source "WidgetAddProvider.java"


# instance fields
.field private final ACTION_ADD:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Lim/doit/pro/widget/DoitBaseProvider;-><init>()V

    .line 16
    const-string v0, " im.doit.pro.widget.WidgetAddProvider.add"

    iput-object v0, p0, Lim/doit/pro/widget/WidgetAddProvider;->ACTION_ADD:Ljava/lang/String;

    .line 14
    return-void
.end method

.method private setOnAddClick(Landroid/content/Context;Landroid/widget/RemoteViews;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "views"    # Landroid/widget/RemoteViews;

    .prologue
    .line 57
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 58
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, " im.doit.pro.widget.WidgetAddProvider.add"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 60
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    invoke-virtual {v2}, Ljava/util/Random;->nextInt()I

    move-result v2

    .line 61
    const/high16 v3, 0x8000000

    .line 59
    invoke-static {p1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 62
    .local v1, "pendingIntent":Landroid/app/PendingIntent;
    const v2, 0x7f0b01de

    invoke-virtual {p2, v2, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 63
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 49
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 50
    .local v0, "action":Ljava/lang/String;
    const-string v1, " im.doit.pro.widget.WidgetAddProvider.add"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 51
    invoke-virtual {p0, p1}, Lim/doit/pro/widget/WidgetAddProvider;->onSmartAddClick(Landroid/content/Context;)V

    .line 53
    :cond_0
    invoke-super {p0, p1, p2}, Lim/doit/pro/widget/DoitBaseProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 54
    return-void
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appWidgetManager"    # Landroid/appwidget/AppWidgetManager;
    .param p3, "appWidgetIds"    # [I

    .prologue
    .line 21
    invoke-virtual {p0, p1}, Lim/doit/pro/widget/WidgetAddProvider;->updateViews(Landroid/content/Context;)V

    .line 22
    return-void
.end method

.method protected setWidgetBackgroundColor(Landroid/widget/RemoteViews;)V
    .locals 3
    .param p1, "views"    # Landroid/widget/RemoteViews;

    .prologue
    .line 44
    const v0, 0x7f0b01df

    const-string v1, "setBackgroundColor"

    invoke-virtual {p0}, Lim/doit/pro/widget/WidgetAddProvider;->getWidgetBgColor()I

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 45
    return-void
.end method

.method protected updateViews(Landroid/content/Context;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    new-instance v4, Landroid/content/ComponentName;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-direct {v4, p1, v6}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 28
    .local v4, "thisWidget":Landroid/content/ComponentName;
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v2

    .line 29
    .local v2, "appWidgetManager":Landroid/appwidget/AppWidgetManager;
    invoke-virtual {v2, v4}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v1

    .line 30
    .local v1, "appWidgetIds":[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v6, v1

    if-lt v3, v6, :cond_0

    .line 40
    return-void

    .line 31
    :cond_0
    invoke-virtual {p0}, Lim/doit/pro/widget/WidgetAddProvider;->initWidgetSettings()V

    .line 32
    aget v0, v1, v3

    .line 33
    .local v0, "appWidgetId":I
    new-instance v5, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 34
    const v7, 0x7f0300b0

    .line 33
    invoke-direct {v5, v6, v7}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 35
    .local v5, "views":Landroid/widget/RemoteViews;
    invoke-virtual {p0, v5}, Lim/doit/pro/widget/WidgetAddProvider;->setWidgetBackgroundColor(Landroid/widget/RemoteViews;)V

    .line 36
    const v6, 0x7f0b0039

    const-string v7, "setImageResource"

    iget v8, p0, Lim/doit/pro/widget/WidgetAddProvider;->addBtnSrc:I

    invoke-virtual {v5, v6, v7, v8}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 37
    invoke-direct {p0, p1, v5}, Lim/doit/pro/widget/WidgetAddProvider;->setOnAddClick(Landroid/content/Context;Landroid/widget/RemoteViews;)V

    .line 38
    invoke-virtual {v2, v0, v5}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 30
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method
