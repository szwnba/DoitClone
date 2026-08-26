.class Lim/doit/pro/activity/ProjectViewPagerActivity$LoadingTaskNotShowProgress;
.super Lim/doit/pro/activity/ProjectViewPagerActivity$LoadingTask;
.source "ProjectViewPagerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/activity/ProjectViewPagerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadingTaskNotShowProgress"
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/activity/ProjectViewPagerActivity;


# direct methods
.method private constructor <init>(Lim/doit/pro/activity/ProjectViewPagerActivity;)V
    .locals 1

    .prologue
    .line 136
    iput-object p1, p0, Lim/doit/pro/activity/ProjectViewPagerActivity$LoadingTaskNotShowProgress;->this$0:Lim/doit/pro/activity/ProjectViewPagerActivity;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lim/doit/pro/activity/ProjectViewPagerActivity$LoadingTask;-><init>(Lim/doit/pro/activity/ProjectViewPagerActivity;Lim/doit/pro/activity/ProjectViewPagerActivity$LoadingTask;)V

    return-void
.end method

.method synthetic constructor <init>(Lim/doit/pro/activity/ProjectViewPagerActivity;Lim/doit/pro/activity/ProjectViewPagerActivity$LoadingTaskNotShowProgress;)V
    .locals 0

    .prologue
    .line 136
    invoke-direct {p0, p1}, Lim/doit/pro/activity/ProjectViewPagerActivity$LoadingTaskNotShowProgress;-><init>(Lim/doit/pro/activity/ProjectViewPagerActivity;)V

    return-void
.end method


# virtual methods
.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 139
    return-void
.end method
