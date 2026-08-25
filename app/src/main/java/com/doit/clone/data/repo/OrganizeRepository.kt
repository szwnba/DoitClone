package com.doit.clone.data.repo

import com.doit.clone.data.db.dao.ContextDao
import com.doit.clone.data.db.dao.FilterDao
import com.doit.clone.data.db.dao.GoalDao
import com.doit.clone.data.db.dao.ProjectDao
import com.doit.clone.data.db.dao.TaskDao
import com.doit.clone.data.db.entity.ContextEntity
import com.doit.clone.data.db.entity.FilterEntity
import com.doit.clone.data.db.entity.GoalEntity
import com.doit.clone.data.db.entity.ProjectEntity
import kotlinx.coroutines.flow.Flow
import java.util.UUID

/** 项目 / 目标 / 情境 / 过滤器 的统一仓库 */
class OrganizeRepository(
    private val projectDao: ProjectDao,
    private val goalDao: GoalDao,
    private val contextDao: ContextDao,
    private val filterDao: FilterDao,
    private val taskDao: TaskDao
) {

    enum class Kind { PROJECT, GOAL, CONTEXT, FILTER }

    fun projects(): Flow<List<ProjectEntity>> = projectDao.all()
    fun goals(): Flow<List<GoalEntity>> = goalDao.all()
    fun contexts(): Flow<List<ContextEntity>> = contextDao.all()
    fun filters(): Flow<List<FilterEntity>> = filterDao.all()

    suspend fun projectName(uuid: String?) = uuid?.let { projectDao.get(it)?.name }
    suspend fun goalName(uuid: String?) = uuid?.let { goalDao.get(it)?.name }
    suspend fun contextName(uuid: String?) = uuid?.let { contextDao.get(it)?.name }

    fun countByProject(uuid: String) = taskDao.countByProject(uuid)
    fun countByGoal(uuid: String) = taskDao.countByGoal(uuid)
    fun countByContext(uuid: String) = taskDao.countByContext(uuid)

    suspend fun create(kind: Kind, name: String) {
        if (name.isBlank()) return
        val uuid = UUID.randomUUID().toString()
        when (kind) {
            Kind.PROJECT -> projectDao.insert(ProjectEntity(uuid, name.trim()))
            Kind.GOAL -> goalDao.insert(GoalEntity(uuid, name.trim()))
            Kind.CONTEXT -> contextDao.insert(ContextEntity(uuid, name.trim()))
            Kind.FILTER -> filterDao.insert(FilterEntity(uuid, name.trim()))
        }
    }

    suspend fun rename(kind: Kind, uuid: String, name: String) {
        if (name.isBlank()) return
        when (kind) {
            Kind.PROJECT -> projectDao.get(uuid)?.let { projectDao.update(it.copy(name = name.trim())) }
            Kind.GOAL -> goalDao.get(uuid)?.let { goalDao.update(it.copy(name = name.trim())) }
            Kind.CONTEXT -> contextDao.get(uuid)?.let { contextDao.update(it.copy(name = name.trim())) }
            Kind.FILTER -> filterDao.get(uuid)?.let { filterDao.update(it.copy(name = name.trim())) }
        }
    }

    suspend fun toggleFrozen(uuid: String) {
        projectDao.get(uuid)?.let { projectDao.update(it.copy(frozen = !it.frozen)) }
    }

    suspend fun delete(kind: Kind, uuid: String) {
        when (kind) {
            Kind.PROJECT -> projectDao.delete(uuid)
            Kind.GOAL -> goalDao.delete(uuid)
            Kind.CONTEXT -> contextDao.delete(uuid)
            Kind.FILTER -> filterDao.delete(uuid)
        }
    }

    suspend fun getFilter(uuid: String) = filterDao.get(uuid)

    suspend fun saveFilter(filter: FilterEntity) = filterDao.update(filter)

    suspend fun createFilter(name: String, attribute: String?, priority: Int?, projectUuid: String?, goalUuid: String?, contextUuid: String?, tag: String?) {
        if (name.isBlank()) return
        filterDao.insert(
            FilterEntity(
                uuid = UUID.randomUUID().toString(),
                name = name.trim(),
                attribute = attribute,
                priority = priority,
                projectUuid = projectUuid,
                goalUuid = goalUuid,
                contextUuid = contextUuid,
                tag = tag?.takeIf { it.isNotBlank() }
            )
        )
    }
}
