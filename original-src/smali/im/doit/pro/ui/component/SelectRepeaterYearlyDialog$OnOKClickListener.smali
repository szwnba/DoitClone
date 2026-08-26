.class Lim/doit/pro/ui/component/SelectRepeaterYearlyDialog$OnOKClickListener;
.super Ljava/lang/Object;
.source "SelectRepeaterYearlyDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/ui/component/SelectRepeaterYearlyDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnOKClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/ui/component/SelectRepeaterYearlyDialog;


# direct methods
.method private constructor <init>(Lim/doit/pro/ui/component/SelectRepeaterYearlyDialog;)V
    .locals 0

    .prologue
    .line 157
    iput-object p1, p0, Lim/doit/pro/ui/component/SelectRepeaterYearlyDialog$OnOKClickListener;->this$0:Lim/doit/pro/ui/component/SelectRepeaterYearlyDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lim/doit/pro/ui/component/SelectRepeaterYearlyDialog;Lim/doit/pro/ui/component/SelectRepeaterYearlyDialog$OnOKClickListener;)V
    .locals 0

    .prologue
    .line 157
    invoke-direct {p0, p1}, Lim/doit/pro/ui/component/SelectRepeaterYearlyDialog$OnOKClickListener;-><init>(Lim/doit/pro/ui/component/SelectRepeaterYearlyDialog;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 160
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectRepeaterYearlyDialog$OnOKClickListener;->this$0:Lim/doit/pro/ui/component/SelectRepeaterYearlyDialog;

    invoke-static {v0}, Lim/doit/pro/ui/component/SelectRepeaterYearlyDialog;->access$3(Lim/doit/pro/ui/component/SelectRepeaterYearlyDialog;)Lim/doit/pro/ui/component/SelectRepeaterYearlyDialog$OnSelectYearlyFinishListner;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectRepeaterYearlyDialog$OnOKClickListener;->this$0:Lim/doit/pro/ui/component/SelectRepeaterYearlyDialog;

    invoke-static {v0}, Lim/doit/pro/ui/component/SelectRepeaterYearlyDialog;->access$3(Lim/doit/pro/ui/component/SelectRepeaterYearlyDialog;)Lim/doit/pro/ui/component/SelectRepeaterYearlyDialog$OnSelectYearlyFinishListner;

    move-result-object v0

    iget-object v1, p0, Lim/doit/pro/ui/component/SelectRepeaterYearlyDialog$OnOKClickListener;->this$0:Lim/doit/pro/ui/component/SelectRepeaterYearlyDialog;

    invoke-static {v1}, Lim/doit/pro/ui/component/SelectRepeaterYearlyDialog;->access$0(Lim/doit/pro/ui/component/SelectRepeaterYearlyDialog;)Lim/doit/pro/model/Repeater;

    move-result-object v1

    invoke-interface {v0, v1}, Lim/doit/pro/ui/component/SelectRepeaterYearlyDialog$OnSelectYearlyFinishListner;->finish(Lim/doit/pro/model/Repeater;)V

    .line 163
    :cond_0
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectRepeaterYearlyDialog$OnOKClickListener;->this$0:Lim/doit/pro/ui/component/SelectRepeaterYearlyDialog;

    invoke-static {v0}, Lim/doit/pro/ui/component/SelectRepeaterYearlyDialog;->access$2(Lim/doit/pro/ui/component/SelectRepeaterYearlyDialog;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 164
    return-void
.end method
