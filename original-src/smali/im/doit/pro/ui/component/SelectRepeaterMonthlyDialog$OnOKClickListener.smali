.class Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog$OnOKClickListener;
.super Ljava/lang/Object;
.source "SelectRepeaterMonthlyDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnOKClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog;


# direct methods
.method private constructor <init>(Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog;)V
    .locals 0

    .prologue
    .line 234
    iput-object p1, p0, Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog$OnOKClickListener;->this$0:Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog;Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog$OnOKClickListener;)V
    .locals 0

    .prologue
    .line 234
    invoke-direct {p0, p1}, Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog$OnOKClickListener;-><init>(Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 237
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog$OnOKClickListener;->this$0:Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog;

    invoke-static {v0}, Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog;->access$3(Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog;)Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog$OnSelectMonthlyFinishListner;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog$OnOKClickListener;->this$0:Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog;

    invoke-static {v0}, Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog;->access$3(Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog;)Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog$OnSelectMonthlyFinishListner;

    move-result-object v0

    iget-object v1, p0, Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog$OnOKClickListener;->this$0:Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog;

    invoke-static {v1}, Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog;->access$0(Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog;)Lim/doit/pro/model/Repeater;

    move-result-object v1

    invoke-interface {v0, v1}, Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog$OnSelectMonthlyFinishListner;->finish(Lim/doit/pro/model/Repeater;)V

    .line 240
    :cond_0
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog$OnOKClickListener;->this$0:Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog;

    invoke-static {v0}, Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog;->access$2(Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 241
    return-void
.end method
