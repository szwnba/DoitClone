.class public Lim/doit/pro/db/DSQLiteOpenHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DSQLiteOpenHelper.java"


# static fields
.field private static final DATABASE_NAME:Ljava/lang/String; = "doitim.db"

.field private static final VERSION:I = 0x5


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    const-string v0, "doitim.db"

    const/4 v1, 0x0

    const/4 v2, 0x5

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 37
    iput-object p1, p0, Lim/doit/pro/db/DSQLiteOpenHelper;->mContext:Landroid/content/Context;

    .line 38
    return-void
.end method

.method private addDeferredOnTaskReviewInfo(Landroid/database/sqlite/SQLiteDatabase;I)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I

    .prologue
    .line 97
    const-string v0, "task_review_info"

    const-string v1, "deferred"

    invoke-direct {p0, p1, v0, v1}, Lim/doit/pro/db/DSQLiteOpenHelper;->addStringColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    return-void
.end method

.method private addEstimatedTimeAndSpentTimeOnTask(Landroid/database/sqlite/SQLiteDatabase;I)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I

    .prologue
    .line 86
    const-string v0, "tasks"

    const-string v1, "estimated_time"

    invoke-direct {p0, p1, v0, v1}, Lim/doit/pro/db/DSQLiteOpenHelper;->addIntegerColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    const-string v0, "tasks"

    const-string v1, "spent_time"

    invoke-direct {p0, p1, v0, v1}, Lim/doit/pro/db/DSQLiteOpenHelper;->addIntegerColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    return-void
.end method

.method private addIntegerColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "tableName"    # Ljava/lang/String;
    .param p3, "columnName"    # Ljava/lang/String;

    .prologue
    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 136
    .local v0, "sql":Ljava/lang/StringBuilder;
    const-string v1, "ALTER TABLE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ADD COLUMN "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 137
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " NUMERIC "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 139
    return-void
.end method

