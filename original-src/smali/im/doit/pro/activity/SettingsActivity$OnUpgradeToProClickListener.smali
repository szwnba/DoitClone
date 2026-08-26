.class Lim/doit/pro/activity/SettingsActivity$OnUpgradeToProClickListener;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/activity/SettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnUpgradeToProClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/activity/SettingsActivity;


# direct methods
.method private constructor <init>(Lim/doit/pro/activity/SettingsActivity;)V
    .locals 0

    .prologue
    .line 431
    iput-object p1, p0, Lim/doit/pro/activity/SettingsActivity$OnUpgradeToProClickListener;->this$0:Lim/doit/pro/activity/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lim/doit/pro/activity/SettingsActivity;Lim/doit/pro/activity/SettingsActivity$OnUpgradeToProClickListener;)V
    .locals 0

    .prologue
    .line 431
    invoke-direct {p0, p1}, Lim/doit/pro/activity/SettingsActivity$OnUpgradeToProClickListener;-><init>(Lim/doit/pro/activity/SettingsActivity;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 434
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lim/doit/pro/activity/SettingsActivity$OnUpgradeToProClickListener;->this$0:Lim/doit/pro/activity/SettingsActivity;

    .line 435
    const-class v2, Lim/doit/pro/activity/UpgradeToProActivity;

    .line 434
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 436
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lim/doit/pro/activity/SettingsActivity$OnUpgradeToProClickListener;->this$0:Lim/doit/pro/activity/SettingsActivity;

    invoke-virtual {v1, v0}, Lim/doit/pro/activity/SettingsActivity;->startActivity(Landroid/content/Intent;)V

    .line 437
    return-void
.end method
