.class Lim/doit/pro/activity/FilterListFragment$1;
.super Ljava/lang/Object;
.source "FilterListFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/activity/FilterListFragment;->initListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/activity/FilterListFragment;


# direct methods
.method constructor <init>(Lim/doit/pro/activity/FilterListFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lim/doit/pro/activity/FilterListFragment$1;->this$0:Lim/doit/pro/activity/FilterListFragment;

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 120
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lim/doit/pro/activity/FilterListFragment$1;->this$0:Lim/doit/pro/activity/FilterListFragment;

    invoke-virtual {v1}, Lim/doit/pro/activity/FilterListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 121
    const-class v2, Lim/doit/pro/activity/FilterViewPagerActivity;

    .line 120
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 122
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "filter"

    iget-object v2, p0, Lim/doit/pro/activity/FilterListFragment$1;->this$0:Lim/doit/pro/activity/FilterListFragment;

    invoke-static {v2}, Lim/doit/pro/activity/FilterListFragment;->access$0(Lim/doit/pro/activity/FilterListFragment;)Lim/doit/pro/activity/FilterListFragment$ListViewAdapter;

    move-result-object v2

    invoke-virtual {v2, p3}, Lim/doit/pro/activity/FilterListFragment$ListViewAdapter;->getItem(I)Lim/doit/pro/model/Filter;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 123
    iget-object v1, p0, Lim/doit/pro/activity/FilterListFragment$1;->this$0:Lim/doit/pro/activity/FilterListFragment;

    invoke-virtual {v1, v0}, Lim/doit/pro/activity/FilterListFragment;->startActivity(Landroid/content/Intent;)V

    .line 124
    return-void
.end method
