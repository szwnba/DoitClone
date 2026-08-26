.class Lim/doit/pro/activity/NoticeActivity$ListAdapter$OnRejectInviteClick;
.super Ljava/lang/Object;
.source "NoticeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/activity/NoticeActivity$ListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnRejectInviteClick"
.end annotation


# instance fields
.field final synthetic this$1:Lim/doit/pro/activity/NoticeActivity$ListAdapter;


# direct methods
.method private constructor <init>(Lim/doit/pro/activity/NoticeActivity$ListAdapter;)V
    .locals 0

    .prologue
    .line 801
    iput-object p1, p0, Lim/doit/pro/activity/NoticeActivity$ListAdapter$OnRejectInviteClick;->this$1:Lim/doit/pro/activity/NoticeActivity$ListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lim/doit/pro/activity/NoticeActivity$ListAdapter;Lim/doit/pro/activity/NoticeActivity$ListAdapter$OnRejectInviteClick;)V
    .locals 0

    .prologue
    .line 801
    invoke-direct {p0, p1}, Lim/doit/pro/activity/NoticeActivity$ListAdapter$OnRejectInviteClick;-><init>(Lim/doit/pro/activity/NoticeActivity$ListAdapter;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 805
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 806
    .local v1, "position":I
    iget-object v2, p0, Lim/doit/pro/activity/NoticeActivity$ListAdapter$OnRejectInviteClick;->this$1:Lim/doit/pro/activity/NoticeActivity$ListAdapter;

    invoke-static {v2}, Lim/doit/pro/activity/NoticeActivity$ListAdapter;->access$2(Lim/doit/pro/activity/NoticeActivity$ListAdapter;)Lim/doit/pro/activity/NoticeActivity;

    move-result-object v2

    invoke-static {v2}, Lim/doit/pro/activity/NoticeActivity;->access$1(Lim/doit/pro/activity/NoticeActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lim/doit/pro/activity/NoticeActivity$NoticeVo;

    .line 807
    .local v0, "noticeVo":Lim/doit/pro/activity/NoticeActivity$NoticeVo;
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v2

    iget-object v2, v2, Lim/doit/pro/db/Persist;->noticeDao:Lim/doit/pro/db/persist/NoticeDao;

    iget-object v3, v0, Lim/doit/pro/activity/NoticeActivity$NoticeVo;->notice:Lim/doit/pro/model/Notice;

    invoke-virtual {v2, v3}, Lim/doit/pro/db/persist/NoticeDao;->rejectInvite(Lim/doit/pro/model/Notice;)V

    .line 808
    iget-object v2, p0, Lim/doit/pro/activity/NoticeActivity$ListAdapter$OnRejectInviteClick;->this$1:Lim/doit/pro/activity/NoticeActivity$ListAdapter;

    invoke-static {v2}, Lim/doit/pro/activity/NoticeActivity$ListAdapter;->access$2(Lim/doit/pro/activity/NoticeActivity$ListAdapter;)Lim/doit/pro/activity/NoticeActivity;

    move-result-object v2

    invoke-static {v2}, Lim/doit/pro/activity/NoticeActivity;->access$4(Lim/doit/pro/activity/NoticeActivity;)Lim/doit/pro/activity/NoticeActivity$ListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lim/doit/pro/activity/NoticeActivity$ListAdapter;->notifyDataSetChanged()V

    .line 809
    return-void
.end method
