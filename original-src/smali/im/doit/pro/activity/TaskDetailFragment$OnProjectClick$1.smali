.class Lim/doit/pro/activity/TaskDetailFragment$OnProjectClick$1;
.super Ljava/lang/Object;
.source "TaskDetailFragment.java"

# interfaces
.implements Lim/doit/pro/ui/component/SelectProjectDialog$OnProjectFinishListner;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/activity/TaskDetailFragment$OnProjectClick;->click(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lim/doit/pro/activity/TaskDetailFragment$OnProjectClick;


# direct methods
.method constructor <init>(Lim/doit/pro/activity/TaskDetailFragment$OnProjectClick;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lim/doit/pro/activity/TaskDetailFragment$OnProjectClick$1;->this$1:Lim/doit/pro/activity/TaskDetailFragment$OnProjectClick;

    .line 1513
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public finish(Ljava/lang/String;)V
    .locals 1
    .param p1, "project"    # Ljava/lang/String;

    .prologue
    .line 1517
    iget-object v0, p0, Lim/doit/pro/activity/TaskDetailFragment$OnProjectClick$1;->this$1:Lim/doit/pro/activity/TaskDetailFragment$OnProjectClick;

    invoke-static {v0}, Lim/doit/pro/activity/TaskDetailFragment$OnProjectClick;->access$1(Lim/doit/pro/activity/TaskDetailFragment$OnProjectClick;)Lim/doit/pro/activity/TaskDetailFragment;

    move-result-object v0

    invoke-static {v0}, Lim/doit/pro/activity/TaskDetailFragment;->access$0(Lim/doit/pro/activity/TaskDetailFragment;)Lim/doit/pro/model/Task;

    move-result-object v0

    invoke-virtual {v0, p1}, Lim/doit/pro/model/Task;->setProject(Ljava/lang/String;)V

    .line 1518
    iget-object v0, p0, Lim/doit/pro/activity/TaskDetailFragment$OnProjectClick$1;->this$1:Lim/doit/pro/activity/TaskDetailFragment$OnProjectClick;

    invoke-static {v0}, Lim/doit/pro/activity/TaskDetailFragment$OnProjectClick;->access$1(Lim/doit/pro/activity/TaskDetailFragment$OnProjectClick;)Lim/doit/pro/activity/TaskDetailFragment;

    move-result-object v0

    invoke-static {v0}, Lim/doit/pro/activity/TaskDetailFragment;->access$1(Lim/doit/pro/activity/TaskDetailFragment;)Z

    .line 1519
    iget-object v0, p0, Lim/doit/pro/activity/TaskDetailFragment$OnProjectClick$1;->this$1:Lim/doit/pro/activity/TaskDetailFragment$OnProjectClick;

    invoke-static {v0}, Lim/doit/pro/activity/TaskDetailFragment$OnProjectClick;->access$1(Lim/doit/pro/activity/TaskDetailFragment$OnProjectClick;)Lim/doit/pro/activity/TaskDetailFragment;

    move-result-object v0

    invoke-static {v0}, Lim/doit/pro/activity/TaskDetailFragment;->access$13(Lim/doit/pro/activity/TaskDetailFragment;)V

    .line 1520
    iget-object v0, p0, Lim/doit/pro/activity/TaskDetailFragment$OnProjectClick$1;->this$1:Lim/doit/pro/activity/TaskDetailFragment$OnProjectClick;

    invoke-static {v0}, Lim/doit/pro/activity/TaskDetailFragment$OnProjectClick;->access$1(Lim/doit/pro/activity/TaskDetailFragment$OnProjectClick;)Lim/doit/pro/activity/TaskDetailFragment;

    move-result-object v0

    invoke-static {v0}, Lim/doit/pro/activity/TaskDetailFragment;->access$20(Lim/doit/pro/activity/TaskDetailFragment;)V

    .line 1521
    return-void
.end method
