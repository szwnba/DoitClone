.class Lim/doit/pro/ui/component/SelectPriorityDialog$1;
.super Ljava/lang/Object;
.source "SelectPriorityDialog.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/ui/component/SelectPriorityDialog;->showDialog(I)V
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
.field final synthetic this$0:Lim/doit/pro/ui/component/SelectPriorityDialog;


# direct methods
.method constructor <init>(Lim/doit/pro/ui/component/SelectPriorityDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lim/doit/pro/ui/component/SelectPriorityDialog$1;->this$0:Lim/doit/pro/ui/component/SelectPriorityDialog;

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
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
    .line 71
    .local p1, "parentView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lim/doit/pro/ui/component/SelectPriorityDialog$1;->this$0:Lim/doit/pro/ui/component/SelectPriorityDialog;

    iget-object v0, p0, Lim/doit/pro/ui/component/SelectPriorityDialog$1;->this$0:Lim/doit/pro/ui/component/SelectPriorityDialog;

    invoke-static {v0}, Lim/doit/pro/ui/component/SelectPriorityDialog;->access$1(Lim/doit/pro/ui/component/SelectPriorityDialog;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v1, v0}, Lim/doit/pro/ui/component/SelectPriorityDialog;->access$0(Lim/doit/pro/ui/component/SelectPriorityDialog;I)V

    .line 72
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectPriorityDialog$1;->this$0:Lim/doit/pro/ui/component/SelectPriorityDialog;

    invoke-static {v0}, Lim/doit/pro/ui/component/SelectPriorityDialog;->access$4(Lim/doit/pro/ui/component/SelectPriorityDialog;)Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p3, v1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 73
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectPriorityDialog$1;->this$0:Lim/doit/pro/ui/component/SelectPriorityDialog;

    invoke-static {v0}, Lim/doit/pro/ui/component/SelectPriorityDialog;->access$5(Lim/doit/pro/ui/component/SelectPriorityDialog;)Lim/doit/pro/ui/component/SelectPriorityDialog$OnPriorityFinishListner;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectPriorityDialog$1;->this$0:Lim/doit/pro/ui/component/SelectPriorityDialog;

    invoke-static {v0}, Lim/doit/pro/ui/component/SelectPriorityDialog;->access$5(Lim/doit/pro/ui/component/SelectPriorityDialog;)Lim/doit/pro/ui/component/SelectPriorityDialog$OnPriorityFinishListner;

    move-result-object v0

    iget-object v1, p0, Lim/doit/pro/ui/component/SelectPriorityDialog$1;->this$0:Lim/doit/pro/ui/component/SelectPriorityDialog;

    invoke-static {v1}, Lim/doit/pro/ui/component/SelectPriorityDialog;->access$3(Lim/doit/pro/ui/component/SelectPriorityDialog;)I

    move-result v1

    invoke-interface {v0, v1}, Lim/doit/pro/ui/component/SelectPriorityDialog$OnPriorityFinishListner;->finish(I)V

    .line 76
    :cond_0
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectPriorityDialog$1;->this$0:Lim/doit/pro/ui/component/SelectPriorityDialog;

    invoke-static {v0}, Lim/doit/pro/ui/component/SelectPriorityDialog;->access$6(Lim/doit/pro/ui/component/SelectPriorityDialog;)V

    .line 77
    return-void
.end method
