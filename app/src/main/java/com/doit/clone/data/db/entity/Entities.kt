package com.doit.clone.data.db.entity

import androidx.room.Entity
import androidx.room.Index
import androidx.room.PrimaryKey

/**
 * 核心任务表。字段还原自原版 tasks 表（33 列），去掉纯服务端字段
 * （sender/assignment/medias 等），保留本地语义完整的部分。
 */
@Entity(tableName = "tasks", indices = [Index("attribute"), Index("startAt"), Index("projectUuid"), Index("contextUuid"), Index("goalUuid")])
data class TaskEntity(
    @PrimaryKey val uuid: String,
    val repeatNo: Int? = null,
    val deleted: Boolean = false,
    val hidden: Boolean = false,
    val archived: Boolean = false,
    val trashed: Boolean = false,
    val completed: Boolean = false,
    val title: String = "",
    val notes: String? = null,
    val attribute: String = "INBOX",
    val allDay: Boolean = true,
    val startAt: Long? = null,
    val endAt: Long? = null,
    val priority: Int = 0,
    val pos: Int = 0,
    val projectUuid: String? = null,
    val goalUuid: String? = null,
    val contextUuid: String? = null,
    val tags: String? = null,
    val repeater: String? = null,
    val reminders: String? = null,
    val estimatedTime: Int? = null,
    val spentTime: Int? = null,
    val completedAt: Long? = null,
    val trashedAt: Long? = null,
    val created: Long = System.currentTimeMillis(),
    val updated: Long = System.currentTimeMillis()
)

@Entity(tableName = "sub_tasks", indices = [Index("taskUuid")])
data class SubTaskEntity(
    @PrimaryKey val uuid: String,
    val taskUuid: String,
    val title: String,
    val completed: Boolean = false,
    val pos: Int = 0
)

@Entity(tableName = "projects")
data class ProjectEntity(
    @PrimaryKey val uuid: String,
    val name: String,
    val frozen: Boolean = false,
    val deleted: Boolean = false,
    val created: Long = System.currentTimeMillis()
)

@Entity(tableName = "goals")
data class GoalEntity(
    @PrimaryKey val uuid: String,
    val name: String,
    val deleted: Boolean = false,
    val created: Long = System.currentTimeMillis()
)

@Entity(tableName = "task_contexts")
data class ContextEntity(
    @PrimaryKey val uuid: String,
    val name: String,
    val deleted: Boolean = false,
    val created: Long = System.currentTimeMillis()
)

/** 过滤器：简化版持久化（原版是完整 JSON，本地版直接落列） */
@Entity(tableName = "filters")
data class FilterEntity(
    @PrimaryKey val uuid: String,
    val name: String,
    val attribute: String? = null,
    val priority: Int? = null,
    val projectUuid: String? = null,
    val goalUuid: String? = null,
    val contextUuid: String? = null,
    val tag: String? = null
)
