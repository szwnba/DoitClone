.class Lim/doit/pro/ui/component/SubTaskSortDialog$2;
.super Ljava/lang/Object;
.source "SubTaskSortDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/ui/component/SubTaskSortDialog;->initListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/ui/component/SubTaskSortDialog;


# direct methods
.method constructor <init>(Lim/doit/pro/ui/component/SubTaskSortDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lim/doit/pro/ui/component/SubTaskSortDialog$2;->this$0:Lim/doit/pro/ui/component/SubTaskSortDialog;

    .line 257
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 261
    iget-object v0, p0, Lim/doit/pro/ui/component/SubTaskSortDialog$2;->this$0:Lim/doit/pro/ui/component/SubTaskSortDialog;

    invoke-static {v0}, Lim/doit/pro/ui/component/SubTaskSortDialog;->access$6(Lim/doit/pro/ui/component/SubTaskSortDialog;)Lim/doit/pro/ui/component/SubTaskSortDialog$OnSortSubTaskFinishListner;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lim/doit/pro/ui/component/SubTaskSortDialog$2;->this$0:Lim/doit/pro/ui/component/SubTaskSortDialog;

    invoke-static {v0}, Lim/doit/pro/ui/component/SubTaskSortDialog;->access$6(Lim/doit/pro/ui/component/SubTaskSortDialog;)Lim/doit/pro/ui/component/SubTaskSortDialog$OnSortSubTaskFinishListner;

    move-result-object v0

    iget-object v1, p0, Lim/doit/pro/ui/component/SubTaskSortDialog$2;->this$0:Lim/doit/pro/ui/component/SubTaskSortDialog;

    invoke-static {v1}, Lim/doit/pro/ui/component/SubTaskSortDialog;->access$4(Lim/doit/pro/ui/component/SubTaskSortDialog;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v0, v1}, Lim/doit/pro/ui/component/SubTaskSortDialog$OnSortSubTaskFinishListner;->finish(Ljava/util/ArrayList;)V

    .line 264
    :cond_0
    return-void
.end method
