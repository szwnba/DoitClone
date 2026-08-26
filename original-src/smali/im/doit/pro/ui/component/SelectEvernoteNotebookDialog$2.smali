.class Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog$2;
.super Ljava/lang/Object;
.source "SelectEvernoteNotebookDialog.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog;->initListener()V
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
.field final synthetic this$0:Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog;


# direct methods
.method constructor <init>(Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog$2;->this$0:Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog;

    .line 199
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
    .line 204
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog$2;->this$0:Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog;

    invoke-static {v2}, Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog;->access$1(Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog;)Landroid/widget/ListView;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, p3, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 205
    iget-object v2, p0, Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog$2;->this$0:Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog;

    invoke-static {v2}, Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog;->access$2(Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog$DNotebook;

    .line 206
    .local v1, "notebook":Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog$DNotebook;
    iget-object v3, p0, Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog$2;->this$0:Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog;

    iget-object v2, p0, Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog$2;->this$0:Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog;

    invoke-static {v2}, Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog;->access$2(Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog$DNotebook;

    invoke-virtual {v2}, Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog$DNotebook;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog;->access$4(Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog;Ljava/lang/String;)V

    .line 207
    invoke-virtual {v1}, Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog$DNotebook;->getName()Ljava/lang/String;

    move-result-object v0

    .line 208
    .local v0, "name":Ljava/lang/String;
    iget-object v2, p0, Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog$2;->this$0:Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog;

    invoke-static {v2}, Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog;->access$0(Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lim/doit/pro/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 209
    const/4 v0, 0x0

    .line 211
    :cond_0
    iget-object v2, p0, Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog$2;->this$0:Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog;

    iget-object v3, p0, Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog$2;->this$0:Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog;

    invoke-static {v3}, Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog;->access$0(Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog;->access$5(Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog;Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    return-void
.end method
