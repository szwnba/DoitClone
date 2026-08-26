.class Lim/doit/pro/ui/component/SubTaskListItem$5;
.super Ljava/lang/Object;
.source "SubTaskListItem.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/ui/component/SubTaskListItem;->registerListner()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/ui/component/SubTaskListItem;


# direct methods
.method constructor <init>(Lim/doit/pro/ui/component/SubTaskListItem;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lim/doit/pro/ui/component/SubTaskListItem$5;->this$0:Lim/doit/pro/ui/component/SubTaskListItem;

    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 182
    iget-object v0, p0, Lim/doit/pro/ui/component/SubTaskListItem$5;->this$0:Lim/doit/pro/ui/component/SubTaskListItem;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lim/doit/pro/ui/component/SubTaskListItem;->access$5(Lim/doit/pro/ui/component/SubTaskListItem;Z)V

    .line 183
    invoke-static {}, Lim/doit/pro/utils/UserUtils;->isNotPro()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lim/doit/pro/ui/component/SubTaskListItem$5;->this$0:Lim/doit/pro/ui/component/SubTaskListItem;

    invoke-static {v0}, Lim/doit/pro/ui/component/SubTaskListItem;->access$3(Lim/doit/pro/ui/component/SubTaskListItem;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lim/doit/pro/utils/AlertDialogUtils;->showJustForProDialog(Landroid/app/Activity;)Z

    .line 191
    :goto_0
    return-void

    .line 187
    :cond_0
    iget-object v0, p0, Lim/doit/pro/ui/component/SubTaskListItem$5;->this$0:Lim/doit/pro/ui/component/SubTaskListItem;

    invoke-static {v0}, Lim/doit/pro/ui/component/SubTaskListItem;->access$6(Lim/doit/pro/ui/component/SubTaskListItem;)Lim/doit/pro/ui/component/SubTaskListItem$onSubTaskDeleteListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 188
    iget-object v0, p0, Lim/doit/pro/ui/component/SubTaskListItem$5;->this$0:Lim/doit/pro/ui/component/SubTaskListItem;

    invoke-static {v0}, Lim/doit/pro/ui/component/SubTaskListItem;->access$6(Lim/doit/pro/ui/component/SubTaskListItem;)Lim/doit/pro/ui/component/SubTaskListItem$onSubTaskDeleteListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lim/doit/pro/ui/component/SubTaskListItem$onSubTaskDeleteListener;->delete(Landroid/view/View;)V

    .line 190
    :cond_1
    iget-object v0, p0, Lim/doit/pro/ui/component/SubTaskListItem$5;->this$0:Lim/doit/pro/ui/component/SubTaskListItem;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lim/doit/pro/ui/component/SubTaskListItem;->access$5(Lim/doit/pro/ui/component/SubTaskListItem;Z)V

    goto :goto_0
.end method
