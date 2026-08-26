.class public Lim/doit/pro/receiver/DoitSyncReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DoitSyncReceiver.java"


# static fields
.field public static final ACTION:Ljava/lang/String; = "im.doit.pro.receiver.DoitSyncReceiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 18
    const-string v2, "**DoitSyncReceiver**"

    invoke-static {v2}, Lim/doit/pro/utils/Logger;->d(Ljava/lang/Object;)V

    .line 19
    const-string v2, "im.doit.pro.service.DoitSyncService.SYNC"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 20
    .local v1, "syncAction":Ljava/lang/String;
    const-string v2, "im.doit.pro.service.DoitSyncService.SYNC_BACKGROUND"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "im.doit.pro.service.DoitSyncService.SYNC_MIDNIGHT"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 21
    :cond_0
    invoke-static {}, Lim/doit/pro/utils/UserUtils;->isNotPro()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 33
    :goto_0
    return-void

    .line 27
    :cond_1
    const-string v2, "im.doit.pro.service.DoitSyncService.SYNC_MIDNIGHT"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 28
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lim/doit/pro/widget/WidgetCalendarProvider;

    invoke-direct {v2, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "im.doit.pro.widget.WidgetCalendarProvider.update_selected_date_to_today"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 30
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lim/doit/pro/service/DoitService;

    invoke-direct {v0, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 31
    .local v0, "service":Landroid/content/Intent;
    const-string v2, "sync_type"

    const-string v3, "sync_type"

    const/16 v4, 0x64

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 32
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method
