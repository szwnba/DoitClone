.class Lim/doit/pro/activity/TaskContextListFragment$LoadingTaskNotShowProgress;
.super Lim/doit/pro/activity/TaskContextListFragment$LoadingContexts;
.source "TaskContextListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/activity/TaskContextListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadingTaskNotShowProgress"
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/activity/TaskContextListFragment;


# direct methods
.method private constructor <init>(Lim/doit/pro/activity/TaskContextListFragment;)V
    .locals 1

    .prologue
    .line 231
    iput-object p1, p0, Lim/doit/pro/activity/TaskContextListFragment$LoadingTaskNotShowProgress;->this$0:Lim/doit/pro/activity/TaskContextListFragment;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lim/doit/pro/activity/TaskContextListFragment$LoadingContexts;-><init>(Lim/doit/pro/activity/TaskContextListFragment;Lim/doit/pro/activity/TaskContextListFragment$LoadingContexts;)V

    return-void
.end method

.method synthetic constructor <init>(Lim/doit/pro/activity/TaskContextListFragment;Lim/doit/pro/activity/TaskContextListFragment$LoadingTaskNotShowProgress;)V
    .locals 0

    .prologue
    .line 231
    invoke-direct {p0, p1}, Lim/doit/pro/activity/TaskContextListFragment$LoadingTaskNotShowProgress;-><init>(Lim/doit/pro/activity/TaskContextListFragment;)V

    return-void
.end method


# virtual methods
.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 234
    return-void
.end method
