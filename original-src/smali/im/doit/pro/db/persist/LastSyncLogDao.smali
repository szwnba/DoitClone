.class public Lim/doit/pro/db/persist/LastSyncLogDao;
.super Lim/doit/pro/db/persist/BaseDao;
.source "LastSyncLogDao.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lim/doit/pro/db/persist/BaseDao",
        "<",
        "Lim/doit/pro/model/LastSyncLog;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 24
    const-string v0, "last_sync_logs"

    invoke-direct {p0, v0, p1}, Lim/doit/pro/db/persist/BaseDao;-><init>(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 25
    return-void
.end method


# virtual methods
.method protected colunms()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 109
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "created"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "item_id"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "extra_id"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 110
    const-string v2, "type"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "error_code"

    aput-object v2, v0, v1

    .line 109
    return-object v0
.end method

.method protected cursorToObject(Landroid/database/Cursor;)Lim/doit/pro/model/LastSyncLog;
    .locals 4
    .param p1, "c"    # Landroid/database/Cursor;

    .prologue
    .line 85
    new-instance v0, Lim/doit/pro/model/LastSyncLog;

    invoke-direct {v0}, Lim/doit/pro/model/LastSyncLog;-><init>()V

    .line 86
    .local v0, "item":Lim/doit/pro/model/LastSyncLog;
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lim/doit/pro/model/LastSyncLog;->setId(I)V

    .line 87
    const/4 v1, 0x1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lim/doit/pro/model/LastSyncLog;->setCreated(J)V

    .line 88
    const/4 v1, 0x2

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/model/LastSyncLog;->setItemId(Ljava/lang/String;)V

    .line 89
    const/4 v1, 0x3

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/model/LastSyncLog;->setExtraId(Ljava/lang/String;)V

    .line 90
    const/4 v1, 0x4

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lim/doit/pro/model/enums/SyncLogType;->getValue(Ljava/lang/String;)Lim/doit/pro/model/enums/SyncLogType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/model/LastSyncLog;->setType(Lim/doit/pro/model/enums/SyncLogType;)V

    .line 91
    const/4 v1, 0x5

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/model/LastSyncLog;->setErrorCode(Ljava/lang/String;)V

    .line 92
    return-object v0
.end method

.method protected bridge synthetic cursorToObject(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lim/doit/pro/db/persist/LastSyncLogDao;->cursorToObject(Landroid/database/Cursor;)Lim/doit/pro/model/LastSyncLog;

    move-result-object v0

    return-object v0
.end method

.method public findAllErrorLogs()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lim/doit/pro/model/LastSyncLog;",
            ">;"
        }
    .end annotation

    .prologue
    .line 50
    new-instance v0, Lim/doit/pro/db/persist/utils/SQLBuilder;

    invoke-direct {v0}, Lim/doit/pro/db/persist/utils/SQLBuilder;-><init>()V

    .line 51
    .local v0, "sql":Lim/doit/pro/db/persist/utils/SQLBuilder;
    const-string v1, "type"

    invoke-virtual {v0, v1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->append(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v1

    sget-object v2, Lim/doit/pro/model/enums/SyncLogType;->SUCCESS:Lim/doit/pro/model/enums/SyncLogType;

    invoke-static {v2}, Lim/doit/pro/model/enums/SyncLogType;->toString(Lim/doit/pro/model/enums/SyncLogType;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lim/doit/pro/db/persist/utils/SQLBuilder;->neq(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    .line 52
    invoke-virtual {v0}, Lim/doit/pro/db/persist/utils/SQLBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lim/doit/pro/db/persist/LastSyncLogDao;->findList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public findLastErrorLog()Lim/doit/pro/model/LastSyncLog;
    .locals 3

    .prologue
    .line 44
    new-instance v0, Lim/doit/pro/db/persist/utils/SQLBuilder;

    invoke-direct {v0}, Lim/doit/pro/db/persist/utils/SQLBuilder;-><init>()V

    .line 45
    .local v0, "sql":Lim/doit/pro/db/persist/utils/SQLBuilder;
    const-string v1, "type"

    invoke-virtual {v0, v1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->append(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v1

    sget-object v2, Lim/doit/pro/model/enums/SyncLogType;->SUCCESS:Lim/doit/pro/model/enums/SyncLogType;

    invoke-static {v2}, Lim/doit/pro/model/enums/SyncLogType;->toString(Lim/doit/pro/model/enums/SyncLogType;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lim/doit/pro/db/persist/utils/SQLBuilder;->neq(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    .line 46
    invoke-virtual {v0}, Lim/doit/pro/db/persist/utils/SQLBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lim/doit/pro/db/persist/LastSyncLogDao;->findOne(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lim/doit/pro/model/LastSyncLog;

    return-object v1
.end method

.method public findSuccessLog()Lim/doit/pro/model/LastSyncLog;
    .locals 3

    .prologue
    .line 38
    new-instance v0, Lim/doit/pro/db/persist/utils/SQLBuilder;

    invoke-direct {v0}, Lim/doit/pro/db/persist/utils/SQLBuilder;-><init>()V

    .line 39
    .local v0, "sql":Lim/doit/pro/db/persist/utils/SQLBuilder;
    const-string v1, "type"

    invoke-virtual {v0, v1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->append(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v1

    sget-object v2, Lim/doit/pro/model/enums/SyncLogType;->SUCCESS:Lim/doit/pro/model/enums/SyncLogType;

    invoke-static {v2}, Lim/doit/pro/model/enums/SyncLogType;->toString(Lim/doit/pro/model/enums/SyncLogType;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lim/doit/pro/db/persist/utils/SQLBuilder;->eq(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    .line 40
    invoke-virtual {v0}, Lim/doit/pro/db/persist/utils/SQLBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lim/doit/pro/db/persist/LastSyncLogDao;->findOne(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lim/doit/pro/model/LastSyncLog;

    return-object v1
.end method

.method public isSuccess()Z
    .locals 4

    .prologue
    .line 28
    new-instance v1, Lim/doit/pro/db/persist/utils/SQLBuilder;

    invoke-direct {v1}, Lim/doit/pro/db/persist/utils/SQLBuilder;-><init>()V

    .line 29
    .local v1, "sql":Lim/doit/pro/db/persist/utils/SQLBuilder;
    const-string v2, "type"

    invoke-virtual {v1, v2}, Lim/doit/pro/db/persist/utils/SQLBuilder;->append(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v2

    sget-object v3, Lim/doit/pro/model/enums/SyncLogType;->SUCCESS:Lim/doit/pro/model/enums/SyncLogType;

    invoke-static {v3}, Lim/doit/pro/model/enums/SyncLogType;->toString(Lim/doit/pro/model/enums/SyncLogType;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lim/doit/pro/db/persist/utils/SQLBuilder;->eq(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    .line 30
    invoke-virtual {v1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lim/doit/pro/db/persist/LastSyncLogDao;->count(Ljava/lang/String;)I

    move-result v0

    .line 31
    .local v0, "count":I
    if-lez v0, :cond_0

    .line 32
    const/4 v2, 0x1

    .line 34
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected objectToContentValues(Lim/doit/pro/model/LastSyncLog;Z)Landroid/content/ContentValues;
    .locals 4
    .param p1, "t"    # Lim/doit/pro/model/LastSyncLog;
    .param p2, "isDownload"    # Z

    .prologue
    .line 98
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 99
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "created"

    invoke-virtual {p1}, Lim/doit/pro/model/LastSyncLog;->getCreated()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 100
    const-string v1, "item_id"

    invoke-virtual {p1}, Lim/doit/pro/model/LastSyncLog;->getItemId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const-string v1, "extra_id"

    invoke-virtual {p1}, Lim/doit/pro/model/LastSyncLog;->getExtraId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const-string v1, "type"

    invoke-virtual {p1}, Lim/doit/pro/model/LastSyncLog;->getType()Lim/doit/pro/model/enums/SyncLogType;

    move-result-object v2

    invoke-virtual {v2}, Lim/doit/pro/model/enums/SyncLogType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    const-string v1, "error_code"

    invoke-virtual {p1}, Lim/doit/pro/model/LastSyncLog;->getErrorCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    return-object v0
.end method

.method protected bridge synthetic objectToContentValues(Ljava/lang/Object;Z)Landroid/content/ContentValues;
    .locals 1

    .prologue
    .line 1
    check-cast p1, Lim/doit/pro/model/LastSyncLog;

    invoke-virtual {p0, p1, p2}, Lim/doit/pro/db/persist/LastSyncLogDao;->objectToContentValues(Lim/doit/pro/model/LastSyncLog;Z)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method protected order()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    const-string v0, "created"

    invoke-virtual {p0, v0}, Lim/doit/pro/db/persist/LastSyncLogDao;->desc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public saveErrorLog(Ljava/lang/String;Ljava/lang/String;Lim/doit/pro/model/enums/SyncLogType;Ljava/lang/String;)V
    .locals 6
    .param p1, "itemId"    # Ljava/lang/String;
    .param p2, "extraId"    # Ljava/lang/String;
    .param p3, "type"    # Lim/doit/pro/model/enums/SyncLogType;
    .param p4, "errorCode"    # Ljava/lang/String;

    .prologue
    .line 70
    new-instance v1, Lim/doit/pro/db/persist/utils/SQLBuilder;

    invoke-direct {v1}, Lim/doit/pro/db/persist/utils/SQLBuilder;-><init>()V

    .line 71
    .local v1, "sql":Lim/doit/pro/db/persist/utils/SQLBuilder;
    const-string v2, "type"

    invoke-virtual {v1, v2}, Lim/doit/pro/db/persist/utils/SQLBuilder;->append(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v2

    sget-object v3, Lim/doit/pro/model/enums/SyncLogType;->SUCCESS:Lim/doit/pro/model/enums/SyncLogType;

    invoke-static {v3}, Lim/doit/pro/model/enums/SyncLogType;->toString(Lim/doit/pro/model/enums/SyncLogType;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lim/doit/pro/db/persist/utils/SQLBuilder;->eq(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    .line 72
    iget-object v2, p0, Lim/doit/pro/db/persist/LastSyncLogDao;->db:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v3, p0, Lim/doit/pro/db/persist/LastSyncLogDao;->tableName:Ljava/lang/String;

    invoke-virtual {v1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 74
    new-instance v0, Lim/doit/pro/model/LastSyncLog;

    invoke-direct {v0}, Lim/doit/pro/model/LastSyncLog;-><init>()V

    .line 75
    .local v0, "item":Lim/doit/pro/model/LastSyncLog;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lim/doit/pro/model/LastSyncLog;->setCreated(J)V

    .line 76
    invoke-virtual {v0, p1}, Lim/doit/pro/model/LastSyncLog;->setItemId(Ljava/lang/String;)V

    .line 77
    invoke-virtual {v0, p2}, Lim/doit/pro/model/LastSyncLog;->setExtraId(Ljava/lang/String;)V

    .line 78
    invoke-virtual {v0, p3}, Lim/doit/pro/model/LastSyncLog;->setType(Lim/doit/pro/model/enums/SyncLogType;)V

    .line 79
    invoke-virtual {v0, p4}, Lim/doit/pro/model/LastSyncLog;->setErrorCode(Ljava/lang/String;)V

    .line 80
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lim/doit/pro/db/persist/LastSyncLogDao;->create(Ljava/lang/Object;Z)V

    .line 81
    return-void
.end method

.method public saveSuccessLog()V
    .locals 6

    .prologue
    .line 57
    new-instance v1, Lim/doit/pro/db/persist/utils/SQLBuilder;

    invoke-direct {v1}, Lim/doit/pro/db/persist/utils/SQLBuilder;-><init>()V

    .line 58
    .local v1, "sql":Lim/doit/pro/db/persist/utils/SQLBuilder;
    const-string v2, "type"

    invoke-virtual {v1, v2}, Lim/doit/pro/db/persist/utils/SQLBuilder;->append(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v2

    sget-object v3, Lim/doit/pro/model/enums/SyncLogType;->SUCCESS:Lim/doit/pro/model/enums/SyncLogType;

    invoke-static {v3}, Lim/doit/pro/model/enums/SyncLogType;->toString(Lim/doit/pro/model/enums/SyncLogType;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lim/doit/pro/db/persist/utils/SQLBuilder;->neq(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    .line 59
    iget-object v2, p0, Lim/doit/pro/db/persist/LastSyncLogDao;->db:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v3, p0, Lim/doit/pro/db/persist/LastSyncLogDao;->tableName:Ljava/lang/String;

    invoke-virtual {v1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 61
    new-instance v0, Lim/doit/pro/model/LastSyncLog;

    invoke-direct {v0}, Lim/doit/pro/model/LastSyncLog;-><init>()V

    .line 62
    .local v0, "item":Lim/doit/pro/model/LastSyncLog;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lim/doit/pro/model/LastSyncLog;->setCreated(J)V

    .line 63
    sget-object v2, Lim/doit/pro/model/enums/SyncLogType;->SUCCESS:Lim/doit/pro/model/enums/SyncLogType;

    invoke-virtual {v0, v2}, Lim/doit/pro/model/LastSyncLog;->setType(Lim/doit/pro/model/enums/SyncLogType;)V

    .line 64
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lim/doit/pro/db/persist/LastSyncLogDao;->create(Ljava/lang/Object;Z)V

    .line 65
    return-void
.end method
