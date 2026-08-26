.class Lim/doit/pro/activity/TaskContextViewPagerActivity$LoadingTaskNotShowProgress;
.super Lim/doit/pro/activity/TaskContextViewPagerActivity$LoadingTask;
.source "TaskContextViewPagerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/activity/TaskContextViewPagerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadingTaskNotShowProgress"
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/activity/TaskContextViewPagerActivity;


# direct methods
.method private constructor <init>(Lim/doit/pro/activity/TaskContextViewPagerActivity;)V
    .locals 1

    .prologue
    .line 177
    iput-object p1, p0, Lim/doit/pro/activity/TaskContextViewPagerActivity$LoadingTaskNotShowProgress;->this$0:Lim/doit/pro/activity/TaskContextViewPagerActivity;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lim/doit/pro/activity/TaskContextViewPagerActivity$LoadingTask;-><init>(Lim/doit/pro/activity/TaskContextViewPagerActivity;Lim/doit/pro/activity/TaskContextViewPagerActivity$LoadingTask;)V

    return-void
.end method

.method synthetic constructor <init>(Lim/doit/pro/activity/TaskContextViewPagerActivity;Lim/doit/pro/activity/TaskContextViewPagerActivity$LoadingTaskNotShowProgress;)V
    .locals 0

    .prologue
    .line 177
    invoke-direct {p0, p1}, Lim/doit/pro/activity/TaskContextViewPagerActivity$LoadingTaskNotShowProgress;-><init>(Lim/doit/pro/activity/TaskContextViewPagerActivity;)V

    return-void
.end method


# virtual methods
.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 180
    return-void
.end method
