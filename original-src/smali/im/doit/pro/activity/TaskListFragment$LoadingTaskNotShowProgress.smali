.class Lim/doit/pro/activity/TaskListFragment$LoadingTaskNotShowProgress;
.super Lim/doit/pro/activity/TaskListFragment$LoadingTask;
.source "TaskListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/activity/TaskListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadingTaskNotShowProgress"
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/activity/TaskListFragment;


# direct methods
.method private constructor <init>(Lim/doit/pro/activity/TaskListFragment;)V
    .locals 1

    .prologue
    .line 458
    iput-object p1, p0, Lim/doit/pro/activity/TaskListFragment$LoadingTaskNotShowProgress;->this$0:Lim/doit/pro/activity/TaskListFragment;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lim/doit/pro/activity/TaskListFragment$LoadingTask;-><init>(Lim/doit/pro/activity/TaskListFragment;Lim/doit/pro/activity/TaskListFragment$LoadingTask;)V

    return-void
.end method

.method synthetic constructor <init>(Lim/doit/pro/activity/TaskListFragment;Lim/doit/pro/activity/TaskListFragment$LoadingTaskNotShowProgress;)V
    .locals 0

    .prologue
    .line 458
    invoke-direct {p0, p1}, Lim/doit/pro/activity/TaskListFragment$LoadingTaskNotShowProgress;-><init>(Lim/doit/pro/activity/TaskListFragment;)V

    return-void
.end method


# virtual methods
.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 461
    return-void
.end method
