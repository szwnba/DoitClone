.class public Lim/doit/pro/db/persist/TaskContextDao;
.super Lim/doit/pro/db/persist/DBaseDao;
.source "TaskContextDao.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lim/doit/pro/db/persist/DBaseDao",
        "<",
        "Lim/doit/pro/model/TaskContext;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 34
    const-string v0, "task_contexts"

    invoke-direct {p0, v0, p1}, Lim/doit/pro/db/persist/DBaseDao;-><init>(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 35
    return-void
.end method

.method private afterUpdate(Lim/doit/pro/model/TaskContext;ZZ)V
    .locals 0
    .param p1, "t"    # Lim/doit/pro/model/TaskContext;
    .param p2, "isDownload"    # Z
    .param p3, "isRefresh"    # Z

    .prologue
    .line 64
    invoke-super {p0, p1, p2}, Lim/doit/pro/db/persist/DBaseDao;->afterUpdate(Lim/doit/pro/model/BaseEntity;Z)V

    .line 65
    if-nez p2, :cond_0

    if-eqz p3, :cond_0

    .line 66
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->refreshWidget()V

    .line 68
    :cond_0
    return-void
.end method


# virtual methods
.method protected bridge synthetic afterUpdate(Lim/doit/pro/model/BaseEntity;Z)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lim/doit/pro/model/TaskContext;

    invoke-virtual {p0, p1, p2}, Lim/doit/pro/db/persist/TaskContextDao;->afterUpdate(Lim/doit/pro/model/TaskContext;Z)V

    return-void
.end method

.method protected afterUpdate(Lim/doit/pro/model/TaskContext;Z)V
    .locals 1
    .param p1, "t"    # Lim/doit/pro/model/TaskContext;
    .param p2, "isDownload"    # Z

    .prologue
    .line 60
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lim/doit/pro/db/persist/TaskContextDao;->afterUpdate(Lim/doit/pro/model/TaskContext;ZZ)V

    .line 61
    return-void
.end method

.method protected colunms()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 156
    const/16 v0, 0x8

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

    const-string v2, "group_by"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "pos"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "deleted"

    aput-object v2, v0, v1

    return-object v0
.end method

.method public bridge synthetic createAndSaveLog(Lim/doit/pro/model/BaseEntity;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lim/doit/pro/model/TaskContext;

    invoke-virtual {p0, p1}, Lim/doit/pro/db/persist/TaskContextDao;->createAndSaveLog(Lim/doit/pro/model/TaskContext;)V

    return-void
.end method

.method public createAndSaveLog(Lim/doit/pro/model/TaskContext;)V
    .locals 6
    .param p1, "t"    # Lim/doit/pro/model/TaskContext;

    .prologue
    .line 40
    invoke-static {}, Lim/doit/pro/utils/PrefUtils;->getMaxPosition()J

    move-result-wide v2

    sget-wide v4, Lim/doit/pro/utils/Constants;->GAP:J

    add-long v0, v2, v4

    .line 41
    .local v0, "pos":J
    const-wide v2, 0x7ffffffffffffffeL

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 42
    const-wide v0, 0x7ffffffffffffffeL

    .line 44
    :cond_0
    invoke-virtual {p1, v0, v1}, Lim/doit/pro/model/TaskContext;->setPos(J)V

    .line 45
    invoke-super {p0, p1}, Lim/doit/pro/db/persist/DBaseDao;->createAndSaveLog(Lim/doit/pro/model/BaseEntity;)V

    .line 46
    return-void
.end method

.method protected cursorToObject(Landroid/database/Cursor;)Lim/doit/pro/model/TaskContext;
    .locals 4
    .param p1, "c"    # Landroid/database/Cursor;

    .prologue
    .line 126
    new-instance v0, Lim/doit/pro/model/TaskContext;

    invoke-direct {v0}, Lim/doit/pro/model/TaskContext;-><init>()V

    .line 127
    .local v0, "taskContext":Lim/doit/pro/model/TaskContext;
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/model/TaskContext;->setUuid(Ljava/lang/String;)V

    .line 128
    const/4 v1, 0x1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Lim/doit/pro/utils/DateUtils;->convertToDate(J)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/model/TaskContext;->setCreated(Ljava/util/Calendar;)V

    .line 129
    const/4 v1, 0x2

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Lim/doit/pro/utils/DateUtils;->convertToDate(J)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/model/TaskContext;->setUpdated(Ljava/util/Calendar;)V

    .line 130
    const/4 v1, 0x3

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lim/doit/pro/model/TaskContext;->setUsn(J)V

    .line 131
    const/4 v1, 0x4

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/model/TaskContext;->setName(Ljava/lang/String;)V

    .line 132
    const/4 v1, 0x5

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lim/doit/pro/model/enums/GroupByType;->getValue(Ljava/lang/String;)Lim/doit/pro/model/enums/GroupByType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/model/TaskContext;->setGroupBy(Lim/doit/pro/model/enums/GroupByType;)V

    .line 133
    const/4 v1, 0x6

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Lim/doit/pro/model/TaskContext;->setPos(J)V

    .line 134
    const/4 v1, 0x7

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Lim/doit/pro/utils/DateUtils;->convertToDate(J)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/model/TaskContext;->setDeleted(Ljava/util/Calendar;)V

    .line 135
    return-object v0
.end method

.method protected bridge synthetic cursorToObject(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lim/doit/pro/db/persist/TaskContextDao;->cursorToObject(Landroid/database/Cursor;)Lim/doit/pro/model/TaskContext;

    move-result-object v0

    return-object v0
.end method

.method public delete(Lim/doit/pro/model/TaskContext;)V
    .locals 2
    .param p1, "t"    # Lim/doit/pro/model/TaskContext;

    .prologue
    .line 71
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {p1, v0}, Lim/doit/pro/model/TaskContext;->setDeleted(Ljava/util/Calendar;)V

    .line 72
    invoke-virtual {p1}, Lim/doit/pro/model/TaskContext;->getUuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lim/doit/pro/model/TaskContext;->getDeleted()Ljava/util/Calendar;

    move-result-object v1

    invoke-super {p0, v0, v1}, Lim/doit/pro/db/persist/DBaseDao;->delete(Ljava/lang/String;Ljava/util/Calendar;)V

    .line 73
    invoke-virtual {p1}, Lim/doit/pro/model/TaskContext;->getUuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lim/doit/pro/db/persist/TaskContextDao;->saveDeleteLog(Ljava/lang/String;)V

    .line 74
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->refreshWidget()V

    .line 75
    return-void
.end method

.method public findAllNotDeleted()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lim/doit/pro/model/TaskContext;",
            ">;"
        }
    .end annotation

    .prologue
    .line 78
    new-instance v0, Lim/doit/pro/db/persist/utils/SQLBuilder;

    invoke-direct {v0}, Lim/doit/pro/db/persist/utils/SQLBuilder;-><init>()V

    .line 79
    .local v0, "sql":Lim/doit/pro/db/persist/utils/SQLBuilder;
    const-string v1, "deleted"

    invoke-virtual {v0, v1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->append(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lim/doit/pro/db/persist/utils/SQLBuilder;->eq(I)Lim/doit/pro/db/persist/utils/SQLBuilder;

    .line 80
    invoke-virtual {v0}, Lim/doit/pro/db/persist/utils/SQLBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lim/doit/pro/db/persist/TaskContextDao;->findList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public findByName(Ljava/lang/String;)Lim/doit/pro/model/TaskContext;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 84
    new-instance v0, Lim/doit/pro/db/persist/utils/SQLBuilder;

    invoke-direct {v0}, Lim/doit/pro/db/persist/utils/SQLBuilder;-><init>()V

    .line 85
    .local v0, "sql":Lim/doit/pro/db/persist/utils/SQLBuilder;
    const-string v1, "deleted"

    invoke-virtual {v0, v1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->append(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Lim/doit/pro/db/persist/utils/SQLBuilder;->eq(I)Lim/doit/pro/db/persist/utils/SQLBuilder;

    .line 86
    const-string v1, "name"

    invoke-virtual {v0, v1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->and(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v1

    const-string v2, "?"

    invoke-virtual {v1, v2}, Lim/doit/pro/db/persist/utils/SQLBuilder;->eqWithArgs(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    .line 87
    invoke-virtual {v0}, Lim/doit/pro/db/persist/utils/SQLBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    aput-object p1, v2, v3

    invoke-virtual {p0, v1, v2}, Lim/doit/pro/db/persist/TaskContextDao;->findOne(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lim/doit/pro/model/TaskContext;

    return-object v1
.end method

.method public mergeTheSameName(Lim/doit/pro/model/TaskContext;)Z
    .locals 4
    .param p1, "serverContext"    # Lim/doit/pro/model/TaskContext;

    .prologue
    const/4 v1, 0x0

    .line 91
    if-nez p1, :cond_1

    .line 102
    :cond_0
    :goto_0
    return v1

    .line 94
    :cond_1
    invoke-virtual {p1}, Lim/doit/pro/model/TaskContext;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lim/doit/pro/db/persist/TaskContextDao;->findByName(Ljava/lang/String;)Lim/doit/pro/model/TaskContext;

    move-result-object v0

    .line 95
    .local v0, "context":Lim/doit/pro/model/TaskContext;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lim/doit/pro/model/TaskContext;->isDeleted()Z

    move-result v2

    if-nez v2, :cond_0

    .line 98
    invoke-virtual {p1}, Lim/doit/pro/model/TaskContext;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lim/doit/pro/model/TaskContext;->getUuid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 99
    invoke-virtual {p0, v0, p1}, Lim/doit/pro/db/persist/TaskContextDao;->updateConflictTaskContext(Lim/doit/pro/model/TaskContext;Lim/doit/pro/model/TaskContext;)V

    .line 100
    const/4 v1, 0x1

    goto :goto_0
.end method

.method protected objectToContentValues(Lim/doit/pro/model/TaskContext;Z)Landroid/content/ContentValues;
    .locals 4
    .param p1, "t"    # Lim/doit/pro/model/TaskContext;
    .param p2, "isDownload"    # Z

    .prologue
    .line 140
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 141
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "uuid"

    invoke-virtual {p1}, Lim/doit/pro/model/TaskContext;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    const-string v1, "created"

    invoke-virtual {p1}, Lim/doit/pro/model/TaskContext;->getCreated()Ljava/util/Calendar;

    move-result-object v2

    invoke-static {v2}, Lim/doit/pro/utils/DateUtils;->convertToLong(Ljava/util/Calendar;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 143
    const-string v1, "updated"

    invoke-virtual {p1}, Lim/doit/pro/model/TaskContext;->getUpdated()Ljava/util/Calendar;

    move-result-object v2

    invoke-static {v2}, Lim/doit/pro/utils/DateUtils;->convertToLong(Ljava/util/Calendar;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 144
    const-string v1, "name"

    invoke-virtual {p1}, Lim/doit/pro/model/TaskContext;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    const-string v1, "group_by"

    invoke-virtual {p1}, Lim/doit/pro/model/TaskContext;->getGroupBy()Lim/doit/pro/model/enums/GroupByType;

    move-result-object v2

    invoke-static {v2}, Lim/doit/pro/model/enums/GroupByType;->toString(Lim/doit/pro/model/enums/GroupByType;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    const-string v1, "pos"

    invoke-virtual {p1}, Lim/doit/pro/model/TaskContext;->getPos()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 147
    const-string v1, "deleted"

    invoke-virtual {p1}, Lim/doit/pro/model/TaskContext;->getDeleted()Ljava/util/Calendar;

    move-result-object v2

    invoke-static {v2}, Lim/doit/pro/utils/DateUtils;->convertToLong(Ljava/util/Calendar;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 148
    if-eqz p2, :cond_0

    .line 149
    const-string v1, "usn"

    invoke-virtual {p1}, Lim/doit/pro/model/TaskContext;->getUsn()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 151
    :cond_0
    return-object v0
.end method

.method protected bridge synthetic objectToContentValues(Ljava/lang/Object;Z)Landroid/content/ContentValues;
    .locals 1

    .prologue
    .line 1
    check-cast p1, Lim/doit/pro/model/TaskContext;

    invoke-virtual {p0, p1, p2}, Lim/doit/pro/db/persist/TaskContextDao;->objectToContentValues(Lim/doit/pro/model/TaskContext;Z)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method protected order()Ljava/lang/String;
    .locals 2

    .prologue
    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "pos"

    invoke-virtual {p0, v1}, Lim/doit/pro/db/persist/TaskContextDao;->asc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "created"

    invoke-virtual {p0, v1}, Lim/doit/pro/db/persist/TaskContextDao;->asc(Ljava/lang/String;)Ljava/lang/String;

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
    .line 176
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v0

    iget-object v0, v0, Lim/doit/pro/db/Persist;->opLogDao:Lim/doit/pro/db/persist/OpLogDao;

    sget-object v1, Lim/doit/pro/model/OpLog$OpType;->create:Lim/doit/pro/model/OpLog$OpType;

    invoke-virtual {v0, p1, v1}, Lim/doit/pro/db/persist/OpLogDao;->saveTaskContextLog(Ljava/lang/String;Lim/doit/pro/model/OpLog$OpType;)V

    .line 177
    return-void
.end method

.method protected saveDeleteLog(Ljava/lang/String;)V
    .locals 2
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    .line 166
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v0

    iget-object v0, v0, Lim/doit/pro/db/Persist;->opLogDao:Lim/doit/pro/db/persist/OpLogDao;

    sget-object v1, Lim/doit/pro/model/OpLog$OpType;->delete:Lim/doit/pro/model/OpLog$OpType;

    invoke-virtual {v0, p1, v1}, Lim/doit/pro/db/persist/OpLogDao;->saveTaskContextLog(Ljava/lang/String;Lim/doit/pro/model/OpLog$OpType;)V

    .line 167
    return-void
.end method

.method protected saveUpdateLog(Ljava/lang/String;)V
    .locals 2
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    .line 171
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v0

    iget-object v0, v0, Lim/doit/pro/db/Persist;->opLogDao:Lim/doit/pro/db/persist/OpLogDao;

    sget-object v1, Lim/doit/pro/model/OpLog$OpType;->update:Lim/doit/pro/model/OpLog$OpType;

    invoke-virtual {v0, p1, v1}, Lim/doit/pro/db/persist/OpLogDao;->saveTaskContextLog(Ljava/lang/String;Lim/doit/pro/model/OpLog$OpType;)V

    .line 172
    return-void
.end method

.method public bridge synthetic updateAndSaveLog(Lim/doit/pro/model/BaseEntity;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lim/doit/pro/model/TaskContext;

    invoke-virtual {p0, p1}, Lim/doit/pro/db/persist/TaskContextDao;->updateAndSaveLog(Lim/doit/pro/model/TaskContext;)V

    return-void
.end method

.method public updateAndSaveLog(Lim/doit/pro/model/TaskContext;)V
    .locals 0
    .param p1, "t"    # Lim/doit/pro/model/TaskContext;

    .prologue
    .line 50
    invoke-super {p0, p1}, Lim/doit/pro/db/persist/DBaseDao;->updateAndSaveLog(Lim/doit/pro/model/BaseEntity;)V

    .line 51
    return-void
.end method

.method public updateConflictTaskContext(Lim/doit/pro/model/TaskContext;Lim/doit/pro/model/TaskContext;)V
    .locals 7
    .param p1, "localContext"    # Lim/doit/pro/model/TaskContext;
    .param p2, "serverContext"    # Lim/doit/pro/model/TaskContext;

    .prologue
    .line 106
    invoke-virtual {p1}, Lim/doit/pro/model/TaskContext;->getUuid()Ljava/lang/String;

    move-result-object v1

    .line 107
    .local v1, "localUUID":Ljava/lang/String;
    invoke-virtual {p2}, Lim/doit/pro/model/TaskContext;->getUuid()Ljava/lang/String;

    move-result-object v2

    .line 108
    .local v2, "newUUID":Ljava/lang/String;
    invoke-virtual {p1, v2}, Lim/doit/pro/model/TaskContext;->setUuid(Ljava/lang/String;)V

    .line 109
    const/4 v5, 0x0

    invoke-virtual {p0, p1, v5}, Lim/doit/pro/db/persist/TaskContextDao;->update(Lim/doit/pro/model/BaseEntity;Z)V

    .line 110
    invoke-virtual {p0, p1}, Lim/doit/pro/db/persist/TaskContextDao;->updateAndSaveLog(Lim/doit/pro/model/TaskContext;)V

    .line 111
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v5

    iget-object v5, v5, Lim/doit/pro/db/Persist;->taskDao:Lim/doit/pro/db/persist/TaskDao;

    invoke-virtual {v5, v1}, Lim/doit/pro/db/persist/TaskDao;->findAllByTaskContext(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 112
    .local v4, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/Task;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_0

    .line 116
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v5

    iget-object v5, v5, Lim/doit/pro/db/Persist;->projectDao:Lim/doit/pro/db/persist/ProjectDao;

    invoke-virtual {v5, v1}, Lim/doit/pro/db/persist/ProjectDao;->findAllByContext(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 117
    .local v3, "projects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/Project;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_1

    .line 121
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v5

    iget-object v5, v5, Lim/doit/pro/db/Persist;->opLogDao:Lim/doit/pro/db/persist/OpLogDao;

    sget-object v6, Lim/doit/pro/model/OpLog$ItemType;->goal:Lim/doit/pro/model/OpLog$ItemType;

    invoke-virtual {v5, v6, v1, v2}, Lim/doit/pro/db/persist/OpLogDao;->updateConflictUUID(Lim/doit/pro/model/OpLog$ItemType;Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    return-void

    .line 112
    .end local v3    # "projects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/Project;>;"
    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lim/doit/pro/model/Task;

    .line 113
    .local v0, "item":Lim/doit/pro/model/Task;
    invoke-virtual {v0, v2}, Lim/doit/pro/model/Task;->setContext(Ljava/lang/String;)V

    .line 114
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v6

    iget-object v6, v6, Lim/doit/pro/db/Persist;->taskDao:Lim/doit/pro/db/persist/TaskDao;

    invoke-virtual {v6, v0}, Lim/doit/pro/db/persist/TaskDao;->updateAndSaveLog(Lim/doit/pro/model/Task;)V

    goto :goto_0

    .line 117
    .end local v0    # "item":Lim/doit/pro/model/Task;
    .restart local v3    # "projects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/Project;>;"
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lim/doit/pro/model/Project;

    .line 118
    .local v0, "item":Lim/doit/pro/model/Project;
    invoke-virtual {v0, v2}, Lim/doit/pro/model/Project;->setContext(Ljava/lang/String;)V

    .line 119
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v6

    iget-object v6, v6, Lim/doit/pro/db/Persist;->projectDao:Lim/doit/pro/db/persist/ProjectDao;

    invoke-virtual {v6, v0}, Lim/doit/pro/db/persist/ProjectDao;->updateAndSaveLog(Lim/doit/pro/model/Project;)V

    goto :goto_1
.end method

.method public updatePos(Lim/doit/pro/model/TaskContext;)V
    .locals 4
    .param p1, "t"    # Lim/doit/pro/model/TaskContext;

    .prologue
    const/4 v1, 0x0

    .line 54
    invoke-virtual {p1}, Lim/doit/pro/model/TaskContext;->getUuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lim/doit/pro/model/TaskContext;->getPos()J

    move-result-wide v2

    invoke-super {p0, v0, v2, v3}, Lim/doit/pro/db/persist/DBaseDao;->updatePos(Ljava/lang/String;J)V

    .line 55
    invoke-direct {p0, p1, v1, v1}, Lim/doit/pro/db/persist/TaskContextDao;->afterUpdate(Lim/doit/pro/model/TaskContext;ZZ)V

    .line 56
    return-void
.end method
