.class public Lim/doit/pro/db/persist/AgentErrorDao;
.super Lim/doit/pro/db/persist/DBaseDao;
.source "AgentErrorDao.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lim/doit/pro/db/persist/DBaseDao",
        "<",
        "Lim/doit/pro/model/AgentError;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 28
    const-string v0, "notices"

    invoke-direct {p0, v0, p1}, Lim/doit/pro/db/persist/DBaseDao;-><init>(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 29
    return-void
.end method


# virtual methods
.method protected colunms()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 76
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

    const-string v2, "user_id"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "res_id"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "res_type"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "agent"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "agent_sys"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "agent_lang"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "agent_type"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "version"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "exception"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "notes"

    aput-object v2, v0, v1

    return-object v0
.end method

.method public createAndSaveLog(Lim/doit/pro/model/AgentError;)V
    .locals 0
    .param p1, "t"    # Lim/doit/pro/model/AgentError;

    .prologue
    .line 33
    invoke-super {p0, p1}, Lim/doit/pro/db/persist/DBaseDao;->createAndSaveLog(Lim/doit/pro/model/BaseEntity;)V

    .line 34
    return-void
.end method

.method public bridge synthetic createAndSaveLog(Lim/doit/pro/model/BaseEntity;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lim/doit/pro/model/AgentError;

    invoke-virtual {p0, p1}, Lim/doit/pro/db/persist/AgentErrorDao;->createAndSaveLog(Lim/doit/pro/model/AgentError;)V

    return-void
.end method

.method protected cursorToObject(Landroid/database/Cursor;)Lim/doit/pro/model/AgentError;
    .locals 4
    .param p1, "c"    # Landroid/database/Cursor;

    .prologue
    .line 38
    new-instance v0, Lim/doit/pro/model/AgentError;

    invoke-direct {v0}, Lim/doit/pro/model/AgentError;-><init>()V

    .line 39
    .local v0, "error":Lim/doit/pro/model/AgentError;
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/model/AgentError;->setUuid(Ljava/lang/String;)V

    .line 40
    const/4 v1, 0x1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Lim/doit/pro/utils/DateUtils;->convertToDate(J)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/model/AgentError;->setCreated(Ljava/util/Calendar;)V

    .line 41
    const/4 v1, 0x2

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Lim/doit/pro/utils/DateUtils;->convertToDate(J)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/model/AgentError;->setUpdated(Ljava/util/Calendar;)V

    .line 42
    const/4 v1, 0x3

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/model/AgentError;->setUserId(Ljava/lang/String;)V

    .line 43
    const/4 v1, 0x4

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/model/AgentError;->setResId(Ljava/lang/String;)V

    .line 44
    const/4 v1, 0x5

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/model/AgentError;->setResType(Ljava/lang/String;)V

    .line 45
    const/4 v1, 0x6

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/model/AgentError;->setAgent(Ljava/lang/String;)V

    .line 46
    const/4 v1, 0x7

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/model/AgentError;->setAgentSys(Ljava/lang/String;)V

    .line 47
    const/16 v1, 0x8

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/model/AgentError;->setAgentLang(Ljava/lang/String;)V

    .line 48
    const/16 v1, 0x9

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/model/AgentError;->setAgentType(Ljava/lang/String;)V

    .line 49
    const/16 v1, 0xa

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/model/AgentError;->setVersion(Ljava/lang/String;)V

    .line 50
    const/16 v1, 0xb

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/model/AgentError;->setException(Ljava/lang/String;)V

    .line 51
    const/16 v1, 0xc

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/model/AgentError;->setNotes(Ljava/lang/String;)V

    .line 52
    return-object v0
.end method

.method protected bridge synthetic cursorToObject(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lim/doit/pro/db/persist/AgentErrorDao;->cursorToObject(Landroid/database/Cursor;)Lim/doit/pro/model/AgentError;

    move-result-object v0

    return-object v0
.end method

.method protected objectToContentValues(Lim/doit/pro/model/AgentError;Z)Landroid/content/ContentValues;
    .locals 4
    .param p1, "t"    # Lim/doit/pro/model/AgentError;
    .param p2, "isDownload"    # Z

    .prologue
    .line 57
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 58
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "uuid"

    invoke-virtual {p1}, Lim/doit/pro/model/AgentError;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    const-string v1, "created"

    invoke-virtual {p1}, Lim/doit/pro/model/AgentError;->getCreated()Ljava/util/Calendar;

    move-result-object v2

    invoke-static {v2}, Lim/doit/pro/utils/DateUtils;->convertToLong(Ljava/util/Calendar;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 60
    const-string v1, "updated"

    invoke-virtual {p1}, Lim/doit/pro/model/AgentError;->getUpdated()Ljava/util/Calendar;

    move-result-object v2

    invoke-static {v2}, Lim/doit/pro/utils/DateUtils;->convertToLong(Ljava/util/Calendar;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 61
    const-string v1, "user_id"

    invoke-virtual {p1}, Lim/doit/pro/model/AgentError;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    const-string v1, "res_id"

    invoke-virtual {p1}, Lim/doit/pro/model/AgentError;->getResId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    const-string v1, "res_type"

    invoke-virtual {p1}, Lim/doit/pro/model/AgentError;->getResType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    const-string v1, "agent"

    invoke-virtual {p1}, Lim/doit/pro/model/AgentError;->getAgent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    const-string v1, "agent_sys"

    invoke-virtual {p1}, Lim/doit/pro/model/AgentError;->getAgentSys()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    const-string v1, "agent_lang"

    invoke-virtual {p1}, Lim/doit/pro/model/AgentError;->getAgentLang()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    const-string v1, "agent_type"

    invoke-virtual {p1}, Lim/doit/pro/model/AgentError;->getAgentType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    const-string v1, "version"

    invoke-virtual {p1}, Lim/doit/pro/model/AgentError;->getVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    const-string v1, "exception"

    invoke-virtual {p1}, Lim/doit/pro/model/AgentError;->getException()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    const-string v1, "notes"

    invoke-virtual {p1}, Lim/doit/pro/model/AgentError;->getNotes()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    return-object v0
.end method

.method protected bridge synthetic objectToContentValues(Ljava/lang/Object;Z)Landroid/content/ContentValues;
    .locals 1

    .prologue
    .line 1
    check-cast p1, Lim/doit/pro/model/AgentError;

    invoke-virtual {p0, p1, p2}, Lim/doit/pro/db/persist/AgentErrorDao;->objectToContentValues(Lim/doit/pro/model/AgentError;Z)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method protected order()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    const-string v0, "created"

    invoke-virtual {p0, v0}, Lim/doit/pro/db/persist/AgentErrorDao;->asc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected saveCreateLog(Ljava/lang/String;)V
    .locals 2
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    .line 96
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v0

    iget-object v0, v0, Lim/doit/pro/db/Persist;->opLogDao:Lim/doit/pro/db/persist/OpLogDao;

    sget-object v1, Lim/doit/pro/model/OpLog$OpType;->create:Lim/doit/pro/model/OpLog$OpType;

    invoke-virtual {v0, p1, v1}, Lim/doit/pro/db/persist/OpLogDao;->saveAgentErrorLog(Ljava/lang/String;Lim/doit/pro/model/OpLog$OpType;)V

    .line 97
    return-void
.end method

.method protected saveDeleteLog(Ljava/lang/String;)V
    .locals 0
    .param p1, "uuid"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 87
    return-void
.end method

.method protected saveUpdateLog(Ljava/lang/String;)V
    .locals 0
    .param p1, "uuid"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 92
    return-void
.end method
