.class Lim/doit/pro/activity/TaskDetailFragment$SubTaskAdapter$3;
.super Ljava/lang/Object;
.source "TaskDetailFragment.java"

# interfaces
.implements Lim/doit/pro/ui/component/SubTaskListItem$onSubTaskSaveListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/activity/TaskDetailFragment$SubTaskAdapter;->onSubtaskSaveListener()Lim/doit/pro/ui/component/SubTaskListItem$onSubTaskSaveListener;
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
    iput-object p1, p0, Lim/doit/pro/activity/TaskDetailFragment$SubTaskAdapter$3;->this$1:Lim/doit/pro/activity/TaskDetailFragment$SubTaskAdapter;

    .line 663
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public save(Landroid/widget/EditText;)V
    .locals 1
    .param p1, "v"    # Landroid/widget/EditText;

    .prologue
    .line 667
    iget-object v0, p0, Lim/doit/pro/activity/TaskDetailFragment$SubTaskAdapter$3;->this$1:Lim/doit/pro/activity/TaskDetailFragment$SubTaskAdapter;

    invoke-static {v0, p1}, Lim/doit/pro/activity/TaskDetailFragment$SubTaskAdapter;->access$3(Lim/doit/pro/activity/TaskDetailFragment$SubTaskAdapter;Landroid/widget/EditText;)V

    .line 668
    return-void
.end method
