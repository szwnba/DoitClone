package com.doit.clone.data.db.dao

import androidx.room.Dao
import androidx.room.Insert
import androidx.room.OnConflictStrategy
import androidx.room.Query
import androidx.room.Update
import com.doit.clone.data.db.entity.ContextEntity
import com.doit.clone.data.db.entity.FilterEntity
import com.doit.clone.data.db.entity.GoalEntity
import com.doit.clone.data.db.entity.ProjectEntity
import com.doit.clone.data.db.entity.SubTaskEntity
import kotlinx.coroutines.flow.Flow

@Dao
interface SubTaskDao {
    @Query("SELECT * FROM sub_tasks WHERE taskUuid = :taskUuid ORDER BY pos ASC")
    fun byTask(taskUuid: String): Flow<List<SubTaskEntity>>

    @Query("SELECT * FROM sub_tasks WHERE taskUuid = :taskUuid ORDER BY pos ASC")
    suspend fun byTaskOnce(taskUuid: String): List<SubTaskEntity>

    @Insert(onConflict = OnConflictStrategy.REPLACE)
    suspend fun insert(sub: SubTaskEntity)

    @Update
    suspend fun update(sub: SubTaskEntity)

    @Query("DELETE FROM sub_tasks WHERE uuid = :uuid")
    suspend fun delete(uuid: String)

    @Query("DELETE FROM sub_tasks WHERE taskUuid = :taskUuid")
    suspend fun deleteByTask(taskUuid: String)

    @Query("SELECT COALESCE(MAX(pos), 0) FROM sub_tasks WHERE taskUuid = :taskUuid")
    suspend fun maxPos(taskUuid: String): Int
}

@Dao
interface ProjectDao {
    @Query("SELECT * FROM projects WHERE deleted = 0 ORDER BY created ASC")
    fun all(): Flow<List<ProjectEntity>>

    @Query("SELECT * FROM projects WHERE uuid = :uuid LIMIT 1")
    suspend fun get(uuid: String): ProjectEntity?

    @Insert(onConflict = OnConflictStrategy.REPLACE)
    suspend fun insert(project: ProjectEntity)

    @Update
    suspend fun update(project: ProjectEntity)

    @Query("UPDATE projects SET deleted = 1 WHERE uuid = :uuid")
    suspend fun delete(uuid: String)
}

@Dao
interface GoalDao {
    @Query("SELECT * FROM goals WHERE deleted = 0 ORDER BY created ASC")
    fun all(): Flow<List<GoalEntity>>

    @Query("SELECT * FROM goals WHERE uuid = :uuid LIMIT 1")
    suspend fun get(uuid: String): GoalEntity?

    @Insert(onConflict = OnConflictStrategy.REPLACE)
    suspend fun insert(goal: GoalEntity)

    @Update
    suspend fun update(goal: GoalEntity)

    @Query("UPDATE goals SET deleted = 1 WHERE uuid = :uuid")
    suspend fun delete(uuid: String)
}

@Dao
interface ContextDao {
    @Query("SELECT * FROM task_contexts WHERE deleted = 0 ORDER BY created ASC")
    fun all(): Flow<List<ContextEntity>>

    @Query("SELECT * FROM task_contexts WHERE uuid = :uuid LIMIT 1")
    suspend fun get(uuid: String): ContextEntity?

    @Insert(onConflict = OnConflictStrategy.REPLACE)
    suspend fun insert(context: ContextEntity)

    @Update
    suspend fun update(context: ContextEntity)

    @Query("UPDATE task_contexts SET deleted = 1 WHERE uuid = :uuid")
    suspend fun delete(uuid: String)
}

@Dao
interface FilterDao {
    @Query("SELECT * FROM filters ORDER BY rowid ASC")
    fun all(): Flow<List<FilterEntity>>

    @Query("SELECT * FROM filters WHERE uuid = :uuid LIMIT 1")
    suspend fun get(uuid: String): FilterEntity?

    @Insert(onConflict = OnConflictStrategy.REPLACE)
    suspend fun insert(filter: FilterEntity)

    @Update
    suspend fun update(filter: FilterEntity)

    @Query("DELETE FROM filters WHERE uuid = :uuid")
    suspend fun delete(uuid: String)
}
