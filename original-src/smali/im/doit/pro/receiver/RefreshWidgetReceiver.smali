.class public Lim/doit/pro/receiver/RefreshWidgetReceiver;
.super Landroid/content/BroadcastReceiver;
.source "RefreshWidgetReceiver.java"


# static fields
.field public static final ACTION:Ljava/lang/String; = "im.doit.pro.receiver.RefreshWidgetReceiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 16
    const-string v0, "**RefreshWidgetReceiver**"

    invoke-static {v0}, Lim/doit/pro/utils/Logger;->d(Ljava/lang/Object;)V

    .line 17
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lim/doit/pro/widget/WidgetCalendarProvider;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "im.doit.pro.widget.WidgetCalendarProvider.update_selected_date_to_today"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 18
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->refreshWidget()V

    .line 19
    return-void
.end method
