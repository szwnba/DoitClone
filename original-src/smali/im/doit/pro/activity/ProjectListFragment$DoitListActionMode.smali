.class Lim/doit/pro/activity/ProjectListFragment$DoitListActionMode;
.super Ljava/lang/Object;
.source "ProjectListFragment.java"

# interfaces
.implements Landroid/view/ActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/activity/ProjectListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DoitListActionMode"
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/activity/ProjectListFragment;


# direct methods
.method private constructor <init>(Lim/doit/pro/activity/ProjectListFragment;)V
    .locals 0

    .prologue
    .line 330
    iput-object p1, p0, Lim/doit/pro/activity/ProjectListFragment$DoitListActionMode;->this$0:Lim/doit/pro/activity/ProjectListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lim/doit/pro/activity/ProjectListFragment;Lim/doit/pro/activity/ProjectListFragment$DoitListActionMode;)V
    .locals 0

    .prologue
    .line 330
    invoke-direct {p0, p1}, Lim/doit/pro/activity/ProjectListFragment$DoitListActionMode;-><init>(Lim/doit/pro/activity/ProjectListFragment;)V

    return-void
.end method

.method static synthetic access$1(Lim/doit/pro/activity/ProjectListFragment$DoitListActionMode;Landroid/view/ActionMode;Landroid/view/Menu;)V
    .locals 0

    .prologue
    .line 337
    invoke-direct {p0, p1, p2}, Lim/doit/pro/activity/ProjectListFragment$DoitListActionMode;->onRefreshContextualActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)V

    return-void
.end method

