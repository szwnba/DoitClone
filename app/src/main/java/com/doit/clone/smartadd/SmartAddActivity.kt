package com.doit.clone.smartadd

import android.os.Bundle
import android.text.Editable
import android.text.TextWatcher
import android.view.KeyEvent
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.view.inputmethod.InputMethodManager
import android.widget.BaseAdapter
import android.widget.EditText
import android.widget.LinearLayout
import android.widget.ListView
import android.widget.TextView
import androidx.appcompat.app.AppCompatActivity
import androidx.lifecycle.lifecycleScope
import com.doit.clone.Graph
import com.doit.clone.R
import com.doit.clone.data.db.entity.TaskEntity
import com.doit.clone.model.Attribute
import com.doit.clone.reminder.ReminderScheduler
import com.doit.clone.util.DateUtils
import com.doit.clone.util.toast
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.flow.firstOrNull
import kotlinx.coroutines.launch
import kotlinx.coroutines.withContext
import java.util.Calendar
import java.util.Locale
import java.util.Timer
import java.util.TimerTask
import java.util.UUID

/**
 * SmartAdd 快速添加 —— 逐方法移植自原版 im.doit.pro.activity.SmartAddActivity。
 *
 * 文本标记语法：^时间 @情境 #项目 !优先级 &标签（最多 5 个）
 * 点图标按钮插入对应标记字符，TextWatcher 检测最后一个标记弹出选项列表，
 * 选中后回写为「标记+值+空格」，保存时统一剥离并应用到任务；保存后不关窗可连续录入。
 */
class SmartAddActivity : AppCompatActivity() {

    private lateinit var etInput: EditText
    private lateinit var msgView: TextView
    private lateinit var optionAdapter: OptionAdapter
    private lateinit var optionsListView: ListView
    private var startAtStr: String? = null

    private val listDateStringArray = mutableListOf<String>()
    private val timeList = mutableListOf<String>()
    private val contextNameList = mutableListOf<String>()
    private val projectNameList = mutableListOf<String>()
    private val tagNameList = mutableListOf<String>()
    private val priorityList = mutableListOf<String>()
    private val contexts = mutableListOf<Pair<String, String>>()   // uuid to name
    private val projects = mutableListOf<Pair<String, String>>()  // uuid to name

    private val selectedTimeList = mutableListOf<String>()
    private val selectedContextNameList = mutableListOf<String>()
    private val selectedProjectNameList = mutableListOf<String>()
    private val selectedTagNameList = mutableListOf<String>()
    private val selectedPriorityList = mutableListOf<String>()
    private val selectedContentList = mutableListOf<String>()
    private val listData = mutableListOf<String>()

    private val flags = listOf("^", "@", "#", "!", "&")
    private val flagChars = "^@#!&".toList()

