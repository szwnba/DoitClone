.class public abstract Lim/doit/pro/db/persist/BaseDao;
.super Ljava/lang/Object;
.source "BaseDao.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected final db:Landroid/database/sqlite/SQLiteDatabase;

.field protected tableName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .param p1, "tableName"    # Ljava/lang/String;
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 17
    .local p0, "this":Lim/doit/pro/db/persist/BaseDao;, "Lim/doit/pro/db/persist/BaseDao<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lim/doit/pro/db/persist/BaseDao;->tableName:Ljava/lang/String;

    .line 19
    iput-object p2, p0, Lim/doit/pro/db/persist/BaseDao;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 20
    return-void
.end method


# virtual methods
.method protected afterCreate(Ljava/lang/Object;Z)V
    .locals 0
    .param p2, "isDownload"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)V"
        }
    .end annotation

    .prologue
    .line 62
    .local p0, "this":Lim/doit/pro/db/persist/BaseDao;, "Lim/doit/pro/db/persist/BaseDao<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, p1}, Lim/doit/pro/db/persist/BaseDao;->updateMaxPosition(Ljava/lang/Object;)V

    .line 63
    return-void
.end method

.method protected afterUpdate(Ljava/lang/Object;Z)V
    .locals 0
    .param p2, "isDownload"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)V"
        }
    .end annotation

    .prologue
    .line 72
    .local p0, "this":Lim/doit/pro/db/persist/BaseDao;, "Lim/doit/pro/db/persist/BaseDao<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, p1}, Lim/doit/pro/db/persist/BaseDao;->updateMaxPosition(Ljava/lang/Object;)V

    .line 73
    return-void
.end method

.method protected asc(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "field"    # Ljava/lang/String;

    .prologue
    .line 80
    .local p0, "this":Lim/doit/pro/db/persist/BaseDao;, "Lim/doit/pro/db/persist/BaseDao<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " asc"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected abstract colunms()[Ljava/lang/String;
.end method

.method public count(Ljava/lang/String;)I
    .locals 10
    .param p1, "clause"    # Ljava/lang/String;

    .prologue
    .local p0, "this":Lim/doit/pro/db/persist/BaseDao;, "Lim/doit/pro/db/persist/BaseDao<TT;>;"
    const/4 v4, 0x0

    .line 23
    iget-object v0, p0, Lim/doit/pro/db/persist/BaseDao;->db:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v1, p0, Lim/doit/pro/db/persist/BaseDao;->tableName:Ljava/lang/String;

    invoke-virtual {p0}, Lim/doit/pro/db/persist/BaseDao;->colunms()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lim/doit/pro/db/persist/BaseDao;->order()Ljava/lang/String;

    move-result-object v7

    move-object v3, p1

    move-object v5, v4

    move-object v6, v4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 24
    .local v8, "c":Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v9

    .line 25
    .local v9, "numRows":I
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 26
    return v9
.end method

.method protected create(Ljava/lang/Object;Z)V
    .locals 4
    .param p2, "isDownload"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)V"
        }
    .end annotation

    .prologue
    .line 56
    .local p0, "this":Lim/doit/pro/db/persist/BaseDao;, "Lim/doit/pro/db/persist/BaseDao<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, p1, p2}, Lim/doit/pro/db/persist/BaseDao;->objectToContentValues(Ljava/lang/Object;Z)Landroid/content/ContentValues;

    move-result-object v0

    .line 57
    .local v0, "values":Landroid/content/ContentValues;
    iget-object v1, p0, Lim/doit/pro/db/persist/BaseDao;->db:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v2, p0, Lim/doit/pro/db/persist/BaseDao;->tableName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 58
    invoke-virtual {p0, p1, p2}, Lim/doit/pro/db/persist/BaseDao;->afterCreate(Ljava/lang/Object;Z)V

    .line 59
    return-void
.end method

.method protected cursorToList(Landroid/database/Cursor;)Ljava/util/ArrayList;
    .locals 4
    .param p1, "c"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 97
    .local p0, "this":Lim/doit/pro/db/persist/BaseDao;, "Lim/doit/pro/db/persist/BaseDao<TT;>;"
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    .line 98
    .local v2, "numRows":I
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 99
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 100
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v2, :cond_0

    .line 105
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 106
    return-object v1

    .line 101
    :cond_0
    invoke-virtual {p0, p1}, Lim/doit/pro/db/persist/BaseDao;->cursorToObject(Landroid/database/Cursor;)Ljava/lang/Object;

    move-result-object v3

    .line 102
    .local v3, "t":Ljava/lang/Object;, "TT;"
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    .line 100
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected abstract cursorToObject(Landroid/database/Cursor;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")TT;"
        }
    .end annotation
.end method

