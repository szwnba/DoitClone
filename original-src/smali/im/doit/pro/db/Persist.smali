.class public Lim/doit/pro/db/Persist;
.super Ljava/lang/Object;
.source "Persist.java"


# instance fields
.field public agentErrorDao:Lim/doit/pro/db/persist/AgentErrorDao;

.field public boxDao:Lim/doit/pro/db/persist/BoxDao;

.field public contactDao:Lim/doit/pro/db/persist/ContactDao;

.field public dailyReviewDao:Lim/doit/pro/db/persist/DailyReviewDao;

.field private db:Landroid/database/sqlite/SQLiteDatabase;

.field public filterDao:Lim/doit/pro/db/persist/FilterDao;

.field public goalDao:Lim/doit/pro/db/persist/GoalDao;

.field public lastSyncLogDao:Lim/doit/pro/db/persist/LastSyncLogDao;

.field private mContext:Landroid/content/Context;

.field public noticeDao:Lim/doit/pro/db/persist/NoticeDao;

.field public opLogDao:Lim/doit/pro/db/persist/OpLogDao;

.field public projectDao:Lim/doit/pro/db/persist/ProjectDao;

.field public purchaseDao:Lim/doit/pro/db/persist/PurchaseDao;

.field public subTaskDao:Lim/doit/pro/db/persist/SubTaskDao;

.field public tagDao:Lim/doit/pro/db/persist/TagDao;

.field public taskCommentDao:Lim/doit/pro/db/persist/TaskCommentDao;

.field public taskContextDao:Lim/doit/pro/db/persist/TaskContextDao;

.field public taskDao:Lim/doit/pro/db/persist/TaskDao;

.field public taskReviewInfoDao:Lim/doit/pro/db/persist/TaskReviewInfoDao;

