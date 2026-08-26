.class Lim/doit/pro/ui/component/SelectTaskContextDialog$1;
.super Ljava/lang/Object;
.source "SelectTaskContextDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/ui/component/SelectTaskContextDialog;->showDialog(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/ui/component/SelectTaskContextDialog;


# direct methods
.method constructor <init>(Lim/doit/pro/ui/component/SelectTaskContextDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lim/doit/pro/ui/component/SelectTaskContextDialog$1;->this$0:Lim/doit/pro/ui/component/SelectTaskContextDialog;

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 76
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 77
    .local v0, "position":I
    iget-object v1, p0, Lim/doit/pro/ui/component/SelectTaskContextDialog$1;->this$0:Lim/doit/pro/ui/component/SelectTaskContextDialog;

    invoke-static {v1}, Lim/doit/pro/ui/component/SelectTaskContextDialog;->access$2(Lim/doit/pro/ui/component/SelectTaskContextDialog;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 78
    iget-object v1, p0, Lim/doit/pro/ui/component/SelectTaskContextDialog$1;->this$0:Lim/doit/pro/ui/component/SelectTaskContextDialog;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lim/doit/pro/ui/component/SelectTaskContextDialog;->access$4(Lim/doit/pro/ui/component/SelectTaskContextDialog;Ljava/lang/String;)V

    .line 82
    :goto_0
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/View;->setSelected(Z)V

    .line 83
    iget-object v1, p0, Lim/doit/pro/ui/component/SelectTaskContextDialog$1;->this$0:Lim/doit/pro/ui/component/SelectTaskContextDialog;

    iget-object v2, p0, Lim/doit/pro/ui/component/SelectTaskContextDialog$1;->this$0:Lim/doit/pro/ui/component/SelectTaskContextDialog;

    invoke-static {v2}, Lim/doit/pro/ui/component/SelectTaskContextDialog;->access$0(Lim/doit/pro/ui/component/SelectTaskContextDialog;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lim/doit/pro/ui/component/SelectTaskContextDialog;->access$1(Lim/doit/pro/ui/component/SelectTaskContextDialog;Ljava/lang/String;)V

    .line 84
    return-void

    .line 80
    :cond_0
    iget-object v2, p0, Lim/doit/pro/ui/component/SelectTaskContextDialog$1;->this$0:Lim/doit/pro/ui/component/SelectTaskContextDialog;

    iget-object v1, p0, Lim/doit/pro/ui/component/SelectTaskContextDialog$1;->this$0:Lim/doit/pro/ui/component/SelectTaskContextDialog;

    invoke-static {v1}, Lim/doit/pro/ui/component/SelectTaskContextDialog;->access$2(Lim/doit/pro/ui/component/SelectTaskContextDialog;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lim/doit/pro/model/TaskContext;

    invoke-virtual {v1}, Lim/doit/pro/model/TaskContext;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lim/doit/pro/ui/component/SelectTaskContextDialog;->access$4(Lim/doit/pro/ui/component/SelectTaskContextDialog;Ljava/lang/String;)V

    goto :goto_0
.end method
