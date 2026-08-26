.class Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog$OnUpDayOfWeekClickListener;
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
    name = "OnUpDayOfWeekClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog;


# direct methods
.method private constructor <init>(Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog;)V
    .locals 0

    .prologue
    .line 350
    iput-object p1, p0, Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog$OnUpDayOfWeekClickListener;->this$0:Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog;Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog$OnUpDayOfWeekClickListener;)V
    .locals 0

    .prologue
    .line 350
    invoke-direct {p0, p1}, Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog$OnUpDayOfWeekClickListener;-><init>(Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 353
    iget-object v1, p0, Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog$OnUpDayOfWeekClickListener;->this$0:Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog;

    invoke-static {v1}, Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog;->access$0(Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog;)Lim/doit/pro/model/Repeater;

    move-result-object v1

    invoke-virtual {v1}, Lim/doit/pro/model/Repeater;->getMonthly()Lim/doit/pro/model/RepeaterMonthly;

    move-result-object v1

    invoke-virtual {v1}, Lim/doit/pro/model/RepeaterMonthly;->getWeek()Lim/doit/pro/model/RepeaterMonthlyWeek;

    move-result-object v1

    invoke-virtual {v1}, Lim/doit/pro/model/RepeaterMonthlyWeek;->getDayOfWeek()I

    move-result v0

    .line 354
    .local v0, "dayOfWeek":I
    const/4 v1, 0x6

    if-lt v0, v1, :cond_0

    .line 355
    const/4 v0, 0x0

    .line 359
    :goto_0
    iget-object v1, p0, Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog$OnUpDayOfWeekClickListener;->this$0:Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog;

    invoke-static {v1}, Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog;->access$0(Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog;)Lim/doit/pro/model/Repeater;

    move-result-object v1

    invoke-virtual {v1}, Lim/doit/pro/model/Repeater;->getMonthly()Lim/doit/pro/model/RepeaterMonthly;

    move-result-object v1

    invoke-virtual {v1}, Lim/doit/pro/model/RepeaterMonthly;->getWeek()Lim/doit/pro/model/RepeaterMonthlyWeek;

    move-result-object v1

    invoke-virtual {v1, v0}, Lim/doit/pro/model/RepeaterMonthlyWeek;->setDayOfWeek(I)V

    .line 360
    iget-object v1, p0, Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog$OnUpDayOfWeekClickListener;->this$0:Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog;

    invoke-static {v1}, Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog;->access$11(Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog;)V

    .line 361
    return-void

    .line 357
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
