.class Lim/doit/pro/activity/NoticeActivity$LoadingNoticesNotShowProgress;
.super Lim/doit/pro/activity/NoticeActivity$LoadingNotices;
.source "NoticeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/activity/NoticeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadingNoticesNotShowProgress"
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/activity/NoticeActivity;


# direct methods
.method private constructor <init>(Lim/doit/pro/activity/NoticeActivity;)V
    .locals 1

    .prologue
    .line 355
    iput-object p1, p0, Lim/doit/pro/activity/NoticeActivity$LoadingNoticesNotShowProgress;->this$0:Lim/doit/pro/activity/NoticeActivity;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lim/doit/pro/activity/NoticeActivity$LoadingNotices;-><init>(Lim/doit/pro/activity/NoticeActivity;Lim/doit/pro/activity/NoticeActivity$LoadingNotices;)V

    return-void
.end method

.method synthetic constructor <init>(Lim/doit/pro/activity/NoticeActivity;Lim/doit/pro/activity/NoticeActivity$LoadingNoticesNotShowProgress;)V
    .locals 0

    .prologue
    .line 355
    invoke-direct {p0, p1}, Lim/doit/pro/activity/NoticeActivity$LoadingNoticesNotShowProgress;-><init>(Lim/doit/pro/activity/NoticeActivity;)V

    return-void
.end method


# virtual methods
.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 358
    return-void
.end method
