.class Lim/doit/pro/activity/NoticeActivity$ListAdapter$ViewHolder;
.super Landroid/widget/LinearLayout;
.source "NoticeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/activity/NoticeActivity$ListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field protected bodyWrap:Landroid/widget/LinearLayout;

.field layoutInflater:Landroid/view/LayoutInflater;

.field final synthetic this$1:Lim/doit/pro/activity/NoticeActivity$ListAdapter;

.field protected timeView:Landroid/widget/TextView;

.field protected titleView:Landroid/widget/TextView;

.field protected titleWrapView:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Lim/doit/pro/activity/NoticeActivity$ListAdapter;Landroid/content/Context;)V
    .locals 3
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 653
    iput-object p1, p0, Lim/doit/pro/activity/NoticeActivity$ListAdapter$ViewHolder;->this$1:Lim/doit/pro/activity/NoticeActivity$ListAdapter;

    .line 654
    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 655
    invoke-static {p1}, Lim/doit/pro/activity/NoticeActivity$ListAdapter;->access$2(Lim/doit/pro/activity/NoticeActivity$ListAdapter;)Lim/doit/pro/activity/NoticeActivity;

    move-result-object v0

    invoke-virtual {v0}, Lim/doit/pro/activity/NoticeActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lim/doit/pro/activity/NoticeActivity$ListAdapter$ViewHolder;->layoutInflater:Landroid/view/LayoutInflater;

    .line 656
    iget-object v0, p0, Lim/doit/pro/activity/NoticeActivity$ListAdapter$ViewHolder;->layoutInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f03008e

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 658
    const v0, 0x7f0b010e

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/NoticeActivity$ListAdapter$ViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lim/doit/pro/activity/NoticeActivity$ListAdapter$ViewHolder;->titleWrapView:Landroid/widget/LinearLayout;

    .line 659
    iget-object v0, p0, Lim/doit/pro/activity/NoticeActivity$ListAdapter$ViewHolder;->titleWrapView:Landroid/widget/LinearLayout;

    new-instance v1, Lim/doit/pro/activity/NoticeActivity$ListAdapter$ItemWrapClick;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lim/doit/pro/activity/NoticeActivity$ListAdapter$ItemWrapClick;-><init>(Lim/doit/pro/activity/NoticeActivity$ListAdapter;Lim/doit/pro/activity/NoticeActivity$ListAdapter$ItemWrapClick;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 660
    const v0, 0x7f0b0197

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/NoticeActivity$ListAdapter$ViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lim/doit/pro/activity/NoticeActivity$ListAdapter$ViewHolder;->timeView:Landroid/widget/TextView;

    .line 661
    const v0, 0x7f0b003a

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/NoticeActivity$ListAdapter$ViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lim/doit/pro/activity/NoticeActivity$ListAdapter$ViewHolder;->titleView:Landroid/widget/TextView;

    .line 662
    const v0, 0x7f0b0198

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/NoticeActivity$ListAdapter$ViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lim/doit/pro/activity/NoticeActivity$ListAdapter$ViewHolder;->bodyWrap:Landroid/widget/LinearLayout;

    .line 663
    return-void
.end method
