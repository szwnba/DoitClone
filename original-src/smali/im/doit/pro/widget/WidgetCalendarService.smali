.class public Lim/doit/pro/widget/WidgetCalendarService;
.super Landroid/widget/RemoteViewsService;
.source "WidgetCalendarService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/widget/RemoteViewsService;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetViewFactory(Landroid/content/Intent;)Landroid/widget/RemoteViewsService$RemoteViewsFactory;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 33
    new-instance v0, Lim/doit/pro/widget/WidgetCalendarViewsFactory;

    invoke-direct {v0, p0, p1}, Lim/doit/pro/widget/WidgetCalendarViewsFactory;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    return-object v0
.end method
