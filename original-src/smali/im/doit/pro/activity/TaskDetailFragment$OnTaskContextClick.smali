.class Lim/doit/pro/activity/TaskDetailFragment$OnTaskContextClick;
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
    name = "OnTaskContextClick"
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/activity/TaskDetailFragment;


# direct methods
.method private constructor <init>(Lim/doit/pro/activity/TaskDetailFragment;)V
    .locals 0

    .prologue
    .line 1488
    iput-object p1, p0, Lim/doit/pro/activity/TaskDetailFragment$OnTaskContextClick;->this$0:Lim/doit/pro/activity/TaskDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lim/doit/pro/activity/TaskDetailFragment;Lim/doit/pro/activity/TaskDetailFragment$OnTaskContextClick;)V
    .locals 0

    .prologue
    .line 1488
    invoke-direct {p0, p1}, Lim/doit/pro/activity/TaskDetailFragment$OnTaskContextClick;-><init>(Lim/doit/pro/activity/TaskDetailFragment;)V

    return-void
.end method

.method static synthetic access$1(Lim/doit/pro/activity/TaskDetailFragment$OnTaskContextClick;)Lim/doit/pro/activity/TaskDetailFragment;
    .locals 1

    .prologue
    .line 1488
    iget-object v0, p0, Lim/doit/pro/activity/TaskDetailFragment$OnTaskContextClick;->this$0:Lim/doit/pro/activity/TaskDetailFragment;

    return-object v0
.end method


# virtual methods
.method public click(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1492
    new-instance v0, Lim/doit/pro/ui/component/SelectTaskContextDialog;

    .line 1493
    iget-object v1, p0, Lim/doit/pro/activity/TaskDetailFragment$OnTaskContextClick;->this$0:Lim/doit/pro/activity/TaskDetailFragment;

    invoke-virtual {v1}, Lim/doit/pro/activity/TaskDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 1492
    invoke-direct {v0, v1}, Lim/doit/pro/ui/component/SelectTaskContextDialog;-><init>(Landroid/app/Activity;)V

    .line 1494
    .local v0, "dialog":Lim/doit/pro/ui/component/SelectTaskContextDialog;
    new-instance v1, Lim/doit/pro/activity/TaskDetailFragment$OnTaskContextClick$1;

    invoke-direct {v1, p0}, Lim/doit/pro/activity/TaskDetailFragment$OnTaskContextClick$1;-><init>(Lim/doit/pro/activity/TaskDetailFragment$OnTaskContextClick;)V

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/SelectTaskContextDialog;->setOnTaskContextFinishListner(Lim/doit/pro/ui/component/SelectTaskContextDialog$OnTaskContextFinishListner;)V

    .line 1503
    iget-object v1, p0, Lim/doit/pro/activity/TaskDetailFragment$OnTaskContextClick;->this$0:Lim/doit/pro/activity/TaskDetailFragment;

    invoke-static {v1}, Lim/doit/pro/activity/TaskDetailFragment;->access$0(Lim/doit/pro/activity/TaskDetailFragment;)Lim/doit/pro/model/Task;

    move-result-object v1

    invoke-virtual {v1}, Lim/doit/pro/model/Task;->getContext()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/SelectTaskContextDialog;->showDialog(Ljava/lang/String;)V

    .line 1504
    return-void
.end method
