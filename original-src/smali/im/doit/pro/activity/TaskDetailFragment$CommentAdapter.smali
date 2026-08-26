.class public Lim/doit/pro/activity/TaskDetailFragment$CommentAdapter;
.super Landroid/widget/BaseAdapter;
.source "TaskDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/activity/TaskDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CommentAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lim/doit/pro/activity/TaskDetailFragment$CommentAdapter$CommentViewHolder;
    }
.end annotation


# instance fields
.field private mTaskComments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lim/doit/pro/model/TaskComment;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lim/doit/pro/activity/TaskDetailFragment;


# direct methods
.method public constructor <init>(Lim/doit/pro/activity/TaskDetailFragment;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lim/doit/pro/model/TaskComment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 769
    .local p2, "taskComments":Ljava/util/List;, "Ljava/util/List<Lim/doit/pro/model/TaskComment;>;"
    iput-object p1, p0, Lim/doit/pro/activity/TaskDetailFragment$CommentAdapter;->this$0:Lim/doit/pro/activity/TaskDetailFragment;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 770
    iput-object p2, p0, Lim/doit/pro/activity/TaskDetailFragment$CommentAdapter;->mTaskComments:Ljava/util/List;

    .line 771
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 787
    iget-object v0, p0, Lim/doit/pro/activity/TaskDetailFragment$CommentAdapter;->mTaskComments:Ljava/util/List;

    invoke-static {v0}, Lim/doit/pro/utils/CollectionUtils;->isEmpty(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 788
    const/4 v0, 0x0

    .line 790
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lim/doit/pro/activity/TaskDetailFragment$CommentAdapter;->mTaskComments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Lim/doit/pro/model/TaskComment;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 795
    iget-object v0, p0, Lim/doit/pro/activity/TaskDetailFragment$CommentAdapter;->mTaskComments:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lim/doit/pro/model/TaskComment;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lim/doit/pro/activity/TaskDetailFragment$CommentAdapter;->getItem(I)Lim/doit/pro/model/TaskComment;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 800
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 776
    if-nez p2, :cond_0

    .line 777
    new-instance v0, Lim/doit/pro/activity/TaskDetailFragment$CommentAdapter$CommentViewHolder;

    iget-object v1, p0, Lim/doit/pro/activity/TaskDetailFragment$CommentAdapter;->this$0:Lim/doit/pro/activity/TaskDetailFragment;

    invoke-virtual {v1}, Lim/doit/pro/activity/TaskDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lim/doit/pro/activity/TaskDetailFragment$CommentAdapter$CommentViewHolder;-><init>(Lim/doit/pro/activity/TaskDetailFragment$CommentAdapter;Landroid/content/Context;)V

    .line 781
    .local v0, "viewHolder":Lim/doit/pro/activity/TaskDetailFragment$CommentAdapter$CommentViewHolder;
    :goto_0
    invoke-virtual {p0, p1}, Lim/doit/pro/activity/TaskDetailFragment$CommentAdapter;->getItem(I)Lim/doit/pro/model/TaskComment;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/activity/TaskDetailFragment$CommentAdapter$CommentViewHolder;->setViewContent(Lim/doit/pro/model/TaskComment;)V

    .line 782
    return-object v0

    .end local v0    # "viewHolder":Lim/doit/pro/activity/TaskDetailFragment$CommentAdapter$CommentViewHolder;
    :cond_0
    move-object v0, p2

    .line 779
    check-cast v0, Lim/doit/pro/activity/TaskDetailFragment$CommentAdapter$CommentViewHolder;

    .restart local v0    # "viewHolder":Lim/doit/pro/activity/TaskDetailFragment$CommentAdapter$CommentViewHolder;
    goto :goto_0
.end method
