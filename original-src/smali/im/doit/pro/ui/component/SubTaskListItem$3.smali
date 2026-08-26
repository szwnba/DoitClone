.class Lim/doit/pro/ui/component/SubTaskListItem$3;
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
    iput-object p1, p0, Lim/doit/pro/ui/component/SubTaskListItem$3;->this$0:Lim/doit/pro/ui/component/SubTaskListItem;

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 162
    invoke-static {}, Lim/doit/pro/utils/UserUtils;->isNotPro()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    invoke-virtual {p1}, Landroid/view/View;->clearFocus()V

    .line 164
    iget-object v0, p0, Lim/doit/pro/ui/component/SubTaskListItem$3;->this$0:Lim/doit/pro/ui/component/SubTaskListItem;

    invoke-static {v0}, Lim/doit/pro/ui/component/SubTaskListItem;->access$3(Lim/doit/pro/ui/component/SubTaskListItem;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lim/doit/pro/utils/AlertDialogUtils;->showJustForProDialog(Landroid/app/Activity;)Z

    .line 167
    :cond_0
    return-void
.end method
