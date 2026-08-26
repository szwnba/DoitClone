.class public Lim/doit/pro/utils/TaskUtils;
.super Ljava/lang/Object;
.source "TaskUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildAndSaveRepeatInstances(Ljava/lang/String;J)Lim/doit/pro/model/Task;
    .locals 5
    .param p0, "uuid"    # Ljava/lang/String;
    .param p1, "checkDateMillis"    # J

    .prologue
    const/4 v3, 0x0

    .line 100
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v4

    iget-object v4, v4, Lim/doit/pro/db/Persist;->taskDao:Lim/doit/pro/db/persist/TaskDao;

    invoke-virtual {v4, p0, v3}, Lim/doit/pro/db/persist/TaskDao;->findByUUIDAndRepeatNo(Ljava/lang/String;Ljava/lang/String;)Lim/doit/pro/model/Task;

    move-result-object v2

    .line 101
    .local v2, "t":Lim/doit/pro/model/Task;
    if-nez v2, :cond_0

    move-object v1, v3

    .line 110
    :goto_0
    return-object v1

    .line 104
    :cond_0
    invoke-static {p1, p2}, Lim/doit/pro/utils/DateUtils;->convertToDate(J)Ljava/util/Calendar;

    move-result-object v0

    .line 105
    .local v0, "checkDate":Ljava/util/Calendar;
    invoke-static {v2, v0}, Lim/doit/pro/utils/TaskUtils;->buildRepeaterInstance(Lim/doit/pro/model/Task;Ljava/util/Calendar;)Lim/doit/pro/model/Task;

    move-result-object v1

    .line 106
    .local v1, "sub":Lim/doit/pro/model/Task;
    if-nez v1, :cond_1

    move-object v1, v3

    .line 107
    goto :goto_0

    .line 109
    :cond_1
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v3

    iget-object v3, v3, Lim/doit/pro/db/Persist;->taskDao:Lim/doit/pro/db/persist/TaskDao;

    invoke-virtual {v3, v1}, Lim/doit/pro/db/persist/TaskDao;->createAndSaveLog(Lim/doit/pro/model/Task;)V

    goto :goto_0
.end method

.method private static buildAssignment(Lim/doit/pro/model/Contact;Z)Lim/doit/pro/model/Assignment;
    .locals 4
    .param p0, "contact"    # Lim/doit/pro/model/Contact;
    .param p1, "isAutoComplete"    # Z

    .prologue
    .line 283
    new-instance v0, Lim/doit/pro/model/Assignment;

    invoke-direct {v0}, Lim/doit/pro/model/Assignment;-><init>()V

    .line 284
    .local v0, "assignment":Lim/doit/pro/model/Assignment;
    invoke-virtual {v0, p1}, Lim/doit/pro/model/Assignment;->setAutocomplete(Z)V

    .line 285
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 286
    .local v2, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/AssignmentItem;>;"
    new-instance v1, Lim/doit/pro/model/AssignmentItem;

    invoke-direct {v1}, Lim/doit/pro/model/AssignmentItem;-><init>()V

    .line 287
    .local v1, "item":Lim/doit/pro/model/AssignmentItem;
    invoke-virtual {p0}, Lim/doit/pro/model/Contact;->getEmail()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lim/doit/pro/model/AssignmentItem;->setEmail(Ljava/lang/String;)V

    .line 288
    invoke-virtual {p0}, Lim/doit/pro/model/Contact;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lim/doit/pro/model/AssignmentItem;->setUserId(Ljava/lang/String;)V

    .line 289
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 290
    invoke-virtual {v0, v2}, Lim/doit/pro/model/Assignment;->setItems(Ljava/util/ArrayList;)V

    .line 291
    return-object v0
.end method

