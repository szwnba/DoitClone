.class Lim/doit/pro/ui/component/SelectTagsDialog$2;
.super Ljava/lang/Object;
.source "SelectTagsDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/ui/component/SelectTagsDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/ui/component/SelectTagsDialog;


# direct methods
.method constructor <init>(Lim/doit/pro/ui/component/SelectTagsDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lim/doit/pro/ui/component/SelectTagsDialog$2;->this$0:Lim/doit/pro/ui/component/SelectTagsDialog;

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 141
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectTagsDialog$2;->this$0:Lim/doit/pro/ui/component/SelectTagsDialog;

    invoke-static {v0}, Lim/doit/pro/ui/component/SelectTagsDialog;->access$1(Lim/doit/pro/ui/component/SelectTagsDialog;)Lim/doit/pro/ui/component/SelectTagsDialog$OnSelectTagFinishListner;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectTagsDialog$2;->this$0:Lim/doit/pro/ui/component/SelectTagsDialog;

    invoke-static {v0}, Lim/doit/pro/ui/component/SelectTagsDialog;->access$1(Lim/doit/pro/ui/component/SelectTagsDialog;)Lim/doit/pro/ui/component/SelectTagsDialog$OnSelectTagFinishListner;

    move-result-object v0

    iget-object v1, p0, Lim/doit/pro/ui/component/SelectTagsDialog$2;->this$0:Lim/doit/pro/ui/component/SelectTagsDialog;

    invoke-static {v1}, Lim/doit/pro/ui/component/SelectTagsDialog;->access$2(Lim/doit/pro/ui/component/SelectTagsDialog;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v0, v1}, Lim/doit/pro/ui/component/SelectTagsDialog$OnSelectTagFinishListner;->finish(Ljava/util/ArrayList;)V

    .line 144
    :cond_0
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectTagsDialog$2;->this$0:Lim/doit/pro/ui/component/SelectTagsDialog;

    invoke-static {v0}, Lim/doit/pro/ui/component/SelectTagsDialog;->access$0(Lim/doit/pro/ui/component/SelectTagsDialog;)V

    .line 145
    return-void
.end method
