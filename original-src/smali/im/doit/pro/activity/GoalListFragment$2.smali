.class Lim/doit/pro/activity/GoalListFragment$2;
.super Ljava/lang/Object;
.source "GoalListFragment.java"

# interfaces
.implements Lim/doit/pro/activity/listview/ListViewAdapter$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/activity/GoalListFragment;->initListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/activity/GoalListFragment;


# direct methods
.method constructor <init>(Lim/doit/pro/activity/GoalListFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lim/doit/pro/activity/GoalListFragment$2;->this$0:Lim/doit/pro/activity/GoalListFragment;

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/view/View;I)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 168
    iget-object v0, p0, Lim/doit/pro/activity/GoalListFragment$2;->this$0:Lim/doit/pro/activity/GoalListFragment;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lim/doit/pro/activity/GoalListFragment;->isAcionModeDone:Z

    .line 169
    iget-object v0, p0, Lim/doit/pro/activity/GoalListFragment$2;->this$0:Lim/doit/pro/activity/GoalListFragment;

    iget-object v0, v0, Lim/doit/pro/activity/GoalListFragment;->mActionMode:Landroid/view/ActionMode;

    if-nez v0, :cond_0

    .line 170
    iget-object v0, p0, Lim/doit/pro/activity/GoalListFragment$2;->this$0:Lim/doit/pro/activity/GoalListFragment;

    iget-object v1, p0, Lim/doit/pro/activity/GoalListFragment$2;->this$0:Lim/doit/pro/activity/GoalListFragment;

    invoke-virtual {v1}, Lim/doit/pro/activity/GoalListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 171
    iget-object v2, p0, Lim/doit/pro/activity/GoalListFragment$2;->this$0:Lim/doit/pro/activity/GoalListFragment;

    invoke-static {v2}, Lim/doit/pro/activity/GoalListFragment;->access$5(Lim/doit/pro/activity/GoalListFragment;)Lim/doit/pro/activity/GoalListFragment$DoitListActionMode;

    move-result-object v2

    .line 170
    invoke-virtual {v1, v2}, Landroid/app/Activity;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v1

    iput-object v1, v0, Lim/doit/pro/activity/GoalListFragment;->mActionMode:Landroid/view/ActionMode;

    .line 177
    :goto_0
    return-void

    .line 174
    :cond_0
    iget-object v0, p0, Lim/doit/pro/activity/GoalListFragment$2;->this$0:Lim/doit/pro/activity/GoalListFragment;

    invoke-static {v0}, Lim/doit/pro/activity/GoalListFragment;->access$5(Lim/doit/pro/activity/GoalListFragment;)Lim/doit/pro/activity/GoalListFragment$DoitListActionMode;

    move-result-object v0

    .line 175
    iget-object v1, p0, Lim/doit/pro/activity/GoalListFragment$2;->this$0:Lim/doit/pro/activity/GoalListFragment;

    iget-object v1, v1, Lim/doit/pro/activity/GoalListFragment;->mActionMode:Landroid/view/ActionMode;

    iget-object v2, p0, Lim/doit/pro/activity/GoalListFragment$2;->this$0:Lim/doit/pro/activity/GoalListFragment;

    iget-object v2, v2, Lim/doit/pro/activity/GoalListFragment;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v2}, Landroid/view/ActionMode;->getMenu()Landroid/view/Menu;

    move-result-object v2

    .line 174
    invoke-static {v0, v1, v2}, Lim/doit/pro/activity/GoalListFragment$DoitListActionMode;->access$1(Lim/doit/pro/activity/GoalListFragment$DoitListActionMode;Landroid/view/ActionMode;Landroid/view/Menu;)V

    goto :goto_0
.end method

.method public onItemUnselected()V
    .locals 3

    .prologue
    .line 160
    iget-object v0, p0, Lim/doit/pro/activity/GoalListFragment$2;->this$0:Lim/doit/pro/activity/GoalListFragment;

    iget-object v0, v0, Lim/doit/pro/activity/GoalListFragment;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lim/doit/pro/activity/GoalListFragment$2;->this$0:Lim/doit/pro/activity/GoalListFragment;

    invoke-static {v0}, Lim/doit/pro/activity/GoalListFragment;->access$5(Lim/doit/pro/activity/GoalListFragment;)Lim/doit/pro/activity/GoalListFragment$DoitListActionMode;

    move-result-object v0

    .line 162
    iget-object v1, p0, Lim/doit/pro/activity/GoalListFragment$2;->this$0:Lim/doit/pro/activity/GoalListFragment;

    iget-object v1, v1, Lim/doit/pro/activity/GoalListFragment;->mActionMode:Landroid/view/ActionMode;

    iget-object v2, p0, Lim/doit/pro/activity/GoalListFragment$2;->this$0:Lim/doit/pro/activity/GoalListFragment;

    iget-object v2, v2, Lim/doit/pro/activity/GoalListFragment;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v2}, Landroid/view/ActionMode;->getMenu()Landroid/view/Menu;

    move-result-object v2

    .line 161
    invoke-static {v0, v1, v2}, Lim/doit/pro/activity/GoalListFragment$DoitListActionMode;->access$1(Lim/doit/pro/activity/GoalListFragment$DoitListActionMode;Landroid/view/ActionMode;Landroid/view/Menu;)V

    .line 164
    :cond_0
    return-void
.end method
