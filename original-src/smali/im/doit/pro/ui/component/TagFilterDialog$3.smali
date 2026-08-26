.class Lim/doit/pro/ui/component/TagFilterDialog$3;
.super Ljava/lang/Object;
.source "TagFilterDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/ui/component/TagFilterDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/ui/component/TagFilterDialog;


# direct methods
.method constructor <init>(Lim/doit/pro/ui/component/TagFilterDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lim/doit/pro/ui/component/TagFilterDialog$3;->this$0:Lim/doit/pro/ui/component/TagFilterDialog;

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 144
    iget-object v0, p0, Lim/doit/pro/ui/component/TagFilterDialog$3;->this$0:Lim/doit/pro/ui/component/TagFilterDialog;

    invoke-static {v0}, Lim/doit/pro/ui/component/TagFilterDialog;->access$0(Lim/doit/pro/ui/component/TagFilterDialog;)Lim/doit/pro/ui/component/TagFilterDialog$OnTagFilterFinishListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lim/doit/pro/ui/component/TagFilterDialog$3;->this$0:Lim/doit/pro/ui/component/TagFilterDialog;

    invoke-static {v0}, Lim/doit/pro/ui/component/TagFilterDialog;->access$0(Lim/doit/pro/ui/component/TagFilterDialog;)Lim/doit/pro/ui/component/TagFilterDialog$OnTagFilterFinishListener;

    move-result-object v0

    iget-object v1, p0, Lim/doit/pro/ui/component/TagFilterDialog$3;->this$0:Lim/doit/pro/ui/component/TagFilterDialog;

    invoke-static {v1}, Lim/doit/pro/ui/component/TagFilterDialog;->access$3(Lim/doit/pro/ui/component/TagFilterDialog;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v0, v1}, Lim/doit/pro/ui/component/TagFilterDialog$OnTagFilterFinishListener;->selectTagsComplete(Ljava/util/ArrayList;)V

    .line 147
    :cond_0
    iget-object v0, p0, Lim/doit/pro/ui/component/TagFilterDialog$3;->this$0:Lim/doit/pro/ui/component/TagFilterDialog;

    invoke-static {v0}, Lim/doit/pro/ui/component/TagFilterDialog;->access$1(Lim/doit/pro/ui/component/TagFilterDialog;)V

    .line 148
    return-void
.end method
