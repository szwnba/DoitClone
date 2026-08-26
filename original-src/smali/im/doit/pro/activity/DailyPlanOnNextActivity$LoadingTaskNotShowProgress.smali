.class Lim/doit/pro/activity/DailyPlanOnNextActivity$LoadingTaskNotShowProgress;
.super Lim/doit/pro/activity/DailyPlanOnNextActivity$LoadingTask;
.source "DailyPlanOnNextActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/activity/DailyPlanOnNextActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadingTaskNotShowProgress"
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/activity/DailyPlanOnNextActivity;


# direct methods
.method private constructor <init>(Lim/doit/pro/activity/DailyPlanOnNextActivity;)V
    .locals 1

    .prologue
    .line 147
    iput-object p1, p0, Lim/doit/pro/activity/DailyPlanOnNextActivity$LoadingTaskNotShowProgress;->this$0:Lim/doit/pro/activity/DailyPlanOnNextActivity;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lim/doit/pro/activity/DailyPlanOnNextActivity$LoadingTask;-><init>(Lim/doit/pro/activity/DailyPlanOnNextActivity;Lim/doit/pro/activity/DailyPlanOnNextActivity$LoadingTask;)V

    return-void
.end method

.method synthetic constructor <init>(Lim/doit/pro/activity/DailyPlanOnNextActivity;Lim/doit/pro/activity/DailyPlanOnNextActivity$LoadingTaskNotShowProgress;)V
    .locals 0

    .prologue
    .line 147
    invoke-direct {p0, p1}, Lim/doit/pro/activity/DailyPlanOnNextActivity$LoadingTaskNotShowProgress;-><init>(Lim/doit/pro/activity/DailyPlanOnNextActivity;)V

    return-void
.end method


# virtual methods
.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 150
    return-void
.end method
