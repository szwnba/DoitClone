.class Lim/doit/pro/activity/listview/TaskViewHolder$1;
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
    iput-object p1, p0, Lim/doit/pro/activity/listview/TaskViewHolder$1;->this$0:Lim/doit/pro/activity/listview/TaskViewHolder;

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 87
    iget-object v0, p0, Lim/doit/pro/activity/listview/TaskViewHolder$1;->this$0:Lim/doit/pro/activity/listview/TaskViewHolder;

    iget-object v0, v0, Lim/doit/pro/activity/listview/TaskViewHolder;->doitNowBtn:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 88
    iget-object v0, p0, Lim/doit/pro/activity/listview/TaskViewHolder$1;->this$0:Lim/doit/pro/activity/listview/TaskViewHolder;

    iget-object v0, v0, Lim/doit/pro/activity/listview/TaskViewHolder;->mOnNotnowClickListener:Lim/doit/pro/activity/listview/TaskViewHolder$OnNotnowClickListener;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lim/doit/pro/activity/listview/TaskViewHolder$1;->this$0:Lim/doit/pro/activity/listview/TaskViewHolder;

    iget-object v0, v0, Lim/doit/pro/activity/listview/TaskViewHolder;->mOnNotnowClickListener:Lim/doit/pro/activity/listview/TaskViewHolder$OnNotnowClickListener;

    invoke-interface {v0, p1}, Lim/doit/pro/activity/listview/TaskViewHolder$OnNotnowClickListener;->notNow(Landroid/view/View;)V

    .line 96
    :cond_0
    :goto_0
    return-void

    .line 92
    :cond_1
    iget-object v0, p0, Lim/doit/pro/activity/listview/TaskViewHolder$1;->this$0:Lim/doit/pro/activity/listview/TaskViewHolder;

    iget-object v0, v0, Lim/doit/pro/activity/listview/TaskViewHolder;->mOnDoitnowClickListener:Lim/doit/pro/activity/listview/TaskViewHolder$OnDoitnowClickListener;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lim/doit/pro/activity/listview/TaskViewHolder$1;->this$0:Lim/doit/pro/activity/listview/TaskViewHolder;

    iget-object v0, v0, Lim/doit/pro/activity/listview/TaskViewHolder;->mOnDoitnowClickListener:Lim/doit/pro/activity/listview/TaskViewHolder$OnDoitnowClickListener;

    invoke-interface {v0, p1}, Lim/doit/pro/activity/listview/TaskViewHolder$OnDoitnowClickListener;->doitNow(Landroid/view/View;)V

    goto :goto_0
.end method
