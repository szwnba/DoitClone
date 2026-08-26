.class Lim/doit/pro/activity/SettingsActivity$5;
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
    iput-object p1, p0, Lim/doit/pro/activity/SettingsActivity$5;->this$0:Lim/doit/pro/activity/SettingsActivity;

    .line 470
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public click(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 474
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.INSERT"

    .line 476
    const-string v2, "content://com.android.contacts"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 477
    const-string v3, "contacts"

    .line 475
    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 474
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 479
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "email"

    .line 480
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->user()Lim/doit/pro/model/User;

    move-result-object v2

    invoke-virtual {v2}, Lim/doit/pro/model/User;->getEmailToTaskAddress()Ljava/lang/String;

    move-result-object v2

    .line 478
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 481
    iget-object v1, p0, Lim/doit/pro/activity/SettingsActivity$5;->this$0:Lim/doit/pro/activity/SettingsActivity;

    invoke-virtual {v1, v0}, Lim/doit/pro/activity/SettingsActivity;->startActivity(Landroid/content/Intent;)V

    .line 482
    return-void
.end method
