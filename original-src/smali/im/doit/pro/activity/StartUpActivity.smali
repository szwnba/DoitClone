.class public Lim/doit/pro/activity/StartUpActivity;
.super Lim/doit/pro/activity/BaseActivity;
.source "StartUpActivity.java"


# static fields
.field private static final REQUEST_SHOW_GUIDE_CODE:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lim/doit/pro/activity/BaseActivity;-><init>()V

    return-void
.end method

.method private startInit()V
    .locals 1

    invoke-direct {p0}, Lim/doit/pro/activity/StartUpActivity;->toHome()V

    return-void

.end method

.method private toHome()V
    .locals 2

    .prologue
    .line 77
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lim/doit/pro/activity/HomeActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 78
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lim/doit/pro/activity/StartUpActivity;->startActivity(Landroid/content/Intent;)V

    .line 79
    invoke-virtual {p0}, Lim/doit/pro/activity/StartUpActivity;->finish()V

    .line 80
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 37
    packed-switch p1, :pswitch_data_0

    .line 44
    invoke-super {p0, p1, p2, p3}, Lim/doit/pro/activity/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 47
    :cond_0
    :goto_0
    return-void

    .line 39
    :pswitch_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 40
    invoke-direct {p0}, Lim/doit/pro/activity/StartUpActivity;->startInit()V

    goto :goto_0

    .line 37
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 23
    invoke-super {p0, p1}, Lim/doit/pro/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 24
    invoke-static {p0}, Lcom/crashlytics/android/Crashlytics;->start(Landroid/content/Context;)V

    .line 25
    invoke-direct {p0}, Lim/doit/pro/activity/StartUpActivity;->startInit()V

    .line 26
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 30
    invoke-super {p0, p1}, Lim/doit/pro/activity/BaseActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 31
    invoke-virtual {p0, p1}, Lim/doit/pro/activity/StartUpActivity;->setIntent(Landroid/content/Intent;)V

    .line 32
    invoke-direct {p0}, Lim/doit/pro/activity/StartUpActivity;->startInit()V

    .line 33
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "dialog"    # Landroid/app/Dialog;
    .param p3, "args"    # Landroid/os/Bundle;

    .prologue
    .line 84
    return-void
.end method

.method protected toLogin()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 19
    return-void
.end method
