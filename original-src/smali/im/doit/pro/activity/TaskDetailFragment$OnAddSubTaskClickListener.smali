.class Lim/doit/pro/activity/TaskDetailFragment$OnAddSubTaskClickListener;
.super Ljava/lang/Object;
.source "TaskDetailFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/activity/TaskDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnAddSubTaskClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/activity/TaskDetailFragment;


# direct methods
.method private constructor <init>(Lim/doit/pro/activity/TaskDetailFragment;)V
    .locals 0

    .prologue
    .line 1661
    iput-object p1, p0, Lim/doit/pro/activity/TaskDetailFragment$OnAddSubTaskClickListener;->this$0:Lim/doit/pro/activity/TaskDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lim/doit/pro/activity/TaskDetailFragment;Lim/doit/pro/activity/TaskDetailFragment$OnAddSubTaskClickListener;)V
    .locals 0

    .prologue
    .line 1661
    invoke-direct {p0, p1}, Lim/doit/pro/activity/TaskDetailFragment$OnAddSubTaskClickListener;-><init>(Lim/doit/pro/activity/TaskDetailFragment;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1664
    invoke-static {}, Lim/doit/pro/utils/UserUtils;->isNotPro()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1665
    invoke-virtual {p1}, Landroid/view/View;->clearFocus()V

    .line 1666
    iget-object v0, p0, Lim/doit/pro/activity/TaskDetailFragment$OnAddSubTaskClickListener;->this$0:Lim/doit/pro/activity/TaskDetailFragment;

    invoke-virtual {v0}, Lim/doit/pro/activity/TaskDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lim/doit/pro/utils/AlertDialogUtils;->showJustForProDialog(Landroid/app/Activity;)Z

    .line 1669
    :cond_0
    return-void
.end method
