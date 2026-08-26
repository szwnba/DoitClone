.class public Lim/doit/pro/db/persist/PurchaseDao;
.super Lim/doit/pro/db/persist/DBaseDao;
.source "PurchaseDao.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lim/doit/pro/db/persist/DBaseDao",
        "<",
        "Lim/doit/pro/model/DPurchase;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 23
    const-string v0, "purchases"

    invoke-direct {p0, v0, p1}, Lim/doit/pro/db/persist/DBaseDao;-><init>(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 24
    return-void
.end method


# virtual methods
.method protected colunms()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 65
    const/4 v0, 0x6

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

    const-string v2, "signature"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "out_trade_no"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "purchase_data"

    aput-object v2, v0, v1

    return-object v0
.end method

.method public bridge synthetic createAndSaveLog(Lim/doit/pro/model/BaseEntity;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lim/doit/pro/model/DPurchase;

    invoke-virtual {p0, p1}, Lim/doit/pro/db/persist/PurchaseDao;->createAndSaveLog(Lim/doit/pro/model/DPurchase;)V

    return-void
.end method

.method public createAndSaveLog(Lim/doit/pro/model/DPurchase;)V
    .locals 0
    .param p1, "t"    # Lim/doit/pro/model/DPurchase;

    .prologue
    .line 28
    invoke-super {p0, p1}, Lim/doit/pro/db/persist/DBaseDao;->createAndSaveLog(Lim/doit/pro/model/BaseEntity;)V

    .line 29
    return-void
.end method

.method protected cursorToObject(Landroid/database/Cursor;)Lim/doit/pro/model/DPurchase;
    .locals 4
    .param p1, "c"    # Landroid/database/Cursor;

    .prologue
    .line 40
    new-instance v0, Lim/doit/pro/model/DPurchase;

    invoke-direct {v0}, Lim/doit/pro/model/DPurchase;-><init>()V

    .line 41
    .local v0, "purchase":Lim/doit/pro/model/DPurchase;
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/model/DPurchase;->setUuid(Ljava/lang/String;)V

    .line 42
    const/4 v1, 0x1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Lim/doit/pro/utils/DateUtils;->convertToDate(J)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/model/DPurchase;->setCreated(Ljava/util/Calendar;)V

    .line 43
    const/4 v1, 0x2

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Lim/doit/pro/utils/DateUtils;->convertToDate(J)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/model/DPurchase;->setUpdated(Ljava/util/Calendar;)V

    .line 44
    const/4 v1, 0x3

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/model/DPurchase;->setSignature(Ljava/lang/String;)V

    .line 45
    const/4 v1, 0x4

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/model/DPurchase;->setOutTradeNo(Ljava/lang/String;)V

    .line 46
    const/4 v1, 0x5

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/model/DPurchase;->setPurchaseData(Ljava/lang/String;)V

    .line 47
    return-object v0
.end method

.method protected bridge synthetic cursorToObject(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lim/doit/pro/db/persist/PurchaseDao;->cursorToObject(Landroid/database/Cursor;)Lim/doit/pro/model/DPurchase;

    move-result-object v0

    return-object v0
.end method

.method public destroyByUuid(Ljava/lang/String;)V
    .locals 5
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    .line 32
    new-instance v1, Lim/doit/pro/db/persist/utils/SQLBuilder;

    invoke-direct {v1}, Lim/doit/pro/db/persist/utils/SQLBuilder;-><init>()V

    .line 33
    .local v1, "sb":Lim/doit/pro/db/persist/utils/SQLBuilder;
    const-string v2, "uuid"

    invoke-virtual {v1, v2}, Lim/doit/pro/db/persist/utils/SQLBuilder;->append(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->eq(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    .line 34
    invoke-virtual {v1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 35
    .local v0, "clause":Ljava/lang/String;
    iget-object v2, p0, Lim/doit/pro/db/persist/PurchaseDao;->db:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v3, p0, Lim/doit/pro/db/persist/PurchaseDao;->tableName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 36
    return-void
.end method

.method protected objectToContentValues(Lim/doit/pro/model/DPurchase;Z)Landroid/content/ContentValues;
    .locals 4
    .param p1, "t"    # Lim/doit/pro/model/DPurchase;
    .param p2, "isDownload"    # Z

    .prologue
    .line 53
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 54
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "uuid"

    invoke-virtual {p1}, Lim/doit/pro/model/DPurchase;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    const-string v1, "created"

    invoke-virtual {p1}, Lim/doit/pro/model/DPurchase;->getCreated()Ljava/util/Calendar;

    move-result-object v2

    invoke-static {v2}, Lim/doit/pro/utils/DateUtils;->convertToLong(Ljava/util/Calendar;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 56
    const-string v1, "updated"

    invoke-virtual {p1}, Lim/doit/pro/model/DPurchase;->getUpdated()Ljava/util/Calendar;

    move-result-object v2

    invoke-static {v2}, Lim/doit/pro/utils/DateUtils;->convertToLong(Ljava/util/Calendar;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 57
    const-string v1, "signature"

    invoke-virtual {p1}, Lim/doit/pro/model/DPurchase;->getSignature()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    const-string v1, "out_trade_no"

    invoke-virtual {p1}, Lim/doit/pro/model/DPurchase;->getOutTradeNo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    const-string v1, "purchase_data"

    invoke-virtual {p1}, Lim/doit/pro/model/DPurchase;->getPurchaseData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    return-object v0
.end method

.method protected bridge synthetic objectToContentValues(Ljava/lang/Object;Z)Landroid/content/ContentValues;
    .locals 1

    .prologue
    .line 1
    check-cast p1, Lim/doit/pro/model/DPurchase;

    invoke-virtual {p0, p1, p2}, Lim/doit/pro/db/persist/PurchaseDao;->objectToContentValues(Lim/doit/pro/model/DPurchase;Z)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method protected order()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    const-string v0, "created"

    invoke-virtual {p0, v0}, Lim/doit/pro/db/persist/PurchaseDao;->asc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected saveCreateLog(Ljava/lang/String;)V
    .locals 2
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    .line 85
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v0

    iget-object v0, v0, Lim/doit/pro/db/Persist;->opLogDao:Lim/doit/pro/db/persist/OpLogDao;

    sget-object v1, Lim/doit/pro/model/OpLog$OpType;->create:Lim/doit/pro/model/OpLog$OpType;

    invoke-virtual {v0, p1, v1}, Lim/doit/pro/db/persist/OpLogDao;->savePurchase(Ljava/lang/String;Lim/doit/pro/model/OpLog$OpType;)V

    .line 86
    return-void
.end method

.method protected saveDeleteLog(Ljava/lang/String;)V
    .locals 0
    .param p1, "uuid"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 76
    return-void
.end method

.method protected saveUpdateLog(Ljava/lang/String;)V
    .locals 0
    .param p1, "uuid"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 81
    return-void
.end method
