.class Lim/doit/pro/activity/DailyPlanDoneFragment$1;
.super Ljava/lang/Object;
.source "DailyPlanDoneFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/activity/DailyPlanDoneFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/activity/DailyPlanDoneFragment;


# direct methods
.method constructor <init>(Lim/doit/pro/activity/DailyPlanDoneFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lim/doit/pro/activity/DailyPlanDoneFragment$1;->this$0:Lim/doit/pro/activity/DailyPlanDoneFragment;

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 131
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lim/doit/pro/activity/DailyPlanDoneFragment$1;->this$0:Lim/doit/pro/activity/DailyPlanDoneFragment;

    invoke-virtual {v1}, Lim/doit/pro/activity/DailyPlanDoneFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 132
    const-class v2, Lim/doit/pro/activity/DailyPlanOnNextActivity;

    .line 131
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 133
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lim/doit/pro/activity/DailyPlanDoneFragment$1;->this$0:Lim/doit/pro/activity/DailyPlanDoneFragment;

    invoke-virtual {v1, v0}, Lim/doit/pro/activity/DailyPlanDoneFragment;->startActivity(Landroid/content/Intent;)V

    .line 134
    iget-object v1, p0, Lim/doit/pro/activity/DailyPlanDoneFragment$1;->this$0:Lim/doit/pro/activity/DailyPlanDoneFragment;

    invoke-virtual {v1}, Lim/doit/pro/activity/DailyPlanDoneFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 135
    return-void
.end method
