.class public Lim/doit/pro/db/persist/OpLogDao;
.super Lim/doit/pro/db/persist/BaseDao;
.source "OpLogDao.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lim/doit/pro/db/persist/BaseDao",
        "<",
        "Lim/doit/pro/model/OpLog;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 28
    const-string v0, "op_logs"

    invoke-direct {p0, v0, p1}, Lim/doit/pro/db/persist/BaseDao;-><init>(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 29
    return-void
.end method

.method private saveLog(Ljava/lang/String;Lim/doit/pro/model/OpLog$ItemType;Lim/doit/pro/model/OpLog$OpType;)V
    .locals 1
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "itemType"    # Lim/doit/pro/model/OpLog$ItemType;
    .param p3, "opType"    # Lim/doit/pro/model/OpLog$OpType;

    .prologue
    .line 208
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Lim/doit/pro/db/persist/OpLogDao;->saveLog(Ljava/lang/String;Ljava/lang/String;Lim/doit/pro/model/OpLog$ItemType;Lim/doit/pro/model/OpLog$OpType;)V

    .line 209
    return-void
.end method

.method private saveLog(Ljava/lang/String;Ljava/lang/String;Lim/doit/pro/model/OpLog$ItemType;Lim/doit/pro/model/OpLog$OpType;)V
    .locals 2
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "extraId"    # Ljava/lang/String;
    .param p3, "itemType"    # Lim/doit/pro/model/OpLog$ItemType;
    .param p4, "opType"    # Lim/doit/pro/model/OpLog$OpType;

    .prologue
    .line 213
    new-instance v0, Lim/doit/pro/model/OpLog;

    invoke-direct {v0}, Lim/doit/pro/model/OpLog;-><init>()V

    .line 214
    .local v0, "log":Lim/doit/pro/model/OpLog;
    invoke-virtual {v0, p4}, Lim/doit/pro/model/OpLog;->setOpType(Lim/doit/pro/model/OpLog$OpType;)V

    .line 215
    invoke-virtual {v0, p3}, Lim/doit/pro/model/OpLog;->setItemType(Lim/doit/pro/model/OpLog$ItemType;)V

    .line 216
    invoke-virtual {v0, p1}, Lim/doit/pro/model/OpLog;->setItemId(Ljava/lang/String;)V

    .line 217
    invoke-virtual {v0, p2}, Lim/doit/pro/model/OpLog;->setExtraId(Ljava/lang/String;)V

    .line 218
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lim/doit/pro/db/persist/OpLogDao;->create(Ljava/lang/Object;Z)V

    .line 219
    return-void
.end method


# virtual methods
.method protected colunms()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 198
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "created"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "op_type"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "item_type"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 199
    const-string v2, "item_id"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "extra_id"

    aput-object v2, v0, v1

    .line 198
    return-object v0
.end method

.method protected cursorToObject(Landroid/database/Cursor;)Lim/doit/pro/model/OpLog;
    .locals 4
    .param p1, "c"    # Landroid/database/Cursor;

    .prologue
    .line 175
    new-instance v0, Lim/doit/pro/model/OpLog;

    invoke-direct {v0}, Lim/doit/pro/model/OpLog;-><init>()V

    .line 176
    .local v0, "log":Lim/doit/pro/model/OpLog;
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lim/doit/pro/model/OpLog;->setId(I)V

    .line 177
    const/4 v1, 0x1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lim/doit/pro/model/OpLog;->setCreated(J)V

    .line 178
    const/4 v1, 0x2

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lim/doit/pro/model/OpLog$OpType;->valueOf(Ljava/lang/String;)Lim/doit/pro/model/OpLog$OpType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/model/OpLog;->setOpType(Lim/doit/pro/model/OpLog$OpType;)V

    .line 179
    const/4 v1, 0x3

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lim/doit/pro/model/OpLog$ItemType;->valueOf(Ljava/lang/String;)Lim/doit/pro/model/OpLog$ItemType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/model/OpLog;->setItemType(Lim/doit/pro/model/OpLog$ItemType;)V

    .line 180
    const/4 v1, 0x4

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/model/OpLog;->setItemId(Ljava/lang/String;)V

    .line 181
    const/4 v1, 0x5

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/model/OpLog;->setExtraId(Ljava/lang/String;)V

    .line 182
    return-object v0
.end method

.method protected bridge synthetic cursorToObject(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lim/doit/pro/db/persist/OpLogDao;->cursorToObject(Landroid/database/Cursor;)Lim/doit/pro/model/OpLog;

    move-result-object v0

    return-object v0
.end method

.method public delete(Lim/doit/pro/model/OpLog;)V
    .locals 6
    .param p1, "log"    # Lim/doit/pro/model/OpLog;

    .prologue
    .line 118
    iget-object v0, p0, Lim/doit/pro/db/persist/OpLogDao;->db:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v1, p0, Lim/doit/pro/db/persist/OpLogDao;->tableName:Ljava/lang/String;

    const-string v2, "_id=?"

    .line 119
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {p1}, Lim/doit/pro/model/OpLog;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 118
    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 120
    return-void
.end method

.method public deleteByItemId(Ljava/lang/String;)V
    .locals 1
    .param p1, "itemId"    # Ljava/lang/String;

    .prologue
    .line 123
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lim/doit/pro/db/persist/OpLogDao;->deleteByItemId(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    return-void
.end method

.method public deleteByItemId(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "itemId"    # Ljava/lang/String;
    .param p2, "extraId"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 127
    invoke-static {p1}, Lim/doit/pro/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 140
    :goto_0
    return-void

    .line 130
    :cond_0
    new-instance v0, Lim/doit/pro/db/persist/utils/SQLBuilder;

    invoke-direct {v0}, Lim/doit/pro/db/persist/utils/SQLBuilder;-><init>()V

    .line 131
    .local v0, "sql":Lim/doit/pro/db/persist/utils/SQLBuilder;
    const-string v1, "item_id"

    invoke-virtual {v0, v1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->append(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v1

    const-string v2, "?"

    invoke-virtual {v1, v2}, Lim/doit/pro/db/persist/utils/SQLBuilder;->eqWithArgs(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    .line 132
    invoke-static {p2}, Lim/doit/pro/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 133
    const-string v1, "extra_id"

    invoke-virtual {v0, v1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->and(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->isNull()Lim/doit/pro/db/persist/utils/SQLBuilder;

    .line 134
    iget-object v1, p0, Lim/doit/pro/db/persist/OpLogDao;->db:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v2, p0, Lim/doit/pro/db/persist/OpLogDao;->tableName:Ljava/lang/String;

    invoke-virtual {v0}, Lim/doit/pro/db/persist/utils/SQLBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/String;

    aput-object p1, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 136
    :cond_1
    const-string v1, "extra_id"

    invoke-virtual {v0, v1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->and(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v1

    const-string v2, "?"

    invoke-virtual {v1, v2}, Lim/doit/pro/db/persist/utils/SQLBuilder;->eqWithArgs(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    .line 137
    iget-object v1, p0, Lim/doit/pro/db/persist/OpLogDao;->db:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v2, p0, Lim/doit/pro/db/persist/OpLogDao;->tableName:Ljava/lang/String;

    invoke-virtual {v0}, Lim/doit/pro/db/persist/utils/SQLBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 138
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v5

    aput-object p2, v4, v6

    .line 137
    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method public deleteRepeatInstancesAfterSomeday(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "itemId"    # Ljava/lang/String;
    .param p2, "repeatNo"    # Ljava/lang/String;

    .prologue
    .line 143
    new-instance v0, Lim/doit/pro/db/persist/utils/SQLBuilder;

    invoke-direct {v0}, Lim/doit/pro/db/persist/utils/SQLBuilder;-><init>()V

    .line 144
    .local v0, "sql":Lim/doit/pro/db/persist/utils/SQLBuilder;
    const-string v1, "item_id"

    invoke-virtual {v0, v1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->append(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->eq(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    .line 145
    const-string v1, "extra_id"

    invoke-virtual {v0, v1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->and(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Lim/doit/pro/db/persist/utils/SQLBuilder;->gte(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    .line 146
    iget-object v1, p0, Lim/doit/pro/db/persist/OpLogDao;->db:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v2, p0, Lim/doit/pro/db/persist/OpLogDao;->tableName:Ljava/lang/String;

    invoke-virtual {v0}, Lim/doit/pro/db/persist/utils/SQLBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 147
    return-void
.end method

.method public findLogsByItemType(Lim/doit/pro/model/OpLog$ItemType;)Ljava/util/ArrayList;
    .locals 3
    .param p1, "type"    # Lim/doit/pro/model/OpLog$ItemType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lim/doit/pro/model/OpLog$ItemType;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lim/doit/pro/model/OpLog;",
            ">;"
        }
    .end annotation

    .prologue
    .line 150
    new-instance v0, Lim/doit/pro/db/persist/utils/SQLBuilder;

    invoke-direct {v0}, Lim/doit/pro/db/persist/utils/SQLBuilder;-><init>()V

    .line 151
    .local v0, "sql":Lim/doit/pro/db/persist/utils/SQLBuilder;
    const-string v1, "item_type"

    invoke-virtual {v0, v1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->append(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lim/doit/pro/model/OpLog$ItemType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lim/doit/pro/db/persist/utils/SQLBuilder;->eq(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    .line 152
    invoke-virtual {v0}, Lim/doit/pro/db/persist/utils/SQLBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lim/doit/pro/db/persist/OpLogDao;->findList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public findLogsByOpTypeAndItemId(Lim/doit/pro/model/OpLog$OpType;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 3
    .param p1, "type"    # Lim/doit/pro/model/OpLog$OpType;
    .param p2, "itemId"    # Ljava/lang/String;
    .param p3, "extraId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lim/doit/pro/model/OpLog$OpType;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lim/doit/pro/model/OpLog;",
            ">;"
        }
    .end annotation

    .prologue
    .line 156
    new-instance v0, Lim/doit/pro/db/persist/utils/SQLBuilder;

    invoke-direct {v0}, Lim/doit/pro/db/persist/utils/SQLBuilder;-><init>()V

    .line 157
    .local v0, "sql":Lim/doit/pro/db/persist/utils/SQLBuilder;
    const-string v1, "item_id"

    invoke-virtual {v0, v1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->append(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Lim/doit/pro/db/persist/utils/SQLBuilder;->eq(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    .line 158
    invoke-static {p3}, Lim/doit/pro/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 159
    const-string v1, "extra_id"

    invoke-virtual {v0, v1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->and(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->isNull()Lim/doit/pro/db/persist/utils/SQLBuilder;

    .line 163
    :goto_0
    const-string v1, "op_type"

    invoke-virtual {v0, v1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->and(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lim/doit/pro/model/OpLog$OpType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lim/doit/pro/db/persist/utils/SQLBuilder;->eq(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    .line 164
    invoke-virtual {v0}, Lim/doit/pro/db/persist/utils/SQLBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lim/doit/pro/db/persist/OpLogDao;->findList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1

    .line 161
    :cond_0
    const-string v1, "extra_id"

    invoke-virtual {v0, v1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->and(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Lim/doit/pro/db/persist/utils/SQLBuilder;->eq(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    goto :goto_0
.end method

.method protected objectToContentValues(Lim/doit/pro/model/OpLog;Z)Landroid/content/ContentValues;
    .locals 4
    .param p1, "t"    # Lim/doit/pro/model/OpLog;
    .param p2, "isDownload"    # Z

    .prologue
    .line 187
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 188
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "created"

    invoke-virtual {p1}, Lim/doit/pro/model/OpLog;->getCreated()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 189
    const-string v1, "op_type"

    invoke-virtual {p1}, Lim/doit/pro/model/OpLog;->getOpType()Lim/doit/pro/model/OpLog$OpType;

    move-result-object v2

    invoke-virtual {v2}, Lim/doit/pro/model/OpLog$OpType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    const-string v1, "item_type"

    invoke-virtual {p1}, Lim/doit/pro/model/OpLog;->getItemType()Lim/doit/pro/model/OpLog$ItemType;

    move-result-object v2

    invoke-virtual {v2}, Lim/doit/pro/model/OpLog$ItemType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    const-string v1, "item_id"

    invoke-virtual {p1}, Lim/doit/pro/model/OpLog;->getItemId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    const-string v1, "extra_id"

    invoke-virtual {p1}, Lim/doit/pro/model/OpLog;->getExtraId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    return-object v0
.end method

.method protected bridge synthetic objectToContentValues(Ljava/lang/Object;Z)Landroid/content/ContentValues;
    .locals 1

    .prologue
    .line 1
    check-cast p1, Lim/doit/pro/model/OpLog;

    invoke-virtual {p0, p1, p2}, Lim/doit/pro/db/persist/OpLogDao;->objectToContentValues(Lim/doit/pro/model/OpLog;Z)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method protected order()Ljava/lang/String;
    .locals 1

    .prologue
    .line 204
    const-string v0, "created"

    invoke-virtual {p0, v0}, Lim/doit/pro/db/persist/OpLogDao;->asc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public saveAgentErrorLog(Ljava/lang/String;Lim/doit/pro/model/OpLog$OpType;)V
    .locals 1
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "opType"    # Lim/doit/pro/model/OpLog$OpType;

    .prologue
    .line 106
    sget-object v0, Lim/doit/pro/model/OpLog$ItemType;->agenterror:Lim/doit/pro/model/OpLog$ItemType;

    invoke-direct {p0, p1, v0, p2}, Lim/doit/pro/db/persist/OpLogDao;->saveLog(Ljava/lang/String;Lim/doit/pro/model/OpLog$ItemType;Lim/doit/pro/model/OpLog$OpType;)V

    .line 107
    return-void
.end method

.method public saveBoxLog(Ljava/lang/String;Lim/doit/pro/model/OpLog$OpType;)V
    .locals 1
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "opType"    # Lim/doit/pro/model/OpLog$OpType;

    .prologue
    .line 32
    sget-object v0, Lim/doit/pro/model/OpLog$ItemType;->box:Lim/doit/pro/model/OpLog$ItemType;

    invoke-direct {p0, p1, v0, p2}, Lim/doit/pro/db/persist/OpLogDao;->saveLog(Ljava/lang/String;Lim/doit/pro/model/OpLog$ItemType;Lim/doit/pro/model/OpLog$OpType;)V

    .line 33
    return-void
.end method

.method public saveContact(Ljava/lang/String;Lim/doit/pro/model/OpLog$OpType;)V
    .locals 1
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "opType"    # Lim/doit/pro/model/OpLog$OpType;

    .prologue
    .line 110
    sget-object v0, Lim/doit/pro/model/OpLog$ItemType;->contact:Lim/doit/pro/model/OpLog$ItemType;

    invoke-direct {p0, p1, v0, p2}, Lim/doit/pro/db/persist/OpLogDao;->saveLog(Ljava/lang/String;Lim/doit/pro/model/OpLog$ItemType;Lim/doit/pro/model/OpLog$OpType;)V

    .line 111
    return-void
.end method

.method public saveDailyReview(Ljava/lang/String;Lim/doit/pro/model/OpLog$OpType;)V
    .locals 1
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "opType"    # Lim/doit/pro/model/OpLog$OpType;

    .prologue
    .line 98
    sget-object v0, Lim/doit/pro/model/OpLog$ItemType;->daily_review:Lim/doit/pro/model/OpLog$ItemType;

    invoke-direct {p0, p1, v0, p2}, Lim/doit/pro/db/persist/OpLogDao;->saveLog(Ljava/lang/String;Lim/doit/pro/model/OpLog$ItemType;Lim/doit/pro/model/OpLog$OpType;)V

    .line 99
    return-void
.end method

.method public saveFilterLog(Ljava/lang/String;Lim/doit/pro/model/OpLog$OpType;)V
    .locals 1
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "opType"    # Lim/doit/pro/model/OpLog$OpType;

    .prologue
    .line 36
    sget-object v0, Lim/doit/pro/model/OpLog$ItemType;->filter:Lim/doit/pro/model/OpLog$ItemType;

    invoke-direct {p0, p1, v0, p2}, Lim/doit/pro/db/persist/OpLogDao;->saveLog(Ljava/lang/String;Lim/doit/pro/model/OpLog$ItemType;Lim/doit/pro/model/OpLog$OpType;)V

    .line 37
    return-void
.end method

.method public saveGoalLog(Ljava/lang/String;Lim/doit/pro/model/OpLog$OpType;)V
    .locals 1
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "opType"    # Lim/doit/pro/model/OpLog$OpType;

    .prologue
    .line 48
    sget-object v0, Lim/doit/pro/model/OpLog$ItemType;->goal:Lim/doit/pro/model/OpLog$ItemType;

    invoke-direct {p0, p1, v0, p2}, Lim/doit/pro/db/persist/OpLogDao;->saveLog(Ljava/lang/String;Lim/doit/pro/model/OpLog$ItemType;Lim/doit/pro/model/OpLog$OpType;)V

    .line 50
    sget-object v0, Lim/doit/pro/model/OpLog$OpType;->complete:Lim/doit/pro/model/OpLog$OpType;

    invoke-virtual {v0, p2}, Lim/doit/pro/model/OpLog$OpType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lim/doit/pro/model/OpLog$OpType;->trash:Lim/doit/pro/model/OpLog$OpType;

    invoke-virtual {v0, p2}, Lim/doit/pro/model/OpLog$OpType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 51
    sget-object v0, Lim/doit/pro/model/OpLog$OpType;->archive:Lim/doit/pro/model/OpLog$OpType;

    invoke-virtual {v0, p2}, Lim/doit/pro/model/OpLog$OpType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 52
    sget-object v0, Lim/doit/pro/model/OpLog$OpType;->delete:Lim/doit/pro/model/OpLog$OpType;

    invoke-virtual {v0, p2}, Lim/doit/pro/model/OpLog$OpType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 53
    :cond_0
    invoke-static {}, Lim/doit/pro/utils/BroadcastUtils;->sendSyncManyBroadcastBySystem()V

    .line 55
    :cond_1
    return-void
.end method

.method public saveNoticeLog(Ljava/lang/String;Lim/doit/pro/model/OpLog$OpType;)V
    .locals 1
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "opType"    # Lim/doit/pro/model/OpLog$OpType;

    .prologue
    .line 102
    sget-object v0, Lim/doit/pro/model/OpLog$ItemType;->notice:Lim/doit/pro/model/OpLog$ItemType;

    invoke-direct {p0, p1, v0, p2}, Lim/doit/pro/db/persist/OpLogDao;->saveLog(Ljava/lang/String;Lim/doit/pro/model/OpLog$ItemType;Lim/doit/pro/model/OpLog$OpType;)V

    .line 103
    return-void
.end method

.method public saveProjectLog(Ljava/lang/String;Lim/doit/pro/model/OpLog$OpType;)V
    .locals 1
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "opType"    # Lim/doit/pro/model/OpLog$OpType;

    .prologue
    .line 58
    sget-object v0, Lim/doit/pro/model/OpLog$ItemType;->project:Lim/doit/pro/model/OpLog$ItemType;

    invoke-direct {p0, p1, v0, p2}, Lim/doit/pro/db/persist/OpLogDao;->saveLog(Ljava/lang/String;Lim/doit/pro/model/OpLog$ItemType;Lim/doit/pro/model/OpLog$OpType;)V

    .line 60
    sget-object v0, Lim/doit/pro/model/OpLog$OpType;->complete:Lim/doit/pro/model/OpLog$OpType;

    invoke-virtual {v0, p2}, Lim/doit/pro/model/OpLog$OpType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lim/doit/pro/model/OpLog$OpType;->trash:Lim/doit/pro/model/OpLog$OpType;

    invoke-virtual {v0, p2}, Lim/doit/pro/model/OpLog$OpType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 61
    sget-object v0, Lim/doit/pro/model/OpLog$OpType;->archive:Lim/doit/pro/model/OpLog$OpType;

    invoke-virtual {v0, p2}, Lim/doit/pro/model/OpLog$OpType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 62
    sget-object v0, Lim/doit/pro/model/OpLog$OpType;->delete:Lim/doit/pro/model/OpLog$OpType;

    invoke-virtual {v0, p2}, Lim/doit/pro/model/OpLog$OpType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 63
    :cond_0
    invoke-static {}, Lim/doit/pro/utils/BroadcastUtils;->sendSyncManyBroadcastBySystem()V

    .line 65
    :cond_1
    return-void
.end method

.method public savePurchase(Ljava/lang/String;Lim/doit/pro/model/OpLog$OpType;)V
    .locals 1
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "opType"    # Lim/doit/pro/model/OpLog$OpType;

    .prologue
    .line 114
    sget-object v0, Lim/doit/pro/model/OpLog$ItemType;->purchase:Lim/doit/pro/model/OpLog$ItemType;

    invoke-direct {p0, p1, v0, p2}, Lim/doit/pro/db/persist/OpLogDao;->saveLog(Ljava/lang/String;Lim/doit/pro/model/OpLog$ItemType;Lim/doit/pro/model/OpLog$OpType;)V

    .line 115
    return-void
.end method

.method public saveSubTaskLog(Ljava/lang/String;Lim/doit/pro/model/OpLog$OpType;)V
    .locals 1
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "opType"    # Lim/doit/pro/model/OpLog$OpType;

    .prologue
    .line 68
    sget-object v0, Lim/doit/pro/model/OpLog$ItemType;->subtask:Lim/doit/pro/model/OpLog$ItemType;

    invoke-direct {p0, p1, v0, p2}, Lim/doit/pro/db/persist/OpLogDao;->saveLog(Ljava/lang/String;Lim/doit/pro/model/OpLog$ItemType;Lim/doit/pro/model/OpLog$OpType;)V

    .line 69
    return-void
.end method

.method public saveTag(Ljava/lang/String;Lim/doit/pro/model/OpLog$OpType;)V
    .locals 1
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "opType"    # Lim/doit/pro/model/OpLog$OpType;

    .prologue
    .line 94
    sget-object v0, Lim/doit/pro/model/OpLog$ItemType;->tag:Lim/doit/pro/model/OpLog$ItemType;

    invoke-direct {p0, p1, v0, p2}, Lim/doit/pro/db/persist/OpLogDao;->saveLog(Ljava/lang/String;Lim/doit/pro/model/OpLog$ItemType;Lim/doit/pro/model/OpLog$OpType;)V

    .line 95
    return-void
.end method

.method public saveTask(Ljava/lang/String;Ljava/lang/String;Lim/doit/pro/model/OpLog$OpType;)V
    .locals 1
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "repeatNo"    # Ljava/lang/String;
    .param p3, "opType"    # Lim/doit/pro/model/OpLog$OpType;

    .prologue
    .line 80
    sget-object v0, Lim/doit/pro/model/OpLog$ItemType;->task:Lim/doit/pro/model/OpLog$ItemType;

    invoke-direct {p0, p1, p2, v0, p3}, Lim/doit/pro/db/persist/OpLogDao;->saveLog(Ljava/lang/String;Ljava/lang/String;Lim/doit/pro/model/OpLog$ItemType;Lim/doit/pro/model/OpLog$OpType;)V

    .line 82
    sget-object v0, Lim/doit/pro/model/OpLog$OpType;->complete:Lim/doit/pro/model/OpLog$OpType;

    invoke-virtual {v0, p3}, Lim/doit/pro/model/OpLog$OpType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lim/doit/pro/model/OpLog$OpType;->trash:Lim/doit/pro/model/OpLog$OpType;

    invoke-virtual {v0, p3}, Lim/doit/pro/model/OpLog$OpType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 83
    sget-object v0, Lim/doit/pro/model/OpLog$OpType;->archive:Lim/doit/pro/model/OpLog$OpType;

    invoke-virtual {v0, p3}, Lim/doit/pro/model/OpLog$OpType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 84
    sget-object v0, Lim/doit/pro/model/OpLog$OpType;->delete:Lim/doit/pro/model/OpLog$OpType;

    invoke-virtual {v0, p3}, Lim/doit/pro/model/OpLog$OpType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lim/doit/pro/model/OpLog$OpType;->hide:Lim/doit/pro/model/OpLog$OpType;

    invoke-virtual {v0, p3}, Lim/doit/pro/model/OpLog$OpType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 85
    :cond_0
    invoke-static {}, Lim/doit/pro/utils/BroadcastUtils;->sendSyncManyBroadcastBySystem()V

    .line 87
    :cond_1
    return-void
.end method

.method public saveTaskCommentLog(Ljava/lang/String;Lim/doit/pro/model/OpLog$OpType;)V
    .locals 1
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "opType"    # Lim/doit/pro/model/OpLog$OpType;

    .prologue
    .line 72
    sget-object v0, Lim/doit/pro/model/OpLog$ItemType;->taskcomment:Lim/doit/pro/model/OpLog$ItemType;

    invoke-direct {p0, p1, v0, p2}, Lim/doit/pro/db/persist/OpLogDao;->saveLog(Ljava/lang/String;Lim/doit/pro/model/OpLog$ItemType;Lim/doit/pro/model/OpLog$OpType;)V

    .line 74
    sget-object v0, Lim/doit/pro/model/OpLog$OpType;->create:Lim/doit/pro/model/OpLog$OpType;

    invoke-virtual {v0, p2}, Lim/doit/pro/model/OpLog$OpType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    invoke-static {}, Lim/doit/pro/utils/BroadcastUtils;->sendSyncManyBroadcastBySystem()V

    .line 77
    :cond_0
    return-void
.end method

.method public saveTaskContextLog(Ljava/lang/String;Lim/doit/pro/model/OpLog$OpType;)V
    .locals 1
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "opType"    # Lim/doit/pro/model/OpLog$OpType;

    .prologue
    .line 40
    sget-object v0, Lim/doit/pro/model/OpLog$ItemType;->context:Lim/doit/pro/model/OpLog$ItemType;

    invoke-direct {p0, p1, v0, p2}, Lim/doit/pro/db/persist/OpLogDao;->saveLog(Ljava/lang/String;Lim/doit/pro/model/OpLog$ItemType;Lim/doit/pro/model/OpLog$OpType;)V

    .line 42
    sget-object v0, Lim/doit/pro/model/OpLog$OpType;->delete:Lim/doit/pro/model/OpLog$OpType;

    invoke-virtual {v0, p2}, Lim/doit/pro/model/OpLog$OpType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    invoke-static {}, Lim/doit/pro/utils/BroadcastUtils;->sendSyncManyBroadcastBySystem()V

    .line 45
    :cond_0
    return-void
.end method

.method public saveUser(Ljava/lang/String;Lim/doit/pro/model/OpLog$OpType;)V
    .locals 1
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "opType"    # Lim/doit/pro/model/OpLog$OpType;

    .prologue
    .line 90
    sget-object v0, Lim/doit/pro/model/OpLog$ItemType;->user:Lim/doit/pro/model/OpLog$ItemType;

    invoke-direct {p0, p1, v0, p2}, Lim/doit/pro/db/persist/OpLogDao;->saveLog(Ljava/lang/String;Lim/doit/pro/model/OpLog$ItemType;Lim/doit/pro/model/OpLog$OpType;)V

    .line 91
    return-void
.end method

.method public updateConflictUUID(Lim/doit/pro/model/OpLog$ItemType;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "type"    # Lim/doit/pro/model/OpLog$ItemType;
    .param p2, "oriId"    # Ljava/lang/String;
    .param p3, "newId"    # Ljava/lang/String;

    .prologue
    .line 168
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 169
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "item_id"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    iget-object v1, p0, Lim/doit/pro/db/persist/OpLogDao;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "op_logs"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "item_id=\'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 171
    return-void
.end method
