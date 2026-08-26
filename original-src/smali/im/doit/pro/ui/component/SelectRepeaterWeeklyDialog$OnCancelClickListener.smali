.class Lim/doit/pro/ui/component/SelectRepeaterWeeklyDialog$OnCancelClickListener;
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
    name = "OnCancelClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/ui/component/SelectRepeaterWeeklyDialog;


# direct methods
.method private constructor <init>(Lim/doit/pro/ui/component/SelectRepeaterWeeklyDialog;)V
    .locals 0

    .prologue
    .line 182
    iput-object p1, p0, Lim/doit/pro/ui/component/SelectRepeaterWeeklyDialog$OnCancelClickListener;->this$0:Lim/doit/pro/ui/component/SelectRepeaterWeeklyDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lim/doit/pro/ui/component/SelectRepeaterWeeklyDialog;Lim/doit/pro/ui/component/SelectRepeaterWeeklyDialog$OnCancelClickListener;)V
    .locals 0

    .prologue
    .line 182
    invoke-direct {p0, p1}, Lim/doit/pro/ui/component/SelectRepeaterWeeklyDialog$OnCancelClickListener;-><init>(Lim/doit/pro/ui/component/SelectRepeaterWeeklyDialog;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 185
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectRepeaterWeeklyDialog$OnCancelClickListener;->this$0:Lim/doit/pro/ui/component/SelectRepeaterWeeklyDialog;

    invoke-static {v0}, Lim/doit/pro/ui/component/SelectRepeaterWeeklyDialog;->access$2(Lim/doit/pro/ui/component/SelectRepeaterWeeklyDialog;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 186
    return-void
.end method