.method protected desc(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "field"    # Ljava/lang/String;

    .prologue
    .line 76
    .local p0, "this":Lim/doit/pro/db/persist/BaseDao;, "Lim/doit/pro/db/persist/BaseDao<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " desc"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public findList(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .param p1, "clause"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 30
    .local p0, "this":Lim/doit/pro/db/persist/BaseDao;, "Lim/doit/pro/db/persist/BaseDao<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lim/doit/pro/db/persist/BaseDao;->findList(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public findList(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 9
    .param p1, "clause"    # Ljava/lang/String;
    .param p2, "values"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lim/doit/pro/db/persist/BaseDao;, "Lim/doit/pro/db/persist/BaseDao<TT;>;"
    const/4 v5, 0x0

    .line 34
    iget-object v0, p0, Lim/doit/pro/db/persist/BaseDao;->db:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v1, p0, Lim/doit/pro/db/persist/BaseDao;->tableName:Ljava/lang/String;

    invoke-virtual {p0}, Lim/doit/pro/db/persist/BaseDao;->colunms()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lim/doit/pro/db/persist/BaseDao;->order()Ljava/lang/String;

    move-result-object v7

    move-object v3, p1

    move-object v4, p2

    move-object v6, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 35
    .local v8, "c":Landroid/database/Cursor;
    invoke-virtual {p0, v8}, Lim/doit/pro/db/persist/BaseDao;->cursorToList(Landroid/database/Cursor;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public findOne(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "clause"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 39
    .local p0, "this":Lim/doit/pro/db/persist/BaseDao;, "Lim/doit/pro/db/persist/BaseDao<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lim/doit/pro/db/persist/BaseDao;->findOne(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public findOne(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Object;
    .locals 11
    .param p1, "clause"    # Ljava/lang/String;
    .param p2, "values"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lim/doit/pro/db/persist/BaseDao;, "Lim/doit/pro/db/persist/BaseDao<TT;>;"
    const/4 v5, 0x0

    .line 43
    iget-object v0, p0, Lim/doit/pro/db/persist/BaseDao;->db:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v1, p0, Lim/doit/pro/db/persist/BaseDao;->tableName:Ljava/lang/String;

    invoke-virtual {p0}, Lim/doit/pro/db/persist/BaseDao;->colunms()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lim/doit/pro/db/persist/BaseDao;->order()Ljava/lang/String;

    move-result-object v7

    move-object v3, p1

    move-object v4, p2

    move-object v6, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 44
    .local v8, "c":Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v9

    .line 45
    .local v9, "numRows":I
    if-nez v9, :cond_0

    .line 46
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 52
    :goto_0
    return-object v5

    .line 49
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 50
    invoke-virtual {p0, v8}, Lim/doit/pro/db/persist/BaseDao;->cursorToObject(Landroid/database/Cursor;)Ljava/lang/Object;

    move-result-object v10

    .line 51
    .local v10, "t":Ljava/lang/Object;, "TT;"
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    move-object v5, v10

    .line 52
    goto :goto_0
.end method

.method protected intToBoolean(I)Z
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 84
    .local p0, "this":Lim/doit/pro/db/persist/BaseDao;, "Lim/doit/pro/db/persist/BaseDao<TT;>;"
    if-gtz p1, :cond_0

    .line 85
    const/4 v0, 0x0

    .line 87
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected abstract objectToContentValues(Ljava/lang/Object;Z)Landroid/content/ContentValues;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)",
            "Landroid/content/ContentValues;"
        }
    .end annotation
.end method

.method protected abstract order()Ljava/lang/String;
.end method

.method protected update(Ljava/lang/Object;Ljava/lang/String;Z)V
    .locals 4
    .param p2, "updateClause"    # Ljava/lang/String;
    .param p3, "isDownload"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 66
    .local p0, "this":Lim/doit/pro/db/persist/BaseDao;, "Lim/doit/pro/db/persist/BaseDao<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, p1, p3}, Lim/doit/pro/db/persist/BaseDao;->objectToContentValues(Ljava/lang/Object;Z)Landroid/content/ContentValues;

    move-result-object v0

    .line 67
    .local v0, "values":Landroid/content/ContentValues;
    iget-object v1, p0, Lim/doit/pro/db/persist/BaseDao;->db:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v2, p0, Lim/doit/pro/db/persist/BaseDao;->tableName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, p2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 68
    invoke-virtual {p0, p1, p3}, Lim/doit/pro/db/persist/BaseDao;->afterUpdate(Ljava/lang/Object;Z)V

    .line 69
    return-void
.end method

.method protected updateMaxPosition(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 91
    .local p0, "this":Lim/doit/pro/db/persist/BaseDao;, "Lim/doit/pro/db/persist/BaseDao<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    instance-of v0, p1, Lim/doit/pro/model/BaseEntityWithPos;

    if-eqz v0, :cond_0

    .line 92
    check-cast p1, Lim/doit/pro/model/BaseEntityWithPos;

    .end local p1    # "t":Ljava/lang/Object;, "TT;"
    invoke-virtual {p1}, Lim/doit/pro/model/BaseEntityWithPos;->getPos()J

    move-result-wide v0

    invoke-static {v0, v1}, Lim/doit/pro/utils/PrefUtils;->updateMaxPosition(J)V

    .line 94
    :cond_0
    return-void
.end method
