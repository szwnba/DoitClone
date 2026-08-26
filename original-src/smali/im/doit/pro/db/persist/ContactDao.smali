.class public Lim/doit/pro/db/persist/ContactDao;
.super Lim/doit/pro/db/persist/DBaseDao;
.source "ContactDao.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lim/doit/pro/db/persist/DBaseDao",
        "<",
        "Lim/doit/pro/model/Contact;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 39
    const-string v0, "contacts"

    invoke-direct {p0, v0, p1}, Lim/doit/pro/db/persist/DBaseDao;-><init>(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 40
    return-void
.end method

.method private notDeleted()Lim/doit/pro/db/persist/utils/SQLBuilder;
    .locals 3

    .prologue
    .line 178
    new-instance v0, Lim/doit/pro/db/persist/utils/SQLBuilder;

    invoke-direct {v0}, Lim/doit/pro/db/persist/utils/SQLBuilder;-><init>()V

    .line 179
    .local v0, "sql":Lim/doit/pro/db/persist/utils/SQLBuilder;
    const-string v1, "deleted"

    invoke-virtual {v0, v1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->append(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lim/doit/pro/db/persist/utils/SQLBuilder;->eq(I)Lim/doit/pro/db/persist/utils/SQLBuilder;

    .line 180
    return-object v0
.end method


# virtual methods
.method protected colunms()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 152
    const/16 v0, 0x10

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

    const-string v2, "email"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 153
    const-string v2, "user_id"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "avatar_id"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "avatar"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "status"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "phone"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "birthday"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "deleted"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    .line 154
    const-string v2, "group_by"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "pos"

    aput-object v2, v0, v1

    .line 152
    return-object v0
.end method

.method public bridge synthetic createAndSaveLog(Lim/doit/pro/model/BaseEntity;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lim/doit/pro/model/Contact;

    invoke-virtual {p0, p1}, Lim/doit/pro/db/persist/ContactDao;->createAndSaveLog(Lim/doit/pro/model/Contact;)V

    return-void
.end method

.method public createAndSaveLog(Lim/doit/pro/model/Contact;)V
    .locals 0
    .param p1, "t"    # Lim/doit/pro/model/Contact;

    .prologue
    .line 86
    invoke-super {p0, p1}, Lim/doit/pro/db/persist/DBaseDao;->createAndSaveLog(Lim/doit/pro/model/BaseEntity;)V

    .line 87
    invoke-static {}, Lim/doit/pro/utils/BroadcastUtils;->sendSyncManyBroadcastBySystem()V

    .line 88
    return-void
.end method

.method protected cursorToObject(Landroid/database/Cursor;)Lim/doit/pro/model/Contact;
    .locals 5
    .param p1, "c"    # Landroid/database/Cursor;

    .prologue
    const/4 v4, 0x0

    .line 104
    new-instance v0, Lim/doit/pro/model/Contact;

    invoke-direct {v0}, Lim/doit/pro/model/Contact;-><init>()V

    .line 105
    .local v0, "contact":Lim/doit/pro/model/Contact;
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lim/doit/pro/model/Contact;->setUuid(Ljava/lang/String;)V

    .line 106
    const/4 v2, 0x1

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Lim/doit/pro/utils/DateUtils;->convertToDate(J)Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v0, v2}, Lim/doit/pro/model/Contact;->setCreated(Ljava/util/Calendar;)V

    .line 107
    const/4 v2, 0x2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Lim/doit/pro/utils/DateUtils;->convertToDate(J)Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v0, v2}, Lim/doit/pro/model/Contact;->setUpdated(Ljava/util/Calendar;)V

    .line 108
    const/4 v2, 0x3

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lim/doit/pro/model/Contact;->setUsn(J)V

    .line 109
    const/4 v2, 0x4

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lim/doit/pro/model/Contact;->setName(Ljava/lang/String;)V

    .line 110
    const/4 v2, 0x5

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lim/doit/pro/model/Contact;->setNotes(Ljava/lang/String;)V

    .line 111
    const/4 v2, 0x6

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lim/doit/pro/model/Contact;->setEmail(Ljava/lang/String;)V

    .line 112
    const/4 v2, 0x7

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lim/doit/pro/model/Contact;->setUserId(Ljava/lang/String;)V

    .line 113
    const/16 v2, 0x8

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lim/doit/pro/model/Contact;->setAvatarId(Ljava/lang/String;)V

    .line 114
    const/16 v2, 0x9

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    .line 115
    .local v1, "in":[B
    if-eqz v1, :cond_0

    .line 116
    array-length v2, v1

    invoke-static {v1, v4, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v0, v2}, Lim/doit/pro/model/Contact;->setAvatar(Landroid/graphics/Bitmap;)V

    .line 118
    :cond_0
    const/16 v2, 0xa

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lim/doit/pro/model/Contact;->setStatus(Ljava/lang/String;)V

    .line 119
    const/16 v2, 0xb

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lim/doit/pro/model/Contact;->setPhone(Ljava/lang/String;)V

    .line 120
    const/16 v2, 0xc

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Lim/doit/pro/utils/DateUtils;->convertToDate(J)Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v0, v2}, Lim/doit/pro/model/Contact;->setBirthday(Ljava/util/Calendar;)V

    .line 121
    const/16 v2, 0xd

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Lim/doit/pro/utils/DateUtils;->convertToDate(J)Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v0, v2}, Lim/doit/pro/model/Contact;->setDeleted(Ljava/util/Calendar;)V

    .line 122
    const/16 v2, 0xe

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lim/doit/pro/model/Contact;->setGroupBy(Ljava/lang/String;)V

    .line 123
    const/16 v2, 0xf

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lim/doit/pro/model/Contact;->setPos(J)V

    .line 124
    return-object v0
.end method

.method protected bridge synthetic cursorToObject(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lim/doit/pro/db/persist/ContactDao;->cursorToObject(Landroid/database/Cursor;)Lim/doit/pro/model/Contact;

    move-result-object v0

    return-object v0
.end method

.method public delete(Lim/doit/pro/model/Contact;)V
    .locals 2
    .param p1, "t"    # Lim/doit/pro/model/Contact;

    .prologue
    .line 96
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {p1, v0}, Lim/doit/pro/model/Contact;->setDeleted(Ljava/util/Calendar;)V

    .line 97
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {p1, v0}, Lim/doit/pro/model/Contact;->setUpdated(Ljava/util/Calendar;)V

    .line 98
    invoke-virtual {p1}, Lim/doit/pro/model/Contact;->getUuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lim/doit/pro/model/Contact;->getDeleted()Ljava/util/Calendar;

    move-result-object v1

    invoke-super {p0, v0, v1}, Lim/doit/pro/db/persist/DBaseDao;->delete(Ljava/lang/String;Ljava/util/Calendar;)V

    .line 99
    invoke-virtual {p1}, Lim/doit/pro/model/Contact;->getUuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lim/doit/pro/db/persist/ContactDao;->saveDeleteLog(Ljava/lang/String;)V

    .line 100
    return-void
.end method

.method public findAll()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lim/doit/pro/model/Contact;",
            ">;"
        }
    .end annotation

    .prologue
    .line 53
    invoke-direct {p0}, Lim/doit/pro/db/persist/ContactDao;->notDeleted()Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v1

    .line 54
    .local v1, "sql":Lim/doit/pro/db/persist/utils/SQLBuilder;
    invoke-virtual {v1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lim/doit/pro/db/persist/ContactDao;->findList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 55
    .local v0, "contacts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/Contact;>;"
    invoke-static {v0}, Lim/doit/pro/utils/SortUtils;->sortContacts(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 56
    return-object v0
.end method

.method public findAllPassed()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lim/doit/pro/model/Contact;",
            ">;"
        }
    .end annotation

    .prologue
    .line 60
    invoke-direct {p0}, Lim/doit/pro/db/persist/ContactDao;->notDeleted()Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v1

    .line 61
    .local v1, "sql":Lim/doit/pro/db/persist/utils/SQLBuilder;
    const-string v2, "status"

    invoke-virtual {v1, v2}, Lim/doit/pro/db/persist/utils/SQLBuilder;->and(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v2

    const-string v3, "passed"

    invoke-virtual {v2, v3}, Lim/doit/pro/db/persist/utils/SQLBuilder;->eq(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    .line 62
    invoke-virtual {v1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lim/doit/pro/db/persist/ContactDao;->findList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 63
    .local v0, "contacts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/Contact;>;"
    invoke-static {v0}, Lim/doit/pro/utils/SortUtils;->sortContacts(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 64
    return-object v0
.end method

.method public findByEmail(Ljava/lang/String;)Lim/doit/pro/model/Contact;
    .locals 3
    .param p1, "email"    # Ljava/lang/String;

    .prologue
    .line 47
    new-instance v0, Lim/doit/pro/db/persist/utils/SQLBuilder;

    invoke-direct {v0}, Lim/doit/pro/db/persist/utils/SQLBuilder;-><init>()V

    .line 48
    .local v0, "sql":Lim/doit/pro/db/persist/utils/SQLBuilder;
    const-string v1, "deleted"

    invoke-virtual {v0, v1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->append(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lim/doit/pro/db/persist/utils/SQLBuilder;->eq(I)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v1

    const-string v2, "email"

    invoke-virtual {v1, v2}, Lim/doit/pro/db/persist/utils/SQLBuilder;->and(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->eq(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    .line 49
    invoke-virtual {v0}, Lim/doit/pro/db/persist/utils/SQLBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lim/doit/pro/db/persist/ContactDao;->findOne(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lim/doit/pro/model/Contact;

    return-object v1
.end method

.method public findByUserId(Ljava/lang/String;)Lim/doit/pro/model/Contact;
    .locals 3
    .param p1, "userId"    # Ljava/lang/String;

    .prologue
    .line 80
    invoke-direct {p0}, Lim/doit/pro/db/persist/ContactDao;->notDeleted()Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v1

    const-string v2, "user_id"

    invoke-virtual {v1, v2}, Lim/doit/pro/db/persist/utils/SQLBuilder;->and(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->eq(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, "clause":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lim/doit/pro/db/persist/ContactDao;->findOne(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lim/doit/pro/model/Contact;

    return-object v1
.end method

.method public isEmailExist(Ljava/lang/String;)Z
    .locals 1
    .param p1, "email"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-virtual {p0, p1}, Lim/doit/pro/db/persist/ContactDao;->findByEmail(Ljava/lang/String;)Lim/doit/pro/model/Contact;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isServerUpdated(J)Z
    .locals 3
    .param p1, "serverTime"    # J

    .prologue
    .line 74
    new-instance v0, Lim/doit/pro/db/persist/utils/SQLBuilder;

    invoke-direct {v0}, Lim/doit/pro/db/persist/utils/SQLBuilder;-><init>()V

    .line 75
    .local v0, "sql":Lim/doit/pro/db/persist/utils/SQLBuilder;
    const-string v1, "updated"

    invoke-virtual {v0, v1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->append(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lim/doit/pro/db/persist/utils/SQLBuilder;->gt(J)Lim/doit/pro/db/persist/utils/SQLBuilder;

    .line 76
    invoke-virtual {v0}, Lim/doit/pro/db/persist/utils/SQLBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lim/doit/pro/db/persist/ContactDao;->count(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected objectToContentValues(Lim/doit/pro/model/Contact;Z)Landroid/content/ContentValues;
    .locals 4
    .param p1, "t"    # Lim/doit/pro/model/Contact;
    .param p2, "isDownload"    # Z

    .prologue
    .line 129
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 130
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "uuid"

    invoke-virtual {p1}, Lim/doit/pro/model/Contact;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    const-string v1, "created"

    invoke-virtual {p1}, Lim/doit/pro/model/Contact;->getCreated()Ljava/util/Calendar;

    move-result-object v2

    invoke-static {v2}, Lim/doit/pro/utils/DateUtils;->convertToLong(Ljava/util/Calendar;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 132
    const-string v1, "updated"

    invoke-virtual {p1}, Lim/doit/pro/model/Contact;->getUpdated()Ljava/util/Calendar;

    move-result-object v2

    invoke-static {v2}, Lim/doit/pro/utils/DateUtils;->convertToLong(Ljava/util/Calendar;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 133
    const-string v1, "name"

    invoke-virtual {p1}, Lim/doit/pro/model/Contact;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    const-string v1, "notes"

    invoke-virtual {p1}, Lim/doit/pro/model/Contact;->getNotes()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    const-string v1, "email"

    invoke-virtual {p1}, Lim/doit/pro/model/Contact;->getEmail()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    const-string v1, "user_id"

    invoke-virtual {p1}, Lim/doit/pro/model/Contact;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    const-string v1, "avatar_id"

    invoke-virtual {p1}, Lim/doit/pro/model/Contact;->getAvatarId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    const-string v1, "status"

    invoke-virtual {p1}, Lim/doit/pro/model/Contact;->getStatus()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    const-string v1, "phone"

    invoke-virtual {p1}, Lim/doit/pro/model/Contact;->getPhone()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    const-string v1, "birthday"

    invoke-virtual {p1}, Lim/doit/pro/model/Contact;->getBirthday()Ljava/util/Calendar;

    move-result-object v2

    invoke-static {v2}, Lim/doit/pro/utils/DateUtils;->convertToLong(Ljava/util/Calendar;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 141
    const-string v1, "deleted"

    invoke-virtual {p1}, Lim/doit/pro/model/Contact;->getDeleted()Ljava/util/Calendar;

    move-result-object v2

    invoke-static {v2}, Lim/doit/pro/utils/DateUtils;->convertToLong(Ljava/util/Calendar;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 142
    const-string v1, "group_by"

    invoke-virtual {p1}, Lim/doit/pro/model/Contact;->getGroupBy()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    const-string v1, "pos"

    invoke-virtual {p1}, Lim/doit/pro/model/Contact;->getPos()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 144
    if-eqz p2, :cond_0

    .line 145
    const-string v1, "usn"

    invoke-virtual {p1}, Lim/doit/pro/model/Contact;->getUsn()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 147
    :cond_0
    return-object v0
.end method

.method protected bridge synthetic objectToContentValues(Ljava/lang/Object;Z)Landroid/content/ContentValues;
    .locals 1

    .prologue
    .line 1
    check-cast p1, Lim/doit/pro/model/Contact;

    invoke-virtual {p0, p1, p2}, Lim/doit/pro/db/persist/ContactDao;->objectToContentValues(Lim/doit/pro/model/Contact;Z)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method protected order()Ljava/lang/String;
    .locals 1

    .prologue
    .line 159
    const/4 v0, 0x0

    return-object v0
.end method

.method protected saveCreateLog(Ljava/lang/String;)V
    .locals 2
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    .line 174
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v0

    iget-object v0, v0, Lim/doit/pro/db/Persist;->opLogDao:Lim/doit/pro/db/persist/OpLogDao;

    sget-object v1, Lim/doit/pro/model/OpLog$OpType;->create:Lim/doit/pro/model/OpLog$OpType;

    invoke-virtual {v0, p1, v1}, Lim/doit/pro/db/persist/OpLogDao;->saveContact(Ljava/lang/String;Lim/doit/pro/model/OpLog$OpType;)V

    .line 175
    return-void
.end method

.method protected saveDeleteLog(Ljava/lang/String;)V
    .locals 2
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    .line 164
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v0

    iget-object v0, v0, Lim/doit/pro/db/Persist;->opLogDao:Lim/doit/pro/db/persist/OpLogDao;

    sget-object v1, Lim/doit/pro/model/OpLog$OpType;->delete:Lim/doit/pro/model/OpLog$OpType;

    invoke-virtual {v0, p1, v1}, Lim/doit/pro/db/persist/OpLogDao;->saveContact(Ljava/lang/String;Lim/doit/pro/model/OpLog$OpType;)V

    .line 165
    return-void
.end method

.method protected saveUpdateLog(Ljava/lang/String;)V
    .locals 2
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    .line 169
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v0

    iget-object v0, v0, Lim/doit/pro/db/Persist;->opLogDao:Lim/doit/pro/db/persist/OpLogDao;

    sget-object v1, Lim/doit/pro/model/OpLog$OpType;->update:Lim/doit/pro/model/OpLog$OpType;

    invoke-virtual {v0, p1, v1}, Lim/doit/pro/db/persist/OpLogDao;->saveContact(Ljava/lang/String;Lim/doit/pro/model/OpLog$OpType;)V

    .line 170
    return-void
.end method

.method public bridge synthetic updateAndSaveLog(Lim/doit/pro/model/BaseEntity;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lim/doit/pro/model/Contact;

    invoke-virtual {p0, p1}, Lim/doit/pro/db/persist/ContactDao;->updateAndSaveLog(Lim/doit/pro/model/Contact;)V

    return-void
.end method

.method public updateAndSaveLog(Lim/doit/pro/model/Contact;)V
    .locals 0
    .param p1, "t"    # Lim/doit/pro/model/Contact;

    .prologue
    .line 92
    invoke-super {p0, p1}, Lim/doit/pro/db/persist/DBaseDao;->updateAndSaveLog(Lim/doit/pro/model/BaseEntity;)V

    .line 93
    return-void
.end method

.method public updateAvatar(Ljava/lang/String;[B)V
    .locals 5
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "bitmap"    # [B

    .prologue
    .line 68
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 69
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "avatar"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 70
    iget-object v1, p0, Lim/doit/pro/db/persist/ContactDao;->db:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v2, p0, Lim/doit/pro/db/persist/ContactDao;->tableName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lim/doit/pro/db/persist/ContactDao;->uuidClause(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lim/doit/pro/db/persist/utils/SQLBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 71
    return-void
.end method
