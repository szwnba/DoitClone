.class Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog$OnNextDayOfWeekClickListener;
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
    name = "OnNextDayOfWeekClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog;


# direct methods
.method private constructor <init>(Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog;)V
    .locals 0

    .prologue
    .line 364
    iput-object p1, p0, Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog$OnNextDayOfWeekClickListener;->this$0:Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog;Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog$OnNextDayOfWeekClickListener;)V
    .locals 0

    .prologue
    .line 364
    invoke-direct {p0, p1}, Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog$OnNextDayOfWeekClickListener;-><init>(Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 367
    iget-object v1, p0, Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog$OnNextDayOfWeekClickListener;->this$0:Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog;

    invoke-static {v1}, Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog;->access$0(Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog;)Lim/doit/pro/model/Repeater;

    move-result-object v1

    invoke-virtual {v1}, Lim/doit/pro/model/Repeater;->getMonthly()Lim/doit/pro/model/RepeaterMonthly;

    move-result-object v1

    invoke-virtual {v1}, Lim/doit/pro/model/RepeaterMonthly;->getWeek()Lim/doit/pro/model/RepeaterMonthlyWeek;

    move-result-object v1

    invoke-virtual {v1}, Lim/doit/pro/model/RepeaterMonthlyWeek;->getDayOfWeek()I

    move-result v0

    .line 368
    .local v0, "dayOfWeek":I
    if-gtz v0, :cond_0

    .line 369
    const/4 v0, 0x6

    .line 373
    :goto_0
    iget-object v1, p0, Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog$OnNextDayOfWeekClickListener;->this$0:Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog;

    invoke-static {v1}, Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog;->access$0(Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog;)Lim/doit/pro/model/Repeater;

    move-result-object v1

    invoke-virtual {v1}, Lim/doit/pro/model/Repeater;->getMonthly()Lim/doit/pro/model/RepeaterMonthly;

    move-result-object v1

    invoke-virtual {v1}, Lim/doit/pro/model/RepeaterMonthly;->getWeek()Lim/doit/pro/model/RepeaterMonthlyWeek;

    move-result-object v1

    invoke-virtual {v1, v0}, Lim/doit/pro/model/RepeaterMonthlyWeek;->setDayOfWeek(I)V

    .line 374
    iget-object v1, p0, Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog$OnNextDayOfWeekClickListener;->this$0:Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog;

    invoke-static {v1}, Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog;->access$11(Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog;)V

    .line 375
    return-void

    .line 371
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method
