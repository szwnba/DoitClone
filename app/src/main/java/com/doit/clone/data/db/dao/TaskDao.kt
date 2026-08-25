package com.doit.clone.data.db.dao

import androidx.room.Dao
import androidx.room.Insert
import androidx.room.OnConflictStrategy
import androidx.room.Query
import androidx.room.Update
import com.doit.clone.data.db.entity.TaskEntity
import kotlinx.coroutines.flow.Flow

/**
 * 箱子查询语义 1:1 还原原版 TaskDaoHelper：
 * notDead = deleted=0 AND hidden=0 AND archived=0 AND trashed=0 AND completed=0
 */
@Dao
interface TaskDao {

    private companion object {
        const val ND = "deleted = 0 AND hidden = 0 AND archived = 0 AND trashed = 0 AND completed = 0"
        const val NDT = "deleted = 0 AND hidden = 0 AND archived = 0 AND trashed = 0"
    }

    @Query("SELECT * FROM tasks WHERE $ND AND attribute = 'INBOX' ORDER BY pos ASC, created DESC")
    fun inbox(): Flow<List<TaskEntity>>

    @Query("SELECT * FROM tasks WHERE $ND AND repeater IS NULL AND attribute = 'PLAN' AND startAt <= :endOfToday ORDER BY startAt ASC, pos ASC")
    fun today(endOfToday: Long): Flow<List<TaskEntity>>

    @Query("SELECT * FROM tasks WHERE $ND AND repeater IS NULL AND attribute = 'PLAN' AND startAt >= :startOfTomorrow AND startAt <= :endOfTomorrow ORDER BY startAt ASC")
    fun tomorrow(startOfTomorrow: Long, endOfTomorrow: Long): Flow<List<TaskEntity>>

    @Query("SELECT * FROM tasks WHERE $ND AND attribute = 'PLAN' AND (startAt >= :afterTomorrowStart OR repeater IS NOT NULL) ORDER BY startAt ASC")
    fun scheduled(afterTomorrowStart: Long): Flow<List<TaskEntity>>

    @Query("SELECT * FROM tasks WHERE $ND AND attribute = 'NEXT' ORDER BY pos ASC, created DESC")
    fun next(): Flow<List<TaskEntity>>

    @Query("SELECT * FROM tasks WHERE $ND AND attribute = 'NOPLAN' ORDER BY pos ASC, created DESC")
    fun someday(): Flow<List<TaskEntity>>

    @Query("SELECT * FROM tasks WHERE $ND AND attribute = 'WAITING' ORDER BY endAt ASC, created DESC")
    fun waiting(): Flow<List<TaskEntity>>

    @Query("SELECT * FROM tasks WHERE $NDT AND completed = 1 ORDER BY completedAt DESC")
    fun completed(): Flow<List<TaskEntity>>

    @Query("SELECT * FROM tasks WHERE deleted = 0 AND hidden = 0 AND archived = 0 AND trashed = 1 ORDER BY trashedAt DESC")
    fun trash(): Flow<List<TaskEntity>>

    @Query("SELECT * FROM tasks WHERE $ND AND projectUuid = :uuid ORDER BY startAt ASC, pos ASC")
    fun byProject(uuid: String): Flow<List<TaskEntity>>

    @Query("SELECT * FROM tasks WHERE $ND AND goalUuid = :uuid ORDER BY startAt ASC, pos ASC")
    fun byGoal(uuid: String): Flow<List<TaskEntity>>

    @Query("SELECT * FROM tasks WHERE $ND AND contextUuid = :uuid ORDER BY startAt ASC, pos ASC")
    fun byContext(uuid: String): Flow<List<TaskEntity>>

    @Query("""SELECT * FROM tasks WHERE $ND
        AND (:attribute IS NULL OR attribute = :attribute)
        AND (:priority IS NULL OR priority = :priority)
        AND (:projectUuid IS NULL OR projectUuid = :projectUuid)
        AND (:goalUuid IS NULL OR goalUuid = :goalUuid)
        AND (:contextUuid IS NULL OR contextUuid = :contextUuid)
        AND (:tag IS NULL OR tags LIKE '%' || :tag || '%')
        ORDER BY startAt ASC, pos ASC""")
    fun filtered(
        attribute: String?,
        priority: Int?,
        projectUuid: String?,
        goalUuid: String?,
        contextUuid: String?,
        tag: String?
    ): Flow<List<TaskEntity>>

