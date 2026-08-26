.class Lim/doit/pro/ui/component/SelectRepeatDialog$1;
.super Ljava/lang/Object;
.source "SelectRepeatDialog.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/ui/component/SelectRepeatDialog;->showDialog(Lim/doit/pro/model/Repeater;Ljava/util/Calendar;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/ui/component/SelectRepeatDialog;


# direct methods
.method constructor <init>(Lim/doit/pro/ui/component/SelectRepeatDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lim/doit/pro/ui/component/SelectRepeatDialog$1;->this$0:Lim/doit/pro/ui/component/SelectRepeatDialog;

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, "parentView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v4, 0x0

    .line 89
    iget-object v2, p0, Lim/doit/pro/ui/component/SelectRepeatDialog$1;->this$0:Lim/doit/pro/ui/component/SelectRepeatDialog;

    invoke-static {v2}, Lim/doit/pro/ui/component/SelectRepeatDialog;->access$1(Lim/doit/pro/ui/component/SelectRepeatDialog;)Landroid/widget/ListView;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, p3, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 90
    iget-object v2, p0, Lim/doit/pro/ui/component/SelectRepeatDialog$1;->this$0:Lim/doit/pro/ui/component/SelectRepeatDialog;

    invoke-static {v2}, Lim/doit/pro/ui/component/SelectRepeatDialog;->access$4(Lim/doit/pro/ui/component/SelectRepeatDialog;)Lim/doit/pro/ui/component/SelectRepeatDialog$ListAdapter;

    move-result-object v2

    invoke-virtual {v2, p3}, Lim/doit/pro/ui/component/SelectRepeatDialog$ListAdapter;->getItem(I)Lim/doit/pro/ui/component/SelectRepeatDialog$ListItemData;

    move-result-object v0

    .line 91
    .local v0, "data":Lim/doit/pro/ui/component/SelectRepeatDialog$ListItemData;
    iget-object v1, v0, Lim/doit/pro/ui/component/SelectRepeatDialog$ListItemData;->mode:Lim/doit/pro/model/enums/RepeaterMode;

    .line 92
    .local v1, "mode":Lim/doit/pro/model/enums/RepeaterMode;
    sget-object v2, Lim/doit/pro/model/enums/RepeaterMode;->daily:Lim/doit/pro/model/enums/RepeaterMode;

    invoke-virtual {v2, v1}, Lim/doit/pro/model/enums/RepeaterMode;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 93
    iget-object v2, p0, Lim/doit/pro/ui/component/SelectRepeatDialog$1;->this$0:Lim/doit/pro/ui/component/SelectRepeatDialog;

    invoke-static {v2}, Lim/doit/pro/ui/component/SelectRepeatDialog;->access$5(Lim/doit/pro/ui/component/SelectRepeatDialog;)V

    .line 106
    :cond_0
    :goto_0
    iget-object v2, p0, Lim/doit/pro/ui/component/SelectRepeatDialog$1;->this$0:Lim/doit/pro/ui/component/SelectRepeatDialog;

    invoke-static {v2}, Lim/doit/pro/ui/component/SelectRepeatDialog;->access$11(Lim/doit/pro/ui/component/SelectRepeatDialog;)V

    .line 107
    return-void

    .line 94
    :cond_1
    sget-object v2, Lim/doit/pro/model/enums/RepeaterMode;->weekly:Lim/doit/pro/model/enums/RepeaterMode;

    invoke-virtual {v2, v1}, Lim/doit/pro/model/enums/RepeaterMode;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 95
    iget-object v2, p0, Lim/doit/pro/ui/component/SelectRepeatDialog$1;->this$0:Lim/doit/pro/ui/component/SelectRepeatDialog;

    invoke-static {v2, v0}, Lim/doit/pro/ui/component/SelectRepeatDialog;->access$6(Lim/doit/pro/ui/component/SelectRepeatDialog;Lim/doit/pro/ui/component/SelectRepeatDialog$ListItemData;)V

    goto :goto_0

    .line 96
    :cond_2
    sget-object v2, Lim/doit/pro/model/enums/RepeaterMode;->monthly:Lim/doit/pro/model/enums/RepeaterMode;

    invoke-virtual {v2, v1}, Lim/doit/pro/model/enums/RepeaterMode;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 97
    iget-object v2, p0, Lim/doit/pro/ui/component/SelectRepeatDialog$1;->this$0:Lim/doit/pro/ui/component/SelectRepeatDialog;

    invoke-static {v2}, Lim/doit/pro/ui/component/SelectRepeatDialog;->access$7(Lim/doit/pro/ui/component/SelectRepeatDialog;)V

    goto :goto_0

    .line 98
    :cond_3
    sget-object v2, Lim/doit/pro/model/enums/RepeaterMode;->yearly:Lim/doit/pro/model/enums/RepeaterMode;

    invoke-virtual {v2, v1}, Lim/doit/pro/model/enums/RepeaterMode;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 99
    iget-object v2, p0, Lim/doit/pro/ui/component/SelectRepeatDialog$1;->this$0:Lim/doit/pro/ui/component/SelectRepeatDialog;

    invoke-static {v2}, Lim/doit/pro/ui/component/SelectRepeatDialog;->access$8(Lim/doit/pro/ui/component/SelectRepeatDialog;)V

    goto :goto_0

    .line 101
    :cond_4
    iget-object v2, p0, Lim/doit/pro/ui/component/SelectRepeatDialog$1;->this$0:Lim/doit/pro/ui/component/SelectRepeatDialog;

    invoke-static {v2, v4}, Lim/doit/pro/ui/component/SelectRepeatDialog;->access$9(Lim/doit/pro/ui/component/SelectRepeatDialog;Lim/doit/pro/model/Repeater;)V

    .line 102
    iget-object v2, p0, Lim/doit/pro/ui/component/SelectRepeatDialog$1;->this$0:Lim/doit/pro/ui/component/SelectRepeatDialog;

    invoke-static {v2}, Lim/doit/pro/ui/component/SelectRepeatDialog;->access$10(Lim/doit/pro/ui/component/SelectRepeatDialog;)Lim/doit/pro/ui/component/SelectRepeatDialog$OnSelectFinishListner;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 103
    iget-object v2, p0, Lim/doit/pro/ui/component/SelectRepeatDialog$1;->this$0:Lim/doit/pro/ui/component/SelectRepeatDialog;

    invoke-static {v2}, Lim/doit/pro/ui/component/SelectRepeatDialog;->access$10(Lim/doit/pro/ui/component/SelectRepeatDialog;)Lim/doit/pro/ui/component/SelectRepeatDialog$OnSelectFinishListner;

    move-result-object v2

    invoke-interface {v2, v4}, Lim/doit/pro/ui/component/SelectRepeatDialog$OnSelectFinishListner;->finish(Lim/doit/pro/model/Repeater;)V

    goto :goto_0
.end method
