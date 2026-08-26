.class Lim/doit/pro/activity/TaskDetailFragment$OnProjectClick;
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
    name = "OnProjectClick"
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/activity/TaskDetailFragment;


# direct methods
.method private constructor <init>(Lim/doit/pro/activity/TaskDetailFragment;)V
    .locals 0

    .prologue
    .line 1508
    iput-object p1, p0, Lim/doit/pro/activity/TaskDetailFragment$OnProjectClick;->this$0:Lim/doit/pro/activity/TaskDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lim/doit/pro/activity/TaskDetailFragment;Lim/doit/pro/activity/TaskDetailFragment$OnProjectClick;)V
    .locals 0

    .prologue
    .line 1508
    invoke-direct {p0, p1}, Lim/doit/pro/activity/TaskDetailFragment$OnProjectClick;-><init>(Lim/doit/pro/activity/TaskDetailFragment;)V

    return-void
.end method

.method static synthetic access$1(Lim/doit/pro/activity/TaskDetailFragment$OnProjectClick;)Lim/doit/pro/activity/TaskDetailFragment;
    .locals 1

    .prologue
    .line 1508
    iget-object v0, p0, Lim/doit/pro/activity/TaskDetailFragment$OnProjectClick;->this$0:Lim/doit/pro/activity/TaskDetailFragment;

    return-object v0
.end method


# virtual methods
.method public click(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1512
    new-instance v0, Lim/doit/pro/ui/component/SelectProjectDialog;

    iget-object v1, p0, Lim/doit/pro/activity/TaskDetailFragment$OnProjectClick;->this$0:Lim/doit/pro/activity/TaskDetailFragment;

    invoke-virtual {v1}, Lim/doit/pro/activity/TaskDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lim/doit/pro/ui/component/SelectProjectDialog;-><init>(Landroid/app/Activity;)V

    .line 1513
    .local v0, "dialog":Lim/doit/pro/ui/component/SelectProjectDialog;
    new-instance v1, Lim/doit/pro/activity/TaskDetailFragment$OnProjectClick$1;

    invoke-direct {v1, p0}, Lim/doit/pro/activity/TaskDetailFragment$OnProjectClick$1;-><init>(Lim/doit/pro/activity/TaskDetailFragment$OnProjectClick;)V

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/SelectProjectDialog;->setOnProjectFinishListner(Lim/doit/pro/ui/component/SelectProjectDialog$OnProjectFinishListner;)V

    .line 1523
    iget-object v1, p0, Lim/doit/pro/activity/TaskDetailFragment$OnProjectClick;->this$0:Lim/doit/pro/activity/TaskDetailFragment;

    invoke-static {v1}, Lim/doit/pro/activity/TaskDetailFragment;->access$0(Lim/doit/pro/activity/TaskDetailFragment;)Lim/doit/pro/model/Task;

    move-result-object v1

    invoke-virtual {v1}, Lim/doit/pro/model/Task;->getProject()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/SelectProjectDialog;->showDialog(Ljava/lang/String;)V

    .line 1524
    return-void
.end method
