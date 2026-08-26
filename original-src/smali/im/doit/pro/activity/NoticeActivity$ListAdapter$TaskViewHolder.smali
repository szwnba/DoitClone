.class Lim/doit/pro/activity/NoticeActivity$ListAdapter$TaskViewHolder;
.super Lim/doit/pro/activity/NoticeActivity$ListAdapter$NormalViewHolderWithBtn;
.source "NoticeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/activity/NoticeActivity$ListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TaskViewHolder"
.end annotation


# instance fields
.field final synthetic this$1:Lim/doit/pro/activity/NoticeActivity$ListAdapter;


# direct methods
.method public constructor <init>(Lim/doit/pro/activity/NoticeActivity$ListAdapter;Landroid/content/Context;)V
    .locals 2
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/16 v1, 0x8

    .line 700
    iput-object p1, p0, Lim/doit/pro/activity/NoticeActivity$ListAdapter$TaskViewHolder;->this$1:Lim/doit/pro/activity/NoticeActivity$ListAdapter;

    .line 701
    invoke-direct {p0, p1, p2}, Lim/doit/pro/activity/NoticeActivity$ListAdapter$NormalViewHolderWithBtn;-><init>(Lim/doit/pro/activity/NoticeActivity$ListAdapter;Landroid/content/Context;)V

    .line 702
    iget-object v0, p0, Lim/doit/pro/activity/NoticeActivity$ListAdapter$TaskViewHolder;->bodyTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 703
    iget-object v0, p0, Lim/doit/pro/activity/NoticeActivity$ListAdapter$TaskViewHolder;->bodyIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 704
    return-void
.end method
