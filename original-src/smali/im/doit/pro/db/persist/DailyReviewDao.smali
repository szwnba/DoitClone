.class public Lim/doit/pro/db/persist/DailyReviewDao;
.super Lim/doit/pro/db/persist/DBaseDao;
.source "DailyReviewDao.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lim/doit/pro/db/persist/DBaseDao",
        "<",
        "Lim/doit/pro/model/DailyReview;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 26
    const-string v0, "daily_review"

    invoke-direct {p0, v0, p1}, Lim/doit/pro/db/persist/DBaseDao;-><init>(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 27
    return-void
.end method


# virtual methods
.method protected afterCreate(Lim/doit/pro/model/DailyReview;Z)V
    .locals 3
    .param p1, "t"    # Lim/doit/pro/model/DailyReview;
    .param p2, "isDownload"    # Z

    .prologue
    .line 63
    invoke-super {p0, p1, p2}, Lim/doit/pro/db/persist/DBaseDao;->afterCreate(Ljava/lang/Object;Z)V

    .line 64
    if-eqz p2, :cond_0

    .line 65
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v0

    iget-object v0, v0, Lim/doit/pro/db/Persist;->taskReviewInfoDao:Lim/doit/pro/db/persist/TaskReviewInfoDao;

    invoke-virtual {p1}, Lim/doit/pro/model/DailyReview;->getUuid()Ljava/lang/String;

    move-result-object v1

    .line 66
    invoke-virtual {p1}, Lim/doit/pro/model/DailyReview;->getTaskReviewInfos()Ljava/util/ArrayList;

    move-result-object v2

    .line 65
    invoke-virtual {v0, v1, v2}, Lim/doit/pro/db/persist/TaskReviewInfoDao;->batchCreateOrUpdate(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 68
    :cond_0
    return-void
.end method

.method protected bridge synthetic afterCreate(Ljava/lang/Object;Z)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lim/doit/pro/model/DailyReview;

    invoke-virtual {p0, p1, p2}, Lim/doit/pro/db/persist/DailyReviewDao;->afterCreate(Lim/doit/pro/model/DailyReview;Z)V

    return-void
.end method

.method protected bridge synthetic afterUpdate(Lim/doit/pro/model/BaseEntity;Z)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lim/doit/pro/model/DailyReview;

    invoke-virtual {p0, p1, p2}, Lim/doit/pro/db/persist/DailyReviewDao;->afterUpdate(Lim/doit/pro/model/DailyReview;Z)V

    return-void
.end method

.method protected afterUpdate(Lim/doit/pro/model/DailyReview;Z)V
    .locals 3
    .param p1, "t"    # Lim/doit/pro/model/DailyReview;
    .param p2, "isDownload"    # Z

    .prologue
    .line 72
    invoke-super {p0, p1, p2}, Lim/doit/pro/db/persist/DBaseDao;->afterUpdate(Lim/doit/pro/model/BaseEntity;Z)V

    .line 73
    if-eqz p2, :cond_0

    .line 74
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v0

    iget-object v0, v0, Lim/doit/pro/db/Persist;->taskReviewInfoDao:Lim/doit/pro/db/persist/TaskReviewInfoDao;

    invoke-virtual {p1}, Lim/doit/pro/model/DailyReview;->getUuid()Ljava/lang/String;

    move-result-object v1

    .line 75
    invoke-virtual {p1}, Lim/doit/pro/model/DailyReview;->getTaskReviewInfos()Ljava/util/ArrayList;

    move-result-object v2

    .line 74
    invoke-virtual {v0, v1, v2}, Lim/doit/pro/db/persist/TaskReviewInfoDao;->batchCreateOrUpdate(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 77
    :cond_0
    return-void
.end method

.method protected colunms()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 129
    const/4 v0, 0x7

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

    const-string v2, "date"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "notes"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "rate"

    aput-object v2, v0, v1

    return-object v0
.end method

.method public bridge synthetic createAndSaveLog(Lim/doit/pro/model/BaseEntity;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lim/doit/pro/model/DailyReview;

    invoke-virtual {p0, p1}, Lim/doit/pro/db/persist/DailyReviewDao;->createAndSaveLog(Lim/doit/pro/model/DailyReview;)V

    return-void
.end method

.method public createAndSaveLog(Lim/doit/pro/model/DailyReview;)V
    .locals 2
    .param p1, "t"    # Lim/doit/pro/model/DailyReview;

    .prologue
    .line 51
    invoke-super {p0, p1}, Lim/doit/pro/db/persist/DBaseDao;->createAndSaveLog(Lim/doit/pro/model/BaseEntity;)V

    .line 52
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v0

    iget-object v0, v0, Lim/doit/pro/db/Persist;->taskReviewInfoDao:Lim/doit/pro/db/persist/TaskReviewInfoDao;

    invoke-virtual {p1}, Lim/doit/pro/model/DailyReview;->getTaskReviewInfos()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/db/persist/TaskReviewInfoDao;->saveOrUpdate(Ljava/util/ArrayList;)V

    .line 53
    return-void
.end method

.method protected cursorToObject(Landroid/database/Cursor;)Lim/doit/pro/model/DailyReview;
    .locals 4
    .param p1, "c"    # Landroid/database/Cursor;

    .prologue
    .line 96
    new-instance v0, Lim/doit/pro/model/DailyReview;

    invoke-direct {v0}, Lim/doit/pro/model/DailyReview;-><init>()V

    .line 97
    .local v0, "dailyReview":Lim/doit/pro/model/DailyReview;
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/model/DailyReview;->setUuid(Ljava/lang/String;)V

    .line 98
    const/4 v1, 0x1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Lim/doit/pro/utils/DateUtils;->convertToDate(J)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/model/DailyReview;->setCreated(Ljava/util/Calendar;)V

    .line 99
    const/4 v1, 0x2

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Lim/doit/pro/utils/DateUtils;->convertToDate(J)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/model/DailyReview;->setUpdated(Ljava/util/Calendar;)V

    .line 100
    const/4 v1, 0x3

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lim/doit/pro/model/DailyReview;->setUsn(J)V

    .line 101
    const/4 v1, 0x4

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/model/DailyReview;->setDate(Ljava/lang/String;)V

    .line 102
    const/4 v1, 0x5

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/model/DailyReview;->setNotes(Ljava/lang/String;)V

    .line 103
    const/4 v1, 0x6

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lim/doit/pro/model/DailyReview;->setRate(I)V

    .line 105
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v1

    iget-object v1, v1, Lim/doit/pro/db/Persist;->taskReviewInfoDao:Lim/doit/pro/db/persist/TaskReviewInfoDao;

    .line 106
    invoke-virtual {v0}, Lim/doit/pro/model/DailyReview;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lim/doit/pro/db/persist/TaskReviewInfoDao;->findByDailyReview(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 105
    invoke-virtual {v0, v1}, Lim/doit/pro/model/DailyReview;->setTaskReviewInfos(Ljava/util/ArrayList;)V

    .line 108
    return-object v0
.end method

.method protected bridge synthetic cursorToObject(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lim/doit/pro/db/persist/DailyReviewDao;->cursorToObject(Landroid/database/Cursor;)Lim/doit/pro/model/DailyReview;

    move-result-object v0

    return-object v0
.end method

.method public findByDate(Ljava/lang/String;)Lim/doit/pro/model/DailyReview;
    .locals 2
    .param p1, "date"    # Ljava/lang/String;

    .prologue
    .line 44
    new-instance v0, Lim/doit/pro/db/persist/utils/SQLBuilder;

    invoke-direct {v0}, Lim/doit/pro/db/persist/utils/SQLBuilder;-><init>()V

    .line 45
    .local v0, "sql":Lim/doit/pro/db/persist/utils/SQLBuilder;
    const-string v1, "date"

    invoke-virtual {v0, v1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->append(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->eq(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    .line 46
    invoke-virtual {v0}, Lim/doit/pro/db/persist/utils/SQLBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lim/doit/pro/db/persist/DailyReviewDao;->findOne(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lim/doit/pro/model/DailyReview;

    return-object v1
.end method

.method public isYesterdayNotReviewed()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 30
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 31
    .local v1, "yesterday":Ljava/util/Calendar;
    const/4 v3, 0x5

    const/4 v4, -0x1

    invoke-virtual {v1, v3, v4}, Ljava/util/Calendar;->add(II)V

    .line 33
    invoke-static {v1}, Lim/doit/pro/utils/DateUtils;->formatRepeatNo(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v3

    .line 32
    invoke-virtual {p0, v3}, Lim/doit/pro/db/persist/DailyReviewDao;->findByDate(Ljava/lang/String;)Lim/doit/pro/model/DailyReview;

    move-result-object v0

    .line 34
    .local v0, "dailyReview":Lim/doit/pro/model/DailyReview;
    if-nez v0, :cond_1

    .line 40
    :cond_0
    :goto_0
    return v2

    .line 37
    :cond_1
    invoke-virtual {v0}, Lim/doit/pro/model/DailyReview;->isSystem()Z

    move-result v3

    if-nez v3, :cond_0

    .line 40
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected objectToContentValues(Lim/doit/pro/model/DailyReview;Z)Landroid/content/ContentValues;
    .locals 4
    .param p1, "t"    # Lim/doit/pro/model/DailyReview;
    .param p2, "isDownload"    # Z

    .prologue
    .line 114
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 115
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "uuid"

    invoke-virtual {p1}, Lim/doit/pro/model/DailyReview;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    const-string v1, "created"

    invoke-virtual {p1}, Lim/doit/pro/model/DailyReview;->getCreated()Ljava/util/Calendar;

    move-result-object v2

    invoke-static {v2}, Lim/doit/pro/utils/DateUtils;->convertToLong(Ljava/util/Calendar;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 117
    const-string v1, "updated"

    invoke-virtual {p1}, Lim/doit/pro/model/DailyReview;->getUpdated()Ljava/util/Calendar;

    move-result-object v2

    invoke-static {v2}, Lim/doit/pro/utils/DateUtils;->convertToLong(Ljava/util/Calendar;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 118
    const-string v1, "date"

    invoke-virtual {p1}, Lim/doit/pro/model/DailyReview;->getDate()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    const-string v1, "notes"

    invoke-virtual {p1}, Lim/doit/pro/model/DailyReview;->getNotes()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    const-string v1, "rate"

    invoke-virtual {p1}, Lim/doit/pro/model/DailyReview;->getRate()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 121
    if-eqz p2, :cond_0

    .line 122
    const-string v1, "usn"

    invoke-virtual {p1}, Lim/doit/pro/model/DailyReview;->getUsn()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 124
    :cond_0
    return-object v0
.end method

.method protected bridge synthetic objectToContentValues(Ljava/lang/Object;Z)Landroid/content/ContentValues;
    .locals 1

    .prologue
    .line 1
    check-cast p1, Lim/doit/pro/model/DailyReview;

    invoke-virtual {p0, p1, p2}, Lim/doit/pro/db/persist/DailyReviewDao;->objectToContentValues(Lim/doit/pro/model/DailyReview;Z)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method protected order()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    const/4 v0, 0x0

    return-object v0
.end method

.method protected saveCreateLog(Ljava/lang/String;)V
    .locals 2
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    .line 91
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v0

    iget-object v0, v0, Lim/doit/pro/db/Persist;->opLogDao:Lim/doit/pro/db/persist/OpLogDao;

    sget-object v1, Lim/doit/pro/model/OpLog$OpType;->create:Lim/doit/pro/model/OpLog$OpType;

    invoke-virtual {v0, p1, v1}, Lim/doit/pro/db/persist/OpLogDao;->saveDailyReview(Ljava/lang/String;Lim/doit/pro/model/OpLog$OpType;)V

    .line 92
    return-void
.end method

.method protected saveDeleteLog(Ljava/lang/String;)V
    .locals 0
    .param p1, "uuid"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 82
    return-void
.end method

.method protected saveUpdateLog(Ljava/lang/String;)V
    .locals 2
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    .line 86
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v0

    iget-object v0, v0, Lim/doit/pro/db/Persist;->opLogDao:Lim/doit/pro/db/persist/OpLogDao;

    sget-object v1, Lim/doit/pro/model/OpLog$OpType;->update:Lim/doit/pro/model/OpLog$OpType;

    invoke-virtual {v0, p1, v1}, Lim/doit/pro/db/persist/OpLogDao;->saveDailyReview(Ljava/lang/String;Lim/doit/pro/model/OpLog$OpType;)V

    .line 87
    return-void
.end method

.method public bridge synthetic updateAndSaveLog(Lim/doit/pro/model/BaseEntity;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lim/doit/pro/model/DailyReview;

    invoke-virtual {p0, p1}, Lim/doit/pro/db/persist/DailyReviewDao;->updateAndSaveLog(Lim/doit/pro/model/DailyReview;)V

    return-void
.end method

.method public updateAndSaveLog(Lim/doit/pro/model/DailyReview;)V
    .locals 2
    .param p1, "t"    # Lim/doit/pro/model/DailyReview;

    .prologue
    .line 57
    invoke-super {p0, p1}, Lim/doit/pro/db/persist/DBaseDao;->updateAndSaveLog(Lim/doit/pro/model/BaseEntity;)V

    .line 58
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v0

    iget-object v0, v0, Lim/doit/pro/db/Persist;->taskReviewInfoDao:Lim/doit/pro/db/persist/TaskReviewInfoDao;

    invoke-virtual {p1}, Lim/doit/pro/model/DailyReview;->getTaskReviewInfos()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/db/persist/TaskReviewInfoDao;->saveOrUpdate(Ljava/util/ArrayList;)V

    .line 59
    return-void
.end method
