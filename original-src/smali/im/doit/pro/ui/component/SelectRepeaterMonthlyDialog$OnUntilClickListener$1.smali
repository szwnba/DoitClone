.class Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog$OnUntilClickListener$1;
.super Ljava/lang/Object;
.source "SelectRepeaterMonthlyDialog.java"

# interfaces
.implements Lim/doit/pro/ui/component/SelectDateTimeDialog$OnSelectDateTimeListner;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog$OnUntilClickListener;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog$OnUntilClickListener;


# direct methods
.method constructor <init>(Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog$OnUntilClickListener;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog$OnUntilClickListener$1;->this$1:Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog$OnUntilClickListener;

    .line 249
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public finish(Ljava/util/Calendar;)V
    .locals 1
    .param p1, "date"    # Ljava/util/Calendar;

    .prologue
    .line 253
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog$OnUntilClickListener$1;->this$1:Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog$OnUntilClickListener;

    invoke-static {v0}, Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog$OnUntilClickListener;->access$1(Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog$OnUntilClickListener;)Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog;

    move-result-object v0

    invoke-static {v0}, Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog;->access$0(Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog;)Lim/doit/pro/model/Repeater;

    move-result-object v0

    invoke-virtual {v0, p1}, Lim/doit/pro/model/Repeater;->setEndsOn(Ljava/util/Calendar;)V

    .line 254
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog$OnUntilClickListener$1;->this$1:Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog$OnUntilClickListener;

    invoke-static {v0}, Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog$OnUntilClickListener;->access$1(Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog$OnUntilClickListener;)Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog;

    move-result-object v0

    invoke-static {v0}, Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog;->access$5(Lim/doit/pro/ui/component/SelectRepeaterMonthlyDialog;)V

    .line 255
    return-void
.end method
