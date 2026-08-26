.class Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog$OnDownDateClickListener;
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
    name = "OnDownDateClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog;


# direct methods
.method private constructor <init>(Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog;)V
    .locals 0

    .prologue
    .line 306
    iput-object p1, p0, Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog$OnDownDateClickListener;->this$0:Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog;Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog$OnDownDateClickListener;)V
    .locals 0

    .prologue
    .line 306
    invoke-direct {p0, p1}, Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog$OnDownDateClickListener;-><init>(Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 309
    iget-object v1, p0, Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog$OnDownDateClickListener;->this$0:Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog;

    invoke-static {v1}, Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog;->access$0(Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog;)Lim/doit/pro/model/Repeater;

    move-result-object v1

    invoke-virtual {v1}, Lim/doit/pro/model/Repeater;->getMonthly()Lim/doit/pro/model/RepeaterMonthly;

    move-result-object v1

    invoke-virtual {v1}, Lim/doit/pro/model/RepeaterMonthly;->getDate()Lim/doit/pro/model/RepeaterMonthlyDate;

    move-result-object v1

    invoke-virtual {v1}, Lim/doit/pro/model/RepeaterMonthlyDate;->getDayOfMonth()I

    move-result v0

    .line 310
    .local v0, "dayOfMonth":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 311
    const/4 v0, -0x1

    .line 317
    :goto_0
    iget-object v1, p0, Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog$OnDownDateClickListener;->this$0:Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog;

    invoke-static {v1}, Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog;->access$0(Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog;)Lim/doit/pro/model/Repeater;

    move-result-object v1

    invoke-virtual {v1}, Lim/doit/pro/model/Repeater;->getMonthly()Lim/doit/pro/model/RepeaterMonthly;

    move-result-object v1

    invoke-virtual {v1}, Lim/doit/pro/model/RepeaterMonthly;->getDate()Lim/doit/pro/model/RepeaterMonthlyDate;

    move-result-object v1

    invoke-virtual {v1, v0}, Lim/doit/pro/model/RepeaterMonthlyDate;->setDayOfMonth(I)V

    .line 318
    iget-object v1, p0, Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog$OnDownDateClickListener;->this$0:Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog;

    invoke-static {v1}, Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog;->access$9(Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog;)V

    .line 319
    return-void

    .line 312
    :cond_0
    const/4 v1, -0x3

    if-ne v0, v1, :cond_1

    .line 313
    iget-object v1, p0, Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog$OnDownDateClickListener;->this$0:Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog;

    invoke-static {v1}, Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog;->access$8(Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog;)I

    move-result v0

    .line 314
    goto :goto_0

    .line 315
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method
