.class public Lim/doit/pro/activity/WidgetBaseConfigureActivity;
.super Lim/doit/pro/activity/BaseActivity;
.source "WidgetBaseConfigureActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lim/doit/pro/activity/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected isWidgetEnabled()Z
    .locals 2

    .prologue
    .line 15
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->isLogin()Z

    move-result v1

    if-nez v1, :cond_0

    .line 16
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lim/doit/pro/activity/StartUpActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 17
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lim/doit/pro/activity/WidgetBaseConfigureActivity;->startActivity(Landroid/content/Intent;)V

    .line 18
    invoke-virtual {p0}, Lim/doit/pro/activity/WidgetBaseConfigureActivity;->finish()V

    .line 19
    const/4 v1, 0x0

    .line 21
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 10
    invoke-super {p0, p1}, Lim/doit/pro/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 11
    return-void
.end method
