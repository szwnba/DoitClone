package com.doit.clone.ui.task

import android.content.Context
import android.content.Intent
import android.os.Bundle
import android.view.inputmethod.EditorInfo
import androidx.appcompat.app.AppCompatActivity
import androidx.lifecycle.lifecycleScope
import androidx.recyclerview.widget.LinearLayoutManager
import com.doit.clone.Graph
import com.doit.clone.R
import com.doit.clone.data.db.entity.SubTaskEntity
import com.doit.clone.data.db.entity.TaskEntity
import com.doit.clone.data.repo.TaskRepository
import com.doit.clone.databinding.ActivityTaskDetailBinding
import com.doit.clone.model.Attribute
import com.doit.clone.model.BoxType
import com.doit.clone.model.Priority
import com.doit.clone.repeat.Repeater
import com.doit.clone.reminder.ReminderScheduler
import com.doit.clone.ui.common.Pickers
import com.doit.clone.util.DateUtils
import com.doit.clone.util.observe
import com.doit.clone.util.toast
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.flow.firstOrNull
import kotlinx.coroutines.launch
import kotlinx.coroutines.withContext
import java.util.Calendar

/**
 * 任务详情/编辑页：全字段编辑（时间、优先级、项目/目标/情境、标签、重复、提醒、子任务）。
 */
class TaskDetailActivity : AppCompatActivity(), SubtaskAdapter.Listener {

    private lateinit var binding: ActivityTaskDetailBinding
    private lateinit var subtaskAdapter: SubtaskAdapter

    private var task: TaskEntity? = null
    private var isNew = false

    // 编辑态
    private var startAt: Long? = null
    private var endAt: Long? = null
    private var allDay = true
    private var priority = Priority.NONE
    private var attribute = Attribute.INBOX
    private var projectUuid: String? = null
    private var goalUuid: String? = null
    private var contextUuid: String? = null
    private var repeater: Repeater? = null
    private var reminders: MutableList<String> = mutableListOf()

    companion object {
        private const val EXTRA_UUID = "uuid"
        private const val EXTRA_NEW_BOX = "new_box"

        fun intent(context: Context, uuid: String): Intent =
            Intent(context, TaskDetailActivity::class.java).putExtra(EXTRA_UUID, uuid)

        fun newIntent(context: Context, box: BoxType): Intent =
            Intent(context, TaskDetailActivity::class.java)
                .putExtra(EXTRA_NEW_BOX, box.name)
                .putExtra(EXTRA_UUID, "")
    }

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        binding = ActivityTaskDetailBinding.inflate(layoutInflater)
        setContentView(binding.root)

        val uuid = intent.getStringExtra(EXTRA_UUID) ?: ""
        isNew = uuid.isBlank()

        setupToolbar()
        setupSubtasks()
        setupRows()

