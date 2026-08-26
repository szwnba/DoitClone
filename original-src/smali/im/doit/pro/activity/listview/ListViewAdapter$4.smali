.class Lim/doit/pro/activity/listview/ListViewAdapter$4;
.super Ljava/lang/Object;
.source "ListViewAdapter.java"

# interfaces
.implements Lim/doit/pro/activity/listview/ViewHolder$OnUncompleteClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/activity/listview/ListViewAdapter;->onUncompleteClickListener()Lim/doit/pro/activity/listview/ViewHolder$OnUncompleteClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/activity/listview/ListViewAdapter;


# direct methods
.method constructor <init>(Lim/doit/pro/activity/listview/ListViewAdapter;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lim/doit/pro/activity/listview/ListViewAdapter$4;->this$0:Lim/doit/pro/activity/listview/ListViewAdapter;

    .line 716
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public uncomplete(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 720
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lim/doit/pro/model/BaseEntityWithPos;

    .line 721
    .local v0, "entity":Lim/doit/pro/model/BaseEntityWithPos;
    if-eqz v0, :cond_1

    .line 722
    invoke-virtual {v0}, Lim/doit/pro/model/BaseEntityWithPos;->isTask()Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v3, v0

    .line 723
    check-cast v3, Lim/doit/pro/model/Task;

    .line 724
    .local v3, "task":Lim/doit/pro/model/Task;
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v4

    iget-object v4, v4, Lim/doit/pro/db/Persist;->taskDao:Lim/doit/pro/db/persist/TaskDao;

    invoke-virtual {v4, v3}, Lim/doit/pro/db/persist/TaskDao;->uncomplete(Lim/doit/pro/model/Task;)V

    .line 736
    .end local v3    # "task":Lim/doit/pro/model/Task;
    :cond_0
    :goto_0
    iget-object v4, p0, Lim/doit/pro/activity/listview/ListViewAdapter$4;->this$0:Lim/doit/pro/activity/listview/ListViewAdapter;

    invoke-static {v4}, Lim/doit/pro/activity/listview/ListViewAdapter;->access$3(Lim/doit/pro/activity/listview/ListViewAdapter;)V

    .line 738
    :cond_1
    :goto_1
    return-void

    .line 725
    :cond_2
    invoke-virtual {v0}, Lim/doit/pro/model/BaseEntityWithPos;->isProject()Z

    move-result v4

    if-eqz v4, :cond_3

    move-object v2, v0

    .line 726
    check-cast v2, Lim/doit/pro/model/Project;

    .line 727
    .local v2, "project":Lim/doit/pro/model/Project;
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v4

    iget-object v4, v4, Lim/doit/pro/db/Persist;->projectDao:Lim/doit/pro/db/persist/ProjectDao;

    invoke-virtual {v4, v2}, Lim/doit/pro/db/persist/ProjectDao;->uncomplete(Lim/doit/pro/model/Project;)V

    goto :goto_0

    .line 728
    .end local v2    # "project":Lim/doit/pro/model/Project;
    :cond_3
    invoke-virtual {v0}, Lim/doit/pro/model/BaseEntityWithPos;->isGoal()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 729
    invoke-static {}, Lim/doit/pro/utils/UserUtils;->isNotPro()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 730
    iget-object v4, p0, Lim/doit/pro/activity/listview/ListViewAdapter$4;->this$0:Lim/doit/pro/activity/listview/ListViewAdapter;

    invoke-static {v4}, Lim/doit/pro/activity/listview/ListViewAdapter;->access$1(Lim/doit/pro/activity/listview/ListViewAdapter;)Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lim/doit/pro/utils/AlertDialogUtils;->showJustForProDialog(Landroid/app/Activity;)Z

    goto :goto_1

    :cond_4
    move-object v1, v0

    .line 733
    check-cast v1, Lim/doit/pro/model/Goal;

    .line 734
    .local v1, "goal":Lim/doit/pro/model/Goal;
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v4

    iget-object v4, v4, Lim/doit/pro/db/Persist;->goalDao:Lim/doit/pro/db/persist/GoalDao;

    invoke-virtual {v4, v1}, Lim/doit/pro/db/persist/GoalDao;->uncomplete(Lim/doit/pro/model/Goal;)V

    goto :goto_0
.end method
