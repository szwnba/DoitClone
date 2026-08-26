.class Lim/doit/pro/activity/TaskDetailFragment$OnStartAtClick;
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
    name = "OnStartAtClick"
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/activity/TaskDetailFragment;


# direct methods
.method private constructor <init>(Lim/doit/pro/activity/TaskDetailFragment;)V
    .locals 0

    .prologue
    .line 1338
    iput-object p1, p0, Lim/doit/pro/activity/TaskDetailFragment$OnStartAtClick;->this$0:Lim/doit/pro/activity/TaskDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lim/doit/pro/activity/TaskDetailFragment;Lim/doit/pro/activity/TaskDetailFragment$OnStartAtClick;)V
    .locals 0

    .prologue
    .line 1338
    invoke-direct {p0, p1}, Lim/doit/pro/activity/TaskDetailFragment$OnStartAtClick;-><init>(Lim/doit/pro/activity/TaskDetailFragment;)V

    return-void
.end method

.method static synthetic access$1(Lim/doit/pro/activity/TaskDetailFragment$OnStartAtClick;)Lim/doit/pro/activity/TaskDetailFragment;
    .locals 1

    .prologue
    .line 1338
    iget-object v0, p0, Lim/doit/pro/activity/TaskDetailFragment$OnStartAtClick;->this$0:Lim/doit/pro/activity/TaskDetailFragment;

    return-object v0
.end method


# virtual methods
.method public click(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 1342
    new-instance v0, Lim/doit/pro/ui/component/MoveToDialog;

    iget-object v1, p0, Lim/doit/pro/activity/TaskDetailFragment$OnStartAtClick;->this$0:Lim/doit/pro/activity/TaskDetailFragment;

    invoke-virtual {v1}, Lim/doit/pro/activity/TaskDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Lim/doit/pro/ui/component/MoveToDialog;-><init>(Landroid/app/Activity;Z)V

    .line 1343
    .local v0, "dialog":Lim/doit/pro/ui/component/MoveToDialog;
    new-instance v1, Lim/doit/pro/activity/TaskDetailFragment$OnStartAtClick$1;

    invoke-direct {v1, p0}, Lim/doit/pro/activity/TaskDetailFragment$OnStartAtClick$1;-><init>(Lim/doit/pro/activity/TaskDetailFragment$OnStartAtClick;)V

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/MoveToDialog;->setOnMoveFinishListner(Lim/doit/pro/ui/component/MoveToDialog$OnMoveFinishListner;)V

    .line 1351
    iget-object v1, p0, Lim/doit/pro/activity/TaskDetailFragment$OnStartAtClick;->this$0:Lim/doit/pro/activity/TaskDetailFragment;

    invoke-static {v1}, Lim/doit/pro/activity/TaskDetailFragment;->access$0(Lim/doit/pro/activity/TaskDetailFragment;)Lim/doit/pro/model/Task;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lim/doit/pro/ui/component/MoveToDialog;->showDialog(Lim/doit/pro/model/BaseEntityWithPos;Z)V

    .line 1352
    return-void
.end method
