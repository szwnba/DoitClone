.class Lim/doit/pro/activity/listview/TaskViewHolder$2;
.super Ljava/lang/Object;
.source "TaskViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/activity/listview/TaskViewHolder;->initListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/activity/listview/TaskViewHolder;


# direct methods
.method constructor <init>(Lim/doit/pro/activity/listview/TaskViewHolder;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lim/doit/pro/activity/listview/TaskViewHolder$2;->this$0:Lim/doit/pro/activity/listview/TaskViewHolder;

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 102
    iget-object v0, p0, Lim/doit/pro/activity/listview/TaskViewHolder$2;->this$0:Lim/doit/pro/activity/listview/TaskViewHolder;

    iget-object v0, v0, Lim/doit/pro/activity/listview/TaskViewHolder;->completeBtn:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 103
    iget-object v0, p0, Lim/doit/pro/activity/listview/TaskViewHolder$2;->this$0:Lim/doit/pro/activity/listview/TaskViewHolder;

    iget-object v0, v0, Lim/doit/pro/activity/listview/TaskViewHolder;->mOnUncompleteClickListener:Lim/doit/pro/activity/listview/ViewHolder$OnUncompleteClickListener;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lim/doit/pro/activity/listview/TaskViewHolder$2;->this$0:Lim/doit/pro/activity/listview/TaskViewHolder;

    iget-object v0, v0, Lim/doit/pro/activity/listview/TaskViewHolder;->mOnUncompleteClickListener:Lim/doit/pro/activity/listview/ViewHolder$OnUncompleteClickListener;

    invoke-interface {v0, p1}, Lim/doit/pro/activity/listview/ViewHolder$OnUncompleteClickListener;->uncomplete(Landroid/view/View;)V

    .line 111
    :cond_0
    :goto_0
    return-void

    .line 107
    :cond_1
    iget-object v0, p0, Lim/doit/pro/activity/listview/TaskViewHolder$2;->this$0:Lim/doit/pro/activity/listview/TaskViewHolder;

    iget-object v0, v0, Lim/doit/pro/activity/listview/TaskViewHolder;->mOnCompleteClickListener:Lim/doit/pro/activity/listview/ViewHolder$OnCompleteClickListener;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lim/doit/pro/activity/listview/TaskViewHolder$2;->this$0:Lim/doit/pro/activity/listview/TaskViewHolder;

    iget-object v0, v0, Lim/doit/pro/activity/listview/TaskViewHolder;->mOnCompleteClickListener:Lim/doit/pro/activity/listview/ViewHolder$OnCompleteClickListener;

    invoke-interface {v0, p1}, Lim/doit/pro/activity/listview/ViewHolder$OnCompleteClickListener;->complete(Landroid/view/View;)V

    goto :goto_0
.end method
