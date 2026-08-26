.class Lim/doit/pro/activity/NoticeActivity$ListAdapter$ItemWrapClick;
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
    name = "ItemWrapClick"
.end annotation


# instance fields
.field final synthetic this$1:Lim/doit/pro/activity/NoticeActivity$ListAdapter;


# direct methods
.method private constructor <init>(Lim/doit/pro/activity/NoticeActivity$ListAdapter;)V
    .locals 0

    .prologue
    .line 760
    iput-object p1, p0, Lim/doit/pro/activity/NoticeActivity$ListAdapter$ItemWrapClick;->this$1:Lim/doit/pro/activity/NoticeActivity$ListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lim/doit/pro/activity/NoticeActivity$ListAdapter;Lim/doit/pro/activity/NoticeActivity$ListAdapter$ItemWrapClick;)V
    .locals 0

    .prologue
    .line 760
    invoke-direct {p0, p1}, Lim/doit/pro/activity/NoticeActivity$ListAdapter$ItemWrapClick;-><init>(Lim/doit/pro/activity/NoticeActivity$ListAdapter;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 764
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lim/doit/pro/activity/NoticeActivity$ListAdapter$ViewHolder;

    .line 765
    .local v0, "holder":Lim/doit/pro/activity/NoticeActivity$ListAdapter$ViewHolder;
    iget-object v5, p0, Lim/doit/pro/activity/NoticeActivity$ListAdapter$ItemWrapClick;->this$1:Lim/doit/pro/activity/NoticeActivity$ListAdapter;

    invoke-static {v5}, Lim/doit/pro/activity/NoticeActivity$ListAdapter;->access$2(Lim/doit/pro/activity/NoticeActivity$ListAdapter;)Lim/doit/pro/activity/NoticeActivity;

    move-result-object v5

    invoke-static {v5}, Lim/doit/pro/activity/NoticeActivity;->access$1(Lim/doit/pro/activity/NoticeActivity;)Ljava/util/ArrayList;

    move-result-object v5

    .line 766
    invoke-virtual {v0}, Lim/doit/pro/activity/NoticeActivity$ListAdapter$ViewHolder;->getTag()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 765
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lim/doit/pro/activity/NoticeActivity$NoticeVo;

    .line 767
    .local v2, "noticeVo":Lim/doit/pro/activity/NoticeActivity$NoticeVo;
    iget-object v5, v2, Lim/doit/pro/activity/NoticeActivity$NoticeVo;->bodyTitle:Ljava/lang/String;

    invoke-static {v5}, Lim/doit/pro/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 768
    iget-object v5, v0, Lim/doit/pro/activity/NoticeActivity$ListAdapter$ViewHolder;->bodyWrap:Landroid/widget/LinearLayout;

    .line 769
    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v5

    .line 768
    if-ne v4, v5, :cond_2

    const/4 v1, 0x1

    .line 770
    .local v1, "isShow":Z
    :goto_0
    iget-object v5, v0, Lim/doit/pro/activity/NoticeActivity$ListAdapter$ViewHolder;->bodyWrap:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_3

    :goto_1
    invoke-virtual {v5, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 772
    iput-boolean v1, v2, Lim/doit/pro/activity/NoticeActivity$NoticeVo;->isShow:Z

    .line 773
    if-eqz v1, :cond_4

    .line 774
    iget-object v3, p0, Lim/doit/pro/activity/NoticeActivity$ListAdapter$ItemWrapClick;->this$1:Lim/doit/pro/activity/NoticeActivity$ListAdapter;

    invoke-static {v3}, Lim/doit/pro/activity/NoticeActivity$ListAdapter;->access$2(Lim/doit/pro/activity/NoticeActivity$ListAdapter;)Lim/doit/pro/activity/NoticeActivity;

    move-result-object v3

    invoke-static {v3}, Lim/doit/pro/activity/NoticeActivity;->access$0(Lim/doit/pro/activity/NoticeActivity;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, v2, Lim/doit/pro/activity/NoticeActivity$NoticeVo;->notice:Lim/doit/pro/model/Notice;

    invoke-virtual {v4}, Lim/doit/pro/model/Notice;->getUuid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 775
    iget-object v3, p0, Lim/doit/pro/activity/NoticeActivity$ListAdapter$ItemWrapClick;->this$1:Lim/doit/pro/activity/NoticeActivity$ListAdapter;

    invoke-static {v3}, Lim/doit/pro/activity/NoticeActivity$ListAdapter;->access$2(Lim/doit/pro/activity/NoticeActivity$ListAdapter;)Lim/doit/pro/activity/NoticeActivity;

    move-result-object v3

    invoke-static {v3}, Lim/doit/pro/activity/NoticeActivity;->access$0(Lim/doit/pro/activity/NoticeActivity;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, v2, Lim/doit/pro/activity/NoticeActivity$NoticeVo;->notice:Lim/doit/pro/model/Notice;

    invoke-virtual {v4}, Lim/doit/pro/model/Notice;->getUuid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 783
    .end local v1    # "isShow":Z
    :cond_0
    :goto_2
    iget-object v3, v2, Lim/doit/pro/activity/NoticeActivity$NoticeVo;->notice:Lim/doit/pro/model/Notice;

    invoke-virtual {v3}, Lim/doit/pro/model/Notice;->getRead()Ljava/util/Calendar;

    move-result-object v3

    if-nez v3, :cond_1

    .line 784
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v3

    iget-object v3, v3, Lim/doit/pro/db/Persist;->noticeDao:Lim/doit/pro/db/persist/NoticeDao;

    iget-object v4, v2, Lim/doit/pro/activity/NoticeActivity$NoticeVo;->notice:Lim/doit/pro/model/Notice;

    invoke-virtual {v3, v4}, Lim/doit/pro/db/persist/NoticeDao;->readNotice(Lim/doit/pro/model/Notice;)V

    .line 786
    :cond_1
    iget-object v3, p0, Lim/doit/pro/activity/NoticeActivity$ListAdapter$ItemWrapClick;->this$1:Lim/doit/pro/activity/NoticeActivity$ListAdapter;

    invoke-static {v3}, Lim/doit/pro/activity/NoticeActivity$ListAdapter;->access$2(Lim/doit/pro/activity/NoticeActivity$ListAdapter;)Lim/doit/pro/activity/NoticeActivity;

    move-result-object v3

    invoke-static {v3}, Lim/doit/pro/activity/NoticeActivity;->access$4(Lim/doit/pro/activity/NoticeActivity;)Lim/doit/pro/activity/NoticeActivity$ListAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lim/doit/pro/activity/NoticeActivity$ListAdapter;->notifyDataSetChanged()V

    .line 787
    return-void

    :cond_2
    move v1, v3

    .line 768
    goto :goto_0

    .restart local v1    # "isShow":Z
    :cond_3
    move v3, v4

    .line 771
    goto :goto_1

    .line 778
    :cond_4
    iget-object v3, p0, Lim/doit/pro/activity/NoticeActivity$ListAdapter$ItemWrapClick;->this$1:Lim/doit/pro/activity/NoticeActivity$ListAdapter;

    invoke-static {v3}, Lim/doit/pro/activity/NoticeActivity$ListAdapter;->access$2(Lim/doit/pro/activity/NoticeActivity$ListAdapter;)Lim/doit/pro/activity/NoticeActivity;

    move-result-object v3

    invoke-static {v3}, Lim/doit/pro/activity/NoticeActivity;->access$0(Lim/doit/pro/activity/NoticeActivity;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, v2, Lim/doit/pro/activity/NoticeActivity$NoticeVo;->notice:Lim/doit/pro/model/Notice;

    invoke-virtual {v4}, Lim/doit/pro/model/Notice;->getUuid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 779
    iget-object v3, p0, Lim/doit/pro/activity/NoticeActivity$ListAdapter$ItemWrapClick;->this$1:Lim/doit/pro/activity/NoticeActivity$ListAdapter;

    invoke-static {v3}, Lim/doit/pro/activity/NoticeActivity$ListAdapter;->access$2(Lim/doit/pro/activity/NoticeActivity$ListAdapter;)Lim/doit/pro/activity/NoticeActivity;

    move-result-object v3

    invoke-static {v3}, Lim/doit/pro/activity/NoticeActivity;->access$0(Lim/doit/pro/activity/NoticeActivity;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, v2, Lim/doit/pro/activity/NoticeActivity$NoticeVo;->notice:Lim/doit/pro/model/Notice;

    invoke-virtual {v4}, Lim/doit/pro/model/Notice;->getUuid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_2
.end method
