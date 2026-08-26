.class Lim/doit/pro/activity/NoticeActivity$ListAdapter$AutoActivateProjectViewHolder;
.super Lim/doit/pro/activity/NoticeActivity$ListAdapter$NormalViewHolderWithBtn;
.source "NoticeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/activity/NoticeActivity$ListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AutoActivateProjectViewHolder"
.end annotation


# instance fields
.field final synthetic this$1:Lim/doit/pro/activity/NoticeActivity$ListAdapter;


# direct methods
.method public constructor <init>(Lim/doit/pro/activity/NoticeActivity$ListAdapter;Landroid/content/Context;)V
    .locals 2
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 744
    iput-object p1, p0, Lim/doit/pro/activity/NoticeActivity$ListAdapter$AutoActivateProjectViewHolder;->this$1:Lim/doit/pro/activity/NoticeActivity$ListAdapter;

    .line 745
    invoke-direct {p0, p1, p2}, Lim/doit/pro/activity/NoticeActivity$ListAdapter$NormalViewHolderWithBtn;-><init>(Lim/doit/pro/activity/NoticeActivity$ListAdapter;Landroid/content/Context;)V

    .line 746
    iget-object v0, p0, Lim/doit/pro/activity/NoticeActivity$ListAdapter$AutoActivateProjectViewHolder;->bodyIconView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 747
    iget-object v0, p0, Lim/doit/pro/activity/NoticeActivity$ListAdapter$AutoActivateProjectViewHolder;->operateBtn:Landroid/widget/Button;

    const v1, 0x7f0c0031

    invoke-static {v1}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 748
    return-void
.end method
