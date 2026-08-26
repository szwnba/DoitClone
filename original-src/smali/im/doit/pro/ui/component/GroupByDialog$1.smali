.class Lim/doit/pro/ui/component/GroupByDialog$1;
.super Ljava/lang/Object;
.source "GroupByDialog.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/ui/component/GroupByDialog;->showDialog(Lim/doit/pro/model/enums/GroupByType;Ljava/util/ArrayList;)V
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
.field final synthetic this$0:Lim/doit/pro/ui/component/GroupByDialog;


# direct methods
.method constructor <init>(Lim/doit/pro/ui/component/GroupByDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lim/doit/pro/ui/component/GroupByDialog$1;->this$0:Lim/doit/pro/ui/component/GroupByDialog;

    .line 63
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
    .line 68
    .local p1, "parentView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lim/doit/pro/ui/component/GroupByDialog$1;->this$0:Lim/doit/pro/ui/component/GroupByDialog;

    iget-object v0, p0, Lim/doit/pro/ui/component/GroupByDialog$1;->this$0:Lim/doit/pro/ui/component/GroupByDialog;

    invoke-static {v0}, Lim/doit/pro/ui/component/GroupByDialog;->access$2(Lim/doit/pro/ui/component/GroupByDialog;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lim/doit/pro/model/enums/GroupByType;

    invoke-static {v1, v0}, Lim/doit/pro/ui/component/GroupByDialog;->access$0(Lim/doit/pro/ui/component/GroupByDialog;Lim/doit/pro/model/enums/GroupByType;)V

    .line 69
    iget-object v0, p0, Lim/doit/pro/ui/component/GroupByDialog$1;->this$0:Lim/doit/pro/ui/component/GroupByDialog;

    invoke-static {v0}, Lim/doit/pro/ui/component/GroupByDialog;->access$5(Lim/doit/pro/ui/component/GroupByDialog;)Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p3, v1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 70
    iget-object v0, p0, Lim/doit/pro/ui/component/GroupByDialog$1;->this$0:Lim/doit/pro/ui/component/GroupByDialog;

    invoke-static {v0}, Lim/doit/pro/ui/component/GroupByDialog;->access$6(Lim/doit/pro/ui/component/GroupByDialog;)Lim/doit/pro/ui/component/GroupByDialog$OnGroupByFinishListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lim/doit/pro/ui/component/GroupByDialog$1;->this$0:Lim/doit/pro/ui/component/GroupByDialog;

    invoke-static {v0}, Lim/doit/pro/ui/component/GroupByDialog;->access$6(Lim/doit/pro/ui/component/GroupByDialog;)Lim/doit/pro/ui/component/GroupByDialog$OnGroupByFinishListener;

    move-result-object v0

    iget-object v1, p0, Lim/doit/pro/ui/component/GroupByDialog$1;->this$0:Lim/doit/pro/ui/component/GroupByDialog;

    invoke-static {v1}, Lim/doit/pro/ui/component/GroupByDialog;->access$4(Lim/doit/pro/ui/component/GroupByDialog;)Lim/doit/pro/model/enums/GroupByType;

    move-result-object v1

    invoke-interface {v0, v1}, Lim/doit/pro/ui/component/GroupByDialog$OnGroupByFinishListener;->finish(Lim/doit/pro/model/enums/GroupByType;)V

    .line 73
    :cond_0
    iget-object v0, p0, Lim/doit/pro/ui/component/GroupByDialog$1;->this$0:Lim/doit/pro/ui/component/GroupByDialog;

    invoke-static {v0}, Lim/doit/pro/ui/component/GroupByDialog;->access$7(Lim/doit/pro/ui/component/GroupByDialog;)V

    .line 74
    return-void
.end method
