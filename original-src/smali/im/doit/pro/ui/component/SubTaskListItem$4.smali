.class Lim/doit/pro/ui/component/SubTaskListItem$4;
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
    iput-object p1, p0, Lim/doit/pro/ui/component/SubTaskListItem$4;->this$0:Lim/doit/pro/ui/component/SubTaskListItem;

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 173
    iget-object v0, p0, Lim/doit/pro/ui/component/SubTaskListItem$4;->this$0:Lim/doit/pro/ui/component/SubTaskListItem;

    invoke-static {v0}, Lim/doit/pro/ui/component/SubTaskListItem;->access$4(Lim/doit/pro/ui/component/SubTaskListItem;)Lim/doit/pro/ui/component/SubTaskListItem$onSubTaskCompleteListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lim/doit/pro/ui/component/SubTaskListItem$4;->this$0:Lim/doit/pro/ui/component/SubTaskListItem;

    invoke-static {v0}, Lim/doit/pro/ui/component/SubTaskListItem;->access$4(Lim/doit/pro/ui/component/SubTaskListItem;)Lim/doit/pro/ui/component/SubTaskListItem$onSubTaskCompleteListener;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {v1, p1, v0}, Lim/doit/pro/ui/component/SubTaskListItem$onSubTaskCompleteListener;->complete(Landroid/view/View;Z)V

    .line 176
    :cond_0
    return-void

    .line 174
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
