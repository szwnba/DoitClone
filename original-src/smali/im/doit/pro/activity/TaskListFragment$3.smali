.class Lim/doit/pro/activity/TaskListFragment$3;
.super Ljava/lang/Object;
.source "TaskListFragment.java"

# interfaces
.implements Lim/doit/pro/ui/component/DMessageDialog$OnButtonClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/activity/TaskListFragment;->emptyTasks()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/activity/TaskListFragment;


# direct methods
.method constructor <init>(Lim/doit/pro/activity/TaskListFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lim/doit/pro/activity/TaskListFragment$3;->this$0:Lim/doit/pro/activity/TaskListFragment;

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 143
    iget-object v1, p0, Lim/doit/pro/activity/TaskListFragment$3;->this$0:Lim/doit/pro/activity/TaskListFragment;

    invoke-virtual {v1}, Lim/doit/pro/activity/TaskListFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 144
    const-string v2, "DIALOG_TAG_EMPTY_TASKS"

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 143
    check-cast v0, Lim/doit/pro/ui/component/DMessageDialog;

    .line 145
    .local v0, "dialog":Lim/doit/pro/ui/component/DMessageDialog;
    if-eqz v0, :cond_0

    .line 146
    invoke-virtual {v0}, Lim/doit/pro/ui/component/DMessageDialog;->dismissAllowingStateLoss()V

    .line 148
    :cond_0
    return-void
.end method
