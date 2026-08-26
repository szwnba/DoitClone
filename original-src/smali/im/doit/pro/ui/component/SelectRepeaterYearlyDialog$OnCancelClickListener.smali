.class Lim/doit/pro/ui/component/SelectRepeaterYearlyDialog$OnCancelClickListener;
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
    name = "OnCancelClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/ui/component/SelectRepeaterYearlyDialog;


# direct methods
.method private constructor <init>(Lim/doit/pro/ui/component/SelectRepeaterYearlyDialog;)V
    .locals 0

    .prologue
    .line 150
    iput-object p1, p0, Lim/doit/pro/ui/component/SelectRepeaterYearlyDialog$OnCancelClickListener;->this$0:Lim/doit/pro/ui/component/SelectRepeaterYearlyDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lim/doit/pro/ui/component/SelectRepeaterYearlyDialog;Lim/doit/pro/ui/component/SelectRepeaterYearlyDialog$OnCancelClickListener;)V
    .locals 0

    .prologue
    .line 150
    invoke-direct {p0, p1}, Lim/doit/pro/ui/component/SelectRepeaterYearlyDialog$OnCancelClickListener;-><init>(Lim/doit/pro/ui/component/SelectRepeaterYearlyDialog;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 153
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectRepeaterYearlyDialog$OnCancelClickListener;->this$0:Lim/doit/pro/ui/component/SelectRepeaterYearlyDialog;

    invoke-static {v0}, Lim/doit/pro/ui/component/SelectRepeaterYearlyDialog;->access$2(Lim/doit/pro/ui/component/SelectRepeaterYearlyDialog;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 154
    return-void
.end method
