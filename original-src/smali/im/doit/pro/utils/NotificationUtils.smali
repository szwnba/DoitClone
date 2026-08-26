.class public Lim/doit/pro/utils/NotificationUtils;
.super Ljava/lang/Object;
.source "NotificationUtils.java"


# static fields
.field private static final ACTION_NEW_MESSAGE:Ljava/lang/String; = "ACTION_NEW_MESSAGE"

.field private static final ACTION_SMARTADD:Ljava/lang/String; = "ACTION_SMARTADD"

.field private static final NOTIFIACTION_NEW_MESSAGE_ID:I = 0x2

.field private static final NOTIFIACTION_SMARTADD_ID:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cancelAll()V
    .locals 0

    .prologue
    .line 86
    invoke-static {}, Lim/doit/pro/utils/NotificationUtils;->cancelSmartAddOnBar()V

    .line 87
    invoke-static {}, Lim/doit/pro/utils/NotificationUtils;->cancelNewMessage()V

    .line 88
    return-void
.end method

.method public static cancelNewMessage()V
    .locals 3

    .prologue
    .line 81
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->context()Landroid/content/Context;

    move-result-object v1

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 82
    .local v0, "manager":Landroid/app/NotificationManager;
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 83
    return-void
.end method

.method public static cancelSmartAddOnBar()V
    .locals 3

    .prologue
    .line 55
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->context()Landroid/content/Context;

    move-result-object v1

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 56
    .local v0, "manager":Landroid/app/NotificationManager;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 57
    return-void
.end method

.method public static notifyNewMessage(I)V
    .locals 11
    .param p0, "messageCount"    # I

    .prologue
    const v10, 0x7f0c0022

    const/4 v9, 0x0

    .line 63
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->context()Landroid/content/Context;

    move-result-object v2

    .line 64
    .local v2, "context":Landroid/content/Context;
    const v6, 0x7f0c01c2

    invoke-static {v6}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Lim/doit/pro/activity/utils/ViewUtils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 65
    .local v0, "body":Ljava/lang/String;
    new-instance v5, Landroid/content/Intent;

    const-class v6, Lim/doit/pro/activity/NoticeActivity;

    invoke-direct {v5, v2, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 66
    .local v5, "smartaddIntent":Landroid/content/Intent;
    const-string v6, "ACTION_NEW_MESSAGE"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 67
    const/high16 v6, 0x10400000

    invoke-static {v2, v9, v5, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 69
    .local v1, "contentIntent":Landroid/app/PendingIntent;
    new-instance v6, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-direct {v6, v2}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    invoke-static {v10}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v6

    .line 70
    const v7, 0x7f020162

    invoke-virtual {v6, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v6

    invoke-static {v10}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v6

    .line 71
    invoke-virtual {v6, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v4

    .line 72
    .local v4, "noti":Landroid/app/Notification;
    const/16 v6, 0x10

    iput v6, v4, Landroid/app/Notification;->flags:I

    .line 73
    const-string v6, "notification"

    invoke-virtual {v2, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    .line 74
    .local v3, "manager":Landroid/app/NotificationManager;
    const/4 v6, 0x2

    invoke-virtual {v3, v6, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 75
    return-void
.end method

.method private static setPriorityMin(Landroid/app/Notification;)V
    .locals 5
    .param p0, "noti"    # Landroid/app/Notification;

    .prologue
    .line 92
    const/16 v3, 0x10

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v3, v4, :cond_0

    .line 103
    :goto_0
    return-void

    .line 96
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "priority"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 97
    .local v2, "priority":Ljava/lang/reflect/Field;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 98
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "PRIORITY_MIN"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 99
    .local v1, "field":Ljava/lang/reflect/Field;
    goto :goto_0

    .line 100
    .end local v1    # "field":Ljava/lang/reflect/Field;
    .end local v2    # "priority":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v0

    .line 101
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static showSmartAddOnBar(Landroid/content/Context;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    invoke-static {}, Lim/doit/pro/utils/LocalSettings;->isShowSmartaddOnNotification()Z

    move-result v5

    if-nez v5, :cond_0

    .line 30
    invoke-static {}, Lim/doit/pro/utils/NotificationUtils;->cancelSmartAddOnBar()V

    .line 49
    :goto_0
    return-void

    .line 33
    :cond_0
    new-instance v5, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-direct {v5, p0}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 34
    const v6, 0x7f020162

    invoke-virtual {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    .line 35
    const v6, 0x7f0c0022

    invoke-static {v6}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    .line 36
    const v6, 0x7f0c0152

    invoke-static {v6}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 38
    .local v0, "mBuilder":Landroid/support/v4/app/NotificationCompat$Builder;
    new-instance v3, Landroid/content/Intent;

    const-class v5, Lim/doit/pro/activity/SmartAddActivity;

    invoke-direct {v3, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 39
    .local v3, "resultIntent":Landroid/content/Intent;
    const-string v5, "ACTION_SMARTADD"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 41
    const/4 v5, 0x0

    const/high16 v6, 0x10400000

    invoke-static {p0, v5, v3, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 43
    .local v4, "resultPendingIntent":Landroid/app/PendingIntent;
    invoke-virtual {v0, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 44
    const-string v5, "notification"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 45
    .local v2, "mNotificationManager":Landroid/app/NotificationManager;
    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    .line 46
    .local v1, "mNotification":Landroid/app/Notification;
    invoke-static {v1}, Lim/doit/pro/utils/NotificationUtils;->setPriorityMin(Landroid/app/Notification;)V

    .line 47
    const/16 v5, 0x22

    iput v5, v1, Landroid/app/Notification;->flags:I

    .line 48
    const/4 v5, 0x1

    invoke-virtual {v2, v5, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0
.end method
