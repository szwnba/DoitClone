.class Lim/doit/pro/activity/TaskDetailFragment$OnPriorityClick;
.super Ljava/lang/Object;
.source "TaskDetailFragment.java"

# interfaces
.implements Lim/doit/pro/activity/listener/OnLayoutClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/activity/TaskDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnPriorityClick"
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/activity/TaskDetailFragment;


# direct methods
.method private constructor <init>(Lim/doit/pro/activity/TaskDetailFragment;)V
    .locals 0

    .prologue
    .line 1545
    iput-object p1, p0, Lim/doit/pro/activity/TaskDetailFragment$OnPriorityClick;->this$0:Lim/doit/pro/activity/TaskDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lim/doit/pro/activity/TaskDetailFragment;Lim/doit/pro/activity/TaskDetailFragment$OnPriorityClick;)V
    .locals 0

    .prologue
    .line 1545
    invoke-direct {p0, p1}, Lim/doit/pro/activity/TaskDetailFragment$OnPriorityClick;-><init>(Lim/doit/pro/activity/TaskDetailFragment;)V

    return-void
.end method


# virtual methods
.method public click(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1548
    iget-object v0, p0, Lim/doit/pro/activity/TaskDetailFragment$OnPriorityClick;->this$0:Lim/doit/pro/activity/TaskDetailFragment;

    invoke-static {v0}, Lim/doit/pro/activity/TaskDetailFragment;->access$0(Lim/doit/pro/activity/TaskDetailFragment;)Lim/doit/pro/model/Task;

    move-result-object v0

    invoke-virtual {v0}, Lim/doit/pro/model/Task;->getPriority()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    .line 1549
    iget-object v0, p0, Lim/doit/pro/activity/TaskDetailFragment$OnPriorityClick;->this$0:Lim/doit/pro/activity/TaskDetailFragment;

    invoke-static {v0}, Lim/doit/pro/activity/TaskDetailFragment;->access$0(Lim/doit/pro/activity/TaskDetailFragment;)Lim/doit/pro/model/Task;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lim/doit/pro/model/Task;->setPriority(I)V

    .line 1553
    :goto_0
    iget-object v0, p0, Lim/doit/pro/activity/TaskDetailFragment$OnPriorityClick;->this$0:Lim/doit/pro/activity/TaskDetailFragment;

    invoke-static {v0}, Lim/doit/pro/activity/TaskDetailFragment;->access$1(Lim/doit/pro/activity/TaskDetailFragment;)Z

    .line 1554
    iget-object v0, p0, Lim/doit/pro/activity/TaskDetailFragment$OnPriorityClick;->this$0:Lim/doit/pro/activity/TaskDetailFragment;

    invoke-static {v0}, Lim/doit/pro/activity/TaskDetailFragment;->access$22(Lim/doit/pro/activity/TaskDetailFragment;)V

    .line 1555
    return-void

    .line 1551
    :cond_0
    iget-object v0, p0, Lim/doit/pro/activity/TaskDetailFragment$OnPriorityClick;->this$0:Lim/doit/pro/activity/TaskDetailFragment;

    invoke-static {v0}, Lim/doit/pro/activity/TaskDetailFragment;->access$0(Lim/doit/pro/activity/TaskDetailFragment;)Lim/doit/pro/model/Task;

    move-result-object v0

    iget-object v1, p0, Lim/doit/pro/activity/TaskDetailFragment$OnPriorityClick;->this$0:Lim/doit/pro/activity/TaskDetailFragment;

    invoke-static {v1}, Lim/doit/pro/activity/TaskDetailFragment;->access$0(Lim/doit/pro/activity/TaskDetailFragment;)Lim/doit/pro/model/Task;

    move-result-object v1

    invoke-virtual {v1}, Lim/doit/pro/model/Task;->getPriority()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lim/doit/pro/model/Task;->setPriority(I)V

    goto :goto_0
.end method
