.class public Lim/doit/pro/receiver/ReminderSendReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ReminderSendReceiver.java"


# static fields
.field public static final ACTION:Ljava/lang/String; = "im.doit.pro.receiver.ReminderSendReceiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 17
    const-string v3, "**ReminderSendReceiver**"

    invoke-static {v3}, Lim/doit/pro/utils/Logger;->d(Ljava/lang/Object;)V

    .line 18
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 19
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 20
    const-string v3, "REMINDER"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    .line 21
    .local v1, "obj":Ljava/io/Serializable;
    if-eqz v1, :cond_0

    .line 22
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lim/doit/pro/service/DoitReminderService;

    invoke-direct {v2, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 23
    .local v2, "service":Landroid/content/Intent;
    const-string v3, "REMINDER"

    check-cast v1, Lim/doit/pro/db/metadata/ReminderMessage;

    .end local v1    # "obj":Ljava/io/Serializable;
    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 24
    invoke-virtual {p1, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 27
    .end local v2    # "service":Landroid/content/Intent;
    :cond_0
    return-void
.end method
