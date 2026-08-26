.class Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog$OnDownWeekClickListener;
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
    name = "OnDownWeekClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog;


# direct methods
.method private constructor <init>(Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog;)V
    .locals 0

    .prologue
    .line 336
    iput-object p1, p0, Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog$OnDownWeekClickListener;->this$0:Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog;Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog$OnDownWeekClickListener;)V
    .locals 0

    .prologue
    .line 336
    invoke-direct {p0, p1}, Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog$OnDownWeekClickListener;-><init>(Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 339
    iget-object v1, p0, Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog$OnDownWeekClickListener;->this$0:Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog;

    invoke-static {v1}, Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog;->access$0(Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog;)Lim/doit/pro/model/Repeater;

    move-result-object v1

    invoke-virtual {v1}, Lim/doit/pro/model/Repeater;->getMonthly()Lim/doit/pro/model/RepeaterMonthly;

    move-result-object v1

    invoke-virtual {v1}, Lim/doit/pro/model/RepeaterMonthly;->getWeek()Lim/doit/pro/model/RepeaterMonthlyWeek;

    move-result-object v1

    invoke-virtual {v1}, Lim/doit/pro/model/RepeaterMonthlyWeek;->getWeek()I

    move-result v0

    .line 340
    .local v0, "week":I
    const/4 v1, -0x1

    if-gt v0, v1, :cond_0

    .line 341
    const/4 v0, 0x4

    .line 345
    :goto_0
    iget-object v1, p0, Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog$OnDownWeekClickListener;->this$0:Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog;

    invoke-static {v1}, Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog;->access$0(Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog;)Lim/doit/pro/model/Repeater;

    move-result-object v1

    invoke-virtual {v1}, Lim/doit/pro/model/Repeater;->getMonthly()Lim/doit/pro/model/RepeaterMonthly;

    move-result-object v1

    invoke-virtual {v1}, Lim/doit/pro/model/RepeaterMonthly;->getWeek()Lim/doit/pro/model/RepeaterMonthlyWeek;

    move-result-object v1

    invoke-virtual {v1, v0}, Lim/doit/pro/model/RepeaterMonthlyWeek;->setWeek(I)V

    .line 346
    iget-object v1, p0, Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog$OnDownWeekClickListener;->this$0:Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog;

    invoke-static {v1}, Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog;->access$10(Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog;)V

    .line 347
    return-void

    .line 343
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method
