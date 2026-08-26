.class Lim/doit/pro/activity/GoalListFragment$DoitListActionMode;
.super Ljava/lang/Object;
.source "GoalListFragment.java"

# interfaces
.implements Landroid/view/ActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/activity/GoalListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DoitListActionMode"
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/activity/GoalListFragment;


# direct methods
.method private constructor <init>(Lim/doit/pro/activity/GoalListFragment;)V
    .locals 0

    .prologue
    .line 242
    iput-object p1, p0, Lim/doit/pro/activity/GoalListFragment$DoitListActionMode;->this$0:Lim/doit/pro/activity/GoalListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lim/doit/pro/activity/GoalListFragment;Lim/doit/pro/activity/GoalListFragment$DoitListActionMode;)V
    .locals 0

    .prologue
    .line 242
    invoke-direct {p0, p1}, Lim/doit/pro/activity/GoalListFragment$DoitListActionMode;-><init>(Lim/doit/pro/activity/GoalListFragment;)V

    return-void
.end method

.method static synthetic access$1(Lim/doit/pro/activity/GoalListFragment$DoitListActionMode;Landroid/view/ActionMode;Landroid/view/Menu;)V
    .locals 0

    .prologue
    .line 249
    invoke-direct {p0, p1, p2}, Lim/doit/pro/activity/GoalListFragment$DoitListActionMode;->onRefreshContextualActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)V

    return-void
.end method

.method private onRefreshContextualActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)V
    .locals 2
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 250
    iget-object v0, p0, Lim/doit/pro/activity/GoalListFragment$DoitListActionMode;->this$0:Lim/doit/pro/activity/GoalListFragment;

    invoke-static {v0}, Lim/doit/pro/activity/GoalListFragment;->access$1(Lim/doit/pro/activity/GoalListFragment;)Lim/doit/pro/activity/GoalListFragment$GoalListViewAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lim/doit/pro/activity/GoalListFragment$GoalListViewAdapter;->getSelectedCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 251
    iget-object v0, p0, Lim/doit/pro/activity/GoalListFragment$DoitListActionMode;->this$0:Lim/doit/pro/activity/GoalListFragment;

    invoke-virtual {v0}, Lim/doit/pro/activity/GoalListFragment;->finishActionMode()V

    .line 260
    :goto_0
    return-void

    .line 254
    :cond_0
    iget-object v0, p0, Lim/doit/pro/activity/GoalListFragment$DoitListActionMode;->this$0:Lim/doit/pro/activity/GoalListFragment;

    invoke-static {v0}, Lim/doit/pro/activity/GoalListFragment;->access$4(Lim/doit/pro/activity/GoalListFragment;)V

    .line 255
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lim/doit/pro/activity/GoalListFragment$DoitListActionMode;->this$0:Lim/doit/pro/activity/GoalListFragment;

    invoke-static {v1}, Lim/doit/pro/activity/GoalListFragment;->access$1(Lim/doit/pro/activity/GoalListFragment;)Lim/doit/pro/activity/GoalListFragment$GoalListViewAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lim/doit/pro/activity/GoalListFragment$GoalListViewAdapter;->getSelectedCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    .line 256
    invoke-interface {p2}, Landroid/view/Menu;->clear()V

    .line 257
    invoke-virtual {p1}, Landroid/view/ActionMode;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 258
    const v1, 0x7f0e0002

    .line 257
    invoke-virtual {v0, v1, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 259
    iget-object v0, p0, Lim/doit/pro/activity/GoalListFragment$DoitListActionMode;->this$0:Lim/doit/pro/activity/GoalListFragment;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lim/doit/pro/activity/GoalListFragment;->isAcionModeDone:Z

    goto :goto_0
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 267
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0b0211

    if-ne v0, v1, :cond_0

    .line 268
    iget-object v0, p0, Lim/doit/pro/activity/GoalListFragment$DoitListActionMode;->this$0:Lim/doit/pro/activity/GoalListFragment;

    invoke-static {v0}, Lim/doit/pro/activity/GoalListFragment;->access$1(Lim/doit/pro/activity/GoalListFragment;)Lim/doit/pro/activity/GoalListFragment$GoalListViewAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lim/doit/pro/activity/GoalListFragment$GoalListViewAdapter;->trashItems()V

    .line 269
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    .line 270
    const/4 v0, 0x1

    .line 272
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
    .line 245
    invoke-direct {p0, p1, p2}, Lim/doit/pro/activity/GoalListFragment$DoitListActionMode;->onRefreshContextualActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)V

    .line 246
    const/4 v0, 0x1

    return v0
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 2
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    .line 276
    iget-object v0, p0, Lim/doit/pro/activity/GoalListFragment$DoitListActionMode;->this$0:Lim/doit/pro/activity/GoalListFragment;

    const/4 v1, 0x0

    iput-object v1, v0, Lim/doit/pro/activity/GoalListFragment;->mActionMode:Landroid/view/ActionMode;

    .line 277
    iget-object v0, p0, Lim/doit/pro/activity/GoalListFragment$DoitListActionMode;->this$0:Lim/doit/pro/activity/GoalListFragment;

    iget-boolean v0, v0, Lim/doit/pro/activity/GoalListFragment;->isAcionModeDone:Z

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lim/doit/pro/activity/GoalListFragment$DoitListActionMode;->this$0:Lim/doit/pro/activity/GoalListFragment;

    invoke-static {v0}, Lim/doit/pro/activity/GoalListFragment;->access$1(Lim/doit/pro/activity/GoalListFragment;)Lim/doit/pro/activity/GoalListFragment$GoalListViewAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lim/doit/pro/activity/GoalListFragment$GoalListViewAdapter;->onItemSelectedDone()V

    .line 280
    :cond_0
    iget-object v0, p0, Lim/doit/pro/activity/GoalListFragment$DoitListActionMode;->this$0:Lim/doit/pro/activity/GoalListFragment;

    invoke-static {v0}, Lim/doit/pro/activity/GoalListFragment;->access$4(Lim/doit/pro/activity/GoalListFragment;)V

    .line 281
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 263
    const/4 v0, 0x0

    return v0
.end method
