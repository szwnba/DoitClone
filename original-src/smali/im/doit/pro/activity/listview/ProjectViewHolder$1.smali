.class Lim/doit/pro/activity/listview/ProjectViewHolder$1;
.super Ljava/lang/Object;
.source "ProjectViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/activity/listview/ProjectViewHolder;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/activity/listview/ProjectViewHolder;


# direct methods
.method constructor <init>(Lim/doit/pro/activity/listview/ProjectViewHolder;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lim/doit/pro/activity/listview/ProjectViewHolder$1;->this$0:Lim/doit/pro/activity/listview/ProjectViewHolder;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 46
    iget-object v0, p0, Lim/doit/pro/activity/listview/ProjectViewHolder$1;->this$0:Lim/doit/pro/activity/listview/ProjectViewHolder;

    iget-object v0, v0, Lim/doit/pro/activity/listview/ProjectViewHolder;->completeBtn:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 47
    iget-object v0, p0, Lim/doit/pro/activity/listview/ProjectViewHolder$1;->this$0:Lim/doit/pro/activity/listview/ProjectViewHolder;

    iget-object v0, v0, Lim/doit/pro/activity/listview/ProjectViewHolder;->mOnUncompleteClickListener:Lim/doit/pro/activity/listview/ViewHolder$OnUncompleteClickListener;

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lim/doit/pro/activity/listview/ProjectViewHolder$1;->this$0:Lim/doit/pro/activity/listview/ProjectViewHolder;

    iget-object v0, v0, Lim/doit/pro/activity/listview/ProjectViewHolder;->mOnUncompleteClickListener:Lim/doit/pro/activity/listview/ViewHolder$OnUncompleteClickListener;

    invoke-interface {v0, p1}, Lim/doit/pro/activity/listview/ViewHolder$OnUncompleteClickListener;->uncomplete(Landroid/view/View;)V

    .line 55
    :cond_0
    :goto_0
    return-void

    .line 51
    :cond_1
    iget-object v0, p0, Lim/doit/pro/activity/listview/ProjectViewHolder$1;->this$0:Lim/doit/pro/activity/listview/ProjectViewHolder;

    iget-object v0, v0, Lim/doit/pro/activity/listview/ProjectViewHolder;->mOnCompleteClickListener:Lim/doit/pro/activity/listview/ViewHolder$OnCompleteClickListener;

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lim/doit/pro/activity/listview/ProjectViewHolder$1;->this$0:Lim/doit/pro/activity/listview/ProjectViewHolder;

    iget-object v0, v0, Lim/doit/pro/activity/listview/ProjectViewHolder;->mOnCompleteClickListener:Lim/doit/pro/activity/listview/ViewHolder$OnCompleteClickListener;

    invoke-interface {v0, p1}, Lim/doit/pro/activity/listview/ViewHolder$OnCompleteClickListener;->complete(Landroid/view/View;)V

    goto :goto_0
.end method
