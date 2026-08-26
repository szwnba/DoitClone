.class public Lim/doit/pro/db/persist/TaskDao;
.super Lim/doit/pro/db/persist/DBaseDao;
.source "TaskDao.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lim/doit/pro/db/persist/DBaseDao",
        "<",
        "Lim/doit/pro/model/Task;",
        ">;"
    }
.end annotation


# instance fields
.field private mTaskDaoHelper:Lim/doit/pro/db/persist/utils/TaskDaoHelper;


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 80
    const-string v0, "tasks"

    invoke-direct {p0, v0, p1}, Lim/doit/pro/db/persist/DBaseDao;-><init>(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 81
    new-instance v0, Lim/doit/pro/db/persist/utils/TaskDaoHelper;

    invoke-direct {v0}, Lim/doit/pro/db/persist/utils/TaskDaoHelper;-><init>()V

    iput-object v0, p0, Lim/doit/pro/db/persist/TaskDao;->mTaskDaoHelper:Lim/doit/pro/db/persist/utils/TaskDaoHelper;

    .line 82
    return-void
.end method

.method private static addVaildReminder(JLjava/util/ArrayList;JLim/doit/pro/model/Task;Ljava/util/Calendar;)V
    .locals 17
    .param p0, "now"    # J
    .param p3, "endOfTodayMills"    # J
    .param p5, "t"    # Lim/doit/pro/model/Task;
    .param p6, "checkTime"    # Ljava/util/Calendar;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList",
            "<",
            "Lim/doit/pro/db/metadata/ReminderMessage;",
            ">;J",
            "Lim/doit/pro/model/Task;",
            "Ljava/util/Calendar;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1151
    .local p2, "reminders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/db/metadata/ReminderMessage;>;"
    invoke-virtual/range {p5 .. p5}, Lim/doit/pro/model/Task;->getReminders()Ljava/util/ArrayList;

    move-result-object v14

    .line 1152
    .local v14, "taskReminders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/Reminder;>;"
    invoke-static {v14}, Lim/doit/pro/utils/CollectionUtils;->isNotEmpty(Ljava/util/List;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1153
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_0
    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_2

    .line 1184
    :cond_1
    return-void

    .line 1153
    :cond_2
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lim/doit/pro/model/Reminder;

    .line 1154
    .local v12, "r":Lim/doit/pro/model/Reminder;
    const-string v4, "popup"

    invoke-virtual {v12}, Lim/doit/pro/model/Reminder;->getMode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1156
    invoke-virtual {v12}, Lim/doit/pro/model/Reminder;->getTime()Ljava/util/Calendar;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1159
    invoke-virtual {v12}, Lim/doit/pro/model/Reminder;->getTime()Ljava/util/Calendar;

    move-result-object v4

    invoke-static {v4}, Lim/doit/pro/utils/DateUtils;->copyDate(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v13

    .line 1161
    .local v13, "reminderTime":Ljava/util/Calendar;
    move-object/from16 v0, p5

    invoke-static {v0, v12}, Lim/doit/pro/db/persist/TaskDao;->isNeedUseWorkTimeRemind(Lim/doit/pro/model/Task;Lim/doit/pro/model/Reminder;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1162
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->user()Lim/doit/pro/model/User;

    move-result-object v4

    .line 1163
    invoke-virtual {v4}, Lim/doit/pro/model/User;->getWorkingStartTime()Ljava/lang/String;

    move-result-object v4

    .line 1164
    const-string v5, "HH:mm"

    .line 1162
    invoke-static {v4, v5}, Lim/doit/pro/utils/DateUtils;->parse(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v15

    .line 1165
    .local v15, "workingStartTime":Ljava/util/Calendar;
    if-eqz v15, :cond_3

    .line 1166
    const/16 v4, 0xb

    invoke-virtual {v15, v4}, Ljava/util/Calendar;->get(I)I

    move-result v10

    .line 1167
    .local v10, "hour":I
    const/16 v4, 0xc

    invoke-virtual {v15, v4}, Ljava/util/Calendar;->get(I)I

    move-result v11

    .line 1169
    .local v11, "minute":I
    invoke-virtual/range {p5 .. p5}, Lim/doit/pro/model/Task;->getStartAt()Ljava/util/Calendar;

    move-result-object v4

    const/16 v5, 0xb

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 1168
    sub-int v2, v10, v4

    .line 1171
    .local v2, "diffHour":I
    invoke-virtual/range {p5 .. p5}, Lim/doit/pro/model/Task;->getStartAt()Ljava/util/Calendar;

    move-result-object v4

    const/16 v5, 0xc

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 1170
    sub-int v9, v11, v4

    .line 1172
    .local v9, "diffMinute":I
    const/16 v4, 0xb

    invoke-virtual {v13, v4, v2}, Ljava/util/Calendar;->add(II)V

    .line 1173
    const/16 v4, 0xc

    invoke-virtual {v13, v4, v9}, Ljava/util/Calendar;->add(II)V

    .line 1176
    .end local v2    # "diffHour":I
    .end local v9    # "diffMinute":I
    .end local v10    # "hour":I
    .end local v11    # "minute":I
    .end local v15    # "workingStartTime":Ljava/util/Calendar;
    :cond_3
    invoke-virtual {v13}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    .line 1177
    .local v6, "millis":J
    cmp-long v4, v6, p0

    if-lez v4, :cond_0

    cmp-long v4, v6, p3

    if-gtz v4, :cond_0

    .line 1178
    new-instance v3, Lim/doit/pro/db/metadata/ReminderMessage;

    .line 1179
    new-instance v4, Ljava/util/Random;

    invoke-direct {v4}, Ljava/util/Random;-><init>()V

    const/16 v5, 0x2710

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v8

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    .line 1178
    invoke-direct/range {v3 .. v8}, Lim/doit/pro/db/metadata/ReminderMessage;-><init>(Lim/doit/pro/model/Task;Ljava/util/Calendar;JI)V

    .line 1180
    .local v3, "reminder":Lim/doit/pro/db/metadata/ReminderMessage;
    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method private afterUpdate(Lim/doit/pro/model/Task;ZZ)V
    .locals 2
    .param p1, "t"    # Lim/doit/pro/model/Task;
    .param p2, "isDownload"    # Z
    .param p3, "isRefresh"    # Z

    .prologue
    .line 693
    invoke-virtual {p1}, Lim/doit/pro/model/Task;->getRepeatNo()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lim/doit/pro/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 694
    if-eqz p2, :cond_4

    .line 695
    invoke-virtual {p1}, Lim/doit/pro/model/Task;->getUuid()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lim/doit/pro/db/persist/TaskDao;->destroyAfterTodayRepeatInstances(Ljava/lang/String;)V

    .line 700
    :cond_0
    :goto_0
    if-nez p2, :cond_1

    .line 701
    invoke-virtual {p1}, Lim/doit/pro/model/Task;->getUuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lim/doit/pro/model/Task;->getRepeatNo()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lim/doit/pro/db/persist/TaskDao;->saveUpdateLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 704
    :cond_1
    invoke-direct {p0, p1, p2}, Lim/doit/pro/db/persist/TaskDao;->isRevertTheHidden(Lim/doit/pro/model/Task;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 705
    invoke-direct {p0, p1}, Lim/doit/pro/db/persist/TaskDao;->revertTheHidden(Lim/doit/pro/model/Task;)V

    .line 707
    :cond_2
    invoke-super {p0, p1, p2}, Lim/doit/pro/db/persist/DBaseDao;->afterUpdate(Lim/doit/pro/model/BaseEntity;Z)V

    .line 708
    if-nez p2, :cond_3

    if-eqz p3, :cond_3

    .line 709
    invoke-direct {p0}, Lim/doit/pro/db/persist/TaskDao;->sendComputeReminder()V

    .line 711
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->refreshWidget()V

    .line 713
    :cond_3
    return-void

    .line 697
    :cond_4
    invoke-direct {p0, p1}, Lim/doit/pro/db/persist/TaskDao;->recreateTheRepeatInstances(Lim/doit/pro/model/Task;)V

    goto :goto_0
.end method

.method private clearSomethingBeforeUndo(Lim/doit/pro/model/Task;)V
    .locals 7
    .param p1, "t"    # Lim/doit/pro/model/Task;

    .prologue
    const/4 v6, 0x0

    .line 1115
    const/4 v1, 0x0

    .line 1116
    .local v1, "needUpdate":Z
    invoke-virtual {p1}, Lim/doit/pro/model/Task;->getProject()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lim/doit/pro/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1117
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v4

    iget-object v4, v4, Lim/doit/pro/db/Persist;->projectDao:Lim/doit/pro/db/persist/ProjectDao;

    .line 1118
    invoke-virtual {p1}, Lim/doit/pro/model/Task;->getProject()Ljava/lang/String;

    move-result-object v5

    .line 1117
    invoke-virtual {v4, v5}, Lim/doit/pro/db/persist/ProjectDao;->findByUUID(Ljava/lang/String;)Lim/doit/pro/model/BaseEntity;

    move-result-object v2

    check-cast v2, Lim/doit/pro/model/Project;

    .line 1119
    .local v2, "project":Lim/doit/pro/model/Project;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lim/doit/pro/model/Project;->isDead()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1120
    :cond_0
    invoke-virtual {p1, v6}, Lim/doit/pro/model/Task;->setProject(Ljava/lang/String;)V

    .line 1121
    const/4 v1, 0x1

    .line 1124
    .end local v2    # "project":Lim/doit/pro/model/Project;
    :cond_1
    invoke-virtual {p1}, Lim/doit/pro/model/Task;->getContext()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lim/doit/pro/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1125
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v4

    iget-object v4, v4, Lim/doit/pro/db/Persist;->taskContextDao:Lim/doit/pro/db/persist/TaskContextDao;

    .line 1126
    invoke-virtual {p1}, Lim/doit/pro/model/Task;->getContext()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lim/doit/pro/db/persist/TaskContextDao;->findByUUID(Ljava/lang/String;)Lim/doit/pro/model/BaseEntity;

    move-result-object v3

    check-cast v3, Lim/doit/pro/model/TaskContext;

    .line 1127
    .local v3, "taskContext":Lim/doit/pro/model/TaskContext;
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lim/doit/pro/model/TaskContext;->isDead()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1128
    :cond_2
    invoke-virtual {p1, v6}, Lim/doit/pro/model/Task;->setContext(Ljava/lang/String;)V

    .line 1129
    const/4 v1, 0x1

    .line 1132
    .end local v3    # "taskContext":Lim/doit/pro/model/TaskContext;
    :cond_3
    invoke-virtual {p1}, Lim/doit/pro/model/Task;->getGoal()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lim/doit/pro/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1133
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v4

    iget-object v4, v4, Lim/doit/pro/db/Persist;->goalDao:Lim/doit/pro/db/persist/GoalDao;

    invoke-virtual {p1}, Lim/doit/pro/model/Task;->getGoal()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lim/doit/pro/db/persist/GoalDao;->findByUUID(Ljava/lang/String;)Lim/doit/pro/model/BaseEntity;

    move-result-object v0

    check-cast v0, Lim/doit/pro/model/Goal;

    .line 1134
    .local v0, "goal":Lim/doit/pro/model/Goal;
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lim/doit/pro/model/Goal;->isDeleted()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1135
    :cond_4
    invoke-virtual {p1, v6}, Lim/doit/pro/model/Task;->setGoal(Ljava/lang/String;)V

    .line 1136
    const/4 v1, 0x1

    .line 1139
    .end local v0    # "goal":Lim/doit/pro/model/Goal;
    :cond_5
    invoke-virtual {p1}, Lim/doit/pro/model/Task;->getSpentTime()I

    move-result v4

    if-lez v4, :cond_6

    .line 1140
    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Lim/doit/pro/model/Task;->setSpentTime(I)V

    .line 1141
    const/4 v1, 0x1

    .line 1143
    :cond_6
    if-eqz v1, :cond_7

    .line 1144
    invoke-virtual {p0, p1}, Lim/doit/pro/db/persist/TaskDao;->updateAndSaveLog(Lim/doit/pro/model/Task;)V

    .line 1146
    :cond_7
    return-void
.end method

.method private countAndRemoveInactiveProject(Lim/doit/pro/db/persist/utils/SQLBuilder;)I
    .locals 9
    .param p1, "sql"    # Lim/doit/pro/db/persist/utils/SQLBuilder;

    .prologue
    .line 958
    new-instance v6, Lim/doit/pro/db/persist/utils/SQLBuilder;

    invoke-direct {v6}, Lim/doit/pro/db/persist/utils/SQLBuilder;-><init>()V

    .line 959
    .local v6, "notProjectSql":Lim/doit/pro/db/persist/utils/SQLBuilder;
    invoke-virtual {v6, p1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->append(Lim/doit/pro/db/persist/utils/SQLBuilder;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v7

    const-string v8, "project"

    invoke-virtual {v7, v8}, Lim/doit/pro/db/persist/utils/SQLBuilder;->and(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v7

    invoke-virtual {v7}, Lim/doit/pro/db/persist/utils/SQLBuilder;->isNull()Lim/doit/pro/db/persist/utils/SQLBuilder;

    .line 960
    invoke-virtual {v6}, Lim/doit/pro/db/persist/utils/SQLBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lim/doit/pro/db/persist/TaskDao;->count(Ljava/lang/String;)I

    move-result v0

    .line 961
    .local v0, "count":I
    new-instance v2, Lim/doit/pro/db/persist/utils/SQLBuilder;

    invoke-direct {v2}, Lim/doit/pro/db/persist/utils/SQLBuilder;-><init>()V

    .line 962
    .local v2, "hasProjectSql":Lim/doit/pro/db/persist/utils/SQLBuilder;
    invoke-virtual {v2, p1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->append(Lim/doit/pro/db/persist/utils/SQLBuilder;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v7

    const-string v8, "project"

    invoke-virtual {v7, v8}, Lim/doit/pro/db/persist/utils/SQLBuilder;->and(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v7

    invoke-virtual {v7}, Lim/doit/pro/db/persist/utils/SQLBuilder;->isNotNull()Lim/doit/pro/db/persist/utils/SQLBuilder;

    .line 963
    invoke-virtual {v2}, Lim/doit/pro/db/persist/utils/SQLBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lim/doit/pro/db/persist/TaskDao;->findList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 964
    .local v3, "hasProjectTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/Task;>;"
    invoke-static {v3}, Lim/doit/pro/utils/CollectionUtils;->isEmpty(Ljava/util/List;)Z

    move-result v7

    if-eqz v7, :cond_0

    move v1, v0

    .line 980
    .end local v0    # "count":I
    .local v1, "count":I
    :goto_0
    return v1

    .line 967
    .end local v1    # "count":I
    .restart local v0    # "count":I
    :cond_0
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v7

    iget-object v7, v7, Lim/doit/pro/db/Persist;->projectDao:Lim/doit/pro/db/persist/ProjectDao;

    .line 968
    invoke-virtual {v7}, Lim/doit/pro/db/persist/ProjectDao;->findInactiveProjectIds()Ljava/util/ArrayList;

    move-result-object v4

    .line 969
    .local v4, "inactiveProjectIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {v4}, Lim/doit/pro/utils/CollectionUtils;->isEmpty(Ljava/util/List;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 970
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/2addr v0, v7

    move v1, v0

    .line 971
    .end local v0    # "count":I
    .restart local v1    # "count":I
    goto :goto_0

    .line 973
    .end local v1    # "count":I
    .restart local v0    # "count":I
    :cond_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_3

    move v1, v0

    .line 980
    .end local v0    # "count":I
    .restart local v1    # "count":I
    goto :goto_0

    .line 973
    .end local v1    # "count":I
    .restart local v0    # "count":I
    :cond_3
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lim/doit/pro/model/Task;

    .line 974
    .local v5, "item":Lim/doit/pro/model/Task;
    invoke-virtual {v5}, Lim/doit/pro/model/Task;->getBaseProject()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lim/doit/pro/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 975
    invoke-virtual {v5}, Lim/doit/pro/model/Task;->getBaseProject()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 978
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private createTodayAndTomorrowRepeaterInstance(Lim/doit/pro/model/Task;)V
    .locals 3
    .param p1, "t"    # Lim/doit/pro/model/Task;

    .prologue
    .line 1073
    invoke-virtual {p1}, Lim/doit/pro/model/Task;->isRepeat()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1075
    invoke-static {}, Lim/doit/pro/utils/DateUtils;->startOfToday()Ljava/util/Calendar;

    move-result-object v2

    .line 1074
    invoke-static {p1, v2}, Lim/doit/pro/utils/TaskUtils;->buildRepeaterInstance(Lim/doit/pro/model/Task;Ljava/util/Calendar;)Lim/doit/pro/model/Task;

    move-result-object v0

    .line 1076
    .local v0, "todayInstance":Lim/doit/pro/model/Task;
    if-eqz v0, :cond_0

    .line 1077
    invoke-virtual {p0, v0}, Lim/doit/pro/db/persist/TaskDao;->createAndSaveLog(Lim/doit/pro/model/Task;)V

    .line 1080
    :cond_0
    invoke-static {}, Lim/doit/pro/utils/DateUtils;->startOfTomorrow()Ljava/util/Calendar;

    move-result-object v2

    .line 1079
    invoke-static {p1, v2}, Lim/doit/pro/utils/TaskUtils;->buildRepeaterInstance(Lim/doit/pro/model/Task;Ljava/util/Calendar;)Lim/doit/pro/model/Task;

    move-result-object v1

    .line 1081
    .local v1, "tomorrowInstance":Lim/doit/pro/model/Task;
    if-eqz v1, :cond_1

    .line 1082
    invoke-virtual {p0, v1}, Lim/doit/pro/db/persist/TaskDao;->createAndSaveLog(Lim/doit/pro/model/Task;)V

    .line 1085
    .end local v0    # "todayInstance":Lim/doit/pro/model/Task;
    .end local v1    # "tomorrowInstance":Lim/doit/pro/model/Task;
    :cond_1
    return-void
.end method

.method private destroy(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "repeatNo"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1098
    iget-object v1, p0, Lim/doit/pro/db/persist/TaskDao;->mTaskDaoHelper:Lim/doit/pro/db/persist/utils/TaskDaoHelper;

    invoke-virtual {v1}, Lim/doit/pro/db/persist/utils/TaskDaoHelper;->notDead()Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v0

    .line 1099
    .local v0, "sb":Lim/doit/pro/db/persist/utils/SQLBuilder;
    const-string v1, "uuid"

    invoke-virtual {v0, v1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->and(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v1

    const-string v2, "?"

    invoke-virtual {v1, v2}, Lim/doit/pro/db/persist/utils/SQLBuilder;->eqWithArgs(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    .line 1100
    invoke-static {p2}, Lim/doit/pro/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1101
    const-string v1, "repeat_no"

    invoke-virtual {v0, v1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->and(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->isNull()Lim/doit/pro/db/persist/utils/SQLBuilder;

    .line 1102
    iget-object v1, p0, Lim/doit/pro/db/persist/TaskDao;->db:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v2, p0, Lim/doit/pro/db/persist/TaskDao;->tableName:Ljava/lang/String;

    invoke-virtual {v0}, Lim/doit/pro/db/persist/utils/SQLBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/String;

    aput-object p1, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1107
    :goto_0
    return-void

    .line 1104
    :cond_0
    const-string v1, "repeat_no"

    invoke-virtual {v0, v1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->and(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v1

    const-string v2, "?"

    invoke-virtual {v1, v2}, Lim/doit/pro/db/persist/utils/SQLBuilder;->eqWithArgs(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    .line 1105
    iget-object v1, p0, Lim/doit/pro/db/persist/TaskDao;->db:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v2, p0, Lim/doit/pro/db/persist/TaskDao;->tableName:Ljava/lang/String;

    invoke-virtual {v0}, Lim/doit/pro/db/persist/utils/SQLBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v5

    aput-object p2, v4, v6

    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method private destroyAfterTodayRepeatInstances(Ljava/lang/String;)V
    .locals 6
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    .line 1088
    invoke-static {}, Lim/doit/pro/utils/DateUtils;->startOfTomorrow()Ljava/util/Calendar;

    move-result-object v3

    invoke-static {v3}, Lim/doit/pro/utils/DateUtils;->formatRepeatNo(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v1

    .line 1089
    .local v1, "repeatNo":Ljava/lang/String;
    iget-object v3, p0, Lim/doit/pro/db/persist/TaskDao;->mTaskDaoHelper:Lim/doit/pro/db/persist/utils/TaskDaoHelper;

    invoke-virtual {v3}, Lim/doit/pro/db/persist/utils/TaskDaoHelper;->notDead()Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v2

    .line 1090
    .local v2, "sb":Lim/doit/pro/db/persist/utils/SQLBuilder;
    const-string v3, "uuid"

    invoke-virtual {v2, v3}, Lim/doit/pro/db/persist/utils/SQLBuilder;->and(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->eq(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    .line 1091
    const-string v3, "repeat_no"

    invoke-virtual {v2, v3}, Lim/doit/pro/db/persist/utils/SQLBuilder;->and(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->gte(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    .line 1092
    invoke-virtual {v2}, Lim/doit/pro/db/persist/utils/SQLBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1093
    .local v0, "clause":Ljava/lang/String;
    iget-object v3, p0, Lim/doit/pro/db/persist/TaskDao;->db:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v4, p0, Lim/doit/pro/db/persist/TaskDao;->tableName:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1094
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v3

    iget-object v3, v3, Lim/doit/pro/db/Persist;->opLogDao:Lim/doit/pro/db/persist/OpLogDao;

    invoke-virtual {v3, p1, v1}, Lim/doit/pro/db/persist/OpLogDao;->deleteRepeatInstancesAfterSomeday(Ljava/lang/String;Ljava/lang/String;)V

    .line 1095
    return-void
.end method

.method private destroyProjectBeConvertedFromTask(Lim/doit/pro/model/Task;)V
    .locals 3
    .param p1, "t"    # Lim/doit/pro/model/Task;

    .prologue
    .line 735
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v1

    iget-object v1, v1, Lim/doit/pro/db/Persist;->projectDao:Lim/doit/pro/db/persist/ProjectDao;

    .line 736
    invoke-virtual {p1}, Lim/doit/pro/model/Task;->getUniqUuid()Ljava/lang/String;

    move-result-object v2

    .line 735
    invoke-virtual {v1, v2}, Lim/doit/pro/db/persist/ProjectDao;->findByFromTask(Ljava/lang/String;)Lim/doit/pro/model/Project;

    move-result-object v0

    .line 737
    .local v0, "project":Lim/doit/pro/model/Project;
    if-eqz v0, :cond_0

    .line 738
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v1

    iget-object v1, v1, Lim/doit/pro/db/Persist;->projectDao:Lim/doit/pro/db/persist/ProjectDao;

    invoke-virtual {v1, v0}, Lim/doit/pro/db/persist/ProjectDao;->destroy(Lim/doit/pro/model/Project;)V

    .line 739
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v1

    iget-object v1, v1, Lim/doit/pro/db/Persist;->opLogDao:Lim/doit/pro/db/persist/OpLogDao;

    invoke-virtual {v0}, Lim/doit/pro/model/Project;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lim/doit/pro/db/persist/OpLogDao;->deleteByItemId(Ljava/lang/String;)V

    .line 740
    invoke-virtual {v0}, Lim/doit/pro/model/Project;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lim/doit/pro/db/persist/TaskDao;->clearTaskProject(Ljava/lang/String;)V

    .line 742
    :cond_0
    return-void
.end method

.method private destroyTasksBeConvertedFromSubTask(Lim/doit/pro/model/Task;)V
    .locals 7
    .param p1, "t"    # Lim/doit/pro/model/Task;

    .prologue
    .line 745
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v3

    iget-object v3, v3, Lim/doit/pro/db/Persist;->subTaskDao:Lim/doit/pro/db/persist/SubTaskDao;

    .line 746
    invoke-virtual {p1}, Lim/doit/pro/model/Task;->getUuid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lim/doit/pro/model/Task;->getRepeatNo()Ljava/lang/String;

    move-result-object v5

    .line 745
    invoke-virtual {v3, v4, v5}, Lim/doit/pro/db/persist/SubTaskDao;->findByTask(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 747
    .local v2, "subTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/SubTask;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 755
    return-void

    .line 747
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lim/doit/pro/model/SubTask;

    .line 748
    .local v1, "item":Lim/doit/pro/model/SubTask;
    invoke-virtual {v1}, Lim/doit/pro/model/SubTask;->getUuid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lim/doit/pro/db/persist/TaskDao;->findByFromSubTask(Ljava/lang/String;)Lim/doit/pro/model/Task;

    move-result-object v0

    .line 749
    .local v0, "fromSubTask":Lim/doit/pro/model/Task;
    if-eqz v0, :cond_0

    .line 750
    invoke-virtual {v0}, Lim/doit/pro/model/Task;->getUuid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lim/doit/pro/model/Task;->getRepeatNo()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lim/doit/pro/db/persist/TaskDao;->destroy(Ljava/lang/String;Ljava/lang/String;)V

    .line 751
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v4

    iget-object v4, v4, Lim/doit/pro/db/Persist;->opLogDao:Lim/doit/pro/db/persist/OpLogDao;

    .line 752
    invoke-virtual {v0}, Lim/doit/pro/model/Task;->getUuid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lim/doit/pro/model/Task;->getRepeatNo()Ljava/lang/String;

    move-result-object v6

    .line 751
    invoke-virtual {v4, v5, v6}, Lim/doit/pro/db/persist/OpLogDao;->deleteByItemId(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private filterByAssign(Lim/doit/pro/model/Filter;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 5
    .param p1, "filter"    # Lim/doit/pro/model/Filter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lim/doit/pro/model/Filter;",
            "Ljava/util/ArrayList",
            "<",
            "Lim/doit/pro/model/Task;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lim/doit/pro/model/Task;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1025
    .local p2, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/Task;>;"
    invoke-virtual {p1}, Lim/doit/pro/model/Filter;->getAssignTo()Lim/doit/pro/model/FilterAssignTo;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1026
    invoke-virtual {p1}, Lim/doit/pro/model/Filter;->getAssignTo()Lim/doit/pro/model/FilterAssignTo;

    move-result-object v3

    invoke-virtual {v3}, Lim/doit/pro/model/FilterAssignTo;->getEmail()Ljava/util/ArrayList;

    move-result-object v1

    .line 1027
    .local v1, "emails":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1028
    .local v0, "afterFilterAssign":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/Task;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_2

    .line 1033
    const-string v3, "in"

    invoke-virtual {p1}, Lim/doit/pro/model/Filter;->getAssignTo()Lim/doit/pro/model/FilterAssignTo;

    move-result-object v4

    invoke-virtual {v4}, Lim/doit/pro/model/FilterAssignTo;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1034
    move-object p2, v0

    .line 1039
    .end local v0    # "afterFilterAssign":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/Task;>;"
    .end local v1    # "emails":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    :goto_1
    return-object p2

    .line 1028
    .restart local v0    # "afterFilterAssign":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/Task;>;"
    .restart local v1    # "emails":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lim/doit/pro/model/Task;

    .line 1029
    .local v2, "t":Lim/doit/pro/model/Task;
    invoke-direct {p0, v1, v2}, Lim/doit/pro/db/persist/TaskDao;->haveAssignment(Ljava/util/ArrayList;Lim/doit/pro/model/Task;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1030
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1036
    .end local v2    # "t":Lim/doit/pro/model/Task;
    :cond_3
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    goto :goto_1
.end method

.method private filterByTag(Lim/doit/pro/model/Filter;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 5
    .param p1, "filter"    # Lim/doit/pro/model/Filter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lim/doit/pro/model/Filter;",
            "Ljava/util/ArrayList",
            "<",
            "Lim/doit/pro/model/Task;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lim/doit/pro/model/Task;",
            ">;"
        }
    .end annotation

    .prologue
    .line 984
    .local p2, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/Task;>;"
    invoke-virtual {p1}, Lim/doit/pro/model/Filter;->getTags()Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {v3}, Lim/doit/pro/utils/CollectionUtils;->isNotEmpty(Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 985
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 986
    .local v1, "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/Task;>;"
    invoke-virtual {p1}, Lim/doit/pro/model/Filter;->getTags()Ljava/util/ArrayList;

    move-result-object v0

    .line 987
    .local v0, "filterTags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 994
    .end local v0    # "filterTags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v1    # "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/Task;>;"
    :goto_1
    return-object v1

    .line 987
    .restart local v0    # "filterTags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v1    # "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/Task;>;"
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lim/doit/pro/model/Task;

    .line 988
    .local v2, "t":Lim/doit/pro/model/Task;
    invoke-direct {p0, v0, v2}, Lim/doit/pro/db/persist/TaskDao;->haveTag(Ljava/util/ArrayList;Lim/doit/pro/model/Task;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 989
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .end local v0    # "filterTags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v1    # "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/Task;>;"
    .end local v2    # "t":Lim/doit/pro/model/Task;
    :cond_2
    move-object v1, p2

    .line 994
    goto :goto_1
.end method

.method private findListAndRemoveInactiveProjectDatas(Lim/doit/pro/db/persist/utils/SQLBuilder;)Ljava/util/ArrayList;
    .locals 8
    .param p1, "sql"    # Lim/doit/pro/db/persist/utils/SQLBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lim/doit/pro/db/persist/utils/SQLBuilder;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lim/doit/pro/model/Task;",
            ">;"
        }
    .end annotation

    .prologue
    .line 931
    new-instance v4, Lim/doit/pro/db/persist/utils/SQLBuilder;

    invoke-direct {v4}, Lim/doit/pro/db/persist/utils/SQLBuilder;-><init>()V

    .line 932
    .local v4, "noProjectSql":Lim/doit/pro/db/persist/utils/SQLBuilder;
    invoke-virtual {v4, p1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->append(Lim/doit/pro/db/persist/utils/SQLBuilder;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v6

    const-string v7, "project"

    invoke-virtual {v6, v7}, Lim/doit/pro/db/persist/utils/SQLBuilder;->and(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v6

    invoke-virtual {v6}, Lim/doit/pro/db/persist/utils/SQLBuilder;->isNull()Lim/doit/pro/db/persist/utils/SQLBuilder;

    .line 933
    invoke-virtual {v4}, Lim/doit/pro/db/persist/utils/SQLBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lim/doit/pro/db/persist/TaskDao;->findList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 934
    .local v5, "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/Task;>;"
    new-instance v0, Lim/doit/pro/db/persist/utils/SQLBuilder;

    invoke-direct {v0}, Lim/doit/pro/db/persist/utils/SQLBuilder;-><init>()V

    .line 935
    .local v0, "hasProjectSql":Lim/doit/pro/db/persist/utils/SQLBuilder;
    invoke-virtual {v0, p1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->append(Lim/doit/pro/db/persist/utils/SQLBuilder;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v6

    const-string v7, "project"

    invoke-virtual {v6, v7}, Lim/doit/pro/db/persist/utils/SQLBuilder;->and(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v6

    invoke-virtual {v6}, Lim/doit/pro/db/persist/utils/SQLBuilder;->isNotNull()Lim/doit/pro/db/persist/utils/SQLBuilder;

    .line 936
    invoke-virtual {v0}, Lim/doit/pro/db/persist/utils/SQLBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lim/doit/pro/db/persist/TaskDao;->findList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 937
    .local v1, "hasProjectTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/Task;>;"
    invoke-static {v1}, Lim/doit/pro/utils/CollectionUtils;->isEmpty(Ljava/util/List;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 954
    :goto_0
    return-object v5

    .line 940
    :cond_0
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v6

    iget-object v6, v6, Lim/doit/pro/db/Persist;->projectDao:Lim/doit/pro/db/persist/ProjectDao;

    .line 941
    invoke-virtual {v6}, Lim/doit/pro/db/persist/ProjectDao;->findInactiveProjectIds()Ljava/util/ArrayList;

    move-result-object v2

    .line 942
    .local v2, "inactiveProjectIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {v2}, Lim/doit/pro/utils/CollectionUtils;->isEmpty(Ljava/util/List;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 943
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 946
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_3

    .line 953
    new-instance v6, Lim/doit/pro/activity/listview/sort/ComparatorByPos;

    invoke-direct {v6}, Lim/doit/pro/activity/listview/sort/ComparatorByPos;-><init>()V

    invoke-static {v5, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0

    .line 946
    :cond_3
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lim/doit/pro/model/Task;

    .line 947
    .local v3, "item":Lim/doit/pro/model/Task;
    invoke-virtual {v3}, Lim/doit/pro/model/Task;->getBaseProject()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lim/doit/pro/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 948
    invoke-virtual {v3}, Lim/doit/pro/model/Task;->getBaseProject()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 951
    :cond_4
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private haveAssignment(Ljava/util/ArrayList;Lim/doit/pro/model/Task;)Z
    .locals 7
    .param p2, "t"    # Lim/doit/pro/model/Task;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lim/doit/pro/model/Task;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p1, "filterAssignToEmails":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1045
    invoke-virtual {p2}, Lim/doit/pro/model/Task;->getAssignment()Lim/doit/pro/model/Assignment;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1046
    invoke-virtual {p2}, Lim/doit/pro/model/Task;->getAssignment()Lim/doit/pro/model/Assignment;

    move-result-object v4

    invoke-virtual {v4}, Lim/doit/pro/model/Assignment;->getItems()Ljava/util/ArrayList;

    move-result-object v4

    invoke-static {v4}, Lim/doit/pro/utils/CollectionUtils;->isEmpty(Ljava/util/List;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1047
    :cond_0
    invoke-static {p1}, Lim/doit/pro/utils/CollectionUtils;->isEmpty(Ljava/util/List;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1060
    :goto_0
    return v2

    :cond_1
    move v2, v3

    .line 1050
    goto :goto_0

    .line 1053
    :cond_2
    invoke-virtual {p2}, Lim/doit/pro/model/Task;->getAssignment()Lim/doit/pro/model/Assignment;

    move-result-object v4

    invoke-virtual {v4}, Lim/doit/pro/model/Assignment;->getItems()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_4

    move v2, v3

    .line 1060
    goto :goto_0

    .line 1053
    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lim/doit/pro/model/AssignmentItem;

    .line 1054
    .local v1, "item":Lim/doit/pro/model/AssignmentItem;
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1055
    .local v0, "email":Ljava/lang/String;
    invoke-virtual {v1}, Lim/doit/pro/model/AssignmentItem;->getEmail()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    goto :goto_0
.end method

.method private haveTag(Ljava/util/ArrayList;Lim/doit/pro/model/Task;)Z
    .locals 8
    .param p2, "t"    # Lim/doit/pro/model/Task;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lim/doit/pro/model/Task;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p1, "filterTags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 998
    invoke-virtual {p2}, Lim/doit/pro/model/Task;->getTags()Ljava/util/ArrayList;

    move-result-object v2

    .line 1000
    .local v2, "taskTags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {v2}, Lim/doit/pro/utils/CollectionUtils;->isEmpty(Ljava/util/List;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1001
    invoke-static {p1}, Lim/doit/pro/utils/CollectionUtils;->isEmpty(Ljava/util/List;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1002
    const/4 v5, 0x0

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    move v3, v4

    .line 1021
    :cond_1
    :goto_0
    return v3

    .line 1008
    :cond_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1009
    .local v0, "filterTag":Ljava/lang/String;
    if-nez v0, :cond_4

    .line 1010
    invoke-static {v2}, Lim/doit/pro/utils/CollectionUtils;->isEmpty(Ljava/util/List;)Z

    move-result v6

    if-eqz v6, :cond_3

    move v3, v4

    .line 1011
    goto :goto_0

    .line 1015
    :cond_4
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1016
    .local v1, "tag":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    move v3, v4

    .line 1017
    goto :goto_0
.end method

.method private isHiddenLocally(Lim/doit/pro/model/Task;)Z
    .locals 5
    .param p1, "t"    # Lim/doit/pro/model/Task;

    .prologue
    .line 720
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v1

    iget-object v1, v1, Lim/doit/pro/db/Persist;->opLogDao:Lim/doit/pro/db/persist/OpLogDao;

    .line 721
    sget-object v2, Lim/doit/pro/model/OpLog$OpType;->hide:Lim/doit/pro/model/OpLog$OpType;

    invoke-virtual {p1}, Lim/doit/pro/model/Task;->getUuid()Ljava/lang/String;

    move-result-object v3

    .line 722
    invoke-virtual {p1}, Lim/doit/pro/model/Task;->getRepeatNo()Ljava/lang/String;

    move-result-object v4

    .line 721
    invoke-virtual {v1, v2, v3, v4}, Lim/doit/pro/db/persist/OpLogDao;->findLogsByOpTypeAndItemId(Lim/doit/pro/model/OpLog$OpType;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 723
    .local v0, "logs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/OpLog;>;"
    invoke-static {v0}, Lim/doit/pro/utils/CollectionUtils;->isNotEmpty(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 724
    const/4 v1, 0x1

    .line 726
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isNeedUseWorkTimeRemind(Lim/doit/pro/model/Task;Lim/doit/pro/model/Reminder;)Z
    .locals 1
    .param p0, "t"    # Lim/doit/pro/model/Task;
    .param p1, "r"    # Lim/doit/pro/model/Reminder;

    .prologue
    .line 1194
    invoke-virtual {p0}, Lim/doit/pro/model/Task;->isAllDay()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lim/doit/pro/model/Reminder;->isRelative()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lim/doit/pro/model/Task;->getStartAt()Ljava/util/Calendar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1195
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->user()Lim/doit/pro/model/User;

    move-result-object v0

    invoke-virtual {v0}, Lim/doit/pro/model/User;->getWorkingStartTime()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lim/doit/pro/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1194
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isRevertTheHidden(Lim/doit/pro/model/Task;Z)Z
    .locals 1
    .param p1, "t"    # Lim/doit/pro/model/Task;
    .param p2, "isDownload"    # Z

    .prologue
    .line 716
    if-eqz p2, :cond_0

    invoke-direct {p0, p1}, Lim/doit/pro/db/persist/TaskDao;->isHiddenLocally(Lim/doit/pro/model/Task;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private recreateTheRepeatInstances(Lim/doit/pro/model/Task;)V
    .locals 1
    .param p1, "t"    # Lim/doit/pro/model/Task;

    .prologue
    .line 1068
    invoke-virtual {p1}, Lim/doit/pro/model/Task;->getUuid()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lim/doit/pro/db/persist/TaskDao;->destroyAfterTodayRepeatInstances(Ljava/lang/String;)V

    .line 1069
    invoke-direct {p0, p1}, Lim/doit/pro/db/persist/TaskDao;->createTodayAndTomorrowRepeaterInstance(Lim/doit/pro/model/Task;)V

    .line 1070
    return-void
.end method

.method private revertTheHidden(Lim/doit/pro/model/Task;)V
    .locals 0
    .param p1, "t"    # Lim/doit/pro/model/Task;

    .prologue
    .line 730
    invoke-direct {p0, p1}, Lim/doit/pro/db/persist/TaskDao;->destroyProjectBeConvertedFromTask(Lim/doit/pro/model/Task;)V

    .line 731
    invoke-direct {p0, p1}, Lim/doit/pro/db/persist/TaskDao;->destroyTasksBeConvertedFromSubTask(Lim/doit/pro/model/Task;)V

    .line 732
    return-void
.end method

.method private saveArchiveLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "repeatNo"    # Ljava/lang/String;

    .prologue
    .line 907
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v0

    iget-object v0, v0, Lim/doit/pro/db/Persist;->opLogDao:Lim/doit/pro/db/persist/OpLogDao;

    sget-object v1, Lim/doit/pro/model/OpLog$OpType;->archive:Lim/doit/pro/model/OpLog$OpType;

    invoke-virtual {v0, p1, p2, v1}, Lim/doit/pro/db/persist/OpLogDao;->saveTask(Ljava/lang/String;Ljava/lang/String;Lim/doit/pro/model/OpLog$OpType;)V

    .line 908
    return-void
.end method

.method private saveCompleteLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "repeatNo"    # Ljava/lang/String;

    .prologue
    .line 891
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v0

    iget-object v0, v0, Lim/doit/pro/db/Persist;->opLogDao:Lim/doit/pro/db/persist/OpLogDao;

    sget-object v1, Lim/doit/pro/model/OpLog$OpType;->complete:Lim/doit/pro/model/OpLog$OpType;

    invoke-virtual {v0, p1, p2, v1}, Lim/doit/pro/db/persist/OpLogDao;->saveTask(Ljava/lang/String;Ljava/lang/String;Lim/doit/pro/model/OpLog$OpType;)V

    .line 892
    return-void
.end method

.method private saveCreateLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "repeatNo"    # Ljava/lang/String;

    .prologue
    .line 883
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v0

    iget-object v0, v0, Lim/doit/pro/db/Persist;->opLogDao:Lim/doit/pro/db/persist/OpLogDao;

    sget-object v1, Lim/doit/pro/model/OpLog$OpType;->create:Lim/doit/pro/model/OpLog$OpType;

    invoke-virtual {v0, p1, p2, v1}, Lim/doit/pro/db/persist/OpLogDao;->saveTask(Ljava/lang/String;Ljava/lang/String;Lim/doit/pro/model/OpLog$OpType;)V

    .line 884
    return-void
.end method

.method private saveDeleteLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "repeatNo"    # Ljava/lang/String;

    .prologue
    .line 915
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v0

    iget-object v0, v0, Lim/doit/pro/db/Persist;->opLogDao:Lim/doit/pro/db/persist/OpLogDao;

    sget-object v1, Lim/doit/pro/model/OpLog$OpType;->delete:Lim/doit/pro/model/OpLog$OpType;

    invoke-virtual {v0, p1, p2, v1}, Lim/doit/pro/db/persist/OpLogDao;->saveTask(Ljava/lang/String;Ljava/lang/String;Lim/doit/pro/model/OpLog$OpType;)V

    .line 916
    return-void
.end method

.method private saveHideLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "repeatNo"    # Ljava/lang/String;

    .prologue
    .line 911
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v0

    iget-object v0, v0, Lim/doit/pro/db/Persist;->opLogDao:Lim/doit/pro/db/persist/OpLogDao;

    sget-object v1, Lim/doit/pro/model/OpLog$OpType;->hide:Lim/doit/pro/model/OpLog$OpType;

    invoke-virtual {v0, p1, p2, v1}, Lim/doit/pro/db/persist/OpLogDao;->saveTask(Ljava/lang/String;Ljava/lang/String;Lim/doit/pro/model/OpLog$OpType;)V

    .line 912
    return-void
.end method

.method private saveTrashLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "repeatNo"    # Ljava/lang/String;

    .prologue
    .line 899
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v0

    iget-object v0, v0, Lim/doit/pro/db/Persist;->opLogDao:Lim/doit/pro/db/persist/OpLogDao;

    sget-object v1, Lim/doit/pro/model/OpLog$OpType;->trash:Lim/doit/pro/model/OpLog$OpType;

    invoke-virtual {v0, p1, p2, v1}, Lim/doit/pro/db/persist/OpLogDao;->saveTask(Ljava/lang/String;Ljava/lang/String;Lim/doit/pro/model/OpLog$OpType;)V

    .line 900
    return-void
.end method

.method private saveUncompleteLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "repeatNo"    # Ljava/lang/String;

    .prologue
    .line 895
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v0

    iget-object v0, v0, Lim/doit/pro/db/Persist;->opLogDao:Lim/doit/pro/db/persist/OpLogDao;

    sget-object v1, Lim/doit/pro/model/OpLog$OpType;->uncomplete:Lim/doit/pro/model/OpLog$OpType;

    invoke-virtual {v0, p1, p2, v1}, Lim/doit/pro/db/persist/OpLogDao;->saveTask(Ljava/lang/String;Ljava/lang/String;Lim/doit/pro/model/OpLog$OpType;)V

    .line 896
    return-void
.end method

.method private saveUntrashLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "repeatNo"    # Ljava/lang/String;

    .prologue
    .line 903
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v0

    iget-object v0, v0, Lim/doit/pro/db/Persist;->opLogDao:Lim/doit/pro/db/persist/OpLogDao;

    sget-object v1, Lim/doit/pro/model/OpLog$OpType;->untrash:Lim/doit/pro/model/OpLog$OpType;

    invoke-virtual {v0, p1, p2, v1}, Lim/doit/pro/db/persist/OpLogDao;->saveTask(Ljava/lang/String;Ljava/lang/String;Lim/doit/pro/model/OpLog$OpType;)V

    .line 904
    return-void
.end method

.method private saveUpdateLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "repeatNo"    # Ljava/lang/String;

    .prologue
    .line 887
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v0

    iget-object v0, v0, Lim/doit/pro/db/Persist;->opLogDao:Lim/doit/pro/db/persist/OpLogDao;

    sget-object v1, Lim/doit/pro/model/OpLog$OpType;->update:Lim/doit/pro/model/OpLog$OpType;

    invoke-virtual {v0, p1, p2, v1}, Lim/doit/pro/db/persist/OpLogDao;->saveTask(Ljava/lang/String;Ljava/lang/String;Lim/doit/pro/model/OpLog$OpType;)V

    .line 888
    return-void
.end method

.method private sendComputeReminder()V
    .locals 0

    .prologue
    .line 1199
    invoke-static {}, Lim/doit/pro/utils/BroadcastUtils;->updateAndSendReminder()V

    .line 1200
    return-void
.end method

.method private updateTimestamps(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Calendar;)V
    .locals 5
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "repeatNo"    # Ljava/lang/String;
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "millis"    # Ljava/util/Calendar;

    .prologue
    .line 920
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 921
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "updated"

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 922
    invoke-static {p4}, Lim/doit/pro/utils/DateUtils;->convertToLong(Ljava/util/Calendar;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 923
    iget-object v1, p0, Lim/doit/pro/db/persist/TaskDao;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 924
    iget-object v2, p0, Lim/doit/pro/db/persist/TaskDao;->tableName:Ljava/lang/String;

    .line 926
    iget-object v3, p0, Lim/doit/pro/db/persist/TaskDao;->mTaskDaoHelper:Lim/doit/pro/db/persist/utils/TaskDaoHelper;

    invoke-virtual {v3, p1, p2}, Lim/doit/pro/db/persist/utils/TaskDaoHelper;->uuidAndRepeatNoClause(Ljava/lang/String;Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lim/doit/pro/db/persist/utils/SQLBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 927
    const/4 v4, 0x0

    .line 923
    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 928
    return-void
.end method


# virtual methods
.method protected afterCreate(Lim/doit/pro/model/Task;Z)V
    .locals 0
    .param p1, "t"    # Lim/doit/pro/model/Task;
    .param p2, "isDownload"    # Z

    .prologue
    .line 678
    invoke-super {p0, p1, p2}, Lim/doit/pro/db/persist/DBaseDao;->afterCreate(Ljava/lang/Object;Z)V

    .line 679
    if-nez p2, :cond_0

    .line 680
    invoke-direct {p0}, Lim/doit/pro/db/persist/TaskDao;->sendComputeReminder()V

    .line 682
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->refreshWidget()V

    .line 684
    :cond_0
    return-void
.end method

.method protected bridge synthetic afterCreate(Ljava/lang/Object;Z)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lim/doit/pro/model/Task;

    invoke-virtual {p0, p1, p2}, Lim/doit/pro/db/persist/TaskDao;->afterCreate(Lim/doit/pro/model/Task;Z)V

    return-void
.end method

.method protected bridge synthetic afterUpdate(Lim/doit/pro/model/BaseEntity;Z)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lim/doit/pro/model/Task;

    invoke-virtual {p0, p1, p2}, Lim/doit/pro/db/persist/TaskDao;->afterUpdate(Lim/doit/pro/model/Task;Z)V

    return-void
.end method

.method protected afterUpdate(Lim/doit/pro/model/Task;Z)V
    .locals 1
    .param p1, "t"    # Lim/doit/pro/model/Task;
    .param p2, "isDownload"    # Z

    .prologue
    .line 688
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lim/doit/pro/db/persist/TaskDao;->afterUpdate(Lim/doit/pro/model/Task;ZZ)V

    .line 689
    return-void
.end method

.method public archive(Lim/doit/pro/model/Task;)V
    .locals 4
    .param p1, "t"    # Lim/doit/pro/model/Task;

    .prologue
    .line 221
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {p1, v0}, Lim/doit/pro/model/Task;->setArchived(Ljava/util/Calendar;)V

    .line 222
    invoke-virtual {p1}, Lim/doit/pro/model/Task;->getUuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lim/doit/pro/model/Task;->getRepeatNo()Ljava/lang/String;

    move-result-object v1

    const-string v2, "archived"

    .line 223
    invoke-virtual {p1}, Lim/doit/pro/model/Task;->getArchived()Ljava/util/Calendar;

    move-result-object v3

    .line 222
    invoke-direct {p0, v0, v1, v2, v3}, Lim/doit/pro/db/persist/TaskDao;->updateTimestamps(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Calendar;)V

    .line 224
    invoke-virtual {p1}, Lim/doit/pro/model/Task;->getUuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lim/doit/pro/model/Task;->getRepeatNo()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lim/doit/pro/db/persist/TaskDao;->saveArchiveLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    return-void
.end method

.method public batchCreateOrUpdate(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lim/doit/pro/model/Task;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 86
    .local p1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/Task;>;"
    invoke-static {p1}, Lim/doit/pro/utils/CollectionUtils;->isEmpty(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 102
    :goto_0
    return-void

    .line 90
    :cond_0
    :try_start_0
    iget-object v1, p0, Lim/doit/pro/db/persist/TaskDao;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 91
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 98
    iget-object v1, p0, Lim/doit/pro/db/persist/TaskDao;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    iget-object v1, p0, Lim/doit/pro/db/persist/TaskDao;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0

    .line 91
    :cond_1
    :try_start_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lim/doit/pro/model/Task;

    .line 92
    .local v0, "t":Lim/doit/pro/model/Task;
    invoke-virtual {v0}, Lim/doit/pro/model/Task;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lim/doit/pro/model/Task;->getRepeatNo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lim/doit/pro/db/persist/TaskDao;->isExistedByUUID(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 93
    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2}, Lim/doit/pro/db/persist/TaskDao;->update(Lim/doit/pro/model/Task;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 99
    .end local v0    # "t":Lim/doit/pro/model/Task;
    :catchall_0
    move-exception v1

    .line 100
    iget-object v2, p0, Lim/doit/pro/db/persist/TaskDao;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 101
    throw v1

    .line 95
    .restart local v0    # "t":Lim/doit/pro/model/Task;
    :cond_2
    const/4 v2, 0x1

    :try_start_2
    invoke-virtual {p0, v0, v2}, Lim/doit/pro/db/persist/TaskDao;->create(Ljava/lang/Object;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public clearTaskContext(Ljava/lang/String;)V
    .locals 4
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    .line 450
    iget-object v2, p0, Lim/doit/pro/db/persist/TaskDao;->mTaskDaoHelper:Lim/doit/pro/db/persist/utils/TaskDaoHelper;

    .line 451
    invoke-virtual {v2, p1}, Lim/doit/pro/db/persist/utils/TaskDaoHelper;->notArchiveNotDeleteByContext(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lim/doit/pro/db/persist/utils/SQLBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 450
    invoke-virtual {p0, v2}, Lim/doit/pro/db/persist/TaskDao;->findList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 452
    .local v1, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/Task;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 456
    return-void

    .line 452
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lim/doit/pro/model/Task;

    .line 453
    .local v0, "item":Lim/doit/pro/model/Task;
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lim/doit/pro/model/Task;->setContext(Ljava/lang/String;)V

    .line 454
    invoke-virtual {p0, v0}, Lim/doit/pro/db/persist/TaskDao;->updateAndSaveLog(Lim/doit/pro/model/Task;)V

    goto :goto_0
.end method

.method public clearTaskProject(Ljava/lang/String;)V
    .locals 4
    .param p1, "projectId"    # Ljava/lang/String;

    .prologue
    .line 459
    iget-object v2, p0, Lim/doit/pro/db/persist/TaskDao;->mTaskDaoHelper:Lim/doit/pro/db/persist/utils/TaskDaoHelper;

    invoke-virtual {v2, p1}, Lim/doit/pro/db/persist/utils/TaskDaoHelper;->allByProject(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v2

    .line 460
    invoke-virtual {v2}, Lim/doit/pro/db/persist/utils/SQLBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 459
    invoke-virtual {p0, v2}, Lim/doit/pro/db/persist/TaskDao;->findList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 461
    .local v1, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/Task;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 465
    return-void

    .line 461
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lim/doit/pro/model/Task;

    .line 462
    .local v0, "item":Lim/doit/pro/model/Task;
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lim/doit/pro/model/Task;->setProject(Ljava/lang/String;)V

    .line 463
    invoke-virtual {p0, v0}, Lim/doit/pro/db/persist/TaskDao;->updateAndSaveLog(Lim/doit/pro/model/Task;)V

    goto :goto_0
.end method

.method protected colunms()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 852
    const/16 v0, 0x23

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "uuid"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "repeat_no"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "created"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "updated"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "deleted"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 853
    const-string v2, "hidden"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "archived"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "trashed"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "completed"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "usn"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "title"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "notes"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    .line 854
    const-string v2, "attribute"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "all_day"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "start_at"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "end_at"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "context"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "goal"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "project"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    .line 855
    const-string v2, "priority"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "now"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "pos"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "sender"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "sender_email"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "from_subtask"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    .line 856
    const-string v2, "sent_at"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "repeater"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "assignment"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "reminders"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "tags"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    .line 857
    const-string v2, "local_attachments"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "send_origin"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "estimated_time"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "spent_time"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    .line 858
    const-string v2, "medias"

    aput-object v2, v0, v1

    .line 852
    return-object v0
.end method

.method public complete(Lim/doit/pro/model/Task;)V
    .locals 4
    .param p1, "t"    # Lim/doit/pro/model/Task;

    .prologue
    .line 174
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {p1, v0}, Lim/doit/pro/model/Task;->setCompleted(Ljava/util/Calendar;)V

    .line 175
    invoke-virtual {p1}, Lim/doit/pro/model/Task;->getUuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lim/doit/pro/model/Task;->getRepeatNo()Ljava/lang/String;

    move-result-object v1

    const-string v2, "completed"

    .line 176
    invoke-virtual {p1}, Lim/doit/pro/model/Task;->getCompleted()Ljava/util/Calendar;

    move-result-object v3

    .line 175
    invoke-direct {p0, v0, v1, v2, v3}, Lim/doit/pro/db/persist/TaskDao;->updateTimestamps(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Calendar;)V

    .line 177
    invoke-direct {p0}, Lim/doit/pro/db/persist/TaskDao;->sendComputeReminder()V

    .line 178
    invoke-virtual {p1}, Lim/doit/pro/model/Task;->getUuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lim/doit/pro/model/Task;->getRepeatNo()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lim/doit/pro/db/persist/TaskDao;->saveCompleteLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    invoke-virtual {p1}, Lim/doit/pro/model/Task;->isRepeat()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    invoke-virtual {p1}, Lim/doit/pro/model/Task;->getUuid()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lim/doit/pro/db/persist/TaskDao;->destroyAfterTodayRepeatInstances(Ljava/lang/String;)V

    .line 183
    :cond_0
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->refreshWidget()V

    .line 184
    return-void
.end method

.method public completeByGoal(Ljava/lang/String;)V
    .locals 4
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    .line 502
    invoke-virtual {p0, p1}, Lim/doit/pro/db/persist/TaskDao;->findByGoal(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 503
    .local v1, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/Task;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 506
    return-void

    .line 503
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lim/doit/pro/model/Task;

    .line 504
    .local v0, "item":Lim/doit/pro/model/Task;
    invoke-virtual {p0, v0}, Lim/doit/pro/db/persist/TaskDao;->complete(Lim/doit/pro/model/Task;)V

    goto :goto_0
.end method

.method public completeByProject(Ljava/lang/String;)V
    .locals 4
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    .line 384
    invoke-virtual {p0, p1}, Lim/doit/pro/db/persist/TaskDao;->findByProject(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 385
    .local v1, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/Task;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 388
    return-void

    .line 385
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lim/doit/pro/model/Task;

    .line 386
    .local v0, "item":Lim/doit/pro/model/Task;
    invoke-virtual {p0, v0}, Lim/doit/pro/db/persist/TaskDao;->complete(Lim/doit/pro/model/Task;)V

    goto :goto_0
.end method

.method public countByGoal(Ljava/lang/String;)I
    .locals 1
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    .line 472
    iget-object v0, p0, Lim/doit/pro/db/persist/TaskDao;->mTaskDaoHelper:Lim/doit/pro/db/persist/utils/TaskDaoHelper;

    invoke-virtual {v0, p1}, Lim/doit/pro/db/persist/utils/TaskDaoHelper;->byGoal(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lim/doit/pro/db/persist/utils/SQLBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lim/doit/pro/db/persist/TaskDao;->count(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public countByProject(Ljava/lang/String;)I
    .locals 1
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    .line 372
    iget-object v0, p0, Lim/doit/pro/db/persist/TaskDao;->mTaskDaoHelper:Lim/doit/pro/db/persist/utils/TaskDaoHelper;

    invoke-virtual {v0, p1}, Lim/doit/pro/db/persist/utils/TaskDaoHelper;->byProject(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lim/doit/pro/db/persist/utils/SQLBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lim/doit/pro/db/persist/TaskDao;->count(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public countByTaskContext(Ljava/lang/String;)I
    .locals 1
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    .line 424
    iget-object v0, p0, Lim/doit/pro/db/persist/TaskDao;->mTaskDaoHelper:Lim/doit/pro/db/persist/utils/TaskDaoHelper;

    invoke-virtual {v0, p1}, Lim/doit/pro/db/persist/utils/TaskDaoHelper;->byTaskContext(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v0

    invoke-direct {p0, v0}, Lim/doit/pro/db/persist/TaskDao;->countAndRemoveInactiveProject(Lim/doit/pro/db/persist/utils/SQLBuilder;)I

    move-result v0

    return v0
.end method

.method public countCompletedByGoal(Ljava/lang/String;)I
    .locals 1
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    .line 486
    iget-object v0, p0, Lim/doit/pro/db/persist/TaskDao;->mTaskDaoHelper:Lim/doit/pro/db/persist/utils/TaskDaoHelper;

    invoke-virtual {v0, p1}, Lim/doit/pro/db/persist/utils/TaskDaoHelper;->completedByGoal(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lim/doit/pro/db/persist/utils/SQLBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lim/doit/pro/db/persist/TaskDao;->count(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public countCompletedByProject(Ljava/lang/String;)I
    .locals 1
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    .line 411
    iget-object v0, p0, Lim/doit/pro/db/persist/TaskDao;->mTaskDaoHelper:Lim/doit/pro/db/persist/utils/TaskDaoHelper;

    invoke-virtual {v0, p1}, Lim/doit/pro/db/persist/utils/TaskDaoHelper;->completedByProject(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lim/doit/pro/db/persist/utils/SQLBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lim/doit/pro/db/persist/TaskDao;->count(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public countDoitNow()I
    .locals 2

    .prologue
    .line 256
    iget-object v0, p0, Lim/doit/pro/db/persist/TaskDao;->mTaskDaoHelper:Lim/doit/pro/db/persist/utils/TaskDaoHelper;

    invoke-virtual {v0}, Lim/doit/pro/db/persist/utils/TaskDaoHelper;->today()Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v0

    const-string v1, "now"

    invoke-virtual {v0, v1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->and(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v0

    .line 257
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->gte(I)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v0

    .line 256
    invoke-direct {p0, v0}, Lim/doit/pro/db/persist/TaskDao;->countAndRemoveInactiveProject(Lim/doit/pro/db/persist/utils/SQLBuilder;)I

    move-result v0

    return v0
.end method

.method public countInboxTotal()I
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lim/doit/pro/db/persist/TaskDao;->mTaskDaoHelper:Lim/doit/pro/db/persist/utils/TaskDaoHelper;

    invoke-virtual {v0}, Lim/doit/pro/db/persist/utils/TaskDaoHelper;->inbox()Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lim/doit/pro/db/persist/utils/SQLBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lim/doit/pro/db/persist/TaskDao;->count(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public countLiveInGoal(Ljava/lang/String;)I
    .locals 1
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    .line 498
    iget-object v0, p0, Lim/doit/pro/db/persist/TaskDao;->mTaskDaoHelper:Lim/doit/pro/db/persist/utils/TaskDaoHelper;

    invoke-virtual {v0, p1}, Lim/doit/pro/db/persist/utils/TaskDaoHelper;->notDeadByGoal(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lim/doit/pro/db/persist/utils/SQLBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lim/doit/pro/db/persist/TaskDao;->count(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public countLiveInProject(Ljava/lang/String;)I
    .locals 1
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    .line 403
    iget-object v0, p0, Lim/doit/pro/db/persist/TaskDao;->mTaskDaoHelper:Lim/doit/pro/db/persist/utils/TaskDaoHelper;

    invoke-virtual {v0, p1}, Lim/doit/pro/db/persist/utils/TaskDaoHelper;->notDeadByProject(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lim/doit/pro/db/persist/utils/SQLBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lim/doit/pro/db/persist/TaskDao;->count(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public countLiveInTaskContext(Ljava/lang/String;)I
    .locals 2
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    .line 440
    iget-object v1, p0, Lim/doit/pro/db/persist/TaskDao;->mTaskDaoHelper:Lim/doit/pro/db/persist/utils/TaskDaoHelper;

    invoke-virtual {v1, p1}, Lim/doit/pro/db/persist/utils/TaskDaoHelper;->byTaskContext(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v0

    .line 441
    .local v0, "sql":Lim/doit/pro/db/persist/utils/SQLBuilder;
    invoke-virtual {v0}, Lim/doit/pro/db/persist/utils/SQLBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lim/doit/pro/db/persist/TaskDao;->count(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public countNextTotal()I
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lim/doit/pro/db/persist/TaskDao;->mTaskDaoHelper:Lim/doit/pro/db/persist/utils/TaskDaoHelper;

    invoke-virtual {v0}, Lim/doit/pro/db/persist/utils/TaskDaoHelper;->next()Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v0

    invoke-direct {p0, v0}, Lim/doit/pro/db/persist/TaskDao;->countAndRemoveInactiveProject(Lim/doit/pro/db/persist/utils/SQLBuilder;)I

    move-result v0

    return v0
.end method

.method public countNotCompletedByProject(Ljava/lang/String;)I
    .locals 1
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    .line 407
    iget-object v0, p0, Lim/doit/pro/db/persist/TaskDao;->mTaskDaoHelper:Lim/doit/pro/db/persist/utils/TaskDaoHelper;

    invoke-virtual {v0, p1}, Lim/doit/pro/db/persist/utils/TaskDaoHelper;->notCompleteByProject(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lim/doit/pro/db/persist/utils/SQLBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lim/doit/pro/db/persist/TaskDao;->count(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public countOfLiveByStartAt(Ljava/util/Calendar;)I
    .locals 6
    .param p1, "date"    # Ljava/util/Calendar;

    .prologue
    .line 623
    iget-object v4, p0, Lim/doit/pro/db/persist/TaskDao;->mTaskDaoHelper:Lim/doit/pro/db/persist/utils/TaskDaoHelper;

    invoke-virtual {v4, p1}, Lim/doit/pro/db/persist/utils/TaskDaoHelper;->byStartAt(Ljava/util/Calendar;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v2

    .line 624
    .local v2, "sql":Lim/doit/pro/db/persist/utils/SQLBuilder;
    invoke-direct {p0, v2}, Lim/doit/pro/db/persist/TaskDao;->countAndRemoveInactiveProject(Lim/doit/pro/db/persist/utils/SQLBuilder;)I

    move-result v0

    .line 625
    .local v0, "count":I
    invoke-virtual {p0}, Lim/doit/pro/db/persist/TaskDao;->findAllActiveRepeaters()Ljava/util/ArrayList;

    move-result-object v3

    .line 626
    .local v3, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/Task;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 631
    return v0

    .line 626
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lim/doit/pro/model/Task;

    .line 627
    .local v1, "item":Lim/doit/pro/model/Task;
    invoke-static {v1, p1}, Lim/doit/pro/utils/TaskUtils;->isValidRepeaterTask(Lim/doit/pro/model/Task;Ljava/util/Calendar;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 628
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public countScheculedTotal()I
    .locals 2

    .prologue
    .line 299
    const/4 v0, 0x0

    .line 300
    .local v0, "count":I
    invoke-static {}, Lim/doit/pro/utils/BoxUtils;->isTomorrowShow()Z

    move-result v1

    if-nez v1, :cond_0

    .line 301
    invoke-virtual {p0}, Lim/doit/pro/db/persist/TaskDao;->countTomorrowTotal()I

    move-result v1

    add-int/2addr v0, v1

    .line 303
    :cond_0
    iget-object v1, p0, Lim/doit/pro/db/persist/TaskDao;->mTaskDaoHelper:Lim/doit/pro/db/persist/utils/TaskDaoHelper;

    invoke-virtual {v1}, Lim/doit/pro/db/persist/utils/TaskDaoHelper;->scheduled()Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v1

    invoke-direct {p0, v1}, Lim/doit/pro/db/persist/TaskDao;->countAndRemoveInactiveProject(Lim/doit/pro/db/persist/utils/SQLBuilder;)I

    move-result v1

    add-int/2addr v0, v1

    .line 304
    return v0
.end method

.method public countSomedayTotal()I
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lim/doit/pro/db/persist/TaskDao;->mTaskDaoHelper:Lim/doit/pro/db/persist/utils/TaskDaoHelper;

    invoke-virtual {v0}, Lim/doit/pro/db/persist/utils/TaskDaoHelper;->someday()Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v0

    invoke-direct {p0, v0}, Lim/doit/pro/db/persist/TaskDao;->countAndRemoveInactiveProject(Lim/doit/pro/db/persist/utils/SQLBuilder;)I

    move-result v0

    return v0
.end method

.method public countTodayOverdue()I
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lim/doit/pro/db/persist/TaskDao;->mTaskDaoHelper:Lim/doit/pro/db/persist/utils/TaskDaoHelper;

    invoke-virtual {v0}, Lim/doit/pro/db/persist/utils/TaskDaoHelper;->todayOverdue()Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v0

    invoke-direct {p0, v0}, Lim/doit/pro/db/persist/TaskDao;->countAndRemoveInactiveProject(Lim/doit/pro/db/persist/utils/SQLBuilder;)I

    move-result v0

    return v0
.end method

.method public countTodayTotal()I
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lim/doit/pro/db/persist/TaskDao;->mTaskDaoHelper:Lim/doit/pro/db/persist/utils/TaskDaoHelper;

    invoke-virtual {v0}, Lim/doit/pro/db/persist/utils/TaskDaoHelper;->today()Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v0

    invoke-direct {p0, v0}, Lim/doit/pro/db/persist/TaskDao;->countAndRemoveInactiveProject(Lim/doit/pro/db/persist/utils/SQLBuilder;)I

    move-result v0

    return v0
.end method

.method public countTomorrowTotal()I
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lim/doit/pro/db/persist/TaskDao;->mTaskDaoHelper:Lim/doit/pro/db/persist/utils/TaskDaoHelper;

    invoke-virtual {v0}, Lim/doit/pro/db/persist/utils/TaskDaoHelper;->tomorrow()Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v0

    invoke-direct {p0, v0}, Lim/doit/pro/db/persist/TaskDao;->countAndRemoveInactiveProject(Lim/doit/pro/db/persist/utils/SQLBuilder;)I

    move-result v0

    return v0
.end method

.method public countTrashedByGoal(Ljava/lang/String;)I
    .locals 1
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    .line 494
    iget-object v0, p0, Lim/doit/pro/db/persist/TaskDao;->mTaskDaoHelper:Lim/doit/pro/db/persist/utils/TaskDaoHelper;

    invoke-virtual {v0, p1}, Lim/doit/pro/db/persist/utils/TaskDaoHelper;->trashedByGoal(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lim/doit/pro/db/persist/utils/SQLBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lim/doit/pro/db/persist/TaskDao;->count(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public countTrashedByProject(Ljava/lang/String;)I
    .locals 1
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    .line 415
    iget-object v0, p0, Lim/doit/pro/db/persist/TaskDao;->mTaskDaoHelper:Lim/doit/pro/db/persist/utils/TaskDaoHelper;

    invoke-virtual {v0, p1}, Lim/doit/pro/db/persist/utils/TaskDaoHelper;->trashedByProject(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lim/doit/pro/db/persist/utils/SQLBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lim/doit/pro/db/persist/TaskDao;->count(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public countWaitingOverdue()I
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Lim/doit/pro/db/persist/TaskDao;->mTaskDaoHelper:Lim/doit/pro/db/persist/utils/TaskDaoHelper;

    invoke-virtual {v0}, Lim/doit/pro/db/persist/utils/TaskDaoHelper;->waitingOverdue()Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v0

    invoke-direct {p0, v0}, Lim/doit/pro/db/persist/TaskDao;->countAndRemoveInactiveProject(Lim/doit/pro/db/persist/utils/SQLBuilder;)I

    move-result v0

    return v0
.end method

.method public countWaitingTotal()I
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Lim/doit/pro/db/persist/TaskDao;->mTaskDaoHelper:Lim/doit/pro/db/persist/utils/TaskDaoHelper;

    invoke-virtual {v0}, Lim/doit/pro/db/persist/utils/TaskDaoHelper;->waiting()Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v0

    invoke-direct {p0, v0}, Lim/doit/pro/db/persist/TaskDao;->countAndRemoveInactiveProject(Lim/doit/pro/db/persist/utils/SQLBuilder;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic createAndSaveLog(Lim/doit/pro/model/BaseEntity;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lim/doit/pro/model/Task;

    invoke-virtual {p0, p1}, Lim/doit/pro/db/persist/TaskDao;->createAndSaveLog(Lim/doit/pro/model/Task;)V

    return-void
.end method

.method public createAndSaveLog(Lim/doit/pro/model/Task;)V
    .locals 2
    .param p1, "t"    # Lim/doit/pro/model/Task;

    .prologue
    .line 131
    invoke-virtual {p1}, Lim/doit/pro/model/Task;->getUuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lim/doit/pro/model/Task;->getRepeatNo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lim/doit/pro/db/persist/TaskDao;->isExistedByUUID(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 132
    invoke-virtual {p0, p1}, Lim/doit/pro/db/persist/TaskDao;->updateAndSaveLog(Lim/doit/pro/model/Task;)V

    .line 144
    :cond_0
    :goto_0
    return-void

    .line 135
    :cond_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {p1, v0}, Lim/doit/pro/model/Task;->setCreated(Ljava/util/Calendar;)V

    .line 136
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {p1, v0}, Lim/doit/pro/model/Task;->setUpdated(Ljava/util/Calendar;)V

    .line 137
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lim/doit/pro/db/persist/TaskDao;->create(Ljava/lang/Object;Z)V

    .line 138
    invoke-virtual {p1}, Lim/doit/pro/model/Task;->getUuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lim/doit/pro/model/Task;->getRepeatNo()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lim/doit/pro/db/persist/TaskDao;->saveCreateLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    invoke-direct {p0, p1}, Lim/doit/pro/db/persist/TaskDao;->createTodayAndTomorrowRepeaterInstance(Lim/doit/pro/model/Task;)V

    .line 141
    invoke-virtual {p1}, Lim/doit/pro/model/Task;->isRepeat()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    invoke-static {}, Lim/doit/pro/utils/BroadcastUtils;->sendSyncManyBroadcastBySystem()V

    goto :goto_0
.end method

.method protected cursorToObject(Landroid/database/Cursor;)Lim/doit/pro/model/Task;
    .locals 4
    .param p1, "c"    # Landroid/database/Cursor;

    .prologue
    .line 767
    new-instance v0, Lim/doit/pro/model/Task;

    invoke-direct {v0}, Lim/doit/pro/model/Task;-><init>()V

    .line 768
    .local v0, "task":Lim/doit/pro/model/Task;
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/model/Task;->setUuid(Ljava/lang/String;)V

    .line 769
    const/4 v1, 0x1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/model/Task;->setRepeatNo(Ljava/lang/String;)V

    .line 770
    const/4 v1, 0x2

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Lim/doit/pro/utils/DateUtils;->convertToDate(J)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/model/Task;->setCreated(Ljava/util/Calendar;)V

    .line 771
    const/4 v1, 0x3

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Lim/doit/pro/utils/DateUtils;->convertToDate(J)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/model/Task;->setUpdated(Ljava/util/Calendar;)V

    .line 772
    const/4 v1, 0x4

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Lim/doit/pro/utils/DateUtils;->convertToDate(J)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/model/Task;->setDeleted(Ljava/util/Calendar;)V

    .line 773
    const/4 v1, 0x5

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Lim/doit/pro/utils/DateUtils;->convertToDate(J)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/model/Task;->setHidden(Ljava/util/Calendar;)V

    .line 774
    const/4 v1, 0x6

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Lim/doit/pro/utils/DateUtils;->convertToDate(J)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/model/Task;->setArchived(Ljava/util/Calendar;)V

    .line 775
    const/4 v1, 0x7

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Lim/doit/pro/utils/DateUtils;->convertToDate(J)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/model/Task;->setTrashed(Ljava/util/Calendar;)V

    .line 776
    const/16 v1, 0x8

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Lim/doit/pro/utils/DateUtils;->convertToDate(J)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/model/Task;->setCompleted(Ljava/util/Calendar;)V

    .line 777
    const/16 v1, 0x9

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lim/doit/pro/model/Task;->setUsn(J)V

    .line 778
    const/16 v1, 0xa

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/model/Task;->setName(Ljava/lang/String;)V

    .line 779
    const/16 v1, 0xb

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/model/Task;->setNotes(Ljava/lang/String;)V

    .line 780
    const/16 v1, 0xc

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lim/doit/pro/model/enums/Attribute;->getValue(Ljava/lang/String;)Lim/doit/pro/model/enums/Attribute;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/model/Task;->setAttribute(Lim/doit/pro/model/enums/Attribute;)V

    .line 781
    const/16 v1, 0xd

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lim/doit/pro/db/persist/TaskDao;->intToBoolean(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Lim/doit/pro/model/Task;->setAllDay(Z)V

    .line 782
    const/16 v1, 0xe

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Lim/doit/pro/utils/DateUtils;->convertToDate(J)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/model/Task;->setStartAt(Ljava/util/Calendar;)V

    .line 783
    const/16 v1, 0xf

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Lim/doit/pro/utils/DateUtils;->convertToDate(J)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/model/Task;->setEndAt(Ljava/util/Calendar;)V

    .line 784
    const/16 v1, 0x10

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/model/Task;->setContext(Ljava/lang/String;)V

    .line 785
    const/16 v1, 0x11

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/model/Task;->setGoal(Ljava/lang/String;)V

    .line 786
    const/16 v1, 0x12

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/model/Task;->setProject(Ljava/lang/String;)V

    .line 787
    const/16 v1, 0x13

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lim/doit/pro/model/Task;->setPriority(I)V

    .line 788
    const/16 v1, 0x14

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lim/doit/pro/db/persist/TaskDao;->intToBoolean(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Lim/doit/pro/model/Task;->setNow(Z)V

    .line 789
    const/16 v1, 0x15

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lim/doit/pro/model/Task;->setPos(J)V

    .line 790
    const/16 v1, 0x16

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/model/Task;->setSender(Ljava/lang/String;)V

    .line 791
    const/16 v1, 0x17

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/model/Task;->setSenderEmail(Ljava/lang/String;)V

    .line 792
    const/16 v1, 0x18

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/model/Task;->setFromSubTask(Ljava/lang/String;)V

    .line 793
    const/16 v1, 0x19

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Lim/doit/pro/utils/DateUtils;->convertToDate(J)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/model/Task;->setSentAt(Ljava/util/Calendar;)V

    .line 794
    const/16 v1, 0x1a

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/model/Task;->setJsonRepeater(Ljava/lang/String;)V

    .line 795
    const/16 v1, 0x1b

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/model/Task;->setJsonAssignment(Ljava/lang/String;)V

    .line 796
    const/16 v1, 0x1c

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/model/Task;->setJsonReminders(Ljava/lang/String;)V

    .line 797
    const/16 v1, 0x1d

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/model/Task;->setJsonTags(Ljava/lang/String;)V

    .line 798
    const/16 v1, 0x1e

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/model/Task;->setJsonLocalAttachments(Ljava/lang/String;)V

    .line 799
    const/16 v1, 0x1f

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/model/Task;->setSendOrigin(Ljava/lang/String;)V

    .line 800
    const/16 v1, 0x20

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lim/doit/pro/model/Task;->setEstimatedTime(I)V

    .line 801
    const/16 v1, 0x21

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lim/doit/pro/model/Task;->setSpentTime(I)V

    .line 802
    const/16 v1, 0x22

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/model/Task;->setJsonMedias(Ljava/lang/String;)V

    .line 803
    return-object v0
.end method

.method protected bridge synthetic cursorToObject(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lim/doit/pro/db/persist/TaskDao;->cursorToObject(Landroid/database/Cursor;)Lim/doit/pro/model/Task;

    move-result-object v0

    return-object v0
.end method

.method public delete(Lim/doit/pro/model/Task;)V
    .locals 4
    .param p1, "t"    # Lim/doit/pro/model/Task;

    .prologue
    .line 237
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {p1, v0}, Lim/doit/pro/model/Task;->setDeleted(Ljava/util/Calendar;)V

    .line 238
    invoke-virtual {p1}, Lim/doit/pro/model/Task;->getUuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lim/doit/pro/model/Task;->getRepeatNo()Ljava/lang/String;

    move-result-object v1

    const-string v2, "deleted"

    invoke-virtual {p1}, Lim/doit/pro/model/Task;->getDeleted()Ljava/util/Calendar;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lim/doit/pro/db/persist/TaskDao;->updateTimestamps(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Calendar;)V

    .line 239
    invoke-virtual {p1}, Lim/doit/pro/model/Task;->getUuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lim/doit/pro/model/Task;->getRepeatNo()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lim/doit/pro/db/persist/TaskDao;->saveDeleteLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    return-void
.end method

.method public findAllActiveRepeaters()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lim/doit/pro/model/Task;",
            ">;"
        }
    .end annotation

    .prologue
    .line 603
    iget-object v0, p0, Lim/doit/pro/db/persist/TaskDao;->mTaskDaoHelper:Lim/doit/pro/db/persist/utils/TaskDaoHelper;

    invoke-virtual {v0}, Lim/doit/pro/db/persist/utils/TaskDaoHelper;->repeater()Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v0

    invoke-direct {p0, v0}, Lim/doit/pro/db/persist/TaskDao;->findListAndRemoveInactiveProjectDatas(Lim/doit/pro/db/persist/utils/SQLBuilder;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public findAllByGoal(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 2
    .param p1, "uuid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lim/doit/pro/model/Task;",
            ">;"
        }
    .end annotation

    .prologue
    .line 476
    new-instance v0, Lim/doit/pro/db/persist/utils/SQLBuilder;

    invoke-direct {v0}, Lim/doit/pro/db/persist/utils/SQLBuilder;-><init>()V

    .line 477
    .local v0, "sql":Lim/doit/pro/db/persist/utils/SQLBuilder;
    const-string v1, "goal"

    invoke-virtual {v0, v1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->append(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->eq(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    .line 478
    invoke-virtual {v0}, Lim/doit/pro/db/persist/utils/SQLBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lim/doit/pro/db/persist/TaskDao;->findList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public findAllByProject(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 2
    .param p1, "uuid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lim/doit/pro/model/Task;",
            ">;"
        }
    .end annotation

    .prologue
    .line 362
    new-instance v0, Lim/doit/pro/db/persist/utils/SQLBuilder;

    invoke-direct {v0}, Lim/doit/pro/db/persist/utils/SQLBuilder;-><init>()V

    .line 363
    .local v0, "sql":Lim/doit/pro/db/persist/utils/SQLBuilder;
    const-string v1, "project"

    invoke-virtual {v0, v1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->append(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->eq(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    .line 364
    invoke-virtual {v0}, Lim/doit/pro/db/persist/utils/SQLBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lim/doit/pro/db/persist/TaskDao;->findList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public findAllByTaskContext(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 2
    .param p1, "uuid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lim/doit/pro/model/Task;",
            ">;"
        }
    .end annotation

    .prologue
    .line 428
    new-instance v0, Lim/doit/pro/db/persist/utils/SQLBuilder;

    invoke-direct {v0}, Lim/doit/pro/db/persist/utils/SQLBuilder;-><init>()V

    .line 429
    .local v0, "sql":Lim/doit/pro/db/persist/utils/SQLBuilder;
    const-string v1, "context"

    invoke-virtual {v0, v1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->append(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->eq(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    .line 430
    invoke-virtual {v0}, Lim/doit/pro/db/persist/utils/SQLBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lim/doit/pro/db/persist/TaskDao;->findList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public findAllLiveRepeaters()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lim/doit/pro/model/Task;",
            ">;"
        }
    .end annotation

    .prologue
    .line 599
    iget-object v0, p0, Lim/doit/pro/db/persist/TaskDao;->mTaskDaoHelper:Lim/doit/pro/db/persist/utils/TaskDaoHelper;

    invoke-virtual {v0}, Lim/doit/pro/db/persist/utils/TaskDaoHelper;->repeater()Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lim/doit/pro/db/persist/utils/SQLBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lim/doit/pro/db/persist/TaskDao;->findList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public findAllNotDead()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lim/doit/pro/model/Task;",
            ">;"
        }
    .end annotation

    .prologue
    .line 529
    iget-object v0, p0, Lim/doit/pro/db/persist/TaskDao;->mTaskDaoHelper:Lim/doit/pro/db/persist/utils/TaskDaoHelper;

    invoke-virtual {v0}, Lim/doit/pro/db/persist/utils/TaskDaoHelper;->notDead()Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lim/doit/pro/db/persist/utils/SQLBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lim/doit/pro/db/persist/TaskDao;->findList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public findAllValidReminder()Ljava/util/ArrayList;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lim/doit/pro/db/metadata/ReminderMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 571
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 572
    .local v1, "now":J
    move-object/from16 v0, p0

    iget-object v9, v0, Lim/doit/pro/db/persist/TaskDao;->mTaskDaoHelper:Lim/doit/pro/db/persist/utils/TaskDaoHelper;

    .line 573
    invoke-virtual {v9}, Lim/doit/pro/db/persist/utils/TaskDaoHelper;->getAllHaveReminderTasks()Ljava/lang/String;

    move-result-object v9

    .line 572
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lim/doit/pro/db/persist/TaskDao;->findList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    .line 574
    .local v8, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/Task;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 575
    .local v3, "reminders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/db/metadata/ReminderMessage;>;"
    invoke-static {}, Lim/doit/pro/utils/DateUtils;->endOfTodayMills()J

    move-result-wide v4

    .line 576
    .local v4, "endOfTodayMills":J
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    .line 577
    .local v7, "checkTime":Ljava/util/Calendar;
    const/4 v9, 0x5

    const/4 v10, 0x2

    invoke-virtual {v7, v9, v10}, Ljava/util/Calendar;->add(II)V

    .line 578
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_0
    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_1

    .line 590
    return-object v3

    .line 578
    :cond_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lim/doit/pro/model/Task;

    .line 579
    .local v14, "t":Lim/doit/pro/model/Task;
    invoke-virtual {v14}, Lim/doit/pro/model/Task;->isRepeat()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 580
    invoke-static {v14, v7}, Lim/doit/pro/utils/TaskUtils;->buildRepeaterInstance(Lim/doit/pro/model/Task;Ljava/util/Calendar;)Lim/doit/pro/model/Task;

    move-result-object v6

    .line 581
    .local v6, "sub":Lim/doit/pro/model/Task;
    if-eqz v6, :cond_0

    .line 584
    invoke-static/range {v1 .. v7}, Lim/doit/pro/db/persist/TaskDao;->addVaildReminder(JLjava/util/ArrayList;JLim/doit/pro/model/Task;Ljava/util/Calendar;)V

    goto :goto_0

    .line 587
    .end local v6    # "sub":Lim/doit/pro/model/Task;
    :cond_2
    const/4 v15, 0x0

    move-wide v9, v1

    move-object v11, v3

    move-wide v12, v4

    invoke-static/range {v9 .. v15}, Lim/doit/pro/db/persist/TaskDao;->addVaildReminder(JLjava/util/ArrayList;JLim/doit/pro/model/Task;Ljava/util/Calendar;)V

    goto :goto_0
.end method

.method public findArchivedAndCompletedByCompletedTime(Ljava/util/Calendar;)Ljava/util/ArrayList;
    .locals 6
    .param p1, "date"    # Ljava/util/Calendar;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Calendar;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lim/doit/pro/model/Task;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 344
    invoke-static {p1}, Lim/doit/pro/utils/DateUtils;->copyDate(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v2

    .line 345
    .local v2, "startAt":Ljava/util/Calendar;
    invoke-static {v2}, Lim/doit/pro/utils/DateUtils;->startOfDate(Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 346
    invoke-static {p1}, Lim/doit/pro/utils/DateUtils;->copyDate(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v0

    .line 347
    .local v0, "endAt":Ljava/util/Calendar;
    invoke-static {v0}, Lim/doit/pro/utils/DateUtils;->endOfDate(Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 348
    new-instance v1, Lim/doit/pro/db/persist/utils/SQLBuilder;

    invoke-direct {v1}, Lim/doit/pro/db/persist/utils/SQLBuilder;-><init>()V

    .line 349
    .local v1, "sql":Lim/doit/pro/db/persist/utils/SQLBuilder;
    const-string v3, "deleted"

    invoke-virtual {v1, v3}, Lim/doit/pro/db/persist/utils/SQLBuilder;->append(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Lim/doit/pro/db/persist/utils/SQLBuilder;->eq(I)Lim/doit/pro/db/persist/utils/SQLBuilder;

    .line 350
    const-string v3, "hidden"

    invoke-virtual {v1, v3}, Lim/doit/pro/db/persist/utils/SQLBuilder;->and(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Lim/doit/pro/db/persist/utils/SQLBuilder;->eq(I)Lim/doit/pro/db/persist/utils/SQLBuilder;

    .line 351
    const-string v3, "trashed"

    invoke-virtual {v1, v3}, Lim/doit/pro/db/persist/utils/SQLBuilder;->and(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Lim/doit/pro/db/persist/utils/SQLBuilder;->eq(I)Lim/doit/pro/db/persist/utils/SQLBuilder;

    .line 352
    const-string v3, "completed"

    invoke-virtual {v1, v3}, Lim/doit/pro/db/persist/utils/SQLBuilder;->and(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lim/doit/pro/db/persist/utils/SQLBuilder;->gte(J)Lim/doit/pro/db/persist/utils/SQLBuilder;

    .line 353
    const-string v3, "completed"

    invoke-virtual {v1, v3}, Lim/doit/pro/db/persist/utils/SQLBuilder;->and(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lim/doit/pro/db/persist/utils/SQLBuilder;->lte(J)Lim/doit/pro/db/persist/utils/SQLBuilder;

    .line 354
    invoke-virtual {v1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lim/doit/pro/db/persist/TaskDao;->findList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    return-object v3
.end method

.method public findByFilter(Lim/doit/pro/model/Filter;)Ljava/util/ArrayList;
    .locals 2
    .param p1, "filter"    # Lim/doit/pro/model/Filter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lim/doit/pro/model/Filter;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lim/doit/pro/model/Task;",
            ">;"
        }
    .end annotation

    .prologue
    .line 521
    iget-object v1, p0, Lim/doit/pro/db/persist/TaskDao;->mTaskDaoHelper:Lim/doit/pro/db/persist/utils/TaskDaoHelper;

    .line 522
    invoke-virtual {v1, p1}, Lim/doit/pro/db/persist/utils/TaskDaoHelper;->getFilterClause(Lim/doit/pro/model/Filter;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v1

    .line 521
    invoke-direct {p0, v1}, Lim/doit/pro/db/persist/TaskDao;->findListAndRemoveInactiveProjectDatas(Lim/doit/pro/db/persist/utils/SQLBuilder;)Ljava/util/ArrayList;

    move-result-object v0

    .line 523
    .local v0, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/Task;>;"
    invoke-direct {p0, p1, v0}, Lim/doit/pro/db/persist/TaskDao;->filterByAssign(Lim/doit/pro/model/Filter;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    .line 524
    invoke-direct {p0, p1, v0}, Lim/doit/pro/db/persist/TaskDao;->filterByTag(Lim/doit/pro/model/Filter;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    .line 525
    return-object v0
.end method

.method public findByFromSubTask(Ljava/lang/String;)Lim/doit/pro/model/Task;
    .locals 1
    .param p1, "subTaskId"    # Ljava/lang/String;

    .prologue
    .line 557
    iget-object v0, p0, Lim/doit/pro/db/persist/TaskDao;->mTaskDaoHelper:Lim/doit/pro/db/persist/utils/TaskDaoHelper;

    invoke-virtual {v0, p1}, Lim/doit/pro/db/persist/utils/TaskDaoHelper;->fromSubTask(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lim/doit/pro/db/persist/utils/SQLBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lim/doit/pro/db/persist/TaskDao;->findOne(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lim/doit/pro/model/Task;

    return-object v0
.end method

.method public findByGoal(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .param p1, "uuid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lim/doit/pro/model/Task;",
            ">;"
        }
    .end annotation

    .prologue
    .line 468
    iget-object v0, p0, Lim/doit/pro/db/persist/TaskDao;->mTaskDaoHelper:Lim/doit/pro/db/persist/utils/TaskDaoHelper;

    invoke-virtual {v0, p1}, Lim/doit/pro/db/persist/utils/TaskDaoHelper;->byGoal(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lim/doit/pro/db/persist/utils/SQLBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lim/doit/pro/db/persist/TaskDao;->findList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public findByProject(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .param p1, "uuid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lim/doit/pro/model/Task;",
            ">;"
        }
    .end annotation

    .prologue
    .line 368
    iget-object v0, p0, Lim/doit/pro/db/persist/TaskDao;->mTaskDaoHelper:Lim/doit/pro/db/persist/utils/TaskDaoHelper;

    invoke-virtual {v0, p1}, Lim/doit/pro/db/persist/utils/TaskDaoHelper;->byProject(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lim/doit/pro/db/persist/utils/SQLBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lim/doit/pro/db/persist/TaskDao;->findList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public findByReceivedTasks(Lim/doit/pro/model/Contact;)Ljava/util/ArrayList;
    .locals 1
    .param p1, "contact"    # Lim/doit/pro/model/Contact;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lim/doit/pro/model/Contact;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lim/doit/pro/model/Task;",
            ">;"
        }
    .end annotation

    .prologue
    .line 653
    iget-object v0, p0, Lim/doit/pro/db/persist/TaskDao;->mTaskDaoHelper:Lim/doit/pro/db/persist/utils/TaskDaoHelper;

    .line 654
    invoke-virtual {v0, p1}, Lim/doit/pro/db/persist/utils/TaskDaoHelper;->bySender(Lim/doit/pro/model/Contact;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v0

    .line 653
    invoke-direct {p0, v0}, Lim/doit/pro/db/persist/TaskDao;->findListAndRemoveInactiveProjectDatas(Lim/doit/pro/db/persist/utils/SQLBuilder;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public findBySearch(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 7
    .param p1, "keyword"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lim/doit/pro/model/Task;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 561
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 562
    iget-object v1, p0, Lim/doit/pro/db/persist/TaskDao;->mTaskDaoHelper:Lim/doit/pro/db/persist/utils/TaskDaoHelper;

    new-array v2, v6, [Ljava/lang/String;

    .line 563
    const-string v3, "title"

    aput-object v3, v2, v4

    const-string v3, "notes"

    aput-object v3, v2, v5

    .line 562
    invoke-virtual {v1, v2}, Lim/doit/pro/db/persist/utils/TaskDaoHelper;->getSearchByKeyClause([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 564
    .local v0, "clause":Ljava/lang/String;
    new-array v1, v6, [Ljava/lang/String;

    .line 565
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "%"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    .line 566
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "%"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    .line 564
    invoke-virtual {p0, v0, v1}, Lim/doit/pro/db/persist/TaskDao;->findList(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public findBySentTasks(Lim/doit/pro/model/Contact;)Ljava/util/ArrayList;
    .locals 8
    .param p1, "contact"    # Lim/doit/pro/model/Contact;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lim/doit/pro/model/Contact;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lim/doit/pro/model/Task;",
            ">;"
        }
    .end annotation

    .prologue
    .line 658
    invoke-virtual {p0}, Lim/doit/pro/db/persist/TaskDao;->findWaiting()Ljava/util/ArrayList;

    move-result-object v3

    .line 659
    .local v3, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/Task;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 660
    .local v1, "sendTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/Task;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 673
    return-object v1

    .line 660
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lim/doit/pro/model/Task;

    .line 661
    .local v2, "task":Lim/doit/pro/model/Task;
    invoke-virtual {v2}, Lim/doit/pro/model/Task;->getAssignment()Lim/doit/pro/model/Assignment;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 664
    invoke-virtual {v2}, Lim/doit/pro/model/Task;->getAssignment()Lim/doit/pro/model/Assignment;

    move-result-object v5

    invoke-virtual {v5}, Lim/doit/pro/model/Assignment;->getItems()Ljava/util/ArrayList;

    move-result-object v5

    invoke-static {v5}, Lim/doit/pro/utils/CollectionUtils;->isEmpty(Ljava/util/List;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 667
    invoke-virtual {v2}, Lim/doit/pro/model/Task;->getAssignment()Lim/doit/pro/model/Assignment;

    move-result-object v5

    invoke-virtual {v5}, Lim/doit/pro/model/Assignment;->getItems()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lim/doit/pro/model/AssignmentItem;

    .line 668
    .local v0, "item":Lim/doit/pro/model/AssignmentItem;
    invoke-virtual {p1}, Lim/doit/pro/model/Contact;->getEmail()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lim/doit/pro/model/AssignmentItem;->getEmail()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 669
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public findByStartAt(Ljava/util/Calendar;)Ljava/util/ArrayList;
    .locals 7
    .param p1, "date"    # Ljava/util/Calendar;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Calendar;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lim/doit/pro/model/Task;",
            ">;"
        }
    .end annotation

    .prologue
    .line 635
    iget-object v5, p0, Lim/doit/pro/db/persist/TaskDao;->mTaskDaoHelper:Lim/doit/pro/db/persist/utils/TaskDaoHelper;

    invoke-virtual {v5, p1}, Lim/doit/pro/db/persist/utils/TaskDaoHelper;->byStartAt(Ljava/util/Calendar;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v2

    .line 636
    .local v2, "sql":Lim/doit/pro/db/persist/utils/SQLBuilder;
    invoke-direct {p0, v2}, Lim/doit/pro/db/persist/TaskDao;->findListAndRemoveInactiveProjectDatas(Lim/doit/pro/db/persist/utils/SQLBuilder;)Ljava/util/ArrayList;

    move-result-object v4

    .line 637
    .local v4, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/Task;>;"
    invoke-virtual {p0}, Lim/doit/pro/db/persist/TaskDao;->findAllActiveRepeaters()Ljava/util/ArrayList;

    move-result-object v1

    .line 638
    .local v1, "repeaterTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/Task;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_1

    .line 644
    return-object v4

    .line 638
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lim/doit/pro/model/Task;

    .line 639
    .local v0, "item":Lim/doit/pro/model/Task;
    invoke-static {v0, p1}, Lim/doit/pro/utils/TaskUtils;->buildRepeaterInstance(Lim/doit/pro/model/Task;Ljava/util/Calendar;)Lim/doit/pro/model/Task;

    move-result-object v3

    .line 640
    .local v3, "taskInstance":Lim/doit/pro/model/Task;
    if-eqz v3, :cond_0

    .line 641
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public findByTaskContext(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .param p1, "uuid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lim/doit/pro/model/Task;",
            ">;"
        }
    .end annotation

    .prologue
    .line 419
    iget-object v0, p0, Lim/doit/pro/db/persist/TaskDao;->mTaskDaoHelper:Lim/doit/pro/db/persist/utils/TaskDaoHelper;

    .line 420
    invoke-virtual {v0, p1}, Lim/doit/pro/db/persist/utils/TaskDaoHelper;->byTaskContext(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v0

    .line 419
    invoke-direct {p0, v0}, Lim/doit/pro/db/persist/TaskDao;->findListAndRemoveInactiveProjectDatas(Lim/doit/pro/db/persist/utils/SQLBuilder;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic findByUUID(Ljava/lang/String;)Lim/doit/pro/model/BaseEntity;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lim/doit/pro/db/persist/TaskDao;->findByUUID(Ljava/lang/String;)Lim/doit/pro/model/Task;

    move-result-object v0

    return-object v0
.end method

.method public findByUUID(Ljava/lang/String;)Lim/doit/pro/model/Task;
    .locals 1
    .param p1, "uuid"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 535
    const/4 v0, 0x0

    return-object v0
.end method

.method public findByUUIDAndRepeatNo(Ljava/lang/String;Ljava/lang/String;)Lim/doit/pro/model/Task;
    .locals 1
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "repeatNo"    # Ljava/lang/String;

    .prologue
    .line 539
    iget-object v0, p0, Lim/doit/pro/db/persist/TaskDao;->mTaskDaoHelper:Lim/doit/pro/db/persist/utils/TaskDaoHelper;

    invoke-virtual {v0, p1, p2}, Lim/doit/pro/db/persist/utils/TaskDaoHelper;->uuidAndRepeatNoClause(Ljava/lang/String;Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v0

    .line 540
    invoke-virtual {v0}, Lim/doit/pro/db/persist/utils/SQLBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 539
    invoke-virtual {p0, v0}, Lim/doit/pro/db/persist/TaskDao;->findOne(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lim/doit/pro/model/Task;

    return-object v0
.end method

.method public findCompleted()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lim/doit/pro/model/Task;",
            ">;"
        }
    .end annotation

    .prologue
    .line 340
    iget-object v0, p0, Lim/doit/pro/db/persist/TaskDao;->mTaskDaoHelper:Lim/doit/pro/db/persist/utils/TaskDaoHelper;

    invoke-virtual {v0}, Lim/doit/pro/db/persist/utils/TaskDaoHelper;->completed()Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lim/doit/pro/db/persist/utils/SQLBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lim/doit/pro/db/persist/TaskDao;->findList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public findCompletedByGoal(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .param p1, "uuid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lim/doit/pro/model/Task;",
            ">;"
        }
    .end annotation

    .prologue
    .line 482
    iget-object v0, p0, Lim/doit/pro/db/persist/TaskDao;->mTaskDaoHelper:Lim/doit/pro/db/persist/utils/TaskDaoHelper;

    invoke-virtual {v0, p1}, Lim/doit/pro/db/persist/utils/TaskDaoHelper;->completedByGoal(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lim/doit/pro/db/persist/utils/SQLBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lim/doit/pro/db/persist/TaskDao;->findList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public findCompletedByProject(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .param p1, "uuid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lim/doit/pro/model/Task;",
            ">;"
        }
    .end annotation

    .prologue
    .line 376
    iget-object v0, p0, Lim/doit/pro/db/persist/TaskDao;->mTaskDaoHelper:Lim/doit/pro/db/persist/utils/TaskDaoHelper;

    invoke-virtual {v0, p1}, Lim/doit/pro/db/persist/utils/TaskDaoHelper;->completedByProject(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lim/doit/pro/db/persist/utils/SQLBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lim/doit/pro/db/persist/TaskDao;->findList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public findDoitNow()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lim/doit/pro/model/Task;",
            ">;"
        }
    .end annotation

    .prologue
    .line 251
    iget-object v0, p0, Lim/doit/pro/db/persist/TaskDao;->mTaskDaoHelper:Lim/doit/pro/db/persist/utils/TaskDaoHelper;

    invoke-virtual {v0}, Lim/doit/pro/db/persist/utils/TaskDaoHelper;->today()Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v0

    .line 252
    const-string v1, "now"

    invoke-virtual {v0, v1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->and(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->gte(I)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v0

    .line 251
    invoke-direct {p0, v0}, Lim/doit/pro/db/persist/TaskDao;->findListAndRemoveInactiveProjectDatas(Lim/doit/pro/db/persist/utils/SQLBuilder;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public findFullByUUIDAndRepeatNo(Ljava/lang/String;Ljava/lang/String;)Lim/doit/pro/model/Task;
    .locals 2
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "repeatNo"    # Ljava/lang/String;

    .prologue
    .line 544
    iget-object v1, p0, Lim/doit/pro/db/persist/TaskDao;->mTaskDaoHelper:Lim/doit/pro/db/persist/utils/TaskDaoHelper;

    .line 545
    invoke-virtual {v1, p1, p2}, Lim/doit/pro/db/persist/utils/TaskDaoHelper;->uuidAndRepeatNoClause(Ljava/lang/String;Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 544
    invoke-virtual {p0, v1}, Lim/doit/pro/db/persist/TaskDao;->findOne(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lim/doit/pro/model/Task;

    .line 546
    .local v0, "task":Lim/doit/pro/model/Task;
    if-eqz v0, :cond_0

    .line 547
    invoke-virtual {v0}, Lim/doit/pro/model/Task;->getRepeater()Lim/doit/pro/model/Repeater;

    .line 548
    invoke-virtual {v0}, Lim/doit/pro/model/Task;->getReminders()Ljava/util/ArrayList;

    .line 549
    invoke-virtual {v0}, Lim/doit/pro/model/Task;->getAssignment()Lim/doit/pro/model/Assignment;

    .line 550
    invoke-virtual {v0}, Lim/doit/pro/model/Task;->getTags()Ljava/util/ArrayList;

    .line 551
    invoke-virtual {v0}, Lim/doit/pro/model/Task;->getMedias()Ljava/util/ArrayList;

    .line 553
    :cond_0
    return-object v0
.end method

.method public findInbox()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lim/doit/pro/model/Task;",
            ">;"
        }
    .end annotation

    .prologue
    .line 243
    iget-object v0, p0, Lim/doit/pro/db/persist/TaskDao;->mTaskDaoHelper:Lim/doit/pro/db/persist/utils/TaskDaoHelper;

    invoke-virtual {v0}, Lim/doit/pro/db/persist/utils/TaskDaoHelper;->inbox()Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lim/doit/pro/db/persist/utils/SQLBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lim/doit/pro/db/persist/TaskDao;->findList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public findNext()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lim/doit/pro/model/Task;",
            ">;"
        }
    .end annotation

    .prologue
    .line 273
    iget-object v0, p0, Lim/doit/pro/db/persist/TaskDao;->mTaskDaoHelper:Lim/doit/pro/db/persist/utils/TaskDaoHelper;

    invoke-virtual {v0}, Lim/doit/pro/db/persist/utils/TaskDaoHelper;->next()Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v0

    invoke-direct {p0, v0}, Lim/doit/pro/db/persist/TaskDao;->findListAndRemoveInactiveProjectDatas(Lim/doit/pro/db/persist/utils/SQLBuilder;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public findNotCompletedBySentAt(Ljava/util/Calendar;)Ljava/util/ArrayList;
    .locals 6
    .param p1, "date"    # Ljava/util/Calendar;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Calendar;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lim/doit/pro/model/Task;",
            ">;"
        }
    .end annotation

    .prologue
    .line 328
    invoke-static {p1}, Lim/doit/pro/utils/DateUtils;->copyDate(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v2

    .line 329
    .local v2, "startAt":Ljava/util/Calendar;
    invoke-static {v2}, Lim/doit/pro/utils/DateUtils;->startOfDate(Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 330
    invoke-static {p1}, Lim/doit/pro/utils/DateUtils;->copyDate(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v0

    .line 331
    .local v0, "endAt":Ljava/util/Calendar;
    invoke-static {v0}, Lim/doit/pro/utils/DateUtils;->endOfDate(Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 332
    iget-object v3, p0, Lim/doit/pro/db/persist/TaskDao;->mTaskDaoHelper:Lim/doit/pro/db/persist/utils/TaskDaoHelper;

    invoke-virtual {v3}, Lim/doit/pro/db/persist/utils/TaskDaoHelper;->waiting()Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v1

    .line 333
    .local v1, "sql":Lim/doit/pro/db/persist/utils/SQLBuilder;
    const-string v3, "assignment"

    invoke-virtual {v1, v3}, Lim/doit/pro/db/persist/utils/SQLBuilder;->and(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lim/doit/pro/db/persist/utils/SQLBuilder;->isNotNull()Lim/doit/pro/db/persist/utils/SQLBuilder;

    .line 334
    const-string v3, "sent_at"

    invoke-virtual {v1, v3}, Lim/doit/pro/db/persist/utils/SQLBuilder;->and(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lim/doit/pro/db/persist/utils/SQLBuilder;->gte(J)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v3

    const-string v4, "sent_at"

    invoke-virtual {v3, v4}, Lim/doit/pro/db/persist/utils/SQLBuilder;->and(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v3

    .line 335
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lim/doit/pro/db/persist/utils/SQLBuilder;->lte(J)Lim/doit/pro/db/persist/utils/SQLBuilder;

    .line 336
    invoke-virtual {v1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lim/doit/pro/db/persist/TaskDao;->findList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    return-object v3
.end method

.method public findNotCompletedByStartAt(Ljava/util/Calendar;)Ljava/util/ArrayList;
    .locals 2
    .param p1, "date"    # Ljava/util/Calendar;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Calendar;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lim/doit/pro/model/Task;",
            ">;"
        }
    .end annotation

    .prologue
    .line 648
    iget-object v1, p0, Lim/doit/pro/db/persist/TaskDao;->mTaskDaoHelper:Lim/doit/pro/db/persist/utils/TaskDaoHelper;

    invoke-virtual {v1, p1}, Lim/doit/pro/db/persist/utils/TaskDaoHelper;->notCompletedByStartAt(Ljava/util/Calendar;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v0

    .line 649
    .local v0, "sql":Lim/doit/pro/db/persist/utils/SQLBuilder;
    invoke-direct {p0, v0}, Lim/doit/pro/db/persist/TaskDao;->findListAndRemoveInactiveProjectDatas(Lim/doit/pro/db/persist/utils/SQLBuilder;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public findScheculed()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lim/doit/pro/model/Task;",
            ">;"
        }
    .end annotation

    .prologue
    .line 289
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 290
    .local v0, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/Task;>;"
    invoke-static {}, Lim/doit/pro/utils/BoxUtils;->isTomorrowShow()Z

    move-result v1

    if-nez v1, :cond_0

    .line 291
    invoke-virtual {p0}, Lim/doit/pro/db/persist/TaskDao;->findTomorrow()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 293
    :cond_0
    iget-object v1, p0, Lim/doit/pro/db/persist/TaskDao;->mTaskDaoHelper:Lim/doit/pro/db/persist/utils/TaskDaoHelper;

    .line 294
    invoke-virtual {v1}, Lim/doit/pro/db/persist/utils/TaskDaoHelper;->scheduled()Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v1

    .line 293
    invoke-direct {p0, v1}, Lim/doit/pro/db/persist/TaskDao;->findListAndRemoveInactiveProjectDatas(Lim/doit/pro/db/persist/utils/SQLBuilder;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 295
    return-object v0
.end method

.method public findSomeday()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lim/doit/pro/model/Task;",
            ">;"
        }
    .end annotation

    .prologue
    .line 308
    iget-object v0, p0, Lim/doit/pro/db/persist/TaskDao;->mTaskDaoHelper:Lim/doit/pro/db/persist/utils/TaskDaoHelper;

    invoke-virtual {v0}, Lim/doit/pro/db/persist/utils/TaskDaoHelper;->someday()Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v0

    invoke-direct {p0, v0}, Lim/doit/pro/db/persist/TaskDao;->findListAndRemoveInactiveProjectDatas(Lim/doit/pro/db/persist/utils/SQLBuilder;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public findToday()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lim/doit/pro/model/Task;",
            ">;"
        }
    .end annotation

    .prologue
    .line 261
    iget-object v0, p0, Lim/doit/pro/db/persist/TaskDao;->mTaskDaoHelper:Lim/doit/pro/db/persist/utils/TaskDaoHelper;

    invoke-virtual {v0}, Lim/doit/pro/db/persist/utils/TaskDaoHelper;->today()Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v0

    invoke-direct {p0, v0}, Lim/doit/pro/db/persist/TaskDao;->findListAndRemoveInactiveProjectDatas(Lim/doit/pro/db/persist/utils/SQLBuilder;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public findTomorrow()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lim/doit/pro/model/Task;",
            ">;"
        }
    .end annotation

    .prologue
    .line 281
    iget-object v0, p0, Lim/doit/pro/db/persist/TaskDao;->mTaskDaoHelper:Lim/doit/pro/db/persist/utils/TaskDaoHelper;

    invoke-virtual {v0}, Lim/doit/pro/db/persist/utils/TaskDaoHelper;->tomorrow()Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v0

    invoke-direct {p0, v0}, Lim/doit/pro/db/persist/TaskDao;->findListAndRemoveInactiveProjectDatas(Lim/doit/pro/db/persist/utils/SQLBuilder;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public findTrash()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lim/doit/pro/model/Task;",
            ">;"
        }
    .end annotation

    .prologue
    .line 358
    iget-object v0, p0, Lim/doit/pro/db/persist/TaskDao;->mTaskDaoHelper:Lim/doit/pro/db/persist/utils/TaskDaoHelper;

    invoke-virtual {v0}, Lim/doit/pro/db/persist/utils/TaskDaoHelper;->trash()Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lim/doit/pro/db/persist/utils/SQLBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lim/doit/pro/db/persist/TaskDao;->findList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public findTrashedByGoal(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .param p1, "uuid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lim/doit/pro/model/Task;",
            ">;"
        }
    .end annotation

    .prologue
    .line 490
    iget-object v0, p0, Lim/doit/pro/db/persist/TaskDao;->mTaskDaoHelper:Lim/doit/pro/db/persist/utils/TaskDaoHelper;

    invoke-virtual {v0, p1}, Lim/doit/pro/db/persist/utils/TaskDaoHelper;->trashedByGoal(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lim/doit/pro/db/persist/utils/SQLBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lim/doit/pro/db/persist/TaskDao;->findList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public findTrashedByProject(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .param p1, "uuid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lim/doit/pro/model/Task;",
            ">;"
        }
    .end annotation

    .prologue
    .line 380
    iget-object v0, p0, Lim/doit/pro/db/persist/TaskDao;->mTaskDaoHelper:Lim/doit/pro/db/persist/utils/TaskDaoHelper;

    invoke-virtual {v0, p1}, Lim/doit/pro/db/persist/utils/TaskDaoHelper;->trashedByProject(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lim/doit/pro/db/persist/utils/SQLBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lim/doit/pro/db/persist/TaskDao;->findList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public findWaiting()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lim/doit/pro/model/Task;",
            ">;"
        }
    .end annotation

    .prologue
    .line 316
    iget-object v0, p0, Lim/doit/pro/db/persist/TaskDao;->mTaskDaoHelper:Lim/doit/pro/db/persist/utils/TaskDaoHelper;

    invoke-virtual {v0}, Lim/doit/pro/db/persist/utils/TaskDaoHelper;->waiting()Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v0

    invoke-direct {p0, v0}, Lim/doit/pro/db/persist/TaskDao;->findListAndRemoveInactiveProjectDatas(Lim/doit/pro/db/persist/utils/SQLBuilder;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public hide(Lim/doit/pro/model/Task;)V
    .locals 2
    .param p1, "t"    # Lim/doit/pro/model/Task;

    .prologue
    .line 228
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {p1, v0}, Lim/doit/pro/model/Task;->setHidden(Ljava/util/Calendar;)V

    .line 229
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {p1, v0}, Lim/doit/pro/model/Task;->setUpdated(Ljava/util/Calendar;)V

    .line 230
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lim/doit/pro/db/persist/TaskDao;->update(Lim/doit/pro/model/Task;Z)V

    .line 231
    invoke-virtual {p1}, Lim/doit/pro/model/Task;->getUuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lim/doit/pro/model/Task;->getRepeatNo()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lim/doit/pro/db/persist/TaskDao;->saveHideLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->refreshWidget()V

    .line 234
    return-void
.end method

.method public isExistedByUUID(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "repeatNo"    # Ljava/lang/String;

    .prologue
    .line 110
    iget-object v0, p0, Lim/doit/pro/db/persist/TaskDao;->mTaskDaoHelper:Lim/doit/pro/db/persist/utils/TaskDaoHelper;

    invoke-virtual {v0, p1, p2}, Lim/doit/pro/db/persist/utils/TaskDaoHelper;->uuidAndRepeatNoClause(Ljava/lang/String;Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v0

    .line 111
    invoke-virtual {v0}, Lim/doit/pro/db/persist/utils/SQLBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 110
    invoke-virtual {p0, v0}, Lim/doit/pro/db/persist/TaskDao;->isExisted(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected objectToContentValues(Lim/doit/pro/model/Task;Z)Landroid/content/ContentValues;
    .locals 4
    .param p1, "t"    # Lim/doit/pro/model/Task;
    .param p2, "isDownload"    # Z

    .prologue
    .line 808
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 809
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "uuid"

    invoke-virtual {p1}, Lim/doit/pro/model/Task;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 810
    const-string v1, "repeat_no"

    invoke-virtual {p1}, Lim/doit/pro/model/Task;->getRepeatNo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 811
    const-string v1, "created"

    invoke-virtual {p1}, Lim/doit/pro/model/Task;->getCreated()Ljava/util/Calendar;

    move-result-object v2

    invoke-static {v2}, Lim/doit/pro/utils/DateUtils;->convertToLong(Ljava/util/Calendar;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 812
    const-string v1, "updated"

    invoke-virtual {p1}, Lim/doit/pro/model/Task;->getUpdated()Ljava/util/Calendar;

    move-result-object v2

    invoke-static {v2}, Lim/doit/pro/utils/DateUtils;->convertToLong(Ljava/util/Calendar;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 813
    const-string v1, "deleted"

    invoke-virtual {p1}, Lim/doit/pro/model/Task;->getDeleted()Ljava/util/Calendar;

    move-result-object v2

    invoke-static {v2}, Lim/doit/pro/utils/DateUtils;->convertToLong(Ljava/util/Calendar;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 814
    const-string v1, "hidden"

    invoke-virtual {p1}, Lim/doit/pro/model/Task;->getHidden()Ljava/util/Calendar;

    move-result-object v2

    invoke-static {v2}, Lim/doit/pro/utils/DateUtils;->convertToLong(Ljava/util/Calendar;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 815
    const-string v1, "archived"

    invoke-virtual {p1}, Lim/doit/pro/model/Task;->getArchived()Ljava/util/Calendar;

    move-result-object v2

    invoke-static {v2}, Lim/doit/pro/utils/DateUtils;->convertToLong(Ljava/util/Calendar;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 816
    const-string v1, "trashed"

    invoke-virtual {p1}, Lim/doit/pro/model/Task;->getTrashed()Ljava/util/Calendar;

    move-result-object v2

    invoke-static {v2}, Lim/doit/pro/utils/DateUtils;->convertToLong(Ljava/util/Calendar;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 817
    const-string v1, "completed"

    invoke-virtual {p1}, Lim/doit/pro/model/Task;->getCompleted()Ljava/util/Calendar;

    move-result-object v2

    invoke-static {v2}, Lim/doit/pro/utils/DateUtils;->convertToLong(Ljava/util/Calendar;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 818
    if-eqz p2, :cond_0

    .line 819
    const-string v1, "usn"

    invoke-virtual {p1}, Lim/doit/pro/model/Task;->getUsn()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 821
    :cond_0
    const-string v1, "title"

    invoke-virtual {p1}, Lim/doit/pro/model/Task;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 822
    const-string v1, "notes"

    invoke-virtual {p1}, Lim/doit/pro/model/Task;->getNotes()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 823
    const-string v1, "attribute"

    invoke-virtual {p1}, Lim/doit/pro/model/Task;->getAttribute()Lim/doit/pro/model/enums/Attribute;

    move-result-object v2

    invoke-static {v2}, Lim/doit/pro/model/enums/Attribute;->toString(Lim/doit/pro/model/enums/Attribute;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 824
    const-string v1, "all_day"

    invoke-virtual {p1}, Lim/doit/pro/model/Task;->isAllDay()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 825
    const-string v1, "start_at"

    invoke-virtual {p1}, Lim/doit/pro/model/Task;->getStartAt()Ljava/util/Calendar;

    move-result-object v2

    invoke-static {v2}, Lim/doit/pro/utils/DateUtils;->convertToLong(Ljava/util/Calendar;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 826
    const-string v1, "end_at"

    invoke-virtual {p1}, Lim/doit/pro/model/Task;->getEndAt()Ljava/util/Calendar;

    move-result-object v2

    invoke-static {v2}, Lim/doit/pro/utils/DateUtils;->convertToLong(Ljava/util/Calendar;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 827
    const-string v1, "context"

    invoke-virtual {p1}, Lim/doit/pro/model/Task;->getContext()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 828
    const-string v1, "goal"

    invoke-virtual {p1}, Lim/doit/pro/model/Task;->getGoal()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 829
    const-string v1, "project"

    invoke-virtual {p1}, Lim/doit/pro/model/Task;->getBaseProject()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 830
    const-string v1, "priority"

    invoke-virtual {p1}, Lim/doit/pro/model/Task;->getPriority()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 831
    const-string v1, "now"

    invoke-virtual {p1}, Lim/doit/pro/model/Task;->isNow()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 832
    const-string v1, "pos"

    invoke-virtual {p1}, Lim/doit/pro/model/Task;->getPos()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 833
    const-string v1, "sender"

    invoke-virtual {p1}, Lim/doit/pro/model/Task;->getSender()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 834
    const-string v1, "sender_email"

    invoke-virtual {p1}, Lim/doit/pro/model/Task;->getSenderEmail()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 835
    const-string v1, "from_subtask"

    invoke-virtual {p1}, Lim/doit/pro/model/Task;->getFromSubTask()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 836
    const-string v1, "hidden"

    invoke-virtual {p1}, Lim/doit/pro/model/Task;->getHidden()Ljava/util/Calendar;

    move-result-object v2

    invoke-static {v2}, Lim/doit/pro/utils/DateUtils;->convertToLong(Ljava/util/Calendar;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 837
    const-string v1, "sent_at"

    invoke-virtual {p1}, Lim/doit/pro/model/Task;->getSentAt()Ljava/util/Calendar;

    move-result-object v2

    invoke-static {v2}, Lim/doit/pro/utils/DateUtils;->convertToLong(Ljava/util/Calendar;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 838
    const-string v1, "repeater"

    invoke-virtual {p1}, Lim/doit/pro/model/Task;->getJsonRepeater()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 839
    const-string v1, "assignment"

    invoke-virtual {p1}, Lim/doit/pro/model/Task;->getJsonAssignment()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 840
    const-string v1, "reminders"

    invoke-virtual {p1}, Lim/doit/pro/model/Task;->getJsonReminders()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 841
    const-string v1, "tags"

    invoke-virtual {p1}, Lim/doit/pro/model/Task;->getJsonTags()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 842
    const-string v1, "local_attachments"

    invoke-virtual {p1}, Lim/doit/pro/model/Task;->getJsonLocalAttachments()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 843
    const-string v1, "send_origin"

    invoke-virtual {p1}, Lim/doit/pro/model/Task;->getSendOrigin()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 844
    const-string v1, "estimated_time"

    invoke-virtual {p1}, Lim/doit/pro/model/Task;->getEstimatedTime()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 845
    const-string v1, "spent_time"

    invoke-virtual {p1}, Lim/doit/pro/model/Task;->getSpentTime()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 846
    const-string v1, "medias"

    invoke-virtual {p1}, Lim/doit/pro/model/Task;->getJsonMedias()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 847
    return-object v0
.end method

.method protected bridge synthetic objectToContentValues(Ljava/lang/Object;Z)Landroid/content/ContentValues;
    .locals 1

    .prologue
    .line 1
    check-cast p1, Lim/doit/pro/model/Task;

    invoke-virtual {p0, p1, p2}, Lim/doit/pro/db/persist/TaskDao;->objectToContentValues(Lim/doit/pro/model/Task;Z)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method protected order()Ljava/lang/String;
    .locals 2

    .prologue
    .line 863
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "pos"

    invoke-virtual {p0, v1}, Lim/doit/pro/db/persist/TaskDao;->asc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "created"

    invoke-virtual {p0, v1}, Lim/doit/pro/db/persist/TaskDao;->asc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected saveCreateLog(Ljava/lang/String;)V
    .locals 0
    .param p1, "uuid"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 880
    return-void
.end method

.method protected saveDeleteLog(Ljava/lang/String;)V
    .locals 2
    .param p1, "uuid"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 869
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "don\'t use this method."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected saveUpdateLog(Ljava/lang/String;)V
    .locals 0
    .param p1, "uuid"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 875
    return-void
.end method

.method public trash(Lim/doit/pro/model/Task;)V
    .locals 4
    .param p1, "t"    # Lim/doit/pro/model/Task;

    .prologue
    .line 198
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {p1, v0}, Lim/doit/pro/model/Task;->setTrashed(Ljava/util/Calendar;)V

    .line 199
    invoke-virtual {p1}, Lim/doit/pro/model/Task;->getUuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lim/doit/pro/model/Task;->getRepeatNo()Ljava/lang/String;

    move-result-object v1

    const-string v2, "trashed"

    invoke-virtual {p1}, Lim/doit/pro/model/Task;->getTrashed()Ljava/util/Calendar;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lim/doit/pro/db/persist/TaskDao;->updateTimestamps(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Calendar;)V

    .line 200
    invoke-direct {p0}, Lim/doit/pro/db/persist/TaskDao;->sendComputeReminder()V

    .line 201
    invoke-virtual {p1}, Lim/doit/pro/model/Task;->getUuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lim/doit/pro/model/Task;->getRepeatNo()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lim/doit/pro/db/persist/TaskDao;->saveTrashLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    invoke-virtual {p1}, Lim/doit/pro/model/Task;->isRepeat()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    invoke-virtual {p1}, Lim/doit/pro/model/Task;->getUuid()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lim/doit/pro/db/persist/TaskDao;->destroyAfterTodayRepeatInstances(Ljava/lang/String;)V

    .line 206
    :cond_0
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->refreshWidget()V

    .line 207
    return-void
.end method

.method public trashByGoal(Ljava/lang/String;)V
    .locals 5
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    .line 509
    invoke-virtual {p0, p1}, Lim/doit/pro/db/persist/TaskDao;->findCompletedByGoal(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 510
    .local v0, "completedTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/Task;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 514
    invoke-virtual {p0, p1}, Lim/doit/pro/db/persist/TaskDao;->findByGoal(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 515
    .local v2, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/Task;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 518
    return-void

    .line 510
    .end local v2    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/Task;>;"
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lim/doit/pro/model/Task;

    .line 511
    .local v1, "item":Lim/doit/pro/model/Task;
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lim/doit/pro/model/Task;->setProject(Ljava/lang/String;)V

    .line 512
    invoke-virtual {p0, v1}, Lim/doit/pro/db/persist/TaskDao;->updateAndSaveLog(Lim/doit/pro/model/Task;)V

    goto :goto_0

    .line 515
    .end local v1    # "item":Lim/doit/pro/model/Task;
    .restart local v2    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/Task;>;"
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lim/doit/pro/model/Task;

    .line 516
    .restart local v1    # "item":Lim/doit/pro/model/Task;
    invoke-virtual {p0, v1}, Lim/doit/pro/db/persist/TaskDao;->trash(Lim/doit/pro/model/Task;)V

    goto :goto_1
.end method

.method public trashByProject(Ljava/lang/String;)V
    .locals 5
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    .line 391
    invoke-virtual {p0, p1}, Lim/doit/pro/db/persist/TaskDao;->findCompletedByProject(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 392
    .local v0, "completedTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/Task;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 396
    invoke-virtual {p0, p1}, Lim/doit/pro/db/persist/TaskDao;->findByProject(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 397
    .local v2, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/Task;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 400
    return-void

    .line 392
    .end local v2    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/Task;>;"
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lim/doit/pro/model/Task;

    .line 393
    .local v1, "item":Lim/doit/pro/model/Task;
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lim/doit/pro/model/Task;->setProject(Ljava/lang/String;)V

    .line 394
    invoke-virtual {p0, v1}, Lim/doit/pro/db/persist/TaskDao;->updateAndSaveLog(Lim/doit/pro/model/Task;)V

    goto :goto_0

    .line 397
    .end local v1    # "item":Lim/doit/pro/model/Task;
    .restart local v2    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/Task;>;"
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lim/doit/pro/model/Task;

    .line 398
    .restart local v1    # "item":Lim/doit/pro/model/Task;
    invoke-virtual {p0, v1}, Lim/doit/pro/db/persist/TaskDao;->trash(Lim/doit/pro/model/Task;)V

    goto :goto_1
.end method

.method public uncomplete(Lim/doit/pro/model/Task;)V
    .locals 4
    .param p1, "t"    # Lim/doit/pro/model/Task;

    .prologue
    const/4 v3, 0x0

    .line 187
    invoke-direct {p0, p1}, Lim/doit/pro/db/persist/TaskDao;->clearSomethingBeforeUndo(Lim/doit/pro/model/Task;)V

    .line 188
    invoke-virtual {p1, v3}, Lim/doit/pro/model/Task;->setCompleted(Ljava/util/Calendar;)V

    .line 189
    invoke-virtual {p1}, Lim/doit/pro/model/Task;->getUuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lim/doit/pro/model/Task;->getRepeatNo()Ljava/lang/String;

    move-result-object v1

    const-string v2, "completed"

    invoke-direct {p0, v0, v1, v2, v3}, Lim/doit/pro/db/persist/TaskDao;->updateTimestamps(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Calendar;)V

    .line 190
    invoke-direct {p0}, Lim/doit/pro/db/persist/TaskDao;->sendComputeReminder()V

    .line 191
    invoke-virtual {p1}, Lim/doit/pro/model/Task;->getUuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lim/doit/pro/model/Task;->getRepeatNo()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lim/doit/pro/db/persist/TaskDao;->saveUncompleteLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    invoke-direct {p0, p1}, Lim/doit/pro/db/persist/TaskDao;->createTodayAndTomorrowRepeaterInstance(Lim/doit/pro/model/Task;)V

    .line 194
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->refreshWidget()V

    .line 195
    return-void
.end method

.method public untrash(Lim/doit/pro/model/Task;)V
    .locals 4
    .param p1, "t"    # Lim/doit/pro/model/Task;

    .prologue
    const/4 v3, 0x0

    .line 210
    invoke-direct {p0, p1}, Lim/doit/pro/db/persist/TaskDao;->clearSomethingBeforeUndo(Lim/doit/pro/model/Task;)V

    .line 211
    invoke-virtual {p1, v3}, Lim/doit/pro/model/Task;->setTrashed(Ljava/util/Calendar;)V

    .line 212
    invoke-virtual {p1}, Lim/doit/pro/model/Task;->getUuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lim/doit/pro/model/Task;->getRepeatNo()Ljava/lang/String;

    move-result-object v1

    const-string v2, "trashed"

    invoke-direct {p0, v0, v1, v2, v3}, Lim/doit/pro/db/persist/TaskDao;->updateTimestamps(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Calendar;)V

    .line 213
    invoke-direct {p0}, Lim/doit/pro/db/persist/TaskDao;->sendComputeReminder()V

    .line 214
    invoke-virtual {p1}, Lim/doit/pro/model/Task;->getUuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lim/doit/pro/model/Task;->getRepeatNo()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lim/doit/pro/db/persist/TaskDao;->saveUntrashLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    invoke-direct {p0, p1}, Lim/doit/pro/db/persist/TaskDao;->createTodayAndTomorrowRepeaterInstance(Lim/doit/pro/model/Task;)V

    .line 217
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->refreshWidget()V

    .line 218
    return-void
.end method

.method protected bridge synthetic update(Lim/doit/pro/model/BaseEntity;Z)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lim/doit/pro/model/Task;

    invoke-virtual {p0, p1, p2}, Lim/doit/pro/db/persist/TaskDao;->update(Lim/doit/pro/model/Task;Z)V

    return-void
.end method

.method protected update(Lim/doit/pro/model/Task;Z)V
    .locals 3
    .param p1, "t"    # Lim/doit/pro/model/Task;
    .param p2, "isDownload"    # Z

    .prologue
    .line 759
    .line 761
    iget-object v0, p0, Lim/doit/pro/db/persist/TaskDao;->mTaskDaoHelper:Lim/doit/pro/db/persist/utils/TaskDaoHelper;

    invoke-virtual {p1}, Lim/doit/pro/model/Task;->getUuid()Ljava/lang/String;

    move-result-object v1

    .line 762
    invoke-virtual {p1}, Lim/doit/pro/model/Task;->getRepeatNo()Ljava/lang/String;

    move-result-object v2

    .line 761
    invoke-virtual {v0, v1, v2}, Lim/doit/pro/db/persist/utils/TaskDaoHelper;->uuidAndRepeatNoClause(Ljava/lang/String;Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v0

    .line 762
    invoke-virtual {v0}, Lim/doit/pro/db/persist/utils/SQLBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 759
    invoke-super {p0, p1, v0, p2}, Lim/doit/pro/db/persist/DBaseDao;->update(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 763
    return-void
.end method

.method public bridge synthetic updateAndSaveLog(Lim/doit/pro/model/BaseEntity;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lim/doit/pro/model/Task;

    invoke-virtual {p0, p1}, Lim/doit/pro/db/persist/TaskDao;->updateAndSaveLog(Lim/doit/pro/model/Task;)V

    return-void
.end method

.method public updateAndSaveLog(Lim/doit/pro/model/Task;)V
    .locals 3
    .param p1, "t"    # Lim/doit/pro/model/Task;

    .prologue
    .line 148
    invoke-virtual {p1}, Lim/doit/pro/model/Task;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lim/doit/pro/model/Task;->getRepeatNo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lim/doit/pro/db/persist/TaskDao;->isExistedByUUID(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 149
    invoke-virtual {p0, p1}, Lim/doit/pro/db/persist/TaskDao;->createAndSaveLog(Lim/doit/pro/model/Task;)V

    .line 159
    :cond_0
    :goto_0
    return-void

    .line 152
    :cond_1
    invoke-virtual {p1}, Lim/doit/pro/model/Task;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lim/doit/pro/model/Task;->getRepeatNo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lim/doit/pro/db/persist/TaskDao;->findByUUIDAndRepeatNo(Ljava/lang/String;Ljava/lang/String;)Lim/doit/pro/model/Task;

    move-result-object v0

    .line 153
    .local v0, "oriTask":Lim/doit/pro/model/Task;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {p1, v1}, Lim/doit/pro/model/Task;->setUpdated(Ljava/util/Calendar;)V

    .line 154
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lim/doit/pro/db/persist/TaskDao;->update(Lim/doit/pro/model/Task;Z)V

    .line 156
    invoke-virtual {v0}, Lim/doit/pro/model/Task;->isRepeat()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Lim/doit/pro/model/Task;->isRepeat()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 157
    :cond_2
    invoke-static {}, Lim/doit/pro/utils/BroadcastUtils;->sendSyncManyBroadcastBySystem()V

    goto :goto_0
.end method

.method public updatePos(Lim/doit/pro/model/Task;)V
    .locals 7
    .param p1, "t"    # Lim/doit/pro/model/Task;

    .prologue
    const/4 v6, 0x0

    .line 162
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 163
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "updated"

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 164
    const-string v1, "pos"

    invoke-virtual {p1}, Lim/doit/pro/model/Task;->getPos()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 165
    iget-object v1, p0, Lim/doit/pro/db/persist/TaskDao;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 166
    iget-object v2, p0, Lim/doit/pro/db/persist/TaskDao;->tableName:Ljava/lang/String;

    .line 168
    iget-object v3, p0, Lim/doit/pro/db/persist/TaskDao;->mTaskDaoHelper:Lim/doit/pro/db/persist/utils/TaskDaoHelper;

    invoke-virtual {p1}, Lim/doit/pro/model/Task;->getUuid()Ljava/lang/String;

    move-result-object v4

    .line 169
    invoke-virtual {p1}, Lim/doit/pro/model/Task;->getRepeatNo()Ljava/lang/String;

    move-result-object v5

    .line 168
    invoke-virtual {v3, v4, v5}, Lim/doit/pro/db/persist/utils/TaskDaoHelper;->uuidAndRepeatNoClause(Ljava/lang/String;Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v3

    .line 169
    invoke-virtual {v3}, Lim/doit/pro/db/persist/utils/SQLBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 165
    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 170
    invoke-direct {p0, p1, v6, v6}, Lim/doit/pro/db/persist/TaskDao;->afterUpdate(Lim/doit/pro/model/Task;ZZ)V

    .line 171
    return-void
.end method

.method public updateRepeatInstances()V
    .locals 4

    .prologue
    .line 610
    invoke-virtual {p0}, Lim/doit/pro/db/persist/TaskDao;->findAllLiveRepeaters()Ljava/util/ArrayList;

    move-result-object v1

    .line 611
    .local v1, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/Task;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 614
    return-void

    .line 611
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lim/doit/pro/model/Task;

    .line 612
    .local v0, "item":Lim/doit/pro/model/Task;
    invoke-direct {p0, v0}, Lim/doit/pro/db/persist/TaskDao;->recreateTheRepeatInstances(Lim/doit/pro/model/Task;)V

    goto :goto_0
.end method

.method public updateUsn(Ljava/lang/String;J)V
    .locals 0
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "usn"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 127
    return-void
.end method

.method public updateUsn(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 5
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "repeatNo"    # Ljava/lang/String;
    .param p3, "usn"    # J

    .prologue
    .line 115
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 116
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "usn"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 117
    iget-object v1, p0, Lim/doit/pro/db/persist/TaskDao;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 118
    iget-object v2, p0, Lim/doit/pro/db/persist/TaskDao;->tableName:Ljava/lang/String;

    .line 120
    iget-object v3, p0, Lim/doit/pro/db/persist/TaskDao;->mTaskDaoHelper:Lim/doit/pro/db/persist/utils/TaskDaoHelper;

    invoke-virtual {v3, p1, p2}, Lim/doit/pro/db/persist/utils/TaskDaoHelper;->uuidAndRepeatNoClause(Ljava/lang/String;Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lim/doit/pro/db/persist/utils/SQLBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 121
    const/4 v4, 0x0

    .line 117
    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 122
    return-void
.end method

.method public uuidClause(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;
    .locals 2
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    .line 106
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "taskDao cannot use uuidClause!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
