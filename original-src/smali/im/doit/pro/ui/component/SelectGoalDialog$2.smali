.class Lim/doit/pro/ui/component/SelectGoalDialog$2;
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
    iput-object p1, p0, Lim/doit/pro/ui/component/SelectGoalDialog$2;->this$0:Lim/doit/pro/ui/component/SelectGoalDialog;

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 94
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectGoalDialog$2;->this$0:Lim/doit/pro/ui/component/SelectGoalDialog;

    invoke-static {v0}, Lim/doit/pro/ui/component/SelectGoalDialog;->access$5(Lim/doit/pro/ui/component/SelectGoalDialog;)V

    .line 95
    return-void
.end method
