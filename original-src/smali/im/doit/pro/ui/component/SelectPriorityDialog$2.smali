.class Lim/doit/pro/ui/component/SelectPriorityDialog$2;
.super Ljava/lang/Object;
.source "SelectPriorityDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/ui/component/SelectPriorityDialog;->showDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/ui/component/SelectPriorityDialog;


# direct methods
.method constructor <init>(Lim/doit/pro/ui/component/SelectPriorityDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lim/doit/pro/ui/component/SelectPriorityDialog$2;->this$0:Lim/doit/pro/ui/component/SelectPriorityDialog;

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 83
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectPriorityDialog$2;->this$0:Lim/doit/pro/ui/component/SelectPriorityDialog;

    invoke-static {v0}, Lim/doit/pro/ui/component/SelectPriorityDialog;->access$6(Lim/doit/pro/ui/component/SelectPriorityDialog;)V

    .line 84
    return-void
.end method
