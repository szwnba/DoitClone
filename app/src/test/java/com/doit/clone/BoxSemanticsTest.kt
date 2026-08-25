package com.doit.clone

import android.content.Context
import androidx.room.Room
import androidx.test.core.app.ApplicationProvider
import com.doit.clone.data.db.DoitDatabase
import com.doit.clone.data.db.entity.TaskEntity
import com.doit.clone.data.repo.TaskRepository
import com.doit.clone.model.Attribute
import com.doit.clone.util.DateUtils
import kotlinx.coroutines.flow.first
import kotlinx.coroutines.test.runTest
import org.junit.After
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Before
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner
import java.util.UUID

/**
 * 箱子语义集成测试：用内存数据库验证 DAO 查询与原版 TaskDaoHelper 语义一致。
 *
 * - 今日 = PLAN 且 startAt <= 今天末（含逾期、不含重复）
 * - 明日 = PLAN 且 startAt 在明天区间
 * - 日程 = PLAN 且 startAt >= 后天 或带重复规则
 * - 下一步/将来也许/等待/收件箱 = 按 attribute
 */
@RunWith(RobolectricTestRunner::class)
class BoxSemanticsTest {

    private lateinit var db: DoitDatabase
    private lateinit var repo: TaskRepository

    private val today = DateUtils.startOfToday()
    private val tomorrow = today + 86_400_000L
    private val afterTomorrow = today + 2 * 86_400_000L

    @Before
    fun setup() {
        val context = ApplicationProvider.getApplicationContext<Context>()
        db = Room.inMemoryDatabaseBuilder(context, DoitDatabase::class.java)
            .allowMainThreadQueries()
            .build()
        repo = TaskRepository(db.taskDao(), db.subTaskDao())
    }

    @After
    fun teardown() {
        db.close()
    }

    private fun task(
        title: String,
        attribute: Attribute,
        startAt: Long? = null,
        endAt: Long? = null,
        repeater: String? = null,
        completed: Boolean = false,
        trashed: Boolean = false,
        notes: String? = null
    ): TaskEntity = TaskEntity(
        uuid = UUID.randomUUID().toString(),
        title = title,
        attribute = attribute.name,
        startAt = startAt,
        endAt = endAt,
        repeater = repeater,
        completed = completed,
        trashed = trashed,
        notes = notes,
        completedAt = if (completed) System.currentTimeMillis() else null
    )

    private suspend fun seed(vararg tasks: TaskEntity) {
        tasks.forEach { repo.insert(it) }
    }

    @Test
    fun todayBox_includesOverdueAndToday_excludesRepeating() = runTest {
        seed(
            task("今天做", Attribute.PLAN, startAt = today + 3600_000L),
            task("三天前的逾期", Attribute.PLAN, startAt = today - 3 * 86_400_000L),
            task("明天的", Attribute.PLAN, startAt = tomorrow + 3600_000L),
            task("每日重复", Attribute.PLAN, startAt = today + 3600_000L, repeater = "d"),
            task("收件箱的", Attribute.INBOX)
        )
        val titles = repo.observeBox(com.doit.clone.model.BoxType.TODAY).first().map { it.title }
        assertEquals(setOf("今天做", "三天前的逾期"), titles.toSet())
    }

    @Test
    fun tomorrowBox_onlyTomorrowWindow() = runTest {
        seed(
            task("今天", Attribute.PLAN, startAt = today),
            task("明天", Attribute.PLAN, startAt = tomorrow + 3600_000L),
            task("后天", Attribute.PLAN, startAt = afterTomorrow + 3600_000L)
        )
        val titles = repo.observeBox(com.doit.clone.model.BoxType.TOMORROW).first().map { it.title }
        assertEquals(listOf("明天"), titles)
    }

    @Test
    fun scheduledBox_futureAndRepeating() = runTest {
        seed(
            task("今天的", Attribute.PLAN, startAt = today),
            task("后天起", Attribute.PLAN, startAt = afterTomorrow),
            task("每天重复", Attribute.PLAN, startAt = today, repeater = "d"),
            task("无日期计划", Attribute.PLAN)
        )
        val titles = repo.observeBox(com.doit.clone.model.BoxType.SCHEDULED).first().map { it.title }
        assertEquals(setOf("后天起", "每天重复"), titles.toSet())
    }

