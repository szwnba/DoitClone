.class Lim/doit/pro/ui/component/SelectRepeaterDailyDialog$OnOKClickListener;
.super Ljava/lang/Object;
.source "SelectRepeaterDailyDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/ui/component/SelectRepeaterDailyDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnOKClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/ui/component/SelectRepeaterDailyDialog;


# direct methods
.method private constructor <init>(Lim/doit/pro/ui/component/SelectRepeaterDailyDialog;)V
    .locals 0

    .prologue
    .line 151
    iput-object p1, p0, Lim/doit/pro/ui/component/SelectRepeaterDailyDialog$OnOKClickListener;->this$0:Lim/doit/pro/ui/component/SelectRepeaterDailyDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lim/doit/pro/ui/component/SelectRepeaterDailyDialog;Lim/doit/pro/ui/component/SelectRepeaterDailyDialog$OnOKClickListener;)V
    .locals 0

    .prologue
    .line 151
    invoke-direct {p0, p1}, Lim/doit/pro/ui/component/SelectRepeaterDailyDialog$OnOKClickListener;-><init>(Lim/doit/pro/ui/component/SelectRepeaterDailyDialog;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 154
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectRepeaterDailyDialog$OnOKClickListener;->this$0:Lim/doit/pro/ui/component/SelectRepeaterDailyDialog;

    invoke-static {v0}, Lim/doit/pro/ui/component/SelectRepeaterDailyDialog;->access$3(Lim/doit/pro/ui/component/SelectRepeaterDailyDialog;)Lim/doit/pro/ui/component/SelectRepeaterDailyDialog$OnSelectDailyFinishListner;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectRepeaterDailyDialog$OnOKClickListener;->this$0:Lim/doit/pro/ui/component/SelectRepeaterDailyDialog;

    invoke-static {v0}, Lim/doit/pro/ui/component/SelectRepeaterDailyDialog;->access$3(Lim/doit/pro/ui/component/SelectRepeaterDailyDialog;)Lim/doit/pro/ui/component/SelectRepeaterDailyDialog$OnSelectDailyFinishListner;

    move-result-object v0

    iget-object v1, p0, Lim/doit/pro/ui/component/SelectRepeaterDailyDialog$OnOKClickListener;->this$0:Lim/doit/pro/ui/component/SelectRepeaterDailyDialog;

    invoke-static {v1}, Lim/doit/pro/ui/component/SelectRepeaterDailyDialog;->access$0(Lim/doit/pro/ui/component/SelectRepeaterDailyDialog;)Lim/doit/pro/model/Repeater;

    move-result-object v1

    invoke-interface {v0, v1}, Lim/doit/pro/ui/component/SelectRepeaterDailyDialog$OnSelectDailyFinishListner;->finish(Lim/doit/pro/model/Repeater;)V

    .line 157
    :cond_0
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectRepeaterDailyDialog$OnOKClickListener;->this$0:Lim/doit/pro/ui/component/SelectRepeaterDailyDialog;

    invoke-static {v0}, Lim/doit/pro/ui/component/SelectRepeaterDailyDialog;->access$2(Lim/doit/pro/ui/component/SelectRepeaterDailyDialog;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 158
    return-void
.end method
