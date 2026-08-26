.class Lim/doit/pro/activity/NoticeActivity$ListAdapter;
.super Landroid/widget/BaseAdapter;
.source "NoticeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/activity/NoticeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lim/doit/pro/activity/NoticeActivity$ListAdapter$ActivateByTaskViewHolder;,
        Lim/doit/pro/activity/NoticeActivity$ListAdapter$AutoActivateProjectViewHolder;,
        Lim/doit/pro/activity/NoticeActivity$ListAdapter$InviteViewHolder;,
        Lim/doit/pro/activity/NoticeActivity$ListAdapter$ItemWrapClick;,
        Lim/doit/pro/activity/NoticeActivity$ListAdapter$NormalViewHolder;,
        Lim/doit/pro/activity/NoticeActivity$ListAdapter$NormalViewHolderWithBtn;,
        Lim/doit/pro/activity/NoticeActivity$ListAdapter$OnActivateProjectClick;,
        Lim/doit/pro/activity/NoticeActivity$ListAdapter$OnAgreeInviteClick;,
        Lim/doit/pro/activity/NoticeActivity$ListAdapter$OnRejectInviteClick;,
        Lim/doit/pro/activity/NoticeActivity$ListAdapter$OnViewClick;,
        Lim/doit/pro/activity/NoticeActivity$ListAdapter$TaskViewHolder;,
        Lim/doit/pro/activity/NoticeActivity$ListAdapter$ViewHolder;
    }
.end annotation


# static fields
.field private static final ACCEPT:I = 0x6

.field private static final ACTIVATE_BY_TASK:I = 0xa

.field private static final AD:I = 0x9

.field private static final ALL_RECEIVER_COMPLETED:I = 0x2

.field private static final AUTO_ACTIVATE_PROJECT:I = 0xd

.field private static final FORWARD:I = 0x0

.field private static final INVITE:I = 0x5

.field private static final NEW_COMMENT:I = 0xc

.field private static final RECEIVER_COMPLETED:I = 0x1

.field private static final REJECT:I = 0x7

.field private static final REMINDER:I = 0x4

.field private static final SENDER_COMPLETED:I = 0xb

.field private static final SENDER_DELETED:I = 0x3

.field private static final SYSTEM:I = 0x8


# instance fields
.field final synthetic this$0:Lim/doit/pro/activity/NoticeActivity;


# direct methods
.method private constructor <init>(Lim/doit/pro/activity/NoticeActivity;)V
    .locals 0

    .prologue
    .line 390
    iput-object p1, p0, Lim/doit/pro/activity/NoticeActivity$ListAdapter;->this$0:Lim/doit/pro/activity/NoticeActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lim/doit/pro/activity/NoticeActivity;Lim/doit/pro/activity/NoticeActivity$ListAdapter;)V
    .locals 0

    .prologue
    .line 390
    invoke-direct {p0, p1}, Lim/doit/pro/activity/NoticeActivity$ListAdapter;-><init>(Lim/doit/pro/activity/NoticeActivity;)V

    return-void
.end method

.method static synthetic access$2(Lim/doit/pro/activity/NoticeActivity$ListAdapter;)Lim/doit/pro/activity/NoticeActivity;
    .locals 1

    .prologue
    .line 390
    iget-object v0, p0, Lim/doit/pro/activity/NoticeActivity$ListAdapter;->this$0:Lim/doit/pro/activity/NoticeActivity;

    return-object v0
.end method

.method private buildAboutTaskView()Lim/doit/pro/activity/NoticeActivity$ListAdapter$ViewHolder;
    .locals 2

    .prologue
    .line 621
    new-instance v0, Lim/doit/pro/activity/NoticeActivity$ListAdapter$TaskViewHolder;

    iget-object v1, p0, Lim/doit/pro/activity/NoticeActivity$ListAdapter;->this$0:Lim/doit/pro/activity/NoticeActivity;

    invoke-direct {v0, p0, v1}, Lim/doit/pro/activity/NoticeActivity$ListAdapter$TaskViewHolder;-><init>(Lim/doit/pro/activity/NoticeActivity$ListAdapter;Landroid/content/Context;)V

    return-object v0
.end method

.method private buildActivateByTaskView()Lim/doit/pro/activity/NoticeActivity$ListAdapter$ViewHolder;
    .locals 2

    .prologue
    .line 633
    new-instance v0, Lim/doit/pro/activity/NoticeActivity$ListAdapter$ActivateByTaskViewHolder;

    iget-object v1, p0, Lim/doit/pro/activity/NoticeActivity$ListAdapter;->this$0:Lim/doit/pro/activity/NoticeActivity;

    invoke-direct {v0, p0, v1}, Lim/doit/pro/activity/NoticeActivity$ListAdapter$ActivateByTaskViewHolder;-><init>(Lim/doit/pro/activity/NoticeActivity$ListAdapter;Landroid/content/Context;)V

    return-object v0
.end method

.method private buildAutoActivateProjectView()Lim/doit/pro/activity/NoticeActivity$ListAdapter$ViewHolder;
    .locals 2

    .prologue
    .line 637
    new-instance v0, Lim/doit/pro/activity/NoticeActivity$ListAdapter$AutoActivateProjectViewHolder;

    iget-object v1, p0, Lim/doit/pro/activity/NoticeActivity$ListAdapter;->this$0:Lim/doit/pro/activity/NoticeActivity;

    invoke-direct {v0, p0, v1}, Lim/doit/pro/activity/NoticeActivity$ListAdapter$AutoActivateProjectViewHolder;-><init>(Lim/doit/pro/activity/NoticeActivity$ListAdapter;Landroid/content/Context;)V

    return-object v0