    // ===== 生命周期（还原 onCreate / finishActivity） =====

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_smart_add)
        lifecycleScope.launch(Dispatchers.IO) {
            initData()
            withContext(Dispatchers.Main) {
                initView()
                setViewContent()
            }
        }
    }

    override fun onKeyDown(keyCode: Int, event: KeyEvent?): Boolean {
        if (keyCode == KeyEvent.KEYCODE_BACK && event?.repeatCount == 0) finishActivity()
        return super.onKeyDown(keyCode, event)
    }

    private fun finishActivity() {
        prefs().edit()
            .putString("smartadd_last_input", etInput.text?.toString()?.takeIf { it.isNotEmpty() })
            .apply()
        finish()
    }

    private fun prefs() = getSharedPreferences("doit_settings", MODE_PRIVATE)

    // ===== 五个图标按钮（还原 onXxxClick：追加标记字符） =====

    fun onTimeClick(v: View?) = appendFlag("^")

    fun onContextClick(v: View?) {
        if (contextNameList.isEmpty()) { showEmptyMsg(R.string.smartadd_empty_context); return }
        appendFlag("@")
    }

    fun onProjectClick(v: View?) {
        if (projectNameList.isEmpty()) { showEmptyMsg(R.string.smartadd_empty_project); return }
        appendFlag("#")
    }

    fun onPriorityClick(v: View?) = appendFlag("!")

    fun onTagClick(v: View?) {
        if (tagNameList.isEmpty()) { showEmptyMsg(R.string.smartadd_empty_tag); return }
        appendFlag("&")
    }

    private fun appendFlag(flag: String) {
        var input = etInput.text?.toString() ?: ""
        if (!input.endsWith(" ")) input += " "
        etInput.setText(input + flag)
        etInput.setSelection(etInput.text.length)
    }

    // ===== 数据初始化（还原 initData 系列） =====

    private suspend fun initData() {
        initTimeList()
        initContextList()
        initProjectList()
        initPriorityList()
        initTagList()
    }

    private fun initTimeList() {
        val weekNames = listOf("周一", "周二", "周三", "周四", "周五", "周六", "周日")
        listDateStringArray.addAll(weekNames)
        timeList.add(getString(R.string.date_today))
        timeList.add(getString(R.string.date_tomorrow))
        // 原版：Calendar.DAY_OF_WEEK(1=周日) 起算，取未来五天的周几名
        val todayDow = Calendar.getInstance().get(Calendar.DAY_OF_WEEK)
        for (k in 1..5) {
            val dow = (todayDow + k - 1) % 7 + 1
            timeList.add(DateUtils.weekdayName(dow))
        }
    }

    private suspend fun initContextList() {
        val list = Graph.organizeRepo.contexts().firstOrNull() ?: emptyList()
        contexts.clear()
        contexts.addAll(list.map { it.uuid to it.name })
        contextNameList.clear()
        contextNameList.addAll(list.map { it.name })
    }

    private suspend fun initProjectList() {
        val list = Graph.organizeRepo.projects().firstOrNull() ?: emptyList()
        projects.clear()
        projects.addAll(list.map { it.uuid to it.name })
        projectNameList.clear()
        projectNameList.addAll(list.map { it.name })
    }

    private fun initPriorityList() {
        priorityList.clear()
        priorityList.add(getString(R.string.priority_high))
        priorityList.add(getString(R.string.priority_middle))
        priorityList.add(getString(R.string.priority_low))
    }

    private suspend fun initTagList() {
        tagNameList.clear()
        val all = Graph.taskRepo.search("").firstOrNull() ?: emptyList()
        tagNameList.addAll(
            all.flatMap { it.tags?.split(",")?.filter { t -> t.isNotBlank() } ?: emptyList() }.distinct()
        )
    }

    // ===== 视图初始化（还原 initView / setViewContent） =====

    private fun initView() {
        etInput = findViewById(R.id.title)
        optionsListView = findViewById(R.id.options)
        msgView = findViewById(R.id.msg)
    }

    private fun setViewContent() {
        optionAdapter = OptionAdapter()
        optionsListView.adapter = optionAdapter

        etInput.setOnEditorActionListener { _, _, _ -> onSaveClick(etInput); true }

        etInput.addTextChangedListener(object : TextWatcher {
            var lastSmartIndex = 0
            var lastInputStr = ""

            override fun afterTextChanged(s: Editable?) {
                val inputAll = s?.toString() ?: return
                if (inputAll.isEmpty() || lastSmartIndex == -1 || lastInputStr.isEmpty()) {
                    listData.clear()
                    optionAdapter.notifyDataSetChanged()
                    return
                }
                when (lastInputStr.first()) {
                    '^' -> {
                        setDisplayList(selectedTimeList, timeList)
                        setEditText(timeList, inputAll, "^", 1)
                        selectedTimeList.clear(); selectedTimeList.addAll(selectedContentList)
                    }
                    '@' -> {
                        setDisplayList(selectedContextNameList, contextNameList)
                        setEditText(contextNameList, inputAll, "@", 1)
                        selectedContextNameList.clear(); selectedContextNameList.addAll(selectedContentList)
                        if (contextNameList.isEmpty()) showEmptyMsg(R.string.smartadd_empty_context)
                    }
                    '#' -> {
                        setDisplayList(selectedProjectNameList, projectNameList)
                        setEditText(projectNameList, inputAll, "#", 1)
                        selectedProjectNameList.clear(); selectedProjectNameList.addAll(selectedContentList)
                        if (projectNameList.isEmpty()) showEmptyMsg(R.string.smartadd_empty_project)
                    }
                    '!' -> {
                        setDisplayList(selectedPriorityList, priorityList)
                        setEditText(priorityList, inputAll, "!", 1)
                        selectedPriorityList.clear(); selectedPriorityList.addAll(selectedContentList)
                    }
                    '&' -> {
                        setDisplayList(selectedTagNameList, tagNameList)
                        setEditText(tagNameList, inputAll, "&", 5)
                        selectedTagNameList.clear(); selectedTagNameList.addAll(selectedContentList)
                        if (listData.isEmpty() && selectedTagNameList.size < 5) {
                            showEmptyMsg(R.string.smartadd_empty_tag)
                        }
                    }
                }
                // 按标记后已输入的前缀过滤
                val prefix = lastInputStr.substring(1).lowercase(Locale.getDefault())
                for (i in listData.indices.reversed()) {
                    if (!listData[i].lowercase(Locale.getDefault()).startsWith(prefix)) {
                        listData.removeAt(i)
                    }
                }
                optionAdapter.notifyDataSetChanged()
            }

            override fun beforeTextChanged(p0: CharSequence?, p1: Int, p2: Int, p3: Int) {}

            override fun onTextChanged(s: CharSequence?, start: Int, before: Int, count: Int) {
                val prevStr = s?.toString()?.substring(0, start + count) ?: return
                var index = prevStr.lastIndexOf("^")
                for (f in listOf("@", "#", "!", "&")) {
                    val oi = prevStr.lastIndexOf(f)
                    if (oi > index) index = oi
                }
                if (index == 0 || (index > 0 && prevStr.substring(index - 1, index) == " ")) {
                    val ch = prevStr[index]
                    if (ch in flagChars) {
                        lastSmartIndex = index
                        lastInputStr = prevStr.substring(lastSmartIndex)
                    }
                    return
                }
                lastSmartIndex = -1
                lastInputStr = ""
            }
        })

        findViewById<View>(R.id.content_wrap).setOnClickListener {
            val imm = getSystemService(INPUT_METHOD_SERVICE) as InputMethodManager
            imm.hideSoftInputFromWindow(etInput.windowToken, 0)
            finishActivity()
        }

        prefs().getString("smartadd_last_input", null)?.takeIf { it.isNotEmpty() }?.let {
            etInput.setText(it)
            etInput.setSelection(etInput.text.length)
        }
    }

    // ===== 选项列表适配器（还原 OptionAdapter） =====

    inner class OptionAdapter : BaseAdapter() {

        override fun notifyDataSetChanged() {
            if (listData.isEmpty()) {
                optionsListView.visibility = View.GONE
                showOrHiddenSmartAddBtn(true)
            } else {
                optionsListView.visibility = View.VISIBLE
                showOrHiddenSmartAddBtn(false)
            }
            super.notifyDataSetChanged()
        }

        override fun getCount() = listData.size

        override fun getItem(position: Int): String = listData[position]

        override fun getItemId(position: Int) = position.toLong()

        override fun getView(position: Int, convertView: View?, parent: ViewGroup): View {
            val itemView = (convertView ?: LayoutInflater.from(this@SmartAddActivity)
                .inflate(R.layout.layout_smartadd_list_item, parent, false)) as TextView
            itemView.text = getItem(position)
            itemView.tag = getItem(position)
            itemView.setOnClickListener {
                val value = it.tag as String
                val text = etInput.text.toString()
                var flagIndex = -1
                for (i in text.indices.reversed()) {
                    if (text[i] in flagChars) { flagIndex = i; break }
                }
                if (flagIndex != -1) {
                    val isTag = text[flagIndex] == '&'
                    etInput.setText(text.substring(0, flagIndex + 1) + value + " ")
                    if (isTag) addTags(etInput.text.toString())
                }
                etInput.setSelection(etInput.text.length)
            }
            return itemView
        }
    }

    private fun showOrHiddenSmartAddBtn(isShow: Boolean) {
        findViewById<LinearLayout>(R.id.smart_add_btn).visibility =
            if (isShow) View.VISIBLE else View.GONE
    }

    /** 还原 addTags：解析已选标签 */
    private fun addTags(str: String) {
        val arrayInput = str.split(" &")
        selectedTagNameList.clear()
        for (input in arrayInput) {
            if (input.isNotEmpty()) {
                val name = input.trim()
                if (tagNameList.contains(name)) selectedTagNameList.add(name)
            }
        }
    }

    // ===== 保存（逐行还原 onSaveClick 解析链） =====

    fun onSaveClick(v: View?) {
        prefs().edit().putString("smartadd_last_input", null).apply()
        var task = TaskEntity(
            uuid = UUID.randomUUID().toString(),
            attribute = Attribute.INBOX.name,
            allDay = true
        )
        val text = etInput
        var inputAll = (text.text?.toString() ?: "") + " "
        inputAll = addSpaceOnStart(inputAll)
        startAtStr = null

        var stripped = getTaskTitle(timeList, inputAll, "^", 1)
        task = setTaskStartAt(task, stripped)
        task = parseTaskStartAtAndEndAt(task, stripped)

        stripped = getTaskTitle(contextNameList, stripped, "@", 1)
        task = setTaskContext(task, stripped)

        stripped = getTaskTitle(projectNameList, stripped, "#", 1)
        task = setTaskProject(task, stripped)

        stripped = getTaskTitle(priorityList, stripped, "!", 1)
        task = setTaskPriority(task, stripped)

        stripped = getTaskTitle(tagNameList, stripped, "&", 5)
        task = setTaskTags(task, stripped)

        val sbTitle = stripped.trim()
        if (sbTitle.isEmpty()) {
            toast(getString(R.string.title_required)); return
        }
        if (sbTitle.length > 255) {
            toast(getString(R.string.title_length_limit)); return
        }
        task = task.copy(title = sbTitle)
        // 原版规则：设置了项目且仍在收集箱 → 自动转为下一步
        if (task.projectUuid != null && task.attribute == Attribute.INBOX.name) {
            task = task.copy(attribute = Attribute.NEXT.name)
        }

        val finalTask = task
        lifecycleScope.launch(Dispatchers.IO) {
            Graph.taskRepo.insert(finalTask)
            ReminderScheduler.rescheduleAll(this@SmartAddActivity)
            withContext(Dispatchers.Main) {
                text.setText("")
                text.requestFocus()
                showSuccessMsg(finalTask)
            }
        }
        selectedTimeList.clear()
        selectedContextNameList.clear()
        selectedProjectNameList.clear()
        selectedPriorityList.clear()
        selectedTagNameList.clear()
    }

    // ===== 解析辅助（还原 getTaskTitle / setSelectedList / getLastSmartStr 家族） =====

    private fun getTaskTitle(list: List<String>, inputAll: String, ch: String, maxCount: Int): String {
        selectedContentList.clear()
        var input = inputAll
        if (!startAtStr.isNullOrEmpty()) {
            input = inputAll.replace(startAtStr!!, "")
        }
        setSelectedList(list, input, ch)
        var result = inputAll
        for (item in selectedContentList) {
            result = result.replace(java.util.regex.Pattern.quote(ch + item).toRegex(), "")
        }
        return result
    }

    private fun setSelectedList(list: List<String>, inputAll: String, ch: String) {
        selectedContentList.clear()
        val str = inputAll.split(" ${java.util.regex.Pattern.quote(ch)}".toRegex())
        if (str.size > 1) {
            for (i in str.indices) {
                if (str[i].isNotEmpty() && (i != 0 || inputAll.startsWith(" $ch"))) {
                    val smartStr = getLastSmartStr(list, " $ch${str[i]} ", ch)
                    if (smartStr.isNotEmpty() && !selectedContentList.contains(smartStr) &&
                        ("&" == ch || list.contains(smartStr))
                    ) {
                        selectedContentList.add(smartStr)
                    }
                }
            }
        }
    }

    private fun getLastTagSmartStr(list: List<String>, inputAll: String, ch: String): String {
        val key = " $ch"
        val lastSmartIndex = inputAll.lastIndexOf(key)
        val lastSpaceIndex = inputAll.lastIndexOf(" ")
        if (inputAll.isEmpty() || lastSmartIndex == -1 || lastSpaceIndex < lastSmartIndex) return ""
        var lastSmartStr = inputAll.substring(lastSmartIndex + key.length - 1, lastSpaceIndex).substring(1)
        if (lastSmartStr.contains(" ")) {
            while (!list.contains(lastSmartStr) && lastSmartStr.isNotEmpty() && lastSmartStr.contains(" ")) {
                val li = lastSmartStr.lastIndexOf(" ")
                if (li == -1) return ""
                lastSmartStr = lastSmartStr.substring(0, li)
            }
            return lastSmartStr
        }
        return lastSmartStr
    }

    private fun getLastSmartStr(list: List<String>, inputAll: String, ch: String): String {
        if ("&" == ch) return getLastTagSmartStr(list, inputAll, ch)
        val key = " $ch"
        var lastSmartIndex = -1
        if (inputAll.contains(key)) {
            lastSmartIndex = inputAll.lastIndexOf(key) + key.length - 1
        }
        var lastSpaceIndex = -1
        if (inputAll.contains(" ")) {
            lastSpaceIndex = inputAll.lastIndexOf(" ")
        }
        if (inputAll.isEmpty() || lastSmartIndex == -1 || lastSpaceIndex < lastSmartIndex) return ""
        var lastSmartStr = inputAll.substring(lastSmartIndex, lastSpaceIndex).substring(1)
        if (lastSmartStr.contains(" ")) {
            while (!list.contains(lastSmartStr) && lastSmartStr.isNotEmpty() && lastSmartStr.contains(" ")) {
                val li = lastSmartStr.lastIndexOf(" ")
                if (li == -1) return ""
                lastSmartStr = lastSmartStr.substring(0, li)
            }
            return lastSmartStr
        }
        return if (!list.contains(lastSmartStr)) {
            getLastSmartStr(list, inputAll.substring(0, lastSmartIndex), ch)
        } else lastSmartStr
    }

    // ===== 任务字段应用（还原 setTaskXxx） =====

    private fun setTaskStartAt(task: TaskEntity, inputAll: String): TaskEntity {
        if (selectedContentList.isNotEmpty()) {
            val content = selectedContentList.last()
            val todayDow = Calendar.getInstance().get(Calendar.DAY_OF_WEEK)
            val startAt: Long? = when (content) {
                getString(R.string.date_today) -> DateUtils.startOfToday()
                getString(R.string.date_tomorrow) -> DateUtils.startOfTomorrow()
                DateUtils.weekdayName(todayDow % 7 + 1) -> DateUtils.addDays(DateUtils.startOfToday(), 2)
                DateUtils.weekdayName((todayDow + 1) % 7 + 1) -> DateUtils.addDays(DateUtils.startOfToday(), 3)
                DateUtils.weekdayName((todayDow + 2) % 7 + 1) -> DateUtils.addDays(DateUtils.startOfToday(), 4)
                DateUtils.weekdayName((todayDow + 3) % 7 + 1) -> DateUtils.addDays(DateUtils.startOfToday(), 5)
                DateUtils.weekdayName((todayDow + 4) % 7 + 1) -> DateUtils.addDays(DateUtils.startOfToday(), 6)
                else -> null
            }
            if (startAt != null) return task.copy(startAt = startAt, attribute = Attribute.PLAN.name)
        }
        return task
    }

    /** 自然语言时间兜底（对应原版 SmartAddUtils.parseStartAt/parseEndAt） */
    private fun parseTaskStartAtAndEndAt(task: TaskEntity, inputAll: String): TaskEntity {
        val parsed = SmartAddParser.parse(inputAll.trim())
        var result = task
        if (result.startAt == null && parsed.startAt != null) {
            result = result.copy(startAt = parsed.startAt, attribute = Attribute.PLAN.name)
        }
        if (parsed.endAt != null && (result.startAt == null || parsed.endAt >= result.startAt)) {
            result = result.copy(endAt = parsed.endAt)
        }
        if (parsed.startAt != null || parsed.endAt != null) {
            result = result.copy(allDay = parsed.allDay)
        }
        return result
    }

    private fun setTaskContext(task: TaskEntity, inputAll: String): TaskEntity {
        if (selectedContentList.isNotEmpty()) {
            val name = selectedContentList.last()
            contexts.firstOrNull { it.second == name }?.let { return task.copy(contextUuid = it.first) }
        }
        return task
    }

    private fun setTaskProject(task: TaskEntity, inputAll: String): TaskEntity {
        if (selectedContentList.isNotEmpty()) {
            val name = selectedContentList.last()
            projects.firstOrNull { it.second == name }?.let { return task.copy(projectUuid = it.first) }
        }
        return task
    }

    private fun setTaskPriority(task: TaskEntity, inputAll: String): TaskEntity {
        if (selectedContentList.isNotEmpty()) {
            val value = when (selectedContentList.last()) {
                getString(R.string.priority_high) -> 3
                getString(R.string.priority_middle) -> 2
                getString(R.string.priority_low) -> 1
                else -> return task
            }
            return task.copy(priority = value)
        }
        return task
    }

    private fun setTaskTags(task: TaskEntity, inputAll: String): TaskEntity {
        if (selectedContentList.isNotEmpty()) {
            val from = maxOf(0, selectedContentList.size - 5)
            val tags = selectedContentList.subList(from, selectedContentList.size).map { it.take(20) }
            return task.copy(tags = tags.joinToString(","))
        }
        return task
    }

    // ===== 提示（还原 showSuccessMsg / showEmptyMsg） =====

    private fun showSuccessMsg(task: TaskEntity) {
        val attr = Attribute.from(task.attribute)
        val startAtDay = task.startAt?.let { DateUtils.dayStart(it) }
        val tomorrowStart = DateUtils.startOfTomorrow()
        val msg = when {
            attr == Attribute.INBOX -> getString(R.string.smartadd_success_inbox)
            startAtDay != null && startAtDay <= DateUtils.endOfToday() ->
                getString(R.string.smartadd_success_today)
            attr == Attribute.NEXT -> getString(R.string.smartadd_success_next)
            startAtDay != null && startAtDay == tomorrowStart ->
                getString(R.string.smartadd_success_tomorrow)
            else -> getString(R.string.smartadd_success_scheduled)
        }
        msgView.text = msg
        msgView.visibility = View.VISIBLE
        optionsListView.visibility = View.GONE
        msgView.setTextColor(android.graphics.Color.WHITE)
        msgView.gravity = android.view.Gravity.CENTER
        Timer().schedule(object : TimerTask() {
            override fun run() {
                runOnUiThread { resetEmptyMsg() }
            }
        }, 2000L)
    }

    private fun showEmptyMsg(msg: Int) {
        msgView.text = getString(msg)
        msgView.visibility = View.VISIBLE
        optionsListView.visibility = View.GONE
    }

    private fun resetEmptyMsg() {
        msgView.text = getString(R.string.smartadd_cancel_tip)
    }

    // ===== 文本编辑辅助（还原 setEditText / setDisplayList / addSpaceOnStart） =====

    private fun setEditText(list: List<String>, inputAll: String, ch: String, maxCount: Int) {
        var input = addSpaceOnStart(inputAll)
        setSelectedList(list, input, ch)
        val size = selectedContentList.size
        if (size > maxCount) {
            for (selectedContent in selectedContentList) {
                if (!input.endsWith(" ")) input += " "
                input = input.split(java.util.regex.Pattern.quote(" $ch$selectedContent ").toRegex())
                    .joinToString(" ")
            }
            for (i in size - maxCount until selectedContentList.size) {
                if (!input.endsWith(" ")) input += " "
                input += ch + selectedContentList[i]
            }
            if (!input.endsWith(" ")) input += " "
            etInput.setText(input)
            etInput.setSelection(etInput.text.length)
        }
    }

    private fun setDisplayList(selectedList: List<String>, dataResource: List<String>) {
        listData.clear()
        for (item in dataResource) {
            if (!selectedList.contains(item)) listData.add(item)
        }
        optionAdapter.notifyDataSetChanged()
    }

    private fun addSpaceOnStart(inputAll: String): String =
        if (flags.any { inputAll.startsWith(it) }) " $inputAll" else inputAll
}
