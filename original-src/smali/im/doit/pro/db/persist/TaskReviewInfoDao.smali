.class public Lim/doit/pro/db/persist/TaskReviewInfoDao;
.super Lim/doit/pro/db/persist/DBaseDao;
.source "TaskReviewInfoDao.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lim/doit/pro/db/persist/DBaseDao",
        "<",
        "Lim/doit/pro/model/TaskReviewInfo;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 30
    const-string v0, "task_review_info"

    invoke-direct {p0, v0, p1}, Lim/doit/pro/db/persist/DBaseDao;-><init>(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 31
    return-void
.end method

.method private isExistedByUUID(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 11
    .param p1, "extraUuid"    # Ljava/lang/String;
    .param p2, "uuid"    # Ljava/lang/String;
    .param p3, "repeatNo"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 154
    iget-object v0, p0, Lim/doit/pro/db/persist/TaskReviewInfoDao;->db:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v1, p0, Lim/doit/pro/db/persist/TaskReviewInfoDao;->tableName:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "uuid"

    aput-object v5, v2, v3

    .line 155
    invoke-direct {p0, p1, p2, p3}, Lim/doit/pro/db/persist/TaskReviewInfoDao;->uuidClause(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lim/doit/pro/db/persist/utils/SQLBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    .line 154
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 157
    .local v8, "c":Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v9

    .line 158
    .local v9, "numRows":I
    const/4 v10, 0x0

    .line 159
    .local v10, "result":Z
    if-lez v9, :cond_0

    .line 160
    const/4 v10, 0x1

    .line 162
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 163
    return v10
.end method

.method private uuidClause(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;
    .locals 2
    .param p1, "dailyReviewUuid"    # Ljava/lang/String;
    .param p2, "uuid"    # Ljava/lang/String;
    .param p3, "repeatNo"    # Ljava/lang/String;

    .prologue
    .line 168
    new-instance v0, Lim/doit/pro/db/persist/utils/SQLBuilder;

    invoke-direct {v0}, Lim/doit/pro/db/persist/utils/SQLBuilder;-><init>()V

    .line 169
    .local v0, "sql":Lim/doit/pro/db/persist/utils/SQLBuilder;
    const-string v1, "extra_uuid"

    invoke-virtual {v0, v1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->append(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->eq(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    .line 170
    const-string v1, "uuid"

    invoke-virtual {v0, v1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->and(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Lim/doit/pro/db/persist/utils/SQLBuilder;->eq(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    .line 171
    invoke-static {p3}, Lim/doit/pro/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 172
    const-string v1, "repeat_no"

    invoke-virtual {v0, v1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->and(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->isNull()Lim/doit/pro/db/persist/utils/SQLBuilder;

    .line 176
    :goto_0
    return-object v0

    .line 174
    :cond_0
    const-string v1, "repeat_no"

    invoke-virtual {v0, v1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->and(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Lim/doit/pro/db/persist/utils/SQLBuilder;->eq(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    goto :goto_0
.end method


# virtual methods
.method public batchCreateOrUpdate(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 6
    .param p1, "dailyReviewUuid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lim/doit/pro/model/TaskReviewInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 35
    .local p2, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/TaskReviewInfo;>;"
    invoke-static {p2}, Lim/doit/pro/utils/CollectionUtils;->isEmpty(Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 65
    :goto_0
    return-void

    .line 39
    :cond_0
    :try_start_0
    iget-object v3, p0, Lim/doit/pro/db/persist/TaskReviewInfoDao;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 42
    new-instance v1, Lim/doit/pro/db/persist/utils/SQLBuilder;

    invoke-direct {v1}, Lim/doit/pro/db/persist/utils/SQLBuilder;-><init>()V

    .line 43
    .local v1, "sb":Lim/doit/pro/db/persist/utils/SQLBuilder;
    const-string v3, "extra_uuid"

    invoke-virtual {v1, v3}, Lim/doit/pro/db/persist/utils/SQLBuilder;->append(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->eq(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    .line 44
    invoke-virtual {v1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 45
    .local v0, "clause":Ljava/lang/String;
    iget-object v3, p0, Lim/doit/pro/db/persist/TaskReviewInfoDao;->db:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v4, p0, Lim/doit/pro/db/persist/TaskReviewInfoDao;->tableName:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 47
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_2

    .line 61
    iget-object v3, p0, Lim/doit/pro/db/persist/TaskReviewInfoDao;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    iget-object v3, p0, Lim/doit/pro/db/persist/TaskReviewInfoDao;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0

    .line 47
    :cond_2
    :try_start_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lim/doit/pro/model/TaskReviewInfo;

    .line 48
    .local v2, "t":Lim/doit/pro/model/TaskReviewInfo;
    if-eqz v2, :cond_1

    .line 51
    invoke-virtual {v2, p1}, Lim/doit/pro/model/TaskReviewInfo;->setDailyReviewUuid(Ljava/lang/String;)V

    .line 52
    invoke-virtual {v2}, Lim/doit/pro/model/TaskReviewInfo;->getUuid()Ljava/lang/String;

    move-result-object v4

    .line 53
    invoke-virtual {v2}, Lim/doit/pro/model/TaskReviewInfo;->getRepeatNo()Ljava/lang/String;

    move-result-object v5

    .line 52
    invoke-direct {p0, p1, v4, v5}, Lim/doit/pro/db/persist/TaskReviewInfoDao;->isExistedByUUID(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 53
    if-eqz v4, :cond_3

    .line 55
    invoke-virtual {v2}, Lim/doit/pro/model/TaskReviewInfo;->getUuid()Ljava/lang/String;

    move-result-object v4

    .line 56
    invoke-virtual {v2}, Lim/doit/pro/model/TaskReviewInfo;->getRepeatNo()Ljava/lang/String;

    move-result-object v5

    .line 55
    invoke-direct {p0, p1, v4, v5}, Lim/doit/pro/db/persist/TaskReviewInfoDao;->uuidClause(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v4

    .line 56
    invoke-virtual {v4}, Lim/doit/pro/db/persist/utils/SQLBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    .line 54
    invoke-virtual {p0, v2, v4, v5}, Lim/doit/pro/db/persist/TaskReviewInfoDao;->update(Ljava/lang/Object;Ljava/lang/String;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 62
    .end local v0    # "clause":Ljava/lang/String;
    .end local v1    # "sb":Lim/doit/pro/db/persist/utils/SQLBuilder;
    .end local v2    # "t":Lim/doit/pro/model/TaskReviewInfo;
    :catchall_0
    move-exception v3

    .line 63
    iget-object v4, p0, Lim/doit/pro/db/persist/TaskReviewInfoDao;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 64
    throw v3

    .line 58
    .restart local v0    # "clause":Ljava/lang/String;
    .restart local v1    # "sb":Lim/doit/pro/db/persist/utils/SQLBuilder;
    .restart local v2    # "t":Lim/doit/pro/model/TaskReviewInfo;
    :cond_3
    const/4 v4, 0x1

    :try_start_2
    invoke-virtual {p0, v2, v4}, Lim/doit/pro/db/persist/TaskReviewInfoDao;->create(Ljava/lang/Object;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method protected colunms()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 143
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "uuid"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "repeat_no"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "extra_uuid"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "completed"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "trashed"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 144
    const-string v2, "archived"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "deleted"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "spent_time"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "estimated_time"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "deferred"

    aput-object v2, v0, v1

    .line 143
    return-object v0
.end method

.method protected bridge synthetic createAndSaveLog(Lim/doit/pro/model/BaseEntity;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lim/doit/pro/model/TaskReviewInfo;

    invoke-virtual {p0, p1}, Lim/doit/pro/db/persist/TaskReviewInfoDao;->createAndSaveLog(Lim/doit/pro/model/TaskReviewInfo;)V

    return-void
.end method

.method protected createAndSaveLog(Lim/doit/pro/model/TaskReviewInfo;)V
    .locals 2
    .param p1, "t"    # Lim/doit/pro/model/TaskReviewInfo;

    .prologue
    .line 94
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "Don\'t use this method"

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 95
    return-void
.end method

.method protected cursorToObject(Landroid/database/Cursor;)Lim/doit/pro/model/TaskReviewInfo;
    .locals 4
    .param p1, "c"    # Landroid/database/Cursor;

    .prologue
    .line 110
    new-instance v0, Lim/doit/pro/model/TaskReviewInfo;

    invoke-direct {v0}, Lim/doit/pro/model/TaskReviewInfo;-><init>()V

    .line 111
    .local v0, "info":Lim/doit/pro/model/TaskReviewInfo;
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/model/TaskReviewInfo;->setUuid(Ljava/lang/String;)V

    .line 112
    const/4 v1, 0x1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/model/TaskReviewInfo;->setRepeatNo(Ljava/lang/String;)V

    .line 113
    const/4 v1, 0x2

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/model/TaskReviewInfo;->setDailyReviewUuid(Ljava/lang/String;)V

    .line 114
    const/4 v1, 0x3

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Lim/doit/pro/utils/DateUtils;->convertToDate(J)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/model/TaskReviewInfo;->setCompleted(Ljava/util/Calendar;)V

    .line 115
    const/4 v1, 0x4

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Lim/doit/pro/utils/DateUtils;->convertToDate(J)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/model/TaskReviewInfo;->setTrashed(Ljava/util/Calendar;)V

    .line 116
    const/4 v1, 0x5

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Lim/doit/pro/utils/DateUtils;->convertToDate(J)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/model/TaskReviewInfo;->setArchived(Ljava/util/Calendar;)V

    .line 117
    const/4 v1, 0x6

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Lim/doit/pro/utils/DateUtils;->convertToDate(J)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/model/TaskReviewInfo;->setDeleted(Ljava/util/Calendar;)V

    .line 118
    const/4 v1, 0x7

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lim/doit/pro/model/TaskReviewInfo;->setSpentTime(I)V

    .line 119
    const/16 v1, 0x8

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lim/doit/pro/model/TaskReviewInfo;->setEstimatedTime(I)V

    .line 120
    const/16 v1, 0x9

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lim/doit/pro/db/persist/TaskReviewInfoDao;->intToBoolean(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Lim/doit/pro/model/TaskReviewInfo;->setDeferred(Z)V

    .line 121
    return-object v0
.end method

.method protected bridge synthetic cursorToObject(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lim/doit/pro/db/persist/TaskReviewInfoDao;->cursorToObject(Landroid/database/Cursor;)Lim/doit/pro/model/TaskReviewInfo;

    move-result-object v0

    return-object v0
.end method

.method public findByDailyReview(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 2
    .param p1, "dailyReviewId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lim/doit/pro/model/TaskReviewInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 103
    new-instance v0, Lim/doit/pro/db/persist/utils/SQLBuilder;

    invoke-direct {v0}, Lim/doit/pro/db/persist/utils/SQLBuilder;-><init>()V

    .line 104
    .local v0, "sql":Lim/doit/pro/db/persist/utils/SQLBuilder;
    const-string v1, "extra_uuid"

    invoke-virtual {v0, v1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->append(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->eq(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    .line 105
    invoke-virtual {v0}, Lim/doit/pro/db/persist/utils/SQLBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lim/doit/pro/db/persist/TaskReviewInfoDao;->findList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method protected objectToContentValues(Lim/doit/pro/model/TaskReviewInfo;Z)Landroid/content/ContentValues;
    .locals 4
    .param p1, "t"    # Lim/doit/pro/model/TaskReviewInfo;
    .param p2, "isDownload"    # Z

    .prologue
    .line 127
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 128
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "uuid"

    invoke-virtual {p1}, Lim/doit/pro/model/TaskReviewInfo;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    const-string v1, "repeat_no"

    invoke-virtual {p1}, Lim/doit/pro/model/TaskReviewInfo;->getRepeatNo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    const-string v1, "extra_uuid"

    invoke-virtual {p1}, Lim/doit/pro/model/TaskReviewInfo;->getDailyReviewUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    const-string v1, "completed"

    invoke-virtual {p1}, Lim/doit/pro/model/TaskReviewInfo;->getCompleted()Ljava/util/Calendar;

    move-result-object v2

    invoke-static {v2}, Lim/doit/pro/utils/DateUtils;->convertToLong(Ljava/util/Calendar;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 132
    const-string v1, "trashed"

    invoke-virtual {p1}, Lim/doit/pro/model/TaskReviewInfo;->getTrashed()Ljava/util/Calendar;

    move-result-object v2

    invoke-static {v2}, Lim/doit/pro/utils/DateUtils;->convertToLong(Ljava/util/Calendar;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 133
    const-string v1, "archived"

    invoke-virtual {p1}, Lim/doit/pro/model/TaskReviewInfo;->getArchived()Ljava/util/Calendar;

    move-result-object v2

    invoke-static {v2}, Lim/doit/pro/utils/DateUtils;->convertToLong(Ljava/util/Calendar;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 134
    const-string v1, "deleted"

    invoke-virtual {p1}, Lim/doit/pro/model/TaskReviewInfo;->getDeleted()Ljava/util/Calendar;

    move-result-object v2

    invoke-static {v2}, Lim/doit/pro/utils/DateUtils;->convertToLong(Ljava/util/Calendar;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 135
    const-string v1, "spent_time"

    invoke-virtual {p1}, Lim/doit/pro/model/TaskReviewInfo;->getSpentTime()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 136
    const-string v1, "estimated_time"

    invoke-virtual {p1}, Lim/doit/pro/model/TaskReviewInfo;->getEstimatedTime()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 137
    const-string v1, "deferred"

    invoke-virtual {p1}, Lim/doit/pro/model/TaskReviewInfo;->isDeferred()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 138
    return-object v0
.end method

.method protected bridge synthetic objectToContentValues(Ljava/lang/Object;Z)Landroid/content/ContentValues;
    .locals 1

    .prologue
    .line 1
    check-cast p1, Lim/doit/pro/model/TaskReviewInfo;

    invoke-virtual {p0, p1, p2}, Lim/doit/pro/db/persist/TaskReviewInfoDao;->objectToContentValues(Lim/doit/pro/model/TaskReviewInfo;Z)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method protected order()Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    const/4 v0, 0x0

    return-object v0
.end method

.method protected saveCreateLog(Ljava/lang/String;)V
    .locals 2
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    .line 191
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "Don\'t use this method"

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 192
    return-void
.end method

.method protected saveDeleteLog(Ljava/lang/String;)V
    .locals 2
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    .line 181
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "Don\'t use this method"

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 182
    return-void
.end method

.method public saveOrUpdate(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lim/doit/pro/model/TaskReviewInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/TaskReviewInfo;>;"
    const/4 v5, 0x0

    .line 68
    invoke-static {p1}, Lim/doit/pro/utils/CollectionUtils;->isEmpty(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 82
    :cond_0
    return-void

    .line 71
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lim/doit/pro/model/TaskReviewInfo;

    .line 72
    .local v0, "t":Lim/doit/pro/model/TaskReviewInfo;
    invoke-virtual {v0}, Lim/doit/pro/model/TaskReviewInfo;->getDailyReviewUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lim/doit/pro/model/TaskReviewInfo;->getUuid()Ljava/lang/String;

    move-result-object v3

    .line 73
    invoke-virtual {v0}, Lim/doit/pro/model/TaskReviewInfo;->getRepeatNo()Ljava/lang/String;

    move-result-object v4

    .line 72
    invoke-direct {p0, v2, v3, v4}, Lim/doit/pro/db/persist/TaskReviewInfoDao;->isExistedByUUID(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 73
    if-eqz v2, :cond_2

    .line 74
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v0, v2}, Lim/doit/pro/model/TaskReviewInfo;->setUpdated(Ljava/util/Calendar;)V

    .line 75
    invoke-virtual {p0, v0, v5}, Lim/doit/pro/db/persist/TaskReviewInfoDao;->update(Lim/doit/pro/model/TaskReviewInfo;Z)V

    goto :goto_0

    .line 77
    :cond_2
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v0, v2}, Lim/doit/pro/model/TaskReviewInfo;->setCreated(Ljava/util/Calendar;)V

    .line 78
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v0, v2}, Lim/doit/pro/model/TaskReviewInfo;->setUpdated(Ljava/util/Calendar;)V

    .line 79
    invoke-virtual {p0, v0, v5}, Lim/doit/pro/db/persist/TaskReviewInfoDao;->create(Ljava/lang/Object;Z)V

    goto :goto_0
.end method

.method protected saveUpdateLog(Ljava/lang/String;)V
    .locals 2
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    .line 186
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "Don\'t use this method"

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 187
    return-void
.end method

.method protected bridge synthetic update(Lim/doit/pro/model/BaseEntity;Z)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lim/doit/pro/model/TaskReviewInfo;

    invoke-virtual {p0, p1, p2}, Lim/doit/pro/db/persist/TaskReviewInfoDao;->update(Lim/doit/pro/model/TaskReviewInfo;Z)V

    return-void
.end method

.method protected update(Lim/doit/pro/model/TaskReviewInfo;Z)V
    .locals 3
    .param p1, "t"    # Lim/doit/pro/model/TaskReviewInfo;
    .param p2, "isDownload"    # Z

    .prologue
    .line 86
    .line 88
    invoke-virtual {p1}, Lim/doit/pro/model/TaskReviewInfo;->getDailyReviewUuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lim/doit/pro/model/TaskReviewInfo;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lim/doit/pro/model/TaskReviewInfo;->getRepeatNo()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lim/doit/pro/db/persist/TaskReviewInfoDao;->uuidClause(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v0

    .line 89
    invoke-virtual {v0}, Lim/doit/pro/db/persist/utils/SQLBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    .line 86
    invoke-super {p0, p1, v0, p2}, Lim/doit/pro/db/persist/DBaseDao;->update(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 90
    return-void
.end method

.method public bridge synthetic updateAndSaveLog(Lim/doit/pro/model/BaseEntity;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lim/doit/pro/model/TaskReviewInfo;

    invoke-virtual {p0, p1}, Lim/doit/pro/db/persist/TaskReviewInfoDao;->updateAndSaveLog(Lim/doit/pro/model/TaskReviewInfo;)V

    return-void
.end method

.method public updateAndSaveLog(Lim/doit/pro/model/TaskReviewInfo;)V
    .locals 2
    .param p1, "t"    # Lim/doit/pro/model/TaskReviewInfo;

    .prologue
    .line 99
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "Don\'t use this method"

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 100
    return-void
.end method
