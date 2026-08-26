.class Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog$1;
.super Ljava/lang/Object;
.source "SelectEvernoteNotebookDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog;->initListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog;


# direct methods
.method constructor <init>(Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog$1;->this$0:Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog;

    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 196
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog$1;->this$0:Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog;

    invoke-static {v0}, Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog;->access$3(Lim/doit/pro/ui/component/SelectEvernoteNotebookDialog;)V

    .line 197
    return-void
.end method
