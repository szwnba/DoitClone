.class Lim/doit/pro/activity/NoticeActivity$NoticeVo;
.super Ljava/lang/Object;
.source "NoticeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/activity/NoticeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NoticeVo"
.end annotation


# instance fields
.field public bodyContent:Ljava/lang/String;

.field public bodyTitle:Ljava/lang/String;

.field public isShow:Z

.field public notice:Lim/doit/pro/model/Notice;

.field final synthetic this$0:Lim/doit/pro/activity/NoticeActivity;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lim/doit/pro/activity/NoticeActivity;Lim/doit/pro/model/Notice;)V
    .locals 1
    .param p2, "notice"    # Lim/doit/pro/model/Notice;

    .prologue
    .line 875
    iput-object p1, p0, Lim/doit/pro/activity/NoticeActivity$NoticeVo;->this$0:Lim/doit/pro/activity/NoticeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 883
    const/4 v0, 0x0

    iput-boolean v0, p0, Lim/doit/pro/activity/NoticeActivity$NoticeVo;->isShow:Z

    .line 876
    iput-object p2, p0, Lim/doit/pro/activity/NoticeActivity$NoticeVo;->notice:Lim/doit/pro/model/Notice;

    .line 877
    return-void
.end method
