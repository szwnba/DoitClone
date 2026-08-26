.class Lim/doit/pro/activity/StartDailyPlanDialog$1;
.super Ljava/lang/Object;
.source "StartDailyPlanDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/activity/StartDailyPlanDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/activity/StartDailyPlanDialog;


# direct methods
.method constructor <init>(Lim/doit/pro/activity/StartDailyPlanDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lim/doit/pro/activity/StartDailyPlanDialog$1;->this$0:Lim/doit/pro/activity/StartDailyPlanDialog;

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 53
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lim/doit/pro/activity/StartDailyPlanDialog$1;->this$0:Lim/doit/pro/activity/StartDailyPlanDialog;

    .line 54
    const-class v2, Lim/doit/pro/activity/DailyPlanActivity;

    .line 53
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 55
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "is_daily_plan"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 56
    iget-object v1, p0, Lim/doit/pro/activity/StartDailyPlanDialog$1;->this$0:Lim/doit/pro/activity/StartDailyPlanDialog;

    invoke-virtual {v1, v0}, Lim/doit/pro/activity/StartDailyPlanDialog;->startActivity(Landroid/content/Intent;)V

    .line 57
    iget-object v1, p0, Lim/doit/pro/activity/StartDailyPlanDialog$1;->this$0:Lim/doit/pro/activity/StartDailyPlanDialog;

    invoke-virtual {v1}, Lim/doit/pro/activity/StartDailyPlanDialog;->finish()V

    .line 58
    return-void
.end method
