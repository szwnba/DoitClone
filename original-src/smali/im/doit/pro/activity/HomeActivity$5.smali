.class Lim/doit/pro/activity/HomeActivity$5;
.super Ljava/lang/Object;
.source "HomeActivity.java"

# interfaces
.implements Lim/doit/pro/ui/component/GroupByDialog$OnGroupByFinishListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/activity/HomeActivity;->showGroupByDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/activity/HomeActivity;


# direct methods
.method constructor <init>(Lim/doit/pro/activity/HomeActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lim/doit/pro/activity/HomeActivity$5;->this$0:Lim/doit/pro/activity/HomeActivity;

    .line 602
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public finish(Lim/doit/pro/model/enums/GroupByType;)V
    .locals 5
    .param p1, "groupby"    # Lim/doit/pro/model/enums/GroupByType;

    .prologue
    .line 606
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->currentBox()Lim/doit/pro/model/Box;

    move-result-object v0

    .line 607
    .local v0, "box":Lim/doit/pro/model/Box;
    invoke-virtual {v0, p1}, Lim/doit/pro/model/Box;->setGroupBy(Lim/doit/pro/model/enums/GroupByType;)V

    .line 608
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v3

    iget-object v3, v3, Lim/doit/pro/db/Persist;->boxDao:Lim/doit/pro/db/persist/BoxDao;

    invoke-virtual {v3, v0}, Lim/doit/pro/db/persist/BoxDao;->updateAndSaveLog(Lim/doit/pro/model/Box;)V

    .line 609
    iget-object v3, p0, Lim/doit/pro/activity/HomeActivity$5;->this$0:Lim/doit/pro/activity/HomeActivity;

    invoke-static {v3}, Lim/doit/pro/activity/HomeActivity;->access$9(Lim/doit/pro/activity/HomeActivity;)Landroid/app/FragmentManager;

    move-result-object v3

    const-string v4, "d_fragment"

    invoke-virtual {v3, v4}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    .line 610
    .local v1, "fragment":Landroid/app/Fragment;
    iget-object v3, p0, Lim/doit/pro/activity/HomeActivity$5;->this$0:Lim/doit/pro/activity/HomeActivity;

    invoke-static {v3, v1}, Lim/doit/pro/activity/HomeActivity;->access$10(Lim/doit/pro/activity/HomeActivity;Landroid/app/Fragment;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v2, v1

    .line 611
    check-cast v2, Lim/doit/pro/activity/TaskListFragment;

    .line 612
    .local v2, "tf":Lim/doit/pro/activity/TaskListFragment;
    invoke-virtual {v2}, Lim/doit/pro/activity/TaskListFragment;->groupBy()V

    .line 614
    .end local v2    # "tf":Lim/doit/pro/activity/TaskListFragment;
    :cond_0
    return-void
.end method
