.class Lim/doit/pro/activity/TaskDetailFragment$SubTaskAdapter$2;
.super Ljava/lang/Object;
.source "TaskDetailFragment.java"

# interfaces
.implements Lim/doit/pro/ui/component/SubTaskListItem$onSubTaskDeleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/activity/TaskDetailFragment$SubTaskAdapter;->onSubtaskDeleteListener()Lim/doit/pro/ui/component/SubTaskListItem$onSubTaskDeleteListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lim/doit/pro/activity/TaskDetailFragment$SubTaskAdapter;


# direct methods
.method constructor <init>(Lim/doit/pro/activity/TaskDetailFragment$SubTaskAdapter;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lim/doit/pro/activity/TaskDetailFragment$SubTaskAdapter$2;->this$1:Lim/doit/pro/activity/TaskDetailFragment$SubTaskAdapter;

    .line 653
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public delete(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 657
    iget-object v0, p0, Lim/doit/pro/activity/TaskDetailFragment$SubTaskAdapter$2;->this$1:Lim/doit/pro/activity/TaskDetailFragment$SubTaskAdapter;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lim/doit/pro/activity/TaskDetailFragment$SubTaskAdapter;->access$2(Lim/doit/pro/activity/TaskDetailFragment$SubTaskAdapter;I)V

    .line 658
    return-void
.end method
