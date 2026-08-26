.class Lim/doit/pro/ui/component/SelectDateTimeDialog$3;
.super Ljava/lang/Object;
.source "SelectDateTimeDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/ui/component/SelectDateTimeDialog;->showDialog(Ljava/util/Calendar;ZZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/ui/component/SelectDateTimeDialog;


# direct methods
.method constructor <init>(Lim/doit/pro/ui/component/SelectDateTimeDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lim/doit/pro/ui/component/SelectDateTimeDialog$3;->this$0:Lim/doit/pro/ui/component/SelectDateTimeDialog;

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 123
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectDateTimeDialog$3;->this$0:Lim/doit/pro/ui/component/SelectDateTimeDialog;

    invoke-static {v0}, Lim/doit/pro/ui/component/SelectDateTimeDialog;->access$3(Lim/doit/pro/ui/component/SelectDateTimeDialog;)Lim/doit/pro/ui/component/SelectDateTimeDialog$OnSelectDateTimeListner;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 124
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectDateTimeDialog$3;->this$0:Lim/doit/pro/ui/component/SelectDateTimeDialog;

    invoke-static {v0}, Lim/doit/pro/ui/component/SelectDateTimeDialog;->access$5(Lim/doit/pro/ui/component/SelectDateTimeDialog;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectDateTimeDialog$3;->this$0:Lim/doit/pro/ui/component/SelectDateTimeDialog;

    invoke-static {v0}, Lim/doit/pro/ui/component/SelectDateTimeDialog;->access$4(Lim/doit/pro/ui/component/SelectDateTimeDialog;)Ljava/util/Calendar;

    move-result-object v0

    invoke-static {v0}, Lim/doit/pro/utils/DateUtils;->clearHourAndMinuteAndSecondAndMillisecond(Ljava/util/Calendar;)V

    .line 127
    :cond_0
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectDateTimeDialog$3;->this$0:Lim/doit/pro/ui/component/SelectDateTimeDialog;

    invoke-static {v0}, Lim/doit/pro/ui/component/SelectDateTimeDialog;->access$3(Lim/doit/pro/ui/component/SelectDateTimeDialog;)Lim/doit/pro/ui/component/SelectDateTimeDialog$OnSelectDateTimeListner;

    move-result-object v0

    iget-object v1, p0, Lim/doit/pro/ui/component/SelectDateTimeDialog$3;->this$0:Lim/doit/pro/ui/component/SelectDateTimeDialog;

    invoke-static {v1}, Lim/doit/pro/ui/component/SelectDateTimeDialog;->access$4(Lim/doit/pro/ui/component/SelectDateTimeDialog;)Ljava/util/Calendar;

    move-result-object v1

    invoke-interface {v0, v1}, Lim/doit/pro/ui/component/SelectDateTimeDialog$OnSelectDateTimeListner;->finish(Ljava/util/Calendar;)V

    .line 129
    :cond_1
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectDateTimeDialog$3;->this$0:Lim/doit/pro/ui/component/SelectDateTimeDialog;

    invoke-static {v0}, Lim/doit/pro/ui/component/SelectDateTimeDialog;->access$0(Lim/doit/pro/ui/component/SelectDateTimeDialog;)V

    .line 130
    return-void
.end method
