.class Lim/doit/pro/activity/listview/ListViewAdapter$9;
.super Ljava/lang/Object;
.source "ListViewAdapter.java"

# interfaces
.implements Lim/doit/pro/activity/listview/ListViewAdapter$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/activity/listview/ListViewAdapter;->initListener()V
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
    iput-object p1, p0, Lim/doit/pro/activity/listview/ListViewAdapter$9;->this$0:Lim/doit/pro/activity/listview/ListViewAdapter;

    .line 854
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/view/View;I)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 866
    iget-object v0, p0, Lim/doit/pro/activity/listview/ListViewAdapter$9;->this$0:Lim/doit/pro/activity/listview/ListViewAdapter;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lim/doit/pro/activity/listview/ListViewAdapter;->isAcionModeDone:Z

    .line 867
    iget-object v0, p0, Lim/doit/pro/activity/listview/ListViewAdapter$9;->this$0:Lim/doit/pro/activity/listview/ListViewAdapter;

    iget-object v0, v0, Lim/doit/pro/activity/listview/ListViewAdapter;->mActionMode:Landroid/view/ActionMode;

    if-nez v0, :cond_0

    .line 868
    iget-object v0, p0, Lim/doit/pro/activity/listview/ListViewAdapter$9;->this$0:Lim/doit/pro/activity/listview/ListViewAdapter;

    iget-object v1, p0, Lim/doit/pro/activity/listview/ListViewAdapter$9;->this$0:Lim/doit/pro/activity/listview/ListViewAdapter;

    invoke-static {v1}, Lim/doit/pro/activity/listview/ListViewAdapter;->access$1(Lim/doit/pro/activity/listview/ListViewAdapter;)Landroid/app/Activity;

    move-result-object v1

    .line 869
    iget-object v2, p0, Lim/doit/pro/activity/listview/ListViewAdapter$9;->this$0:Lim/doit/pro/activity/listview/ListViewAdapter;

    iget-object v2, v2, Lim/doit/pro/activity/listview/ListViewAdapter;->mActionModeCallback:Lim/doit/pro/activity/listview/ListViewAdapter$DoitListActionMode;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v1

    .line 868
    iput-object v1, v0, Lim/doit/pro/activity/listview/ListViewAdapter;->mActionMode:Landroid/view/ActionMode;

    .line 875
    :goto_0
    return-void

    .line 872
    :cond_0
    iget-object v0, p0, Lim/doit/pro/activity/listview/ListViewAdapter$9;->this$0:Lim/doit/pro/activity/listview/ListViewAdapter;

    iget-object v0, v0, Lim/doit/pro/activity/listview/ListViewAdapter;->mActionModeCallback:Lim/doit/pro/activity/listview/ListViewAdapter$DoitListActionMode;

    .line 873
    iget-object v1, p0, Lim/doit/pro/activity/listview/ListViewAdapter$9;->this$0:Lim/doit/pro/activity/listview/ListViewAdapter;

    iget-object v1, v1, Lim/doit/pro/activity/listview/ListViewAdapter;->mActionMode:Landroid/view/ActionMode;

    iget-object v2, p0, Lim/doit/pro/activity/listview/ListViewAdapter$9;->this$0:Lim/doit/pro/activity/listview/ListViewAdapter;

    iget-object v2, v2, Lim/doit/pro/activity/listview/ListViewAdapter;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v2}, Landroid/view/ActionMode;->getMenu()Landroid/view/Menu;

    move-result-object v2

    .line 872
    invoke-static {v0, v1, v2}, Lim/doit/pro/activity/listview/ListViewAdapter$DoitListActionMode;->access$1(Lim/doit/pro/activity/listview/ListViewAdapter$DoitListActionMode;Landroid/view/ActionMode;Landroid/view/Menu;)V

    goto :goto_0
.end method

.method public onItemUnselected()V
    .locals 3

    .prologue
    .line 858
    iget-object v0, p0, Lim/doit/pro/activity/listview/ListViewAdapter$9;->this$0:Lim/doit/pro/activity/listview/ListViewAdapter;

    iget-object v0, v0, Lim/doit/pro/activity/listview/ListViewAdapter;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 859
    iget-object v0, p0, Lim/doit/pro/activity/listview/ListViewAdapter$9;->this$0:Lim/doit/pro/activity/listview/ListViewAdapter;

    iget-object v0, v0, Lim/doit/pro/activity/listview/ListViewAdapter;->mActionModeCallback:Lim/doit/pro/activity/listview/ListViewAdapter$DoitListActionMode;

    .line 860
    iget-object v1, p0, Lim/doit/pro/activity/listview/ListViewAdapter$9;->this$0:Lim/doit/pro/activity/listview/ListViewAdapter;

    iget-object v1, v1, Lim/doit/pro/activity/listview/ListViewAdapter;->mActionMode:Landroid/view/ActionMode;

    iget-object v2, p0, Lim/doit/pro/activity/listview/ListViewAdapter$9;->this$0:Lim/doit/pro/activity/listview/ListViewAdapter;

    iget-object v2, v2, Lim/doit/pro/activity/listview/ListViewAdapter;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v2}, Landroid/view/ActionMode;->getMenu()Landroid/view/Menu;

    move-result-object v2

    .line 859
    invoke-static {v0, v1, v2}, Lim/doit/pro/activity/listview/ListViewAdapter$DoitListActionMode;->access$1(Lim/doit/pro/activity/listview/ListViewAdapter$DoitListActionMode;Landroid/view/ActionMode;Landroid/view/Menu;)V

    .line 862
    :cond_0
    return-void
.end method
