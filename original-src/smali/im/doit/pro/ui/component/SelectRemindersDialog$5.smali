.class Lim/doit/pro/ui/component/SelectRemindersDialog$5;
.super Ljava/lang/Object;
.source "SelectRemindersDialog.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/ui/component/SelectRemindersDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/ui/component/SelectRemindersDialog;


# direct methods
.method constructor <init>(Lim/doit/pro/ui/component/SelectRemindersDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lim/doit/pro/ui/component/SelectRemindersDialog$5;->this$0:Lim/doit/pro/ui/component/SelectRemindersDialog;

    .line 446
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 450
    move v0, p2

    .line 451
    .local v0, "isSelected":Z
    if-eqz v0, :cond_0

    iget-object v2, p0, Lim/doit/pro/ui/component/SelectRemindersDialog$5;->this$0:Lim/doit/pro/ui/component/SelectRemindersDialog;

    invoke-static {v2}, Lim/doit/pro/ui/component/SelectRemindersDialog;->access$3(Lim/doit/pro/ui/component/SelectRemindersDialog;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 452
    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 453
    iget-object v2, p0, Lim/doit/pro/ui/component/SelectRemindersDialog$5;->this$0:Lim/doit/pro/ui/component/SelectRemindersDialog;

    invoke-static {v2}, Lim/doit/pro/ui/component/SelectRemindersDialog;->access$2(Lim/doit/pro/ui/component/SelectRemindersDialog;)Lim/doit/pro/ui/component/SelectRemindersDialog$ListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lim/doit/pro/ui/component/SelectRemindersDialog$ListAdapter;->notifyDataSetChanged()V

    .line 459
    :goto_0
    return-void

    .line 456
    :cond_0
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 457
    .local v1, "position":I
    iget-object v2, p0, Lim/doit/pro/ui/component/SelectRemindersDialog$5;->this$0:Lim/doit/pro/ui/component/SelectRemindersDialog;

    invoke-static {v2}, Lim/doit/pro/ui/component/SelectRemindersDialog;->access$0(Lim/doit/pro/ui/component/SelectRemindersDialog;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lim/doit/pro/ui/component/SelectRemindersDialog$ListData;

    iput-boolean v0, v2, Lim/doit/pro/ui/component/SelectRemindersDialog$ListData;->isSelected:Z

    .line 458
    iget-object v3, p0, Lim/doit/pro/ui/component/SelectRemindersDialog$5;->this$0:Lim/doit/pro/ui/component/SelectRemindersDialog;

    iget-object v2, p0, Lim/doit/pro/ui/component/SelectRemindersDialog$5;->this$0:Lim/doit/pro/ui/component/SelectRemindersDialog;

    invoke-static {v2}, Lim/doit/pro/ui/component/SelectRemindersDialog;->access$0(Lim/doit/pro/ui/component/SelectRemindersDialog;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lim/doit/pro/ui/component/SelectRemindersDialog$ListData;

    invoke-static {v3, v2}, Lim/doit/pro/ui/component/SelectRemindersDialog;->access$6(Lim/doit/pro/ui/component/SelectRemindersDialog;Lim/doit/pro/ui/component/SelectRemindersDialog$ListData;)V

    goto :goto_0
.end method
