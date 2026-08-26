.class Lim/doit/pro/ui/component/SubTaskListItem$2;
.super Ljava/lang/Object;
.source "SubTaskListItem.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


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
    iput-object p1, p0, Lim/doit/pro/ui/component/SubTaskListItem$2;->this$0:Lim/doit/pro/ui/component/SubTaskListItem;

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 144
    iget-object v0, p0, Lim/doit/pro/ui/component/SubTaskListItem$2;->this$0:Lim/doit/pro/ui/component/SubTaskListItem;

    invoke-static {v0}, Lim/doit/pro/ui/component/SubTaskListItem;->access$1(Lim/doit/pro/ui/component/SubTaskListItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    .end local p1    # "v":Landroid/view/View;
    :goto_0
    return-void

    .line 147
    .restart local p1    # "v":Landroid/view/View;
    :cond_0
    iget-object v0, p0, Lim/doit/pro/ui/component/SubTaskListItem$2;->this$0:Lim/doit/pro/ui/component/SubTaskListItem;

    invoke-static {v0}, Lim/doit/pro/ui/component/SubTaskListItem;->access$2(Lim/doit/pro/ui/component/SubTaskListItem;)Lim/doit/pro/ui/component/SubTaskListItem$onSubTaskFocusListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 148
    iget-object v0, p0, Lim/doit/pro/ui/component/SubTaskListItem$2;->this$0:Lim/doit/pro/ui/component/SubTaskListItem;

    invoke-static {v0}, Lim/doit/pro/ui/component/SubTaskListItem;->access$2(Lim/doit/pro/ui/component/SubTaskListItem;)Lim/doit/pro/ui/component/SubTaskListItem$onSubTaskFocusListener;

    move-result-object v1

    move-object v0, p1

    check-cast v0, Landroid/widget/EditText;

    invoke-interface {v1, v0, p2}, Lim/doit/pro/ui/component/SubTaskListItem$onSubTaskFocusListener;->focus(Landroid/widget/EditText;Z)V

    .line 150
    :cond_1
    if-eqz p2, :cond_2

    .line 151
    iget-object v0, p0, Lim/doit/pro/ui/component/SubTaskListItem$2;->this$0:Lim/doit/pro/ui/component/SubTaskListItem;

    iget-object v0, v0, Lim/doit/pro/ui/component/SubTaskListItem;->deleteBtn:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 153
    :cond_2
    iget-object v0, p0, Lim/doit/pro/ui/component/SubTaskListItem$2;->this$0:Lim/doit/pro/ui/component/SubTaskListItem;

    iget-object v0, v0, Lim/doit/pro/ui/component/SubTaskListItem;->deleteBtn:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 154
    iget-object v0, p0, Lim/doit/pro/ui/component/SubTaskListItem$2;->this$0:Lim/doit/pro/ui/component/SubTaskListItem;

    check-cast p1, Landroid/widget/EditText;

    .end local p1    # "v":Landroid/view/View;
    invoke-static {v0, p1}, Lim/doit/pro/ui/component/SubTaskListItem;->access$0(Lim/doit/pro/ui/component/SubTaskListItem;Landroid/widget/EditText;)Z

    goto :goto_0
.end method
