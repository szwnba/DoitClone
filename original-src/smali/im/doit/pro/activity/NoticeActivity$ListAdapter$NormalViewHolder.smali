.class Lim/doit/pro/activity/NoticeActivity$ListAdapter$NormalViewHolder;
.super Lim/doit/pro/activity/NoticeActivity$ListAdapter$NormalViewHolderWithBtn;
.source "NoticeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/activity/NoticeActivity$ListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NormalViewHolder"
.end annotation


# instance fields
.field final synthetic this$1:Lim/doit/pro/activity/NoticeActivity$ListAdapter;


# direct methods
.method public constructor <init>(Lim/doit/pro/activity/NoticeActivity$ListAdapter;Landroid/content/Context;)V
    .locals 2
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/16 v1, 0x8

    .line 753
    iput-object p1, p0, Lim/doit/pro/activity/NoticeActivity$ListAdapter$NormalViewHolder;->this$1:Lim/doit/pro/activity/NoticeActivity$ListAdapter;

    .line 754
    invoke-direct {p0, p1, p2}, Lim/doit/pro/activity/NoticeActivity$ListAdapter$NormalViewHolderWithBtn;-><init>(Lim/doit/pro/activity/NoticeActivity$ListAdapter;Landroid/content/Context;)V

    .line 755
    iget-object v0, p0, Lim/doit/pro/activity/NoticeActivity$ListAdapter$NormalViewHolder;->bodyIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 756
    iget-object v0, p0, Lim/doit/pro/activity/NoticeActivity$ListAdapter$NormalViewHolder;->operateBtn:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 757
    return-void
.end method
