.class Lim/doit/pro/ui/component/AddCommentDialog$1;
.super Ljava/lang/Object;
.source "AddCommentDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/ui/component/AddCommentDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/ui/component/AddCommentDialog;


# direct methods
.method constructor <init>(Lim/doit/pro/ui/component/AddCommentDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lim/doit/pro/ui/component/AddCommentDialog$1;->this$0:Lim/doit/pro/ui/component/AddCommentDialog;

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 118
    iget-object v0, p0, Lim/doit/pro/ui/component/AddCommentDialog$1;->this$0:Lim/doit/pro/ui/component/AddCommentDialog;

    invoke-static {v0}, Lim/doit/pro/ui/component/AddCommentDialog;->access$0(Lim/doit/pro/ui/component/AddCommentDialog;)V

    .line 119
    iget-object v0, p0, Lim/doit/pro/ui/component/AddCommentDialog$1;->this$0:Lim/doit/pro/ui/component/AddCommentDialog;

    invoke-static {v0}, Lim/doit/pro/ui/component/AddCommentDialog;->access$1(Lim/doit/pro/ui/component/AddCommentDialog;)V

    .line 120
    return-void
.end method