.method private onRefreshContextualActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)V
    .locals 9
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 338
    iget-object v5, p0, Lim/doit/pro/activity/ProjectListFragment$DoitListActionMode;->this$0:Lim/doit/pro/activity/ProjectListFragment;

    invoke-static {v5}, Lim/doit/pro/activity/ProjectListFragment;->access$1(Lim/doit/pro/activity/ProjectListFragment;)Lim/doit/pro/activity/ProjectListFragment$ProjectListViewAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lim/doit/pro/activity/ProjectListFragment$ProjectListViewAdapter;->getSelectedCount()I

    move-result v5

    if-nez v5, :cond_0

    .line 339
    iget-object v5, p0, Lim/doit/pro/activity/ProjectListFragment$DoitListActionMode;->this$0:Lim/doit/pro/activity/ProjectListFragment;

    invoke-virtual {v5}, Lim/doit/pro/activity/ProjectListFragment;->finishActionMode()V

    .line 383
    :goto_0
    return-void

    .line 342
    :cond_0
    iget-object v5, p0, Lim/doit/pro/activity/ProjectListFragment$DoitListActionMode;->this$0:Lim/doit/pro/activity/ProjectListFragment;

    invoke-static {v5}, Lim/doit/pro/activity/ProjectListFragment;->access$4(Lim/doit/pro/activity/ProjectListFragment;)V

    .line 343
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lim/doit/pro/activity/ProjectListFragment$DoitListActionMode;->this$0:Lim/doit/pro/activity/ProjectListFragment;

    invoke-static {v6}, Lim/doit/pro/activity/ProjectListFragment;->access$1(Lim/doit/pro/activity/ProjectListFragment;)Lim/doit/pro/activity/ProjectListFragment$ProjectListViewAdapter;

    move-result-object v6

    invoke-virtual {v6}, Lim/doit/pro/activity/ProjectListFragment$ProjectListViewAdapter;->getSelectedCount()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    .line 344
    invoke-interface {p2}, Landroid/view/Menu;->clear()V

    .line 345
    invoke-virtual {p1}, Landroid/view/ActionMode;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v5

    .line 346
    const v6, 0x7f0e0008

    .line 345
    invoke-virtual {v5, v6, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 347
    iget-object v5, p0, Lim/doit/pro/activity/ProjectListFragment$DoitListActionMode;->this$0:Lim/doit/pro/activity/ProjectListFragment;

    invoke-static {v5}, Lim/doit/pro/activity/ProjectListFragment;->access$1(Lim/doit/pro/activity/ProjectListFragment;)Lim/doit/pro/activity/ProjectListFragment$ProjectListViewAdapter;

    move-result-object v5

    .line 348
    invoke-virtual {v5}, Lim/doit/pro/activity/ProjectListFragment$ProjectListViewAdapter;->getSelectedItems()Ljava/util/ArrayList;

    move-result-object v4

    .line 349
    .local v4, "selectedItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/BaseEntityWithPos;>;"
    const v5, 0x7f0b0224

    invoke-interface {p2, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 350
    .local v0, "activateBtn":Landroid/view/MenuItem;
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ne v5, v8, :cond_7

    .line 351
    invoke-interface {v0, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 352
    invoke-interface {v0, v8}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 353
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lim/doit/pro/model/Project;

    .line 354
    .local v2, "project":Lim/doit/pro/model/Project;
    invoke-virtual {v2}, Lim/doit/pro/model/Project;->isActive()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 355
    const v5, 0x7f020071

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 356
    const v5, 0x7f0c0046

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 365
    .end local v2    # "project":Lim/doit/pro/model/Project;
    :goto_1
    iget-object v5, p0, Lim/doit/pro/activity/ProjectListFragment$DoitListActionMode;->this$0:Lim/doit/pro/activity/ProjectListFragment;

    invoke-static {v5}, Lim/doit/pro/activity/ProjectListFragment;->access$0(Lim/doit/pro/activity/ProjectListFragment;)Lim/doit/pro/model/Box;

    move-result-object v5

    invoke-static {v5}, Lim/doit/pro/utils/BoxUtils;->isNotShowSelectContextButton(Lim/doit/pro/model/Box;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 366
    invoke-static {v4}, Lim/doit/pro/utils/BoxUtils;->isNotShowSelectContextButton(Ljava/util/ArrayList;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 367
    :cond_1
    const v5, 0x7f0b0217

    invoke-interface {p2, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 368
    .local v3, "projectBtn":Landroid/view/MenuItem;
    invoke-interface {v3, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 369
    invoke-interface {v3, v7}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 371
    .end local v3    # "projectBtn":Landroid/view/MenuItem;
    :cond_2
    iget-object v5, p0, Lim/doit/pro/activity/ProjectListFragment$DoitListActionMode;->this$0:Lim/doit/pro/activity/ProjectListFragment;

    invoke-static {v5}, Lim/doit/pro/activity/ProjectListFragment;->access$0(Lim/doit/pro/activity/ProjectListFragment;)Lim/doit/pro/model/Box;

    move-result-object v5

    invoke-static {v5}, Lim/doit/pro/utils/BoxUtils;->isNotShowSelectGoalButton(Lim/doit/pro/model/Box;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 372
    const v5, 0x7f0b0216

    invoke-interface {p2, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 373
    .restart local v3    # "projectBtn":Landroid/view/MenuItem;
    invoke-interface {v3, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 374
    invoke-interface {v3, v7}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 376
    .end local v3    # "projectBtn":Landroid/view/MenuItem;
    :cond_3
    iget-object v5, p0, Lim/doit/pro/activity/ProjectListFragment$DoitListActionMode;->this$0:Lim/doit/pro/activity/ProjectListFragment;

    invoke-static {v5}, Lim/doit/pro/activity/ProjectListFragment;->access$0(Lim/doit/pro/activity/ProjectListFragment;)Lim/doit/pro/model/Box;

    move-result-object v5

    invoke-static {v5}, Lim/doit/pro/utils/BoxUtils;->isNotShowDeleteButtonInActionBar(Lim/doit/pro/model/Box;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 377
    invoke-static {v4}, Lim/doit/pro/utils/BoxUtils;->isNotShowDeleteButtonInActionBar(Ljava/util/ArrayList;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 378
    :cond_4
    const v5, 0x7f0b0211

    invoke-interface {p2, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 379
    .local v1, "deleteBtn":Landroid/view/MenuItem;
    invoke-interface {v1, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 380
    invoke-interface {v1, v7}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 382
    .end local v1    # "deleteBtn":Landroid/view/MenuItem;
    :cond_5
    iget-object v5, p0, Lim/doit/pro/activity/ProjectListFragment$DoitListActionMode;->this$0:Lim/doit/pro/activity/ProjectListFragment;

    iput-boolean v8, v5, Lim/doit/pro/activity/ProjectListFragment;->isAcionModeDone:Z

    goto/16 :goto_0

    .line 358
    .restart local v2    # "project":Lim/doit/pro/model/Project;
    :cond_6
    const v5, 0x7f020069

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 359
    const v5, 0x7f0c0045

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_1

    .line 362
    .end local v2    # "project":Lim/doit/pro/model/Project;
    :cond_7
    invoke-interface {v0, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 363
    invoke-interface {v0, v7}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_1
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v1, 0x1

    .line 390
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 391
    .local v0, "id":I
    const v2, 0x7f0b0224

    if-ne v0, v2, :cond_0

    .line 392
    iget-object v2, p0, Lim/doit/pro/activity/ProjectListFragment$DoitListActionMode;->this$0:Lim/doit/pro/activity/ProjectListFragment;

    invoke-static {v2}, Lim/doit/pro/activity/ProjectListFragment;->access$5(Lim/doit/pro/activity/ProjectListFragment;)V

    .line 408
    :goto_0
    return v1

    .line 394
    :cond_0
    const v2, 0x7f0b0213

    if-ne v0, v2, :cond_1

    .line 395
    iget-object v2, p0, Lim/doit/pro/activity/ProjectListFragment$DoitListActionMode;->this$0:Lim/doit/pro/activity/ProjectListFragment;

    invoke-static {v2}, Lim/doit/pro/activity/ProjectListFragment;->access$6(Lim/doit/pro/activity/ProjectListFragment;)V

    goto :goto_0

    .line 397
    :cond_1
    const v2, 0x7f0b0217

    if-ne v0, v2, :cond_2

    .line 398
    iget-object v2, p0, Lim/doit/pro/activity/ProjectListFragment$DoitListActionMode;->this$0:Lim/doit/pro/activity/ProjectListFragment;

    invoke-static {v2}, Lim/doit/pro/activity/ProjectListFragment;->access$7(Lim/doit/pro/activity/ProjectListFragment;)V

    goto :goto_0

    .line 400
    :cond_2
    const v2, 0x7f0b0216

    if-ne v0, v2, :cond_3

    .line 401
    iget-object v2, p0, Lim/doit/pro/activity/ProjectListFragment$DoitListActionMode;->this$0:Lim/doit/pro/activity/ProjectListFragment;

    invoke-static {v2}, Lim/doit/pro/activity/ProjectListFragment;->access$8(Lim/doit/pro/activity/ProjectListFragment;)V

    goto :goto_0

    .line 403
    :cond_3
    const v2, 0x7f0b0211

    if-ne v0, v2, :cond_4

    .line 404
    iget-object v2, p0, Lim/doit/pro/activity/ProjectListFragment$DoitListActionMode;->this$0:Lim/doit/pro/activity/ProjectListFragment;

    invoke-static {v2}, Lim/doit/pro/activity/ProjectListFragment;->access$1(Lim/doit/pro/activity/ProjectListFragment;)Lim/doit/pro/activity/ProjectListFragment$ProjectListViewAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lim/doit/pro/activity/ProjectListFragment$ProjectListViewAdapter;->trashItems()V

    .line 405
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    goto :goto_0

    .line 408
    :cond_4
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 333
    invoke-direct {p0, p1, p2}, Lim/doit/pro/activity/ProjectListFragment$DoitListActionMode;->onRefreshContextualActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)V

    .line 334
    const/4 v0, 0x1

    return v0
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 2
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    .line 412
    iget-object v0, p0, Lim/doit/pro/activity/ProjectListFragment$DoitListActionMode;->this$0:Lim/doit/pro/activity/ProjectListFragment;

    const/4 v1, 0x0

    iput-object v1, v0, Lim/doit/pro/activity/ProjectListFragment;->mActionMode:Landroid/view/ActionMode;

    .line 413
    iget-object v0, p0, Lim/doit/pro/activity/ProjectListFragment$DoitListActionMode;->this$0:Lim/doit/pro/activity/ProjectListFragment;

    iget-boolean v0, v0, Lim/doit/pro/activity/ProjectListFragment;->isAcionModeDone:Z

    if-eqz v0, :cond_0

    .line 414
    iget-object v0, p0, Lim/doit/pro/activity/ProjectListFragment$DoitListActionMode;->this$0:Lim/doit/pro/activity/ProjectListFragment;

    invoke-static {v0}, Lim/doit/pro/activity/ProjectListFragment;->access$1(Lim/doit/pro/activity/ProjectListFragment;)Lim/doit/pro/activity/ProjectListFragment$ProjectListViewAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lim/doit/pro/activity/ProjectListFragment$ProjectListViewAdapter;->onItemSelectedDone()V

    .line 416
    :cond_0
    iget-object v0, p0, Lim/doit/pro/activity/ProjectListFragment$DoitListActionMode;->this$0:Lim/doit/pro/activity/ProjectListFragment;

    invoke-static {v0}, Lim/doit/pro/activity/ProjectListFragment;->access$4(Lim/doit/pro/activity/ProjectListFragment;)V

    .line 417
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 386
    const/4 v0, 0x0

    return v0
.end method
