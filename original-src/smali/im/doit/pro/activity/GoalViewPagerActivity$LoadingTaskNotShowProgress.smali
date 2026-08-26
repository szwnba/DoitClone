.class Lim/doit/pro/activity/GoalViewPagerActivity$LoadingTaskNotShowProgress;
.super Lim/doit/pro/activity/GoalViewPagerActivity$LoadingTask;
.source "GoalViewPagerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/activity/GoalViewPagerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadingTaskNotShowProgress"
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/activity/GoalViewPagerActivity;


# direct methods
.method private constructor <init>(Lim/doit/pro/activity/GoalViewPagerActivity;)V
    .locals 1

    .prologue
    .line 116
    iput-object p1, p0, Lim/doit/pro/activity/GoalViewPagerActivity$LoadingTaskNotShowProgress;->this$0:Lim/doit/pro/activity/GoalViewPagerActivity;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lim/doit/pro/activity/GoalViewPagerActivity$LoadingTask;-><init>(Lim/doit/pro/activity/GoalViewPagerActivity;Lim/doit/pro/activity/GoalViewPagerActivity$LoadingTask;)V

    return-void
.end method

.method synthetic constructor <init>(Lim/doit/pro/activity/GoalViewPagerActivity;Lim/doit/pro/activity/GoalViewPagerActivity$LoadingTaskNotShowProgress;)V
    .locals 0

    .prologue
    .line 116
    invoke-direct {p0, p1}, Lim/doit/pro/activity/GoalViewPagerActivity$LoadingTaskNotShowProgress;-><init>(Lim/doit/pro/activity/GoalViewPagerActivity;)V

    return-void
.end method


# virtual methods
.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 119
    return-void
.end method
