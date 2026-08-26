.class Lim/doit/pro/ui/component/SelectRepeaterWeeklyDialog$1;
.super Ljava/lang/Object;
.source "SelectRepeaterWeeklyDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/ui/component/SelectRepeaterWeeklyDialog;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/ui/component/SelectRepeaterWeeklyDialog;


# direct methods
.method constructor <init>(Lim/doit/pro/ui/component/SelectRepeaterWeeklyDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lim/doit/pro/ui/component/SelectRepeaterWeeklyDialog$1;->this$0:Lim/doit/pro/ui/component/SelectRepeaterWeeklyDialog;

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 114
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {p1, v1}, Landroid/view/View;->setSelected(Z)V

    .line 115
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 116
    .local v0, "dayOfWeek":Ljava/lang/Integer;
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 117
    iget-object v1, p0, Lim/doit/pro/ui/component/SelectRepeaterWeeklyDialog$1;->this$0:Lim/doit/pro/ui/component/SelectRepeaterWeeklyDialog;

    invoke-static {v1}, Lim/doit/pro/ui/component/SelectRepeaterWeeklyDialog;->access$0(Lim/doit/pro/ui/component/SelectRepeaterWeeklyDialog;)Lim/doit/pro/model/Repeater;

    move-result-object v1

    invoke-virtual {v1}, Lim/doit/pro/model/Repeater;->getWeekly()Lim/doit/pro/model/RepeaterWeekly;

    move-result-object v1

    invoke-virtual {v1}, Lim/doit/pro/model/RepeaterWeekly;->getDays()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    iget-object v1, p0, Lim/doit/pro/ui/component/SelectRepeaterWeeklyDialog$1;->this$0:Lim/doit/pro/ui/component/SelectRepeaterWeeklyDialog;

    invoke-static {v1}, Lim/doit/pro/ui/component/SelectRepeaterWeeklyDialog;->access$0(Lim/doit/pro/ui/component/SelectRepeaterWeeklyDialog;)Lim/doit/pro/model/Repeater;

    move-result-object v1

    invoke-virtual {v1}, Lim/doit/pro/model/Repeater;->getWeekly()Lim/doit/pro/model/RepeaterWeekly;

    move-result-object v1

    invoke-virtual {v1}, Lim/doit/pro/model/RepeaterWeekly;->getDays()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v1, v2}, Lim/doit/pro/utils/SortUtils;->sortInt(Ljava/util/List;Z)V

    .line 122
    :goto_1
    return-void

    .line 114
    .end local v0    # "dayOfWeek":Ljava/lang/Integer;
    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    .line 120
    .restart local v0    # "dayOfWeek":Ljava/lang/Integer;
    :cond_1
    iget-object v1, p0, Lim/doit/pro/ui/component/SelectRepeaterWeeklyDialog$1;->this$0:Lim/doit/pro/ui/component/SelectRepeaterWeeklyDialog;

    invoke-static {v1}, Lim/doit/pro/ui/component/SelectRepeaterWeeklyDialog;->access$0(Lim/doit/pro/ui/component/SelectRepeaterWeeklyDialog;)Lim/doit/pro/model/Repeater;

    move-result-object v1

    invoke-virtual {v1}, Lim/doit/pro/model/Repeater;->getWeekly()Lim/doit/pro/model/RepeaterWeekly;

    move-result-object v1

    invoke-virtual {v1}, Lim/doit/pro/model/RepeaterWeekly;->getDays()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1
.end method
