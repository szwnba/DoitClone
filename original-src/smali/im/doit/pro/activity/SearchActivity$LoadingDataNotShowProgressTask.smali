.class Lim/doit/pro/activity/SearchActivity$LoadingDataNotShowProgressTask;
.super Lim/doit/pro/activity/SearchActivity$LoadingTask;
.source "SearchActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/activity/SearchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadingDataNotShowProgressTask"
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/activity/SearchActivity;


# direct methods
.method private constructor <init>(Lim/doit/pro/activity/SearchActivity;)V
    .locals 1

    .prologue
    .line 210
    iput-object p1, p0, Lim/doit/pro/activity/SearchActivity$LoadingDataNotShowProgressTask;->this$0:Lim/doit/pro/activity/SearchActivity;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lim/doit/pro/activity/SearchActivity$LoadingTask;-><init>(Lim/doit/pro/activity/SearchActivity;Lim/doit/pro/activity/SearchActivity$LoadingTask;)V

    return-void
.end method

.method synthetic constructor <init>(Lim/doit/pro/activity/SearchActivity;Lim/doit/pro/activity/SearchActivity$LoadingDataNotShowProgressTask;)V
    .locals 0

    .prologue
    .line 210
    invoke-direct {p0, p1}, Lim/doit/pro/activity/SearchActivity$LoadingDataNotShowProgressTask;-><init>(Lim/doit/pro/activity/SearchActivity;)V

    return-void
.end method


# virtual methods
.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 213
    return-void
.end method
