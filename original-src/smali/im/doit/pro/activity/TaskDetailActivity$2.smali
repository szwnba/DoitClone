.class Lim/doit/pro/activity/TaskDetailActivity$2;
.super Ljava/lang/Object;
.source "TaskDetailActivity.java"

# interfaces
.implements Lim/doit/pro/ui/component/AddCommentDialog$OnAddCommentFinishListner;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/activity/TaskDetailActivity;->showAddCommentDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/activity/TaskDetailActivity;


# direct methods
.method constructor <init>(Lim/doit/pro/activity/TaskDetailActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lim/doit/pro/activity/TaskDetailActivity$2;->this$0:Lim/doit/pro/activity/TaskDetailActivity;

    .line 349
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public finish(Lim/doit/pro/model/TaskComment;)V
    .locals 3
    .param p1, "comment"    # Lim/doit/pro/model/TaskComment;

    .prologue
    .line 353
    iget-object v1, p0, Lim/doit/pro/activity/TaskDetailActivity$2;->this$0:Lim/doit/pro/activity/TaskDetailActivity;

    invoke-virtual {v1}, Lim/doit/pro/activity/TaskDetailActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 354
    const-string v2, "task_detail_fragtment"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 355
    .local v0, "fragment":Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_0

    .line 356
    check-cast v0, Lim/doit/pro/activity/TaskDetailFragment;

    .end local v0    # "fragment":Landroid/support/v4/app/Fragment;
    invoke-virtual {v0, p1}, Lim/doit/pro/activity/TaskDetailFragment;->addComment(Lim/doit/pro/model/TaskComment;)V

    .line 358
    :cond_0
    return-void
.end method