.end method

.method private buildCommentView()Lim/doit/pro/activity/NoticeActivity$ListAdapter$ViewHolder;
    .locals 2

    .prologue
    .line 625
    new-instance v0, Lim/doit/pro/activity/NoticeActivity$ListAdapter$NormalViewHolderWithBtn;

    iget-object v1, p0, Lim/doit/pro/activity/NoticeActivity$ListAdapter;->this$0:Lim/doit/pro/activity/NoticeActivity;

    invoke-direct {v0, p0, v1}, Lim/doit/pro/activity/NoticeActivity$ListAdapter$NormalViewHolderWithBtn;-><init>(Lim/doit/pro/activity/NoticeActivity$ListAdapter;Landroid/content/Context;)V

    return-object v0
.end method

.method private buildInviteView()Lim/doit/pro/activity/NoticeActivity$ListAdapter$ViewHolder;
    .locals 2

    .prologue
    .line 629
    new-instance v0, Lim/doit/pro/activity/NoticeActivity$ListAdapter$InviteViewHolder;

    iget-object v1, p0, Lim/doit/pro/activity/NoticeActivity$ListAdapter;->this$0:Lim/doit/pro/activity/NoticeActivity;

    invoke-direct {v0, p0, v1}, Lim/doit/pro/activity/NoticeActivity$ListAdapter$InviteViewHolder;-><init>(Lim/doit/pro/activity/NoticeActivity$ListAdapter;Landroid/content/Context;)V

    return-object v0
.end method

.method private buildNormalViewHolder()Lim/doit/pro/activity/NoticeActivity$ListAdapter$ViewHolder;
    .locals 2

    .prologue
    .line 641
    new-instance v0, Lim/doit/pro/activity/NoticeActivity$ListAdapter$NormalViewHolder;

    iget-object v1, p0, Lim/doit/pro/activity/NoticeActivity$ListAdapter;->this$0:Lim/doit/pro/activity/NoticeActivity;

    invoke-direct {v0, p0, v1}, Lim/doit/pro/activity/NoticeActivity$ListAdapter$NormalViewHolder;-><init>(Lim/doit/pro/activity/NoticeActivity$ListAdapter;Landroid/content/Context;)V

    return-object v0
.end method

