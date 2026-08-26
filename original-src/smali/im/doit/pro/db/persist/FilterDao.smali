.class public Lim/doit/pro/db/persist/FilterDao;
.super Lim/doit/pro/db/persist/DBaseDao;
.source "FilterDao.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lim/doit/pro/db/persist/DBaseDao",
        "<",
        "Lim/doit/pro/model/Filter;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 40
    const-string v0, "filters"

    invoke-direct {p0, v0, p1}, Lim/doit/pro/db/persist/DBaseDao;-><init>(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 41
    return-void
.end method


# virtual methods
.method protected colunms()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 57
    const/16 v0, 0x13

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

    const-string v2, "hidden"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "deleted"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "tags"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "projects"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "contexts"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "priorities"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "end_at"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "start_at"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "assign_to"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    .line 58
    const-string v2, "senders"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "status"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "order_by"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "group_by"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "pos"

    aput-object v2, v0, v1

    .line 57
    return-object v0
.end method

.method public bridge synthetic createAndSaveLog(Lim/doit/pro/model/BaseEntity;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lim/doit/pro/model/Filter;

    invoke-virtual {p0, p1}, Lim/doit/pro/db/persist/FilterDao;->createAndSaveLog(Lim/doit/pro/model/Filter;)V

    return-void
.end method

.method public createAndSaveLog(Lim/doit/pro/model/Filter;)V
    .locals 2
    .param p1, "t"    # Lim/doit/pro/model/Filter;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 161
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "cannot create filter and save log."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected cursorToObject(Landroid/database/Cursor;)Lim/doit/pro/model/Filter;
    .locals 4
    .param p1, "c"    # Landroid/database/Cursor;

    .prologue
    .line 68
    new-instance v0, Lim/doit/pro/model/Filter;

    invoke-direct {v0}, Lim/doit/pro/model/Filter;-><init>()V

    .line 69
    .local v0, "filter":Lim/doit/pro/model/Filter;
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/model/Filter;->setUuid(Ljava/lang/String;)V

    .line 70
    const/4 v1, 0x1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Lim/doit/pro/utils/DateUtils;->convertToDate(J)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/model/Filter;->setCreated(Ljava/util/Calendar;)V

    .line 71
    const/4 v1, 0x2

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Lim/doit/pro/utils/DateUtils;->convertToDate(J)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/model/Filter;->setUpdated(Ljava/util/Calendar;)V

    .line 72
    const/4 v1, 0x3

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lim/doit/pro/model/Filter;->setUsn(J)V

    .line 73
    const/4 v1, 0x4

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/model/Filter;->setName(Ljava/lang/String;)V

    .line 74
    const/4 v1, 0x5

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Lim/doit/pro/utils/DateUtils;->convertToDate(J)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/model/Filter;->setHidden(Ljava/util/Calendar;)V

    .line 75
    const/4 v1, 0x6

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Lim/doit/pro/utils/DateUtils;->convertToDate(J)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/model/Filter;->setDeleted(Ljava/util/Calendar;)V

    .line 76
    const/4 v1, 0x7

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/model/Filter;->setJsonTags(Ljava/lang/String;)V

    .line 77
    const/16 v1, 0x8

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/model/Filter;->setJsonProjects(Ljava/lang/String;)V

    .line 78
    const/16 v1, 0x9

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/model/Filter;->setJsonContexts(Ljava/lang/String;)V

    .line 79
    const/16 v1, 0xa

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/model/Filter;->setJsonPriorityes(Ljava/lang/String;)V

    .line 80
    const/16 v1, 0xb

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/model/Filter;->setEndAt(Ljava/lang/String;)V

    .line 81
    const/16 v1, 0xc

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/model/Filter;->setStartAt(Ljava/lang/String;)V

    .line 82
    const/16 v1, 0xd

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/model/Filter;->setJsonAssignTo(Ljava/lang/String;)V

    .line 83
    const/16 v1, 0xe

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/model/Filter;->setJsonSenders(Ljava/lang/String;)V

    .line 84
    const/16 v1, 0xf

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/model/Filter;->setStatus(Ljava/lang/String;)V

    .line 85
    const/16 v1, 0x10

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/model/Filter;->setJsonOrderBy(Ljava/lang/String;)V

    .line 86
    const/16 v1, 0x11

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lim/doit/pro/model/enums/GroupByType;->getValue(Ljava/lang/String;)Lim/doit/pro/model/enums/GroupByType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/model/Filter;->setGroupBy(Lim/doit/pro/model/enums/GroupByType;)V

    .line 87
    const/16 v1, 0x12

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lim/doit/pro/model/Filter;->setPos(J)V

    .line 88
    return-object v0
.end method

.method protected bridge synthetic cursorToObject(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lim/doit/pro/db/persist/FilterDao;->cursorToObject(Landroid/database/Cursor;)Lim/doit/pro/model/Filter;

    move-result-object v0

    return-object v0
.end method

.method public findAllNotHiddenNotDelete()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lim/doit/pro/model/Filter;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 49
    new-instance v0, Lim/doit/pro/db/persist/utils/SQLBuilder;

    invoke-direct {v0}, Lim/doit/pro/db/persist/utils/SQLBuilder;-><init>()V

    .line 50
    .local v0, "sql":Lim/doit/pro/db/persist/utils/SQLBuilder;
    const-string v1, "hidden"

    invoke-virtual {v0, v1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->append(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Lim/doit/pro/db/persist/utils/SQLBuilder;->eq(I)Lim/doit/pro/db/persist/utils/SQLBuilder;

    .line 51
    const-string v1, "deleted"

    invoke-virtual {v0, v1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->and(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Lim/doit/pro/db/persist/utils/SQLBuilder;->eq(I)Lim/doit/pro/db/persist/utils/SQLBuilder;

    .line 52
    invoke-virtual {v0}, Lim/doit/pro/db/persist/utils/SQLBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lim/doit/pro/db/persist/FilterDao;->findList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method protected objectToContentValues(Lim/doit/pro/model/Filter;Z)Landroid/content/ContentValues;
    .locals 6
    .param p1, "t"    # Lim/doit/pro/model/Filter;
    .param p2, "isDownload"    # Z

    .prologue
    .line 93
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 94
    .local v1, "values":Landroid/content/ContentValues;
    const-string v2, "uuid"

    invoke-virtual {p1}, Lim/doit/pro/model/Filter;->getUuid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    const-string v2, "created"

    invoke-virtual {p1}, Lim/doit/pro/model/Filter;->getCreated()Ljava/util/Calendar;

    move-result-object v3

    invoke-static {v3}, Lim/doit/pro/utils/DateUtils;->convertToLong(Ljava/util/Calendar;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 96
    const-string v2, "updated"

    invoke-virtual {p1}, Lim/doit/pro/model/Filter;->getUpdated()Ljava/util/Calendar;

    move-result-object v3

    invoke-static {v3}, Lim/doit/pro/utils/DateUtils;->convertToLong(Ljava/util/Calendar;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 97
    const-string v2, "name"

    invoke-virtual {p1}, Lim/doit/pro/model/Filter;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    const-string v2, "hidden"

    invoke-virtual {p1}, Lim/doit/pro/model/Filter;->getHidden()Ljava/util/Calendar;

    move-result-object v3

    invoke-static {v3}, Lim/doit/pro/utils/DateUtils;->convertToLong(Ljava/util/Calendar;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 99
    const-string v2, "deleted"

    invoke-virtual {p1}, Lim/doit/pro/model/Filter;->getDeleted()Ljava/util/Calendar;

    move-result-object v3

    invoke-static {v3}, Lim/doit/pro/utils/DateUtils;->convertToLong(Ljava/util/Calendar;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 100
    const-string v2, "status"

    invoke-virtual {p1}, Lim/doit/pro/model/Filter;->getStatus()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const-string v2, "end_at"

    invoke-virtual {p1}, Lim/doit/pro/model/Filter;->getEndAt()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const-string v2, "start_at"

    invoke-virtual {p1}, Lim/doit/pro/model/Filter;->getStartAt()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    const-string v2, "group_by"

    invoke-virtual {p1}, Lim/doit/pro/model/Filter;->getGroupBy()Lim/doit/pro/model/enums/GroupByType;

    move-result-object v3

    invoke-static {v3}, Lim/doit/pro/model/enums/GroupByType;->toString(Lim/doit/pro/model/enums/GroupByType;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    const-string v2, "pos"

    invoke-virtual {p1}, Lim/doit/pro/model/Filter;->getPos()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 105
    if-eqz p2, :cond_0

    .line 106
    const-string v2, "tags"

    invoke-virtual {p1}, Lim/doit/pro/model/Filter;->getJsonTags()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    const-string v2, "projects"

    invoke-virtual {p1}, Lim/doit/pro/model/Filter;->getJsonProjects()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    const-string v2, "contexts"

    invoke-virtual {p1}, Lim/doit/pro/model/Filter;->getJsonContexts()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    const-string v2, "priorities"

    invoke-virtual {p1}, Lim/doit/pro/model/Filter;->getJsonPriorityes()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    const-string v2, "assign_to"

    invoke-virtual {p1}, Lim/doit/pro/model/Filter;->getJsonAssignTo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    const-string v2, "senders"

    invoke-virtual {p1}, Lim/doit/pro/model/Filter;->getJsonSenders()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    const-string v2, "order_by"

    invoke-virtual {p1}, Lim/doit/pro/model/Filter;->getJsonOrderBy()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    const-string v2, "usn"

    invoke-virtual {p1}, Lim/doit/pro/model/Filter;->getUsn()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 155
    :goto_0
    return-object v1

    .line 116
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lim/doit/pro/model/Filter;->getTags()Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v2}, Lim/doit/pro/utils/CollectionUtils;->isNotEmpty(Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 117
    const-string v2, "tags"

    invoke-static {}, Lim/doit/pro/activity/DoitApp;->json()Lim/doit/pro/utils/JsonFormat;

    move-result-object v3

    invoke-virtual {p1}, Lim/doit/pro/model/Filter;->getTags()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v3, v4}, Lim/doit/pro/utils/JsonFormat;->serialize(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    :goto_1
    invoke-virtual {p1}, Lim/doit/pro/model/Filter;->getProjects()Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v2}, Lim/doit/pro/utils/CollectionUtils;->isNotEmpty(Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 122
    const-string v2, "projects"

    invoke-static {}, Lim/doit/pro/activity/DoitApp;->json()Lim/doit/pro/utils/JsonFormat;

    move-result-object v3

    invoke-virtual {p1}, Lim/doit/pro/model/Filter;->getProjects()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v3, v4}, Lim/doit/pro/utils/JsonFormat;->serialize(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    :goto_2
    invoke-virtual {p1}, Lim/doit/pro/model/Filter;->getContexts()Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v2}, Lim/doit/pro/utils/CollectionUtils;->isNotEmpty(Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 127
    const-string v2, "contexts"

    invoke-static {}, Lim/doit/pro/activity/DoitApp;->json()Lim/doit/pro/utils/JsonFormat;

    move-result-object v3

    invoke-virtual {p1}, Lim/doit/pro/model/Filter;->getContexts()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v3, v4}, Lim/doit/pro/utils/JsonFormat;->serialize(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    :goto_3
    invoke-virtual {p1}, Lim/doit/pro/model/Filter;->getPriorities()Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v2}, Lim/doit/pro/utils/CollectionUtils;->isNotEmpty(Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 132
    const-string v2, "priorities"

    invoke-static {}, Lim/doit/pro/activity/DoitApp;->json()Lim/doit/pro/utils/JsonFormat;

    move-result-object v3

    invoke-virtual {p1}, Lim/doit/pro/model/Filter;->getPriorities()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v3, v4}, Lim/doit/pro/utils/JsonFormat;->serialize(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    :goto_4
    invoke-virtual {p1}, Lim/doit/pro/model/Filter;->getAssignTo()Lim/doit/pro/model/FilterAssignTo;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 137
    const-string v2, "assign_to"

    invoke-static {}, Lim/doit/pro/activity/DoitApp;->json()Lim/doit/pro/utils/JsonFormat;

    move-result-object v3

    invoke-virtual {p1}, Lim/doit/pro/model/Filter;->getAssignTo()Lim/doit/pro/model/FilterAssignTo;

    move-result-object v4

    invoke-virtual {v3, v4}, Lim/doit/pro/utils/JsonFormat;->serialize(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    :goto_5
    invoke-virtual {p1}, Lim/doit/pro/model/Filter;->getSenders()Lim/doit/pro/model/FilterSender;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 142
    const-string v2, "senders"

    invoke-static {}, Lim/doit/pro/activity/DoitApp;->json()Lim/doit/pro/utils/JsonFormat;

    move-result-object v3

    invoke-virtual {p1}, Lim/doit/pro/model/Filter;->getSenders()Lim/doit/pro/model/FilterSender;

    move-result-object v4

    invoke-virtual {v3, v4}, Lim/doit/pro/utils/JsonFormat;->serialize(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    :goto_6
    invoke-virtual {p1}, Lim/doit/pro/model/Filter;->getOrderBy()Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 147
    const-string v2, "order_by"

    invoke-static {}, Lim/doit/pro/activity/DoitApp;->json()Lim/doit/pro/utils/JsonFormat;

    move-result-object v3

    invoke-virtual {p1}, Lim/doit/pro/model/Filter;->getOrderBy()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v3, v4}, Lim/doit/pro/utils/JsonFormat;->serialize(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 151
    :catch_0
    move-exception v0

    .line 152
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 119
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :try_start_1
    const-string v2, "tags"

    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 124
    :cond_2
    const-string v2, "projects"

    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 129
    :cond_3
    const-string v2, "contexts"

    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    goto :goto_3

    .line 134
    :cond_4
    const-string v2, "priorities"

    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    goto :goto_4

    .line 139
    :cond_5
    const-string v2, "assign_to"

    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    goto :goto_5

    .line 144
    :cond_6
    const-string v2, "senders"

    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    goto :goto_6

    .line 149
    :cond_7
    const-string v2, "order_by"

    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method protected bridge synthetic objectToContentValues(Ljava/lang/Object;Z)Landroid/content/ContentValues;
    .locals 1

    .prologue
    .line 1
    check-cast p1, Lim/doit/pro/model/Filter;

    invoke-virtual {p0, p1, p2}, Lim/doit/pro/db/persist/FilterDao;->objectToContentValues(Lim/doit/pro/model/Filter;Z)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method protected order()Ljava/lang/String;
    .locals 2

    .prologue
    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "pos"

    invoke-virtual {p0, v1}, Lim/doit/pro/db/persist/FilterDao;->asc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "created"

    invoke-virtual {p0, v1}, Lim/doit/pro/db/persist/FilterDao;->asc(Ljava/lang/String;)Ljava/lang/String;

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
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 167
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "cannot create filter."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected saveDeleteLog(Ljava/lang/String;)V
    .locals 2
    .param p1, "uuid"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 178
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "cannot delete filter."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected saveUpdateLog(Ljava/lang/String;)V
    .locals 2
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    .line 172
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v0

    iget-object v0, v0, Lim/doit/pro/db/Persist;->opLogDao:Lim/doit/pro/db/persist/OpLogDao;

    sget-object v1, Lim/doit/pro/model/OpLog$OpType;->update:Lim/doit/pro/model/OpLog$OpType;

    invoke-virtual {v0, p1, v1}, Lim/doit/pro/db/persist/OpLogDao;->saveFilterLog(Ljava/lang/String;Lim/doit/pro/model/OpLog$OpType;)V

    .line 173
    return-void
.end method

.method public bridge synthetic updateAndSaveLog(Lim/doit/pro/model/BaseEntity;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lim/doit/pro/model/Filter;

    invoke-virtual {p0, p1}, Lim/doit/pro/db/persist/FilterDao;->updateAndSaveLog(Lim/doit/pro/model/Filter;)V

    return-void
.end method

.method public updateAndSaveLog(Lim/doit/pro/model/Filter;)V
    .locals 0
    .param p1, "t"    # Lim/doit/pro/model/Filter;

    .prologue
    .line 45
    invoke-super {p0, p1}, Lim/doit/pro/db/persist/DBaseDao;->updateAndSaveLog(Lim/doit/pro/model/BaseEntity;)V

    .line 46
    return-void
.end method
