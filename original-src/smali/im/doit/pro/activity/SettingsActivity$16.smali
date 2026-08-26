.class Lim/doit/pro/activity/SettingsActivity$16;
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
    iput-object p1, p0, Lim/doit/pro/activity/SettingsActivity$16;->this$0:Lim/doit/pro/activity/SettingsActivity;

    .line 626
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public click(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 630
    const/4 v3, 0x0

    .line 631
    .local v3, "url":Ljava/lang/String;
    invoke-static {}, Lim/doit/pro/api/utils/D;->isCn()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 632
    const-string v3, "http://help.doitim.com"

    .line 645
    :goto_0
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 646
    .local v2, "uri":Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v0, v4, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 647
    .local v0, "intent":Landroid/content/Intent;
    iget-object v4, p0, Lim/doit/pro/activity/SettingsActivity$16;->this$0:Lim/doit/pro/activity/SettingsActivity;

    invoke-virtual {v4, v0}, Lim/doit/pro/activity/SettingsActivity;->startActivity(Landroid/content/Intent;)V

    .line 648
    return-void

    .line 634
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v2    # "uri":Landroid/net/Uri;
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    .line 635
    .local v1, "lang":Ljava/lang/String;
    invoke-static {v1}, Lim/doit/pro/utils/LocalSettings;->isTw(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 636
    const-string v3, "http://help.doit.im/forums/tw/"

    .line 637
    goto :goto_0

    :cond_1
    invoke-static {v1}, Lim/doit/pro/utils/LocalSettings;->isCn(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 638
    const-string v3, "http://help.doit.im/forums/cn/"

    .line 639
    goto :goto_0

    :cond_2
    invoke-static {v1}, Lim/doit/pro/utils/LocalSettings;->isJa(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 640
    const-string v3, "http://help.doit.im/forums/ja/"

    .line 641
    goto :goto_0

    .line 642
    :cond_3
    const-string v3, "http://help.doit.im/forums/en/"

    goto :goto_0
.end method
