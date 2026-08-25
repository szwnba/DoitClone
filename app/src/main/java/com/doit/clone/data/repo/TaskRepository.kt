package com.doit.clone.data.repo

import com.doit.clone.data.db.dao.SubTaskDao
import com.doit.clone.data.db.dao.TaskDao
import com.doit.clone.data.db.entity.SubTaskEntity
import com.doit.clone.data.db.entity.TaskEntity
import com.doit.clone.model.Attribute
import com.doit.clone.model.BoxType
import com.doit.clone.repeat.Repeater
import com.doit.clone.util.DateUtils
import kotlinx.coroutines.flow.Flow
import java.util.Calendar
import java.util.UUID

/**
 * 任务仓库：箱子的读写语义都集中在这里（含重复任务完成时的实例分裂）。
 */
class TaskRepository(
    private val taskDao: TaskDao,
    private val subTaskDao: SubTaskDao
) {

    // ===== 读 =====

    fun observeBox(box: BoxType): Flow<List<TaskEntity>> = with(DateUtils) {
        when (box) {
            BoxType.INBOX -> taskDao.inbox()
            BoxType.TODAY -> taskDao.today(endOfToday())
            BoxType.TOMORROW -> taskDao.tomorrow(startOfTomorrow(), endOfTomorrow())
            BoxType.SCHEDULED -> taskDao.scheduled(startOfAfterTomorrow())
            BoxType.NEXT -> taskDao.next()
            BoxType.SOMEDAY -> taskDao.someday()
            BoxType.WAITING -> taskDao.waiting()
            BoxType.COMPLETED -> taskDao.completed()
            BoxType.TRASH -> taskDao.trash()
            else -> taskDao.inbox()
        }
    }

    fun observeByProject(uuid: String) = taskDao.byProject(uuid)
    fun observeByGoal(uuid: String) = taskDao.byGoal(uuid)
    fun observeByContext(uuid: String) = taskDao.byContext(uuid)

    fun observeFilter(
        attribute: String?, priority: Int?, projectUuid: String?,
        goalUuid: String?, contextUuid: String?, tag: String?
    ) = taskDao.filtered(attribute, priority, projectUuid, goalUuid, contextUuid, tag)

    fun search(q: String) = taskDao.search(q)
    fun dailyPlanCandidates() = taskDao.dailyPlanCandidates(DateUtils.startOfToday())
    fun todayCompleted() = taskDao.completedBetween(DateUtils.startOfToday(), DateUtils.endOfToday())
    fun overdue() = taskDao.overdue(DateUtils.endOfToday())

    suspend fun get(uuid: String): TaskEntity? = taskDao.get(uuid)
    suspend fun allWithReminders(): List<TaskEntity> = taskDao.allWithReminders()
    fun subtasks(taskUuid: String): Flow<List<SubTaskEntity>> = subTaskDao.byTask(taskUuid)

    // ===== 抽屉徽章 =====

    data class BoxCounts(
        val inbox: Int = 0, val today: Int = 0, val todayOverdue: Int = 0,
        val waiting: Int = 0, val waitingOverdue: Int = 0,
        val completed: Int = 0, val trash: Int = 0
    )

    fun observeCounts(): Flow<BoxCounts> = kotlinx.coroutines.flow.combine(
        taskDao.countInbox(),
        taskDao.countToday(DateUtils.endOfToday()),
        taskDao.countTodayOverdue(DateUtils.endOfToday()),
        taskDao.countWaiting(),
        taskDao.countWaitingOverdue(DateUtils.endOfToday()),
        taskDao.countCompleted(),
        taskDao.countTrash()
    ) { values -> BoxCounts(values[0], values[1], values[2], values[3], values[4], values[5], values[6]) }

    // ===== 写 =====

    suspend fun insert(task: TaskEntity) = taskDao.insert(withPos(task))

    private suspend fun withPos(task: TaskEntity): TaskEntity =
        if (task.pos == 0) task.copy(pos = taskDao.maxPos() + 1) else task

    suspend fun update(task: TaskEntity) = taskDao.update(task.copy(updated = System.currentTimeMillis()))

    /**
     * 完成/取消完成。重复任务完成时按规则生成下一实例（repeatNo+1），
     * 当前实例转为完成记录——还原原版语义。
     */
    suspend fun toggleComplete(uuid: String) {
        val task = taskDao.get(uuid) ?: return
        if (task.completed) {
            taskDao.update(task.copy(completed = false, completedAt = null, updated = System.currentTimeMillis()))
            return
        }
        Repeater.deserialize(task.repeater)?.let { repeater ->
            val next = nextInstance(task, repeater)
            if (next != null) taskDao.insert(next)
        }
        taskDao.update(
            task.copy(completed = true, completedAt = System.currentTimeMillis(), updated = System.currentTimeMillis())
        )
    }

    private fun nextInstance(task: TaskEntity, repeater: Repeater): TaskEntity? {
        val anchorMillis = task.startAt ?: DateUtils.startOfToday()
        var next = repeater.nextAfter(DateUtils.cal(anchorMillis))
        var guard = 0
        while (next.timeInMillis <= System.currentTimeMillis() && guard++ < 400) {
            next = repeater.nextAfter(next)
        }
        if (next.timeInMillis <= System.currentTimeMillis()) return null
        val duration = task.endAt?.let { end -> task.startAt?.let { start -> end - start } }
        return task.copy(
            uuid = UUID.randomUUID().toString(),
            repeatNo = (task.repeatNo ?: 0) + 1,
            completed = false,
            completedAt = null,
            trashed = false,
            startAt = next.timeInMillis,
            endAt = duration?.let { next.timeInMillis + it },
            created = System.currentTimeMillis(),
            updated = System.currentTimeMillis()
        )
    }

    suspend fun trash(uuid: String) {
        val task = taskDao.get(uuid) ?: return
        taskDao.update(task.copy(trashed = true, trashedAt = System.currentTimeMillis(), updated = System.currentTimeMillis()))
    }

    suspend fun restore(uuid: String) {
        val task = taskDao.get(uuid) ?: return
        taskDao.update(task.copy(trashed = false, trashedAt = null, updated = System.currentTimeMillis()))
    }

    suspend fun deleteForever(uuid: String) {
        subTaskDao.deleteByTask(uuid)
        taskDao.deleteForever(uuid)
    }

    suspend fun emptyTrash() = taskDao.emptyTrash()

    /** 在箱子之间移动：按目标箱子推导 attribute 与日期（写侧语义）。 */
    suspend fun moveTo(uuid: String, box: BoxType) {
        val task = taskDao.get(uuid) ?: return
        val now = System.currentTimeMillis()
        val updated = when (box) {
            BoxType.INBOX -> task.copy(attribute = Attribute.INBOX.name, startAt = null, endAt = null, allDay = true)
            BoxType.TODAY -> task.copy(
                attribute = Attribute.PLAN.name,
                startAt = preserveTimeOr(DateUtils.startOfToday(), task)
            )
            BoxType.TOMORROW -> task.copy(
                attribute = Attribute.PLAN.name,
                startAt = preserveTimeOr(DateUtils.startOfTomorrow(), task)
            )
            BoxType.NEXT -> task.copy(attribute = Attribute.NEXT.name, startAt = null, endAt = null)
            BoxType.SCHEDULED -> task.copy(
                attribute = Attribute.PLAN.name,
                startAt = preserveTimeOr(DateUtils.startOfAfterTomorrow(), task)
            )
            BoxType.SOMEDAY -> task.copy(attribute = Attribute.NOPLAN.name, startAt = null, endAt = null)
            BoxType.WAITING -> task.copy(attribute = Attribute.WAITING.name)
            else -> return
        }
        taskDao.update(updated.copy(updated = now))
    }

    /** 迁移时保留原时间点（若原来是带时间的任务） */
    private fun preserveTimeOr(dayStart: Long, task: TaskEntity): Long {
        if (task.startAt != null && task.allDay.not()) {
            val old = DateUtils.cal(task.startAt)
            return DateUtils.cal(dayStart).apply {
                set(Calendar.HOUR_OF_DAY, old.get(Calendar.HOUR_OF_DAY))
                set(Calendar.MINUTE, old.get(Calendar.MINUTE))
            }.timeInMillis
        }
        return dayStart
    }

    /** 拖拽排序：按新顺序重写 pos */
    suspend fun reorder(orderedUuids: List<String>) {
        val now = System.currentTimeMillis()
        orderedUuids.forEachIndexed { index, uuid -> taskDao.updatePos(uuid, index + 1, now) }
    }

    // ===== 子任务 =====

    suspend fun addSubtask(taskUuid: String, title: String) {
        if (title.isBlank()) return
        subTaskDao.insert(
            SubTaskEntity(
                uuid = UUID.randomUUID().toString(),
                taskUuid = taskUuid,
                title = title.trim(),
                pos = subTaskDao.maxPos(taskUuid) + 1
            )
        )
    }

    suspend fun updateSubtask(sub: SubTaskEntity) = subTaskDao.update(sub)
    suspend fun deleteSubtask(uuid: String) = subTaskDao.delete(uuid)

    companion object {
        fun newTask(
            box: BoxType,
            title: String = "",
            attribute: Attribute = defaultAttribute(box),
            startAt: Long? = defaultStart(box)
        ): TaskEntity = TaskEntity(
            uuid = UUID.randomUUID().toString(),
            title = title,
            attribute = attribute.name,
            startAt = startAt,
            allDay = true
        )

        fun defaultAttribute(box: BoxType): Attribute = when (box) {
            BoxType.INBOX -> Attribute.INBOX
            BoxType.TODAY, BoxType.TOMORROW, BoxType.SCHEDULED -> Attribute.PLAN
            BoxType.NEXT -> Attribute.NEXT
            BoxType.SOMEDAY -> Attribute.NOPLAN
            else -> Attribute.INBOX
        }

        fun defaultStart(box: BoxType): Long? = when (box) {
            BoxType.TODAY -> DateUtils.startOfToday()
            BoxType.TOMORROW -> DateUtils.startOfTomorrow()
            else -> null
        }
    }
}
