.class Lim/doit/pro/activity/TaskDetailFragment$OnTagsClick;
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
    name = "OnTagsClick"
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/activity/TaskDetailFragment;


# direct methods
.method private constructor <init>(Lim/doit/pro/activity/TaskDetailFragment;)V
    .locals 0

    .prologue
    .line 1528
    iput-object p1, p0, Lim/doit/pro/activity/TaskDetailFragment$OnTagsClick;->this$0:Lim/doit/pro/activity/TaskDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lim/doit/pro/activity/TaskDetailFragment;Lim/doit/pro/activity/TaskDetailFragment$OnTagsClick;)V
    .locals 0

    .prologue
    .line 1528
    invoke-direct {p0, p1}, Lim/doit/pro/activity/TaskDetailFragment$OnTagsClick;-><init>(Lim/doit/pro/activity/TaskDetailFragment;)V

    return-void
.end method

.method static synthetic access$1(Lim/doit/pro/activity/TaskDetailFragment$OnTagsClick;)Lim/doit/pro/activity/TaskDetailFragment;
    .locals 1

    .prologue
    .line 1528
    iget-object v0, p0, Lim/doit/pro/activity/TaskDetailFragment$OnTagsClick;->this$0:Lim/doit/pro/activity/TaskDetailFragment;

    return-object v0
.end method


# virtual methods
.method public click(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1531
    new-instance v0, Lim/doit/pro/ui/component/SelectTagsDialog;

    iget-object v1, p0, Lim/doit/pro/activity/TaskDetailFragment$OnTagsClick;->this$0:Lim/doit/pro/activity/TaskDetailFragment;

    invoke-virtual {v1}, Lim/doit/pro/activity/TaskDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lim/doit/pro/ui/component/SelectTagsDialog;-><init>(Landroid/app/Activity;)V

    .line 1532
    .local v0, "dialog":Lim/doit/pro/ui/component/SelectTagsDialog;
    new-instance v1, Lim/doit/pro/activity/TaskDetailFragment$OnTagsClick$1;

    invoke-direct {v1, p0}, Lim/doit/pro/activity/TaskDetailFragment$OnTagsClick$1;-><init>(Lim/doit/pro/activity/TaskDetailFragment$OnTagsClick;)V

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/SelectTagsDialog;->setOnSelectTagFinishListner(Lim/doit/pro/ui/component/SelectTagsDialog$OnSelectTagFinishListner;)V

    .line 1541
    iget-object v1, p0, Lim/doit/pro/activity/TaskDetailFragment$OnTagsClick;->this$0:Lim/doit/pro/activity/TaskDetailFragment;

    invoke-static {v1}, Lim/doit/pro/activity/TaskDetailFragment;->access$0(Lim/doit/pro/activity/TaskDetailFragment;)Lim/doit/pro/model/Task;

    move-result-object v1

    invoke-virtual {v1}, Lim/doit/pro/model/Task;->getTags()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/SelectTagsDialog;->showDialog(Ljava/util/ArrayList;)V

    .line 1542
    return-void
.end method
