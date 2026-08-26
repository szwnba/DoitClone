.class Lim/doit/pro/activity/TaskContextListFragment$DoitListActionMode;
.super Ljava/lang/Object;
.source "TaskContextListFragment.java"

# interfaces
.implements Landroid/view/ActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/activity/TaskContextListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DoitListActionMode"
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/activity/TaskContextListFragment;


# direct methods
.method private constructor <init>(Lim/doit/pro/activity/TaskContextListFragment;)V
    .locals 0

    .prologue
    .line 237
    iput-object p1, p0, Lim/doit/pro/activity/TaskContextListFragment$DoitListActionMode;->this$0:Lim/doit/pro/activity/TaskContextListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lim/doit/pro/activity/TaskContextListFragment;Lim/doit/pro/activity/TaskContextListFragment$DoitListActionMode;)V
    .locals 0

    .prologue
    .line 237
    invoke-direct {p0, p1}, Lim/doit/pro/activity/TaskContextListFragment$DoitListActionMode;-><init>(Lim/doit/pro/activity/TaskContextListFragment;)V

    return-void
.end method

.method static synthetic access$1(Lim/doit/pro/activity/TaskContextListFragment$DoitListActionMode;Landroid/view/ActionMode;Landroid/view/Menu;)V
    .locals 0

    .prologue
    .line 244
    invoke-direct {p0, p1, p2}, Lim/doit/pro/activity/TaskContextListFragment$DoitListActionMode;->onRefreshContextualActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)V

    return-void
.end method

.method private onRefreshContextualActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)V
    .locals 2
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 245
    iget-object v0, p0, Lim/doit/pro/activity/TaskContextListFragment$DoitListActionMode;->this$0:Lim/doit/pro/activity/TaskContextListFragment;

    invoke-static {v0}, Lim/doit/pro/activity/TaskContextListFragment;->access$0(Lim/doit/pro/activity/TaskContextListFragment;)Lim/doit/pro/activity/listview/ListViewAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lim/doit/pro/activity/listview/ListViewAdapter;->getSelectedCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 246
    iget-object v0, p0, Lim/doit/pro/activity/TaskContextListFragment$DoitListActionMode;->this$0:Lim/doit/pro/activity/TaskContextListFragment;

    invoke-virtual {v0}, Lim/doit/pro/activity/TaskContextListFragment;->finishActionMode()V

    .line 255
    :goto_0
    return-void

    .line 249
    :cond_0
    iget-object v0, p0, Lim/doit/pro/activity/TaskContextListFragment$DoitListActionMode;->this$0:Lim/doit/pro/activity/TaskContextListFragment;

    invoke-static {v0}, Lim/doit/pro/activity/TaskContextListFragment;->access$3(Lim/doit/pro/activity/TaskContextListFragment;)V

    .line 250
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lim/doit/pro/activity/TaskContextListFragment$DoitListActionMode;->this$0:Lim/doit/pro/activity/TaskContextListFragment;

    invoke-static {v1}, Lim/doit/pro/activity/TaskContextListFragment;->access$0(Lim/doit/pro/activity/TaskContextListFragment;)Lim/doit/pro/activity/listview/ListViewAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lim/doit/pro/activity/listview/ListViewAdapter;->getSelectedCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    .line 251
    invoke-interface {p2}, Landroid/view/Menu;->clear()V

    .line 252
    invoke-virtual {p1}, Landroid/view/ActionMode;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 253
    const v1, 0x7f0e0002

    .line 252
    invoke-virtual {v0, v1, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 254
    iget-object v0, p0, Lim/doit/pro/activity/TaskContextListFragment$DoitListActionMode;->this$0:Lim/doit/pro/activity/TaskContextListFragment;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lim/doit/pro/activity/TaskContextListFragment;->isAcionModeDone:Z

    goto :goto_0
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 262
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0b0211

    if-ne v0, v1, :cond_0

    .line 263
    iget-object v0, p0, Lim/doit/pro/activity/TaskContextListFragment$DoitListActionMode;->this$0:Lim/doit/pro/activity/TaskContextListFragment;

    invoke-static {v0}, Lim/doit/pro/activity/TaskContextListFragment;->access$0(Lim/doit/pro/activity/TaskContextListFragment;)Lim/doit/pro/activity/listview/ListViewAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lim/doit/pro/activity/listview/ListViewAdapter;->trashItems()V

    .line 264
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    .line 265
    const/4 v0, 0x1

    .line 267
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 240
    invoke-direct {p0, p1, p2}, Lim/doit/pro/activity/TaskContextListFragment$DoitListActionMode;->onRefreshContextualActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)V

    .line 241
    const/4 v0, 0x1

    return v0
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 2
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    .line 271
    iget-object v0, p0, Lim/doit/pro/activity/TaskContextListFragment$DoitListActionMode;->this$0:Lim/doit/pro/activity/TaskContextListFragment;

    const/4 v1, 0x0

    iput-object v1, v0, Lim/doit/pro/activity/TaskContextListFragment;->mActionMode:Landroid/view/ActionMode;

    .line 272
    iget-object v0, p0, Lim/doit/pro/activity/TaskContextListFragment$DoitListActionMode;->this$0:Lim/doit/pro/activity/TaskContextListFragment;

    iget-boolean v0, v0, Lim/doit/pro/activity/TaskContextListFragment;->isAcionModeDone:Z

    if-eqz v0, :cond_0

    .line 273
    iget-object v0, p0, Lim/doit/pro/activity/TaskContextListFragment$DoitListActionMode;->this$0:Lim/doit/pro/activity/TaskContextListFragment;

    invoke-static {v0}, Lim/doit/pro/activity/TaskContextListFragment;->access$0(Lim/doit/pro/activity/TaskContextListFragment;)Lim/doit/pro/activity/listview/ListViewAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lim/doit/pro/activity/listview/ListViewAdapter;->onItemSelectedDone()V

    .line 275
    :cond_0
    iget-object v0, p0, Lim/doit/pro/activity/TaskContextListFragment$DoitListActionMode;->this$0:Lim/doit/pro/activity/TaskContextListFragment;

    invoke-static {v0}, Lim/doit/pro/activity/TaskContextListFragment;->access$3(Lim/doit/pro/activity/TaskContextListFragment;)V

    .line 276
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 258
    const/4 v0, 0x0

    return v0
.end method
