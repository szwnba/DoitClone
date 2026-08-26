.class Lim/doit/pro/activity/TaskDetailFragment$OnAllDayClick;
.super Ljava/lang/Object;
.source "TaskDetailFragment.java"

# interfaces
.implements Lim/doit/pro/ui/component/LabelSwitchButton$OnSwitchCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/activity/TaskDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnAllDayClick"
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/activity/TaskDetailFragment;


# direct methods
.method private constructor <init>(Lim/doit/pro/activity/TaskDetailFragment;)V
    .locals 0

    .prologue
    .line 1279
    iput-object p1, p0, Lim/doit/pro/activity/TaskDetailFragment$OnAllDayClick;->this$0:Lim/doit/pro/activity/TaskDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lim/doit/pro/activity/TaskDetailFragment;Lim/doit/pro/activity/TaskDetailFragment$OnAllDayClick;)V
    .locals 0

    .prologue
    .line 1279
    invoke-direct {p0, p1}, Lim/doit/pro/activity/TaskDetailFragment$OnAllDayClick;-><init>(Lim/doit/pro/activity/TaskDetailFragment;)V

    return-void
.end method

.method private setTimeAfterAllDayOff()V
    .locals 11

    .prologue
    const/16 v10, 0xc

    const/16 v9, 0xb

    const/4 v8, 0x1

    .line 1316
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 1317
    .local v3, "now":Ljava/util/Calendar;
    invoke-virtual {v3, v9}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 1318
    .local v1, "hour":I
    invoke-virtual {v3, v10}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 1319
    .local v2, "minute":I
    iget-object v5, p0, Lim/doit/pro/activity/TaskDetailFragment$OnAllDayClick;->this$0:Lim/doit/pro/activity/TaskDetailFragment;

    invoke-static {v5}, Lim/doit/pro/activity/TaskDetailFragment;->access$0(Lim/doit/pro/activity/TaskDetailFragment;)Lim/doit/pro/model/Task;

    move-result-object v5

    invoke-virtual {v5}, Lim/doit/pro/model/Task;->getStartAt()Ljava/util/Calendar;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 1320
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    .line 1321
    .local v4, "startAt":Ljava/util/Calendar;
    iget-object v5, p0, Lim/doit/pro/activity/TaskDetailFragment$OnAllDayClick;->this$0:Lim/doit/pro/activity/TaskDetailFragment;

    invoke-static {v5}, Lim/doit/pro/activity/TaskDetailFragment;->access$0(Lim/doit/pro/activity/TaskDetailFragment;)Lim/doit/pro/model/Task;

    move-result-object v5

    invoke-virtual {v5}, Lim/doit/pro/model/Task;->getStartAt()Ljava/util/Calendar;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1322
    invoke-virtual {v4, v9, v1}, Ljava/util/Calendar;->set(II)V

    .line 1323
    invoke-virtual {v4, v10, v2}, Ljava/util/Calendar;->set(II)V

    .line 1324
    invoke-static {v4, v8, v8}, Lim/doit/pro/utils/DateUtils;->addCurrentDateHour(Ljava/util/Calendar;IZ)V

    .line 1325
    iget-object v5, p0, Lim/doit/pro/activity/TaskDetailFragment$OnAllDayClick;->this$0:Lim/doit/pro/activity/TaskDetailFragment;

    invoke-static {v5}, Lim/doit/pro/activity/TaskDetailFragment;->access$0(Lim/doit/pro/activity/TaskDetailFragment;)Lim/doit/pro/model/Task;

    move-result-object v5

    invoke-virtual {v5, v4}, Lim/doit/pro/model/Task;->setStartAt(Ljava/util/Calendar;)V

    .line 1327
    .end local v4    # "startAt":Ljava/util/Calendar;
    :cond_0
    iget-object v5, p0, Lim/doit/pro/activity/TaskDetailFragment$OnAllDayClick;->this$0:Lim/doit/pro/activity/TaskDetailFragment;

    invoke-static {v5}, Lim/doit/pro/activity/TaskDetailFragment;->access$0(Lim/doit/pro/activity/TaskDetailFragment;)Lim/doit/pro/model/Task;

    move-result-object v5

    invoke-virtual {v5}, Lim/doit/pro/model/Task;->getEndAt()Ljava/util/Calendar;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 1328
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1329
    .local v0, "endAt":Ljava/util/Calendar;
    iget-object v5, p0, Lim/doit/pro/activity/TaskDetailFragment$OnAllDayClick;->this$0:Lim/doit/pro/activity/TaskDetailFragment;

    invoke-static {v5}, Lim/doit/pro/activity/TaskDetailFragment;->access$0(Lim/doit/pro/activity/TaskDetailFragment;)Lim/doit/pro/model/Task;

    move-result-object v5

    invoke-virtual {v5}, Lim/doit/pro/model/Task;->getEndAt()Ljava/util/Calendar;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1330
    invoke-virtual {v0, v9, v1}, Ljava/util/Calendar;->set(II)V

    .line 1331
    invoke-virtual {v0, v10, v2}, Ljava/util/Calendar;->set(II)V

    .line 1332
    const/4 v5, 0x2

    invoke-static {v0, v5, v8}, Lim/doit/pro/utils/DateUtils;->addCurrentDateHour(Ljava/util/Calendar;IZ)V

    .line 1333
    iget-object v5, p0, Lim/doit/pro/activity/TaskDetailFragment$OnAllDayClick;->this$0:Lim/doit/pro/activity/TaskDetailFragment;

    invoke-static {v5}, Lim/doit/pro/activity/TaskDetailFragment;->access$0(Lim/doit/pro/activity/TaskDetailFragment;)Lim/doit/pro/model/Task;

    move-result-object v5

    invoke-virtual {v5, v0}, Lim/doit/pro/model/Task;->setEndAt(Ljava/util/Calendar;)V

    .line 1335
    .end local v0    # "endAt":Ljava/util/Calendar;
    :cond_1
    return-void
