.class Lim/doit/pro/activity/SettingsActivity$12;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Lim/doit/pro/activity/listener/OnLayoutClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/activity/SettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/activity/SettingsActivity;


# direct methods
.method constructor <init>(Lim/doit/pro/activity/SettingsActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lim/doit/pro/activity/SettingsActivity$12;->this$0:Lim/doit/pro/activity/SettingsActivity;

    .line 555
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private showChooseEvernoteAuthDialog()V
    .locals 1

    .prologue
    .line 571
    iget-object v0, p0, Lim/doit/pro/activity/SettingsActivity$12;->this$0:Lim/doit/pro/activity/SettingsActivity;

    invoke-static {v0}, Lim/doit/pro/utils/AlertDialogUtils;->showLinkEvernoteDialog(Landroid/content/Context;)V

    .line 572
    return-void
.end method

.method private startEvernoteAccountActivity()V
    .locals 3

    .prologue
    .line 575
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lim/doit/pro/activity/SettingsActivity$12;->this$0:Lim/doit/pro/activity/SettingsActivity;

    .line 576
    const-class v2, Lim/doit/pro/activity/EvernoteAccountActivity;

    .line 575
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 577
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lim/doit/pro/activity/SettingsActivity$12;->this$0:Lim/doit/pro/activity/SettingsActivity;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lim/doit/pro/activity/SettingsActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 578
    return-void
.end method


# virtual methods
.method public click(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 559
    invoke-static {}, Lim/doit/pro/utils/UserUtils;->isNotPro()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 560
    iget-object v0, p0, Lim/doit/pro/activity/SettingsActivity$12;->this$0:Lim/doit/pro/activity/SettingsActivity;

    invoke-static {v0}, Lim/doit/pro/utils/AlertDialogUtils;->showJustForProDialog(Landroid/app/Activity;)Z

    .line 568
    :goto_0
    return-void

    .line 563
    :cond_0
    invoke-static {}, Lim/doit/pro/utils/DEvernoteUtils;->isAuth()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 564
    invoke-direct {p0}, Lim/doit/pro/activity/SettingsActivity$12;->startEvernoteAccountActivity()V

    goto :goto_0

    .line 566
    :cond_1
    invoke-direct {p0}, Lim/doit/pro/activity/SettingsActivity$12;->showChooseEvernoteAuthDialog()V

    goto :goto_0
.end method
