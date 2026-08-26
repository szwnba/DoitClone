.class Lim/doit/pro/activity/ProjectListFragment$2;
.super Ljava/lang/Object;
.source "ProjectListFragment.java"

# interfaces
.implements Lim/doit/pro/activity/listview/ListViewAdapter$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/activity/ProjectListFragment;->initListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/activity/ProjectListFragment;


# direct methods
.method constructor <init>(Lim/doit/pro/activity/ProjectListFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lim/doit/pro/activity/ProjectListFragment$2;->this$0:Lim/doit/pro/activity/ProjectListFragment;

    .line 243
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/view/View;I)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 255
    iget-object v0, p0, Lim/doit/pro/activity/ProjectListFragment$2;->this$0:Lim/doit/pro/activity/ProjectListFragment;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lim/doit/pro/activity/ProjectListFragment;->isAcionModeDone:Z

    .line 256
    iget-object v0, p0, Lim/doit/pro/activity/ProjectListFragment$2;->this$0:Lim/doit/pro/activity/ProjectListFragment;

    iget-object v0, v0, Lim/doit/pro/activity/ProjectListFragment;->mActionMode:Landroid/view/ActionMode;

    if-nez v0, :cond_0

    .line 257
    iget-object v0, p0, Lim/doit/pro/activity/ProjectListFragment$2;->this$0:Lim/doit/pro/activity/ProjectListFragment;

    iget-object v1, p0, Lim/doit/pro/activity/ProjectListFragment$2;->this$0:Lim/doit/pro/activity/ProjectListFragment;

    invoke-virtual {v1}, Lim/doit/pro/activity/ProjectListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 258
    iget-object v2, p0, Lim/doit/pro/activity/ProjectListFragment$2;->this$0:Lim/doit/pro/activity/ProjectListFragment;

    invoke-static {v2}, Lim/doit/pro/activity/ProjectListFragment;->access$9(Lim/doit/pro/activity/ProjectListFragment;)Lim/doit/pro/activity/ProjectListFragment$DoitListActionMode;

    move-result-object v2

    .line 257
    invoke-virtual {v1, v2}, Landroid/app/Activity;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v1

    iput-object v1, v0, Lim/doit/pro/activity/ProjectListFragment;->mActionMode:Landroid/view/ActionMode;

    .line 264
    :goto_0
    return-void

    .line 261
    :cond_0
    iget-object v0, p0, Lim/doit/pro/activity/ProjectListFragment$2;->this$0:Lim/doit/pro/activity/ProjectListFragment;

    invoke-static {v0}, Lim/doit/pro/activity/ProjectListFragment;->access$9(Lim/doit/pro/activity/ProjectListFragment;)Lim/doit/pro/activity/ProjectListFragment$DoitListActionMode;

    move-result-object v0

    .line 262
    iget-object v1, p0, Lim/doit/pro/activity/ProjectListFragment$2;->this$0:Lim/doit/pro/activity/ProjectListFragment;

    iget-object v1, v1, Lim/doit/pro/activity/ProjectListFragment;->mActionMode:Landroid/view/ActionMode;

    iget-object v2, p0, Lim/doit/pro/activity/ProjectListFragment$2;->this$0:Lim/doit/pro/activity/ProjectListFragment;

    iget-object v2, v2, Lim/doit/pro/activity/ProjectListFragment;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v2}, Landroid/view/ActionMode;->getMenu()Landroid/view/Menu;

    move-result-object v2

    .line 261
    invoke-static {v0, v1, v2}, Lim/doit/pro/activity/ProjectListFragment$DoitListActionMode;->access$1(Lim/doit/pro/activity/ProjectListFragment$DoitListActionMode;Landroid/view/ActionMode;Landroid/view/Menu;)V

    goto :goto_0
.end method

.method public onItemUnselected()V
    .locals 3

    .prologue
    .line 247
    iget-object v0, p0, Lim/doit/pro/activity/ProjectListFragment$2;->this$0:Lim/doit/pro/activity/ProjectListFragment;

    iget-object v0, v0, Lim/doit/pro/activity/ProjectListFragment;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lim/doit/pro/activity/ProjectListFragment$2;->this$0:Lim/doit/pro/activity/ProjectListFragment;

    invoke-static {v0}, Lim/doit/pro/activity/ProjectListFragment;->access$9(Lim/doit/pro/activity/ProjectListFragment;)Lim/doit/pro/activity/ProjectListFragment$DoitListActionMode;

    move-result-object v0

    .line 249
    iget-object v1, p0, Lim/doit/pro/activity/ProjectListFragment$2;->this$0:Lim/doit/pro/activity/ProjectListFragment;

    iget-object v1, v1, Lim/doit/pro/activity/ProjectListFragment;->mActionMode:Landroid/view/ActionMode;

    iget-object v2, p0, Lim/doit/pro/activity/ProjectListFragment$2;->this$0:Lim/doit/pro/activity/ProjectListFragment;

    iget-object v2, v2, Lim/doit/pro/activity/ProjectListFragment;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v2}, Landroid/view/ActionMode;->getMenu()Landroid/view/Menu;

    move-result-object v2

    .line 248
    invoke-static {v0, v1, v2}, Lim/doit/pro/activity/ProjectListFragment$DoitListActionMode;->access$1(Lim/doit/pro/activity/ProjectListFragment$DoitListActionMode;Landroid/view/ActionMode;Landroid/view/Menu;)V

    .line 251
    :cond_0
    return-void
.end method
