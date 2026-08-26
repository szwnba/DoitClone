.class Lim/doit/pro/activity/NoticeActivity$ListAdapter$OnActivateProjectClick;
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
    name = "OnActivateProjectClick"
.end annotation


# instance fields
.field final synthetic this$1:Lim/doit/pro/activity/NoticeActivity$ListAdapter;


# direct methods
.method private constructor <init>(Lim/doit/pro/activity/NoticeActivity$ListAdapter;)V
    .locals 0

    .prologue
    .line 842
    iput-object p1, p0, Lim/doit/pro/activity/NoticeActivity$ListAdapter$OnActivateProjectClick;->this$1:Lim/doit/pro/activity/NoticeActivity$ListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lim/doit/pro/activity/NoticeActivity$ListAdapter;Lim/doit/pro/activity/NoticeActivity$ListAdapter$OnActivateProjectClick;)V
    .locals 0

    .prologue
    .line 842
    invoke-direct {p0, p1}, Lim/doit/pro/activity/NoticeActivity$ListAdapter$OnActivateProjectClick;-><init>(Lim/doit/pro/activity/NoticeActivity$ListAdapter;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 846
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 847
    .local v1, "position":I
    iget-object v4, p0, Lim/doit/pro/activity/NoticeActivity$ListAdapter$OnActivateProjectClick;->this$1:Lim/doit/pro/activity/NoticeActivity$ListAdapter;

    invoke-static {v4}, Lim/doit/pro/activity/NoticeActivity$ListAdapter;->access$2(Lim/doit/pro/activity/NoticeActivity$ListAdapter;)Lim/doit/pro/activity/NoticeActivity;

    move-result-object v4

    invoke-static {v4}, Lim/doit/pro/activity/NoticeActivity;->access$4(Lim/doit/pro/activity/NoticeActivity;)Lim/doit/pro/activity/NoticeActivity$ListAdapter;

    move-result-object v4

    invoke-virtual {v4, v1}, Lim/doit/pro/activity/NoticeActivity$ListAdapter;->getItem(I)Lim/doit/pro/activity/NoticeActivity$NoticeVo;

    move-result-object v3

    .line 848
    .local v3, "vo":Lim/doit/pro/activity/NoticeActivity$NoticeVo;
    if-nez v3, :cond_1

    .line 860
    :cond_0
    :goto_0
    return-void

    .line 851
    :cond_1
    iget-object v0, v3, Lim/doit/pro/activity/NoticeActivity$NoticeVo;->notice:Lim/doit/pro/model/Notice;

    .line 852
    .local v0, "notice":Lim/doit/pro/model/Notice;
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v4

    iget-object v4, v4, Lim/doit/pro/db/Persist;->projectDao:Lim/doit/pro/db/persist/ProjectDao;

    .line 853
    invoke-virtual {v0}, Lim/doit/pro/model/Notice;->getTargetId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lim/doit/pro/db/persist/ProjectDao;->findByUUID(Ljava/lang/String;)Lim/doit/pro/model/BaseEntity;

    move-result-object v2

    check-cast v2, Lim/doit/pro/model/Project;

    .line 854
    .local v2, "project":Lim/doit/pro/model/Project;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lim/doit/pro/model/Project;->isDeleted()Z

    move-result v4

    if-nez v4, :cond_0

    .line 857
    invoke-static {v2}, Lim/doit/pro/utils/ProjectUtils;->activeProject(Lim/doit/pro/model/Project;)V

    .line 858
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v4

    iget-object v4, v4, Lim/doit/pro/db/Persist;->noticeDao:Lim/doit/pro/db/persist/NoticeDao;

    invoke-virtual {v4, v0}, Lim/doit/pro/db/persist/NoticeDao;->delete(Lim/doit/pro/model/Notice;)V

    .line 859
    iget-object v4, p0, Lim/doit/pro/activity/NoticeActivity$ListAdapter$OnActivateProjectClick;->this$1:Lim/doit/pro/activity/NoticeActivity$ListAdapter;

    invoke-static {v4}, Lim/doit/pro/activity/NoticeActivity$ListAdapter;->access$2(Lim/doit/pro/activity/NoticeActivity$ListAdapter;)Lim/doit/pro/activity/NoticeActivity;

    move-result-object v4

    invoke-static {v4}, Lim/doit/pro/activity/NoticeActivity;->access$8(Lim/doit/pro/activity/NoticeActivity;)V

    goto :goto_0
.end method
