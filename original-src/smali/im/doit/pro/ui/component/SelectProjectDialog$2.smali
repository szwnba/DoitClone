.class Lim/doit/pro/ui/component/SelectProjectDialog$2;
.super Ljava/lang/Object;
.source "SelectProjectDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/ui/component/SelectProjectDialog;->initListView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/ui/component/SelectProjectDialog;


# direct methods
.method constructor <init>(Lim/doit/pro/ui/component/SelectProjectDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lim/doit/pro/ui/component/SelectProjectDialog$2;->this$0:Lim/doit/pro/ui/component/SelectProjectDialog;

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 94
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 95
    .local v0, "position":I
    iget-object v1, p0, Lim/doit/pro/ui/component/SelectProjectDialog$2;->this$0:Lim/doit/pro/ui/component/SelectProjectDialog;

    invoke-static {v1}, Lim/doit/pro/ui/component/SelectProjectDialog;->access$3(Lim/doit/pro/ui/component/SelectProjectDialog;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 96
    iget-object v1, p0, Lim/doit/pro/ui/component/SelectProjectDialog$2;->this$0:Lim/doit/pro/ui/component/SelectProjectDialog;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lim/doit/pro/ui/component/SelectProjectDialog;->access$5(Lim/doit/pro/ui/component/SelectProjectDialog;Ljava/lang/String;)V

    .line 100
    :goto_0
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/View;->setSelected(Z)V

    .line 101
    iget-object v1, p0, Lim/doit/pro/ui/component/SelectProjectDialog$2;->this$0:Lim/doit/pro/ui/component/SelectProjectDialog;

    iget-object v2, p0, Lim/doit/pro/ui/component/SelectProjectDialog$2;->this$0:Lim/doit/pro/ui/component/SelectProjectDialog;

    invoke-static {v2}, Lim/doit/pro/ui/component/SelectProjectDialog;->access$0(Lim/doit/pro/ui/component/SelectProjectDialog;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lim/doit/pro/ui/component/SelectProjectDialog;->access$2(Lim/doit/pro/ui/component/SelectProjectDialog;Ljava/lang/String;)V

    .line 102
    return-void

    .line 98
    :cond_0
    iget-object v2, p0, Lim/doit/pro/ui/component/SelectProjectDialog$2;->this$0:Lim/doit/pro/ui/component/SelectProjectDialog;

    iget-object v1, p0, Lim/doit/pro/ui/component/SelectProjectDialog$2;->this$0:Lim/doit/pro/ui/component/SelectProjectDialog;

    invoke-static {v1}, Lim/doit/pro/ui/component/SelectProjectDialog;->access$3(Lim/doit/pro/ui/component/SelectProjectDialog;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lim/doit/pro/model/Project;

    invoke-virtual {v1}, Lim/doit/pro/model/Project;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lim/doit/pro/ui/component/SelectProjectDialog;->access$5(Lim/doit/pro/ui/component/SelectProjectDialog;Ljava/lang/String;)V

    goto :goto_0
.end method
