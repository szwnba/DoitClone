.class Lim/doit/pro/activity/GoalDetailActivity$7;
.super Ljava/lang/Object;
.source "GoalDetailActivity.java"

# interfaces
.implements Lim/doit/pro/controller/CompleteGoal$CompleteGoalFinishListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/activity/GoalDetailActivity;->completeGoal()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/activity/GoalDetailActivity;


# direct methods
.method constructor <init>(Lim/doit/pro/activity/GoalDetailActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lim/doit/pro/activity/GoalDetailActivity$7;->this$0:Lim/doit/pro/activity/GoalDetailActivity;

    .line 264
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .prologue
    .line 268
    iget-object v0, p0, Lim/doit/pro/activity/GoalDetailActivity$7;->this$0:Lim/doit/pro/activity/GoalDetailActivity;

    invoke-static {v0}, Lim/doit/pro/activity/GoalDetailActivity;->access$3(Lim/doit/pro/activity/GoalDetailActivity;)V

    .line 269
    iget-object v0, p0, Lim/doit/pro/activity/GoalDetailActivity$7;->this$0:Lim/doit/pro/activity/GoalDetailActivity;

    invoke-static {v0}, Lim/doit/pro/activity/GoalDetailActivity;->access$1(Lim/doit/pro/activity/GoalDetailActivity;)Lim/doit/pro/model/Goal;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lim/doit/pro/model/Goal;->setChanged(Z)V

    .line 270
    iget-object v0, p0, Lim/doit/pro/activity/GoalDetailActivity$7;->this$0:Lim/doit/pro/activity/GoalDetailActivity;

    invoke-virtual {v0}, Lim/doit/pro/activity/GoalDetailActivity;->finish()V

    .line 271
    return-void
.end method
