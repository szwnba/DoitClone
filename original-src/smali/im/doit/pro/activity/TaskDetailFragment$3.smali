.class Lim/doit/pro/activity/TaskDetailFragment$3;
.super Ljava/lang/Object;
.source "TaskDetailFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/activity/TaskDetailFragment;->onEditMoreClick()Landroid/view/View$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/activity/TaskDetailFragment;


# direct methods
.method constructor <init>(Lim/doit/pro/activity/TaskDetailFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lim/doit/pro/activity/TaskDetailFragment$3;->this$0:Lim/doit/pro/activity/TaskDetailFragment;

    .line 1146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1150
    iget-object v0, p0, Lim/doit/pro/activity/TaskDetailFragment$3;->this$0:Lim/doit/pro/activity/TaskDetailFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lim/doit/pro/activity/TaskDetailFragment;->access$24(Lim/doit/pro/activity/TaskDetailFragment;Z)V

    .line 1151
    iget-object v0, p0, Lim/doit/pro/activity/TaskDetailFragment$3;->this$0:Lim/doit/pro/activity/TaskDetailFragment;

    invoke-static {v0}, Lim/doit/pro/activity/TaskDetailFragment;->access$6(Lim/doit/pro/activity/TaskDetailFragment;)Lim/doit/pro/activity/TaskDetailFragment$TaskChangeListener;

    move-result-object v0

    iget-object v1, p0, Lim/doit/pro/activity/TaskDetailFragment$3;->this$0:Lim/doit/pro/activity/TaskDetailFragment;

    invoke-static {v1}, Lim/doit/pro/activity/TaskDetailFragment;->access$25(Lim/doit/pro/activity/TaskDetailFragment;)Z

    move-result v1

    invoke-interface {v0, v1}, Lim/doit/pro/activity/TaskDetailFragment$TaskChangeListener;->setHideEmptyView(Z)V

    .line 1152
    iget-object v0, p0, Lim/doit/pro/activity/TaskDetailFragment$3;->this$0:Lim/doit/pro/activity/TaskDetailFragment;

    invoke-static {v0}, Lim/doit/pro/activity/TaskDetailFragment;->access$11(Lim/doit/pro/activity/TaskDetailFragment;)V

    .line 1153
    return-void
.end method
