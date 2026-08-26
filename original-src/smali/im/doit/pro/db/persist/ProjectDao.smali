.class public Lim/doit/pro/db/persist/ProjectDao;
.super Lim/doit/pro/db/persist/DBaseDao;
.source "ProjectDao.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lim/doit/pro/db/persist/DBaseDao",
        "<",
        "Lim/doit/pro/model/Project;",
        ">;"
    }
.end annotation


# instance fields
.field private mProjectDaoHelper:Lim/doit/pro/db/persist/utils/ProjectDaoHelper;


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 55
    const-string v0, "projects"

    invoke-direct {p0, v0, p1}, Lim/doit/pro/db/persist/DBaseDao;-><init>(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 56
    new-instance v0, Lim/doit/pro/db/persist/utils/ProjectDaoHelper;

    invoke-direct {v0}, Lim/doit/pro/db/persist/utils/ProjectDaoHelper;-><init>()V

    iput-object v0, p0, Lim/doit/pro/db/persist/ProjectDao;->mProjectDaoHelper:Lim/doit/pro/db/persist/utils/ProjectDaoHelper;

    .line 57
    return-void
.end method

.method private afterUpdate(Lim/doit/pro/model/Project;ZZ)V
    .locals 0
    .param p1, "t"    # Lim/doit/pro/model/Project;
    .param p2, "isDownload"    # Z
    .param p3, "isRefresh"    # Z

    .prologue
    .line 86
    invoke-super {p0, p1, p2}, Lim/doit/pro/db/persist/DBaseDao;->afterUpdate(Lim/doit/pro/model/BaseEntity;Z)V

    .line 87
    if-nez p2, :cond_0

    if-eqz p3, :cond_0

    .line 88
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->refreshWidget()V

    .line 90
    :cond_0
    return-void
.end method

.method private clearSomethingBeforeUndo(Lim/doit/pro/model/Project;)V
    .locals 6
    .param p1, "project"    # Lim/doit/pro/model/Project;

    .prologue
    const/4 v5, 0x0

    .line 473
    const/4 v1, 0x0

    .line 474
    .local v1, "needUpdate":Z
    invoke-virtual {p1}, Lim/doit/pro/model/Project;->getContext()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lim/doit/pro/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 475
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v3

    iget-object v3, v3, Lim/doit/pro/db/Persist;->taskContextDao:Lim/doit/pro/db/persist/TaskContextDao;

    .line 476
    invoke-virtual {p1}, Lim/doit/pro/model/Project;->getContext()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lim/doit/pro/db/persist/TaskContextDao;->findByUUID(Ljava/lang/String;)Lim/doit/pro/model/BaseEntity;

    move-result-object v2

    check-cast v2, Lim/doit/pro/model/TaskContext;

    .line 477
    .local v2, "taskContext":Lim/doit/pro/model/TaskContext;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lim/doit/pro/model/TaskContext;->isDead()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 478
    :cond_0
    invoke-virtual {p1, v5}, Lim/doit/pro/model/Project;->setContext(Ljava/lang/String;)V

    .line 479
    const/4 v1, 0x1

    .line 482
    .end local v2    # "taskContext":Lim/doit/pro/model/TaskContext;
    :cond_1
    invoke-virtual {p1}, Lim/doit/pro/model/Project;->getGoal()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lim/doit/pro/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 483
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v3

    iget-object v3, v3, Lim/doit/pro/db/Persist;->goalDao:Lim/doit/pro/db/persist/GoalDao;

    invoke-virtual {p1}, Lim/doit/pro/model/Project;->getGoal()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lim/doit/pro/db/persist/GoalDao;->findByUUID(Ljava/lang/String;)Lim/doit/pro/model/BaseEntity;

    move-result-object v0

    check-cast v0, Lim/doit/pro/model/Goal;

    .line 484
    .local v0, "goal":Lim/doit/pro/model/Goal;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lim/doit/pro/model/Goal;->isDeleted()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 485
    :cond_2
    invoke-virtual {p1, v5}, Lim/doit/pro/model/Project;->setGoal(Ljava/lang/String;)V

    .line 486
    const/4 v1, 0x1

    .line 489
    .end local v0    # "goal":Lim/doit/pro/model/Goal;
    :cond_3
    if-eqz v1, :cond_4

    .line 490
    invoke-virtual {p0, p1}, Lim/doit/pro/db/persist/ProjectDao;->updateAndSaveLog(Lim/doit/pro/model/Project;)V

    .line 492
    :cond_4
    return-void
.end method

.method private saveArchiveLog(Ljava/lang/String;)V
    .locals 2
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    .line 464
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v0

    iget-object v0, v0, Lim/doit/pro/db/Persist;->opLogDao:Lim/doit/pro/db/persist/OpLogDao;

    sget-object v1, Lim/doit/pro/model/OpLog$OpType;->archive:Lim/doit/pro/model/OpLog$OpType;

    invoke-virtual {v0, p1, v1}, Lim/doit/pro/db/persist/OpLogDao;->saveProjectLog(Ljava/lang/String;Lim/doit/pro/model/OpLog$OpType;)V

    .line 465
    return-void
.end method

.method private saveCompleteLog(Ljava/lang/String;)V
    .locals 2
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    .line 448
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v0

    iget-object v0, v0, Lim/doit/pro/db/Persist;->opLogDao:Lim/doit/pro/db/persist/OpLogDao;

    sget-object v1, Lim/doit/pro/model/OpLog$OpType;->complete:Lim/doit/pro/model/OpLog$OpType;

    invoke-virtual {v0, p1, v1}, Lim/doit/pro/db/persist/OpLogDao;->saveProjectLog(Ljava/lang/String;Lim/doit/pro/model/OpLog$OpType;)V

    .line 449
    return-void
.end method

.method private saveTrashLog(Ljava/lang/String;)V
    .locals 2
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    .line 456
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v0

    iget-object v0, v0, Lim/doit/pro/db/Persist;->opLogDao:Lim/doit/pro/db/persist/OpLogDao;

    sget-object v1, Lim/doit/pro/model/OpLog$OpType;->trash:Lim/doit/pro/model/OpLog$OpType;

    invoke-virtual {v0, p1, v1}, Lim/doit/pro/db/persist/OpLogDao;->saveProjectLog(Ljava/lang/String;Lim/doit/pro/model/OpLog$OpType;)V

    .line 457
    return-void
.end method

.method private saveUncompleteLog(Ljava/lang/String;)V
    .locals 2
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    .line 452
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v0

    iget-object v0, v0, Lim/doit/pro/db/Persist;->opLogDao:Lim/doit/pro/db/persist/OpLogDao;

    sget-object v1, Lim/doit/pro/model/OpLog$OpType;->uncomplete:Lim/doit/pro/model/OpLog$OpType;

    invoke-virtual {v0, p1, v1}, Lim/doit/pro/db/persist/OpLogDao;->saveProjectLog(Ljava/lang/String;Lim/doit/pro/model/OpLog$OpType;)V

    .line 453
    return-void
.end method

.method private saveUntrashLog(Ljava/lang/String;)V
    .locals 2
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    .line 460
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v0

    iget-object v0, v0, Lim/doit/pro/db/Persist;->opLogDao:Lim/doit/pro/db/persist/OpLogDao;

    sget-object v1, Lim/doit/pro/model/OpLog$OpType;->untrash:Lim/doit/pro/model/OpLog$OpType;

    invoke-virtual {v0, p1, v1}, Lim/doit/pro/db/persist/OpLogDao;->saveProjectLog(Ljava/lang/String;Lim/doit/pro/model/OpLog$OpType;)V

    .line 461
    return-void
.end method


# virtual methods
.method protected bridge synthetic afterUpdate(Lim/doit/pro/model/BaseEntity;Z)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lim/doit/pro/model/Project;

    invoke-virtual {p0, p1, p2}, Lim/doit/pro/db/persist/ProjectDao;->afterUpdate(Lim/doit/pro/model/Project;Z)V

    return-void
.end method

.method protected afterUpdate(Lim/doit/pro/model/Project;Z)V
    .locals 1
    .param p1, "t"    # Lim/doit/pro/model/Project;
    .param p2, "isDownload"    # Z

    .prologue
    .line 82
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lim/doit/pro/db/persist/ProjectDao;->afterUpdate(Lim/doit/pro/model/Project;ZZ)V

    .line 83
    return-void
.end method

.method public archive(Lim/doit/pro/model/Project;)V
    .locals 2
    .param p1, "t"    # Lim/doit/pro/model/Project;

    .prologue
    .line 135
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {p1, v0}, Lim/doit/pro/model/Project;->setArchived(Ljava/util/Calendar;)V

    .line 136
    invoke-virtual {p1}, Lim/doit/pro/model/Project;->getUuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lim/doit/pro/model/Project;->getArchived()Ljava/util/Calendar;

    move-result-object v1

    invoke-super {p0, v0, v1}, Lim/doit/pro/db/persist/DBaseDao;->archive(Ljava/lang/String;Ljava/util/Calendar;)V

    .line 137
    invoke-virtual {p1}, Lim/doit/pro/model/Project;->getUuid()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lim/doit/pro/db/persist/ProjectDao;->saveArchiveLog(Ljava/lang/String;)V

    .line 138
    return-void
.end method

.method public clearProjectContext(Ljava/lang/String;)V
    .locals 5
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 311
    new-instance v2, Lim/doit/pro/db/persist/utils/SQLBuilder;

    invoke-direct {v2}, Lim/doit/pro/db/persist/utils/SQLBuilder;-><init>()V

    .line 312
    .local v2, "sql":Lim/doit/pro/db/persist/utils/SQLBuilder;
    const-string v3, "deleted"

    invoke-virtual {v2, v3}, Lim/doit/pro/db/persist/utils/SQLBuilder;->append(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Lim/doit/pro/db/persist/utils/SQLBuilder;->eq(I)Lim/doit/pro/db/persist/utils/SQLBuilder;

    .line 313
    const-string v3, "archived"

    invoke-virtual {v2, v3}, Lim/doit/pro/db/persist/utils/SQLBuilder;->and(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Lim/doit/pro/db/persist/utils/SQLBuilder;->eq(I)Lim/doit/pro/db/persist/utils/SQLBuilder;

    .line 314
    const-string v3, "context"

    invoke-virtual {v2, v3}, Lim/doit/pro/db/persist/utils/SQLBuilder;->and(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->eq(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    .line 315
    invoke-virtual {v2}, Lim/doit/pro/db/persist/utils/SQLBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lim/doit/pro/db/persist/ProjectDao;->findList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 316
    .local v1, "projects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/Project;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 320
    return-void

    .line 316
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lim/doit/pro/model/Project;

    .line 317
    .local v0, "item":Lim/doit/pro/model/Project;
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lim/doit/pro/model/Project;->setContext(Ljava/lang/String;)V

    .line 318
    invoke-virtual {p0, v0}, Lim/doit/pro/db/persist/ProjectDao;->updateAndSaveLog(Lim/doit/pro/model/Project;)V

    goto :goto_0
.end method

.method protected colunms()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 421
    const/16 v0, 0x15

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "uuid"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "created"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "updated"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "usn"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "notes"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 422
    const-string v2, "deleted"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "archived"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "trashed"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "completed"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "status"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "start_at"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    .line 423
    const-string v2, "end_at"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "context"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "goal"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "group_by"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "active_notice"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "pos"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "from_task"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    .line 424
    const-string v2, "repeat_no"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "medias"

    aput-object v2, v0, v1

    .line 421
    return-object v0
.end method

.method public complete(Lim/doit/pro/model/Project;)V
    .locals 2
    .param p1, "t"    # Lim/doit/pro/model/Project;

    .prologue
    .line 101
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {p1, v0}, Lim/doit/pro/model/Project;->setCompleted(Ljava/util/Calendar;)V

    .line 102
    invoke-virtual {p1}, Lim/doit/pro/model/Project;->getUuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lim/doit/pro/model/Project;->getCompleted()Ljava/util/Calendar;

    move-result-object v1

    invoke-super {p0, v0, v1}, Lim/doit/pro/db/persist/DBaseDao;->complete(Ljava/lang/String;Ljava/util/Calendar;)V

    .line 103
    invoke-virtual {p1}, Lim/doit/pro/model/Project;->getUuid()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lim/doit/pro/db/persist/ProjectDao;->saveCompleteLog(Ljava/lang/String;)V

    .line 105
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->refreshWidget()V

    .line 106
    return-void
.end method

.method public completeByGoal(Ljava/lang/String;)V
    .locals 5
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    .line 248
    invoke-virtual {p0, p1}, Lim/doit/pro/db/persist/ProjectDao;->findByGoal(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 249
    .local v1, "projects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/Project;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 253
    return-void

    .line 249
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lim/doit/pro/model/Project;

    .line 250
    .local v0, "item":Lim/doit/pro/model/Project;
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v3

    iget-object v3, v3, Lim/doit/pro/db/Persist;->taskDao:Lim/doit/pro/db/persist/TaskDao;

    invoke-virtual {v0}, Lim/doit/pro/model/Project;->getUuid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lim/doit/pro/db/persist/TaskDao;->completeByProject(Ljava/lang/String;)V

    .line 251
    invoke-virtual {p0, v0}, Lim/doit/pro/db/persist/ProjectDao;->complete(Lim/doit/pro/model/Project;)V

    goto :goto_0
.end method

.method public countByGoal(Ljava/lang/String;)I
    .locals 1
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    .line 218
    iget-object v0, p0, Lim/doit/pro/db/persist/ProjectDao;->mProjectDaoHelper:Lim/doit/pro/db/persist/utils/ProjectDaoHelper;

    invoke-virtual {v0, p1}, Lim/doit/pro/db/persist/utils/ProjectDaoHelper;->byGoal(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lim/doit/pro/db/persist/utils/SQLBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lim/doit/pro/db/persist/ProjectDao;->count(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public countCompletedByGoal(Ljava/lang/String;)I
    .locals 1
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    .line 232
    iget-object v0, p0, Lim/doit/pro/db/persist/ProjectDao;->mProjectDaoHelper:Lim/doit/pro/db/persist/utils/ProjectDaoHelper;

    invoke-virtual {v0, p1}, Lim/doit/pro/db/persist/utils/ProjectDaoHelper;->completedByGoal(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lim/doit/pro/db/persist/utils/SQLBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lim/doit/pro/db/persist/ProjectDao;->count(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public countLiveInGoal(Ljava/lang/String;)I
    .locals 1
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    .line 244
    iget-object v0, p0, Lim/doit/pro/db/persist/ProjectDao;->mProjectDaoHelper:Lim/doit/pro/db/persist/utils/ProjectDaoHelper;

    invoke-virtual {v0, p1}, Lim/doit/pro/db/persist/utils/ProjectDaoHelper;->notDeadByGoal(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lim/doit/pro/db/persist/utils/SQLBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lim/doit/pro/db/persist/ProjectDao;->count(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public countLiveInTaskContext(Ljava/lang/String;)I
    .locals 1
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    .line 296
    iget-object v0, p0, Lim/doit/pro/db/persist/ProjectDao;->mProjectDaoHelper:Lim/doit/pro/db/persist/utils/ProjectDaoHelper;

    invoke-virtual {v0, p1}, Lim/doit/pro/db/persist/utils/ProjectDaoHelper;->byTaskContext(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lim/doit/pro/db/persist/utils/SQLBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lim/doit/pro/db/persist/ProjectDao;->count(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public countScheduledTotal()I
    .locals 2

    .prologue
    .line 180
    const/4 v0, 0x0

    .line 181
    .local v0, "count":I
    invoke-static {}, Lim/doit/pro/utils/BoxUtils;->isTomorrowShow()Z

    move-result v1

    if-nez v1, :cond_0

    .line 182
    invoke-virtual {p0}, Lim/doit/pro/db/persist/ProjectDao;->countTomorrowTotal()I

    move-result v1

    add-int/2addr v0, v1

    .line 184
    :cond_0
    iget-object v1, p0, Lim/doit/pro/db/persist/ProjectDao;->mProjectDaoHelper:Lim/doit/pro/db/persist/utils/ProjectDaoHelper;

    invoke-virtual {v1}, Lim/doit/pro/db/persist/utils/ProjectDaoHelper;->scheduled()Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lim/doit/pro/db/persist/ProjectDao;->count(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 185
    return v0
.end method

.method public countTomorrowTotal()I
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lim/doit/pro/db/persist/ProjectDao;->mProjectDaoHelper:Lim/doit/pro/db/persist/utils/ProjectDaoHelper;

    invoke-virtual {v0}, Lim/doit/pro/db/persist/utils/ProjectDaoHelper;->tomorrow()Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lim/doit/pro/db/persist/utils/SQLBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lim/doit/pro/db/persist/ProjectDao;->count(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public countTrashedByGoal(Ljava/lang/String;)I
    .locals 1
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    .line 240
    iget-object v0, p0, Lim/doit/pro/db/persist/ProjectDao;->mProjectDaoHelper:Lim/doit/pro/db/persist/utils/ProjectDaoHelper;

    invoke-virtual {v0, p1}, Lim/doit/pro/db/persist/utils/ProjectDaoHelper;->trashedByGoal(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lim/doit/pro/db/persist/utils/SQLBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lim/doit/pro/db/persist/ProjectDao;->count(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic createAndSaveLog(Lim/doit/pro/model/BaseEntity;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lim/doit/pro/model/Project;

    invoke-virtual {p0, p1}, Lim/doit/pro/db/persist/ProjectDao;->createAndSaveLog(Lim/doit/pro/model/Project;)V

    return-void
.end method

.method public createAndSaveLog(Lim/doit/pro/model/Project;)V
    .locals 6
    .param p1, "t"    # Lim/doit/pro/model/Project;

    .prologue
    .line 62
    invoke-static {}, Lim/doit/pro/utils/PrefUtils;->getMaxPosition()J

    move-result-wide v2

    sget-wide v4, Lim/doit/pro/utils/Constants;->GAP:J

    add-long v0, v2, v4

    .line 63
    .local v0, "pos":J
    const-wide v2, 0x7ffffffffffffffeL

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 64
    const-wide v0, 0x7ffffffffffffffeL

    .line 66
    :cond_0
    invoke-virtual {p1, v0, v1}, Lim/doit/pro/model/Project;->setPos(J)V

    .line 67
    invoke-super {p0, p1}, Lim/doit/pro/db/persist/DBaseDao;->createAndSaveLog(Lim/doit/pro/model/BaseEntity;)V

    .line 68
    return-void
.end method

.method protected cursorToObject(Landroid/database/Cursor;)Lim/doit/pro/model/Project;
    .locals 4
    .param p1, "c"    # Landroid/database/Cursor;

    .prologue
    .line 365
    new-instance v0, Lim/doit/pro/model/Project;

    invoke-direct {v0}, Lim/doit/pro/model/Project;-><init>()V

    .line 366
    .local v0, "project":Lim/doit/pro/model/Project;
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/model/Project;->setUuid(Ljava/lang/String;)V

    .line 367
    const/4 v1, 0x1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Lim/doit/pro/utils/DateUtils;->convertToDate(J)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/model/Project;->setCreated(Ljava/util/Calendar;)V

    .line 368
    const/4 v1, 0x2

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Lim/doit/pro/utils/DateUtils;->convertToDate(J)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/model/Project;->setUpdated(Ljava/util/Calendar;)V

    .line 369
    const/4 v1, 0x3

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lim/doit/pro/model/Project;->setUsn(J)V

    .line 370
    const/4 v1, 0x4

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/model/Project;->setName(Ljava/lang/String;)V

    .line 371
    const/4 v1, 0x5

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/model/Project;->setNotes(Ljava/lang/String;)V

    .line 372
    const/4 v1, 0x6

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Lim/doit/pro/utils/DateUtils;->convertToDate(J)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/model/Project;->setDeleted(Ljava/util/Calendar;)V

    .line 373
    const/4 v1, 0x7

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Lim/doit/pro/utils/DateUtils;->convertToDate(J)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/model/Project;->setArchived(Ljava/util/Calendar;)V

    .line 374
    const/16 v1, 0x8

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Lim/doit/pro/utils/DateUtils;->convertToDate(J)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/model/Project;->setTrashed(Ljava/util/Calendar;)V

    .line 375
    const/16 v1, 0x9

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Lim/doit/pro/utils/DateUtils;->convertToDate(J)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/model/Project;->setCompleted(Ljava/util/Calendar;)V

    .line 376
    const/16 v1, 0xa

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/model/Project;->setStatus(Ljava/lang/String;)V

    .line 377
    const/16 v1, 0xb

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Lim/doit/pro/utils/DateUtils;->convertToDate(J)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/model/Project;->setStartAt(Ljava/util/Calendar;)V

    .line 378
    const/16 v1, 0xc

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Lim/doit/pro/utils/DateUtils;->convertToDate(J)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/model/Project;->setEndAt(Ljava/util/Calendar;)V

    .line 379
    const/16 v1, 0xd

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/model/Project;->setContext(Ljava/lang/String;)V

    .line 380
    const/16 v1, 0xe

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/model/Project;->setGoal(Ljava/lang/String;)V

    .line 381
    const/16 v1, 0xf

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lim/doit/pro/model/enums/GroupByType;->getValue(Ljava/lang/String;)Lim/doit/pro/model/enums/GroupByType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/model/Project;->setGroupBy(Lim/doit/pro/model/enums/GroupByType;)V

    .line 382
    const/16 v1, 0x10

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lim/doit/pro/db/persist/ProjectDao;->intToBoolean(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Lim/doit/pro/model/Project;->setActiveNotice(Z)V

    .line 383
    const/16 v1, 0x11

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lim/doit/pro/model/Project;->setPos(J)V

    .line 384
    const/16 v1, 0x12

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/model/Project;->setFromTask(Ljava/lang/String;)V

    .line 385
    const/16 v1, 0x13

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/model/Project;->setRepeatNo(Ljava/lang/String;)V

    .line 386
    const/16 v1, 0x14

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/model/Project;->setJsonMedias(Ljava/lang/String;)V

    .line 387
    return-object v0
.end method

.method protected bridge synthetic cursorToObject(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lim/doit/pro/db/persist/ProjectDao;->cursorToObject(Landroid/database/Cursor;)Lim/doit/pro/model/Project;

    move-result-object v0

    return-object v0
.end method

.method public delete(Lim/doit/pro/model/Project;)V
    .locals 2
    .param p1, "t"    # Lim/doit/pro/model/Project;

    .prologue
    .line 141
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {p1, v0}, Lim/doit/pro/model/Project;->setDeleted(Ljava/util/Calendar;)V

    .line 142
    invoke-virtual {p1}, Lim/doit/pro/model/Project;->getUuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lim/doit/pro/model/Project;->getDeleted()Ljava/util/Calendar;

    move-result-object v1

    invoke-super {p0, v0, v1}, Lim/doit/pro/db/persist/DBaseDao;->delete(Ljava/lang/String;Ljava/util/Calendar;)V

    .line 143
    invoke-virtual {p1}, Lim/doit/pro/model/Project;->getUuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lim/doit/pro/db/persist/ProjectDao;->saveDeleteLog(Ljava/lang/String;)V

    .line 144
    return-void
.end method

.method public destroy(Lim/doit/pro/model/Project;)V
    .locals 7
    .param p1, "t"    # Lim/doit/pro/model/Project;

    .prologue
    .line 147
    new-instance v0, Lim/doit/pro/db/persist/utils/SQLBuilder;

    invoke-direct {v0}, Lim/doit/pro/db/persist/utils/SQLBuilder;-><init>()V

    .line 148
    .local v0, "sql":Lim/doit/pro/db/persist/utils/SQLBuilder;
    const-string v1, "uuid"

    invoke-virtual {v0, v1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->append(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v1

    const-string v2, "?"

    invoke-virtual {v1, v2}, Lim/doit/pro/db/persist/utils/SQLBuilder;->eqWithArgs(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    .line 149
    iget-object v1, p0, Lim/doit/pro/db/persist/ProjectDao;->db:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v2, p0, Lim/doit/pro/db/persist/ProjectDao;->tableName:Ljava/lang/String;

    invoke-virtual {v0}, Lim/doit/pro/db/persist/utils/SQLBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {p1}, Lim/doit/pro/model/Project;->getUuid()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 150
    return-void
.end method

.method public findAllByContext(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 2
    .param p1, "uuid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lim/doit/pro/model/Project;",
            ">;"
        }
    .end annotation

    .prologue
    .line 300
    new-instance v0, Lim/doit/pro/db/persist/utils/SQLBuilder;

    invoke-direct {v0}, Lim/doit/pro/db/persist/utils/SQLBuilder;-><init>()V

    .line 301
    .local v0, "sql":Lim/doit/pro/db/persist/utils/SQLBuilder;
    const-string v1, "context"

    invoke-virtual {v0, v1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->append(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->eq(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    .line 302
    invoke-virtual {v0}, Lim/doit/pro/db/persist/utils/SQLBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lim/doit/pro/db/persist/ProjectDao;->findList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
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
            "Lim/doit/pro/model/Project;",
            ">;"
        }
    .end annotation

    .prologue
    .line 222
    new-instance v0, Lim/doit/pro/db/persist/utils/SQLBuilder;

    invoke-direct {v0}, Lim/doit/pro/db/persist/utils/SQLBuilder;-><init>()V

    .line 223
    .local v0, "sql":Lim/doit/pro/db/persist/utils/SQLBuilder;
    const-string v1, "goal"

    invoke-virtual {v0, v1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->append(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->eq(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    .line 224
    invoke-virtual {v0}, Lim/doit/pro/db/persist/utils/SQLBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lim/doit/pro/db/persist/ProjectDao;->findList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public findAllNotDead()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lim/doit/pro/model/Project;",
            ">;"
        }
    .end annotation

    .prologue
    .line 159
    iget-object v0, p0, Lim/doit/pro/db/persist/ProjectDao;->mProjectDaoHelper:Lim/doit/pro/db/persist/utils/ProjectDaoHelper;

    invoke-virtual {v0}, Lim/doit/pro/db/persist/utils/ProjectDaoHelper;->notDead()Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lim/doit/pro/db/persist/utils/SQLBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lim/doit/pro/db/persist/ProjectDao;->findList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public findAllNotDeleted()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lim/doit/pro/model/Project;",
            ">;"
        }
    .end annotation

    .prologue
    .line 153
    new-instance v0, Lim/doit/pro/db/persist/utils/SQLBuilder;

    invoke-direct {v0}, Lim/doit/pro/db/persist/utils/SQLBuilder;-><init>()V

    .line 154
    .local v0, "sql":Lim/doit/pro/db/persist/utils/SQLBuilder;
    const-string v1, "deleted"

    invoke-virtual {v0, v1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->append(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lim/doit/pro/db/persist/utils/SQLBuilder;->eq(I)Lim/doit/pro/db/persist/utils/SQLBuilder;

    .line 155
    invoke-virtual {v0}, Lim/doit/pro/db/persist/utils/SQLBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lim/doit/pro/db/persist/ProjectDao;->findList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
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
            "Lim/doit/pro/model/Project;",
            ">;"
        }
    .end annotation

    .prologue
    .line 269
    iget-object v1, p0, Lim/doit/pro/db/persist/ProjectDao;->mProjectDaoHelper:Lim/doit/pro/db/persist/utils/ProjectDaoHelper;

    invoke-virtual {v1, p1}, Lim/doit/pro/db/persist/utils/ProjectDaoHelper;->getFilterClause(Lim/doit/pro/model/Filter;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v0

    .line 270
    .local v0, "sql":Lim/doit/pro/db/persist/utils/SQLBuilder;
    if-nez v0, :cond_0

    .line 271
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 273
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lim/doit/pro/db/persist/utils/SQLBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lim/doit/pro/db/persist/ProjectDao;->findList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    goto :goto_0
.end method

.method public findByFromTask(Ljava/lang/String;)Lim/doit/pro/model/Project;
    .locals 4
    .param p1, "fromTask"    # Ljava/lang/String;

    .prologue
    .line 284
    new-instance v0, Lim/doit/pro/db/persist/utils/SQLBuilder;

    invoke-direct {v0}, Lim/doit/pro/db/persist/utils/SQLBuilder;-><init>()V

    .line 285
    .local v0, "sb":Lim/doit/pro/db/persist/utils/SQLBuilder;
    const-string v1, "from_task"

    invoke-virtual {v0, v1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->append(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v1

    const-string v2, "?"

    invoke-virtual {v1, v2}, Lim/doit/pro/db/persist/utils/SQLBuilder;->eqWithArgs(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    .line 286
    invoke-virtual {v0}, Lim/doit/pro/db/persist/utils/SQLBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {p0, v1, v2}, Lim/doit/pro/db/persist/ProjectDao;->findOne(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lim/doit/pro/model/Project;

    return-object v1
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
            "Lim/doit/pro/model/Project;",
            ">;"
        }
    .end annotation

    .prologue
    .line 214
    iget-object v0, p0, Lim/doit/pro/db/persist/ProjectDao;->mProjectDaoHelper:Lim/doit/pro/db/persist/utils/ProjectDaoHelper;

    invoke-virtual {v0, p1}, Lim/doit/pro/db/persist/utils/ProjectDaoHelper;->byGoal(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lim/doit/pro/db/persist/utils/SQLBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lim/doit/pro/db/persist/ProjectDao;->findList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public findByName(Ljava/lang/String;)Lim/doit/pro/model/Project;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 277
    new-instance v0, Lim/doit/pro/db/persist/utils/SQLBuilder;

    invoke-direct {v0}, Lim/doit/pro/db/persist/utils/SQLBuilder;-><init>()V

    .line 278
    .local v0, "sb":Lim/doit/pro/db/persist/utils/SQLBuilder;
    const-string v1, "deleted"

    invoke-virtual {v0, v1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->append(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Lim/doit/pro/db/persist/utils/SQLBuilder;->eq(I)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v1

    const-string v2, "archived"

    invoke-virtual {v1, v2}, Lim/doit/pro/db/persist/utils/SQLBuilder;->and(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Lim/doit/pro/db/persist/utils/SQLBuilder;->eq(I)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v1

    const-string v2, "trashed"

    invoke-virtual {v1, v2}, Lim/doit/pro/db/persist/utils/SQLBuilder;->and(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Lim/doit/pro/db/persist/utils/SQLBuilder;->eq(I)Lim/doit/pro/db/persist/utils/SQLBuilder;

    .line 279
    const-string v1, "name"

    invoke-virtual {v0, v1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->and(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v1

    const-string v2, "?"

    invoke-virtual {v1, v2}, Lim/doit/pro/db/persist/utils/SQLBuilder;->eqWithArgs(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    .line 280
    invoke-virtual {v0}, Lim/doit/pro/db/persist/utils/SQLBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    aput-object p1, v2, v3

    invoke-virtual {p0, v1, v2}, Lim/doit/pro/db/persist/ProjectDao;->findOne(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lim/doit/pro/model/Project;

    return-object v1
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
            "Lim/doit/pro/model/Project;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 323
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 324
    iget-object v1, p0, Lim/doit/pro/db/persist/ProjectDao;->mProjectDaoHelper:Lim/doit/pro/db/persist/utils/ProjectDaoHelper;

    new-array v2, v6, [Ljava/lang/String;

    .line 325
    const-string v3, "name"

    aput-object v3, v2, v4

    const-string v3, "notes"

    aput-object v3, v2, v5

    .line 324
    invoke-virtual {v1, v2}, Lim/doit/pro/db/persist/utils/ProjectDaoHelper;->getSearchByKeyClause([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 326
    .local v0, "clause":Ljava/lang/String;
    new-array v1, v6, [Ljava/lang/String;

    .line 327
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

    .line 328
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

    .line 326
    invoke-virtual {p0, v0, v1}, Lim/doit/pro/db/persist/ProjectDao;->findList(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public findCompleted()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lim/doit/pro/model/Project;",
            ">;"
        }
    .end annotation

    .prologue
    .line 193
    iget-object v0, p0, Lim/doit/pro/db/persist/ProjectDao;->mProjectDaoHelper:Lim/doit/pro/db/persist/utils/ProjectDaoHelper;

    invoke-virtual {v0}, Lim/doit/pro/db/persist/utils/ProjectDaoHelper;->completed()Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lim/doit/pro/db/persist/utils/SQLBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lim/doit/pro/db/persist/ProjectDao;->findList(Ljava/lang/String;)Ljava/util/ArrayList;

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
            "Lim/doit/pro/model/Project;",
            ">;"
        }
    .end annotation

    .prologue
    .line 228
    iget-object v0, p0, Lim/doit/pro/db/persist/ProjectDao;->mProjectDaoHelper:Lim/doit/pro/db/persist/utils/ProjectDaoHelper;

    invoke-virtual {v0, p1}, Lim/doit/pro/db/persist/utils/ProjectDaoHelper;->completedByGoal(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lim/doit/pro/db/persist/utils/SQLBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lim/doit/pro/db/persist/ProjectDao;->findList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public findFullByUUID(Ljava/lang/String;)Lim/doit/pro/model/Project;
    .locals 1
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    .line 93
    invoke-virtual {p0, p1}, Lim/doit/pro/db/persist/ProjectDao;->findByUUID(Ljava/lang/String;)Lim/doit/pro/model/BaseEntity;

    move-result-object v0

    check-cast v0, Lim/doit/pro/model/Project;

    .line 94
    .local v0, "project":Lim/doit/pro/model/Project;
    if-eqz v0, :cond_0

    .line 95
    invoke-virtual {v0}, Lim/doit/pro/model/Project;->getMedias()Ljava/util/ArrayList;

    .line 97
    :cond_0
    return-object v0
.end method

.method public findInactiveProjectIds()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 201
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 202
    .local v0, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lim/doit/pro/db/persist/ProjectDao;->findInactiveProjects()Ljava/util/ArrayList;

    move-result-object v1

    .line 203
    .local v1, "inactiveProjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/Project;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 206
    return-object v0

    .line 203
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lim/doit/pro/model/Project;

    .line 204
    .local v2, "item":Lim/doit/pro/model/Project;
    invoke-virtual {v2}, Lim/doit/pro/model/Project;->getUuid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public findInactiveProjects()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lim/doit/pro/model/Project;",
            ">;"
        }
    .end annotation

    .prologue
    .line 210
    iget-object v0, p0, Lim/doit/pro/db/persist/ProjectDao;->mProjectDaoHelper:Lim/doit/pro/db/persist/utils/ProjectDaoHelper;

    invoke-virtual {v0}, Lim/doit/pro/db/persist/utils/ProjectDaoHelper;->inactive()Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lim/doit/pro/db/persist/utils/SQLBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lim/doit/pro/db/persist/ProjectDao;->findList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public findScheduled()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lim/doit/pro/model/Project;",
            ">;"
        }
    .end annotation

    .prologue
    .line 171
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 172
    .local v0, "projects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/Project;>;"
    invoke-static {}, Lim/doit/pro/utils/BoxUtils;->isTomorrowShow()Z

    move-result v1

    if-nez v1, :cond_0

    .line 173
    invoke-virtual {p0}, Lim/doit/pro/db/persist/ProjectDao;->findTomorrow()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 175
    :cond_0
    iget-object v1, p0, Lim/doit/pro/db/persist/ProjectDao;->mProjectDaoHelper:Lim/doit/pro/db/persist/utils/ProjectDaoHelper;

    invoke-virtual {v1}, Lim/doit/pro/db/persist/utils/ProjectDaoHelper;->scheduled()Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lim/doit/pro/db/persist/ProjectDao;->findList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 176
    return-object v0
.end method

.method public findSomeday()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lim/doit/pro/model/Project;",
            ">;"
        }
    .end annotation

    .prologue
    .line 189
    iget-object v0, p0, Lim/doit/pro/db/persist/ProjectDao;->mProjectDaoHelper:Lim/doit/pro/db/persist/utils/ProjectDaoHelper;

    invoke-virtual {v0}, Lim/doit/pro/db/persist/utils/ProjectDaoHelper;->someday()Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lim/doit/pro/db/persist/utils/SQLBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lim/doit/pro/db/persist/ProjectDao;->findList(Ljava/lang/String;)Ljava/util/ArrayList;

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
            "Lim/doit/pro/model/Project;",
            ">;"
        }
    .end annotation

    .prologue
    .line 163
    iget-object v0, p0, Lim/doit/pro/db/persist/ProjectDao;->mProjectDaoHelper:Lim/doit/pro/db/persist/utils/ProjectDaoHelper;

    invoke-virtual {v0}, Lim/doit/pro/db/persist/utils/ProjectDaoHelper;->tomorrow()Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lim/doit/pro/db/persist/utils/SQLBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lim/doit/pro/db/persist/ProjectDao;->findList(Ljava/lang/String;)Ljava/util/ArrayList;

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
            "Lim/doit/pro/model/Project;",
            ">;"
        }
    .end annotation

    .prologue
    .line 197
    iget-object v0, p0, Lim/doit/pro/db/persist/ProjectDao;->mProjectDaoHelper:Lim/doit/pro/db/persist/utils/ProjectDaoHelper;

    invoke-virtual {v0}, Lim/doit/pro/db/persist/utils/ProjectDaoHelper;->trash()Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lim/doit/pro/db/persist/utils/SQLBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lim/doit/pro/db/persist/ProjectDao;->findList(Ljava/lang/String;)Ljava/util/ArrayList;

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
            "Lim/doit/pro/model/Project;",
            ">;"
        }
    .end annotation

    .prologue
    .line 236
    iget-object v0, p0, Lim/doit/pro/db/persist/ProjectDao;->mProjectDaoHelper:Lim/doit/pro/db/persist/utils/ProjectDaoHelper;

    invoke-virtual {v0, p1}, Lim/doit/pro/db/persist/utils/ProjectDaoHelper;->trashedByGoal(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lim/doit/pro/db/persist/utils/SQLBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lim/doit/pro/db/persist/ProjectDao;->findList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public mergeTheSameName(Lim/doit/pro/model/Project;)Z
    .locals 4
    .param p1, "serverProject"    # Lim/doit/pro/model/Project;

    .prologue
    const/4 v1, 0x0

    .line 332
    if-nez p1, :cond_1

    .line 343
    :cond_0
    :goto_0
    return v1

    .line 335
    :cond_1
    invoke-virtual {p1}, Lim/doit/pro/model/Project;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lim/doit/pro/db/persist/ProjectDao;->findByName(Ljava/lang/String;)Lim/doit/pro/model/Project;

    move-result-object v0

    .line 336
    .local v0, "project":Lim/doit/pro/model/Project;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lim/doit/pro/model/Project;->isDead()Z

    move-result v2

    if-nez v2, :cond_0

    .line 339
    invoke-virtual {p1}, Lim/doit/pro/model/Project;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lim/doit/pro/model/Project;->getUuid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 340
    invoke-virtual {p0, v0, p1}, Lim/doit/pro/db/persist/ProjectDao;->updateConflictProject(Lim/doit/pro/model/Project;Lim/doit/pro/model/Project;)V

    .line 341
    const/4 v1, 0x1

    goto :goto_0
.end method

.method protected objectToContentValues(Lim/doit/pro/model/Project;Z)Landroid/content/ContentValues;
    .locals 4
    .param p1, "t"    # Lim/doit/pro/model/Project;
    .param p2, "isDownload"    # Z

    .prologue
    .line 392
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 393
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "uuid"

    invoke-virtual {p1}, Lim/doit/pro/model/Project;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    const-string v1, "created"

    invoke-virtual {p1}, Lim/doit/pro/model/Project;->getCreated()Ljava/util/Calendar;

    move-result-object v2

    invoke-static {v2}, Lim/doit/pro/utils/DateUtils;->convertToLong(Ljava/util/Calendar;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 395
    const-string v1, "updated"

    invoke-virtual {p1}, Lim/doit/pro/model/Project;->getUpdated()Ljava/util/Calendar;

    move-result-object v2

    invoke-static {v2}, Lim/doit/pro/utils/DateUtils;->convertToLong(Ljava/util/Calendar;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 396
    const-string v1, "name"

    invoke-virtual {p1}, Lim/doit/pro/model/Project;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    const-string v1, "notes"

    invoke-virtual {p1}, Lim/doit/pro/model/Project;->getNotes()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    const-string v1, "deleted"

    invoke-virtual {p1}, Lim/doit/pro/model/Project;->getDeleted()Ljava/util/Calendar;

    move-result-object v2

    invoke-static {v2}, Lim/doit/pro/utils/DateUtils;->convertToLong(Ljava/util/Calendar;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 399
    const-string v1, "archived"

    invoke-virtual {p1}, Lim/doit/pro/model/Project;->getArchived()Ljava/util/Calendar;

    move-result-object v2

    invoke-static {v2}, Lim/doit/pro/utils/DateUtils;->convertToLong(Ljava/util/Calendar;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 400
    const-string v1, "trashed"

    invoke-virtual {p1}, Lim/doit/pro/model/Project;->getTrashed()Ljava/util/Calendar;

    move-result-object v2

    invoke-static {v2}, Lim/doit/pro/utils/DateUtils;->convertToLong(Ljava/util/Calendar;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 401
    const-string v1, "completed"

    invoke-virtual {p1}, Lim/doit/pro/model/Project;->getCompleted()Ljava/util/Calendar;

    move-result-object v2

    invoke-static {v2}, Lim/doit/pro/utils/DateUtils;->convertToLong(Ljava/util/Calendar;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 402
    const-string v1, "status"

    invoke-virtual {p1}, Lim/doit/pro/model/Project;->getStatus()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    const-string v1, "start_at"

    invoke-virtual {p1}, Lim/doit/pro/model/Project;->getStartAt()Ljava/util/Calendar;

    move-result-object v2

    invoke-static {v2}, Lim/doit/pro/utils/DateUtils;->convertToLong(Ljava/util/Calendar;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 404
    const-string v1, "end_at"

    invoke-virtual {p1}, Lim/doit/pro/model/Project;->getEndAt()Ljava/util/Calendar;

    move-result-object v2

    invoke-static {v2}, Lim/doit/pro/utils/DateUtils;->convertToLong(Ljava/util/Calendar;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 405
    const-string v1, "context"

    invoke-virtual {p1}, Lim/doit/pro/model/Project;->getContext()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    const-string v1, "goal"

    invoke-virtual {p1}, Lim/doit/pro/model/Project;->getGoal()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    const-string v1, "group_by"

    invoke-virtual {p1}, Lim/doit/pro/model/Project;->getGroupBy()Lim/doit/pro/model/enums/GroupByType;

    move-result-object v2

    invoke-static {v2}, Lim/doit/pro/model/enums/GroupByType;->toString(Lim/doit/pro/model/enums/GroupByType;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    const-string v1, "active_notice"

    invoke-virtual {p1}, Lim/doit/pro/model/Project;->isActiveNotice()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 409
    const-string v1, "pos"

    invoke-virtual {p1}, Lim/doit/pro/model/Project;->getPos()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 410
    const-string v1, "from_task"

    invoke-virtual {p1}, Lim/doit/pro/model/Project;->getFromTask()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    const-string v1, "repeat_no"

    invoke-virtual {p1}, Lim/doit/pro/model/Project;->getRepeatNo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    const-string v1, "medias"

    invoke-virtual {p1}, Lim/doit/pro/model/Project;->getJsonMedias()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    if-eqz p2, :cond_0

    .line 414
    const-string v1, "usn"

    invoke-virtual {p1}, Lim/doit/pro/model/Project;->getUsn()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 416
    :cond_0
    return-object v0
.end method

.method protected bridge synthetic objectToContentValues(Ljava/lang/Object;Z)Landroid/content/ContentValues;
    .locals 1

    .prologue
    .line 1
    check-cast p1, Lim/doit/pro/model/Project;

    invoke-virtual {p0, p1, p2}, Lim/doit/pro/db/persist/ProjectDao;->objectToContentValues(Lim/doit/pro/model/Project;Z)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method protected order()Ljava/lang/String;
    .locals 2

    .prologue
    .line 429
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "pos"

    invoke-virtual {p0, v1}, Lim/doit/pro/db/persist/ProjectDao;->asc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "created"

    invoke-virtual {p0, v1}, Lim/doit/pro/db/persist/ProjectDao;->asc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected saveCreateLog(Ljava/lang/String;)V
    .locals 2
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    .line 444
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v0

    iget-object v0, v0, Lim/doit/pro/db/Persist;->opLogDao:Lim/doit/pro/db/persist/OpLogDao;

    sget-object v1, Lim/doit/pro/model/OpLog$OpType;->create:Lim/doit/pro/model/OpLog$OpType;

    invoke-virtual {v0, p1, v1}, Lim/doit/pro/db/persist/OpLogDao;->saveProjectLog(Ljava/lang/String;Lim/doit/pro/model/OpLog$OpType;)V

    .line 445
    return-void
.end method

.method protected saveDeleteLog(Ljava/lang/String;)V
    .locals 2
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    .line 434
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v0

    iget-object v0, v0, Lim/doit/pro/db/Persist;->opLogDao:Lim/doit/pro/db/persist/OpLogDao;

    sget-object v1, Lim/doit/pro/model/OpLog$OpType;->delete:Lim/doit/pro/model/OpLog$OpType;

    invoke-virtual {v0, p1, v1}, Lim/doit/pro/db/persist/OpLogDao;->saveProjectLog(Ljava/lang/String;Lim/doit/pro/model/OpLog$OpType;)V

    .line 435
    return-void
.end method

.method protected saveUpdateLog(Ljava/lang/String;)V
    .locals 2
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    .line 439
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v0

    iget-object v0, v0, Lim/doit/pro/db/Persist;->opLogDao:Lim/doit/pro/db/persist/OpLogDao;

    sget-object v1, Lim/doit/pro/model/OpLog$OpType;->update:Lim/doit/pro/model/OpLog$OpType;

    invoke-virtual {v0, p1, v1}, Lim/doit/pro/db/persist/OpLogDao;->saveProjectLog(Ljava/lang/String;Lim/doit/pro/model/OpLog$OpType;)V

    .line 440
    return-void
.end method

.method public trash(Lim/doit/pro/model/Project;)V
    .locals 2
    .param p1, "t"    # Lim/doit/pro/model/Project;

    .prologue
    .line 118
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {p1, v0}, Lim/doit/pro/model/Project;->setTrashed(Ljava/util/Calendar;)V

    .line 119
    invoke-virtual {p1}, Lim/doit/pro/model/Project;->getUuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lim/doit/pro/model/Project;->getTrashed()Ljava/util/Calendar;

    move-result-object v1

    invoke-super {p0, v0, v1}, Lim/doit/pro/db/persist/DBaseDao;->trash(Ljava/lang/String;Ljava/util/Calendar;)V

    .line 120
    invoke-virtual {p1}, Lim/doit/pro/model/Project;->getUuid()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lim/doit/pro/db/persist/ProjectDao;->saveTrashLog(Ljava/lang/String;)V

    .line 122
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->refreshWidget()V

    .line 123
    return-void
.end method

.method public trashByGoal(Ljava/lang/String;)V
    .locals 6
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    .line 256
    invoke-virtual {p0, p1}, Lim/doit/pro/db/persist/ProjectDao;->findCompletedByGoal(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 257
    .local v0, "completedProjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/Project;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 261
    invoke-virtual {p0, p1}, Lim/doit/pro/db/persist/ProjectDao;->findByGoal(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 262
    .local v2, "projects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/Project;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 266
    return-void

    .line 257
    .end local v2    # "projects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/Project;>;"
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lim/doit/pro/model/Project;

    .line 258
    .local v1, "item":Lim/doit/pro/model/Project;
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lim/doit/pro/model/Project;->setGoal(Ljava/lang/String;)V

    .line 259
    invoke-virtual {p0, v1}, Lim/doit/pro/db/persist/ProjectDao;->updateAndSaveLog(Lim/doit/pro/model/Project;)V

    goto :goto_0

    .line 262
    .end local v1    # "item":Lim/doit/pro/model/Project;
    .restart local v2    # "projects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/Project;>;"
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lim/doit/pro/model/Project;

    .line 263
    .restart local v1    # "item":Lim/doit/pro/model/Project;
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v4

    iget-object v4, v4, Lim/doit/pro/db/Persist;->taskDao:Lim/doit/pro/db/persist/TaskDao;

    invoke-virtual {v1}, Lim/doit/pro/model/Project;->getUuid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lim/doit/pro/db/persist/TaskDao;->trashByProject(Ljava/lang/String;)V

    .line 264
    invoke-virtual {p0, v1}, Lim/doit/pro/db/persist/ProjectDao;->trash(Lim/doit/pro/model/Project;)V

    goto :goto_1
.end method

.method public uncomplete(Lim/doit/pro/model/Project;)V
    .locals 1
    .param p1, "t"    # Lim/doit/pro/model/Project;

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lim/doit/pro/db/persist/ProjectDao;->clearSomethingBeforeUndo(Lim/doit/pro/model/Project;)V

    .line 110
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lim/doit/pro/model/Project;->setCompleted(Ljava/util/Calendar;)V

    .line 111
    invoke-virtual {p1}, Lim/doit/pro/model/Project;->getUuid()Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Lim/doit/pro/db/persist/DBaseDao;->uncomplete(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p1}, Lim/doit/pro/model/Project;->getUuid()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lim/doit/pro/db/persist/ProjectDao;->saveUncompleteLog(Ljava/lang/String;)V

    .line 114
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->refreshWidget()V

    .line 115
    return-void
.end method

.method public untrash(Lim/doit/pro/model/Project;)V
    .locals 1
    .param p1, "t"    # Lim/doit/pro/model/Project;

    .prologue
    .line 126
    invoke-direct {p0, p1}, Lim/doit/pro/db/persist/ProjectDao;->clearSomethingBeforeUndo(Lim/doit/pro/model/Project;)V

    .line 127
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lim/doit/pro/model/Project;->setTrashed(Ljava/util/Calendar;)V

    .line 128
    invoke-virtual {p1}, Lim/doit/pro/model/Project;->getUuid()Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Lim/doit/pro/db/persist/DBaseDao;->untrash(Ljava/lang/String;)V

    .line 129
    invoke-virtual {p1}, Lim/doit/pro/model/Project;->getUuid()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lim/doit/pro/db/persist/ProjectDao;->saveUntrashLog(Ljava/lang/String;)V

    .line 131
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->refreshWidget()V

    .line 132
    return-void
.end method

.method public bridge synthetic updateAndSaveLog(Lim/doit/pro/model/BaseEntity;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lim/doit/pro/model/Project;

    invoke-virtual {p0, p1}, Lim/doit/pro/db/persist/ProjectDao;->updateAndSaveLog(Lim/doit/pro/model/Project;)V

    return-void
.end method

.method public updateAndSaveLog(Lim/doit/pro/model/Project;)V
    .locals 0
    .param p1, "t"    # Lim/doit/pro/model/Project;

    .prologue
    .line 72
    invoke-super {p0, p1}, Lim/doit/pro/db/persist/DBaseDao;->updateAndSaveLog(Lim/doit/pro/model/BaseEntity;)V

    .line 73
    return-void
.end method

.method public updateConflictProject(Lim/doit/pro/model/Project;Lim/doit/pro/model/Project;)V
    .locals 6
    .param p1, "localProject"    # Lim/doit/pro/model/Project;
    .param p2, "serverProject"    # Lim/doit/pro/model/Project;

    .prologue
    .line 348
    invoke-virtual {p1}, Lim/doit/pro/model/Project;->getUuid()Ljava/lang/String;

    move-result-object v1

    .line 349
    .local v1, "localUUID":Ljava/lang/String;
    invoke-virtual {p2}, Lim/doit/pro/model/Project;->getUuid()Ljava/lang/String;

    move-result-object v2

    .line 350
    .local v2, "newUUID":Ljava/lang/String;
    invoke-virtual {p1, v2}, Lim/doit/pro/model/Project;->setUuid(Ljava/lang/String;)V

    .line 351
    const/4 v4, 0x0

    invoke-virtual {p0, p1, v4}, Lim/doit/pro/db/persist/ProjectDao;->update(Lim/doit/pro/model/BaseEntity;Z)V

    .line 352
    invoke-virtual {p0, p1}, Lim/doit/pro/db/persist/ProjectDao;->updateAndSaveLog(Lim/doit/pro/model/Project;)V

    .line 353
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v4

    iget-object v4, v4, Lim/doit/pro/db/Persist;->taskDao:Lim/doit/pro/db/persist/TaskDao;

    .line 354
    invoke-virtual {v4, v1}, Lim/doit/pro/db/persist/TaskDao;->findAllByProject(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 355
    .local v3, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/Task;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_0

    .line 359
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v4

    iget-object v4, v4, Lim/doit/pro/db/Persist;->opLogDao:Lim/doit/pro/db/persist/OpLogDao;

    sget-object v5, Lim/doit/pro/model/OpLog$ItemType;->project:Lim/doit/pro/model/OpLog$ItemType;

    invoke-virtual {v4, v5, v1, v2}, Lim/doit/pro/db/persist/OpLogDao;->updateConflictUUID(Lim/doit/pro/model/OpLog$ItemType;Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    return-void

    .line 355
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lim/doit/pro/model/Task;

    .line 356
    .local v0, "item":Lim/doit/pro/model/Task;
    invoke-virtual {v0, v2}, Lim/doit/pro/model/Task;->setProject(Ljava/lang/String;)V

    .line 357
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v5

    iget-object v5, v5, Lim/doit/pro/db/Persist;->taskDao:Lim/doit/pro/db/persist/TaskDao;

    invoke-virtual {v5, v0}, Lim/doit/pro/db/persist/TaskDao;->updateAndSaveLog(Lim/doit/pro/model/Task;)V

    goto :goto_0
.end method

.method public updatePos(Lim/doit/pro/model/Project;)V
    .locals 4
    .param p1, "t"    # Lim/doit/pro/model/Project;

    .prologue
    const/4 v1, 0x0

    .line 76
    invoke-virtual {p1}, Lim/doit/pro/model/Project;->getUuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lim/doit/pro/model/Project;->getPos()J

    move-result-wide v2

    invoke-super {p0, v0, v2, v3}, Lim/doit/pro/db/persist/DBaseDao;->updatePos(Ljava/lang/String;J)V

    .line 77
    invoke-direct {p0, p1, v1, v1}, Lim/doit/pro/db/persist/ProjectDao;->afterUpdate(Lim/doit/pro/model/Project;ZZ)V

    .line 78
    return-void
.end method
