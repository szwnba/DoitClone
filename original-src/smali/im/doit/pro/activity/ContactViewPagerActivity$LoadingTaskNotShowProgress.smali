.class Lim/doit/pro/activity/ContactViewPagerActivity$LoadingTaskNotShowProgress;
.super Lim/doit/pro/activity/ContactViewPagerActivity$LoadingTask;
.source "ContactViewPagerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/activity/ContactViewPagerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadingTaskNotShowProgress"
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/activity/ContactViewPagerActivity;


# direct methods
.method private constructor <init>(Lim/doit/pro/activity/ContactViewPagerActivity;)V
    .locals 1

    .prologue
    .line 213
    iput-object p1, p0, Lim/doit/pro/activity/ContactViewPagerActivity$LoadingTaskNotShowProgress;->this$0:Lim/doit/pro/activity/ContactViewPagerActivity;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lim/doit/pro/activity/ContactViewPagerActivity$LoadingTask;-><init>(Lim/doit/pro/activity/ContactViewPagerActivity;Lim/doit/pro/activity/ContactViewPagerActivity$LoadingTask;)V

    return-void
.end method

.method synthetic constructor <init>(Lim/doit/pro/activity/ContactViewPagerActivity;Lim/doit/pro/activity/ContactViewPagerActivity$LoadingTaskNotShowProgress;)V
    .locals 0

    .prologue
    .line 213
    invoke-direct {p0, p1}, Lim/doit/pro/activity/ContactViewPagerActivity$LoadingTaskNotShowProgress;-><init>(Lim/doit/pro/activity/ContactViewPagerActivity;)V

    return-void
.end method


# virtual methods
.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 216
    return-void
.end method