    @Query("SELECT * FROM tasks WHERE trashed = 0 AND (title LIKE '%' || :q || '%' OR notes LIKE '%' || :q || '%') ORDER BY updated DESC LIMIT 200")
    fun search(q: String): Flow<List<TaskEntity>>

    /** 每日计划候选：未安排的收件箱/下一步/将来也许 + 已逾期未完成的计划任务 */
    @Query("""SELECT * FROM tasks WHERE $ND
        AND (attribute IN ('INBOX','NEXT','NOPLAN') OR (attribute = 'PLAN' AND startAt < :startOfToday))
        ORDER BY attribute ASC, startAt ASC, created DESC""")
    fun dailyPlanCandidates(startOfToday: Long): Flow<List<TaskEntity>>

    @Query("SELECT * FROM tasks WHERE trashed = 0 AND completed = 1 AND completedAt >= :dayStart AND completedAt <= :dayEnd ORDER BY completedAt DESC")
    fun completedBetween(dayStart: Long, dayEnd: Long): Flow<List<TaskEntity>>

    @Query("SELECT * FROM tasks WHERE $ND AND endAt IS NOT NULL AND endAt > 0 AND endAt <= :endOfToday ORDER BY endAt ASC")
    fun overdue(endOfToday: Long): Flow<List<TaskEntity>>

    // ===== 抽屉徽章计数 =====

    @Query("SELECT COUNT(*) FROM tasks WHERE $ND AND attribute = 'INBOX'")
    fun countInbox(): Flow<Int>

    @Query("SELECT COUNT(*) FROM tasks WHERE $ND AND repeater IS NULL AND attribute = 'PLAN' AND startAt <= :endOfToday")
    fun countToday(endOfToday: Long): Flow<Int>

    @Query("SELECT COUNT(*) FROM tasks WHERE $ND AND repeater IS NULL AND attribute = 'PLAN' AND startAt <= :endOfToday AND endAt IS NOT NULL AND endAt > 0 AND endAt <= :endOfToday")
    fun countTodayOverdue(endOfToday: Long): Flow<Int>

    @Query("SELECT COUNT(*) FROM tasks WHERE $ND AND attribute = 'WAITING'")
    fun countWaiting(): Flow<Int>

    @Query("SELECT COUNT(*) FROM tasks WHERE $ND AND attribute = 'WAITING' AND endAt IS NOT NULL AND endAt > 0 AND endAt <= :endOfToday")
    fun countWaitingOverdue(endOfToday: Long): Flow<Int>

    @Query("SELECT COUNT(*) FROM tasks WHERE $ND AND completed = 1")
    fun countCompleted(): Flow<Int>

    @Query("SELECT COUNT(*) FROM tasks WHERE deleted = 0 AND hidden = 0 AND archived = 0 AND trashed = 1")
    fun countTrash(): Flow<Int>

    @Query("SELECT COUNT(*) FROM tasks WHERE $ND AND projectUuid = :uuid")
    fun countByProject(uuid: String): Flow<Int>

    @Query("SELECT COUNT(*) FROM tasks WHERE $ND AND goalUuid = :uuid")
    fun countByGoal(uuid: String): Flow<Int>

    @Query("SELECT COUNT(*) FROM tasks WHERE $ND AND contextUuid = :uuid")
    fun countByContext(uuid: String): Flow<Int>

    // ===== 写操作 =====

    @Query("SELECT * FROM tasks WHERE uuid = :uuid LIMIT 1")
    suspend fun get(uuid: String): TaskEntity?

    @Query("SELECT * FROM tasks WHERE trashed = 0 AND completed = 0 AND reminders IS NOT NULL AND reminders != ''")
    suspend fun allWithReminders(): List<TaskEntity>

    @Insert(onConflict = OnConflictStrategy.REPLACE)
    suspend fun insert(task: TaskEntity)

    @Update
    suspend fun update(task: TaskEntity)

    @Query("DELETE FROM tasks WHERE uuid = :uuid")
    suspend fun deleteForever(uuid: String)

    @Query("DELETE FROM tasks WHERE trashed = 1")
    suspend fun emptyTrash()

    @Query("UPDATE tasks SET pos = :pos, updated = :now WHERE uuid = :uuid")
    suspend fun updatePos(uuid: String, pos: Int, now: Long)

    @Query("SELECT COALESCE(MAX(pos), 0) FROM tasks")
    suspend fun maxPos(): Int
}
