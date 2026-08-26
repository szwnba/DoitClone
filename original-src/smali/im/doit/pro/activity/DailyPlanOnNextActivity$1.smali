.class Lim/doit/pro/activity/DailyPlanOnNextActivity$1;
.super Ljava/lang/Object;
.source "DailyPlanOnNextActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/activity/DailyPlanOnNextActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/activity/DailyPlanOnNextActivity;


# direct methods
.method constructor <init>(Lim/doit/pro/activity/DailyPlanOnNextActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lim/doit/pro/activity/DailyPlanOnNextActivity$1;->this$0:Lim/doit/pro/activity/DailyPlanOnNextActivity;

    .line 258
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 262
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lim/doit/pro/activity/DailyPlanOnNextActivity$1;->this$0:Lim/doit/pro/activity/DailyPlanOnNextActivity;

    .line 263
    const-class v2, Lim/doit/pro/activity/DailyPlanActivity;

    .line 262
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 264
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "daily_plan_from_next_tasks"

    iget-object v2, p0, Lim/doit/pro/activity/DailyPlanOnNextActivity$1;->this$0:Lim/doit/pro/activity/DailyPlanOnNextActivity;

    invoke-static {v2}, Lim/doit/pro/activity/DailyPlanOnNextActivity;->access$0(Lim/doit/pro/activity/DailyPlanOnNextActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 265
    iget-object v1, p0, Lim/doit/pro/activity/DailyPlanOnNextActivity$1;->this$0:Lim/doit/pro/activity/DailyPlanOnNextActivity;

    invoke-virtual {v1, v0}, Lim/doit/pro/activity/DailyPlanOnNextActivity;->startActivity(Landroid/content/Intent;)V

    .line 266
    iget-object v1, p0, Lim/doit/pro/activity/DailyPlanOnNextActivity$1;->this$0:Lim/doit/pro/activity/DailyPlanOnNextActivity;

    invoke-virtual {v1}, Lim/doit/pro/activity/DailyPlanOnNextActivity;->finish()V

    .line 267
    return-void
.end method
