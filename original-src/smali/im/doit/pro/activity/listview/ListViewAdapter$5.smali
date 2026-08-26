.class Lim/doit/pro/activity/listview/ListViewAdapter$5;
.super Ljava/lang/Object;
.source "ListViewAdapter.java"

# interfaces
.implements Lim/doit/pro/activity/listview/ViewHolder$OnCompleteClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/activity/listview/ListViewAdapter;->onCompleteClickListener()Lim/doit/pro/activity/listview/ViewHolder$OnCompleteClickListener;
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
    iput-object p1, p0, Lim/doit/pro/activity/listview/ListViewAdapter$5;->this$0:Lim/doit/pro/activity/listview/ListViewAdapter;

    .line 743
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public complete(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 747
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lim/doit/pro/model/BaseEntityWithPos;

    .line 748
    .local v0, "entity":Lim/doit/pro/model/BaseEntityWithPos;
    if-eqz v0, :cond_1

    .line 749
    invoke-virtual {v0}, Lim/doit/pro/model/BaseEntityWithPos;->isTask()Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v3, v0

    .line 750
    check-cast v3, Lim/doit/pro/model/Task;

    .line 751
    .local v3, "task":Lim/doit/pro/model/Task;
    iget-object v4, p0, Lim/doit/pro/activity/listview/ListViewAdapter$5;->this$0:Lim/doit/pro/activity/listview/ListViewAdapter;

    invoke-static {v4, v3}, Lim/doit/pro/activity/listview/ListViewAdapter;->access$12(Lim/doit/pro/activity/listview/ListViewAdapter;Lim/doit/pro/model/Task;)V

    .line 761
    .end local v3    # "task":Lim/doit/pro/model/Task;
    :cond_0
    iget-object v4, p0, Lim/doit/pro/activity/listview/ListViewAdapter$5;->this$0:Lim/doit/pro/activity/listview/ListViewAdapter;

    invoke-static {v4}, Lim/doit/pro/activity/listview/ListViewAdapter;->access$3(Lim/doit/pro/activity/listview/ListViewAdapter;)V

    .line 763
    :cond_1
    :goto_0
    return-void

    .line 752
    :cond_2
    invoke-virtual {v0}, Lim/doit/pro/model/BaseEntityWithPos;->isProject()Z

    move-result v4

    if-eqz v4, :cond_3

    move-object v2, v0

    .line 753
    check-cast v2, Lim/doit/pro/model/Project;

    .line 754
    .local v2, "project":Lim/doit/pro/model/Project;
    iget-object v4, p0, Lim/doit/pro/activity/listview/ListViewAdapter$5;->this$0:Lim/doit/pro/activity/listview/ListViewAdapter;

    invoke-static {v4, v2}, Lim/doit/pro/activity/listview/ListViewAdapter;->access$13(Lim/doit/pro/activity/listview/ListViewAdapter;Lim/doit/pro/model/Project;)V

    goto :goto_0

    .line 756
    .end local v2    # "project":Lim/doit/pro/model/Project;
    :cond_3
    invoke-virtual {v0}, Lim/doit/pro/model/BaseEntityWithPos;->isGoal()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v1, v0

    .line 757
    check-cast v1, Lim/doit/pro/model/Goal;

    .line 758
    .local v1, "goal":Lim/doit/pro/model/Goal;
    iget-object v4, p0, Lim/doit/pro/activity/listview/ListViewAdapter$5;->this$0:Lim/doit/pro/activity/listview/ListViewAdapter;

    invoke-static {v4, v1}, Lim/doit/pro/activity/listview/ListViewAdapter;->access$14(Lim/doit/pro/activity/listview/ListViewAdapter;Lim/doit/pro/model/Goal;)V

    goto :goto_0
.end method
