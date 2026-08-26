.class Lim/doit/pro/activity/TaskContextListFragment$1;
.super Ljava/lang/Object;
.source "TaskContextListFragment.java"

# interfaces
.implements Lim/doit/pro/activity/listview/ListViewAdapter$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/activity/TaskContextListFragment;->initListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/activity/TaskContextListFragment;


# direct methods
.method constructor <init>(Lim/doit/pro/activity/TaskContextListFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lim/doit/pro/activity/TaskContextListFragment$1;->this$0:Lim/doit/pro/activity/TaskContextListFragment;

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/view/View;I)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 158
    iget-object v0, p0, Lim/doit/pro/activity/TaskContextListFragment$1;->this$0:Lim/doit/pro/activity/TaskContextListFragment;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lim/doit/pro/activity/TaskContextListFragment;->isAcionModeDone:Z

    .line 159
    iget-object v0, p0, Lim/doit/pro/activity/TaskContextListFragment$1;->this$0:Lim/doit/pro/activity/TaskContextListFragment;

    iget-object v0, v0, Lim/doit/pro/activity/TaskContextListFragment;->mActionMode:Landroid/view/ActionMode;

    if-nez v0, :cond_0

    .line 160
    iget-object v0, p0, Lim/doit/pro/activity/TaskContextListFragment$1;->this$0:Lim/doit/pro/activity/TaskContextListFragment;

    iget-object v1, p0, Lim/doit/pro/activity/TaskContextListFragment$1;->this$0:Lim/doit/pro/activity/TaskContextListFragment;

    invoke-virtual {v1}, Lim/doit/pro/activity/TaskContextListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 161
    iget-object v2, p0, Lim/doit/pro/activity/TaskContextListFragment$1;->this$0:Lim/doit/pro/activity/TaskContextListFragment;

    invoke-static {v2}, Lim/doit/pro/activity/TaskContextListFragment;->access$4(Lim/doit/pro/activity/TaskContextListFragment;)Lim/doit/pro/activity/TaskContextListFragment$DoitListActionMode;

    move-result-object v2

    .line 160
    invoke-virtual {v1, v2}, Landroid/app/Activity;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v1

    iput-object v1, v0, Lim/doit/pro/activity/TaskContextListFragment;->mActionMode:Landroid/view/ActionMode;

    .line 167
    :goto_0
    return-void

    .line 164
    :cond_0
    iget-object v0, p0, Lim/doit/pro/activity/TaskContextListFragment$1;->this$0:Lim/doit/pro/activity/TaskContextListFragment;

    invoke-static {v0}, Lim/doit/pro/activity/TaskContextListFragment;->access$4(Lim/doit/pro/activity/TaskContextListFragment;)Lim/doit/pro/activity/TaskContextListFragment$DoitListActionMode;

    move-result-object v0

    .line 165
    iget-object v1, p0, Lim/doit/pro/activity/TaskContextListFragment$1;->this$0:Lim/doit/pro/activity/TaskContextListFragment;

    iget-object v1, v1, Lim/doit/pro/activity/TaskContextListFragment;->mActionMode:Landroid/view/ActionMode;

    iget-object v2, p0, Lim/doit/pro/activity/TaskContextListFragment$1;->this$0:Lim/doit/pro/activity/TaskContextListFragment;

    iget-object v2, v2, Lim/doit/pro/activity/TaskContextListFragment;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v2}, Landroid/view/ActionMode;->getMenu()Landroid/view/Menu;

    move-result-object v2

    .line 164
    invoke-static {v0, v1, v2}, Lim/doit/pro/activity/TaskContextListFragment$DoitListActionMode;->access$1(Lim/doit/pro/activity/TaskContextListFragment$DoitListActionMode;Landroid/view/ActionMode;Landroid/view/Menu;)V

    goto :goto_0
.end method

.method public onItemUnselected()V
    .locals 3

    .prologue
    .line 150
    iget-object v0, p0, Lim/doit/pro/activity/TaskContextListFragment$1;->this$0:Lim/doit/pro/activity/TaskContextListFragment;

    iget-object v0, v0, Lim/doit/pro/activity/TaskContextListFragment;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lim/doit/pro/activity/TaskContextListFragment$1;->this$0:Lim/doit/pro/activity/TaskContextListFragment;

    invoke-static {v0}, Lim/doit/pro/activity/TaskContextListFragment;->access$4(Lim/doit/pro/activity/TaskContextListFragment;)Lim/doit/pro/activity/TaskContextListFragment$DoitListActionMode;

    move-result-object v0

    .line 152
    iget-object v1, p0, Lim/doit/pro/activity/TaskContextListFragment$1;->this$0:Lim/doit/pro/activity/TaskContextListFragment;

    iget-object v1, v1, Lim/doit/pro/activity/TaskContextListFragment;->mActionMode:Landroid/view/ActionMode;

    iget-object v2, p0, Lim/doit/pro/activity/TaskContextListFragment$1;->this$0:Lim/doit/pro/activity/TaskContextListFragment;

    iget-object v2, v2, Lim/doit/pro/activity/TaskContextListFragment;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v2}, Landroid/view/ActionMode;->getMenu()Landroid/view/Menu;

    move-result-object v2

    .line 151
    invoke-static {v0, v1, v2}, Lim/doit/pro/activity/TaskContextListFragment$DoitListActionMode;->access$1(Lim/doit/pro/activity/TaskContextListFragment$DoitListActionMode;Landroid/view/ActionMode;Landroid/view/Menu;)V

    .line 154
    :cond_0
    return-void
.end method
