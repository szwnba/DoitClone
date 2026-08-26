.class Lim/doit/pro/activity/DailyPlanOnNextActivity$ListAdapter$1;
.super Ljava/lang/Object;
.source "DailyPlanOnNextActivity.java"

# interfaces
.implements Lim/doit/pro/activity/listview/TaskViewHolder$OnMarkTodayClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/activity/DailyPlanOnNextActivity$ListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lim/doit/pro/activity/DailyPlanOnNextActivity$ListAdapter;


# direct methods
.method constructor <init>(Lim/doit/pro/activity/DailyPlanOnNextActivity$ListAdapter;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lim/doit/pro/activity/DailyPlanOnNextActivity$ListAdapter$1;->this$1:Lim/doit/pro/activity/DailyPlanOnNextActivity$ListAdapter;

    .line 235
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public markToday(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 239
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lim/doit/pro/model/Task;

    .line 240
    .local v1, "task":Lim/doit/pro/model/Task;
    if-eqz v1, :cond_0

    .line 241
    iget-object v2, p0, Lim/doit/pro/activity/DailyPlanOnNextActivity$ListAdapter$1;->this$1:Lim/doit/pro/activity/DailyPlanOnNextActivity$ListAdapter;

    invoke-static {v2}, Lim/doit/pro/activity/DailyPlanOnNextActivity$ListAdapter;->access$0(Lim/doit/pro/activity/DailyPlanOnNextActivity$ListAdapter;)Lim/doit/pro/activity/DailyPlanOnNextActivity;

    move-result-object v2

    invoke-static {v2}, Lim/doit/pro/activity/DailyPlanOnNextActivity;->access$0(Lim/doit/pro/activity/DailyPlanOnNextActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1}, Lim/doit/pro/model/Task;->getUniqUuid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 242
    sget-object v2, Lim/doit/pro/model/enums/Attribute;->plan:Lim/doit/pro/model/enums/Attribute;

    invoke-virtual {v1, v2}, Lim/doit/pro/model/Task;->setAttribute(Lim/doit/pro/model/enums/Attribute;)V

    .line 243
    invoke-virtual {v1}, Lim/doit/pro/model/Task;->isAllDay()Z

    move-result v2

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    invoke-static {v2, v3}, Lim/doit/pro/activity/utils/ViewUtils;->initDefaultStartAt(ZLjava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v0

    .line 244
    .local v0, "startAt":Ljava/util/Calendar;
    invoke-virtual {v1, v0}, Lim/doit/pro/model/Task;->setStartAt(Ljava/util/Calendar;)V

    .line 245
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lim/doit/pro/model/Task;->updateAfterStartAtChange(Ljava/util/Calendar;)V

    .line 246
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v2

    iget-object v2, v2, Lim/doit/pro/db/Persist;->taskDao:Lim/doit/pro/db/persist/TaskDao;

    invoke-virtual {v2, v1}, Lim/doit/pro/db/persist/TaskDao;->updateAndSaveLog(Lim/doit/pro/model/Task;)V

    .line 247
    iget-object v2, p0, Lim/doit/pro/activity/DailyPlanOnNextActivity$ListAdapter$1;->this$1:Lim/doit/pro/activity/DailyPlanOnNextActivity$ListAdapter;

    invoke-static {v2}, Lim/doit/pro/activity/DailyPlanOnNextActivity$ListAdapter;->access$0(Lim/doit/pro/activity/DailyPlanOnNextActivity$ListAdapter;)Lim/doit/pro/activity/DailyPlanOnNextActivity;

    move-result-object v2

    invoke-static {v2}, Lim/doit/pro/activity/DailyPlanOnNextActivity;->access$7(Lim/doit/pro/activity/DailyPlanOnNextActivity;)V

    .line 249
    .end local v0    # "startAt":Ljava/util/Calendar;
    :cond_0
    return-void
.end method
