package com.doit.clone.smartadd

import android.os.Bundle
import android.widget.ArrayAdapter
import androidx.appcompat.app.AppCompatActivity
import androidx.lifecycle.lifecycleScope
import com.doit.clone.Graph
import com.doit.clone.R
import com.doit.clone.data.db.entity.TaskEntity
import com.doit.clone.databinding.ActivitySmartAddBinding
import com.doit.clone.model.Priority
import com.doit.clone.reminder.ReminderScheduler
import com.doit.clone.util.DateUtils
import com.doit.clone.util.toast
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.flow.firstOrNull
import kotlinx.coroutines.launch
import kotlinx.coroutines.withContext
import java.util.Calendar

/**
 * SmartAdd 快速添加（还原原版 activity_smart_add 结构）：
 * 顶部输入行 + 五个图标按钮（时间/情境/项目/优先级/标签）+ 选项列表，点击遮罩取消。
 */
class SmartAddActivity : AppCompatActivity() {

    private lateinit var binding: ActivitySmartAddBinding

    // 覆盖层状态（通过图标按钮设置，不进文本）
    private var contextUuid: String? = null
    private var contextName: String? = null
    private var projectUuid: String? = null
    private var projectName: String? = null
    private var priority: Int? = null

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        binding = ActivitySmartAddBinding.inflate(layoutInflater)
        setContentView(binding.root)

        binding.smartHint.setOnClickListener { finish() }
        binding.smartOk.setOnClickListener { save() }
        binding.smartInput.setOnEditorActionListener { _, _, _ -> save(); true }

        binding.btnTime.setOnClickListener { showTimeOptions() }
        binding.btnContext.setOnClickListener { showContextOptions() }
        binding.btnProject.setOnClickListener { showProjectOptions() }
        binding.btnPriority.setOnClickListener { showPriorityOptions() }
        binding.btnTag.setOnClickListener { showTagOptions() }
    }

    private fun showOptions(options: List<String>, onPick: (String) -> Unit) {
        if (options.isEmpty()) {
            toast(getString(R.string.empty_list))
            return
        }
        binding.smartHint.visibility = android.view.View.GONE
        binding.smartOptions.visibility = android.view.View.VISIBLE
        binding.smartOptions.adapter = ArrayAdapter(this, android.R.layout.simple_list_item_1, options)
        binding.smartOptions.setOnItemClickListener { _, _, position, _ ->
            hideOptions()
            onPick(options[position])
        }
    }

    private fun hideOptions() {
        binding.smartOptions.visibility = android.view.View.GONE
        binding.smartHint.visibility = android.view.View.VISIBLE
    }

    /** 时间选项：今天/明天/后天/未来一周周X/下周X/清除时间（还原原版 listDateStringArray） */
    private fun showTimeOptions() {
        val options = mutableListOf<String>()
        options.add(getString(R.string.smart_add_today))
        options.add(getString(R.string.smart_add_tomorrow))
        options.add(getString(R.string.smart_add_day_after))
        val cal = Calendar.getInstance()
        repeat(5) {
            cal.add(Calendar.DAY_OF_YEAR, 1)
            options.add(DateUtils.weekdayName(cal.get(Calendar.DAY_OF_WEEK)))
        }
        options.add(getString(R.string.action_clear_time))
        showOptions(options) { pick ->
            when (pick) {
                getString(R.string.action_clear_time) -> insert("") // 清空文本中的时间词
                else -> insert(pick)
            }
        }
    }

    private fun showContextOptions() {
        lifecycleScope.launch(Dispatchers.IO) {
            val contexts = Graph.organizeRepo.contexts().firstOrNull() ?: emptyList()
            val names = listOf(getString(R.string.none)) + contexts.map { it.name }
            withContext(Dispatchers.Main) {
                showOptions(names) { pick ->
                    if (pick == getString(R.string.none)) {
                        contextUuid = null; contextName = null
                    } else {
                        val c = contexts.first { it.name == pick }
                        contextUuid = c.uuid; contextName = c.name
                    }
                    updateTitlePreview()
                }
            }
        }
    }

    private fun showProjectOptions() {
        lifecycleScope.launch(Dispatchers.IO) {
            val projects = Graph.organizeRepo.projects().firstOrNull() ?: emptyList()
            val names = listOf(getString(R.string.none)) + projects.map { it.name }
            withContext(Dispatchers.Main) {
                showOptions(names) { pick ->
                    if (pick == getString(R.string.none)) {
                        projectUuid = null; projectName = null
                    } else {
                        val p = projects.first { it.name == pick }
                        projectUuid = p.uuid; projectName = p.name
                    }
                    updateTitlePreview()
                }
            }
        }
    }

    private fun showPriorityOptions() {
        val options = listOf(
            getString(R.string.priority_none), getString(R.string.priority_low),
            getString(R.string.priority_middle), getString(R.string.priority_high)
        )
        showOptions(options) { pick ->
            priority = when (pick) {
                getString(R.string.priority_high) -> Priority.HIGH
                getString(R.string.priority_middle) -> Priority.MIDDLE
                getString(R.string.priority_low) -> Priority.LOW
                else -> null
            }
            updateTitlePreview()
        }
    }

    private fun showTagOptions() {
        lifecycleScope.launch(Dispatchers.IO) {
            val all = Graph.taskRepo.search("").firstOrNull() ?: emptyList()
            val allTags = all.flatMap { it.tags?.split(",")?.filter { t -> t.isNotBlank() } ?: emptyList() }.distinct()
            withContext(Dispatchers.Main) {
                if (allTags.isEmpty()) {
                    toast("暂无已有标签，可在输入框输入 #标签")
                } else {
                    showOptions(allTags) { insert("#$it") }
                }
            }
        }
    }

    private fun insert(text: String) {
        val current = binding.smartInput.text?.toString() ?: ""
        val next = if (text.isBlank()) current else (if (current.isBlank()) "" else "$current ") + text
        binding.smartInput.setText(next)
        binding.smartInput.setSelection(next.length)
    }

    /** 在输入框 hint 位置显示当前附加属性 */
    private fun updateTitlePreview() {
        val extras = listOfNotNull(contextName, projectName, priority?.let { Priority.label(it) })
        binding.smartInput.hint =
            if (extras.isEmpty()) getString(R.string.new_task_hint)
            else getString(R.string.new_task_hint) + "  [" + extras.joinToString(" · ") + "]"
    }

    private fun save() {
        val input = binding.smartInput.text?.toString()?.trim() ?: ""
        if (input.isBlank()) {
            finish()
            return
        }
        val parsed = SmartAddParser.parse(input)
        if (parsed.title.isBlank()) {
            toast(getString(R.string.new_task_hint))
            return
        }
        lifecycleScope.launch(Dispatchers.IO) {
            Graph.taskRepo.insert(
                TaskEntity(
                    uuid = java.util.UUID.randomUUID().toString(),
                    title = parsed.title,
                    notes = null,
                    attribute = parsed.attribute.name,
                    startAt = parsed.startAt,
                    endAt = parsed.endAt,
                    allDay = parsed.allDay,
                    priority = priority ?: parsed.priority,
                    projectUuid = projectUuid,
                    contextUuid = contextUuid,
                    tags = parsed.tags.joinToString(",").ifBlank { null }
                )
            )
            ReminderScheduler.rescheduleAll(this@SmartAddActivity)
            withContext(Dispatchers.Main) { finish() }
        }
    }
}