    @Test
    fun attributeBoxes_directMapping() = runTest {
        seed(
            task("收", Attribute.INBOX),
            task("下", Attribute.NEXT),
            task("将", Attribute.NOPLAN),
            task("等", Attribute.WAITING)
        )
        assertEquals(listOf("收"), repo.observeBox(com.doit.clone.model.BoxType.INBOX).first().map { it.title })
        assertEquals(listOf("下"), repo.observeBox(com.doit.clone.model.BoxType.NEXT).first().map { it.title })
        assertEquals(listOf("将"), repo.observeBox(com.doit.clone.model.BoxType.SOMEDAY).first().map { it.title })
        assertEquals(listOf("等"), repo.observeBox(com.doit.clone.model.BoxType.WAITING).first().map { it.title })
    }

    @Test
    fun completedAndTrashBoxes() = runTest {
        seed(
            task("完成的", Attribute.PLAN, completed = true),
            task("删除的", Attribute.INBOX, trashed = true),
            task("正常的", Attribute.INBOX)
        )
        assertEquals(listOf("完成的"), repo.observeBox(com.doit.clone.model.BoxType.COMPLETED).first().map { it.title })
        assertEquals(listOf("删除的"), repo.observeBox(com.doit.clone.model.BoxType.TRASH).first().map { it.title })
    }

    @Test
    fun toggleComplete_repeatingTaskSpawnsNextInstance() = runTest {
        val startAt = today + 9 * 3600_000L
        val repeating = task("每日站会", Attribute.PLAN, startAt = startAt, repeater = "d")
        repo.insert(repeating)

        repo.toggleComplete(repeating.uuid)

        val completed = repo.observeBox(com.doit.clone.model.BoxType.COMPLETED).first()
        assertEquals(listOf("每日站会"), completed.map { it.title })

        // 新实例：明天同时刻、repeatNo+1、未完成。带重复规则 → 按原版语义出现在日程箱
        val scheduled = repo.observeBox(com.doit.clone.model.BoxType.SCHEDULED).first()
        val spawned = scheduled.first { it.title == "每日站会" }
        assertFalse(spawned.completed)
        assertEquals(1, spawned.repeatNo)
        assertEquals(DateUtils.dayStart(tomorrow), DateUtils.dayStart(spawned.startAt!!))
        assertEquals("d", spawned.repeater)
    }

    @Test
    fun moveToToday_setsPlanAndTodayDate() = runTest {
        val someday = task("某天再说", Attribute.NOPLAN)
        repo.insert(someday)

        repo.moveTo(someday.uuid, com.doit.clone.model.BoxType.TODAY)

        val inToday = repo.observeBox(com.doit.clone.model.BoxType.TODAY).first()
        assertEquals(listOf("某天再说"), inToday.map { it.title })
        assertEquals(DateUtils.dayStart(today), DateUtils.dayStart(inToday.first().startAt!!))
    }

    @Test
    fun overdueCount_counting() = runTest {
        seed(
            task("逾期中", Attribute.PLAN, startAt = today - 86_400_000L, endAt = today - 3600_000L),
            task("未逾期", Attribute.PLAN, startAt = today, endAt = today + 2 * 86_400_000L)
        )
        val counts = repo.observeCounts().first()
        assertEquals(2, counts.today)
        assertEquals(1, counts.todayOverdue)
    }

    @Test
    fun subtasks_crud() = runTest {
        val parent = task("父任务", Attribute.INBOX)
        repo.insert(parent)
        repo.addSubtask(parent.uuid, "子任务1")
        repo.addSubtask(parent.uuid, "子任务2")

        val subs = repo.subtasks(parent.uuid).first()
        assertEquals(2, subs.size)
        assertEquals("子任务1", subs[0].title)

        repo.deleteSubtask(subs[0].uuid)
        assertEquals(1, repo.subtasks(parent.uuid).first().size)
    }

    @Test
    fun search_matchesTitleAndNotes() = runTest {
        seed(
            task("周报", Attribute.INBOX),
            task("其他", Attribute.INBOX, notes = "包含周报关键词的备注")
        )
        val hits = repo.search("周报").first()
        assertEquals(2, hits.size)
    }
}
