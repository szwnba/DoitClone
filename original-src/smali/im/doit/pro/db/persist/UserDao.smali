.class public Lim/doit/pro/db/persist/UserDao;
.super Lim/doit/pro/db/persist/DBaseDao;
.source "UserDao.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lim/doit/pro/db/persist/DBaseDao",
        "<",
        "Lim/doit/pro/model/User;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 63
    const-string v0, "users"

    invoke-direct {p0, v0, p1}, Lim/doit/pro/db/persist/DBaseDao;-><init>(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 64
    return-void
.end method


# virtual methods
.method public batchCreateOrUpdate(Lim/doit/pro/model/User;)V
    .locals 2
    .param p1, "user"    # Lim/doit/pro/model/User;

    .prologue
    .line 73
    if-nez p1, :cond_0

    .line 87
    :goto_0
    return-void

    .line 77
    :cond_0
    :try_start_0
    iget-object v0, p0, Lim/doit/pro/db/persist/UserDao;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 78
    invoke-virtual {p1}, Lim/doit/pro/model/User;->getUuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lim/doit/pro/db/persist/UserDao;->isExistedByUUID(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 79
    invoke-virtual {p1}, Lim/doit/pro/model/User;->getUuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lim/doit/pro/db/persist/UserDao;->uuidClause(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lim/doit/pro/db/persist/utils/SQLBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lim/doit/pro/db/persist/UserDao;->update(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 83
    :goto_1
    iget-object v0, p0, Lim/doit/pro/db/persist/UserDao;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    iget-object v0, p0, Lim/doit/pro/db/persist/UserDao;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0

    .line 81
    :cond_1
    const/4 v0, 0x1

    :try_start_1
    invoke-virtual {p0, p1, v0}, Lim/doit/pro/db/persist/UserDao;->create(Ljava/lang/Object;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 84
    :catchall_0
    move-exception v0

    .line 85
    iget-object v1, p0, Lim/doit/pro/db/persist/UserDao;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 86
    throw v0
.end method

.method public batchCreateOrUpdate(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lim/doit/pro/model/User;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 69
    .local p1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/User;>;"
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "don\'t user this method."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public clearEvernote(Lim/doit/pro/model/User;)V
    .locals 1
    .param p1, "t"    # Lim/doit/pro/model/User;

    .prologue
    .line 131
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lim/doit/pro/model/User;->setEvernote(Lim/doit/pro/model/Evernote;)V

    .line 132
    invoke-virtual {p0, p1}, Lim/doit/pro/db/persist/UserDao;->updateAndSaveLog(Lim/doit/pro/model/User;)V

    .line 133
    return-void
.end method

.method protected colunms()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 251
    const/16 v0, 0x29

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

    const-string v2, "email"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "lower_email"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 252
    const-string v2, "account"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "lower_account"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "nickname"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "gender"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "language"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "week_start"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    .line 253
    const-string v2, "time_zone"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "offset"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "pay_type"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "pay_start_at"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "pay_end_at"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    .line 254
    const-string v2, "email_to_task_address"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "time_format"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "date_format"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    .line 255
    const-string v2, "google_calendar"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "doit_token"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "provider"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "deleted"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "birthday"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    .line 256
    const-string v2, "remind_daily_plan"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "remind_daily_review"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "daily_planning_time"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    .line 257
    const-string v2, "daily_review_time"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "weekly_review_time"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "weekly_review_day"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    .line 258
    const-string v2, "working_start_time"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "working_end_time"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "lunch_break_start_time"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    .line 259
    const-string v2, "lunch_break_end_time"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "plan_review_remind_on_weekends"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    .line 260
    const-string v2, "avatar_id"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "avatar"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "remind"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "setting"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "evernote"

    aput-object v2, v0, v1

    .line 251
    return-object v0
.end method

.method protected cursorToObject(Landroid/database/Cursor;)Lim/doit/pro/model/User;
    .locals 4
    .param p1, "c"    # Landroid/database/Cursor;

    .prologue
    .line 137
    new-instance v1, Lim/doit/pro/model/User;

    invoke-direct {v1}, Lim/doit/pro/model/User;-><init>()V

    .line 138
    .local v1, "user":Lim/doit/pro/model/User;
    const-string v2, "uuid"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lim/doit/pro/model/User;->setUuid(Ljava/lang/String;)V

    .line 140
    const-string v2, "created"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 139
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Lim/doit/pro/utils/DateUtils;->convertToDate(J)Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v1, v2}, Lim/doit/pro/model/User;->setCreated(Ljava/util/Calendar;)V

    .line 142
    const-string v2, "updated"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 141
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Lim/doit/pro/utils/DateUtils;->convertToDate(J)Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v1, v2}, Lim/doit/pro/model/User;->setUpdated(Ljava/util/Calendar;)V

    .line 143
    const-string v2, "usn"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lim/doit/pro/model/User;->setUsn(J)V

    .line 144
    const-string v2, "email"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lim/doit/pro/model/User;->setEmail(Ljava/lang/String;)V

    .line 145
    const-string v2, "lower_email"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lim/doit/pro/model/User;->setLowerEmail(Ljava/lang/String;)V

    .line 146
    const-string v2, "account"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lim/doit/pro/model/User;->setAccount(Ljava/lang/String;)V

    .line 147
    const-string v2, "lower_account"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lim/doit/pro/model/User;->setLowerAccount(Ljava/lang/String;)V

    .line 148
    const-string v2, "nickname"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lim/doit/pro/model/User;->setNickname(Ljava/lang/String;)V

    .line 149
    const-string v2, "gender"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lim/doit/pro/model/User;->setGender(Ljava/lang/String;)V

    .line 150
    const-string v2, "language"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lim/doit/pro/model/User;->setLanguage(Ljava/lang/String;)V

    .line 151
    const-string v2, "week_start"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lim/doit/pro/model/User;->setWeekStart(Ljava/lang/String;)V

    .line 152
    const-string v2, "time_zone"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lim/doit/pro/model/User;->setTimezone(Ljava/lang/String;)V

    .line 153
    const-string v2, "offset"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lim/doit/pro/model/User;->setOffset(D)V

    .line 154
    const-string v2, "pay_type"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lim/doit/pro/model/User;->setPayType(Ljava/lang/String;)V

    .line 156
    const-string v2, "pay_start_at"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 155
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Lim/doit/pro/utils/DateUtils;->convertToDate(J)Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v1, v2}, Lim/doit/pro/model/User;->setPayStartAt(Ljava/util/Calendar;)V

    .line 158
    const-string v2, "pay_end_at"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 157
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Lim/doit/pro/utils/DateUtils;->convertToDate(J)Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v1, v2}, Lim/doit/pro/model/User;->setPayEndAt(Ljava/util/Calendar;)V

    .line 160
    const-string v2, "email_to_task_address"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 159
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lim/doit/pro/model/User;->setEmailToTaskAddress(Ljava/lang/String;)V

    .line 161
    const-string v2, "time_format"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lim/doit/pro/model/User;->setTimeFormat(I)V

    .line 162
    const-string v2, "date_format"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lim/doit/pro/model/User;->setDateFormat(Ljava/lang/String;)V

    .line 163
    const-string v2, "google_calendar"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lim/doit/pro/model/User;->setGoogleCalendar(Ljava/lang/String;)V

    .line 164
    const-string v2, "doit_token"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lim/doit/pro/model/User;->setDoitToken(Ljava/lang/String;)V

    .line 165
    const-string v2, "provider"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lim/doit/pro/model/User;->setProvider(Ljava/lang/String;)V

    .line 167
    const-string v2, "deleted"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 166
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Lim/doit/pro/utils/DateUtils;->convertToDate(J)Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v1, v2}, Lim/doit/pro/model/User;->setDeleted(Ljava/util/Calendar;)V

    .line 169
    const-string v2, "birthday"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 168
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Lim/doit/pro/utils/DateUtils;->convertToDate(J)Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v1, v2}, Lim/doit/pro/model/User;->setBirthday(Ljava/util/Calendar;)V

    .line 171
    const-string v2, "remind_daily_plan"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 170
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lim/doit/pro/db/persist/UserDao;->intToBoolean(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Lim/doit/pro/model/User;->setRemindDailyPlan(Z)V

    .line 173
    const-string v2, "remind_daily_review"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 172
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lim/doit/pro/db/persist/UserDao;->intToBoolean(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Lim/doit/pro/model/User;->setRemindDailyReview(Z)V

    .line 175
    const-string v2, "daily_planning_time"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 174
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lim/doit/pro/model/User;->setDailyPlanningTime(Ljava/lang/String;)V

    .line 176
    const-string v2, "daily_review_time"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lim/doit/pro/model/User;->setDailyReviewTime(Ljava/lang/String;)V

    .line 178
    const-string v2, "weekly_review_time"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 177
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lim/doit/pro/model/User;->setWeeklyReviewTime(Ljava/lang/String;)V

    .line 179
    const-string v2, "weekly_review_day"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lim/doit/pro/model/User;->setWeeklyReviewDay(I)V

    .line 181
    const-string v2, "working_start_time"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 180
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lim/doit/pro/model/User;->setWorkingStartTime(Ljava/lang/String;)V

    .line 182
    const-string v2, "working_end_time"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lim/doit/pro/model/User;->setWorkingEndTime(Ljava/lang/String;)V

    .line 184
    const-string v2, "lunch_break_start_time"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 183
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lim/doit/pro/model/User;->setLunchBreakStartTime(Ljava/lang/String;)V

    .line 186
    const-string v2, "lunch_break_end_time"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 185
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lim/doit/pro/model/User;->setLunchBreakEndTime(Ljava/lang/String;)V

    .line 188
    const-string v2, "plan_review_remind_on_weekends"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 187
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lim/doit/pro/db/persist/UserDao;->intToBoolean(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Lim/doit/pro/model/User;->setPlanReviewRemindOnWeekends(Z)V

    .line 189
    const-string v2, "avatar_id"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lim/doit/pro/model/User;->setAvatarId(Ljava/lang/String;)V

    .line 190
    const-string v2, "avatar"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    .line 191
    .local v0, "in":[B
    if-eqz v0, :cond_0

    .line 192
    const/4 v2, 0x0

    array-length v3, v0

    invoke-static {v0, v2, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Lim/doit/pro/model/User;->setAvatar(Landroid/graphics/Bitmap;)V

    .line 194
    :cond_0
    const-string v2, "remind"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lim/doit/pro/model/User;->setRemind(Ljava/lang/String;)V

    .line 195
    const-string v2, "setting"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lim/doit/pro/model/User;->setSetting(Ljava/lang/String;)V

    .line 196
    const-string v2, "evernote"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lim/doit/pro/model/User;->setJsonEvernote(Ljava/lang/String;)V

    .line 197
    return-object v1
.end method

.method protected bridge synthetic cursorToObject(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lim/doit/pro/db/persist/UserDao;->cursorToObject(Landroid/database/Cursor;)Lim/doit/pro/model/User;

    move-result-object v0

    return-object v0
.end method

.method public findCurrentUser(Ljava/lang/String;)Lim/doit/pro/model/User;
    .locals 3
    .param p1, "loginUsername"    # Ljava/lang/String;

    .prologue
    .line 90
    invoke-static {p1}, Lim/doit/pro/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 91
    const/4 v1, 0x0

    .line 103
    :cond_0
    :goto_0
    return-object v1

    .line 93
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 94
    const/4 v1, 0x0

    .line 95
    .local v1, "user":Lim/doit/pro/model/User;
    new-instance v0, Lim/doit/pro/db/persist/utils/SQLBuilder;

    invoke-direct {v0}, Lim/doit/pro/db/persist/utils/SQLBuilder;-><init>()V

    .line 96
    .local v0, "sql":Lim/doit/pro/db/persist/utils/SQLBuilder;
    const-string v2, "lower_email"

    invoke-virtual {v0, v2}, Lim/doit/pro/db/persist/utils/SQLBuilder;->append(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->eq(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    .line 97
    invoke-virtual {v0}, Lim/doit/pro/db/persist/utils/SQLBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lim/doit/pro/db/persist/UserDao;->findOne(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "user":Lim/doit/pro/model/User;
    check-cast v1, Lim/doit/pro/model/User;

    .line 98
    .restart local v1    # "user":Lim/doit/pro/model/User;
    if-nez v1, :cond_0

    .line 99
    new-instance v0, Lim/doit/pro/db/persist/utils/SQLBuilder;

    .end local v0    # "sql":Lim/doit/pro/db/persist/utils/SQLBuilder;
    invoke-direct {v0}, Lim/doit/pro/db/persist/utils/SQLBuilder;-><init>()V

    .line 100
    .restart local v0    # "sql":Lim/doit/pro/db/persist/utils/SQLBuilder;
    const-string v2, "lower_account"

    invoke-virtual {v0, v2}, Lim/doit/pro/db/persist/utils/SQLBuilder;->append(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->eq(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    .line 101
    invoke-virtual {v0}, Lim/doit/pro/db/persist/utils/SQLBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lim/doit/pro/db/persist/UserDao;->findOne(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "user":Lim/doit/pro/model/User;
    check-cast v1, Lim/doit/pro/model/User;

    .restart local v1    # "user":Lim/doit/pro/model/User;
    goto :goto_0
.end method

.method protected objectToContentValues(Lim/doit/pro/model/User;Z)Landroid/content/ContentValues;
    .locals 4
    .param p1, "t"    # Lim/doit/pro/model/User;
    .param p2, "isDownload"    # Z

    .prologue
    .line 202
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 203
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "uuid"

    invoke-virtual {p1}, Lim/doit/pro/model/User;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    const-string v1, "created"

    invoke-virtual {p1}, Lim/doit/pro/model/User;->getCreated()Ljava/util/Calendar;

    move-result-object v2

    invoke-static {v2}, Lim/doit/pro/utils/DateUtils;->convertToLong(Ljava/util/Calendar;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 205
    const-string v1, "updated"

    invoke-virtual {p1}, Lim/doit/pro/model/User;->getUpdated()Ljava/util/Calendar;

    move-result-object v2

    invoke-static {v2}, Lim/doit/pro/utils/DateUtils;->convertToLong(Ljava/util/Calendar;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 206
    const-string v1, "email"

    invoke-virtual {p1}, Lim/doit/pro/model/User;->getEmail()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    const-string v1, "lower_email"

    invoke-virtual {p1}, Lim/doit/pro/model/User;->getLowerEmail()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    const-string v1, "account"

    invoke-virtual {p1}, Lim/doit/pro/model/User;->getAccount()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    const-string v1, "lower_account"

    invoke-virtual {p1}, Lim/doit/pro/model/User;->getLowerAccount()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    const-string v1, "nickname"

    invoke-virtual {p1}, Lim/doit/pro/model/User;->getNickname()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    const-string v1, "gender"

    invoke-virtual {p1}, Lim/doit/pro/model/User;->getGender()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    const-string v1, "language"

    invoke-virtual {p1}, Lim/doit/pro/model/User;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    const-string v1, "week_start"

    invoke-virtual {p1}, Lim/doit/pro/model/User;->getWeekStart()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    const-string v1, "time_zone"

    invoke-virtual {p1}, Lim/doit/pro/model/User;->getTimezone()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    const-string v1, "offset"

    invoke-virtual {p1}, Lim/doit/pro/model/User;->getOffset()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 216
    const-string v1, "pay_type"

    invoke-virtual {p1}, Lim/doit/pro/model/User;->getPayType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    const-string v1, "pay_start_at"

    invoke-virtual {p1}, Lim/doit/pro/model/User;->getPayStartAt()Ljava/util/Calendar;

    move-result-object v2

    invoke-static {v2}, Lim/doit/pro/utils/DateUtils;->convertToLong(Ljava/util/Calendar;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 218
    const-string v1, "pay_end_at"

    invoke-virtual {p1}, Lim/doit/pro/model/User;->getPayEndAt()Ljava/util/Calendar;

    move-result-object v2

    invoke-static {v2}, Lim/doit/pro/utils/DateUtils;->convertToLong(Ljava/util/Calendar;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 219
    const-string v1, "email_to_task_address"

    invoke-virtual {p1}, Lim/doit/pro/model/User;->getEmailToTaskAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    const-string v1, "time_format"

    invoke-virtual {p1}, Lim/doit/pro/model/User;->getTimeFormat()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 221
    const-string v1, "date_format"

    invoke-virtual {p1}, Lim/doit/pro/model/User;->getDateFormat()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    const-string v1, "google_calendar"

    invoke-virtual {p1}, Lim/doit/pro/model/User;->getGoogleCalendar()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    const-string v1, "doit_token"

    invoke-virtual {p1}, Lim/doit/pro/model/User;->getDoitToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    const-string v1, "provider"

    invoke-virtual {p1}, Lim/doit/pro/model/User;->getProvider()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    const-string v1, "deleted"

    invoke-virtual {p1}, Lim/doit/pro/model/User;->getDeleted()Ljava/util/Calendar;

    move-result-object v2

    invoke-static {v2}, Lim/doit/pro/utils/DateUtils;->convertToLong(Ljava/util/Calendar;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 226
    const-string v1, "birthday"

    invoke-virtual {p1}, Lim/doit/pro/model/User;->getBirthday()Ljava/util/Calendar;

    move-result-object v2

    invoke-static {v2}, Lim/doit/pro/utils/DateUtils;->convertToLong(Ljava/util/Calendar;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 227
    const-string v1, "remind_daily_plan"

    invoke-virtual {p1}, Lim/doit/pro/model/User;->isRemindDailyPlan()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 228
    const-string v1, "remind_daily_review"

    invoke-virtual {p1}, Lim/doit/pro/model/User;->isRemindDailyReview()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 229
    const-string v1, "daily_planning_time"

    invoke-virtual {p1}, Lim/doit/pro/model/User;->getDailyPlanningTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    const-string v1, "daily_review_time"

    invoke-virtual {p1}, Lim/doit/pro/model/User;->getDailyReviewTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    const-string v1, "weekly_review_time"

    invoke-virtual {p1}, Lim/doit/pro/model/User;->getWeeklyReviewTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    const-string v1, "weekly_review_day"

    invoke-virtual {p1}, Lim/doit/pro/model/User;->getWeeklyReviewDay()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 233
    const-string v1, "working_start_time"

    invoke-virtual {p1}, Lim/doit/pro/model/User;->getWorkingStartTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    const-string v1, "working_end_time"

    invoke-virtual {p1}, Lim/doit/pro/model/User;->getWorkingEndTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    const-string v1, "lunch_break_start_time"

    invoke-virtual {p1}, Lim/doit/pro/model/User;->getLunchBreakStartTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    const-string v1, "lunch_break_end_time"

    invoke-virtual {p1}, Lim/doit/pro/model/User;->getLunchBreakEndTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    const-string v1, "plan_review_remind_on_weekends"

    .line 238
    invoke-virtual {p1}, Lim/doit/pro/model/User;->isPlanReviewRemindOnWeekends()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 237
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 239
    const-string v1, "avatar_id"

    invoke-virtual {p1}, Lim/doit/pro/model/User;->getAvatarId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    const-string v1, "remind"

    invoke-virtual {p1}, Lim/doit/pro/model/User;->getRemind()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    const-string v1, "setting"

    invoke-virtual {p1}, Lim/doit/pro/model/User;->getSetting()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    const-string v1, "evernote"

    invoke-virtual {p1}, Lim/doit/pro/model/User;->getJsonEvernote()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    if-eqz p2, :cond_0

    .line 244
    const-string v1, "usn"

    invoke-virtual {p1}, Lim/doit/pro/model/User;->getUsn()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 246
    :cond_0
    return-object v0
.end method

.method protected bridge synthetic objectToContentValues(Ljava/lang/Object;Z)Landroid/content/ContentValues;
    .locals 1

    .prologue
    .line 1
    check-cast p1, Lim/doit/pro/model/User;

    invoke-virtual {p0, p1, p2}, Lim/doit/pro/db/persist/UserDao;->objectToContentValues(Lim/doit/pro/model/User;Z)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method protected order()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 266
    const/4 v0, 0x0

    return-object v0
.end method

.method protected saveCreateLog(Ljava/lang/String;)V
    .locals 2
    .param p1, "uuid"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 283
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "don\'t user this method."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected saveDeleteLog(Ljava/lang/String;)V
    .locals 2
    .param p1, "uuid"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 272
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "don\'t user this method."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected saveUpdateLog(Ljava/lang/String;)V
    .locals 2
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    .line 277
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v0

    iget-object v0, v0, Lim/doit/pro/db/Persist;->opLogDao:Lim/doit/pro/db/persist/OpLogDao;

    sget-object v1, Lim/doit/pro/model/OpLog$OpType;->update:Lim/doit/pro/model/OpLog$OpType;

    invoke-virtual {v0, p1, v1}, Lim/doit/pro/db/persist/OpLogDao;->saveUser(Ljava/lang/String;Lim/doit/pro/model/OpLog$OpType;)V

    .line 278
    return-void
.end method

.method public updataAvatarAndSaveLog(Ljava/lang/String;[B)V
    .locals 2
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "bitmap"    # [B

    .prologue
    .line 117
    invoke-virtual {p0, p1, p2}, Lim/doit/pro/db/persist/UserDao;->updateAvatar(Ljava/lang/String;[B)V

    .line 118
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v0

    iget-object v0, v0, Lim/doit/pro/db/Persist;->opLogDao:Lim/doit/pro/db/persist/OpLogDao;

    sget-object v1, Lim/doit/pro/model/OpLog$OpType;->avatar:Lim/doit/pro/model/OpLog$OpType;

    invoke-virtual {v0, p1, v1}, Lim/doit/pro/db/persist/OpLogDao;->saveUser(Ljava/lang/String;Lim/doit/pro/model/OpLog$OpType;)V

    .line 120
    return-void
.end method

.method public bridge synthetic updateAndSaveLog(Lim/doit/pro/model/BaseEntity;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lim/doit/pro/model/User;

    invoke-virtual {p0, p1}, Lim/doit/pro/db/persist/UserDao;->updateAndSaveLog(Lim/doit/pro/model/User;)V

    return-void
.end method

.method public updateAndSaveLog(Lim/doit/pro/model/User;)V
    .locals 1
    .param p1, "t"    # Lim/doit/pro/model/User;

    .prologue
    .line 124
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {p1, v0}, Lim/doit/pro/model/User;->setUpdated(Ljava/util/Calendar;)V

    .line 125
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lim/doit/pro/db/persist/UserDao;->update(Lim/doit/pro/model/BaseEntity;Z)V

    .line 126
    invoke-static {p1}, Lim/doit/pro/activity/DoitApp;->setUser(Lim/doit/pro/model/User;)V

    .line 127
    invoke-virtual {p1}, Lim/doit/pro/model/User;->getUuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lim/doit/pro/db/persist/UserDao;->saveUpdateLog(Ljava/lang/String;)V

    .line 128
    return-void
.end method

.method public updateAvatar(Ljava/lang/String;[B)V
    .locals 5
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "bitmap"    # [B

    .prologue
    .line 107
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 108
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "avatar"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 109
    iget-object v1, p0, Lim/doit/pro/db/persist/UserDao;->db:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v2, p0, Lim/doit/pro/db/persist/UserDao;->tableName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lim/doit/pro/db/persist/UserDao;->uuidClause(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lim/doit/pro/db/persist/utils/SQLBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 110
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->user()Lim/doit/pro/model/User;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eqz p2, :cond_0

    .line 111
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->user()Lim/doit/pro/model/User;

    move-result-object v1

    .line 112
    const/4 v2, 0x0

    array-length v3, p2

    .line 111
    invoke-static {p2, v2, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Lim/doit/pro/model/User;->setAvatar(Landroid/graphics/Bitmap;)V

    .line 114
    :cond_0
    return-void
.end method
