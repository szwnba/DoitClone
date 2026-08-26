.class Lim/doit/pro/activity/GoalViewPagerActivity$3;
.super Ljava/lang/Object;
.source "GoalViewPagerActivity.java"

# interfaces
.implements Lim/doit/pro/controller/CompleteGoal$CompleteGoalFinishListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/activity/GoalViewPagerActivity;->completeGoal(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/activity/GoalViewPagerActivity;


# direct methods
.method constructor <init>(Lim/doit/pro/activity/GoalViewPagerActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lim/doit/pro/activity/GoalViewPagerActivity$3;->this$0:Lim/doit/pro/activity/GoalViewPagerActivity;

    .line 324
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 1

    .prologue
    .line 328
    iget-object v0, p0, Lim/doit/pro/activity/GoalViewPagerActivity$3;->this$0:Lim/doit/pro/activity/GoalViewPagerActivity;

    invoke-virtual {v0}, Lim/doit/pro/activity/GoalViewPagerActivity;->finish()V

    .line 329
    return-void
.end method
