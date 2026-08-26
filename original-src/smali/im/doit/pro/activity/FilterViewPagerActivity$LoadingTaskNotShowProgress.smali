.class Lim/doit/pro/activity/FilterViewPagerActivity$LoadingTaskNotShowProgress;
.super Lim/doit/pro/activity/FilterViewPagerActivity$LoadingTask;
.source "FilterViewPagerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/activity/FilterViewPagerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadingTaskNotShowProgress"
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/activity/FilterViewPagerActivity;


# direct methods
.method private constructor <init>(Lim/doit/pro/activity/FilterViewPagerActivity;)V
    .locals 1

    .prologue
    .line 95
    iput-object p1, p0, Lim/doit/pro/activity/FilterViewPagerActivity$LoadingTaskNotShowProgress;->this$0:Lim/doit/pro/activity/FilterViewPagerActivity;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lim/doit/pro/activity/FilterViewPagerActivity$LoadingTask;-><init>(Lim/doit/pro/activity/FilterViewPagerActivity;Lim/doit/pro/activity/FilterViewPagerActivity$LoadingTask;)V

    return-void
.end method

.method synthetic constructor <init>(Lim/doit/pro/activity/FilterViewPagerActivity;Lim/doit/pro/activity/FilterViewPagerActivity$LoadingTaskNotShowProgress;)V
    .locals 0

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lim/doit/pro/activity/FilterViewPagerActivity$LoadingTaskNotShowProgress;-><init>(Lim/doit/pro/activity/FilterViewPagerActivity;)V

    return-void
.end method


# virtual methods
.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 98
    return-void
.end method
