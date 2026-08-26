.class Lim/doit/pro/activity/SettingsActivity$15$1;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/activity/SettingsActivity$15;->click(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lim/doit/pro/activity/SettingsActivity$15;


# direct methods
.method constructor <init>(Lim/doit/pro/activity/SettingsActivity$15;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lim/doit/pro/activity/SettingsActivity$15$1;->this$1:Lim/doit/pro/activity/SettingsActivity$15;

    .line 610
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "item"    # I

    .prologue
    .line 612
    const-string v1, "feature"

    .line 613
    .local v1, "type":Ljava/lang/String;
    const/4 v2, 0x1

    if-ne p2, v2, :cond_0

    .line 614
    const-string v1, "bug"

    .line 616
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lim/doit/pro/activity/SettingsActivity$15$1;->this$1:Lim/doit/pro/activity/SettingsActivity$15;

    invoke-static {v2}, Lim/doit/pro/activity/SettingsActivity$15;->access$0(Lim/doit/pro/activity/SettingsActivity$15;)Lim/doit/pro/activity/SettingsActivity;

    move-result-object v2

    .line 617
    const-class v3, Lim/doit/pro/activity/FeedbackActivity;

    .line 616
    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 618
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "type"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 619
    iget-object v2, p0, Lim/doit/pro/activity/SettingsActivity$15$1;->this$1:Lim/doit/pro/activity/SettingsActivity$15;

    invoke-static {v2}, Lim/doit/pro/activity/SettingsActivity$15;->access$0(Lim/doit/pro/activity/SettingsActivity$15;)Lim/doit/pro/activity/SettingsActivity;

    move-result-object v2

    invoke-virtual {v2, v0}, Lim/doit/pro/activity/SettingsActivity;->startActivity(Landroid/content/Intent;)V

    .line 620
    return-void
.end method
