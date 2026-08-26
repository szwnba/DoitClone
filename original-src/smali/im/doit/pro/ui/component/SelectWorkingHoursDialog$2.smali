.class Lim/doit/pro/ui/component/SelectWorkingHoursDialog$2;
.super Ljava/lang/Object;
.source "SelectWorkingHoursDialog.java"

# interfaces
.implements Lim/doit/pro/ui/component/DStartEndTimePicker$OnSelectStartEndTimeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/ui/component/SelectWorkingHoursDialog;->addStartEndTimePicker()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/ui/component/SelectWorkingHoursDialog;


# direct methods
.method constructor <init>(Lim/doit/pro/ui/component/SelectWorkingHoursDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lim/doit/pro/ui/component/SelectWorkingHoursDialog$2;->this$0:Lim/doit/pro/ui/component/SelectWorkingHoursDialog;

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public selectTime(IIII)V
    .locals 4
    .param p1, "startHour"    # I
    .param p2, "startMinute"    # I
    .param p3, "endHour"    # I
    .param p4, "endMinute"    # I

    .prologue
    const/16 v3, 0xc

    const/16 v2, 0xb

    .line 83
    invoke-static {}, Lim/doit/pro/utils/DateUtils;->startOfToday()Ljava/util/Calendar;

    move-result-object v1

    .local v1, "startDate":Ljava/util/Calendar;
    invoke-static {}, Lim/doit/pro/utils/DateUtils;->startOfToday()Ljava/util/Calendar;

    move-result-object v0

    .line 84
    .local v0, "endDate":Ljava/util/Calendar;
    invoke-virtual {v1, v2, p1}, Ljava/util/Calendar;->set(II)V

    .line 85
    invoke-virtual {v1, v3, p2}, Ljava/util/Calendar;->set(II)V

    .line 86
    invoke-virtual {v0, v2, p3}, Ljava/util/Calendar;->set(II)V

    .line 87
    invoke-virtual {v0, v3, p4}, Ljava/util/Calendar;->set(II)V

    .line 88
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->user()Lim/doit/pro/model/User;

    move-result-object v2

    const-string v3, "HH:mm"

    invoke-static {v1, v3}, Lim/doit/pro/utils/DateUtils;->format(Ljava/util/Calendar;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lim/doit/pro/model/User;->setWorkingStartTime(Ljava/lang/String;)V

    .line 89
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->user()Lim/doit/pro/model/User;

    move-result-object v2

    const-string v3, "HH:mm"

    invoke-static {v0, v3}, Lim/doit/pro/utils/DateUtils;->format(Ljava/util/Calendar;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lim/doit/pro/model/User;->setWorkingEndTime(Ljava/lang/String;)V

    .line 90
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v2

    iget-object v2, v2, Lim/doit/pro/db/Persist;->userDao:Lim/doit/pro/db/persist/UserDao;

    invoke-static {}, Lim/doit/pro/activity/DoitApp;->user()Lim/doit/pro/model/User;

    move-result-object v3

    invoke-virtual {v2, v3}, Lim/doit/pro/db/persist/UserDao;->updateAndSaveLog(Lim/doit/pro/model/User;)V

    .line 91
    iget-object v2, p0, Lim/doit/pro/ui/component/SelectWorkingHoursDialog$2;->this$0:Lim/doit/pro/ui/component/SelectWorkingHoursDialog;

    invoke-static {v2}, Lim/doit/pro/ui/component/SelectWorkingHoursDialog;->access$1(Lim/doit/pro/ui/component/SelectWorkingHoursDialog;)Lim/doit/pro/ui/component/SelectWorkingHoursDialog$OnSelectWorkingHoursDoneListner;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 92
    iget-object v2, p0, Lim/doit/pro/ui/component/SelectWorkingHoursDialog$2;->this$0:Lim/doit/pro/ui/component/SelectWorkingHoursDialog;

    invoke-static {v2}, Lim/doit/pro/ui/component/SelectWorkingHoursDialog;->access$1(Lim/doit/pro/ui/component/SelectWorkingHoursDialog;)Lim/doit/pro/ui/component/SelectWorkingHoursDialog$OnSelectWorkingHoursDoneListner;

    move-result-object v2

    invoke-interface {v2}, Lim/doit/pro/ui/component/SelectWorkingHoursDialog$OnSelectWorkingHoursDoneListner;->finish()V

    .line 94
    :cond_0
    return-void
.end method
