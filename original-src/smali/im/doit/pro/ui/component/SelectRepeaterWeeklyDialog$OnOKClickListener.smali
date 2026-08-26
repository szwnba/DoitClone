.class Lim/doit/pro/ui/component/SelectRepeaterWeeklyDialog$OnOKClickListener;
.super Ljava/lang/Object;
.source "SelectRepeaterWeeklyDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/ui/component/SelectRepeaterWeeklyDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnOKClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/ui/component/SelectRepeaterWeeklyDialog;


# direct methods
.method private constructor <init>(Lim/doit/pro/ui/component/SelectRepeaterWeeklyDialog;)V
    .locals 0

    .prologue
    .line 189
    iput-object p1, p0, Lim/doit/pro/ui/component/SelectRepeaterWeeklyDialog$OnOKClickListener;->this$0:Lim/doit/pro/ui/component/SelectRepeaterWeeklyDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lim/doit/pro/ui/component/SelectRepeaterWeeklyDialog;Lim/doit/pro/ui/component/SelectRepeaterWeeklyDialog$OnOKClickListener;)V
    .locals 0

    .prologue
    .line 189
    invoke-direct {p0, p1}, Lim/doit/pro/ui/component/SelectRepeaterWeeklyDialog$OnOKClickListener;-><init>(Lim/doit/pro/ui/component/SelectRepeaterWeeklyDialog;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 192
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectRepeaterWeeklyDialog$OnOKClickListener;->this$0:Lim/doit/pro/ui/component/SelectRepeaterWeeklyDialog;

    invoke-static {v0}, Lim/doit/pro/ui/component/SelectRepeaterWeeklyDialog;->access$3(Lim/doit/pro/ui/component/SelectRepeaterWeeklyDialog;)Lim/doit/pro/ui/component/SelectRepeaterWeeklyDialog$OnSelectWeeklyFinishListner;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectRepeaterWeeklyDialog$OnOKClickListener;->this$0:Lim/doit/pro/ui/component/SelectRepeaterWeeklyDialog;

    invoke-static {v0}, Lim/doit/pro/ui/component/SelectRepeaterWeeklyDialog;->access$3(Lim/doit/pro/ui/component/SelectRepeaterWeeklyDialog;)Lim/doit/pro/ui/component/SelectRepeaterWeeklyDialog$OnSelectWeeklyFinishListner;

    move-result-object v0

    iget-object v1, p0, Lim/doit/pro/ui/component/SelectRepeaterWeeklyDialog$OnOKClickListener;->this$0:Lim/doit/pro/ui/component/SelectRepeaterWeeklyDialog;

    invoke-static {v1}, Lim/doit/pro/ui/component/SelectRepeaterWeeklyDialog;->access$0(Lim/doit/pro/ui/component/SelectRepeaterWeeklyDialog;)Lim/doit/pro/model/Repeater;

    move-result-object v1

    invoke-interface {v0, v1}, Lim/doit/pro/ui/component/SelectRepeaterWeeklyDialog$OnSelectWeeklyFinishListner;->finish(Lim/doit/pro/model/Repeater;)V

    .line 195
    :cond_0
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectRepeaterWeeklyDialog$OnOKClickListener;->this$0:Lim/doit/pro/ui/component/SelectRepeaterWeeklyDialog;

    invoke-static {v0}, Lim/doit/pro/ui/component/SelectRepeaterWeeklyDialog;->access$2(Lim/doit/pro/ui/component/SelectRepeaterWeeklyDialog;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 196
    return-void
.end method