.method private addProjectMedias(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 130
    const-string v0, "projects"

    const-string v1, "medias"

    invoke-direct {p0, p1, v0, v1}, Lim/doit/pro/db/DSQLiteOpenHelper;->addStringColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    return-void
.end method

.method private addStringColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "tableName"    # Ljava/lang/String;
    .param p3, "columnName"    # Ljava/lang/String;

    .prologue
    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 144
    .local v0, "sql":Ljava/lang/StringBuilder;
    const-string v1, "ALTER TABLE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ADD COLUMN "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 145
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TEXT "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 147
    return-void
.end method

.method private addTaskMedias(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 126
    const-string v0, "tasks"

    const-string v1, "medias"

    invoke-direct {p0, p1, v0, v1}, Lim/doit/pro/db/DSQLiteOpenHelper;->addStringColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    return-void
.end method

.method private addUUIDOnDailyReview(Landroid/database/sqlite/SQLiteDatabase;I)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I

    .prologue
    .line 92
    const-string v0, "daily_review"

    const-string v1, "uuid"

    invoke-direct {p0, p1, v0, v1}, Lim/doit/pro/db/DSQLiteOpenHelper;->addStringColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    return-void
.end method

.method private addUserEvernoteInfo(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 122
    const-string v0, "users"

    const-string v1, "evernote"

    invoke-direct {p0, p1, v0, v1}, Lim/doit/pro/db/DSQLiteOpenHelper;->addStringColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    return-void
.end method

.method private createSyncLogTable(Landroid/database/sqlite/SQLiteDatabase;I)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I

    .prologue
    .line 81
    new-instance v0, Lim/doit/pro/db/metadata/LastSyncLogTable;

    invoke-direct {v0}, Lim/doit/pro/db/metadata/LastSyncLogTable;-><init>()V

    invoke-virtual {v0, p1}, Lim/doit/pro/db/metadata/LastSyncLogTable;->create(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 82
    return-void
.end method

.method private upgradeOn1414014(Landroid/database/sqlite/SQLiteDatabase;I)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I

    .prologue
    .line 71
    const/4 v0, 0x2

    if-ge p2, v0, :cond_0

    .line 72
    invoke-direct {p0, p1, p2}, Lim/doit/pro/db/DSQLiteOpenHelper;->createSyncLogTable(Landroid/database/sqlite/SQLiteDatabase;I)V

    .line 73
    invoke-direct {p0, p1, p2}, Lim/doit/pro/db/DSQLiteOpenHelper;->addEstimatedTimeAndSpentTimeOnTask(Landroid/database/sqlite/SQLiteDatabase;I)V

    .line 74
    invoke-direct {p0, p1, p2}, Lim/doit/pro/db/DSQLiteOpenHelper;->addUUIDOnDailyReview(Landroid/database/sqlite/SQLiteDatabase;I)V

    .line 75
    invoke-direct {p0, p1, p2}, Lim/doit/pro/db/DSQLiteOpenHelper;->addDeferredOnTaskReviewInfo(Landroid/database/sqlite/SQLiteDatabase;I)V

    .line 76
    const/4 v0, 0x1

    invoke-static {v0}, Lim/doit/pro/utils/PrefUtils;->downloadAllAfterDBUpgrade(Z)V

    .line 78
    :cond_0
    return-void
.end method

.method private upgradeOn1414300(Landroid/database/sqlite/SQLiteDatabase;I)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I

    .prologue
    .line 101
    const/4 v0, 0x3

    if-ge p2, v0, :cond_0

    .line 102
    new-instance v0, Lim/doit/pro/db/metadata/PurchaseTable;

    invoke-direct {v0}, Lim/doit/pro/db/metadata/PurchaseTable;-><init>()V

    invoke-virtual {v0, p1}, Lim/doit/pro/db/metadata/PurchaseTable;->create(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 104
    :cond_0
    return-void
.end method

.method private upgradeOn1414400(Landroid/database/sqlite/SQLiteDatabase;I)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I

    .prologue
    .line 107
    const/4 v0, 0x4

    if-ge p2, v0, :cond_0

    .line 108
    invoke-direct {p0, p1}, Lim/doit/pro/db/DSQLiteOpenHelper;->addUserEvernoteInfo(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 109
    invoke-direct {p0, p1}, Lim/doit/pro/db/DSQLiteOpenHelper;->addTaskMedias(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 110
    const/4 v0, 0x1

    invoke-static {v0}, Lim/doit/pro/utils/PrefUtils;->downloadAllAfterDBUpgrade(Z)V

    .line 112
    :cond_0
    return-void
.end method

.method private upgradeOn1414401(Landroid/database/sqlite/SQLiteDatabase;I)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I

    .prologue
    .line 115
    const/4 v0, 0x5

    if-ge p2, v0, :cond_0

    .line 116
    invoke-direct {p0, p1}, Lim/doit/pro/db/DSQLiteOpenHelper;->addProjectMedias(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 117
    const/4 v0, 0x1

    invoke-static {v0}, Lim/doit/pro/utils/PrefUtils;->downloadAllAfterDBUpgrade(Z)V

    .line 119
    :cond_0
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 42
    new-instance v0, Lim/doit/pro/db/metadata/UserTable;

    invoke-direct {v0}, Lim/doit/pro/db/metadata/UserTable;-><init>()V

    invoke-virtual {v0, p1}, Lim/doit/pro/db/metadata/UserTable;->create(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 43
    new-instance v0, Lim/doit/pro/db/metadata/BoxTable;

    invoke-direct {v0}, Lim/doit/pro/db/metadata/BoxTable;-><init>()V

    invoke-virtual {v0, p1}, Lim/doit/pro/db/metadata/BoxTable;->create(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 44
    new-instance v0, Lim/doit/pro/db/metadata/FilterTable;

    invoke-direct {v0}, Lim/doit/pro/db/metadata/FilterTable;-><init>()V

    invoke-virtual {v0, p1}, Lim/doit/pro/db/metadata/FilterTable;->create(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 45
    new-instance v0, Lim/doit/pro/db/metadata/TaskContextTable;

    invoke-direct {v0}, Lim/doit/pro/db/metadata/TaskContextTable;-><init>()V

    invoke-virtual {v0, p1}, Lim/doit/pro/db/metadata/TaskContextTable;->create(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 46
    new-instance v0, Lim/doit/pro/db/metadata/GoalTable;

    invoke-direct {v0}, Lim/doit/pro/db/metadata/GoalTable;-><init>()V

    invoke-virtual {v0, p1}, Lim/doit/pro/db/metadata/GoalTable;->create(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 47
    new-instance v0, Lim/doit/pro/db/metadata/ProjectTable;

    invoke-direct {v0}, Lim/doit/pro/db/metadata/ProjectTable;-><init>()V

    invoke-virtual {v0, p1}, Lim/doit/pro/db/metadata/ProjectTable;->create(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 48
    new-instance v0, Lim/doit/pro/db/metadata/ContactTable;

    invoke-direct {v0}, Lim/doit/pro/db/metadata/ContactTable;-><init>()V

    invoke-virtual {v0, p1}, Lim/doit/pro/db/metadata/ContactTable;->create(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 49
    new-instance v0, Lim/doit/pro/db/metadata/TaskCommentTable;

    invoke-direct {v0}, Lim/doit/pro/db/metadata/TaskCommentTable;-><init>()V

    invoke-virtual {v0, p1}, Lim/doit/pro/db/metadata/TaskCommentTable;->create(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 50
    new-instance v0, Lim/doit/pro/db/metadata/SubTaskTable;

    invoke-direct {v0}, Lim/doit/pro/db/metadata/SubTaskTable;-><init>()V

    invoke-virtual {v0, p1}, Lim/doit/pro/db/metadata/SubTaskTable;->create(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 51
    new-instance v0, Lim/doit/pro/db/metadata/OpLogTable;

    invoke-direct {v0}, Lim/doit/pro/db/metadata/OpLogTable;-><init>()V

    invoke-virtual {v0, p1}, Lim/doit/pro/db/metadata/OpLogTable;->create(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 52
    new-instance v0, Lim/doit/pro/db/metadata/TaskTable;

    invoke-direct {v0}, Lim/doit/pro/db/metadata/TaskTable;-><init>()V

    invoke-virtual {v0, p1}, Lim/doit/pro/db/metadata/TaskTable;->create(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 53
    new-instance v0, Lim/doit/pro/db/metadata/TagTable;

    invoke-direct {v0}, Lim/doit/pro/db/metadata/TagTable;-><init>()V

    invoke-virtual {v0, p1}, Lim/doit/pro/db/metadata/TagTable;->create(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 54
    new-instance v0, Lim/doit/pro/db/metadata/DailyReviewTable;

    invoke-direct {v0}, Lim/doit/pro/db/metadata/DailyReviewTable;-><init>()V

    invoke-virtual {v0, p1}, Lim/doit/pro/db/metadata/DailyReviewTable;->create(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 55
    new-instance v0, Lim/doit/pro/db/metadata/TaskReviewInfoTable;

    invoke-direct {v0}, Lim/doit/pro/db/metadata/TaskReviewInfoTable;-><init>()V

    invoke-virtual {v0, p1}, Lim/doit/pro/db/metadata/TaskReviewInfoTable;->create(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 56
    new-instance v0, Lim/doit/pro/db/metadata/NoticeTable;

    invoke-direct {v0}, Lim/doit/pro/db/metadata/NoticeTable;-><init>()V

    invoke-virtual {v0, p1}, Lim/doit/pro/db/metadata/NoticeTable;->create(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 57
    new-instance v0, Lim/doit/pro/db/metadata/AgentErrorTable;

    invoke-direct {v0}, Lim/doit/pro/db/metadata/AgentErrorTable;-><init>()V

    invoke-virtual {v0, p1}, Lim/doit/pro/db/metadata/AgentErrorTable;->create(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 58
    new-instance v0, Lim/doit/pro/db/metadata/LastSyncLogTable;

    invoke-direct {v0}, Lim/doit/pro/db/metadata/LastSyncLogTable;-><init>()V

    invoke-virtual {v0, p1}, Lim/doit/pro/db/metadata/LastSyncLogTable;->create(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 59
    new-instance v0, Lim/doit/pro/db/metadata/PurchaseTable;

    invoke-direct {v0}, Lim/doit/pro/db/metadata/PurchaseTable;-><init>()V

    invoke-virtual {v0, p1}, Lim/doit/pro/db/metadata/PurchaseTable;->create(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 60
    return-void
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    # patched: idempotent seed of default boxes (incl. projects)

    const-string v0, "INSERT INTO boxes (created,updated,usn,uuid,type,group_by,hidden,show_one) SELECT 0,0,0,'inbox','inbox',NULL,0,0 WHERE NOT EXISTS (SELECT 1 FROM boxes WHERE type='inbox')"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "INSERT INTO boxes (created,updated,usn,uuid,type,group_by,hidden,show_one) SELECT 0,0,0,'doitnow','doitnow',NULL,0,0 WHERE NOT EXISTS (SELECT 1 FROM boxes WHERE type='doitnow')"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "INSERT INTO boxes (created,updated,usn,uuid,type,group_by,hidden,show_one) SELECT 0,0,0,'today','today',NULL,0,0 WHERE NOT EXISTS (SELECT 1 FROM boxes WHERE type='today')"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "INSERT INTO boxes (created,updated,usn,uuid,type,group_by,hidden,show_one) SELECT 0,0,0,'next','next',NULL,0,0 WHERE NOT EXISTS (SELECT 1 FROM boxes WHERE type='next')"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "INSERT INTO boxes (created,updated,usn,uuid,type,group_by,hidden,show_one) SELECT 0,0,0,'tomorrow','tomorrow',NULL,0,0 WHERE NOT EXISTS (SELECT 1 FROM boxes WHERE type='tomorrow')"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "INSERT INTO boxes (created,updated,usn,uuid,type,group_by,hidden,show_one) SELECT 0,0,0,'scheduled','scheduled',NULL,0,0 WHERE NOT EXISTS (SELECT 1 FROM boxes WHERE type='scheduled')"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "INSERT INTO boxes (created,updated,usn,uuid,type,group_by,hidden,show_one) SELECT 0,0,0,'someday','someday',NULL,0,0 WHERE NOT EXISTS (SELECT 1 FROM boxes WHERE type='someday')"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "INSERT INTO boxes (created,updated,usn,uuid,type,group_by,hidden,show_one) SELECT 0,0,0,'waiting','waiting',NULL,0,0 WHERE NOT EXISTS (SELECT 1 FROM boxes WHERE type='waiting')"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "INSERT INTO boxes (created,updated,usn,uuid,type,group_by,hidden,show_one) SELECT 0,0,0,'projects','projects',NULL,0,0 WHERE NOT EXISTS (SELECT 1 FROM boxes WHERE type='projects')"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "INSERT INTO boxes (created,updated,usn,uuid,type,group_by,hidden,show_one) SELECT 0,0,0,'completed','completed',NULL,0,0 WHERE NOT EXISTS (SELECT 1 FROM boxes WHERE type='completed')"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "INSERT INTO boxes (created,updated,usn,uuid,type,group_by,hidden,show_one) SELECT 0,0,0,'trash','trash',NULL,0,0 WHERE NOT EXISTS (SELECT 1 FROM boxes WHERE type='trash')"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "INSERT INTO boxes (created,updated,usn,uuid,type,group_by,hidden,show_one) SELECT 0,0,0,'contacts','contacts',NULL,0,0 WHERE NOT EXISTS (SELECT 1 FROM boxes WHERE type='contacts')"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "INSERT INTO boxes (created,updated,usn,uuid,type,group_by,hidden,show_one) SELECT 0,0,0,'nocontext','nocontext',NULL,0,0 WHERE NOT EXISTS (SELECT 1 FROM boxes WHERE type='nocontext')"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "INSERT INTO boxes (created,updated,usn,uuid,type,group_by,hidden,show_one) SELECT 0,0,0,'noproject','noproject',NULL,0,0 WHERE NOT EXISTS (SELECT 1 FROM boxes WHERE type='noproject')"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method


.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Lim/doit/pro/db/DSQLiteOpenHelper;->upgradeOn1414014(Landroid/database/sqlite/SQLiteDatabase;I)V

    .line 65
    invoke-direct {p0, p1, p2}, Lim/doit/pro/db/DSQLiteOpenHelper;->upgradeOn1414300(Landroid/database/sqlite/SQLiteDatabase;I)V

    .line 66
    invoke-direct {p0, p1, p2}, Lim/doit/pro/db/DSQLiteOpenHelper;->upgradeOn1414400(Landroid/database/sqlite/SQLiteDatabase;I)V

    .line 67
    invoke-direct {p0, p1, p2}, Lim/doit/pro/db/DSQLiteOpenHelper;->upgradeOn1414401(Landroid/database/sqlite/SQLiteDatabase;I)V

    .line 68
    return-void
.end method