.field public userDao:Lim/doit/pro/db/persist/UserDao;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lim/doit/pro/db/Persist;->mContext:Landroid/content/Context;

    .line 68
    invoke-virtual {p0}, Lim/doit/pro/db/Persist;->db()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 69
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Lim/doit/pro/db/persist/UserDao;

    invoke-direct {v1, v0}, Lim/doit/pro/db/persist/UserDao;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v1, p0, Lim/doit/pro/db/Persist;->userDao:Lim/doit/pro/db/persist/UserDao;

    .line 70
    new-instance v1, Lim/doit/pro/db/persist/BoxDao;

    invoke-direct {v1, v0}, Lim/doit/pro/db/persist/BoxDao;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v1, p0, Lim/doit/pro/db/Persist;->boxDao:Lim/doit/pro/db/persist/BoxDao;

    .line 71
    new-instance v1, Lim/doit/pro/db/persist/FilterDao;

    invoke-direct {v1, v0}, Lim/doit/pro/db/persist/FilterDao;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v1, p0, Lim/doit/pro/db/Persist;->filterDao:Lim/doit/pro/db/persist/FilterDao;

    .line 72
    new-instance v1, Lim/doit/pro/db/persist/TaskContextDao;

    invoke-direct {v1, v0}, Lim/doit/pro/db/persist/TaskContextDao;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v1, p0, Lim/doit/pro/db/Persist;->taskContextDao:Lim/doit/pro/db/persist/TaskContextDao;

    .line 73
    new-instance v1, Lim/doit/pro/db/persist/GoalDao;

    invoke-direct {v1, v0}, Lim/doit/pro/db/persist/GoalDao;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v1, p0, Lim/doit/pro/db/Persist;->goalDao:Lim/doit/pro/db/persist/GoalDao;

    .line 74
    new-instance v1, Lim/doit/pro/db/persist/ProjectDao;

    invoke-direct {v1, v0}, Lim/doit/pro/db/persist/ProjectDao;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v1, p0, Lim/doit/pro/db/Persist;->projectDao:Lim/doit/pro/db/persist/ProjectDao;

    .line 75
    new-instance v1, Lim/doit/pro/db/persist/ContactDao;

    invoke-direct {v1, v0}, Lim/doit/pro/db/persist/ContactDao;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v1, p0, Lim/doit/pro/db/Persist;->contactDao:Lim/doit/pro/db/persist/ContactDao;

    .line 76
    new-instance v1, Lim/doit/pro/db/persist/TaskCommentDao;

    invoke-direct {v1, v0}, Lim/doit/pro/db/persist/TaskCommentDao;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v1, p0, Lim/doit/pro/db/Persist;->taskCommentDao:Lim/doit/pro/db/persist/TaskCommentDao;

    .line 77
    new-instance v1, Lim/doit/pro/db/persist/SubTaskDao;

    invoke-direct {v1, v0}, Lim/doit/pro/db/persist/SubTaskDao;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v1, p0, Lim/doit/pro/db/Persist;->subTaskDao:Lim/doit/pro/db/persist/SubTaskDao;

    .line 78
    new-instance v1, Lim/doit/pro/db/persist/OpLogDao;

    invoke-direct {v1, v0}, Lim/doit/pro/db/persist/OpLogDao;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v1, p0, Lim/doit/pro/db/Persist;->opLogDao:Lim/doit/pro/db/persist/OpLogDao;

    .line 79
    new-instance v1, Lim/doit/pro/db/persist/TaskDao;

    invoke-direct {v1, v0}, Lim/doit/pro/db/persist/TaskDao;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v1, p0, Lim/doit/pro/db/Persist;->taskDao:Lim/doit/pro/db/persist/TaskDao;

    .line 80
    new-instance v1, Lim/doit/pro/db/persist/TagDao;

    invoke-direct {v1, v0}, Lim/doit/pro/db/persist/TagDao;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v1, p0, Lim/doit/pro/db/Persist;->tagDao:Lim/doit/pro/db/persist/TagDao;

    .line 81
    new-instance v1, Lim/doit/pro/db/persist/DailyReviewDao;

    invoke-direct {v1, v0}, Lim/doit/pro/db/persist/DailyReviewDao;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v1, p0, Lim/doit/pro/db/Persist;->dailyReviewDao:Lim/doit/pro/db/persist/DailyReviewDao;

    .line 82
    new-instance v1, Lim/doit/pro/db/persist/TaskReviewInfoDao;

    invoke-direct {v1, v0}, Lim/doit/pro/db/persist/TaskReviewInfoDao;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v1, p0, Lim/doit/pro/db/Persist;->taskReviewInfoDao:Lim/doit/pro/db/persist/TaskReviewInfoDao;

    .line 83
    new-instance v1, Lim/doit/pro/db/persist/NoticeDao;

    invoke-direct {v1, v0}, Lim/doit/pro/db/persist/NoticeDao;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v1, p0, Lim/doit/pro/db/Persist;->noticeDao:Lim/doit/pro/db/persist/NoticeDao;

    .line 84
    new-instance v1, Lim/doit/pro/db/persist/AgentErrorDao;

    invoke-direct {v1, v0}, Lim/doit/pro/db/persist/AgentErrorDao;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v1, p0, Lim/doit/pro/db/Persist;->agentErrorDao:Lim/doit/pro/db/persist/AgentErrorDao;

    .line 85
    new-instance v1, Lim/doit/pro/db/persist/LastSyncLogDao;

    invoke-direct {v1, v0}, Lim/doit/pro/db/persist/LastSyncLogDao;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v1, p0, Lim/doit/pro/db/Persist;->lastSyncLogDao:Lim/doit/pro/db/persist/LastSyncLogDao;

    .line 86
    new-instance v1, Lim/doit/pro/db/persist/PurchaseDao;

    invoke-direct {v1, v0}, Lim/doit/pro/db/persist/PurchaseDao;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v1, p0, Lim/doit/pro/db/Persist;->purchaseDao:Lim/doit/pro/db/persist/PurchaseDao;

    .line 87
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 98
    invoke-virtual {p0}, Lim/doit/pro/db/Persist;->db()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "users"

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 99
    invoke-virtual {p0}, Lim/doit/pro/db/Persist;->db()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "boxes"

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 100
    invoke-virtual {p0}, Lim/doit/pro/db/Persist;->db()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "filters"

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 101
    invoke-virtual {p0}, Lim/doit/pro/db/Persist;->db()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "task_contexts"

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 102
    invoke-virtual {p0}, Lim/doit/pro/db/Persist;->db()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "goals"

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 103
    invoke-virtual {p0}, Lim/doit/pro/db/Persist;->db()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "projects"

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 104
    invoke-virtual {p0}, Lim/doit/pro/db/Persist;->db()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "contacts"

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 105
    invoke-virtual {p0}, Lim/doit/pro/db/Persist;->db()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "task_comments"

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 106
    invoke-virtual {p0}, Lim/doit/pro/db/Persist;->db()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "subtasks"

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 107
    invoke-virtual {p0}, Lim/doit/pro/db/Persist;->db()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "op_logs"

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 108
    invoke-virtual {p0}, Lim/doit/pro/db/Persist;->db()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "tasks"

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 109
    invoke-virtual {p0}, Lim/doit/pro/db/Persist;->db()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "tags"

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 110
    invoke-virtual {p0}, Lim/doit/pro/db/Persist;->db()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "daily_review"

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 111
    invoke-virtual {p0}, Lim/doit/pro/db/Persist;->db()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "task_review_info"

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 112
    invoke-virtual {p0}, Lim/doit/pro/db/Persist;->db()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "agent_errors"

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 113
    invoke-virtual {p0}, Lim/doit/pro/db/Persist;->db()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "notices"

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 114
    invoke-virtual {p0}, Lim/doit/pro/db/Persist;->db()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "last_sync_logs"

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 115
    invoke-virtual {p0}, Lim/doit/pro/db/Persist;->db()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "purchases"

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 116
    return-void
.end method

.method public db()Landroid/database/sqlite/SQLiteDatabase;
    .locals 2

    .prologue
    .line 90
    iget-object v1, p0, Lim/doit/pro/db/Persist;->db:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v1, :cond_0

    .line 91
    new-instance v0, Lim/doit/pro/db/DSQLiteOpenHelper;

    iget-object v1, p0, Lim/doit/pro/db/Persist;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lim/doit/pro/db/DSQLiteOpenHelper;-><init>(Landroid/content/Context;)V

    .line 92
    .local v0, "helper":Lim/doit/pro/db/DSQLiteOpenHelper;
    invoke-virtual {v0}, Lim/doit/pro/db/DSQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Lim/doit/pro/db/Persist;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 94
    .end local v0    # "helper":Lim/doit/pro/db/DSQLiteOpenHelper;
    :cond_0
    iget-object v1, p0, Lim/doit/pro/db/Persist;->db:Landroid/database/sqlite/SQLiteDatabase;

    return-object v1
.end method
