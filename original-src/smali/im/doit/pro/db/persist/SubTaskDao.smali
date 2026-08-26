.class public Lim/doit/pro/db/persist/SubTaskDao;
.super Lim/doit/pro/db/persist/DBaseDao;
.source "SubTaskDao.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lim/doit/pro/db/persist/DBaseDao",
        "<",
        "Lim/doit/pro/model/SubTask;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 35
    const-string v0, "subtasks"

    invoke-direct {p0, v0, p1}, Lim/doit/pro/db/persist/DBaseDao;-><init>(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 36
    return-void
.end method

.method private afterUpdate(Lim/doit/pro/model/SubTask;ZZ)V
    .locals 0
    .param p1, "t"    # Lim/doit/pro/model/SubTask;
    .param p2, "isDownload"    # Z
    .param p3, "isRefresh"    # Z

    .prologue
    .line 223
    invoke-super {p0, p1, p2}, Lim/doit/pro/db/persist/DBaseDao;->afterUpdate(Lim/doit/pro/model/BaseEntity;Z)V

    .line 224
    return-void
.end method

.method private archive(Lim/doit/pro/model/SubTask;)V
    .locals 2
    .param p1, "item"    # Lim/doit/pro/model/SubTask;

    .prologue
    .line 217
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {p1, v0}, Lim/doit/pro/model/SubTask;->setArchived(Ljava/util/Calendar;)V

    .line 218
    invoke-virtual {p1}, Lim/doit/pro/model/SubTask;->getUuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lim/doit/pro/model/SubTask;->getArchived()Ljava/util/Calendar;

    move-result-object v1

    invoke-super {p0, v0, v1}, Lim/doit/pro/db/persist/DBaseDao;->archive(Ljava/lang/String;Ljava/util/Calendar;)V

    .line 219
    invoke-virtual {p1}, Lim/doit/pro/model/SubTask;->getUuid()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lim/doit/pro/db/persist/SubTaskDao;->saveArchiveLog(Ljava/lang/String;)V

    .line 220
    return-void
.end method

.method private saveArchiveLog(Ljava/lang/String;)V
    .locals 2
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    .line 209
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v0

    iget-object v0, v0, Lim/doit/pro/db/Persist;->opLogDao:Lim/doit/pro/db/persist/OpLogDao;

    sget-object v1, Lim/doit/pro/model/OpLog$OpType;->archive:Lim/doit/pro/model/OpLog$OpType;

    invoke-virtual {v0, p1, v1}, Lim/doit/pro/db/persist/OpLogDao;->saveSubTaskLog(Ljava/lang/String;Lim/doit/pro/model/OpLog$OpType;)V

    .line 210
    return-void
.end method

.method private saveCompleteLog(Ljava/lang/String;)V
    .locals 2
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    .line 201
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v0

    iget-object v0, v0, Lim/doit/pro/db/Persist;->opLogDao:Lim/doit/pro/db/persist/OpLogDao;

    sget-object v1, Lim/doit/pro/model/OpLog$OpType;->complete:Lim/doit/pro/model/OpLog$OpType;

    invoke-virtual {v0, p1, v1}, Lim/doit/pro/db/persist/OpLogDao;->saveSubTaskLog(Ljava/lang/String;Lim/doit/pro/model/OpLog$OpType;)V

    .line 202
    return-void
.end method

.method private saveHideLog(Ljava/lang/String;)V
    .locals 2
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    .line 213
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v0

    iget-object v0, v0, Lim/doit/pro/db/Persist;->opLogDao:Lim/doit/pro/db/persist/OpLogDao;

    sget-object v1, Lim/doit/pro/model/OpLog$OpType;->hide:Lim/doit/pro/model/OpLog$OpType;

    invoke-virtual {v0, p1, v1}, Lim/doit/pro/db/persist/OpLogDao;->saveSubTaskLog(Ljava/lang/String;Lim/doit/pro/model/OpLog$OpType;)V

    .line 214
    return-void
.end method

.method private saveUncompleteLog(Ljava/lang/String;)V
    .locals 2
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    .line 205
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v0

    iget-object v0, v0, Lim/doit/pro/db/Persist;->opLogDao:Lim/doit/pro/db/persist/OpLogDao;

    sget-object v1, Lim/doit/pro/model/OpLog$OpType;->uncomplete:Lim/doit/pro/model/OpLog$OpType;

    invoke-virtual {v0, p1, v1}, Lim/doit/pro/db/persist/OpLogDao;->saveSubTaskLog(Ljava/lang/String;Lim/doit/pro/model/OpLog$OpType;)V

    .line 206
    return-void
.end method


# virtual methods
.method protected bridge synthetic afterUpdate(Lim/doit/pro/model/BaseEntity;Z)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lim/doit/pro/model/SubTask;

    invoke-virtual {p0, p1, p2}, Lim/doit/pro/db/persist/SubTaskDao;->afterUpdate(Lim/doit/pro/model/SubTask;Z)V

    return-void
.end method

.method protected afterUpdate(Lim/doit/pro/model/SubTask;Z)V
    .locals 1
    .param p1, "t"    # Lim/doit/pro/model/SubTask;
    .param p2, "isDownload"    # Z

    .prologue
    .line 131
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lim/doit/pro/db/persist/SubTaskDao;->afterUpdate(Lim/doit/pro/model/SubTask;ZZ)V

    .line 132
    return-void
.end method

.method public archiveByTask(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "repeatNo"    # Ljava/lang/String;

    .prologue
    .line 73
    invoke-virtual {p0, p1, p2}, Lim/doit/pro/db/persist/SubTaskDao;->findByTask(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 74
    .local v1, "subTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/SubTask;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 77
    return-void

    .line 74
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lim/doit/pro/model/SubTask;

    .line 75
    .local v0, "item":Lim/doit/pro/model/SubTask;
    invoke-direct {p0, v0}, Lim/doit/pro/db/persist/SubTaskDao;->archive(Lim/doit/pro/model/SubTask;)V

    goto :goto_0
.end method

.method protected colunms()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 176
    const/16 v0, 0xd

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

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "task"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 177
    const-string v2, "repeat_no"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "pos"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "completed"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "trashed"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "archived"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "hidden"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "deleted"

    aput-object v2, v0, v1

    .line 176
    return-object v0
.end method

.method public complete(Lim/doit/pro/model/SubTask;)V
    .locals 2
    .param p1, "t"    # Lim/doit/pro/model/SubTask;

    .prologue
    .line 50
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {p1, v0}, Lim/doit/pro/model/SubTask;->setCompleted(Ljava/util/Calendar;)V

    .line 51
    invoke-virtual {p1}, Lim/doit/pro/model/SubTask;->getUuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lim/doit/pro/model/SubTask;->getCompleted()Ljava/util/Calendar;

    move-result-object v1

    invoke-super {p0, v0, v1}, Lim/doit/pro/db/persist/DBaseDao;->complete(Ljava/lang/String;Ljava/util/Calendar;)V

    .line 52
    invoke-virtual {p1}, Lim/doit/pro/model/SubTask;->getUuid()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lim/doit/pro/db/persist/SubTaskDao;->saveCompleteLog(Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method public bridge synthetic createAndSaveLog(Lim/doit/pro/model/BaseEntity;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lim/doit/pro/model/SubTask;

    invoke-virtual {p0, p1}, Lim/doit/pro/db/persist/SubTaskDao;->createAndSaveLog(Lim/doit/pro/model/SubTask;)V

    return-void
.end method

.method public createAndSaveLog(Lim/doit/pro/model/SubTask;)V
    .locals 0
    .param p1, "t"    # Lim/doit/pro/model/SubTask;

    .prologue
    .line 40
    invoke-virtual {p1}, Lim/doit/pro/model/SubTask;->initPos()V

    .line 41
    invoke-super {p0, p1}, Lim/doit/pro/db/persist/DBaseDao;->createAndSaveLog(Lim/doit/pro/model/BaseEntity;)V

    .line 42
    return-void
.end method

.method protected cursorToObject(Landroid/database/Cursor;)Lim/doit/pro/model/SubTask;
    .locals 4
    .param p1, "c"    # Landroid/database/Cursor;

    .prologue
    .line 136
    new-instance v0, Lim/doit/pro/model/SubTask;

    invoke-direct {v0}, Lim/doit/pro/model/SubTask;-><init>()V

    .line 137
    .local v0, "subTask":Lim/doit/pro/model/SubTask;
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/model/SubTask;->setUuid(Ljava/lang/String;)V

    .line 138
    const/4 v1, 0x1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Lim/doit/pro/utils/DateUtils;->convertToDate(J)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/model/SubTask;->setCreated(Ljava/util/Calendar;)V

    .line 139
    const/4 v1, 0x2

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Lim/doit/pro/utils/DateUtils;->convertToDate(J)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/model/SubTask;->setUpdated(Ljava/util/Calendar;)V

    .line 140
    const/4 v1, 0x3

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lim/doit/pro/model/SubTask;->setUsn(J)V

    .line 141
    const/4 v1, 0x4

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/model/SubTask;->setTitle(Ljava/lang/String;)V

    .line 142
    const/4 v1, 0x5

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/model/SubTask;->setTask(Ljava/lang/String;)V

    .line 143
    const/4 v1, 0x6

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/model/SubTask;->setRepeatNo(Ljava/lang/String;)V

    .line 144
    const/4 v1, 0x7

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lim/doit/pro/model/SubTask;->setPos(J)V

    .line 145
    const/16 v1, 0x8

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Lim/doit/pro/utils/DateUtils;->convertToDate(J)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/model/SubTask;->setCompleted(Ljava/util/Calendar;)V

    .line 146
    const/16 v1, 0x9

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Lim/doit/pro/utils/DateUtils;->convertToDate(J)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/model/SubTask;->setTrashed(Ljava/util/Calendar;)V

    .line 147
    const/16 v1, 0xa

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Lim/doit/pro/utils/DateUtils;->convertToDate(J)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/model/SubTask;->setArchived(Ljava/util/Calendar;)V

    .line 148
    const/16 v1, 0xb

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Lim/doit/pro/utils/DateUtils;->convertToDate(J)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/model/SubTask;->setHidden(Ljava/util/Calendar;)V

    .line 149
    const/16 v1, 0xc

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Lim/doit/pro/utils/DateUtils;->convertToDate(J)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/model/SubTask;->setDeleted(Ljava/util/Calendar;)V

    .line 150
    return-object v0
.end method

.method protected bridge synthetic cursorToObject(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lim/doit/pro/db/persist/SubTaskDao;->cursorToObject(Landroid/database/Cursor;)Lim/doit/pro/model/SubTask;

    move-result-object v0

    return-object v0
.end method

.method public delete(Ljava/lang/String;)V
    .locals 1
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    .line 62
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-super {p0, p1, v0}, Lim/doit/pro/db/persist/DBaseDao;->delete(Ljava/lang/String;Ljava/util/Calendar;)V

    .line 63
    invoke-virtual {p0, p1}, Lim/doit/pro/db/persist/SubTaskDao;->saveDeleteLog(Ljava/lang/String;)V

    .line 64
    return-void
.end method

.method public deleteByTask(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "repeatNo"    # Ljava/lang/String;

    .prologue
    .line 80
    invoke-virtual {p0, p1, p2}, Lim/doit/pro/db/persist/SubTaskDao;->findByTask(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 81
    .local v1, "subTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/SubTask;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 84
    return-void

    .line 81
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lim/doit/pro/model/SubTask;

    .line 82
    .local v0, "item":Lim/doit/pro/model/SubTask;
    invoke-virtual {v0}, Lim/doit/pro/model/SubTask;->getUuid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lim/doit/pro/db/persist/SubTaskDao;->delete(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public findBySearch(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 13
    .param p1, "keyword"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lim/doit/pro/model/SubTask;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 107
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 108
    new-array v10, v3, [Ljava/lang/String;

    const-string v0, "title"

    aput-object v0, v10, v2

    .line 109
    .local v10, "keys":[Ljava/lang/String;
    new-instance v12, Lim/doit/pro/db/persist/utils/SQLBuilder;

    invoke-direct {v12}, Lim/doit/pro/db/persist/utils/SQLBuilder;-><init>()V

    .line 110
    .local v12, "sb":Lim/doit/pro/db/persist/utils/SQLBuilder;
    const-string v0, "deleted"

    invoke-virtual {v12, v0}, Lim/doit/pro/db/persist/utils/SQLBuilder;->append(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lim/doit/pro/db/persist/utils/SQLBuilder;->eq(I)Lim/doit/pro/db/persist/utils/SQLBuilder;

    .line 111
    array-length v11, v10

    .line 112
    .local v11, "length":I
    if-lez v11, :cond_0

    .line 113
    const-string v0, " AND "

    invoke-virtual {v12, v0}, Lim/doit/pro/db/persist/utils/SQLBuilder;->append(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    .line 114
    const-string v0, "("

    invoke-virtual {v12, v0}, Lim/doit/pro/db/persist/utils/SQLBuilder;->append(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    .line 115
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    add-int/lit8 v0, v11, -0x1

    if-lt v9, v0, :cond_1

    .line 118
    add-int/lit8 v0, v11, -0x1

    aget-object v0, v10, v0

    invoke-virtual {v12, v0}, Lim/doit/pro/db/persist/utils/SQLBuilder;->like(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    .line 119
    const-string v0, ")"

    invoke-virtual {v12, v0}, Lim/doit/pro/db/persist/utils/SQLBuilder;->append(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    .line 121
    .end local v9    # "i":I
    :cond_0
    new-array v4, v3, [Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "%"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 122
    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v2

    .line 123
    .local v4, "values":[Ljava/lang/String;
    const-string v5, "task, repeat_no"

    .line 124
    .local v5, "groupby":Ljava/lang/String;
    iget-object v0, p0, Lim/doit/pro/db/persist/SubTaskDao;->db:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v1, p0, Lim/doit/pro/db/persist/SubTaskDao;->tableName:Ljava/lang/String;

    invoke-virtual {p0}, Lim/doit/pro/db/persist/SubTaskDao;->colunms()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12}, Lim/doit/pro/db/persist/utils/SQLBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 125
    const/4 v6, 0x0

    invoke-virtual {p0}, Lim/doit/pro/db/persist/SubTaskDao;->order()Ljava/lang/String;

    move-result-object v7

    .line 124
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 126
    .local v8, "c":Landroid/database/Cursor;
    invoke-virtual {p0, v8}, Lim/doit/pro/db/persist/SubTaskDao;->cursorToList(Landroid/database/Cursor;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0

    .line 116
    .end local v4    # "values":[Ljava/lang/String;
    .end local v5    # "groupby":Ljava/lang/String;
    .end local v8    # "c":Landroid/database/Cursor;
    .restart local v9    # "i":I
    :cond_1
    aget-object v0, v10, v9

    invoke-virtual {v12, v0}, Lim/doit/pro/db/persist/utils/SQLBuilder;->like(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v0

    const-string v1, " OR "

    invoke-virtual {v0, v1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->append(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    .line 115
    add-int/lit8 v9, v9, 0x1

    goto :goto_0
.end method

.method public findByTask(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 3
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "repeatNo"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lim/doit/pro/model/SubTask;",
            ">;"
        }
    .end annotation

    .prologue
    .line 87
    new-instance v0, Lim/doit/pro/db/persist/utils/SQLBuilder;

    invoke-direct {v0}, Lim/doit/pro/db/persist/utils/SQLBuilder;-><init>()V

    .line 88
    .local v0, "sql":Lim/doit/pro/db/persist/utils/SQLBuilder;
    const-string v1, "task"

    invoke-virtual {v0, v1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->append(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->eq(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    .line 89
    invoke-static {p2}, Lim/doit/pro/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 90
    const-string v1, "repeat_no"

    invoke-virtual {v0, v1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->and(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->isNull()Lim/doit/pro/db/persist/utils/SQLBuilder;

    .line 94
    :goto_0
    const-string v1, "deleted"

    invoke-virtual {v0, v1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->and(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lim/doit/pro/db/persist/utils/SQLBuilder;->eq(I)Lim/doit/pro/db/persist/utils/SQLBuilder;

    .line 95
    invoke-virtual {v0}, Lim/doit/pro/db/persist/utils/SQLBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lim/doit/pro/db/persist/SubTaskDao;->findList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1

    .line 92
    :cond_0
    const-string v1, "repeat_no"

    invoke-virtual {v0, v1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->and(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Lim/doit/pro/db/persist/utils/SQLBuilder;->eq(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    goto :goto_0
.end method

.method protected objectToContentValues(Lim/doit/pro/model/SubTask;Z)Landroid/content/ContentValues;
    .locals 4
    .param p1, "t"    # Lim/doit/pro/model/SubTask;
    .param p2, "isDownload"    # Z

    .prologue
    .line 155
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 156
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "uuid"

    invoke-virtual {p1}, Lim/doit/pro/model/SubTask;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    const-string v1, "created"

    invoke-virtual {p1}, Lim/doit/pro/model/SubTask;->getCreated()Ljava/util/Calendar;

    move-result-object v2

    invoke-static {v2}, Lim/doit/pro/utils/DateUtils;->convertToLong(Ljava/util/Calendar;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 158
    const-string v1, "updated"

    invoke-virtual {p1}, Lim/doit/pro/model/SubTask;->getUpdated()Ljava/util/Calendar;

    move-result-object v2

    invoke-static {v2}, Lim/doit/pro/utils/DateUtils;->convertToLong(Ljava/util/Calendar;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 159
    const-string v1, "title"

    invoke-virtual {p1}, Lim/doit/pro/model/SubTask;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    const-string v1, "task"

    invoke-virtual {p1}, Lim/doit/pro/model/SubTask;->getTask()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    const-string v1, "repeat_no"

    invoke-virtual {p1}, Lim/doit/pro/model/SubTask;->getRepeatNo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    const-string v1, "pos"

    invoke-virtual {p1}, Lim/doit/pro/model/SubTask;->getPos()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 163
    const-string v1, "completed"

    invoke-virtual {p1}, Lim/doit/pro/model/SubTask;->getCompleted()Ljava/util/Calendar;

    move-result-object v2

    invoke-static {v2}, Lim/doit/pro/utils/DateUtils;->convertToLong(Ljava/util/Calendar;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 164
    const-string v1, "trashed"

    invoke-virtual {p1}, Lim/doit/pro/model/SubTask;->getTrashed()Ljava/util/Calendar;

    move-result-object v2

    invoke-static {v2}, Lim/doit/pro/utils/DateUtils;->convertToLong(Ljava/util/Calendar;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 165
    const-string v1, "archived"

    invoke-virtual {p1}, Lim/doit/pro/model/SubTask;->getArchived()Ljava/util/Calendar;

    move-result-object v2

    invoke-static {v2}, Lim/doit/pro/utils/DateUtils;->convertToLong(Ljava/util/Calendar;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 166
    const-string v1, "hidden"

    invoke-virtual {p1}, Lim/doit/pro/model/SubTask;->getHidden()Ljava/util/Calendar;

    move-result-object v2

    invoke-static {v2}, Lim/doit/pro/utils/DateUtils;->convertToLong(Ljava/util/Calendar;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 167
    const-string v1, "deleted"

    invoke-virtual {p1}, Lim/doit/pro/model/SubTask;->getDeleted()Ljava/util/Calendar;

    move-result-object v2

    invoke-static {v2}, Lim/doit/pro/utils/DateUtils;->convertToLong(Ljava/util/Calendar;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 168
    if-eqz p2, :cond_0

    .line 169
    const-string v1, "usn"

    invoke-virtual {p1}, Lim/doit/pro/model/SubTask;->getUsn()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 171
    :cond_0
    return-object v0
.end method

.method protected bridge synthetic objectToContentValues(Ljava/lang/Object;Z)Landroid/content/ContentValues;
    .locals 1

    .prologue
    .line 1
    check-cast p1, Lim/doit/pro/model/SubTask;

    invoke-virtual {p0, p1, p2}, Lim/doit/pro/db/persist/SubTaskDao;->objectToContentValues(Lim/doit/pro/model/SubTask;Z)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method protected order()Ljava/lang/String;
    .locals 2

    .prologue
    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "pos"

    invoke-virtual {p0, v1}, Lim/doit/pro/db/persist/SubTaskDao;->asc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "created"

    invoke-virtual {p0, v1}, Lim/doit/pro/db/persist/SubTaskDao;->asc(Ljava/lang/String;)Ljava/lang/String;

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
    .line 197
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v0

    iget-object v0, v0, Lim/doit/pro/db/Persist;->opLogDao:Lim/doit/pro/db/persist/OpLogDao;

    sget-object v1, Lim/doit/pro/model/OpLog$OpType;->create:Lim/doit/pro/model/OpLog$OpType;

    invoke-virtual {v0, p1, v1}, Lim/doit/pro/db/persist/OpLogDao;->saveSubTaskLog(Ljava/lang/String;Lim/doit/pro/model/OpLog$OpType;)V

    .line 198
    return-void
.end method

.method protected saveDeleteLog(Ljava/lang/String;)V
    .locals 2
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    .line 187
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v0

    iget-object v0, v0, Lim/doit/pro/db/Persist;->opLogDao:Lim/doit/pro/db/persist/OpLogDao;

    sget-object v1, Lim/doit/pro/model/OpLog$OpType;->delete:Lim/doit/pro/model/OpLog$OpType;

    invoke-virtual {v0, p1, v1}, Lim/doit/pro/db/persist/OpLogDao;->saveSubTaskLog(Ljava/lang/String;Lim/doit/pro/model/OpLog$OpType;)V

    .line 188
    return-void
.end method

.method protected saveUpdateLog(Ljava/lang/String;)V
    .locals 2
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    .line 192
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v0

    iget-object v0, v0, Lim/doit/pro/db/Persist;->opLogDao:Lim/doit/pro/db/persist/OpLogDao;

    sget-object v1, Lim/doit/pro/model/OpLog$OpType;->update:Lim/doit/pro/model/OpLog$OpType;

    invoke-virtual {v0, p1, v1}, Lim/doit/pro/db/persist/OpLogDao;->saveSubTaskLog(Ljava/lang/String;Lim/doit/pro/model/OpLog$OpType;)V

    .line 193
    return-void
.end method

.method public uncomplete(Lim/doit/pro/model/SubTask;)V
    .locals 1
    .param p1, "t"    # Lim/doit/pro/model/SubTask;

    .prologue
    .line 56
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lim/doit/pro/model/SubTask;->setCompleted(Ljava/util/Calendar;)V

    .line 57
    invoke-virtual {p1}, Lim/doit/pro/model/SubTask;->getUuid()Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Lim/doit/pro/db/persist/DBaseDao;->uncomplete(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p1}, Lim/doit/pro/model/SubTask;->getUuid()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lim/doit/pro/db/persist/SubTaskDao;->saveUncompleteLog(Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method public bridge synthetic updateAndSaveLog(Lim/doit/pro/model/BaseEntity;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lim/doit/pro/model/SubTask;

    invoke-virtual {p0, p1}, Lim/doit/pro/db/persist/SubTaskDao;->updateAndSaveLog(Lim/doit/pro/model/SubTask;)V

    return-void
.end method

.method public updateAndSaveLog(Lim/doit/pro/model/SubTask;)V
    .locals 0
    .param p1, "t"    # Lim/doit/pro/model/SubTask;

    .prologue
    .line 46
    invoke-super {p0, p1}, Lim/doit/pro/db/persist/DBaseDao;->updateAndSaveLog(Lim/doit/pro/model/BaseEntity;)V

    .line 47
    return-void
.end method

.method public updatePos(Lim/doit/pro/model/SubTask;)V
    .locals 6
    .param p1, "t"    # Lim/doit/pro/model/SubTask;

    .prologue
    const/4 v5, 0x0

    .line 99
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 100
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "updated"

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 101
    const-string v1, "pos"

    invoke-virtual {p1}, Lim/doit/pro/model/SubTask;->getPos()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 102
    iget-object v1, p0, Lim/doit/pro/db/persist/SubTaskDao;->db:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v2, p0, Lim/doit/pro/db/persist/SubTaskDao;->tableName:Ljava/lang/String;

    invoke-virtual {p1}, Lim/doit/pro/model/SubTask;->getUuid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lim/doit/pro/db/persist/SubTaskDao;->uuidClause(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lim/doit/pro/db/persist/utils/SQLBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 103
    invoke-direct {p0, p1, v5, v5}, Lim/doit/pro/db/persist/SubTaskDao;->afterUpdate(Lim/doit/pro/model/SubTask;ZZ)V

    .line 104
    return-void
.end method
