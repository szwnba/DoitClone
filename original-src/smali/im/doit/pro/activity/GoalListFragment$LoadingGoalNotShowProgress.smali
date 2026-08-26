.class Lim/doit/pro/activity/GoalListFragment$LoadingGoalNotShowProgress;
.super Lim/doit/pro/activity/GoalListFragment$LoadingGoals;
.source "GoalListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/activity/GoalListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadingGoalNotShowProgress"
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/activity/GoalListFragment;


# direct methods
.method private constructor <init>(Lim/doit/pro/activity/GoalListFragment;)V
    .locals 1

    .prologue
    .line 231
    iput-object p1, p0, Lim/doit/pro/activity/GoalListFragment$LoadingGoalNotShowProgress;->this$0:Lim/doit/pro/activity/GoalListFragment;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lim/doit/pro/activity/GoalListFragment$LoadingGoals;-><init>(Lim/doit/pro/activity/GoalListFragment;Lim/doit/pro/activity/GoalListFragment$LoadingGoals;)V

    return-void
.end method

.method synthetic constructor <init>(Lim/doit/pro/activity/GoalListFragment;Lim/doit/pro/activity/GoalListFragment$LoadingGoalNotShowProgress;)V
    .locals 0

    .prologue
    .line 231
    invoke-direct {p0, p1}, Lim/doit/pro/activity/GoalListFragment$LoadingGoalNotShowProgress;-><init>(Lim/doit/pro/activity/GoalListFragment;)V

    return-void
.end method


# virtual methods
.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 234
    return-void
.end method
