.class Lim/doit/pro/ui/component/SelectDateTimeDialog$5;
.super Ljava/lang/Object;
.source "SelectDateTimeDialog.java"

# interfaces
.implements Lim/doit/pro/ui/component/DDatePicker$OnSelectDateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/ui/component/SelectDateTimeDialog;->addDatePicker()V
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
    iput-object p1, p0, Lim/doit/pro/ui/component/SelectDateTimeDialog$5;->this$0:Lim/doit/pro/ui/component/SelectDateTimeDialog;

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public selectDate(III)V
    .locals 2
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "day"    # I

    .prologue
    .line 176
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectDateTimeDialog$5;->this$0:Lim/doit/pro/ui/component/SelectDateTimeDialog;

    invoke-static {v0}, Lim/doit/pro/ui/component/SelectDateTimeDialog;->access$4(Lim/doit/pro/ui/component/SelectDateTimeDialog;)Ljava/util/Calendar;

    move-result-object v0

    if-nez v0, :cond_0

    .line 177
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectDateTimeDialog$5;->this$0:Lim/doit/pro/ui/component/SelectDateTimeDialog;

    invoke-static {v0}, Lim/doit/pro/ui/component/SelectDateTimeDialog;->access$6(Lim/doit/pro/ui/component/SelectDateTimeDialog;)Ljava/util/Calendar;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 178
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectDateTimeDialog$5;->this$0:Lim/doit/pro/ui/component/SelectDateTimeDialog;

    iget-object v1, p0, Lim/doit/pro/ui/component/SelectDateTimeDialog$5;->this$0:Lim/doit/pro/ui/component/SelectDateTimeDialog;

    invoke-static {v1}, Lim/doit/pro/ui/component/SelectDateTimeDialog;->access$6(Lim/doit/pro/ui/component/SelectDateTimeDialog;)Ljava/util/Calendar;

    move-result-object v1

    invoke-static {v1}, Lim/doit/pro/utils/DateUtils;->copyDate(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v1

    invoke-static {v0, v1}, Lim/doit/pro/ui/component/SelectDateTimeDialog;->access$1(Lim/doit/pro/ui/component/SelectDateTimeDialog;Ljava/util/Calendar;)V

    .line 183
    :cond_0
    :goto_0
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectDateTimeDialog$5;->this$0:Lim/doit/pro/ui/component/SelectDateTimeDialog;

    invoke-static {v0}, Lim/doit/pro/ui/component/SelectDateTimeDialog;->access$4(Lim/doit/pro/ui/component/SelectDateTimeDialog;)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/Calendar;->set(III)V

    .line 184
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectDateTimeDialog$5;->this$0:Lim/doit/pro/ui/component/SelectDateTimeDialog;

    invoke-static {v0}, Lim/doit/pro/ui/component/SelectDateTimeDialog;->access$2(Lim/doit/pro/ui/component/SelectDateTimeDialog;)V

    .line 185
    return-void

    .line 180
    :cond_1
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectDateTimeDialog$5;->this$0:Lim/doit/pro/ui/component/SelectDateTimeDialog;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-static {v0, v1}, Lim/doit/pro/ui/component/SelectDateTimeDialog;->access$1(Lim/doit/pro/ui/component/SelectDateTimeDialog;Ljava/util/Calendar;)V

    goto :goto_0
.end method
