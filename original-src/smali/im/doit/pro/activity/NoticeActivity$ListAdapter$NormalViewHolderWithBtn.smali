.class Lim/doit/pro/activity/NoticeActivity$ListAdapter$NormalViewHolderWithBtn;
.super Lim/doit/pro/activity/NoticeActivity$ListAdapter$ViewHolder;
.source "NoticeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/activity/NoticeActivity$ListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NormalViewHolderWithBtn"
.end annotation


# instance fields
.field protected bodyIconView:Landroid/widget/ImageView;

.field protected bodyTitleView:Landroid/widget/TextView;

.field protected bodyView:Landroid/widget/TextView;

.field protected bodyViewWrap:Landroid/widget/LinearLayout;

.field protected operateBtn:Landroid/widget/Button;

.field final synthetic this$1:Lim/doit/pro/activity/NoticeActivity$ListAdapter;


# direct methods
.method public constructor <init>(Lim/doit/pro/activity/NoticeActivity$ListAdapter;Landroid/content/Context;)V
    .locals 5
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 676
    iput-object p1, p0, Lim/doit/pro/activity/NoticeActivity$ListAdapter$NormalViewHolderWithBtn;->this$1:Lim/doit/pro/activity/NoticeActivity$ListAdapter;

    .line 677
    invoke-direct {p0, p1, p2}, Lim/doit/pro/activity/NoticeActivity$ListAdapter$ViewHolder;-><init>(Lim/doit/pro/activity/NoticeActivity$ListAdapter;Landroid/content/Context;)V

    .line 678
    iget-object v1, p0, Lim/doit/pro/activity/NoticeActivity$ListAdapter$NormalViewHolderWithBtn;->layoutInflater:Landroid/view/LayoutInflater;

    .line 679
    const v2, 0x7f03008f

    .line 680
    const/4 v3, 0x0

    .line 678
    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lim/doit/pro/activity/NoticeActivity$ListAdapter$NormalViewHolderWithBtn;->bodyViewWrap:Landroid/widget/LinearLayout;

    .line 681
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 682
    const/4 v1, -0x1

    const/4 v2, -0x2

    .line 681
    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 683
    .local v0, "params":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v1, p0, Lim/doit/pro/activity/NoticeActivity$ListAdapter$NormalViewHolderWithBtn;->bodyViewWrap:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 684
    iget-object v1, p0, Lim/doit/pro/activity/NoticeActivity$ListAdapter$NormalViewHolderWithBtn;->bodyViewWrap:Landroid/widget/LinearLayout;

    .line 685
    const v2, 0x7f0b019a

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 684
    iput-object v1, p0, Lim/doit/pro/activity/NoticeActivity$ListAdapter$NormalViewHolderWithBtn;->bodyTitleView:Landroid/widget/TextView;

    .line 686
    iget-object v1, p0, Lim/doit/pro/activity/NoticeActivity$ListAdapter$NormalViewHolderWithBtn;->bodyViewWrap:Landroid/widget/LinearLayout;

    .line 687
    const v2, 0x7f0b019b

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 686
    iput-object v1, p0, Lim/doit/pro/activity/NoticeActivity$ListAdapter$NormalViewHolderWithBtn;->bodyIconView:Landroid/widget/ImageView;

    .line 688
    iget-object v1, p0, Lim/doit/pro/activity/NoticeActivity$ListAdapter$NormalViewHolderWithBtn;->bodyViewWrap:Landroid/widget/LinearLayout;

    .line 689
    const v2, 0x7f0b019c

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 688
    iput-object v1, p0, Lim/doit/pro/activity/NoticeActivity$ListAdapter$NormalViewHolderWithBtn;->bodyView:Landroid/widget/TextView;

    .line 690
    iget-object v1, p0, Lim/doit/pro/activity/NoticeActivity$ListAdapter$NormalViewHolderWithBtn;->bodyViewWrap:Landroid/widget/LinearLayout;

    const v2, 0x7f0b019d

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lim/doit/pro/activity/NoticeActivity$ListAdapter$NormalViewHolderWithBtn;->operateBtn:Landroid/widget/Button;

    .line 691
    iget-object v1, p0, Lim/doit/pro/activity/NoticeActivity$ListAdapter$NormalViewHolderWithBtn;->operateBtn:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 692
    iget-object v1, p0, Lim/doit/pro/activity/NoticeActivity$ListAdapter$NormalViewHolderWithBtn;->bodyIconView:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 693
    iget-object v1, p0, Lim/doit/pro/activity/NoticeActivity$ListAdapter$NormalViewHolderWithBtn;->bodyWrap:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lim/doit/pro/activity/NoticeActivity$ListAdapter$NormalViewHolderWithBtn;->bodyViewWrap:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 694
    return-void
.end method
