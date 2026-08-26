.class Lim/doit/pro/activity/NoticeActivity$ListAdapter$OnViewClick;
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
    name = "OnViewClick"
.end annotation


# instance fields
.field final synthetic this$1:Lim/doit/pro/activity/NoticeActivity$ListAdapter;


# direct methods
.method private constructor <init>(Lim/doit/pro/activity/NoticeActivity$ListAdapter;)V
    .locals 0

    .prologue
    .line 812
    iput-object p1, p0, Lim/doit/pro/activity/NoticeActivity$ListAdapter$OnViewClick;->this$1:Lim/doit/pro/activity/NoticeActivity$ListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lim/doit/pro/activity/NoticeActivity$ListAdapter;Lim/doit/pro/activity/NoticeActivity$ListAdapter$OnViewClick;)V
    .locals 0

    .prologue
    .line 812
    invoke-direct {p0, p1}, Lim/doit/pro/activity/NoticeActivity$ListAdapter$OnViewClick;-><init>(Lim/doit/pro/activity/NoticeActivity$ListAdapter;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/high16 v9, 0x10000000

    .line 816
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 817
    .local v3, "position":I
    iget-object v6, p0, Lim/doit/pro/activity/NoticeActivity$ListAdapter$OnViewClick;->this$1:Lim/doit/pro/activity/NoticeActivity$ListAdapter;

    invoke-static {v6}, Lim/doit/pro/activity/NoticeActivity$ListAdapter;->access$2(Lim/doit/pro/activity/NoticeActivity$ListAdapter;)Lim/doit/pro/activity/NoticeActivity;

    move-result-object v6

    invoke-static {v6}, Lim/doit/pro/activity/NoticeActivity;->access$1(Lim/doit/pro/activity/NoticeActivity;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lim/doit/pro/activity/NoticeActivity$NoticeVo;

    .line 818
    .local v2, "noticeVo":Lim/doit/pro/activity/NoticeActivity$NoticeVo;
    iget-object v1, v2, Lim/doit/pro/activity/NoticeActivity$NoticeVo;->notice:Lim/doit/pro/model/Notice;

    .line 819
    .local v1, "notice":Lim/doit/pro/model/Notice;
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v6

    iget-object v6, v6, Lim/doit/pro/db/Persist;->taskDao:Lim/doit/pro/db/persist/TaskDao;

    .line 820
    invoke-virtual {v1}, Lim/doit/pro/model/Notice;->getTargetId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1}, Lim/doit/pro/model/Notice;->getRepeatNo()Ljava/lang/String;

    move-result-object v8

    .line 819
    invoke-virtual {v6, v7, v8}, Lim/doit/pro/db/persist/TaskDao;->findByUUIDAndRepeatNo(Ljava/lang/String;Ljava/lang/String;)Lim/doit/pro/model/Task;

    move-result-object v5

    .line 821
    .local v5, "task":Lim/doit/pro/model/Task;
    if-eqz v5, :cond_1

    .line 822
    new-instance v0, Landroid/content/Intent;

    iget-object v6, p0, Lim/doit/pro/activity/NoticeActivity$ListAdapter$OnViewClick;->this$1:Lim/doit/pro/activity/NoticeActivity$ListAdapter;

    invoke-static {v6}, Lim/doit/pro/activity/NoticeActivity$ListAdapter;->access$2(Lim/doit/pro/activity/NoticeActivity$ListAdapter;)Lim/doit/pro/activity/NoticeActivity;

    move-result-object v6

    .line 823
    const-class v7, Lim/doit/pro/activity/TaskDetailActivity;

    .line 822
    invoke-direct {v0, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 824
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 825
    const-string v6, "task"

    invoke-virtual {v0, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 826
    iget-object v6, p0, Lim/doit/pro/activity/NoticeActivity$ListAdapter$OnViewClick;->this$1:Lim/doit/pro/activity/NoticeActivity$ListAdapter;

    invoke-static {v6}, Lim/doit/pro/activity/NoticeActivity$ListAdapter;->access$2(Lim/doit/pro/activity/NoticeActivity$ListAdapter;)Lim/doit/pro/activity/NoticeActivity;

    move-result-object v6

    invoke-virtual {v6, v0}, Lim/doit/pro/activity/NoticeActivity;->startActivity(Landroid/content/Intent;)V

    .line 838
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 828
    :cond_1
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v6

    iget-object v6, v6, Lim/doit/pro/db/Persist;->projectDao:Lim/doit/pro/db/persist/ProjectDao;

    .line 829
    invoke-virtual {v1}, Lim/doit/pro/model/Notice;->getTargetId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lim/doit/pro/db/persist/ProjectDao;->findByUUID(Ljava/lang/String;)Lim/doit/pro/model/BaseEntity;

    move-result-object v4

    check-cast v4, Lim/doit/pro/model/Project;

    .line 830
    .local v4, "project":Lim/doit/pro/model/Project;
    if-eqz v4, :cond_0

    .line 831
    new-instance v0, Landroid/content/Intent;

    iget-object v6, p0, Lim/doit/pro/activity/NoticeActivity$ListAdapter$OnViewClick;->this$1:Lim/doit/pro/activity/NoticeActivity$ListAdapter;

    invoke-static {v6}, Lim/doit/pro/activity/NoticeActivity$ListAdapter;->access$2(Lim/doit/pro/activity/NoticeActivity$ListAdapter;)Lim/doit/pro/activity/NoticeActivity;

    move-result-object v6

    .line 832
    const-class v7, Lim/doit/pro/activity/ProjectDetailActivity;

    .line 831
    invoke-direct {v0, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 833
    .restart local v0    # "intent":Landroid/content/Intent;
    invoke-virtual {v0, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 834
    const-string v6, "project"

    invoke-virtual {v0, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 835
    iget-object v6, p0, Lim/doit/pro/activity/NoticeActivity$ListAdapter$OnViewClick;->this$1:Lim/doit/pro/activity/NoticeActivity$ListAdapter;

    invoke-static {v6}, Lim/doit/pro/activity/NoticeActivity$ListAdapter;->access$2(Lim/doit/pro/activity/NoticeActivity$ListAdapter;)Lim/doit/pro/activity/NoticeActivity;

    move-result-object v6

    invoke-virtual {v6, v0}, Lim/doit/pro/activity/NoticeActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
