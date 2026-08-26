.class Lim/doit/pro/ui/component/SelectGoalDialog$1;
.super Ljava/lang/Object;
.source "SelectGoalDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/ui/component/SelectGoalDialog;->showDialog(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/ui/component/SelectGoalDialog;


# direct methods
.method constructor <init>(Lim/doit/pro/ui/component/SelectGoalDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lim/doit/pro/ui/component/SelectGoalDialog$1;->this$0:Lim/doit/pro/ui/component/SelectGoalDialog;

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 76
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 77
    .local v1, "position":I
    iget-object v2, p0, Lim/doit/pro/ui/component/SelectGoalDialog$1;->this$0:Lim/doit/pro/ui/component/SelectGoalDialog;

    invoke-static {v2}, Lim/doit/pro/ui/component/SelectGoalDialog;->access$2(Lim/doit/pro/ui/component/SelectGoalDialog;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lim/doit/pro/model/Goal;

    .line 78
    .local v0, "goal":Lim/doit/pro/model/Goal;
    if-nez v0, :cond_0

    .line 79
    iget-object v2, p0, Lim/doit/pro/ui/component/SelectGoalDialog$1;->this$0:Lim/doit/pro/ui/component/SelectGoalDialog;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lim/doit/pro/ui/component/SelectGoalDialog;->access$4(Lim/doit/pro/ui/component/SelectGoalDialog;Ljava/lang/String;)V

    .line 83
    :goto_0
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/view/View;->setSelected(Z)V

    .line 84
    iget-object v2, p0, Lim/doit/pro/ui/component/SelectGoalDialog$1;->this$0:Lim/doit/pro/ui/component/SelectGoalDialog;

    iget-object v3, p0, Lim/doit/pro/ui/component/SelectGoalDialog$1;->this$0:Lim/doit/pro/ui/component/SelectGoalDialog;

    invoke-static {v3}, Lim/doit/pro/ui/component/SelectGoalDialog;->access$0(Lim/doit/pro/ui/component/SelectGoalDialog;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lim/doit/pro/ui/component/SelectGoalDialog;->access$1(Lim/doit/pro/ui/component/SelectGoalDialog;Ljava/lang/String;)V

    .line 85
    return-void

    .line 81
    :cond_0
    iget-object v2, p0, Lim/doit/pro/ui/component/SelectGoalDialog$1;->this$0:Lim/doit/pro/ui/component/SelectGoalDialog;

    invoke-virtual {v0}, Lim/doit/pro/model/Goal;->getUuid()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lim/doit/pro/ui/component/SelectGoalDialog;->access$4(Lim/doit/pro/ui/component/SelectGoalDialog;Ljava/lang/String;)V

    goto :goto_0
.end method