.method private setActivateProjectBtnContent(Lim/doit/pro/activity/NoticeActivity$ListAdapter$NormalViewHolderWithBtn;ILim/doit/pro/activity/NoticeActivity$NoticeVo;)V
    .locals 5
    .param p1, "viewHolder"    # Lim/doit/pro/activity/NoticeActivity$ListAdapter$NormalViewHolderWithBtn;
    .param p2, "position"    # I
    .param p3, "noticeVo"    # Lim/doit/pro/activity/NoticeActivity$NoticeVo;

    .prologue
    .line 554
    iget-object v0, p3, Lim/doit/pro/activity/NoticeActivity$NoticeVo;->notice:Lim/doit/pro/model/Notice;

    .line 555
    .local v0, "notice":Lim/doit/pro/model/Notice;
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v2

    iget-object v2, v2, Lim/doit/pro/db/Persist;->projectDao:Lim/doit/pro/db/persist/ProjectDao;

    .line 556
    invoke-virtual {v0}, Lim/doit/pro/model/Notice;->getTargetId()Ljava/lang/String;

    move-result-object v3

    .line 555
    invoke-virtual {v2, v3}, Lim/doit/pro/db/persist/ProjectDao;->findByUUID(Ljava/lang/String;)Lim/doit/pro/model/BaseEntity;

    move-result-object v1

    check-cast v1, Lim/doit/pro/model/Project;

    .line 557
    .local v1, "project":Lim/doit/pro/model/Project;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lim/doit/pro/model/Project;->isDeleted()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lim/doit/pro/model/Project;->isArchived()Z

    move-result v2

    if-nez v2, :cond_0

    .line 558
    invoke-virtual {v1}, Lim/doit/pro/model/Project;->isTrashed()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lim/doit/pro/model/Project;->isActive()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 559
    :cond_0
    iget-object v2, p1, Lim/doit/pro/activity/NoticeActivity$ListAdapter$NormalViewHolderWithBtn;->operateBtn:Landroid/widget/Button;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 565
    :goto_0
    return-void

    .line 562
    :cond_1
    iget-object v2, p1, Lim/doit/pro/activity/NoticeActivity$ListAdapter$NormalViewHolderWithBtn;->operateBtn:Landroid/widget/Button;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 563
    iget-object v2, p1, Lim/doit/pro/activity/NoticeActivity$ListAdapter$NormalViewHolderWithBtn;->operateBtn:Landroid/widget/Button;

    .line 564
    new-instance v3, Lim/doit/pro/activity/NoticeActivity$ListAdapter$OnActivateProjectClick;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lim/doit/pro/activity/NoticeActivity$ListAdapter$OnActivateProjectClick;-><init>(Lim/doit/pro/activity/NoticeActivity$ListAdapter;Lim/doit/pro/activity/NoticeActivity$ListAdapter$OnActivateProjectClick;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private setActivateViewContent(Lim/doit/pro/activity/NoticeActivity$ListAdapter$ViewHolder;ILim/doit/pro/activity/NoticeActivity$NoticeVo;)V
    .locals 1
    .param p1, "holder"    # Lim/doit/pro/activity/NoticeActivity$ListAdapter$ViewHolder;
    .param p2, "position"    # I
    .param p3, "noticeVo"    # Lim/doit/pro/activity/NoticeActivity$NoticeVo;

    .prologue
    .line 545
    move-object v0, p1

    check-cast v0, Lim/doit/pro/activity/NoticeActivity$ListAdapter$ActivateByTaskViewHolder;

    .line 546
    .local v0, "viewHolder":Lim/doit/pro/activity/NoticeActivity$ListAdapter$ActivateByTaskViewHolder;
    invoke-direct {p0, p2, v0, p3}, Lim/doit/pro/activity/NoticeActivity$ListAdapter;->setNormalViewContent(ILim/doit/pro/activity/NoticeActivity$ListAdapter$ViewHolder;Lim/doit/pro/activity/NoticeActivity$NoticeVo;)V

    .line 547
    invoke-direct {p0, p2, v0, p3}, Lim/doit/pro/activity/NoticeActivity$ListAdapter;->setBodyContentViewWithBtn(ILim/doit/pro/activity/NoticeActivity$ListAdapter$NormalViewHolderWithBtn;Lim/doit/pro/activity/NoticeActivity$NoticeVo;)V

    .line 548
    invoke-direct {p0, v0, p2, p3}, Lim/doit/pro/activity/NoticeActivity$ListAdapter;->setActivateProjectBtnContent(Lim/doit/pro/activity/NoticeActivity$ListAdapter$NormalViewHolderWithBtn;ILim/doit/pro/activity/NoticeActivity$NoticeVo;)V

    .line 549
    return-void
.end method

.method private setAutoActivateViewContent(Lim/doit/pro/activity/NoticeActivity$ListAdapter$ViewHolder;ILim/doit/pro/activity/NoticeActivity$NoticeVo;)V
    .locals 1
    .param p1, "holder"    # Lim/doit/pro/activity/NoticeActivity$ListAdapter$ViewHolder;
    .param p2, "position"    # I
    .param p3, "noticeVo"    # Lim/doit/pro/activity/NoticeActivity$NoticeVo;

    .prologue
    .line 569
    move-object v0, p1

    check-cast v0, Lim/doit/pro/activity/NoticeActivity$ListAdapter$AutoActivateProjectViewHolder;

    .line 570
    .local v0, "viewHolder":Lim/doit/pro/activity/NoticeActivity$ListAdapter$AutoActivateProjectViewHolder;
    invoke-direct {p0, p2, v0, p3}, Lim/doit/pro/activity/NoticeActivity$ListAdapter;->setNormalViewContent(ILim/doit/pro/activity/NoticeActivity$ListAdapter$ViewHolder;Lim/doit/pro/activity/NoticeActivity$NoticeVo;)V

    .line 571
    invoke-direct {p0, p2, v0, p3}, Lim/doit/pro/activity/NoticeActivity$ListAdapter;->setBodyContentViewWithBtn(ILim/doit/pro/activity/NoticeActivity$ListAdapter$NormalViewHolderWithBtn;Lim/doit/pro/activity/NoticeActivity$NoticeVo;)V

    .line 572
    return-void
.end method

.method private setBodyContentViewWithBtn(ILim/doit/pro/activity/NoticeActivity$ListAdapter$NormalViewHolderWithBtn;Lim/doit/pro/activity/NoticeActivity$NoticeVo;)V
    .locals 5
    .param p1, "position"    # I
    .param p2, "holder"    # Lim/doit/pro/activity/NoticeActivity$ListAdapter$NormalViewHolderWithBtn;
    .param p3, "noticeVo"    # Lim/doit/pro/activity/NoticeActivity$NoticeVo;

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 598
    iget-object v0, p3, Lim/doit/pro/activity/NoticeActivity$NoticeVo;->bodyTitle:Ljava/lang/String;

    invoke-static {v0}, Lim/doit/pro/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 599
    iget-object v0, p2, Lim/doit/pro/activity/NoticeActivity$ListAdapter$NormalViewHolderWithBtn;->bodyTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 604
    :goto_0
    iget-object v0, p3, Lim/doit/pro/activity/NoticeActivity$NoticeVo;->bodyContent:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 605
    iget-object v0, p2, Lim/doit/pro/activity/NoticeActivity$ListAdapter$NormalViewHolderWithBtn;->bodyView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 610
    :goto_1
    iget-object v0, p0, Lim/doit/pro/activity/NoticeActivity$ListAdapter;->this$0:Lim/doit/pro/activity/NoticeActivity;

    iget-object v1, p3, Lim/doit/pro/activity/NoticeActivity$NoticeVo;->notice:Lim/doit/pro/model/Notice;

    invoke-virtual {v1}, Lim/doit/pro/model/Notice;->getTargetId()Ljava/lang/String;

    move-result-object v1

    .line 611
    iget-object v2, p3, Lim/doit/pro/activity/NoticeActivity$NoticeVo;->notice:Lim/doit/pro/model/Notice;

    invoke-virtual {v2}, Lim/doit/pro/model/Notice;->getRepeatNo()Ljava/lang/String;

    move-result-object v2

    .line 610
    invoke-static {v0, v1, v2}, Lim/doit/pro/activity/NoticeActivity;->access$9(Lim/doit/pro/activity/NoticeActivity;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 611
    if-eqz v0, :cond_2

    .line 612
    iget-object v0, p2, Lim/doit/pro/activity/NoticeActivity$ListAdapter$NormalViewHolderWithBtn;->operateBtn:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 613
    iget-object v0, p2, Lim/doit/pro/activity/NoticeActivity$ListAdapter$NormalViewHolderWithBtn;->operateBtn:Landroid/widget/Button;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 614
    iget-object v0, p2, Lim/doit/pro/activity/NoticeActivity$ListAdapter$NormalViewHolderWithBtn;->operateBtn:Landroid/widget/Button;

    new-instance v1, Lim/doit/pro/activity/NoticeActivity$ListAdapter$OnViewClick;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lim/doit/pro/activity/NoticeActivity$ListAdapter$OnViewClick;-><init>(Lim/doit/pro/activity/NoticeActivity$ListAdapter;Lim/doit/pro/activity/NoticeActivity$ListAdapter$OnViewClick;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 618
    :goto_2
    return-void

    .line 601
    :cond_0
    iget-object v0, p2, Lim/doit/pro/activity/NoticeActivity$ListAdapter$NormalViewHolderWithBtn;->bodyTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 602
    iget-object v0, p2, Lim/doit/pro/activity/NoticeActivity$ListAdapter$NormalViewHolderWithBtn;->bodyTitleView:Landroid/widget/TextView;

    iget-object v1, p3, Lim/doit/pro/activity/NoticeActivity$NoticeVo;->bodyTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 607
    :cond_1
    iget-object v0, p2, Lim/doit/pro/activity/NoticeActivity$ListAdapter$NormalViewHolderWithBtn;->bodyView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 608
    iget-object v0, p2, Lim/doit/pro/activity/NoticeActivity$ListAdapter$NormalViewHolderWithBtn;->bodyView:Landroid/widget/TextView;

    iget-object v1, p3, Lim/doit/pro/activity/NoticeActivity$NoticeVo;->bodyContent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 616
    :cond_2
    iget-object v0, p2, Lim/doit/pro/activity/NoticeActivity$ListAdapter$NormalViewHolderWithBtn;->operateBtn:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_2
.end method

.method private setInviteViewContent(Lim/doit/pro/activity/NoticeActivity$ListAdapter$ViewHolder;ILim/doit/pro/activity/NoticeActivity$NoticeVo;)V
    .locals 6
    .param p1, "holder"    # Lim/doit/pro/activity/NoticeActivity$ListAdapter$ViewHolder;
    .param p2, "position"    # I
    .param p3, "noticeVo"    # Lim/doit/pro/activity/NoticeActivity$NoticeVo;

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 525
    move-object v0, p1

    check-cast v0, Lim/doit/pro/activity/NoticeActivity$ListAdapter$InviteViewHolder;

    .line 526
    .local v0, "viewHolder":Lim/doit/pro/activity/NoticeActivity$ListAdapter$InviteViewHolder;
    invoke-direct {p0, p2, v0, p3}, Lim/doit/pro/activity/NoticeActivity$ListAdapter;->setNormalViewContent(ILim/doit/pro/activity/NoticeActivity$ListAdapter$ViewHolder;Lim/doit/pro/activity/NoticeActivity$NoticeVo;)V

    .line 527
    invoke-static {v0}, Lim/doit/pro/activity/NoticeActivity$ListAdapter$InviteViewHolder;->access$0(Lim/doit/pro/activity/NoticeActivity$ListAdapter$InviteViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p3, Lim/doit/pro/activity/NoticeActivity$NoticeVo;->bodyContent:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 528
    iget-object v1, p3, Lim/doit/pro/activity/NoticeActivity$NoticeVo;->notice:Lim/doit/pro/model/Notice;

    invoke-virtual {v1}, Lim/doit/pro/model/Notice;->getResult()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lim/doit/pro/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 529
    invoke-static {v0}, Lim/doit/pro/activity/NoticeActivity$ListAdapter$InviteViewHolder;->access$1(Lim/doit/pro/activity/NoticeActivity$ListAdapter$InviteViewHolder;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 530
    invoke-static {v0}, Lim/doit/pro/activity/NoticeActivity$ListAdapter$InviteViewHolder;->access$2(Lim/doit/pro/activity/NoticeActivity$ListAdapter$InviteViewHolder;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 531
    invoke-static {v0}, Lim/doit/pro/activity/NoticeActivity$ListAdapter$InviteViewHolder;->access$1(Lim/doit/pro/activity/NoticeActivity$ListAdapter$InviteViewHolder;)Landroid/widget/Button;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 532
    invoke-static {v0}, Lim/doit/pro/activity/NoticeActivity$ListAdapter$InviteViewHolder;->access$1(Lim/doit/pro/activity/NoticeActivity$ListAdapter$InviteViewHolder;)Landroid/widget/Button;

    move-result-object v1

    .line 533
    new-instance v2, Lim/doit/pro/activity/NoticeActivity$ListAdapter$OnRejectInviteClick;

    invoke-direct {v2, p0, v5}, Lim/doit/pro/activity/NoticeActivity$ListAdapter$OnRejectInviteClick;-><init>(Lim/doit/pro/activity/NoticeActivity$ListAdapter;Lim/doit/pro/activity/NoticeActivity$ListAdapter$OnRejectInviteClick;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 534
    invoke-static {v0}, Lim/doit/pro/activity/NoticeActivity$ListAdapter$InviteViewHolder;->access$2(Lim/doit/pro/activity/NoticeActivity$ListAdapter$InviteViewHolder;)Landroid/widget/Button;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 535
    invoke-static {v0}, Lim/doit/pro/activity/NoticeActivity$ListAdapter$InviteViewHolder;->access$2(Lim/doit/pro/activity/NoticeActivity$ListAdapter$InviteViewHolder;)Landroid/widget/Button;

    move-result-object v1

    .line 536
    new-instance v2, Lim/doit/pro/activity/NoticeActivity$ListAdapter$OnAgreeInviteClick;

    invoke-direct {v2, p0, v5}, Lim/doit/pro/activity/NoticeActivity$ListAdapter$OnAgreeInviteClick;-><init>(Lim/doit/pro/activity/NoticeActivity$ListAdapter;Lim/doit/pro/activity/NoticeActivity$ListAdapter$OnAgreeInviteClick;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 541
    :goto_0
    return-void

    .line 538
    :cond_0
    invoke-static {v0}, Lim/doit/pro/activity/NoticeActivity$ListAdapter$InviteViewHolder;->access$1(Lim/doit/pro/activity/NoticeActivity$ListAdapter$InviteViewHolder;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 539
    invoke-static {v0}, Lim/doit/pro/activity/NoticeActivity$ListAdapter$InviteViewHolder;->access$2(Lim/doit/pro/activity/NoticeActivity$ListAdapter$InviteViewHolder;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method private setNormalViewContent(ILim/doit/pro/activity/NoticeActivity$ListAdapter$ViewHolder;Lim/doit/pro/activity/NoticeActivity$NoticeVo;)V
    .locals 4
    .param p1, "position"    # I
    .param p2, "holder"    # Lim/doit/pro/activity/NoticeActivity$ListAdapter$ViewHolder;
    .param p3, "noticeVo"    # Lim/doit/pro/activity/NoticeActivity$NoticeVo;

    .prologue
    const/16 v1, 0x8

    const/4 v0, 0x0

    .line 583
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v2}, Lim/doit/pro/activity/NoticeActivity$ListAdapter$ViewHolder;->setTag(Ljava/lang/Object;)V

    .line 584
    iget-object v2, p2, Lim/doit/pro/activity/NoticeActivity$ListAdapter$ViewHolder;->timeView:Landroid/widget/TextView;

    iget-object v3, p3, Lim/doit/pro/activity/NoticeActivity$NoticeVo;->notice:Lim/doit/pro/model/Notice;

    .line 585
    invoke-virtual {v3}, Lim/doit/pro/model/Notice;->getCreated()Ljava/util/Calendar;

    move-result-object v3

    .line 584
    invoke-static {v3}, Lim/doit/pro/activity/utils/ViewUtils;->formatTime(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 586
    iget-object v2, p3, Lim/doit/pro/activity/NoticeActivity$NoticeVo;->title:Ljava/lang/String;

    invoke-static {v2}, Lim/doit/pro/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 587
    iget-object v2, p2, Lim/doit/pro/activity/NoticeActivity$ListAdapter$ViewHolder;->titleView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 592
    :goto_0
    iget-object v2, p2, Lim/doit/pro/activity/NoticeActivity$ListAdapter$ViewHolder;->bodyWrap:Landroid/widget/LinearLayout;

    iget-boolean v3, p3, Lim/doit/pro/activity/NoticeActivity$NoticeVo;->isShow:Z

    if-eqz v3, :cond_1

    :goto_1
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 594
    return-void

    .line 589
    :cond_0
    iget-object v2, p2, Lim/doit/pro/activity/NoticeActivity$ListAdapter$ViewHolder;->titleView:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 590
    iget-object v2, p2, Lim/doit/pro/activity/NoticeActivity$ListAdapter$ViewHolder;->titleView:Landroid/widget/TextView;

    iget-object v3, p3, Lim/doit/pro/activity/NoticeActivity$NoticeVo;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    move v0, v1

    .line 593
    goto :goto_1
.end method

.method private setNormalViewContent(Lim/doit/pro/activity/NoticeActivity$ListAdapter$ViewHolder;ILim/doit/pro/activity/NoticeActivity$NoticeVo;)V
    .locals 1
    .param p1, "holder"    # Lim/doit/pro/activity/NoticeActivity$ListAdapter$ViewHolder;
    .param p2, "position"    # I
    .param p3, "noticeVo"    # Lim/doit/pro/activity/NoticeActivity$NoticeVo;

    .prologue
    .line 576
    move-object v0, p1

    check-cast v0, Lim/doit/pro/activity/NoticeActivity$ListAdapter$NormalViewHolderWithBtn;

    .line 577
    .local v0, "viewHolder":Lim/doit/pro/activity/NoticeActivity$ListAdapter$NormalViewHolderWithBtn;
    invoke-direct {p0, p2, v0, p3}, Lim/doit/pro/activity/NoticeActivity$ListAdapter;->setNormalViewContent(ILim/doit/pro/activity/NoticeActivity$ListAdapter$ViewHolder;Lim/doit/pro/activity/NoticeActivity$NoticeVo;)V

    .line 578
    invoke-direct {p0, p2, v0, p3}, Lim/doit/pro/activity/NoticeActivity$ListAdapter;->setBodyContentViewWithBtn(ILim/doit/pro/activity/NoticeActivity$ListAdapter$NormalViewHolderWithBtn;Lim/doit/pro/activity/NoticeActivity$NoticeVo;)V

    .line 579
    return-void
.end method

.method private setTaskViewContent(Lim/doit/pro/activity/NoticeActivity$ListAdapter$ViewHolder;ILim/doit/pro/activity/NoticeActivity$NoticeVo;)V
    .locals 1
    .param p1, "holder"    # Lim/doit/pro/activity/NoticeActivity$ListAdapter$ViewHolder;
    .param p2, "position"    # I
    .param p3, "noticeVo"    # Lim/doit/pro/activity/NoticeActivity$NoticeVo;

    .prologue
    .line 518
    move-object v0, p1

    check-cast v0, Lim/doit/pro/activity/NoticeActivity$ListAdapter$TaskViewHolder;

    .line 519
    .local v0, "viewHolder":Lim/doit/pro/activity/NoticeActivity$ListAdapter$TaskViewHolder;
    invoke-direct {p0, p2, v0, p3}, Lim/doit/pro/activity/NoticeActivity$ListAdapter;->setNormalViewContent(ILim/doit/pro/activity/NoticeActivity$ListAdapter$ViewHolder;Lim/doit/pro/activity/NoticeActivity$NoticeVo;)V

    .line 520
    invoke-direct {p0, p2, v0, p3}, Lim/doit/pro/activity/NoticeActivity$ListAdapter;->setBodyContentViewWithBtn(ILim/doit/pro/activity/NoticeActivity$ListAdapter$NormalViewHolderWithBtn;Lim/doit/pro/activity/NoticeActivity$NoticeVo;)V

    .line 521
    return-void
.end method

.method private setViewContent(Lim/doit/pro/activity/NoticeActivity$ListAdapter$ViewHolder;ILim/doit/pro/activity/NoticeActivity$NoticeVo;)V
    .locals 1
    .param p1, "holder"    # Lim/doit/pro/activity/NoticeActivity$ListAdapter$ViewHolder;
    .param p2, "position"    # I
    .param p3, "noticeVo"    # Lim/doit/pro/activity/NoticeActivity$NoticeVo;

    .prologue
    .line 503
    instance-of v0, p1, Lim/doit/pro/activity/NoticeActivity$ListAdapter$TaskViewHolder;

    if-eqz v0, :cond_0

    .line 504
    invoke-direct {p0, p1, p2, p3}, Lim/doit/pro/activity/NoticeActivity$ListAdapter;->setTaskViewContent(Lim/doit/pro/activity/NoticeActivity$ListAdapter$ViewHolder;ILim/doit/pro/activity/NoticeActivity$NoticeVo;)V

    .line 514
    :goto_0
    return-void

    .line 505
    :cond_0
    instance-of v0, p1, Lim/doit/pro/activity/NoticeActivity$ListAdapter$InviteViewHolder;

    if-eqz v0, :cond_1

    .line 506
    invoke-direct {p0, p1, p2, p3}, Lim/doit/pro/activity/NoticeActivity$ListAdapter;->setInviteViewContent(Lim/doit/pro/activity/NoticeActivity$ListAdapter$ViewHolder;ILim/doit/pro/activity/NoticeActivity$NoticeVo;)V

    goto :goto_0

    .line 507
    :cond_1
    instance-of v0, p1, Lim/doit/pro/activity/NoticeActivity$ListAdapter$ActivateByTaskViewHolder;

    if-eqz v0, :cond_2

    .line 508
    invoke-direct {p0, p1, p2, p3}, Lim/doit/pro/activity/NoticeActivity$ListAdapter;->setActivateViewContent(Lim/doit/pro/activity/NoticeActivity$ListAdapter$ViewHolder;ILim/doit/pro/activity/NoticeActivity$NoticeVo;)V

    goto :goto_0

    .line 509
    :cond_2
    instance-of v0, p1, Lim/doit/pro/activity/NoticeActivity$ListAdapter$AutoActivateProjectViewHolder;

    if-eqz v0, :cond_3

    .line 510
    invoke-direct {p0, p1, p2, p3}, Lim/doit/pro/activity/NoticeActivity$ListAdapter;->setAutoActivateViewContent(Lim/doit/pro/activity/NoticeActivity$ListAdapter$ViewHolder;ILim/doit/pro/activity/NoticeActivity$NoticeVo;)V

    goto :goto_0

    .line 512
    :cond_3
    invoke-direct {p0, p1, p2, p3}, Lim/doit/pro/activity/NoticeActivity$ListAdapter;->setNormalViewContent(Lim/doit/pro/activity/NoticeActivity$ListAdapter$ViewHolder;ILim/doit/pro/activity/NoticeActivity$NoticeVo;)V

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 442
    iget-object v0, p0, Lim/doit/pro/activity/NoticeActivity$ListAdapter;->this$0:Lim/doit/pro/activity/NoticeActivity;

    invoke-static {v0}, Lim/doit/pro/activity/NoticeActivity;->access$1(Lim/doit/pro/activity/NoticeActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lim/doit/pro/utils/CollectionUtils;->isEmpty(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 443
    const/4 v0, 0x0

    .line 445
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lim/doit/pro/activity/NoticeActivity$ListAdapter;->this$0:Lim/doit/pro/activity/NoticeActivity;

    invoke-static {v0}, Lim/doit/pro/activity/NoticeActivity;->access$1(Lim/doit/pro/activity/NoticeActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Lim/doit/pro/activity/NoticeActivity$NoticeVo;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 450
    iget-object v0, p0, Lim/doit/pro/activity/NoticeActivity$ListAdapter;->this$0:Lim/doit/pro/activity/NoticeActivity;

    invoke-static {v0}, Lim/doit/pro/activity/NoticeActivity;->access$1(Lim/doit/pro/activity/NoticeActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lim/doit/pro/activity/NoticeActivity$NoticeVo;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lim/doit/pro/activity/NoticeActivity$ListAdapter;->getItem(I)Lim/doit/pro/activity/NoticeActivity$NoticeVo;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 455
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 405
    invoke-virtual {p0, p1}, Lim/doit/pro/activity/NoticeActivity$ListAdapter;->getItem(I)Lim/doit/pro/activity/NoticeActivity$NoticeVo;

    move-result-object v1

    .line 406
    .local v1, "noticeVo":Lim/doit/pro/activity/NoticeActivity$NoticeVo;
    iget-object v0, v1, Lim/doit/pro/activity/NoticeActivity$NoticeVo;->notice:Lim/doit/pro/model/Notice;

    .line 407
    .local v0, "notice":Lim/doit/pro/model/Notice;
    invoke-virtual {v0}, Lim/doit/pro/model/Notice;->getNoticeType()Lim/doit/pro/model/enums/NoticeType;

    move-result-object v2

    .line 408
    .local v2, "type":Lim/doit/pro/model/enums/NoticeType;
    sget-object v3, Lim/doit/pro/model/enums/NoticeType;->FORWARD:Lim/doit/pro/model/enums/NoticeType;

    invoke-virtual {v3, v2}, Lim/doit/pro/model/enums/NoticeType;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 409
    const/4 v3, 0x0

    .line 437
    :goto_0
    return v3

    .line 410
    :cond_0
    sget-object v3, Lim/doit/pro/model/enums/NoticeType;->RECEIVER_COMPLETED:Lim/doit/pro/model/enums/NoticeType;

    invoke-virtual {v3, v2}, Lim/doit/pro/model/enums/NoticeType;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 411
    const/4 v3, 0x1

    goto :goto_0

    .line 412
    :cond_1
    sget-object v3, Lim/doit/pro/model/enums/NoticeType;->ALL_RECEIVER_COMPLETED:Lim/doit/pro/model/enums/NoticeType;

    invoke-virtual {v3, v2}, Lim/doit/pro/model/enums/NoticeType;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 413
    const/4 v3, 0x2

    goto :goto_0

    .line 414
    :cond_2
    sget-object v3, Lim/doit/pro/model/enums/NoticeType;->SENDER_DELETED:Lim/doit/pro/model/enums/NoticeType;

    invoke-virtual {v3, v2}, Lim/doit/pro/model/enums/NoticeType;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 415
    const/4 v3, 0x3

    goto :goto_0

    .line 416
    :cond_3
    sget-object v3, Lim/doit/pro/model/enums/NoticeType;->SENDER_COMPLETED:Lim/doit/pro/model/enums/NoticeType;

    invoke-virtual {v3, v2}, Lim/doit/pro/model/enums/NoticeType;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 417
    const/16 v3, 0xb

    goto :goto_0

    .line 418
    :cond_4
    sget-object v3, Lim/doit/pro/model/enums/NoticeType;->REMINDER:Lim/doit/pro/model/enums/NoticeType;

    invoke-virtual {v3, v2}, Lim/doit/pro/model/enums/NoticeType;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 419
    const/4 v3, 0x4

    goto :goto_0

    .line 420
    :cond_5
    sget-object v3, Lim/doit/pro/model/enums/NoticeType;->INVITE:Lim/doit/pro/model/enums/NoticeType;

    invoke-virtual {v3, v2}, Lim/doit/pro/model/enums/NoticeType;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 421
    const/4 v3, 0x5

    goto :goto_0

    .line 422
    :cond_6
    sget-object v3, Lim/doit/pro/model/enums/NoticeType;->ACCEPT:Lim/doit/pro/model/enums/NoticeType;

    invoke-virtual {v3, v2}, Lim/doit/pro/model/enums/NoticeType;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 423
    const/4 v3, 0x6

    goto :goto_0

    .line 424
    :cond_7
    sget-object v3, Lim/doit/pro/model/enums/NoticeType;->REJECT:Lim/doit/pro/model/enums/NoticeType;

    invoke-virtual {v3, v2}, Lim/doit/pro/model/enums/NoticeType;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 425
    const/4 v3, 0x7

    goto :goto_0

    .line 426
    :cond_8
    sget-object v3, Lim/doit/pro/model/enums/NoticeType;->SYSTEM:Lim/doit/pro/model/enums/NoticeType;

    invoke-virtual {v3, v2}, Lim/doit/pro/model/enums/NoticeType;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 427
    const/16 v3, 0x8

    goto :goto_0

    .line 428
    :cond_9
    sget-object v3, Lim/doit/pro/model/enums/NoticeType;->AD:Lim/doit/pro/model/enums/NoticeType;

    invoke-virtual {v3, v2}, Lim/doit/pro/model/enums/NoticeType;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 429
    const/16 v3, 0x9

    goto :goto_0

    .line 430
    :cond_a
    sget-object v3, Lim/doit/pro/model/enums/NoticeType;->ACTIVATE_BY_TASK:Lim/doit/pro/model/enums/NoticeType;

    invoke-virtual {v3, v2}, Lim/doit/pro/model/enums/NoticeType;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 431
    const/16 v3, 0xa

    goto :goto_0

    .line 432
    :cond_b
    sget-object v3, Lim/doit/pro/model/enums/NoticeType;->NEW_COMMENT:Lim/doit/pro/model/enums/NoticeType;

    invoke-virtual {v3, v2}, Lim/doit/pro/model/enums/NoticeType;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 433
    const/16 v3, 0xc

    goto :goto_0

    .line 434
    :cond_c
    sget-object v3, Lim/doit/pro/model/enums/NoticeType;->AUTO_ACTIVATE_PROJECT:Lim/doit/pro/model/enums/NoticeType;

    invoke-virtual {v3, v2}, Lim/doit/pro/model/enums/NoticeType;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 435
    const/16 v3, 0xd

    goto/16 :goto_0

    .line 437
    :cond_d
    const/4 v3, -0x1

    goto/16 :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 460
    const/4 v0, 0x0

    .line 461
    .local v0, "holder":Lim/doit/pro/activity/NoticeActivity$ListAdapter$ViewHolder;
    if-nez p2, :cond_0

    .line 462
    invoke-virtual {p0, p1}, Lim/doit/pro/activity/NoticeActivity$ListAdapter;->getItemViewType(I)I

    move-result v2

    .line 463
    .local v2, "type":I
    packed-switch v2, :pswitch_data_0

    .line 484
    :pswitch_0
    invoke-direct {p0}, Lim/doit/pro/activity/NoticeActivity$ListAdapter;->buildNormalViewHolder()Lim/doit/pro/activity/NoticeActivity$ListAdapter$ViewHolder;

    move-result-object v0

    .line 490
    .end local v2    # "type":I
    :goto_0
    invoke-virtual {p0, p1}, Lim/doit/pro/activity/NoticeActivity$ListAdapter;->getItem(I)Lim/doit/pro/activity/NoticeActivity$NoticeVo;

    move-result-object v1

    .line 491
    .local v1, "noticeVo":Lim/doit/pro/activity/NoticeActivity$NoticeVo;
    invoke-direct {p0, v0, p1, v1}, Lim/doit/pro/activity/NoticeActivity$ListAdapter;->setViewContent(Lim/doit/pro/activity/NoticeActivity$ListAdapter$ViewHolder;ILim/doit/pro/activity/NoticeActivity$NoticeVo;)V

    .line 492
    iget-object v3, v1, Lim/doit/pro/activity/NoticeActivity$NoticeVo;->notice:Lim/doit/pro/model/Notice;

    invoke-virtual {v3}, Lim/doit/pro/model/Notice;->getRead()Ljava/util/Calendar;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 493
    iget-object v3, v0, Lim/doit/pro/activity/NoticeActivity$ListAdapter$ViewHolder;->titleView:Landroid/widget/TextView;

    .line 494
    const v4, 0x7f080076

    invoke-static {v4}, Lim/doit/pro/activity/utils/ViewUtils;->getColor(I)I

    move-result v4

    .line 493
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 498
    :goto_1
    return-object v0

    .line 469
    .end local v1    # "noticeVo":Lim/doit/pro/activity/NoticeActivity$NoticeVo;
    .restart local v2    # "type":I
    :pswitch_1
    invoke-direct {p0}, Lim/doit/pro/activity/NoticeActivity$ListAdapter;->buildAboutTaskView()Lim/doit/pro/activity/NoticeActivity$ListAdapter$ViewHolder;

    move-result-object v0

    .line 470
    goto :goto_0

    .line 472
    :pswitch_2
    invoke-direct {p0}, Lim/doit/pro/activity/NoticeActivity$ListAdapter;->buildCommentView()Lim/doit/pro/activity/NoticeActivity$ListAdapter$ViewHolder;

    move-result-object v0

    .line 473
    goto :goto_0

    .line 475
    :pswitch_3
    invoke-direct {p0}, Lim/doit/pro/activity/NoticeActivity$ListAdapter;->buildInviteView()Lim/doit/pro/activity/NoticeActivity$ListAdapter$ViewHolder;

    move-result-object v0

    .line 476
    goto :goto_0

    .line 478
    :pswitch_4
    invoke-direct {p0}, Lim/doit/pro/activity/NoticeActivity$ListAdapter;->buildActivateByTaskView()Lim/doit/pro/activity/NoticeActivity$ListAdapter$ViewHolder;

    move-result-object v0

    .line 479
    goto :goto_0

    .line 481
    :pswitch_5
    invoke-direct {p0}, Lim/doit/pro/activity/NoticeActivity$ListAdapter;->buildAutoActivateProjectView()Lim/doit/pro/activity/NoticeActivity$ListAdapter$ViewHolder;

    move-result-object v0

    .line 482
    goto :goto_0

    .end local v2    # "type":I
    :cond_0
    move-object v0, p2

    .line 488
    check-cast v0, Lim/doit/pro/activity/NoticeActivity$ListAdapter$ViewHolder;

    goto :goto_0

    .line 496
    .restart local v1    # "noticeVo":Lim/doit/pro/activity/NoticeActivity$NoticeVo;
    :cond_1
    iget-object v3, v0, Lim/doit/pro/activity/NoticeActivity$ListAdapter$ViewHolder;->titleView:Landroid/widget/TextView;

    const/high16 v4, -0x1000000

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 463
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_1
        :pswitch_2
        :pswitch_5
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 400
    invoke-static {}, Lim/doit/pro/model/enums/NoticeType;->values()[Lim/doit/pro/model/enums/NoticeType;

    move-result-object v0

    array-length v0, v0

    return v0
.end method