.end method

.method private setTimeAfterAllDayOn()V
    .locals 4

    .prologue
    .line 1301
    iget-object v2, p0, Lim/doit/pro/activity/TaskDetailFragment$OnAllDayClick;->this$0:Lim/doit/pro/activity/TaskDetailFragment;

    invoke-static {v2}, Lim/doit/pro/activity/TaskDetailFragment;->access$0(Lim/doit/pro/activity/TaskDetailFragment;)Lim/doit/pro/model/Task;

    move-result-object v2

    invoke-virtual {v2}, Lim/doit/pro/model/Task;->getStartAt()Ljava/util/Calendar;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1302
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 1303
    .local v1, "startAt":Ljava/util/Calendar;
    iget-object v2, p0, Lim/doit/pro/activity/TaskDetailFragment$OnAllDayClick;->this$0:Lim/doit/pro/activity/TaskDetailFragment;

    invoke-static {v2}, Lim/doit/pro/activity/TaskDetailFragment;->access$0(Lim/doit/pro/activity/TaskDetailFragment;)Lim/doit/pro/model/Task;

    move-result-object v2

    invoke-virtual {v2}, Lim/doit/pro/model/Task;->getStartAt()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1304
    invoke-static {v1}, Lim/doit/pro/utils/DateUtils;->startOfDate(Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 1305
    iget-object v2, p0, Lim/doit/pro/activity/TaskDetailFragment$OnAllDayClick;->this$0:Lim/doit/pro/activity/TaskDetailFragment;

    invoke-static {v2}, Lim/doit/pro/activity/TaskDetailFragment;->access$0(Lim/doit/pro/activity/TaskDetailFragment;)Lim/doit/pro/model/Task;

    move-result-object v2

    invoke-virtual {v2, v1}, Lim/doit/pro/model/Task;->setStartAt(Ljava/util/Calendar;)V

    .line 1307
    .end local v1    # "startAt":Ljava/util/Calendar;
    :cond_0
    iget-object v2, p0, Lim/doit/pro/activity/TaskDetailFragment$OnAllDayClick;->this$0:Lim/doit/pro/activity/TaskDetailFragment;

    invoke-static {v2}, Lim/doit/pro/activity/TaskDetailFragment;->access$0(Lim/doit/pro/activity/TaskDetailFragment;)Lim/doit/pro/model/Task;

    move-result-object v2

    invoke-virtual {v2}, Lim/doit/pro/model/Task;->getEndAt()Ljava/util/Calendar;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1308
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1309
    .local v0, "endAt":Ljava/util/Calendar;
    iget-object v2, p0, Lim/doit/pro/activity/TaskDetailFragment$OnAllDayClick;->this$0:Lim/doit/pro/activity/TaskDetailFragment;

    invoke-static {v2}, Lim/doit/pro/activity/TaskDetailFragment;->access$0(Lim/doit/pro/activity/TaskDetailFragment;)Lim/doit/pro/model/Task;

    move-result-object v2

    invoke-virtual {v2}, Lim/doit/pro/model/Task;->getEndAt()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1310
    invoke-static {v0}, Lim/doit/pro/utils/DateUtils;->startOfDate(Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 1311
    iget-object v2, p0, Lim/doit/pro/activity/TaskDetailFragment$OnAllDayClick;->this$0:Lim/doit/pro/activity/TaskDetailFragment;

    invoke-static {v2}, Lim/doit/pro/activity/TaskDetailFragment;->access$0(Lim/doit/pro/activity/TaskDetailFragment;)Lim/doit/pro/model/Task;

    move-result-object v2

    invoke-virtual {v2, v0}, Lim/doit/pro/model/Task;->setEndAt(Ljava/util/Calendar;)V

    .line 1313
    .end local v0    # "endAt":Ljava/util/Calendar;
    :cond_1
    return-void
.end method


# virtual methods
.method public onChange(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 1282
    iget-object v1, p0, Lim/doit/pro/activity/TaskDetailFragment$OnAllDayClick;->this$0:Lim/doit/pro/activity/TaskDetailFragment;

    invoke-static {v1}, Lim/doit/pro/activity/TaskDetailFragment;->access$12(Lim/doit/pro/activity/TaskDetailFragment;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1298
    :goto_0
    return-void

    .line 1285
    :cond_0
    iget-object v1, p0, Lim/doit/pro/activity/TaskDetailFragment$OnAllDayClick;->this$0:Lim/doit/pro/activity/TaskDetailFragment;

    invoke-static {v1}, Lim/doit/pro/activity/TaskDetailFragment;->access$0(Lim/doit/pro/activity/TaskDetailFragment;)Lim/doit/pro/model/Task;

    move-result-object v1

    invoke-virtual {v1}, Lim/doit/pro/model/Task;->getStartAt()Ljava/util/Calendar;

    move-result-object v0

    .line 1286
    .local v0, "oriStartAt":Ljava/util/Calendar;
    iget-object v1, p0, Lim/doit/pro/activity/TaskDetailFragment$OnAllDayClick;->this$0:Lim/doit/pro/activity/TaskDetailFragment;

    invoke-static {v1}, Lim/doit/pro/activity/TaskDetailFragment;->access$0(Lim/doit/pro/activity/TaskDetailFragment;)Lim/doit/pro/model/Task;

    move-result-object v1

    invoke-virtual {v1, p2}, Lim/doit/pro/model/Task;->setAllDay(Z)V

    .line 1287
    iget-object v1, p0, Lim/doit/pro/activity/TaskDetailFragment$OnAllDayClick;->this$0:Lim/doit/pro/activity/TaskDetailFragment;

    invoke-static {v1}, Lim/doit/pro/activity/TaskDetailFragment;->access$0(Lim/doit/pro/activity/TaskDetailFragment;)Lim/doit/pro/model/Task;

    move-result-object v1

    invoke-virtual {v1}, Lim/doit/pro/model/Task;->isAllDay()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1288
    invoke-direct {p0}, Lim/doit/pro/activity/TaskDetailFragment$OnAllDayClick;->setTimeAfterAllDayOn()V

    .line 1292
    :goto_1
    iget-object v1, p0, Lim/doit/pro/activity/TaskDetailFragment$OnAllDayClick;->this$0:Lim/doit/pro/activity/TaskDetailFragment;

    invoke-static {v1}, Lim/doit/pro/activity/TaskDetailFragment;->access$0(Lim/doit/pro/activity/TaskDetailFragment;)Lim/doit/pro/model/Task;

    move-result-object v1

    invoke-virtual {v1, v0}, Lim/doit/pro/model/Task;->updateAfterStartAtChange(Ljava/util/Calendar;)V

    .line 1293
    iget-object v1, p0, Lim/doit/pro/activity/TaskDetailFragment$OnAllDayClick;->this$0:Lim/doit/pro/activity/TaskDetailFragment;

    invoke-static {v1}, Lim/doit/pro/activity/TaskDetailFragment;->access$1(Lim/doit/pro/activity/TaskDetailFragment;)Z

    .line 1294
    iget-object v1, p0, Lim/doit/pro/activity/TaskDetailFragment$OnAllDayClick;->this$0:Lim/doit/pro/activity/TaskDetailFragment;

    invoke-static {v1}, Lim/doit/pro/activity/TaskDetailFragment;->access$13(Lim/doit/pro/activity/TaskDetailFragment;)V

    .line 1295
    iget-object v1, p0, Lim/doit/pro/activity/TaskDetailFragment$OnAllDayClick;->this$0:Lim/doit/pro/activity/TaskDetailFragment;

    invoke-static {v1}, Lim/doit/pro/activity/TaskDetailFragment;->access$14(Lim/doit/pro/activity/TaskDetailFragment;)V

    .line 1296
    iget-object v1, p0, Lim/doit/pro/activity/TaskDetailFragment$OnAllDayClick;->this$0:Lim/doit/pro/activity/TaskDetailFragment;

    invoke-static {v1}, Lim/doit/pro/activity/TaskDetailFragment;->access$15(Lim/doit/pro/activity/TaskDetailFragment;)V

    .line 1297
    iget-object v1, p0, Lim/doit/pro/activity/TaskDetailFragment$OnAllDayClick;->this$0:Lim/doit/pro/activity/TaskDetailFragment;

    invoke-static {v1}, Lim/doit/pro/activity/TaskDetailFragment;->access$8(Lim/doit/pro/activity/TaskDetailFragment;)V

    goto :goto_0

    .line 1290
    :cond_1
    invoke-direct {p0}, Lim/doit/pro/activity/TaskDetailFragment$OnAllDayClick;->setTimeAfterAllDayOff()V

    goto :goto_1
.end method
