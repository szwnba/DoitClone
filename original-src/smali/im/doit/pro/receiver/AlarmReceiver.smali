.class public Lim/doit/pro/receiver/AlarmReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AlarmReceiver.java"


# instance fields
.field private final WAKEFUL_META_DATA:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 36
    const-string v0, "com.commonsware.cwac.wakeful"

    iput-object v0, p0, Lim/doit/pro/receiver/AlarmReceiver;->WAKEFUL_META_DATA:Ljava/lang/String;

    .line 35
    return-void
.end method

.method private getListener(Landroid/content/Context;)Lim/doit/pro/service/WakefulIntentService$AlarmListener;
    .locals 10
    .param p1, "ctxt"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x0

    .line 61
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 62
    .local v5, "pm":Landroid/content/pm/PackageManager;
    new-instance v3, Landroid/content/ComponentName;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-direct {v3, p1, v7}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 66
    .local v3, "cn":Landroid/content/ComponentName;
    const/16 v7, 0x80

    .line 65
    :try_start_0
    invoke-virtual {v5, v3, v7}, Landroid/content/pm/PackageManager;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 68
    .local v0, "ai":Landroid/content/pm/ActivityInfo;
    const-string v7, "com.commonsware.cwac.wakeful"

    .line 67
    invoke-virtual {v0, v5, v7}, Landroid/content/pm/ActivityInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v6

    .line 70
    .local v6, "xpp":Landroid/content/res/XmlResourceParser;
    :goto_0
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v7

    const/4 v9, 0x1

    if-ne v7, v9, :cond_0

    .end local v0    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v6    # "xpp":Landroid/content/res/XmlResourceParser;
    :goto_1
    move-object v7, v8

    .line 102
    :goto_2
    return-object v7

    .line 71
    .restart local v0    # "ai":Landroid/content/pm/ActivityInfo;
    .restart local v6    # "xpp":Landroid/content/res/XmlResourceParser;
    :cond_0
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v7

    const/4 v9, 0x2

    if-ne v7, v9, :cond_1

    .line 72
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v9, "WakefulIntentService"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 73
    const/4 v7, 0x0

    const-string v9, "listener"

    invoke-interface {v6, v7, v9}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 74
    .local v2, "clsName":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 76
    .local v1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<Lim/doit/pro/service/WakefulIntentService$AlarmListener;>;"
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lim/doit/pro/service/WakefulIntentService$AlarmListener;

    goto :goto_2

    .line 80
    .end local v1    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<Lim/doit/pro/service/WakefulIntentService$AlarmListener;>;"
    .end local v2    # "clsName":Ljava/lang/String;
    :cond_1
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->next()I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_5

    goto :goto_0

    .line 83
    .end local v0    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v6    # "xpp":Landroid/content/res/XmlResourceParser;
    :catch_0
    move-exception v4

    .line 84
    .local v4, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v9, "Cannot find own info???"

    invoke-static {v7, v9, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 86
    .end local v4    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v4

    .line 87
    .local v4, "e":Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v9, "Malformed metadata resource XML"

    invoke-static {v7, v9, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 89
    .end local v4    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_2
    move-exception v4

    .line 90
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v9, "Could not read resource XML"

    invoke-static {v7, v9, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 92
    .end local v4    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v4

    .line 93
    .local v4, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v9, "Listener class not found"

    invoke-static {v7, v9, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 95
    .end local v4    # "e":Ljava/lang/ClassNotFoundException;
    :catch_4
    move-exception v4

    .line 96
    .local v4, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v9, "Listener is not public or lacks public constructor"

    invoke-static {v7, v9, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 98
    .end local v4    # "e":Ljava/lang/IllegalAccessException;
    :catch_5
    move-exception v4

    .line 99
    .local v4, "e":Ljava/lang/InstantiationException;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v9, "Could not create instance of listener"

    invoke-static {v7, v9, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "ctxt"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lim/doit/pro/receiver/AlarmReceiver;->getListener(Landroid/content/Context;)Lim/doit/pro/service/WakefulIntentService$AlarmListener;

    move-result-object v0

    .line 42
    .local v0, "listener":Lim/doit/pro/service/WakefulIntentService$AlarmListener;
    if-eqz v0, :cond_0

    .line 43
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    .line 44
    const-string v2, "com.commonsware.cwac.wakeful.WakefulIntentService"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 47
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 48
    const-string v3, "lastAlarm"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 49
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 51
    invoke-interface {v0, p1}, Lim/doit/pro/service/WakefulIntentService$AlarmListener;->sendWakefulWork(Landroid/content/Context;)V

    .line 57
    .end local v1    # "prefs":Landroid/content/SharedPreferences;
    :cond_0
    :goto_0
    return-void

    .line 54
    :cond_1
    const/4 v2, 0x1

    invoke-static {v0, p1, v2}, Lim/doit/pro/service/WakefulIntentService;->scheduleAlarms(Lim/doit/pro/service/WakefulIntentService$AlarmListener;Landroid/content/Context;Z)V

    goto :goto_0
.end method
