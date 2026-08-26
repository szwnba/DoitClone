.class Lim/doit/pro/ui/component/AddCommentDialog$3;
.super Ljava/lang/Object;
.source "AddCommentDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/ui/component/AddCommentDialog;->showDialog()V
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
    iput-object p1, p0, Lim/doit/pro/ui/component/AddCommentDialog$3;->this$0:Lim/doit/pro/ui/component/AddCommentDialog;

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lim/doit/pro/ui/component/AddCommentDialog$3;->this$0:Lim/doit/pro/ui/component/AddCommentDialog;

    invoke-static {v0}, Lim/doit/pro/ui/component/AddCommentDialog;->access$2(Lim/doit/pro/ui/component/AddCommentDialog;)Landroid/widget/EditText;

    move-result-object v0

    invoke-static {v0}, Lim/doit/pro/activity/utils/ViewUtils;->showSoftKeyboard(Landroid/widget/EditText;)V

    .line 78
    return-void
.end method
