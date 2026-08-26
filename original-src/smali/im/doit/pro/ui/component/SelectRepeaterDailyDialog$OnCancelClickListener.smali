.class Lim/doit/pro/ui/component/SelectRepeaterDailyDialog$OnCancelClickListener;
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
    name = "OnCancelClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/ui/component/SelectRepeaterDailyDialog;


# direct methods
.method private constructor <init>(Lim/doit/pro/ui/component/SelectRepeaterDailyDialog;)V
    .locals 0

    .prologue
    .line 144
    iput-object p1, p0, Lim/doit/pro/ui/component/SelectRepeaterDailyDialog$OnCancelClickListener;->this$0:Lim/doit/pro/ui/component/SelectRepeaterDailyDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lim/doit/pro/ui/component/SelectRepeaterDailyDialog;Lim/doit/pro/ui/component/SelectRepeaterDailyDialog$OnCancelClickListener;)V
    .locals 0

    .prologue
    .line 144
    invoke-direct {p0, p1}, Lim/doit/pro/ui/component/SelectRepeaterDailyDialog$OnCancelClickListener;-><init>(Lim/doit/pro/ui/component/SelectRepeaterDailyDialog;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 147
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectRepeaterDailyDialog$OnCancelClickListener;->this$0:Lim/doit/pro/ui/component/SelectRepeaterDailyDialog;

    invoke-static {v0}, Lim/doit/pro/ui/component/SelectRepeaterDailyDialog;->access$2(Lim/doit/pro/ui/component/SelectRepeaterDailyDialog;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 148
    return-void
.end method
