.class Lim/doit/pro/ui/component/DMessageDialog$1;
.super Ljava/lang/Object;
.source "DMessageDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/ui/component/DMessageDialog;->setPositiveButtonViewContent(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/ui/component/DMessageDialog;


# direct methods
.method constructor <init>(Lim/doit/pro/ui/component/DMessageDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lim/doit/pro/ui/component/DMessageDialog$1;->this$0:Lim/doit/pro/ui/component/DMessageDialog;

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 117
    iget-object v0, p0, Lim/doit/pro/ui/component/DMessageDialog$1;->this$0:Lim/doit/pro/ui/component/DMessageDialog;

    invoke-virtual {v0}, Lim/doit/pro/ui/component/DMessageDialog;->isCancelable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lim/doit/pro/ui/component/DMessageDialog$1;->this$0:Lim/doit/pro/ui/component/DMessageDialog;

    invoke-virtual {v0}, Lim/doit/pro/ui/component/DMessageDialog;->dismissAllowingStateLoss()V

    .line 120
    :cond_0
    iget-object v0, p0, Lim/doit/pro/ui/component/DMessageDialog$1;->this$0:Lim/doit/pro/ui/component/DMessageDialog;

    invoke-static {v0}, Lim/doit/pro/ui/component/DMessageDialog;->access$0(Lim/doit/pro/ui/component/DMessageDialog;)Lim/doit/pro/ui/component/DMessageDialog$OnButtonClickListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 121
    iget-object v0, p0, Lim/doit/pro/ui/component/DMessageDialog$1;->this$0:Lim/doit/pro/ui/component/DMessageDialog;

    invoke-static {v0}, Lim/doit/pro/ui/component/DMessageDialog;->access$0(Lim/doit/pro/ui/component/DMessageDialog;)Lim/doit/pro/ui/component/DMessageDialog$OnButtonClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lim/doit/pro/ui/component/DMessageDialog$OnButtonClickListener;->onClick(Landroid/view/View;)V

    .line 123
    :cond_1
    return-void
.end method