        if (isNew) {
            val box = BoxType.from(intent.getStringExtra(EXTRA_NEW_BOX) ?: "INBOX") ?: BoxType.INBOX
            task = TaskRepository.newTask(box)
            attribute = TaskRepository.defaultAttribute(box)
            startAt = TaskRepository.defaultStart(box)
            if (startAt != null) attribute = Attribute.PLAN
            refreshValueLabels()
        } else {
            lifecycleScope.launch(Dispatchers.IO) {
                task = Graph.taskRepo.get(uuid)
                withContext(Dispatchers.Main) { task?.let { applyToUi(it) } }
            }
            Graph.taskRepo.subtasks(uuid).observe(this) { subtaskAdapter.submit(it) }
        }
    }

    private fun setupToolbar() {
        binding.toolbar.title = if (isNew) getString(R.string.task_new) else getString(R.string.task_edit)
        binding.toolbar.setNavigationOnClickListener { finish() }
        binding.toolbar.inflateMenu(R.menu.menu_task_detail)
        binding.toolbar.setOnMenuItemClickListener { item ->
            when (item.itemId) {
                R.id.action_save -> save()
                R.id.action_delete -> delete()
                R.id.action_move -> showMoveDialog()
            }
            true
        }
    }

    private fun setupSubtasks() {
        subtaskAdapter = SubtaskAdapter(this)
        binding.subtaskList.layoutManager = LinearLayoutManager(this)
        binding.subtaskList.adapter = subtaskAdapter
        binding.editNewSubtask.setOnEditorActionListener { v, actionId, _ ->
            if (actionId == EditorInfo.IME_ACTION_DONE) {
                val text = v.text?.toString() ?: ""
                val current = task
                if (text.isNotBlank() && current != null) {
                    lifecycleScope.launch(Dispatchers.IO) {
                        Graph.taskRepo.addSubtask(current.uuid, text)
                    }
                    v.setText("")
                }
                true
            } else false
        }
    }

    private fun applyToUi(t: TaskEntity) {
        binding.editTitle.setText(t.title)
        binding.editNotes.setText(t.notes ?: "")
        binding.editTags.setText(
            t.tags?.split(",")?.filter { it.isNotBlank() }?.joinToString(" ") { "#$it" } ?: ""
        )
        startAt = t.startAt
        endAt = t.endAt
        allDay = t.allDay
        priority = t.priority
        attribute = Attribute.from(t.attribute) ?: Attribute.INBOX
        projectUuid = t.projectUuid
        goalUuid = t.goalUuid
        contextUuid = t.contextUuid
        repeater = Repeater.deserialize(t.repeater)
        reminders = t.reminders?.split(",")?.filter { it.isNotBlank() }?.toMutableList() ?: mutableListOf()
        binding.switchAllDay.isChecked = allDay
        refreshValueLabels()
    }

    private fun refreshValueLabels() {
        val fmt = Graph.settings.dateFormat
        fun dt(millis: Long?) = millis?.let {
            if (allDay) DateUtils.friendlyDate(it, fmt)
            else DateUtils.friendlyDate(it, fmt) + " " + DateUtils.formatTime(it)
        } ?: getString(R.string.none)

        binding.valueStart.text = dt(startAt)
        binding.valueEnd.text = dt(endAt)
        binding.valuePriority.text = Priority.label(priority)
        binding.valueRepeater.text = repeater?.describe() ?: getString(R.string.repeat_none)
        binding.valueReminders.text = reminders.joinToString("、").ifBlank { getString(R.string.none) }

        lifecycleScope.launch(Dispatchers.IO) {
            val p = Graph.organizeRepo.projectName(projectUuid)
            val g = Graph.organizeRepo.goalName(goalUuid)
            val c = Graph.organizeRepo.contextName(contextUuid)
            withContext(Dispatchers.Main) {
                binding.valueProject.text = p ?: getString(R.string.none)
                binding.valueGoal.text = g ?: getString(R.string.none)
                binding.valueContext.text = c ?: getString(R.string.none)
            }
        }
    }

    private fun setupRows() {
        binding.rowStart.setOnClickListener { pickStart() }
        binding.rowEnd.setOnClickListener { pickEnd() }
        binding.rowPriority.setOnClickListener { pickPriority() }
        binding.rowProject.setOnClickListener { pickProject() }
        binding.rowGoal.setOnClickListener { pickGoal() }
        binding.rowContext.setOnClickListener { pickContext() }
        binding.rowRepeater.setOnClickListener { pickRepeater() }
        binding.rowReminders.setOnClickListener { pickReminders() }
        binding.switchAllDay.setOnCheckedChangeListener { _, checked ->
            allDay = checked
            refreshValueLabels()
        }
    }

    // ===== 选择器 =====

    private fun pickStart() {
        Pickers.datePicker(this, startAt?.let { DateUtils.cal(it) }) { date ->
            if (allDay) {
                startAt = DateUtils.dayStart(date.timeInMillis)
                syncAttributeWithDates()
                refreshValueLabels()
            } else {
                Pickers.timePicker(this, 9, 0) { h, m ->
                    val cal = DateUtils.cal(DateUtils.dayStart(date.timeInMillis)).apply {
                        set(Calendar.HOUR_OF_DAY, h); set(Calendar.MINUTE, m)
                    }
                    startAt = cal.timeInMillis
                    syncAttributeWithDates()
                    refreshValueLabels()
                }
            }
        }
    }

    private fun pickEnd() {
        Pickers.datePicker(this, endAt?.let { DateUtils.cal(it) } ?: startAt?.let { DateUtils.cal(it) }) { date ->
            if (allDay) {
                endAt = DateUtils.dayEnd(date.timeInMillis)
            } else {
                Pickers.timePicker(this, 18, 0) { h, m ->
                    val cal = DateUtils.cal(DateUtils.dayStart(date.timeInMillis)).apply {
                        set(Calendar.HOUR_OF_DAY, h); set(Calendar.MINUTE, m)
                    }
                    endAt = cal.timeInMillis
                }
            }
            refreshValueLabels()
        }
    }

    private fun pickPriority() {
        val options = listOf(
            getString(R.string.priority_none), getString(R.string.priority_low),
            getString(R.string.priority_middle), getString(R.string.priority_high)
        )
        val values = listOf(Priority.NONE, Priority.LOW, Priority.MIDDLE, Priority.HIGH)
        Pickers.radio(this, getString(R.string.task_priority), options, values.indexOf(priority)) {
            priority = values[it]
            refreshValueLabels()
        }
    }

    private fun pickProject() {
        lifecycleScope.launch(Dispatchers.IO) {
            val projects = Graph.organizeRepo.projects().firstOrNull() ?: emptyList()
            val names = listOf(getString(R.string.none)) + projects.map { it.name }
            withContext(Dispatchers.Main) {
                Pickers.radio(this@TaskDetailActivity, getString(R.string.task_project), names,
                    projects.indexOfFirst { it.uuid == projectUuid } + 1) { idx ->
                    projectUuid = if (idx == 0) null else projects.getOrNull(idx - 1)?.uuid
                    refreshValueLabels()
                }
            }
        }
    }

    private fun pickGoal() {
        lifecycleScope.launch(Dispatchers.IO) {
            val goals = Graph.organizeRepo.goals().firstOrNull() ?: emptyList()
            val names = listOf(getString(R.string.none)) + goals.map { it.name }
            withContext(Dispatchers.Main) {
                Pickers.radio(this@TaskDetailActivity, getString(R.string.task_goal), names,
                    goals.indexOfFirst { it.uuid == goalUuid } + 1) { idx ->
                    goalUuid = if (idx == 0) null else goals.getOrNull(idx - 1)?.uuid
                    refreshValueLabels()
                }
            }
        }
    }

    private fun pickContext() {
        lifecycleScope.launch(Dispatchers.IO) {
            val contexts = Graph.organizeRepo.contexts().firstOrNull() ?: emptyList()
            val names = listOf(getString(R.string.none)) + contexts.map { it.name }
            withContext(Dispatchers.Main) {
                Pickers.radio(this@TaskDetailActivity, getString(R.string.task_context), names,
                    contexts.indexOfFirst { it.uuid == contextUuid } + 1) { idx ->
                    contextUuid = if (idx == 0) null else contexts.getOrNull(idx - 1)?.uuid
                    refreshValueLabels()
                }
            }
        }
    }

    private fun pickRepeater() {
        val options = listOf(
            getString(R.string.repeat_none),
            getString(R.string.repeat_daily),
            getString(R.string.repeat_weekly),
            getString(R.string.repeat_monthly_date),
            getString(R.string.repeat_monthly_week),
            getString(R.string.repeat_yearly)
        )
        Pickers.radio(this, getString(R.string.task_repeater), options, 0) { idx ->
            when (idx) {
                0 -> repeater = null
                1 -> repeater = Repeater.Daily
                2 -> pickWeekly()
                3 -> pickMonthlyDates()
                4 -> pickMonthlyWeek()
                5 -> pickYearly()
            }
            if (idx <= 1) refreshValueLabels()
        }
    }

    private fun pickWeekly() {
        val days = listOf(
            Calendar.SUNDAY, Calendar.MONDAY, Calendar.TUESDAY, Calendar.WEDNESDAY,
            Calendar.THURSDAY, Calendar.FRIDAY, Calendar.SATURDAY
        )
        val currentNames = (repeater as? Repeater.Weekly)?.days?.map { DateUtils.weekdayName(it) }?.toSet()
            ?: emptySet()
        Pickers.multiChoice(this, "选择星期", days.map { DateUtils.weekdayName(it) }, currentNames) { picked ->
            val set = picked.mapNotNull { name -> days.firstOrNull { DateUtils.weekdayName(it) == name } }.toSet()
            repeater = if (set.isEmpty()) null else Repeater.Weekly(set)
            refreshValueLabels()
        }
    }

    private fun pickMonthlyDates() {
        Pickers.textInput(this, "每月几号（逗号分隔，如 1,15）",
            (repeater as? Repeater.MonthlyDate)?.dates?.sorted()?.joinToString(",") ?: "") { text ->
            val dates = text.split(",", "，").mapNotNull { it.trim().toIntOrNull() }
                .filter { it in 1..31 }.toSet()
            repeater = if (dates.isEmpty()) null else Repeater.MonthlyDate(dates)
            refreshValueLabels()
        }
    }

    private fun pickMonthlyWeek() {
        val weeks = listOf("第一周", "第二周", "第三周", "第四周", "第五周")
        Pickers.radio(this, "第几周", weeks, ((repeater as? Repeater.MonthlyWeek)?.weekOfMonth ?: 1) - 1) { w ->
            val days = listOf(
                Calendar.SUNDAY, Calendar.MONDAY, Calendar.TUESDAY, Calendar.WEDNESDAY,
                Calendar.THURSDAY, Calendar.FRIDAY, Calendar.SATURDAY
            )
            Pickers.radio(this, "星期几", days.map { DateUtils.weekdayName(it) }, 1) { d ->
                repeater = Repeater.MonthlyWeek(w + 1, days[d])
                refreshValueLabels()
            }
        }
    }

    private fun pickYearly() {
        Pickers.textInput(this, "每年几月几日（如 3-15）",
            (repeater as? Repeater.Yearly)?.let { "${it.month}-${it.day}" } ?: "") { text ->
            val m = Regex("^(\\d{1,2})[-/月](\\d{1,2})").find(text.trim())
            val month = m?.groupValues?.get(1)?.toIntOrNull()
            val day = m?.groupValues?.get(2)?.toIntOrNull()
            repeater = if (month != null && day != null && month in 1..12 && day in 1..31) {
                Repeater.Yearly(month, day)
            } else null
            refreshValueLabels()
        }
    }

    private fun pickReminders() {
        val quick = listOf("08:00", "09:00", "12:00", "18:00", "20:00", "21:00")
        val all = (quick + reminders).distinct().sorted()
        Pickers.multiChoice(this, getString(R.string.task_reminders), all, reminders.toSet()) { picked ->
            reminders = picked.toMutableList()
            refreshValueLabels()
        }
    }

    private fun showMoveDialog() {
        val boxes = listOf(
            BoxType.INBOX to getString(R.string.box_inbox),
            BoxType.TODAY to getString(R.string.box_today),
            BoxType.TOMORROW to getString(R.string.box_tomorrow),
            BoxType.NEXT to getString(R.string.box_next),
            BoxType.SCHEDULED to getString(R.string.box_scheduled),
            BoxType.SOMEDAY to getString(R.string.box_someday),
            BoxType.WAITING to getString(R.string.box_waiting)
        )
        Pickers.radio(this, getString(R.string.task_move_to), boxes.map { it.second }, -1) { idx ->
            val current = task ?: return@radio
            lifecycleScope.launch(Dispatchers.IO) {
                Graph.taskRepo.moveTo(current.uuid, boxes[idx].first)
                withContext(Dispatchers.Main) { finish() }
            }
        }
    }

    /** 有开始日期 → 归入 PLAN（跟随原版时间箱语义） */
    private fun syncAttributeWithDates() {
        if (startAt != null && attribute !in listOf(Attribute.PLAN, Attribute.WAITING)) {
            attribute = Attribute.PLAN
        }
    }

    // ===== 保存/删除 =====

    private fun save() {
        val title = binding.editTitle.text?.toString()?.trim() ?: ""
        if (title.isBlank()) {
            toast(getString(R.string.task_title_hint))
            return
        }
        val tags = Regex("#([^\\s#]+)").findAll(binding.editTags.text?.toString() ?: "")
            .map { it.groupValues[1] }.joinToString(",")
        val current = task
        lifecycleScope.launch(Dispatchers.IO) {
            if (!isNew && current == null) {
                withContext(Dispatchers.Main) { finish() }
                return@launch
            }
            val toSave = (current ?: TaskRepository.newTask(BoxType.INBOX, title)).copy(
                title = title,
                notes = binding.editNotes.text?.toString(),
                attribute = attribute.name,
                startAt = startAt,
                endAt = endAt,
                allDay = allDay,
                priority = priority,
                projectUuid = projectUuid,
                goalUuid = goalUuid,
                contextUuid = contextUuid,
                tags = tags.ifBlank { null },
                repeater = repeater?.serialize(),
                reminders = reminders.joinToString(",").ifBlank { null },
                updated = System.currentTimeMillis()
            )
            if (isNew) Graph.taskRepo.insert(toSave) else Graph.taskRepo.update(toSave)
            task = toSave
            ReminderScheduler.rescheduleAll(this@TaskDetailActivity)
            withContext(Dispatchers.Main) { finish() }
        }
    }

    private fun delete() {
        val current = task ?: return
        lifecycleScope.launch(Dispatchers.IO) {
            Graph.taskRepo.trash(current.uuid)
            ReminderScheduler.rescheduleAll(this@TaskDetailActivity)
            withContext(Dispatchers.Main) { finish() }
        }
    }

    // ===== 子任务 =====

    override fun onToggle(sub: SubTaskEntity) {
        lifecycleScope.launch(Dispatchers.IO) {
            Graph.taskRepo.updateSubtask(sub.copy(completed = !sub.completed))
        }
    }

    override fun onRename(sub: SubTaskEntity, title: String) {
        if (title.isBlank()) return
        lifecycleScope.launch(Dispatchers.IO) {
            Graph.taskRepo.updateSubtask(sub.copy(title = title))
        }
    }

    override fun onDelete(sub: SubTaskEntity) {
        lifecycleScope.launch(Dispatchers.IO) {
            Graph.taskRepo.deleteSubtask(sub.uuid)
        }
    }
}
