.class public Lim/doit/pro/db/persist/NoticeDao;
.super Lim/doit/pro/db/persist/DBaseDao;
.source "NoticeDao.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lim/doit/pro/db/persist/DBaseDao",
        "<",
        "Lim/doit/pro/model/Notice;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 39
    const-string v0, "agent_errors"

    invoke-direct {p0, v0, p1}, Lim/doit/pro/db/persist/DBaseDao;-><init>(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 40
    return-void
.end method


# virtual methods
.method public AgreeInvite(Lim/doit/pro/model/Notice;)V
    .locals 1
    .param p1, "notice"    # Lim/doit/pro/model/Notice;

    .prologue
    .line 75
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {p1, v0}, Lim/doit/pro/model/Notice;->setRead(Ljava/util/Calendar;)V

    .line 76
    const-string v0, "PASS"

    invoke-virtual {p1, v0}, Lim/doit/pro/model/Notice;->setResult(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p0, p1}, Lim/doit/pro/db/persist/NoticeDao;->updateAndSaveLog(Lim/doit/pro/model/BaseEntity;)V

    .line 78
    return-void
.end method

.method public batchCreateOrUpdate(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lim/doit/pro/model/Notice;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 44
    .local p1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/Notice;>;"
    invoke-super {p0, p1}, Lim/doit/pro/db/persist/DBaseDao;->batchCreateOrUpdate(Ljava/util/ArrayList;)V

    .line 45
    const/4 v1, 0x0

    .line 46
    .local v1, "newMessageCount":I
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 51
    if-lez v1, :cond_1

    .line 52
    invoke-static {v1}, Lim/doit/pro/utils/NotificationUtils;->notifyNewMessage(I)V

    .line 54
    :cond_1
    return-void

    .line 46
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lim/doit/pro/model/Notice;

    .line 47
    .local v0, "item":Lim/doit/pro/model/Notice;
    invoke-virtual {v0}, Lim/doit/pro/model/Notice;->getRead()Ljava/util/Calendar;

    move-result-object v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Lim/doit/pro/model/Notice;->getDeleted()Ljava/util/Calendar;

    move-result-object v3

    if-nez v3, :cond_0

    sget-object v3, Lim/doit/pro/model/enums/NoticeType;->REMINDER:Lim/doit/pro/model/enums/NoticeType;

    invoke-virtual {v0}, Lim/doit/pro/model/Notice;->getNoticeType()Lim/doit/pro/model/enums/NoticeType;

    move-result-object v4

    invoke-virtual {v3, v4}, Lim/doit/pro/model/enums/NoticeType;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 48
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected colunms()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 142
    const/16 v0, 0x11

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

    const-string v2, "notice_type"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "target_id"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "repeat_no"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "comment"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "force_popup"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "result"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "sender"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "sender_email"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    .line 143
    const-string v2, "sender_nickname"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "title"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "body"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "read"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "deleted"

    aput-object v2, v0, v1

    .line 142
    return-object v0
.end method

.method protected cursorToObject(Landroid/database/Cursor;)Lim/doit/pro/model/Notice;
    .locals 4
    .param p1, "c"    # Landroid/database/Cursor;

    .prologue
    .line 94
    new-instance v0, Lim/doit/pro/model/Notice;

    invoke-direct {v0}, Lim/doit/pro/model/Notice;-><init>()V

    .line 95
    .local v0, "notice":Lim/doit/pro/model/Notice;
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/model/Notice;->setUuid(Ljava/lang/String;)V

    .line 96
    const/4 v1, 0x1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Lim/doit/pro/utils/DateUtils;->convertToDate(J)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/model/Notice;->setCreated(Ljava/util/Calendar;)V

    .line 97
    const/4 v1, 0x2

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Lim/doit/pro/utils/DateUtils;->convertToDate(J)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/model/Notice;->setUpdated(Ljava/util/Calendar;)V

    .line 98
    const/4 v1, 0x3

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lim/doit/pro/model/Notice;->setUsn(J)V

    .line 99
    const/4 v1, 0x4

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lim/doit/pro/model/enums/NoticeType;->getValue(Ljava/lang/String;)Lim/doit/pro/model/enums/NoticeType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/model/Notice;->setNoticeType(Lim/doit/pro/model/enums/NoticeType;)V

    .line 100
    const/4 v1, 0x5

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/model/Notice;->setTargetId(Ljava/lang/String;)V

    .line 101
    const/4 v1, 0x6

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/model/Notice;->setRepeatNo(Ljava/lang/String;)V

    .line 102
    const/4 v1, 0x7

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/model/Notice;->setComment(Ljava/lang/String;)V

    .line 103
    const/16 v1, 0x8

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lim/doit/pro/db/persist/NoticeDao;->intToBoolean(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Lim/doit/pro/model/Notice;->setForcePopup(Z)V

    .line 104
    const/16 v1, 0x9

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/model/Notice;->setResult(Ljava/lang/String;)V

    .line 105
    const/16 v1, 0xa

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/model/Notice;->setSender(Ljava/lang/String;)V

    .line 106
    const/16 v1, 0xb

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/model/Notice;->setSenderEmail(Ljava/lang/String;)V

    .line 107
    const/16 v1, 0xc

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/model/Notice;->setSenderNickname(Ljava/lang/String;)V

    .line 108
    const/16 v1, 0xd

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/model/Notice;->setTitle(Ljava/lang/String;)V

    .line 109
    const/16 v1, 0xe

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/model/Notice;->setBody(Ljava/lang/String;)V

    .line 110
    const/16 v1, 0xf

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Lim/doit/pro/utils/DateUtils;->convertToDate(J)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/model/Notice;->setRead(Ljava/util/Calendar;)V

    .line 111
    const/16 v1, 0x10

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Lim/doit/pro/utils/DateUtils;->convertToDate(J)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/model/Notice;->setDeleted(Ljava/util/Calendar;)V

    .line 112
    return-object v0
.end method

.method protected bridge synthetic cursorToObject(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lim/doit/pro/db/persist/NoticeDao;->cursorToObject(Landroid/database/Cursor;)Lim/doit/pro/model/Notice;

    move-result-object v0

    return-object v0
.end method

.method public delete(Lim/doit/pro/model/Notice;)V
    .locals 2
    .param p1, "notice"    # Lim/doit/pro/model/Notice;

    .prologue
    .line 87
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {p1, v0}, Lim/doit/pro/model/Notice;->setDeleted(Ljava/util/Calendar;)V

    .line 88
    invoke-virtual {p1}, Lim/doit/pro/model/Notice;->getUuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lim/doit/pro/model/Notice;->getDeleted()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lim/doit/pro/db/persist/NoticeDao;->delete(Ljava/lang/String;Ljava/util/Calendar;)V

    .line 89
    invoke-virtual {p1}, Lim/doit/pro/model/Notice;->getUuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lim/doit/pro/db/persist/NoticeDao;->saveDeleteLog(Ljava/lang/String;)V

    .line 90
    return-void
.end method

.method public findAll()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lim/doit/pro/model/Notice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 63
    new-instance v0, Lim/doit/pro/db/persist/utils/SQLBuilder;

    invoke-direct {v0}, Lim/doit/pro/db/persist/utils/SQLBuilder;-><init>()V

    .line 64
    .local v0, "sql":Lim/doit/pro/db/persist/utils/SQLBuilder;
    const-string v1, "deleted"

    invoke-virtual {v0, v1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->append(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lim/doit/pro/db/persist/utils/SQLBuilder;->eq(I)Lim/doit/pro/db/persist/utils/SQLBuilder;

    .line 65
    const-string v1, "notice_type"

    invoke-virtual {v0, v1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->and(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v1

    sget-object v2, Lim/doit/pro/model/enums/NoticeType;->REMINDER:Lim/doit/pro/model/enums/NoticeType;

    invoke-static {v2}, Lim/doit/pro/model/enums/NoticeType;->toString(Lim/doit/pro/model/enums/NoticeType;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lim/doit/pro/db/persist/utils/SQLBuilder;->neq(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    .line 66
    invoke-virtual {v0}, Lim/doit/pro/db/persist/utils/SQLBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lim/doit/pro/db/persist/NoticeDao;->findList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public haveNewNotice()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 57
    new-instance v0, Lim/doit/pro/db/persist/utils/SQLBuilder;

    invoke-direct {v0}, Lim/doit/pro/db/persist/utils/SQLBuilder;-><init>()V

    .line 58
    .local v0, "sql":Lim/doit/pro/db/persist/utils/SQLBuilder;
    const-string v2, "deleted"

    invoke-virtual {v0, v2}, Lim/doit/pro/db/persist/utils/SQLBuilder;->append(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->eq(I)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v2

    const-string v3, "read"

    invoke-virtual {v2, v3}, Lim/doit/pro/db/persist/utils/SQLBuilder;->and(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->eq(I)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v2

    const-string v3, "notice_type"

    invoke-virtual {v2, v3}, Lim/doit/pro/db/persist/utils/SQLBuilder;->and(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v2

    sget-object v3, Lim/doit/pro/model/enums/NoticeType;->REMINDER:Lim/doit/pro/model/enums/NoticeType;

    invoke-static {v3}, Lim/doit/pro/model/enums/NoticeType;->toString(Lim/doit/pro/model/enums/NoticeType;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lim/doit/pro/db/persist/utils/SQLBuilder;->neq(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    .line 59
    invoke-virtual {v0}, Lim/doit/pro/db/persist/utils/SQLBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lim/doit/pro/db/persist/NoticeDao;->count(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method protected objectToContentValues(Lim/doit/pro/model/Notice;Z)Landroid/content/ContentValues;
    .locals 4
    .param p1, "t"    # Lim/doit/pro/model/Notice;
    .param p2, "isDownload"    # Z

    .prologue
    .line 117
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 118
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "uuid"

    invoke-virtual {p1}, Lim/doit/pro/model/Notice;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    const-string v1, "created"

    invoke-virtual {p1}, Lim/doit/pro/model/Notice;->getCreated()Ljava/util/Calendar;

    move-result-object v2

    invoke-static {v2}, Lim/doit/pro/utils/DateUtils;->convertToLong(Ljava/util/Calendar;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 120
    const-string v1, "updated"

    invoke-virtual {p1}, Lim/doit/pro/model/Notice;->getUpdated()Ljava/util/Calendar;

    move-result-object v2

    invoke-static {v2}, Lim/doit/pro/utils/DateUtils;->convertToLong(Ljava/util/Calendar;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 121
    const-string v1, "notice_type"

    invoke-virtual {p1}, Lim/doit/pro/model/Notice;->getNoticeType()Lim/doit/pro/model/enums/NoticeType;

    move-result-object v2

    invoke-static {v2}, Lim/doit/pro/model/enums/NoticeType;->toString(Lim/doit/pro/model/enums/NoticeType;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    const-string v1, "target_id"

    invoke-virtual {p1}, Lim/doit/pro/model/Notice;->getTargetId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    const-string v1, "repeat_no"

    invoke-virtual {p1}, Lim/doit/pro/model/Notice;->getRepeatNo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    const-string v1, "comment"

    invoke-virtual {p1}, Lim/doit/pro/model/Notice;->getComment()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    const-string v1, "force_popup"

    invoke-virtual {p1}, Lim/doit/pro/model/Notice;->isForcePopup()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 126
    const-string v1, "result"

    invoke-virtual {p1}, Lim/doit/pro/model/Notice;->getResult()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    const-string v1, "sender"

    invoke-virtual {p1}, Lim/doit/pro/model/Notice;->getSender()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    const-string v1, "sender_email"

    invoke-virtual {p1}, Lim/doit/pro/model/Notice;->getSenderEmail()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    const-string v1, "sender_nickname"

    invoke-virtual {p1}, Lim/doit/pro/model/Notice;->getSenderNickname()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    const-string v1, "title"

    invoke-virtual {p1}, Lim/doit/pro/model/Notice;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    const-string v1, "body"

    invoke-virtual {p1}, Lim/doit/pro/model/Notice;->getBody()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    const-string v1, "read"

    invoke-virtual {p1}, Lim/doit/pro/model/Notice;->getRead()Ljava/util/Calendar;

    move-result-object v2

    invoke-static {v2}, Lim/doit/pro/utils/DateUtils;->convertToLong(Ljava/util/Calendar;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 133
    const-string v1, "deleted"

    invoke-virtual {p1}, Lim/doit/pro/model/Notice;->getDeleted()Ljava/util/Calendar;

    move-result-object v2

    invoke-static {v2}, Lim/doit/pro/utils/DateUtils;->convertToLong(Ljava/util/Calendar;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 134
    if-eqz p2, :cond_0

    .line 135
    const-string v1, "usn"

    invoke-virtual {p1}, Lim/doit/pro/model/Notice;->getUsn()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 137
    :cond_0
    return-object v0
.end method

.method protected bridge synthetic objectToContentValues(Ljava/lang/Object;Z)Landroid/content/ContentValues;
    .locals 1

    .prologue
    .line 1
    check-cast p1, Lim/doit/pro/model/Notice;

    invoke-virtual {p0, p1, p2}, Lim/doit/pro/db/persist/NoticeDao;->objectToContentValues(Lim/doit/pro/model/Notice;Z)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method protected order()Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    const-string v0, "created"

    invoke-virtual {p0, v0}, Lim/doit/pro/db/persist/NoticeDao;->desc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readNotice(Lim/doit/pro/model/Notice;)V
    .locals 1
    .param p1, "notice"    # Lim/doit/pro/model/Notice;

    .prologue
    .line 70
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {p1, v0}, Lim/doit/pro/model/Notice;->setRead(Ljava/util/Calendar;)V

    .line 71
    invoke-virtual {p0, p1}, Lim/doit/pro/db/persist/NoticeDao;->updateAndSaveLog(Lim/doit/pro/model/BaseEntity;)V

    .line 72
    return-void
.end method

.method public rejectInvite(Lim/doit/pro/model/Notice;)V
    .locals 1
    .param p1, "notice"    # Lim/doit/pro/model/Notice;

    .prologue
    .line 81
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {p1, v0}, Lim/doit/pro/model/Notice;->setRead(Ljava/util/Calendar;)V

    .line 82
    const-string v0, "REJECT"

    invoke-virtual {p1, v0}, Lim/doit/pro/model/Notice;->setResult(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p0, p1}, Lim/doit/pro/db/persist/NoticeDao;->updateAndSaveLog(Lim/doit/pro/model/BaseEntity;)V

    .line 84
    return-void
.end method

.method protected saveCreateLog(Ljava/lang/String;)V
    .locals 0
    .param p1, "uuid"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 164
    return-void
.end method

.method protected saveDeleteLog(Ljava/lang/String;)V
    .locals 2
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    .line 153
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v0

    iget-object v0, v0, Lim/doit/pro/db/Persist;->opLogDao:Lim/doit/pro/db/persist/OpLogDao;

    sget-object v1, Lim/doit/pro/model/OpLog$OpType;->delete:Lim/doit/pro/model/OpLog$OpType;

    invoke-virtual {v0, p1, v1}, Lim/doit/pro/db/persist/OpLogDao;->saveNoticeLog(Ljava/lang/String;Lim/doit/pro/model/OpLog$OpType;)V

    .line 154
    return-void
.end method

.method protected saveUpdateLog(Ljava/lang/String;)V
    .locals 2
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    .line 158
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v0

    iget-object v0, v0, Lim/doit/pro/db/Persist;->opLogDao:Lim/doit/pro/db/persist/OpLogDao;

    sget-object v1, Lim/doit/pro/model/OpLog$OpType;->update:Lim/doit/pro/model/OpLog$OpType;

    invoke-virtual {v0, p1, v1}, Lim/doit/pro/db/persist/OpLogDao;->saveNoticeLog(Ljava/lang/String;Lim/doit/pro/model/OpLog$OpType;)V

    .line 159
    return-void
.end method
