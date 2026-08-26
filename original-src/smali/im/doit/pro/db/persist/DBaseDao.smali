.class public abstract Lim/doit/pro/db/persist/DBaseDao;
.super Lim/doit/pro/db/persist/BaseDao;
.source "DBaseDao.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lim/doit/pro/model/BaseEntity;",
        ">",
        "Lim/doit/pro/db/persist/BaseDao",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .param p1, "tableName"    # Ljava/lang/String;
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 33
    .local p0, "this":Lim/doit/pro/db/persist/DBaseDao;, "Lim/doit/pro/db/persist/DBaseDao<TT;>;"
    invoke-direct {p0, p1, p2}, Lim/doit/pro/db/persist/BaseDao;-><init>(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 34
    return-void
.end method

.method private mergeTheSameName(Lim/doit/pro/model/BaseEntity;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .line 165
    .local p0, "this":Lim/doit/pro/db/persist/DBaseDao;, "Lim/doit/pro/db/persist/DBaseDao<TT;>;"
    .local p1, "t":Lim/doit/pro/model/BaseEntity;, "TT;"
    instance-of v0, p1, Lim/doit/pro/model/Project;

    if-eqz v0, :cond_0

    .line 166
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v0

    iget-object v0, v0, Lim/doit/pro/db/Persist;->projectDao:Lim/doit/pro/db/persist/ProjectDao;

    check-cast p1, Lim/doit/pro/model/Project;

    .end local p1    # "t":Lim/doit/pro/model/BaseEntity;, "TT;"
    invoke-virtual {v0, p1}, Lim/doit/pro/db/persist/ProjectDao;->mergeTheSameName(Lim/doit/pro/model/Project;)Z

    move-result v0

    .line 174
    :goto_0
    return v0

    .line 167
    .restart local p1    # "t":Lim/doit/pro/model/BaseEntity;, "TT;"
    :cond_0
    instance-of v0, p1, Lim/doit/pro/model/TaskContext;

    if-eqz v0, :cond_1

    .line 168
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v0

    iget-object v0, v0, Lim/doit/pro/db/Persist;->taskContextDao:Lim/doit/pro/db/persist/TaskContextDao;

    check-cast p1, Lim/doit/pro/model/TaskContext;

    .end local p1    # "t":Lim/doit/pro/model/BaseEntity;, "TT;"
    invoke-virtual {v0, p1}, Lim/doit/pro/db/persist/TaskContextDao;->mergeTheSameName(Lim/doit/pro/model/TaskContext;)Z

    move-result v0

    goto :goto_0

    .line 169
    .restart local p1    # "t":Lim/doit/pro/model/BaseEntity;, "TT;"
    :cond_1
    instance-of v0, p1, Lim/doit/pro/model/Goal;

    if-eqz v0, :cond_2

    .line 170
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v0

    iget-object v0, v0, Lim/doit/pro/db/Persist;->goalDao:Lim/doit/pro/db/persist/GoalDao;

    check-cast p1, Lim/doit/pro/model/Goal;

    .end local p1    # "t":Lim/doit/pro/model/BaseEntity;, "TT;"
    invoke-virtual {v0, p1}, Lim/doit/pro/db/persist/GoalDao;->mergeTheSameName(Lim/doit/pro/model/Goal;)Z

    move-result v0

    goto :goto_0

    .line 171
    .restart local p1    # "t":Lim/doit/pro/model/BaseEntity;, "TT;"
    :cond_2
    instance-of v0, p1, Lim/doit/pro/model/Tag;

    if-eqz v0, :cond_3

    .line 172
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v0

    iget-object v0, v0, Lim/doit/pro/db/Persist;->tagDao:Lim/doit/pro/db/persist/TagDao;

    check-cast p1, Lim/doit/pro/model/Tag;

    .end local p1    # "t":Lim/doit/pro/model/BaseEntity;, "TT;"
    invoke-virtual {v0, p1}, Lim/doit/pro/db/persist/TagDao;->mergeTheSameName(Lim/doit/pro/model/Tag;)Z

    move-result v0

    goto :goto_0

    .line 174
    .restart local p1    # "t":Lim/doit/pro/model/BaseEntity;, "TT;"
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateTimestamps(Ljava/lang/String;Ljava/lang/String;Ljava/util/Calendar;)V
    .locals 5
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "millis"    # Ljava/util/Calendar;

    .prologue
    .line 158
    .local p0, "this":Lim/doit/pro/db/persist/DBaseDao;, "Lim/doit/pro/db/persist/DBaseDao<TT;>;"
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 159
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "updated"

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 160
    invoke-static {p3}, Lim/doit/pro/utils/DateUtils;->convertToLong(Ljava/util/Calendar;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 161
    iget-object v1, p0, Lim/doit/pro/db/persist/DBaseDao;->db:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v2, p0, Lim/doit/pro/db/persist/DBaseDao;->tableName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lim/doit/pro/db/persist/DBaseDao;->uuidClause(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lim/doit/pro/db/persist/utils/SQLBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 162
    return-void
.end method


# virtual methods
.method protected afterUpdate(Lim/doit/pro/model/BaseEntity;Z)V
    .locals 4
    .param p2, "isDownload"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)V"
        }
    .end annotation

    .prologue
    .line 145
    .local p0, "this":Lim/doit/pro/db/persist/DBaseDao;, "Lim/doit/pro/db/persist/DBaseDao<TT;>;"
    .local p1, "t":Lim/doit/pro/model/BaseEntity;, "TT;"
    invoke-super {p0, p1, p2}, Lim/doit/pro/db/persist/BaseDao;->afterUpdate(Ljava/lang/Object;Z)V

    .line 146
    if-eqz p2, :cond_1

    .line 147
    move-object v1, p1

    .line 148
    .local v1, "item":Lim/doit/pro/model/BaseEntity;
    invoke-virtual {v1}, Lim/doit/pro/model/BaseEntity;->getUuid()Ljava/lang/String;

    move-result-object v2

    .line 149
    .local v2, "uuid":Ljava/lang/String;
    const/4 v0, 0x0

    .line 150
    .local v0, "extraId":Ljava/lang/String;
    instance-of v3, v1, Lim/doit/pro/model/Task;

    if-eqz v3, :cond_0

    .line 151
    check-cast v1, Lim/doit/pro/model/Task;

    .end local v1    # "item":Lim/doit/pro/model/BaseEntity;
    invoke-virtual {v1}, Lim/doit/pro/model/Task;->getRepeatNo()Ljava/lang/String;

    move-result-object v0

    .line 153
    :cond_0
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v3

    iget-object v3, v3, Lim/doit/pro/db/Persist;->opLogDao:Lim/doit/pro/db/persist/OpLogDao;

    invoke-virtual {v3, v2, v0}, Lim/doit/pro/db/persist/OpLogDao;->deleteByItemId(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    .end local v0    # "extraId":Ljava/lang/String;
    .end local v2    # "uuid":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method protected bridge synthetic afterUpdate(Ljava/lang/Object;Z)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lim/doit/pro/model/BaseEntity;

    invoke-virtual {p0, p1, p2}, Lim/doit/pro/db/persist/DBaseDao;->afterUpdate(Lim/doit/pro/model/BaseEntity;Z)V

    return-void
.end method

.method protected archive(Ljava/lang/String;Ljava/util/Calendar;)V
    .locals 1
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "archived"    # Ljava/util/Calendar;

    .prologue
    .line 132
    .local p0, "this":Lim/doit/pro/db/persist/DBaseDao;, "Lim/doit/pro/db/persist/DBaseDao<TT;>;"
    const-string v0, "archived"

    invoke-direct {p0, p1, v0, p2}, Lim/doit/pro/db/persist/DBaseDao;->updateTimestamps(Ljava/lang/String;Ljava/lang/String;Ljava/util/Calendar;)V

    .line 133
    return-void
.end method

.method public batchCreateOrUpdate(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 37
    .local p0, "this":Lim/doit/pro/db/persist/DBaseDao;, "Lim/doit/pro/db/persist/DBaseDao<TT;>;"
    .local p1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    invoke-static {p1}, Lim/doit/pro/utils/CollectionUtils;->isEmpty(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 53
    :goto_0
    return-void

    .line 41
    :cond_0
    :try_start_0
    iget-object v1, p0, Lim/doit/pro/db/persist/DBaseDao;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 42
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 49
    iget-object v1, p0, Lim/doit/pro/db/persist/DBaseDao;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    iget-object v1, p0, Lim/doit/pro/db/persist/DBaseDao;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0

    .line 42
    :cond_1
    :try_start_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lim/doit/pro/model/BaseEntity;

    .line 43
    .local v0, "t":Lim/doit/pro/model/BaseEntity;, "TT;"
    invoke-virtual {v0}, Lim/doit/pro/model/BaseEntity;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lim/doit/pro/db/persist/DBaseDao;->isExistedByUUID(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-direct {p0, v0}, Lim/doit/pro/db/persist/DBaseDao;->mergeTheSameName(Lim/doit/pro/model/BaseEntity;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 44
    :cond_2
    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2}, Lim/doit/pro/db/persist/DBaseDao;->update(Lim/doit/pro/model/BaseEntity;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 50
    .end local v0    # "t":Lim/doit/pro/model/BaseEntity;, "TT;"
    :catchall_0
    move-exception v1

    .line 51
    iget-object v2, p0, Lim/doit/pro/db/persist/DBaseDao;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 52
    throw v1

    .line 46
    .restart local v0    # "t":Lim/doit/pro/model/BaseEntity;, "TT;"
    :cond_3
    const/4 v2, 0x1

    :try_start_2
    invoke-virtual {p0, v0, v2}, Lim/doit/pro/db/persist/DBaseDao;->create(Ljava/lang/Object;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method protected complete(Ljava/lang/String;Ljava/util/Calendar;)V
    .locals 1
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "completed"    # Ljava/util/Calendar;

    .prologue
    .line 116
    .local p0, "this":Lim/doit/pro/db/persist/DBaseDao;, "Lim/doit/pro/db/persist/DBaseDao<TT;>;"
    const-string v0, "completed"

    invoke-direct {p0, p1, v0, p2}, Lim/doit/pro/db/persist/DBaseDao;->updateTimestamps(Ljava/lang/String;Ljava/lang/String;Ljava/util/Calendar;)V

    .line 117
    return-void
.end method

.method protected createAndSaveLog(Lim/doit/pro/model/BaseEntity;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 87
    .local p0, "this":Lim/doit/pro/db/persist/DBaseDao;, "Lim/doit/pro/db/persist/DBaseDao<TT;>;"
    .local p1, "t":Lim/doit/pro/model/BaseEntity;, "TT;"
    invoke-virtual {p1}, Lim/doit/pro/model/BaseEntity;->getUuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lim/doit/pro/db/persist/DBaseDao;->isExistedByUUID(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    invoke-virtual {p0, p1}, Lim/doit/pro/db/persist/DBaseDao;->updateAndSaveLog(Lim/doit/pro/model/BaseEntity;)V

    .line 95
    :goto_0
    return-void

    .line 91
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {p1, v0}, Lim/doit/pro/model/BaseEntity;->setCreated(Ljava/util/Calendar;)V

    .line 92
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {p1, v0}, Lim/doit/pro/model/BaseEntity;->setUpdated(Ljava/util/Calendar;)V

    .line 93
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lim/doit/pro/db/persist/DBaseDao;->create(Ljava/lang/Object;Z)V

    .line 94
    invoke-virtual {p1}, Lim/doit/pro/model/BaseEntity;->getUuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lim/doit/pro/db/persist/DBaseDao;->saveCreateLog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected delete(Ljava/lang/String;Ljava/util/Calendar;)V
    .locals 1
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "deleted"    # Ljava/util/Calendar;

    .prologue
    .line 136
    .local p0, "this":Lim/doit/pro/db/persist/DBaseDao;, "Lim/doit/pro/db/persist/DBaseDao<TT;>;"
    const-string v0, "deleted"

    invoke-direct {p0, p1, v0, p2}, Lim/doit/pro/db/persist/DBaseDao;->updateTimestamps(Ljava/lang/String;Ljava/lang/String;Ljava/util/Calendar;)V

    .line 137
    return-void
.end method

.method public findByUUID(Ljava/lang/String;)Lim/doit/pro/model/BaseEntity;
    .locals 1
    .param p1, "uuid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 77
    .local p0, "this":Lim/doit/pro/db/persist/DBaseDao;, "Lim/doit/pro/db/persist/DBaseDao<TT;>;"
    invoke-virtual {p0, p1}, Lim/doit/pro/db/persist/DBaseDao;->uuidClause(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lim/doit/pro/db/persist/utils/SQLBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lim/doit/pro/db/persist/DBaseDao;->findOne(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lim/doit/pro/model/BaseEntity;

    return-object v0
.end method

.method public isExisted(Ljava/lang/String;)Z
    .locals 11
    .param p1, "sql"    # Ljava/lang/String;

    .prologue
    .local p0, "this":Lim/doit/pro/db/persist/DBaseDao;, "Lim/doit/pro/db/persist/DBaseDao<TT;>;"
    const/4 v4, 0x0

    .line 56
    iget-object v0, p0, Lim/doit/pro/db/persist/DBaseDao;->db:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v1, p0, Lim/doit/pro/db/persist/DBaseDao;->tableName:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "uuid"

    aput-object v5, v2, v3

    move-object v3, p1

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 57
    .local v8, "c":Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v9

    .line 58
    .local v9, "numRows":I
    const/4 v10, 0x0

    .line 59
    .local v10, "result":Z
    if-lez v9, :cond_0

    .line 60
    const/4 v10, 0x1

    .line 62
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 63
    return v10
.end method

.method public isExistedByUUID(Ljava/lang/String;)Z
    .locals 1
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    .line 67
    .local p0, "this":Lim/doit/pro/db/persist/DBaseDao;, "Lim/doit/pro/db/persist/DBaseDao<TT;>;"
    invoke-virtual {p0, p1}, Lim/doit/pro/db/persist/DBaseDao;->uuidClause(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lim/doit/pro/db/persist/utils/SQLBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lim/doit/pro/db/persist/DBaseDao;->isExisted(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected abstract saveCreateLog(Ljava/lang/String;)V
.end method

.method protected abstract saveDeleteLog(Ljava/lang/String;)V
.end method

.method protected abstract saveUpdateLog(Ljava/lang/String;)V
.end method

.method protected trash(Ljava/lang/String;Ljava/util/Calendar;)V
    .locals 1
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "trashed"    # Ljava/util/Calendar;

    .prologue
    .line 124
    .local p0, "this":Lim/doit/pro/db/persist/DBaseDao;, "Lim/doit/pro/db/persist/DBaseDao<TT;>;"
    const-string v0, "trashed"

    invoke-direct {p0, p1, v0, p2}, Lim/doit/pro/db/persist/DBaseDao;->updateTimestamps(Ljava/lang/String;Ljava/lang/String;Ljava/util/Calendar;)V

    .line 125
    return-void
.end method

.method protected uncomplete(Ljava/lang/String;)V
    .locals 2
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    .line 120
    .local p0, "this":Lim/doit/pro/db/persist/DBaseDao;, "Lim/doit/pro/db/persist/DBaseDao<TT;>;"
    const-string v0, "completed"

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lim/doit/pro/db/persist/DBaseDao;->updateTimestamps(Ljava/lang/String;Ljava/lang/String;Ljava/util/Calendar;)V

    .line 121
    return-void
.end method

.method protected untrash(Ljava/lang/String;)V
    .locals 2
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    .line 128
    .local p0, "this":Lim/doit/pro/db/persist/DBaseDao;, "Lim/doit/pro/db/persist/DBaseDao<TT;>;"
    const-string v0, "trashed"

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lim/doit/pro/db/persist/DBaseDao;->updateTimestamps(Ljava/lang/String;Ljava/lang/String;Ljava/util/Calendar;)V

    .line 129
    return-void
.end method

.method protected update(Lim/doit/pro/model/BaseEntity;Z)V
    .locals 1
    .param p2, "isDownload"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)V"
        }
    .end annotation

    .prologue
    .line 140
    .local p0, "this":Lim/doit/pro/db/persist/DBaseDao;, "Lim/doit/pro/db/persist/DBaseDao<TT;>;"
    .local p1, "t":Lim/doit/pro/model/BaseEntity;, "TT;"
    invoke-virtual {p1}, Lim/doit/pro/model/BaseEntity;->getUuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lim/doit/pro/db/persist/DBaseDao;->uuidClause(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lim/doit/pro/db/persist/utils/SQLBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, p1, v0, p2}, Lim/doit/pro/db/persist/BaseDao;->update(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 141
    return-void
.end method

.method protected updateAndSaveLog(Lim/doit/pro/model/BaseEntity;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 98
    .local p0, "this":Lim/doit/pro/db/persist/DBaseDao;, "Lim/doit/pro/db/persist/DBaseDao<TT;>;"
    .local p1, "t":Lim/doit/pro/model/BaseEntity;, "TT;"
    invoke-virtual {p1}, Lim/doit/pro/model/BaseEntity;->getUuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lim/doit/pro/db/persist/DBaseDao;->isExistedByUUID(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 99
    invoke-virtual {p0, p1}, Lim/doit/pro/db/persist/DBaseDao;->createAndSaveLog(Lim/doit/pro/model/BaseEntity;)V

    .line 105
    :goto_0
    return-void

    .line 102
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {p1, v0}, Lim/doit/pro/model/BaseEntity;->setUpdated(Ljava/util/Calendar;)V

    .line 103
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lim/doit/pro/db/persist/DBaseDao;->update(Lim/doit/pro/model/BaseEntity;Z)V

    .line 104
    invoke-virtual {p1}, Lim/doit/pro/model/BaseEntity;->getUuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lim/doit/pro/db/persist/DBaseDao;->saveUpdateLog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected updatePos(Ljava/lang/String;J)V
    .locals 6
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "pos"    # J

    .prologue
    .line 108
    .local p0, "this":Lim/doit/pro/db/persist/DBaseDao;, "Lim/doit/pro/db/persist/DBaseDao<TT;>;"
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 109
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "updated"

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 110
    const-string v1, "pos"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 111
    iget-object v1, p0, Lim/doit/pro/db/persist/DBaseDao;->db:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v2, p0, Lim/doit/pro/db/persist/DBaseDao;->tableName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lim/doit/pro/db/persist/DBaseDao;->uuidClause(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lim/doit/pro/db/persist/utils/SQLBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 112
    invoke-virtual {p0, p1}, Lim/doit/pro/db/persist/DBaseDao;->saveUpdateLog(Ljava/lang/String;)V

    .line 113
    return-void
.end method

.method public updateUsn(Ljava/lang/String;J)V
    .locals 6
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "usn"    # J

    .prologue
    .line 81
    .local p0, "this":Lim/doit/pro/db/persist/DBaseDao;, "Lim/doit/pro/db/persist/DBaseDao<TT;>;"
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 82
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "usn"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 83
    iget-object v1, p0, Lim/doit/pro/db/persist/DBaseDao;->db:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v2, p0, Lim/doit/pro/db/persist/DBaseDao;->tableName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lim/doit/pro/db/persist/DBaseDao;->uuidClause(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lim/doit/pro/db/persist/utils/SQLBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 84
    return-void
.end method

.method public uuidClause(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;
    .locals 2
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    .line 71
    .local p0, "this":Lim/doit/pro/db/persist/DBaseDao;, "Lim/doit/pro/db/persist/DBaseDao<TT;>;"
    new-instance v0, Lim/doit/pro/db/persist/utils/SQLBuilder;

    invoke-direct {v0}, Lim/doit/pro/db/persist/utils/SQLBuilder;-><init>()V

    .line 72
    .local v0, "sql":Lim/doit/pro/db/persist/utils/SQLBuilder;
    const-string v1, "uuid"

    invoke-virtual {v0, v1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->append(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->eq(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    .line 73
    return-object v0
.end method
