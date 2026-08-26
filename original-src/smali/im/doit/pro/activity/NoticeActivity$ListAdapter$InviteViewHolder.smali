.class Lim/doit/pro/activity/NoticeActivity$ListAdapter$InviteViewHolder;
.super Lim/doit/pro/activity/NoticeActivity$ListAdapter$ViewHolder;
.source "NoticeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/activity/NoticeActivity$ListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InviteViewHolder"
.end annotation


# instance fields
.field private agreeBtn:Landroid/widget/Button;

.field private bodyView:Landroid/widget/TextView;

.field private bodyViewWrap:Landroid/widget/LinearLayout;

.field private rejectBtn:Landroid/widget/Button;

.field final synthetic this$1:Lim/doit/pro/activity/NoticeActivity$ListAdapter;


# direct methods
.method public constructor <init>(Lim/doit/pro/activity/NoticeActivity$ListAdapter;Landroid/content/Context;)V
    .locals 4
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 716
    iput-object p1, p0, Lim/doit/pro/activity/NoticeActivity$ListAdapter$InviteViewHolder;->this$1:Lim/doit/pro/activity/NoticeActivity$ListAdapter;

    .line 717
    invoke-direct {p0, p1, p2}, Lim/doit/pro/activity/NoticeActivity$ListAdapter$ViewHolder;-><init>(Lim/doit/pro/activity/NoticeActivity$ListAdapter;Landroid/content/Context;)V

    .line 718
    iget-object v1, p0, Lim/doit/pro/activity/NoticeActivity$ListAdapter$InviteViewHolder;->layoutInflater:Landroid/view/LayoutInflater;

    .line 719
    const v2, 0x7f030090

    const/4 v3, 0x0

    .line 718
    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lim/doit/pro/activity/NoticeActivity$ListAdapter$InviteViewHolder;->bodyViewWrap:Landroid/widget/LinearLayout;

    .line 720
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 721
    const/4 v1, -0x1

    const/4 v2, -0x2

    .line 720
    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 722
    .local v0, "params":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v1, p0, Lim/doit/pro/activity/NoticeActivity$ListAdapter$InviteViewHolder;->bodyViewWrap:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 723
    iget-object v1, p0, Lim/doit/pro/activity/NoticeActivity$ListAdapter$InviteViewHolder;->bodyViewWrap:Landroid/widget/LinearLayout;

    .line 724
    const v2, 0x7f0b019c

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 723
    iput-object v1, p0, Lim/doit/pro/activity/NoticeActivity$ListAdapter$InviteViewHolder;->bodyView:Landroid/widget/TextView;

    .line 725
    iget-object v1, p0, Lim/doit/pro/activity/NoticeActivity$ListAdapter$InviteViewHolder;->bodyViewWrap:Landroid/widget/LinearLayout;

    const v2, 0x7f0b019e

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lim/doit/pro/activity/NoticeActivity$ListAdapter$InviteViewHolder;->rejectBtn:Landroid/widget/Button;

    .line 726
    iget-object v1, p0, Lim/doit/pro/activity/NoticeActivity$ListAdapter$InviteViewHolder;->bodyViewWrap:Landroid/widget/LinearLayout;

    const v2, 0x7f0b019f

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lim/doit/pro/activity/NoticeActivity$ListAdapter$InviteViewHolder;->agreeBtn:Landroid/widget/Button;

    .line 727
    iget-object v1, p0, Lim/doit/pro/activity/NoticeActivity$ListAdapter$InviteViewHolder;->bodyWrap:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lim/doit/pro/activity/NoticeActivity$ListAdapter$InviteViewHolder;->bodyViewWrap:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 728
    return-void
.end method

.method static synthetic access$0(Lim/doit/pro/activity/NoticeActivity$ListAdapter$InviteViewHolder;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 712
    iget-object v0, p0, Lim/doit/pro/activity/NoticeActivity$ListAdapter$InviteViewHolder;->bodyView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1(Lim/doit/pro/activity/NoticeActivity$ListAdapter$InviteViewHolder;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 713
    iget-object v0, p0, Lim/doit/pro/activity/NoticeActivity$ListAdapter$InviteViewHolder;->rejectBtn:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$2(Lim/doit/pro/activity/NoticeActivity$ListAdapter$InviteViewHolder;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 714
    iget-object v0, p0, Lim/doit/pro/activity/NoticeActivity$ListAdapter$InviteViewHolder;->agreeBtn:Landroid/widget/Button;

    return-object v0
.end method
