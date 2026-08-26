.class public Lim/doit/pro/activity/WidgetAddConfigureActivity;
.super Lim/doit/pro/activity/WidgetBaseConfigureActivity;
.source "WidgetAddConfigureActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Lim/doit/pro/activity/WidgetBaseConfigureActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 9
    invoke-super {p0, p1}, Lim/doit/pro/activity/WidgetBaseConfigureActivity;->onCreate(Landroid/os/Bundle;)V

    .line 10
    invoke-virtual {p0}, Lim/doit/pro/activity/WidgetAddConfigureActivity;->isWidgetEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 14
    :goto_0
    return-void

    .line 13
    :cond_0
    invoke-virtual {p0}, Lim/doit/pro/activity/WidgetAddConfigureActivity;->finish()V

    goto :goto_0
.end method
