.class Lim/doit/pro/ui/component/TagFilterDialog$1;
.super Ljava/lang/Object;
.source "TagFilterDialog.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/ui/component/TagFilterDialog;
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
.field final synthetic this$0:Lim/doit/pro/ui/component/TagFilterDialog;


# direct methods
.method constructor <init>(Lim/doit/pro/ui/component/TagFilterDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lim/doit/pro/ui/component/TagFilterDialog$1;->this$0:Lim/doit/pro/ui/component/TagFilterDialog;

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
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
    .local p1, "parentView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 101
    if-nez p3, :cond_1

    .line 102
    iget-object v1, p0, Lim/doit/pro/ui/component/TagFilterDialog$1;->this$0:Lim/doit/pro/ui/component/TagFilterDialog;

    invoke-static {v1}, Lim/doit/pro/ui/component/TagFilterDialog;->access$0(Lim/doit/pro/ui/component/TagFilterDialog;)Lim/doit/pro/ui/component/TagFilterDialog$OnTagFilterFinishListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 103
    iget-object v1, p0, Lim/doit/pro/ui/component/TagFilterDialog$1;->this$0:Lim/doit/pro/ui/component/TagFilterDialog;

    invoke-static {v1}, Lim/doit/pro/ui/component/TagFilterDialog;->access$0(Lim/doit/pro/ui/component/TagFilterDialog;)Lim/doit/pro/ui/component/TagFilterDialog$OnTagFilterFinishListener;

    move-result-object v1

    invoke-interface {v1}, Lim/doit/pro/ui/component/TagFilterDialog$OnTagFilterFinishListener;->selectAllTags()V

    .line 105
    :cond_0
    iget-object v1, p0, Lim/doit/pro/ui/component/TagFilterDialog$1;->this$0:Lim/doit/pro/ui/component/TagFilterDialog;

    invoke-static {v1}, Lim/doit/pro/ui/component/TagFilterDialog;->access$1(Lim/doit/pro/ui/component/TagFilterDialog;)V

    .line 129
    :goto_0
    return-void

    .line 108
    :cond_1
    if-ne p3, v3, :cond_3

    .line 109
    iget-object v1, p0, Lim/doit/pro/ui/component/TagFilterDialog$1;->this$0:Lim/doit/pro/ui/component/TagFilterDialog;

    invoke-static {v1}, Lim/doit/pro/ui/component/TagFilterDialog;->access$0(Lim/doit/pro/ui/component/TagFilterDialog;)Lim/doit/pro/ui/component/TagFilterDialog$OnTagFilterFinishListener;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 110
    iget-object v1, p0, Lim/doit/pro/ui/component/TagFilterDialog$1;->this$0:Lim/doit/pro/ui/component/TagFilterDialog;

    invoke-static {v1}, Lim/doit/pro/ui/component/TagFilterDialog;->access$0(Lim/doit/pro/ui/component/TagFilterDialog;)Lim/doit/pro/ui/component/TagFilterDialog$OnTagFilterFinishListener;

    move-result-object v1

    invoke-interface {v1}, Lim/doit/pro/ui/component/TagFilterDialog$OnTagFilterFinishListener;->selectUntagged()V

    .line 112
    :cond_2
    iget-object v1, p0, Lim/doit/pro/ui/component/TagFilterDialog$1;->this$0:Lim/doit/pro/ui/component/TagFilterDialog;

    invoke-static {v1}, Lim/doit/pro/ui/component/TagFilterDialog;->access$1(Lim/doit/pro/ui/component/TagFilterDialog;)V

    goto :goto_0

    .line 115
    :cond_3
    iget-object v1, p0, Lim/doit/pro/ui/component/TagFilterDialog$1;->this$0:Lim/doit/pro/ui/component/TagFilterDialog;

    invoke-static {v1}, Lim/doit/pro/ui/component/TagFilterDialog;->access$2(Lim/doit/pro/ui/component/TagFilterDialog;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 116
    .local v0, "tag":Ljava/lang/String;
    iget-object v1, p0, Lim/doit/pro/ui/component/TagFilterDialog$1;->this$0:Lim/doit/pro/ui/component/TagFilterDialog;

    invoke-static {v1}, Lim/doit/pro/ui/component/TagFilterDialog;->access$3(Lim/doit/pro/ui/component/TagFilterDialog;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 117
    iget-object v1, p0, Lim/doit/pro/ui/component/TagFilterDialog$1;->this$0:Lim/doit/pro/ui/component/TagFilterDialog;

    invoke-static {v1}, Lim/doit/pro/ui/component/TagFilterDialog;->access$3(Lim/doit/pro/ui/component/TagFilterDialog;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    :goto_1
    iget-object v1, p0, Lim/doit/pro/ui/component/TagFilterDialog$1;->this$0:Lim/doit/pro/ui/component/TagFilterDialog;

    invoke-static {v1}, Lim/doit/pro/ui/component/TagFilterDialog;->access$3(Lim/doit/pro/ui/component/TagFilterDialog;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v1}, Lim/doit/pro/utils/CollectionUtils;->isEmpty(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 122
    iget-object v1, p0, Lim/doit/pro/ui/component/TagFilterDialog$1;->this$0:Lim/doit/pro/ui/component/TagFilterDialog;

    invoke-static {v1, v3}, Lim/doit/pro/ui/component/TagFilterDialog;->access$4(Lim/doit/pro/ui/component/TagFilterDialog;Z)V

    .line 123
    iget-object v1, p0, Lim/doit/pro/ui/component/TagFilterDialog$1;->this$0:Lim/doit/pro/ui/component/TagFilterDialog;

    invoke-static {v1, v2}, Lim/doit/pro/ui/component/TagFilterDialog;->access$5(Lim/doit/pro/ui/component/TagFilterDialog;Z)V

    .line 128
    :goto_2
    iget-object v1, p0, Lim/doit/pro/ui/component/TagFilterDialog$1;->this$0:Lim/doit/pro/ui/component/TagFilterDialog;

    invoke-static {v1}, Lim/doit/pro/ui/component/TagFilterDialog;->access$6(Lim/doit/pro/ui/component/TagFilterDialog;)Lim/doit/pro/ui/component/TagFilterDialog$ListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lim/doit/pro/ui/component/TagFilterDialog$ListAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 119
    :cond_4
    iget-object v1, p0, Lim/doit/pro/ui/component/TagFilterDialog$1;->this$0:Lim/doit/pro/ui/component/TagFilterDialog;

    invoke-static {v1}, Lim/doit/pro/ui/component/TagFilterDialog;->access$3(Lim/doit/pro/ui/component/TagFilterDialog;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 125
    :cond_5
    iget-object v1, p0, Lim/doit/pro/ui/component/TagFilterDialog$1;->this$0:Lim/doit/pro/ui/component/TagFilterDialog;

    invoke-static {v1, v2}, Lim/doit/pro/ui/component/TagFilterDialog;->access$4(Lim/doit/pro/ui/component/TagFilterDialog;Z)V

    .line 126
    iget-object v1, p0, Lim/doit/pro/ui/component/TagFilterDialog$1;->this$0:Lim/doit/pro/ui/component/TagFilterDialog;

    invoke-static {v1, v2}, Lim/doit/pro/ui/component/TagFilterDialog;->access$5(Lim/doit/pro/ui/component/TagFilterDialog;Z)V

    goto :goto_2
.end method