.method public static buildRepeaterInstance(Lim/doit/pro/model/Task;Ljava/util/Calendar;)Lim/doit/pro/model/Task;
    .locals 3
    .param p0, "task"    # Lim/doit/pro/model/Task;
    .param p1, "checkDate"    # Ljava/util/Calendar;

    .prologue
    .line 135
    invoke-static {p0, p1}, Lim/doit/pro/utils/TaskUtils;->isValidRepeaterTask(Lim/doit/pro/model/Task;Ljava/util/Calendar;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 136
    const/4 v1, 0x0

    .line 141
    :goto_0
    return-object v1

    .line 138
    :cond_0
    invoke-virtual {p0}, Lim/doit/pro/model/Task;->getStartAt()Ljava/util/Calendar;

    move-result-object v2

    invoke-static {p1, v2}, Lim/doit/pro/utils/DateUtils;->diffDay(Ljava/util/Calendar;Ljava/util/Calendar;)I

    move-result v0

    .line 139
    .local v0, "diffDay":I
    invoke-virtual {p0, v0}, Lim/doit/pro/model/Task;->deepCloneForBuildRepeaterInstance(I)Lim/doit/pro/model/Task;

    move-result-object v1

    .line 140
    .local v1, "repeatInstances":Lim/doit/pro/model/Task;
    invoke-static {p1}, Lim/doit/pro/utils/DateUtils;->formatRepeatNo(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lim/doit/pro/model/Task;->setRepeatNo(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static convertTaskToProject(Lim/doit/pro/model/Task;)Lim/doit/pro/model/Project;
    .locals 6
    .param p0, "task"    # Lim/doit/pro/model/Task;

    .prologue
    .line 120
    new-instance v1, Lim/doit/pro/model/Project;

    invoke-direct {v1, p0}, Lim/doit/pro/model/Project;-><init>(Lim/doit/pro/model/Task;)V

    .line 121
    .local v1, "project":Lim/doit/pro/model/Project;
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lim/doit/pro/model/Task;->setProject(Ljava/lang/String;)V

    .line 122
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {p0, v4}, Lim/doit/pro/model/Task;->setHidden(Ljava/util/Calendar;)V

    .line 123
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v4

    iget-object v4, v4, Lim/doit/pro/db/Persist;->taskDao:Lim/doit/pro/db/persist/TaskDao;

    invoke-virtual {v4, p0}, Lim/doit/pro/db/persist/TaskDao;->hide(Lim/doit/pro/model/Task;)V

    .line 124
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v4

    iget-object v4, v4, Lim/doit/pro/db/Persist;->projectDao:Lim/doit/pro/db/persist/ProjectDao;

    invoke-virtual {v4, v1}, Lim/doit/pro/db/persist/ProjectDao;->createAndSaveLog(Lim/doit/pro/model/Project;)V

    .line 126
    invoke-virtual {p0}, Lim/doit/pro/model/Task;->getSubTasks()Ljava/util/ArrayList;

    move-result-object v2

    .line 127
    .local v2, "subTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/SubTask;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_0

    .line 131
    return-object v1

    .line 127
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lim/doit/pro/model/SubTask;

    .line 128
    .local v0, "item":Lim/doit/pro/model/SubTask;
    invoke-virtual {v1}, Lim/doit/pro/model/Project;->getUuid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lim/doit/pro/model/SubTask;->convertToTask(Ljava/lang/String;)Lim/doit/pro/model/Task;

    move-result-object v3

    .line 129
    .local v3, "t":Lim/doit/pro/model/Task;
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v5

    iget-object v5, v5, Lim/doit/pro/db/Persist;->taskDao:Lim/doit/pro/db/persist/TaskDao;

    invoke-virtual {v5, v3}, Lim/doit/pro/db/persist/TaskDao;->createAndSaveLog(Lim/doit/pro/model/Task;)V

    goto :goto_0
.end method

.method public static createCommentsAndSubTasks(Lim/doit/pro/model/Task;)V
    .locals 4
    .param p0, "task"    # Lim/doit/pro/model/Task;

    .prologue
    .line 240
    invoke-virtual {p0}, Lim/doit/pro/model/Task;->getComments()Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v2}, Lim/doit/pro/utils/CollectionUtils;->isNotEmpty(Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 241
    invoke-virtual {p0}, Lim/doit/pro/model/Task;->getComments()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 248
    :cond_0
    invoke-virtual {p0}, Lim/doit/pro/model/Task;->getSubTasks()Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v2}, Lim/doit/pro/utils/CollectionUtils;->isNotEmpty(Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 249
    invoke-virtual {p0}, Lim/doit/pro/model/Task;->getSubTasks()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_3

    .line 256
    :cond_1
    return-void

    .line 241
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lim/doit/pro/model/TaskComment;

    .line 242
    .local v0, "comment":Lim/doit/pro/model/TaskComment;
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lim/doit/pro/model/TaskComment;->setUuid(Ljava/lang/String;)V

    .line 243
    invoke-virtual {p0}, Lim/doit/pro/model/Task;->getUuid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lim/doit/pro/model/TaskComment;->setTask(Ljava/lang/String;)V

    .line 244
    invoke-virtual {p0}, Lim/doit/pro/model/Task;->getRepeatNo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lim/doit/pro/model/TaskComment;->setRepeatNo(Ljava/lang/String;)V

    .line 245
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v3

    iget-object v3, v3, Lim/doit/pro/db/Persist;->taskCommentDao:Lim/doit/pro/db/persist/TaskCommentDao;

    invoke-virtual {v3, v0}, Lim/doit/pro/db/persist/TaskCommentDao;->createAndSaveLog(Lim/doit/pro/model/TaskComment;)V

    goto :goto_0

    .line 249
    .end local v0    # "comment":Lim/doit/pro/model/TaskComment;
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lim/doit/pro/model/SubTask;

    .line 250
    .local v1, "subTask":Lim/doit/pro/model/SubTask;
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lim/doit/pro/model/SubTask;->setUuid(Ljava/lang/String;)V

    .line 251
    invoke-virtual {p0}, Lim/doit/pro/model/Task;->getUuid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lim/doit/pro/model/SubTask;->setTask(Ljava/lang/String;)V

    .line 252
    invoke-virtual {p0}, Lim/doit/pro/model/Task;->getRepeatNo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lim/doit/pro/model/SubTask;->setRepeatNo(Ljava/lang/String;)V

    .line 253
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v3

    iget-object v3, v3, Lim/doit/pro/db/Persist;->subTaskDao:Lim/doit/pro/db/persist/SubTaskDao;

    invoke-virtual {v3, v1}, Lim/doit/pro/db/persist/SubTaskDao;->createAndSaveLog(Lim/doit/pro/model/SubTask;)V

    goto :goto_1
.end method

.method public static createTask(Lim/doit/pro/model/Box;Lim/doit/pro/model/Goal;Lim/doit/pro/model/Project;Lim/doit/pro/model/TaskContext;)Lim/doit/pro/model/Task;
    .locals 5
    .param p0, "box"    # Lim/doit/pro/model/Box;
    .param p1, "goal"    # Lim/doit/pro/model/Goal;
    .param p2, "project"    # Lim/doit/pro/model/Project;
    .param p3, "taskContext"    # Lim/doit/pro/model/TaskContext;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 52
    new-instance v1, Lim/doit/pro/model/Task;

    invoke-direct {v1}, Lim/doit/pro/model/Task;-><init>()V

    .line 53
    .local v1, "task":Lim/doit/pro/model/Task;
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lim/doit/pro/model/Task;->setUuid(Ljava/lang/String;)V

    .line 54
    invoke-virtual {v1, v3}, Lim/doit/pro/model/Task;->setAllDay(Z)V

    .line 55
    if-eqz p0, :cond_a

    .line 56
    invoke-virtual {p0}, Lim/doit/pro/model/Box;->isToday()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 57
    sget-object v2, Lim/doit/pro/model/enums/Attribute;->plan:Lim/doit/pro/model/enums/Attribute;

    invoke-virtual {v1, v2}, Lim/doit/pro/model/Task;->setAttribute(Lim/doit/pro/model/enums/Attribute;)V

    .line 58
    invoke-static {}, Lim/doit/pro/utils/DateUtils;->startOfToday()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v1, v2}, Lim/doit/pro/model/Task;->setStartAt(Ljava/util/Calendar;)V

    .line 82
    :goto_0
    if-eqz p2, :cond_0

    .line 83
    invoke-virtual {p2}, Lim/doit/pro/model/Project;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lim/doit/pro/model/Task;->setProject(Ljava/lang/String;)V

    .line 84
    sget-object v2, Lim/doit/pro/model/enums/Attribute;->next:Lim/doit/pro/model/enums/Attribute;

    invoke-virtual {v1, v2}, Lim/doit/pro/model/Task;->setAttribute(Lim/doit/pro/model/enums/Attribute;)V

    .line 85
    invoke-virtual {v1, v4}, Lim/doit/pro/model/Task;->setStartAt(Ljava/util/Calendar;)V

    .line 87
    :cond_0
    if-eqz p3, :cond_1

    .line 88
    invoke-virtual {p3}, Lim/doit/pro/model/TaskContext;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lim/doit/pro/model/Task;->setContext(Ljava/lang/String;)V

    .line 90
    :cond_1
    if-eqz p1, :cond_2

    .line 91
    invoke-virtual {p1}, Lim/doit/pro/model/Goal;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lim/doit/pro/model/Task;->setGoal(Ljava/lang/String;)V

    .line 92
    sget-object v2, Lim/doit/pro/model/enums/Attribute;->next:Lim/doit/pro/model/enums/Attribute;

    invoke-virtual {v1, v2}, Lim/doit/pro/model/Task;->setAttribute(Lim/doit/pro/model/enums/Attribute;)V

    .line 93
    invoke-virtual {v1, v4}, Lim/doit/pro/model/Task;->setStartAt(Ljava/util/Calendar;)V

    .line 95
    :cond_2
    return-object v1

    .line 59
    :cond_3
    invoke-virtual {p0}, Lim/doit/pro/model/Box;->isNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 60
    sget-object v2, Lim/doit/pro/model/enums/Attribute;->next:Lim/doit/pro/model/enums/Attribute;

    invoke-virtual {v1, v2}, Lim/doit/pro/model/Task;->setAttribute(Lim/doit/pro/model/enums/Attribute;)V

    goto :goto_0

    .line 61
    :cond_4
    invoke-virtual {p0}, Lim/doit/pro/model/Box;->isTomorrow()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 62
    sget-object v2, Lim/doit/pro/model/enums/Attribute;->plan:Lim/doit/pro/model/enums/Attribute;

    invoke-virtual {v1, v2}, Lim/doit/pro/model/Task;->setAttribute(Lim/doit/pro/model/enums/Attribute;)V

    .line 63
    invoke-static {}, Lim/doit/pro/utils/DateUtils;->startOfTomorrow()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v1, v2}, Lim/doit/pro/model/Task;->setStartAt(Ljava/util/Calendar;)V

    goto :goto_0

    .line 64
    :cond_5
    invoke-virtual {p0}, Lim/doit/pro/model/Box;->isScheduled()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 65
    sget-object v2, Lim/doit/pro/model/enums/Attribute;->plan:Lim/doit/pro/model/enums/Attribute;

    invoke-virtual {v1, v2}, Lim/doit/pro/model/Task;->setAttribute(Lim/doit/pro/model/enums/Attribute;)V

    .line 66
    invoke-static {}, Lim/doit/pro/utils/DateUtils;->startOfTomorrow()Ljava/util/Calendar;

    move-result-object v0

    .line 67
    .local v0, "startAt":Ljava/util/Calendar;
    invoke-static {}, Lim/doit/pro/utils/BoxUtils;->isTomorrowShow()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 68
    const/4 v2, 0x5

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->add(II)V

    .line 70
    :cond_6
    invoke-virtual {v1, v0}, Lim/doit/pro/model/Task;->setStartAt(Ljava/util/Calendar;)V

    goto :goto_0

    .line 71
    .end local v0    # "startAt":Ljava/util/Calendar;
    :cond_7
    invoke-virtual {p0}, Lim/doit/pro/model/Box;->isSomeday()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 72
    sget-object v2, Lim/doit/pro/model/enums/Attribute;->noplan:Lim/doit/pro/model/enums/Attribute;

    invoke-virtual {v1, v2}, Lim/doit/pro/model/Task;->setAttribute(Lim/doit/pro/model/enums/Attribute;)V

    goto :goto_0

    .line 73
    :cond_8
    invoke-virtual {p0}, Lim/doit/pro/model/Box;->isWaiting()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 74
    sget-object v2, Lim/doit/pro/model/enums/Attribute;->waiting:Lim/doit/pro/model/enums/Attribute;

    invoke-virtual {v1, v2}, Lim/doit/pro/model/Task;->setAttribute(Lim/doit/pro/model/enums/Attribute;)V

    goto :goto_0

    .line 77
    :cond_9
    sget-object v2, Lim/doit/pro/model/enums/Attribute;->inbox:Lim/doit/pro/model/enums/Attribute;

    invoke-virtual {v1, v2}, Lim/doit/pro/model/Task;->setAttribute(Lim/doit/pro/model/enums/Attribute;)V

    goto/16 :goto_0

    .line 80
    :cond_a
    sget-object v2, Lim/doit/pro/model/enums/Attribute;->inbox:Lim/doit/pro/model/enums/Attribute;

    invoke-virtual {v1, v2}, Lim/doit/pro/model/Task;->setAttribute(Lim/doit/pro/model/enums/Attribute;)V

    goto/16 :goto_0
.end method

.method public static filterDatasByTags(Lim/doit/pro/ui/model/TagFilter;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 6
    .param p0, "tagFilter"    # Lim/doit/pro/ui/model/TagFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lim/doit/pro/ui/model/TagFilter;",
            "Ljava/util/ArrayList",
            "<",
            "Lim/doit/pro/model/BaseEntityWithPos;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lim/doit/pro/model/BaseEntityWithPos;",
            ">;"
        }
    .end annotation

    .prologue
    .line 169
    .local p1, "entities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/BaseEntityWithPos;>;"
    if-nez p0, :cond_0

    .line 199
    .end local p1    # "entities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/BaseEntityWithPos;>;"
    :goto_0
    return-object p1

    .line 172
    .restart local p1    # "entities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/BaseEntityWithPos;>;"
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 173
    .local v1, "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/BaseEntityWithPos;>;"
    invoke-virtual {p0}, Lim/doit/pro/ui/model/TagFilter;->isUntagged()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 174
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_3

    :cond_2
    :goto_2
    move-object p1, v1

    .line 199
    goto :goto_0

    .line 174
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lim/doit/pro/model/BaseEntityWithPos;

    .line 175
    .local v0, "item":Lim/doit/pro/model/BaseEntityWithPos;
    invoke-virtual {v0}, Lim/doit/pro/model/BaseEntityWithPos;->isTask()Z

    move-result v4

    if-eqz v4, :cond_4

    move-object v2, v0

    .line 176
    check-cast v2, Lim/doit/pro/model/Task;

    .line 177
    .local v2, "task":Lim/doit/pro/model/Task;
    invoke-virtual {v2}, Lim/doit/pro/model/Task;->getTags()Ljava/util/ArrayList;

    move-result-object v4

    invoke-static {v4}, Lim/doit/pro/utils/CollectionUtils;->isNotEmpty(Ljava/util/List;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 181
    .end local v2    # "task":Lim/doit/pro/model/Task;
    :cond_4
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 183
    .end local v0    # "item":Lim/doit/pro/model/BaseEntityWithPos;
    :cond_5
    invoke-virtual {p0}, Lim/doit/pro/ui/model/TagFilter;->getTags()Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {v3}, Lim/doit/pro/utils/CollectionUtils;->isNotEmpty(Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 184
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lim/doit/pro/model/BaseEntityWithPos;

    .line 185
    .restart local v0    # "item":Lim/doit/pro/model/BaseEntityWithPos;
    invoke-virtual {v0}, Lim/doit/pro/model/BaseEntityWithPos;->isTask()Z

    move-result v4

    if-eqz v4, :cond_6

    move-object v2, v0

    .line 188
    check-cast v2, Lim/doit/pro/model/Task;

    .line 189
    .restart local v2    # "task":Lim/doit/pro/model/Task;
    invoke-virtual {v2}, Lim/doit/pro/model/Task;->getTags()Ljava/util/ArrayList;

    move-result-object v4

    invoke-static {v4}, Lim/doit/pro/utils/CollectionUtils;->isEmpty(Ljava/util/List;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 192
    invoke-virtual {v2}, Lim/doit/pro/model/Task;->getTags()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {p0}, Lim/doit/pro/ui/model/TagFilter;->getTags()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->containsAll(Ljava/util/Collection;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 193
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 197
    .end local v0    # "item":Lim/doit/pro/model/BaseEntityWithPos;
    .end local v2    # "task":Lim/doit/pro/model/Task;
    :cond_7
    move-object v1, p1

    goto :goto_2
.end method

.method public static getDefaultEndAt(Lim/doit/pro/model/Task;)Ljava/util/Calendar;
    .locals 6
    .param p0, "task"    # Lim/doit/pro/model/Task;

    .prologue
    const/4 v5, 0x1

    .line 30
    const/4 v0, 0x0

    .line 31
    .local v0, "endAt":Ljava/util/Calendar;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 32
    .local v1, "now":Ljava/util/Calendar;
    invoke-virtual {p0}, Lim/doit/pro/model/Task;->getStartAt()Ljava/util/Calendar;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 33
    invoke-virtual {p0}, Lim/doit/pro/model/Task;->getStartAt()Ljava/util/Calendar;

    move-result-object v2

    invoke-static {v2}, Lim/doit/pro/utils/DateUtils;->copyDate(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v0

    .line 34
    invoke-virtual {p0}, Lim/doit/pro/model/Task;->getStartAt()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {p0}, Lim/doit/pro/model/Task;->isAllDay()Z

    move-result v3

    invoke-static {v2, v1, v3}, Lim/doit/pro/utils/DateUtils;->beforeOrEq(Ljava/util/Calendar;Ljava/util/Calendar;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 35
    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 36
    const/4 v4, 0x5

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 35
    invoke-virtual {v0, v2, v3, v4}, Ljava/util/Calendar;->set(III)V

    .line 39
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lim/doit/pro/model/Task;->isAllDay()Z

    move-result v2

    invoke-static {v0, v1, v2}, Lim/doit/pro/utils/DateUtils;->before(Ljava/util/Calendar;Ljava/util/Calendar;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 40
    :cond_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 42
    :cond_2
    invoke-virtual {p0}, Lim/doit/pro/model/Task;->isAllDay()Z

    move-result v2

    if-nez v2, :cond_3

    .line 43
    invoke-static {v0, v5, v5}, Lim/doit/pro/utils/DateUtils;->addCurrentDateHour(Ljava/util/Calendar;IZ)V

    .line 47
    :goto_0
    return-object v0

    .line 45
    :cond_3
    invoke-static {v0}, Lim/doit/pro/utils/DateUtils;->endOfDate(Ljava/util/Calendar;)Ljava/util/Calendar;

    goto :goto_0
.end method

.method private static isExitRepeaterInstance(Lim/doit/pro/model/Task;Ljava/util/Calendar;)Z
    .locals 3
    .param p0, "task"    # Lim/doit/pro/model/Task;
    .param p1, "checkDate"    # Ljava/util/Calendar;

    .prologue
    .line 163
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v0

    iget-object v0, v0, Lim/doit/pro/db/Persist;->taskDao:Lim/doit/pro/db/persist/TaskDao;

    invoke-virtual {p0}, Lim/doit/pro/model/Task;->getUuid()Ljava/lang/String;

    move-result-object v1

    .line 164
    invoke-static {p1}, Lim/doit/pro/utils/DateUtils;->formatRepeatNo(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v2

    .line 163
    invoke-virtual {v0, v1, v2}, Lim/doit/pro/db/persist/TaskDao;->findByUUIDAndRepeatNo(Ljava/lang/String;Ljava/lang/String;)Lim/doit/pro/model/Task;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isValidRepeaterTask(Lim/doit/pro/model/Task;Ljava/util/Calendar;)Z
    .locals 3
    .param p0, "task"    # Lim/doit/pro/model/Task;
    .param p1, "checkDate"    # Ljava/util/Calendar;

    .prologue
    const/4 v0, 0x0

    .line 145
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 146
    invoke-static {}, Lim/doit/pro/utils/DateUtils;->startOfToday()Ljava/util/Calendar;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {p1, v1, v2}, Lim/doit/pro/utils/DateUtils;->before(Ljava/util/Calendar;Ljava/util/Calendar;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 158
    :cond_0
    :goto_0
    return v0

    .line 149
    :cond_1
    invoke-static {p0, p1}, Lim/doit/pro/utils/TaskUtils;->isExitRepeaterInstance(Lim/doit/pro/model/Task;Ljava/util/Calendar;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 152
    invoke-virtual {p0}, Lim/doit/pro/model/Task;->isDead()Z

    move-result v1

    if-nez v1, :cond_0

    .line 155
    invoke-virtual {p0}, Lim/doit/pro/model/Task;->isRepeat()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 158
    invoke-virtual {p0}, Lim/doit/pro/model/Task;->getRepeater()Lim/doit/pro/model/Repeater;

    move-result-object v0

    .line 159
    invoke-virtual {p0}, Lim/doit/pro/model/Task;->getStartAt()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lim/doit/pro/model/Repeater;->isCheckDateValid(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v0

    goto :goto_0
.end method

.method private static saveSendTask(Lim/doit/pro/model/Task;Lim/doit/pro/model/Contact;Z)V
    .locals 1
    .param p0, "task"    # Lim/doit/pro/model/Task;
    .param p1, "contact"    # Lim/doit/pro/model/Contact;
    .param p2, "isAutoComplete"    # Z

    .prologue
    .line 231
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lim/doit/pro/model/Task;->setUuid(Ljava/lang/String;)V

    .line 232
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lim/doit/pro/model/Task;->setRepeatNo(Ljava/lang/String;)V

    .line 233
    invoke-virtual {p0}, Lim/doit/pro/model/Task;->getUniqUuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lim/doit/pro/model/Task;->setSendOrigin(Ljava/lang/String;)V

    .line 234
    invoke-static {p1, p2}, Lim/doit/pro/utils/TaskUtils;->buildAssignment(Lim/doit/pro/model/Contact;Z)Lim/doit/pro/model/Assignment;

    move-result-object v0

    invoke-virtual {p0, v0}, Lim/doit/pro/model/Task;->setAssignment(Lim/doit/pro/model/Assignment;)V

    .line 235
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v0

    iget-object v0, v0, Lim/doit/pro/db/Persist;->taskDao:Lim/doit/pro/db/persist/TaskDao;

    invoke-virtual {v0, p0}, Lim/doit/pro/db/persist/TaskDao;->createAndSaveLog(Lim/doit/pro/model/Task;)V

    .line 236
    invoke-static {p0}, Lim/doit/pro/utils/TaskUtils;->createCommentsAndSubTasks(Lim/doit/pro/model/Task;)V

    .line 237
    return-void
.end method

.method public static sendTask(Landroid/content/Context;Lim/doit/pro/model/Task;Ljava/util/ArrayList;Z)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "task"    # Lim/doit/pro/model/Task;
    .param p3, "isAutoComplete"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lim/doit/pro/model/Task;",
            "Ljava/util/ArrayList",
            "<",
            "Lim/doit/pro/model/Contact;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 204
    .local p2, "selectedContacts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/Contact;>;"
    const/4 v4, 0x0

    .line 205
    .local v4, "start":I
    invoke-virtual {p1}, Lim/doit/pro/model/Task;->clearSomethingBeforeSendTask()V

    .line 206
    invoke-virtual {p1}, Lim/doit/pro/model/Task;->isAssignment()Z

    move-result v5

    if-nez v5, :cond_0

    .line 207
    const/4 v4, 0x1

    .line 208
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 209
    .local v3, "sentAt":Ljava/util/Calendar;
    invoke-virtual {p1, v3}, Lim/doit/pro/model/Task;->setSentAt(Ljava/util/Calendar;)V

    .line 210
    const/4 v5, 0x0

    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lim/doit/pro/model/Contact;

    invoke-static {v5, p3}, Lim/doit/pro/utils/TaskUtils;->buildAssignment(Lim/doit/pro/model/Contact;Z)Lim/doit/pro/model/Assignment;

    move-result-object v5

    invoke-virtual {p1, v5}, Lim/doit/pro/model/Task;->setAssignment(Lim/doit/pro/model/Assignment;)V

    .line 213
    .end local v3    # "sentAt":Ljava/util/Calendar;
    :cond_0
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v5

    iget-object v5, v5, Lim/doit/pro/db/Persist;->taskDao:Lim/doit/pro/db/persist/TaskDao;

    invoke-virtual {p1}, Lim/doit/pro/model/Task;->getUuid()Ljava/lang/String;

    move-result-object v6

    .line 214
    invoke-virtual {p1}, Lim/doit/pro/model/Task;->getRepeatNo()Ljava/lang/String;

    move-result-object v7

    .line 213
    invoke-virtual {v5, v6, v7}, Lim/doit/pro/db/persist/TaskDao;->isExistedByUUID(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    .line 214
    if-eqz v5, :cond_1

    .line 215
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v5

    iget-object v5, v5, Lim/doit/pro/db/Persist;->taskDao:Lim/doit/pro/db/persist/TaskDao;

    invoke-virtual {v5, p1}, Lim/doit/pro/db/persist/TaskDao;->updateAndSaveLog(Lim/doit/pro/model/Task;)V

    .line 220
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 221
    .local v2, "lenght":I
    move v1, v4

    .local v1, "i":I
    :goto_1
    if-lt v1, v2, :cond_2

    .line 226
    invoke-static {}, Lim/doit/pro/utils/BroadcastUtils;->sendSyncManyBroadcastBySystem()V

    .line 227
    return-void

    .line 217
    .end local v1    # "i":I
    .end local v2    # "lenght":I
    :cond_1
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v5

    iget-object v5, v5, Lim/doit/pro/db/Persist;->taskDao:Lim/doit/pro/db/persist/TaskDao;

    invoke-virtual {v5, p1}, Lim/doit/pro/db/persist/TaskDao;->createAndSaveLog(Lim/doit/pro/model/Task;)V

    .line 218
    invoke-static {p1}, Lim/doit/pro/utils/TaskUtils;->createCommentsAndSubTasks(Lim/doit/pro/model/Task;)V

    goto :goto_0

    .line 222
    .restart local v1    # "i":I
    .restart local v2    # "lenght":I
    :cond_2
    invoke-virtual {p1}, Lim/doit/pro/model/Task;->deepClone()Lim/doit/pro/model/Task;

    move-result-object v0

    .line 223
    .local v0, "copyTask":Lim/doit/pro/model/Task;
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lim/doit/pro/model/Contact;

    invoke-static {v0, v5, p3}, Lim/doit/pro/utils/TaskUtils;->saveSendTask(Lim/doit/pro/model/Task;Lim/doit/pro/model/Contact;Z)V

    .line 221
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static snoozeReminder(Landroid/content/Context;Lim/doit/pro/model/Task;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "task"    # Lim/doit/pro/model/Task;

    .prologue
    .line 259
    invoke-virtual {p1}, Lim/doit/pro/model/Task;->getReminders()Ljava/util/ArrayList;

    move-result-object v2

    .line 260
    .local v2, "reminders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/Reminder;>;"
    if-nez v2, :cond_0

    .line 261
    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "reminders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/Reminder;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 264
    .restart local v2    # "reminders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/Reminder;>;"
    :cond_0
    new-instance v0, Lim/doit/pro/model/Reminder;

    invoke-direct {v0}, Lim/doit/pro/model/Reminder;-><init>()V

    .line 265
    .local v0, "reminder":Lim/doit/pro/model/Reminder;
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lim/doit/pro/model/Reminder;->setUuid(Ljava/lang/String;)V

    .line 266
    const-string v4, "popup"

    invoke-virtual {v0, v4}, Lim/doit/pro/model/Reminder;->setMode(Ljava/lang/String;)V

    .line 267
    const-string v4, "absolute"

    invoke-virtual {v0, v4}, Lim/doit/pro/model/Reminder;->setView(Ljava/lang/String;)V

    .line 268
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 269
    .local v1, "reminderTime":Ljava/util/Calendar;
    invoke-static {}, Lim/doit/pro/utils/LocalSettings;->getReminderSnoozeTime()I

    move-result v3

    .line 270
    .local v3, "snoozeTime":I
    const/16 v4, 0xc

    invoke-virtual {v1, v4, v3}, Ljava/util/Calendar;->add(II)V

    .line 271
    invoke-virtual {v0, v1}, Lim/doit/pro/model/Reminder;->setTime(Ljava/util/Calendar;)V

    .line 272
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 274
    invoke-virtual {p1, v2}, Lim/doit/pro/model/Task;->setReminders(Ljava/util/ArrayList;)V

    .line 275
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v4

    iget-object v4, v4, Lim/doit/pro/db/Persist;->taskDao:Lim/doit/pro/db/persist/TaskDao;

    invoke-virtual {v4, p1}, Lim/doit/pro/db/persist/TaskDao;->updateAndSaveLog(Lim/doit/pro/model/Task;)V

    .line 277
    const v4, 0x7f0c0123

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 278
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    .line 277
    invoke-static {v4, v5}, Lim/doit/pro/activity/utils/ViewUtils;->format(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lim/doit/pro/utils/ToastUtils;->show(Ljava/lang/String;)V

    .line 279
    return-void
.end method
