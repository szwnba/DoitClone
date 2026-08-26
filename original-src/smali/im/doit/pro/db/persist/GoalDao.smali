.class public Lim/doit/pro/db/persist/GoalDao;
.super Lim/doit/pro/db/persist/DBaseDao;
.source "GoalDao.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lim/doit/pro/db/persist/DBaseDao",
        "<",
        "Lim/doit/pro/model/Goal;",
        ">;"
    }
.end annotation


# instance fields
.field private mGoalDaoHelper:Lim/doit/pro/db/persist/utils/GoalDaoHelper;


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 42
    const-string v0, "goals"

    invoke-direct {p0, v0, p1}, Lim/doit/pro/db/persist/DBaseDao;-><init>(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 43
    new-instance v0, Lim/doit/pro/db/persist/utils/GoalDaoHelper;

    invoke-direct {v0}, Lim/doit/pro/db/persist/utils/GoalDaoHelper;-><init>()V

    iput-object v0, p0, Lim/doit/pro/db/persist/GoalDao;->mGoalDaoHelper:Lim/doit/pro/db/persist/utils/GoalDaoHelper;

    .line 44
    return-void
.end method

.method private afterUpdate(Lim/doit/pro/model/Goal;ZZ)V
    .locals 0
    .param p1, "t"    # Lim/doit/pro/model/Goal;
    .param p2, "isDownload"    # Z
    .param p3, "isRefresh"    # Z

    .prologue
    .line 73
    invoke-super {p0, p1, p2}, Lim/doit/pro/db/persist/DBaseDao;->afterUpdate(Lim/doit/pro/model/BaseEntity;Z)V

    .line 74
    if-nez p2, :cond_0

    if-eqz p3, :cond_0

    .line 75
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->refreshWidget()V

    .line 77
    :cond_0
    return-void
.end method

.method private saveArchiveLog(Ljava/lang/String;)V
    .locals 2
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    .line 260
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v0

    iget-object v0, v0, Lim/doit/pro/db/Persist;->opLogDao:Lim/doit/pro/db/persist/OpLogDao;

    sget-object v1, Lim/doit/pro/model/OpLog$OpType;->archive:Lim/doit/pro/model/OpLog$OpType;

    invoke-virtual {v0, p1, v1}, Lim/doit/pro/db/persist/OpLogDao;->saveGoalLog(Ljava/lang/String;Lim/doit/pro/model/OpLog$OpType;)V

    .line 261
    return-void
.end method

.method private saveCompleteLog(Ljava/lang/String;)V
    .locals 2
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    .line 244
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v0

    iget-object v0, v0, Lim/doit/pro/db/Persist;->opLogDao:Lim/doit/pro/db/persist/OpLogDao;

    sget-object v1, Lim/doit/pro/model/OpLog$OpType;->complete:Lim/doit/pro/model/OpLog$OpType;

    invoke-virtual {v0, p1, v1}, Lim/doit/pro/db/persist/OpLogDao;->saveGoalLog(Ljava/lang/String;Lim/doit/pro/model/OpLog$OpType;)V

    .line 245
    return-void
.end method

.method private saveTrashLog(Ljava/lang/String;)V
    .locals 2
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    .line 252
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v0

    iget-object v0, v0, Lim/doit/pro/db/Persist;->opLogDao:Lim/doit/pro/db/persist/OpLogDao;

    sget-object v1, Lim/doit/pro/model/OpLog$OpType;->trash:Lim/doit/pro/model/OpLog$OpType;

    invoke-virtual {v0, p1, v1}, Lim/doit/pro/db/persist/OpLogDao;->saveGoalLog(Ljava/lang/String;Lim/doit/pro/model/OpLog$OpType;)V

    .line 253
    return-void
.end method

.method private saveUncompleteLog(Ljava/lang/String;)V
    .locals 2
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    .line 248
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v0

    iget-object v0, v0, Lim/doit/pro/db/Persist;->opLogDao:Lim/doit/pro/db/persist/OpLogDao;

    sget-object v1, Lim/doit/pro/model/OpLog$OpType;->uncomplete:Lim/doit/pro/model/OpLog$OpType;

    invoke-virtual {v0, p1, v1}, Lim/doit/pro/db/persist/OpLogDao;->saveGoalLog(Ljava/lang/String;Lim/doit/pro/model/OpLog$OpType;)V

    .line 249
    return-void
.end method

.method private saveUntrashLog(Ljava/lang/String;)V
    .locals 2
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    .line 256
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v0

    iget-object v0, v0, Lim/doit/pro/db/Persist;->opLogDao:Lim/doit/pro/db/persist/OpLogDao;

    sget-object v1, Lim/doit/pro/model/OpLog$OpType;->untrash:Lim/doit/pro/model/OpLog$OpType;

    invoke-virtual {v0, p1, v1}, Lim/doit/pro/db/persist/OpLogDao;->saveGoalLog(Ljava/lang/String;Lim/doit/pro/model/OpLog$OpType;)V

    .line 257
    return-void
.end method


# virtual methods
.method protected bridge synthetic afterUpdate(Lim/doit/pro/model/BaseEntity;Z)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lim/doit/pro/model/Goal;

    invoke-virtual {p0, p1, p2}, Lim/doit/pro/db/persist/GoalDao;->afterUpdate(Lim/doit/pro/model/Goal;Z)V

    return-void
.end method

.method protected afterUpdate(Lim/doit/pro/model/Goal;Z)V
    .locals 1
    .param p1, "t"    # Lim/doit/pro/model/Goal;
    .param p2, "isDownload"    # Z

    .prologue
    .line 69
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lim/doit/pro/db/persist/GoalDao;->afterUpdate(Lim/doit/pro/model/Goal;ZZ)V

    .line 70
    return-void
.end method

.method public archive(Lim/doit/pro/model/Goal;)V
    .locals 2
    .param p1, "goal"    # Lim/doit/pro/model/Goal;

    .prologue
    .line 108
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {p1, v0}, Lim/doit/pro/model/Goal;->setArchived(Ljava/util/Calendar;)V

    .line 109
    invoke-virtual {p1}, Lim/doit/pro/model/Goal;->getUuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lim/doit/pro/model/Goal;->getArchived()Ljava/util/Calendar;

    move-result-object v1

    invoke-super {p0, v0, v1}, Lim/doit/pro/db/persist/DBaseDao;->archive(Ljava/lang/String;Ljava/util/Calendar;)V

    .line 110
    invoke-virtual {p1}, Lim/doit/pro/model/Goal;->getUuid()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lim/doit/pro/db/persist/GoalDao;->saveArchiveLog(Ljava/lang/String;)V

    .line 111
    return-void
.end method

.method protected colunms()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 220
    const/16 v0, 0xc

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

    const-string v2, "group_by"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "pos"

    aput-object v2, v0, v1

    return-object v0
.end method

.method public complete(Lim/doit/pro/model/Goal;)V
    .locals 2
    .param p1, "goal"    # Lim/doit/pro/model/Goal;

    .prologue
    .line 80
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {p1, v0}, Lim/doit/pro/model/Goal;->setCompleted(Ljava/util/Calendar;)V

    .line 81
    invoke-virtual {p1}, Lim/doit/pro/model/Goal;->getUuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lim/doit/pro/model/Goal;->getCompleted()Ljava/util/Calendar;

    move-result-object v1

    invoke-super {p0, v0, v1}, Lim/doit/pro/db/persist/DBaseDao;->complete(Ljava/lang/String;Ljava/util/Calendar;)V

    .line 82
    invoke-virtual {p1}, Lim/doit/pro/model/Goal;->getUuid()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lim/doit/pro/db/persist/GoalDao;->saveCompleteLog(Ljava/lang/String;)V

    .line 83
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->refreshWidget()V

    .line 84
    return-void
.end method

.method public bridge synthetic createAndSaveLog(Lim/doit/pro/model/BaseEntity;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lim/doit/pro/model/Goal;

    invoke-virtual {p0, p1}, Lim/doit/pro/db/persist/GoalDao;->createAndSaveLog(Lim/doit/pro/model/Goal;)V

    return-void
.end method

.method public createAndSaveLog(Lim/doit/pro/model/Goal;)V
    .locals 6
    .param p1, "t"    # Lim/doit/pro/model/Goal;

    .prologue
    .line 49
    invoke-static {}, Lim/doit/pro/utils/PrefUtils;->getMaxPosition()J

    move-result-wide v2

    sget-wide v4, Lim/doit/pro/utils/Constants;->GAP:J

    add-long v0, v2, v4

    .line 50
    .local v0, "pos":J
    const-wide v2, 0x7ffffffffffffffeL

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 51
    const-wide v0, 0x7ffffffffffffffeL

    .line 53
    :cond_0
    invoke-virtual {p1, v0, v1}, Lim/doit/pro/model/Goal;->setPos(J)V

    .line 54
    invoke-super {p0, p1}, Lim/doit/pro/db/persist/DBaseDao;->createAndSaveLog(Lim/doit/pro/model/BaseEntity;)V

    .line 55
    return-void
.end method

.method protected cursorToObject(Landroid/database/Cursor;)Lim/doit/pro/model/Goal;
    .locals 4
    .param p1, "c"    # Landroid/database/Cursor;

    .prologue
    .line 182
    new-instance v0, Lim/doit/pro/model/Goal;

    invoke-direct {v0}, Lim/doit/pro/model/Goal;-><init>()V

    .line 183
    .local v0, "goal":Lim/doit/pro/model/Goal;
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/model/Goal;->setUuid(Ljava/lang/String;)V

    .line 184
    const/4 v1, 0x1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Lim/doit/pro/utils/DateUtils;->convertToDate(J)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/model/Goal;->setCreated(Ljava/util/Calendar;)V

    .line 185
    const/4 v1, 0x2

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Lim/doit/pro/utils/DateUtils;->convertToDate(J)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/model/Goal;->setUpdated(Ljava/util/Calendar;)V

    .line 186
    const/4 v1, 0x3

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lim/doit/pro/model/Goal;->setUsn(J)V

    .line 187
    const/4 v1, 0x4

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/model/Goal;->setName(Ljava/lang/String;)V

    .line 188
    const/4 v1, 0x5

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/model/Goal;->setNotes(Ljava/lang/String;)V

    .line 189
    const/4 v1, 0x6

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Lim/doit/pro/utils/DateUtils;->convertToDate(J)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/model/Goal;->setDeleted(Ljava/util/Calendar;)V

    .line 190
    const/4 v1, 0x7

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Lim/doit/pro/utils/DateUtils;->convertToDate(J)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/model/Goal;->setArchived(Ljava/util/Calendar;)V

    .line 191
    const/16 v1, 0x8

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Lim/doit/pro/utils/DateUtils;->convertToDate(J)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/model/Goal;->setTrashed(Ljava/util/Calendar;)V

    .line 192
    const/16 v1, 0x9

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Lim/doit/pro/utils/DateUtils;->convertToDate(J)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/model/Goal;->setCompleted(Ljava/util/Calendar;)V

    .line 193
    const/16 v1, 0xa

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lim/doit/pro/model/enums/GroupByType;->getValue(Ljava/lang/String;)Lim/doit/pro/model/enums/GroupByType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/model/Goal;->setGroupBy(Lim/doit/pro/model/enums/GroupByType;)V

    .line 194
    const/16 v1, 0xb

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lim/doit/pro/model/Goal;->setPos(J)V

    .line 195
    return-object v0
.end method

.method protected bridge synthetic cursorToObject(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lim/doit/pro/db/persist/GoalDao;->cursorToObject(Landroid/database/Cursor;)Lim/doit/pro/model/Goal;

    move-result-object v0

    return-object v0
.end method

.method public delete(Lim/doit/pro/model/Goal;)V
    .locals 2
    .param p1, "goal"    # Lim/doit/pro/model/Goal;

    .prologue
    .line 114
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {p1, v0}, Lim/doit/pro/model/Goal;->setDeleted(Ljava/util/Calendar;)V

    .line 115
    invoke-virtual {p1}, Lim/doit/pro/model/Goal;->getUuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lim/doit/pro/model/Goal;->getDeleted()Ljava/util/Calendar;

    move-result-object v1

    invoke-super {p0, v0, v1}, Lim/doit/pro/db/persist/DBaseDao;->delete(Ljava/lang/String;Ljava/util/Calendar;)V

    .line 116
    invoke-virtual {p1}, Lim/doit/pro/model/Goal;->getUuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lim/doit/pro/db/persist/GoalDao;->saveDeleteLog(Ljava/lang/String;)V

    .line 117
    return-void
.end method

.method public findAllNotDead()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lim/doit/pro/model/Goal;",
            ">;"
        }
    .end annotation

    .prologue
    .line 128
    iget-object v0, p0, Lim/doit/pro/db/persist/GoalDao;->mGoalDaoHelper:Lim/doit/pro/db/persist/utils/GoalDaoHelper;

    invoke-virtual {v0}, Lim/doit/pro/db/persist/utils/GoalDaoHelper;->notDead()Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lim/doit/pro/db/persist/utils/SQLBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lim/doit/pro/db/persist/GoalDao;->findList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public findByName(Ljava/lang/String;)Lim/doit/pro/model/Goal;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 132
    new-instance v0, Lim/doit/pro/db/persist/utils/SQLBuilder;

    invoke-direct {v0}, Lim/doit/pro/db/persist/utils/SQLBuilder;-><init>()V

    .line 133
    .local v0, "sql":Lim/doit/pro/db/persist/utils/SQLBuilder;
    const-string v1, "deleted"

    invoke-virtual {v0, v1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->append(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Lim/doit/pro/db/persist/utils/SQLBuilder;->eq(I)Lim/doit/pro/db/persist/utils/SQLBuilder;

    .line 134
    const-string v1, "archived"

    invoke-virtual {v0, v1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->and(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Lim/doit/pro/db/persist/utils/SQLBuilder;->eq(I)Lim/doit/pro/db/persist/utils/SQLBuilder;

    .line 135
    const-string v1, "trashed"

    invoke-virtual {v0, v1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->and(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Lim/doit/pro/db/persist/utils/SQLBuilder;->eq(I)Lim/doit/pro/db/persist/utils/SQLBuilder;

    .line 136
    const-string v1, "name"

    invoke-virtual {v0, v1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->and(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v1

    const-string v2, "?"

    invoke-virtual {v1, v2}, Lim/doit/pro/db/persist/utils/SQLBuilder;->eqWithArgs(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    .line 137
    invoke-virtual {v0}, Lim/doit/pro/db/persist/utils/SQLBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    aput-object p1, v2, v3

    invoke-virtual {p0, v1, v2}, Lim/doit/pro/db/persist/GoalDao;->findOne(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lim/doit/pro/model/Goal;

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
            "Lim/doit/pro/model/Goal;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 174
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 175
    iget-object v1, p0, Lim/doit/pro/db/persist/GoalDao;->mGoalDaoHelper:Lim/doit/pro/db/persist/utils/GoalDaoHelper;

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "name"

    aput-object v3, v2, v4

    const-string v3, "notes"

    aput-object v3, v2, v5

    invoke-virtual {v1, v2}, Lim/doit/pro/db/persist/utils/GoalDaoHelper;->getSearchByKeyClause([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 176
    .local v0, "clause":Ljava/lang/String;
    new-array v1, v6, [Ljava/lang/String;

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

    .line 177
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

    .line 176
    invoke-virtual {p0, v0, v1}, Lim/doit/pro/db/persist/GoalDao;->findList(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

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
            "Lim/doit/pro/model/Goal;",
            ">;"
        }
    .end annotation

    .prologue
    .line 120
    iget-object v0, p0, Lim/doit/pro/db/persist/GoalDao;->mGoalDaoHelper:Lim/doit/pro/db/persist/utils/GoalDaoHelper;

    invoke-virtual {v0}, Lim/doit/pro/db/persist/utils/GoalDaoHelper;->completed()Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lim/doit/pro/db/persist/utils/SQLBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lim/doit/pro/db/persist/GoalDao;->findList(Ljava/lang/String;)Ljava/util/ArrayList;

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
            "Lim/doit/pro/model/Goal;",
            ">;"
        }
    .end annotation

    .prologue
    .line 124
    iget-object v0, p0, Lim/doit/pro/db/persist/GoalDao;->mGoalDaoHelper:Lim/doit/pro/db/persist/utils/GoalDaoHelper;

    invoke-virtual {v0}, Lim/doit/pro/db/persist/utils/GoalDaoHelper;->trash()Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lim/doit/pro/db/persist/utils/SQLBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lim/doit/pro/db/persist/GoalDao;->findList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public mergeTheSameName(Lim/doit/pro/model/Goal;)Z
    .locals 4
    .param p1, "serverGoal"    # Lim/doit/pro/model/Goal;

    .prologue
    const/4 v1, 0x0

    .line 141
    if-nez p1, :cond_1

    .line 152
    :cond_0
    :goto_0
    return v1

    .line 144
    :cond_1
    invoke-virtual {p1}, Lim/doit/pro/model/Goal;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lim/doit/pro/db/persist/GoalDao;->findByName(Ljava/lang/String;)Lim/doit/pro/model/Goal;

    move-result-object v0

    .line 145
    .local v0, "goal":Lim/doit/pro/model/Goal;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lim/doit/pro/model/Goal;->isDead()Z

    move-result v2

    if-nez v2, :cond_0

    .line 148
    invoke-virtual {p1}, Lim/doit/pro/model/Goal;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lim/doit/pro/model/Goal;->getUuid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 149
    invoke-virtual {p0, v0, p1}, Lim/doit/pro/db/persist/GoalDao;->updateConflictGoal(Lim/doit/pro/model/Goal;Lim/doit/pro/model/Goal;)V

    .line 150
    const/4 v1, 0x1

    goto :goto_0
.end method

.method protected objectToContentValues(Lim/doit/pro/model/Goal;Z)Landroid/content/ContentValues;
    .locals 4
    .param p1, "t"    # Lim/doit/pro/model/Goal;
    .param p2, "isDownload"    # Z

    .prologue
    .line 200
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 201
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "uuid"

    invoke-virtual {p1}, Lim/doit/pro/model/Goal;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    const-string v1, "created"

    invoke-virtual {p1}, Lim/doit/pro/model/Goal;->getCreated()Ljava/util/Calendar;

    move-result-object v2

    invoke-static {v2}, Lim/doit/pro/utils/DateUtils;->convertToLong(Ljava/util/Calendar;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 203
    const-string v1, "updated"

    invoke-virtual {p1}, Lim/doit/pro/model/Goal;->getUpdated()Ljava/util/Calendar;

    move-result-object v2

    invoke-static {v2}, Lim/doit/pro/utils/DateUtils;->convertToLong(Ljava/util/Calendar;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 204
    const-string v1, "name"

    invoke-virtual {p1}, Lim/doit/pro/model/Goal;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    const-string v1, "notes"

    invoke-virtual {p1}, Lim/doit/pro/model/Goal;->getNotes()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    const-string v1, "deleted"

    invoke-virtual {p1}, Lim/doit/pro/model/Goal;->getDeleted()Ljava/util/Calendar;

    move-result-object v2

    invoke-static {v2}, Lim/doit/pro/utils/DateUtils;->convertToLong(Ljava/util/Calendar;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 207
    const-string v1, "archived"

    invoke-virtual {p1}, Lim/doit/pro/model/Goal;->getArchived()Ljava/util/Calendar;

    move-result-object v2

    invoke-static {v2}, Lim/doit/pro/utils/DateUtils;->convertToLong(Ljava/util/Calendar;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 208
    const-string v1, "trashed"

    invoke-virtual {p1}, Lim/doit/pro/model/Goal;->getTrashed()Ljava/util/Calendar;

    move-result-object v2

    invoke-static {v2}, Lim/doit/pro/utils/DateUtils;->convertToLong(Ljava/util/Calendar;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 209
    const-string v1, "completed"

    invoke-virtual {p1}, Lim/doit/pro/model/Goal;->getCompleted()Ljava/util/Calendar;

    move-result-object v2

    invoke-static {v2}, Lim/doit/pro/utils/DateUtils;->convertToLong(Ljava/util/Calendar;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 210
    const-string v1, "group_by"

    invoke-virtual {p1}, Lim/doit/pro/model/Goal;->getGroupBy()Lim/doit/pro/model/enums/GroupByType;

    move-result-object v2

    invoke-static {v2}, Lim/doit/pro/model/enums/GroupByType;->toString(Lim/doit/pro/model/enums/GroupByType;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    const-string v1, "pos"

    invoke-virtual {p1}, Lim/doit/pro/model/Goal;->getPos()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 212
    if-eqz p2, :cond_0

    .line 213
    const-string v1, "usn"

    invoke-virtual {p1}, Lim/doit/pro/model/Goal;->getUsn()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 215
    :cond_0
    return-object v0
.end method

.method protected bridge synthetic objectToContentValues(Ljava/lang/Object;Z)Landroid/content/ContentValues;
    .locals 1

    .prologue
    .line 1
    check-cast p1, Lim/doit/pro/model/Goal;

    invoke-virtual {p0, p1, p2}, Lim/doit/pro/db/persist/GoalDao;->objectToContentValues(Lim/doit/pro/model/Goal;Z)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method protected order()Ljava/lang/String;
    .locals 2

    .prologue
    .line 225
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "pos"

    invoke-virtual {p0, v1}, Lim/doit/pro/db/persist/GoalDao;->asc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "created"

    invoke-virtual {p0, v1}, Lim/doit/pro/db/persist/GoalDao;->asc(Ljava/lang/String;)Ljava/lang/String;

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
    .line 240
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v0

    iget-object v0, v0, Lim/doit/pro/db/Persist;->opLogDao:Lim/doit/pro/db/persist/OpLogDao;

    sget-object v1, Lim/doit/pro/model/OpLog$OpType;->create:Lim/doit/pro/model/OpLog$OpType;

    invoke-virtual {v0, p1, v1}, Lim/doit/pro/db/persist/OpLogDao;->saveGoalLog(Ljava/lang/String;Lim/doit/pro/model/OpLog$OpType;)V

    .line 241
    return-void
.end method

.method protected saveDeleteLog(Ljava/lang/String;)V
    .locals 2
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    .line 230
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v0

    iget-object v0, v0, Lim/doit/pro/db/Persist;->opLogDao:Lim/doit/pro/db/persist/OpLogDao;

    sget-object v1, Lim/doit/pro/model/OpLog$OpType;->delete:Lim/doit/pro/model/OpLog$OpType;

    invoke-virtual {v0, p1, v1}, Lim/doit/pro/db/persist/OpLogDao;->saveGoalLog(Ljava/lang/String;Lim/doit/pro/model/OpLog$OpType;)V

    .line 231
    return-void
.end method

.method protected saveUpdateLog(Ljava/lang/String;)V
    .locals 2
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    .line 235
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v0

    iget-object v0, v0, Lim/doit/pro/db/Persist;->opLogDao:Lim/doit/pro/db/persist/OpLogDao;

    sget-object v1, Lim/doit/pro/model/OpLog$OpType;->update:Lim/doit/pro/model/OpLog$OpType;

    invoke-virtual {v0, p1, v1}, Lim/doit/pro/db/persist/OpLogDao;->saveGoalLog(Ljava/lang/String;Lim/doit/pro/model/OpLog$OpType;)V

    .line 236
    return-void
.end method

.method public trash(Lim/doit/pro/model/Goal;)V
    .locals 2
    .param p1, "goal"    # Lim/doit/pro/model/Goal;

    .prologue
    .line 94
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {p1, v0}, Lim/doit/pro/model/Goal;->setTrashed(Ljava/util/Calendar;)V

    .line 95
    invoke-virtual {p1}, Lim/doit/pro/model/Goal;->getUuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lim/doit/pro/model/Goal;->getTrashed()Ljava/util/Calendar;

    move-result-object v1

    invoke-super {p0, v0, v1}, Lim/doit/pro/db/persist/DBaseDao;->trash(Ljava/lang/String;Ljava/util/Calendar;)V

    .line 96
    invoke-virtual {p1}, Lim/doit/pro/model/Goal;->getUuid()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lim/doit/pro/db/persist/GoalDao;->saveTrashLog(Ljava/lang/String;)V

    .line 97
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->refreshWidget()V

    .line 98
    return-void
.end method

.method public uncomplete(Lim/doit/pro/model/Goal;)V
    .locals 1
    .param p1, "goal"    # Lim/doit/pro/model/Goal;

    .prologue
    .line 87
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lim/doit/pro/model/Goal;->setCompleted(Ljava/util/Calendar;)V

    .line 88
    invoke-virtual {p1}, Lim/doit/pro/model/Goal;->getUuid()Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Lim/doit/pro/db/persist/DBaseDao;->uncomplete(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p1}, Lim/doit/pro/model/Goal;->getUuid()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lim/doit/pro/db/persist/GoalDao;->saveUncompleteLog(Ljava/lang/String;)V

    .line 90
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->refreshWidget()V

    .line 91
    return-void
.end method

.method public untrash(Lim/doit/pro/model/Goal;)V
    .locals 1
    .param p1, "goal"    # Lim/doit/pro/model/Goal;

    .prologue
    .line 101
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lim/doit/pro/model/Goal;->setTrashed(Ljava/util/Calendar;)V

    .line 102
    invoke-virtual {p1}, Lim/doit/pro/model/Goal;->getUuid()Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Lim/doit/pro/db/persist/DBaseDao;->untrash(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p1}, Lim/doit/pro/model/Goal;->getUuid()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lim/doit/pro/db/persist/GoalDao;->saveUntrashLog(Ljava/lang/String;)V

    .line 104
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->refreshWidget()V

    .line 105
    return-void
.end method

.method public bridge synthetic updateAndSaveLog(Lim/doit/pro/model/BaseEntity;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lim/doit/pro/model/Goal;

    invoke-virtual {p0, p1}, Lim/doit/pro/db/persist/GoalDao;->updateAndSaveLog(Lim/doit/pro/model/Goal;)V

    return-void
.end method

.method public updateAndSaveLog(Lim/doit/pro/model/Goal;)V
    .locals 0
    .param p1, "t"    # Lim/doit/pro/model/Goal;

    .prologue
    .line 59
    invoke-super {p0, p1}, Lim/doit/pro/db/persist/DBaseDao;->updateAndSaveLog(Lim/doit/pro/model/BaseEntity;)V

    .line 60
    return-void
.end method

.method public updateConflictGoal(Lim/doit/pro/model/Goal;Lim/doit/pro/model/Goal;)V
    .locals 7
    .param p1, "logalGoal"    # Lim/doit/pro/model/Goal;
    .param p2, "serverGoal"    # Lim/doit/pro/model/Goal;

    .prologue
    .line 156
    invoke-virtual {p1}, Lim/doit/pro/model/Goal;->getUuid()Ljava/lang/String;

    move-result-object v1

    .line 157
    .local v1, "localUUID":Ljava/lang/String;
    invoke-virtual {p2}, Lim/doit/pro/model/Goal;->getUuid()Ljava/lang/String;

    move-result-object v2

    .line 158
    .local v2, "newUUID":Ljava/lang/String;
    invoke-virtual {p1, v2}, Lim/doit/pro/model/Goal;->setUuid(Ljava/lang/String;)V

    .line 159
    const/4 v5, 0x0

    invoke-virtual {p0, p1, v5}, Lim/doit/pro/db/persist/GoalDao;->update(Lim/doit/pro/model/BaseEntity;Z)V

    .line 160
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v5

    iget-object v5, v5, Lim/doit/pro/db/Persist;->taskDao:Lim/doit/pro/db/persist/TaskDao;

    invoke-virtual {v5, v1}, Lim/doit/pro/db/persist/TaskDao;->findAllByGoal(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 161
    .local v4, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/Task;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_0

    .line 165
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v5

    iget-object v5, v5, Lim/doit/pro/db/Persist;->projectDao:Lim/doit/pro/db/persist/ProjectDao;

    invoke-virtual {v5, v1}, Lim/doit/pro/db/persist/ProjectDao;->findAllByGoal(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 166
    .local v3, "projects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/Project;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_1

    .line 170
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v5

    iget-object v5, v5, Lim/doit/pro/db/Persist;->opLogDao:Lim/doit/pro/db/persist/OpLogDao;

    sget-object v6, Lim/doit/pro/model/OpLog$ItemType;->goal:Lim/doit/pro/model/OpLog$ItemType;

    invoke-virtual {v5, v6, v1, v2}, Lim/doit/pro/db/persist/OpLogDao;->updateConflictUUID(Lim/doit/pro/model/OpLog$ItemType;Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    return-void

    .line 161
    .end local v3    # "projects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/Project;>;"
    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lim/doit/pro/model/Task;

    .line 162
    .local v0, "item":Lim/doit/pro/model/Task;
    invoke-virtual {v0, v2}, Lim/doit/pro/model/Task;->setGoal(Ljava/lang/String;)V

    .line 163
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v6

    iget-object v6, v6, Lim/doit/pro/db/Persist;->taskDao:Lim/doit/pro/db/persist/TaskDao;

    invoke-virtual {v6, v0}, Lim/doit/pro/db/persist/TaskDao;->updateAndSaveLog(Lim/doit/pro/model/Task;)V

    goto :goto_0

    .line 166
    .end local v0    # "item":Lim/doit/pro/model/Task;
    .restart local v3    # "projects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/Project;>;"
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lim/doit/pro/model/Project;

    .line 167
    .local v0, "item":Lim/doit/pro/model/Project;
    invoke-virtual {v0, v2}, Lim/doit/pro/model/Project;->setGoal(Ljava/lang/String;)V

    .line 168
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v6

    iget-object v6, v6, Lim/doit/pro/db/Persist;->projectDao:Lim/doit/pro/db/persist/ProjectDao;

    invoke-virtual {v6, v0}, Lim/doit/pro/db/persist/ProjectDao;->updateAndSaveLog(Lim/doit/pro/model/Project;)V

    goto :goto_1
.end method

.method public updatePos(Lim/doit/pro/model/Goal;)V
    .locals 4
    .param p1, "t"    # Lim/doit/pro/model/Goal;

    .prologue
    const/4 v1, 0x0

    .line 63
    invoke-virtual {p1}, Lim/doit/pro/model/Goal;->getUuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lim/doit/pro/model/Goal;->getPos()J

    move-result-wide v2

    invoke-super {p0, v0, v2, v3}, Lim/doit/pro/db/persist/DBaseDao;->updatePos(Ljava/lang/String;J)V

    .line 64
    invoke-direct {p0, p1, v1, v1}, Lim/doit/pro/db/persist/GoalDao;->afterUpdate(Lim/doit/pro/model/Goal;ZZ)V

    .line 65
    return-void
.end method
