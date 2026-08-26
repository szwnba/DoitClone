.class Lim/doit/pro/ui/component/SelectDateTimeDialog$4;
.super Ljava/lang/Object;
.source "SelectDateTimeDialog.java"

# interfaces
.implements Lim/doit/pro/ui/component/DTimePicker$OnSelectTimeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/ui/component/SelectDateTimeDialog;->addTimePicker()V
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
    iput-object p1, p0, Lim/doit/pro/ui/component/SelectDateTimeDialog$4;->this$0:Lim/doit/pro/ui/component/SelectDateTimeDialog;

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public selectTime(II)V
    .locals 3
    .param p1, "hour"    # I
    .param p2, "minute"    # I

    .prologue
    const/4 v2, 0x0

    .line 150
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectDateTimeDialog$4;->this$0:Lim/doit/pro/ui/component/SelectDateTimeDialog;

    invoke-static {v0}, Lim/doit/pro/ui/component/SelectDateTimeDialog;->access$4(Lim/doit/pro/ui/component/SelectDateTimeDialog;)Ljava/util/Calendar;

    move-result-object v0

    if-nez v0, :cond_0

    .line 151
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectDateTimeDialog$4;->this$0:Lim/doit/pro/ui/component/SelectDateTimeDialog;

    invoke-static {v0}, Lim/doit/pro/ui/component/SelectDateTimeDialog;->access$6(Lim/doit/pro/ui/component/SelectDateTimeDialog;)Ljava/util/Calendar;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 152
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectDateTimeDialog$4;->this$0:Lim/doit/pro/ui/component/SelectDateTimeDialog;

    iget-object v1, p0, Lim/doit/pro/ui/component/SelectDateTimeDialog$4;->this$0:Lim/doit/pro/ui/component/SelectDateTimeDialog;

    invoke-static {v1}, Lim/doit/pro/ui/component/SelectDateTimeDialog;->access$6(Lim/doit/pro/ui/component/SelectDateTimeDialog;)Ljava/util/Calendar;

    move-result-object v1

    invoke-static {v1}, Lim/doit/pro/utils/DateUtils;->copyDate(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v1

    invoke-static {v0, v1}, Lim/doit/pro/ui/component/SelectDateTimeDialog;->access$1(Lim/doit/pro/ui/component/SelectDateTimeDialog;Ljava/util/Calendar;)V

    .line 157
    :cond_0
    :goto_0
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectDateTimeDialog$4;->this$0:Lim/doit/pro/ui/component/SelectDateTimeDialog;

    invoke-static {v0}, Lim/doit/pro/ui/component/SelectDateTimeDialog;->access$4(Lim/doit/pro/ui/component/SelectDateTimeDialog;)Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    .line 158
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectDateTimeDialog$4;->this$0:Lim/doit/pro/ui/component/SelectDateTimeDialog;

    invoke-static {v0}, Lim/doit/pro/ui/component/SelectDateTimeDialog;->access$4(Lim/doit/pro/ui/component/SelectDateTimeDialog;)Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xc

    invoke-virtual {v0, v1, p2}, Ljava/util/Calendar;->set(II)V

    .line 159
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectDateTimeDialog$4;->this$0:Lim/doit/pro/ui/component/SelectDateTimeDialog;

    invoke-static {v0}, Lim/doit/pro/ui/component/SelectDateTimeDialog;->access$4(Lim/doit/pro/ui/component/SelectDateTimeDialog;)Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xd

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 160
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectDateTimeDialog$4;->this$0:Lim/doit/pro/ui/component/SelectDateTimeDialog;

    invoke-static {v0}, Lim/doit/pro/ui/component/SelectDateTimeDialog;->access$4(Lim/doit/pro/ui/component/SelectDateTimeDialog;)Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xe

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 161
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectDateTimeDialog$4;->this$0:Lim/doit/pro/ui/component/SelectDateTimeDialog;

    invoke-static {v0}, Lim/doit/pro/ui/component/SelectDateTimeDialog;->access$2(Lim/doit/pro/ui/component/SelectDateTimeDialog;)V

    .line 162
    return-void

    .line 154
    :cond_1
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectDateTimeDialog$4;->this$0:Lim/doit/pro/ui/component/SelectDateTimeDialog;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-static {v0, v1}, Lim/doit/pro/ui/component/SelectDateTimeDialog;->access$1(Lim/doit/pro/ui/component/SelectDateTimeDialog;Ljava/util/Calendar;)V

    goto :goto_0
.end method
