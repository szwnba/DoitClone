.class Lim/doit/pro/ui/component/SelectTagsDialog$3;
.super Ljava/lang/Object;
.source "SelectTagsDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/ui/component/SelectTagsDialog;->initViewAndViewContent()V
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
    iput-object p1, p0, Lim/doit/pro/ui/component/SelectTagsDialog$3;->this$0:Lim/doit/pro/ui/component/SelectTagsDialog;

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 84
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 85
    .local v0, "position":I
    iget-object v2, p0, Lim/doit/pro/ui/component/SelectTagsDialog$3;->this$0:Lim/doit/pro/ui/component/SelectTagsDialog;

    invoke-static {v2}, Lim/doit/pro/ui/component/SelectTagsDialog;->access$3(Lim/doit/pro/ui/component/SelectTagsDialog;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lim/doit/pro/model/Tag;

    .line 86
    .local v1, "tag":Lim/doit/pro/model/Tag;
    if-nez v1, :cond_2

    .line 87
    iget-object v2, p0, Lim/doit/pro/ui/component/SelectTagsDialog$3;->this$0:Lim/doit/pro/ui/component/SelectTagsDialog;

    invoke-static {v2}, Lim/doit/pro/ui/component/SelectTagsDialog;->access$2(Lim/doit/pro/ui/component/SelectTagsDialog;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 88
    iget-object v2, p0, Lim/doit/pro/ui/component/SelectTagsDialog$3;->this$0:Lim/doit/pro/ui/component/SelectTagsDialog;

    invoke-static {v2}, Lim/doit/pro/ui/component/SelectTagsDialog;->access$4(Lim/doit/pro/ui/component/SelectTagsDialog;)V

    .line 89
    iget-object v2, p0, Lim/doit/pro/ui/component/SelectTagsDialog$3;->this$0:Lim/doit/pro/ui/component/SelectTagsDialog;

    invoke-static {v2}, Lim/doit/pro/ui/component/SelectTagsDialog;->access$1(Lim/doit/pro/ui/component/SelectTagsDialog;)Lim/doit/pro/ui/component/SelectTagsDialog$OnSelectTagFinishListner;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 90
    iget-object v2, p0, Lim/doit/pro/ui/component/SelectTagsDialog$3;->this$0:Lim/doit/pro/ui/component/SelectTagsDialog;

    invoke-static {v2}, Lim/doit/pro/ui/component/SelectTagsDialog;->access$1(Lim/doit/pro/ui/component/SelectTagsDialog;)Lim/doit/pro/ui/component/SelectTagsDialog$OnSelectTagFinishListner;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lim/doit/pro/ui/component/SelectTagsDialog$OnSelectTagFinishListner;->finish(Ljava/util/ArrayList;)V

    .line 92
    :cond_0
    iget-object v2, p0, Lim/doit/pro/ui/component/SelectTagsDialog$3;->this$0:Lim/doit/pro/ui/component/SelectTagsDialog;

    invoke-static {v2}, Lim/doit/pro/ui/component/SelectTagsDialog;->access$0(Lim/doit/pro/ui/component/SelectTagsDialog;)V

    .line 105
    :cond_1
    :goto_0
    return-void

    .line 95
    :cond_2
    iget-object v2, p0, Lim/doit/pro/ui/component/SelectTagsDialog$3;->this$0:Lim/doit/pro/ui/component/SelectTagsDialog;

    invoke-static {v2}, Lim/doit/pro/ui/component/SelectTagsDialog;->access$2(Lim/doit/pro/ui/component/SelectTagsDialog;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x5

    if-lt v2, v3, :cond_3

    .line 96
    iget-object v2, p0, Lim/doit/pro/ui/component/SelectTagsDialog$3;->this$0:Lim/doit/pro/ui/component/SelectTagsDialog;

    invoke-static {v2}, Lim/doit/pro/ui/component/SelectTagsDialog;->access$2(Lim/doit/pro/ui/component/SelectTagsDialog;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1}, Lim/doit/pro/model/Tag;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 99
    :cond_3
    iget-object v2, p0, Lim/doit/pro/ui/component/SelectTagsDialog$3;->this$0:Lim/doit/pro/ui/component/SelectTagsDialog;

    invoke-static {v2}, Lim/doit/pro/ui/component/SelectTagsDialog;->access$2(Lim/doit/pro/ui/component/SelectTagsDialog;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1}, Lim/doit/pro/model/Tag;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 100
    iget-object v2, p0, Lim/doit/pro/ui/component/SelectTagsDialog$3;->this$0:Lim/doit/pro/ui/component/SelectTagsDialog;

    invoke-static {v2}, Lim/doit/pro/ui/component/SelectTagsDialog;->access$2(Lim/doit/pro/ui/component/SelectTagsDialog;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1}, Lim/doit/pro/model/Tag;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    :goto_1
    iget-object v2, p0, Lim/doit/pro/ui/component/SelectTagsDialog$3;->this$0:Lim/doit/pro/ui/component/SelectTagsDialog;

    invoke-static {v2}, Lim/doit/pro/ui/component/SelectTagsDialog;->access$4(Lim/doit/pro/ui/component/SelectTagsDialog;)V

    goto :goto_0

    .line 102
    :cond_4
    iget-object v2, p0, Lim/doit/pro/ui/component/SelectTagsDialog$3;->this$0:Lim/doit/pro/ui/component/SelectTagsDialog;

    invoke-static {v2}, Lim/doit/pro/ui/component/SelectTagsDialog;->access$2(Lim/doit/pro/ui/component/SelectTagsDialog;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1}, Lim/doit/pro/model/Tag;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1
.end method
