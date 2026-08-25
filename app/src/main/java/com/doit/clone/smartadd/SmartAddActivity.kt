package com.doit.clone.smartadd

import android.os.Bundle
import android.text.Editable
import android.text.TextWatcher
import android.view.LayoutInflater
import android.widget.LinearLayout
import androidx.appcompat.app.AppCompatActivity
import androidx.lifecycle.lifecycleScope
import com.doit.clone.Graph
import com.doit.clone.R
import com.doit.clone.data.db.entity.TaskEntity
import com.doit.clone.databinding.ActivitySmartAddBinding
import com.doit.clone.model.Attribute
import com.doit.clone.model.BoxType
import com.doit.clone.reminder.ReminderScheduler
import com.doit.clone.util.DateUtils
import com.doit.clone.util.toast
import com.google.android.material.button.MaterialButton
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.launch
import kotlinx.coroutines.withContext

/**
 * 通知栏快速添加（还原原版 SmartAddActivity）：
 * 悬浮输入框 + 快捷日期按钮 + 实时解析预览。
 */
class SmartAddActivity : AppCompatActivity() {

    private lateinit var binding: ActivitySmartAddBinding

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        binding = ActivitySmartAddBinding.inflate(layoutInflater)
        setContentView(binding.root)

        binding.smartRoot.setOnClickListener { finish() }
        binding.smartCard.setOnClickListener { }
        binding.smartCancel.setOnClickListener { finish() }
        binding.smartOk.setOnClickListener { submit() }

        binding.smartInput.addTextChangedListener(object : TextWatcher {
            override fun beforeTextChanged(s: CharSequence?, a: Int, b: Int, c: Int) {}
            override fun onTextChanged(s: CharSequence?, a: Int, b: Int, c: Int) {}
            override fun afterTextChanged(s: Editable?) { preview() }
        })

        buildQuickButtons()
        preview()
    }

    private fun buildQuickButtons() {
        val quick = listOf(
            getString(R.string.smart_add_today), getString(R.string.smart_add_tomorrow),
            getString(R.string.smart_add_day_after)
        ) + DateUtils.weekdayNames(Graph.settings.weekStartsOn) +
            listOf("9:00", "14:00", "20:00")

        quick.forEach { text ->
            val btn = MaterialButton(
                this, null, com.google.android.material.R.attr.materialButtonOutlinedStyle
            ).apply {
                this.text = text
                isAllCaps = false
                setOnClickListener { insert(text) }
            }
            binding.smartQuickRow.addView(btn, LinearLayout.LayoutParams(
                LinearLayout.LayoutParams.WRAP_CONTENT,
                LinearLayout.LayoutParams.WRAP_CONTENT
            ).apply { marginEnd = 8 })
        }
    }

    private fun insert(text: String) {
        val current = binding.smartInput.text?.toString() ?: ""
        val next = (if (current.isBlank()) "" else "$current ") + text
        binding.smartInput.setText(next)
        binding.smartInput.setSelection(next.length)
    }

    private fun preview() {
        val input = binding.smartInput.text?.toString() ?: ""
        if (input.isBlank()) {
            binding.smartPreview.text = getString(R.string.smart_add_hint)
            return
        }
        val parsed = SmartAddParser.parse(input)
        val parts = mutableListOf<String>()
        parsed.startAt?.let {
            parts.add(
                if (parsed.allDay) DateUtils.friendlyDate(it, Graph.settings.dateFormat)
                else DateUtils.friendlyDate(it, Graph.settings.dateFormat) + " " + DateUtils.formatTime(it)
            )
        }
        parsed.endAt?.let { parts.add("至 " + DateUtils.formatTime(it)) }
        parsed.tags.forEach { parts.add("#$it") }
        if (parsed.priority != 0) parts.add("!" + com.doit.clone.model.Priority.label(parsed.priority))
        binding.smartPreview.text = if (parts.isEmpty()) parsed.title
        else "${parsed.title}\n${parts.joinToString("  ")}"
    }

    private fun submit() {
        val input = binding.smartInput.text?.toString()?.trim() ?: ""
        if (input.isBlank()) {
            finish()
            return
        }
        val parsed = SmartAddParser.parse(input)
        if (parsed.title.isBlank()) {
            toast(getString(R.string.smart_add_hint))
            return
        }
        lifecycleScope.launch(Dispatchers.IO) {
            val task = TaskEntity(
                uuid = java.util.UUID.randomUUID().toString(),
                title = parsed.title,
                attribute = parsed.attribute.name,
                startAt = parsed.startAt,
                endAt = parsed.endAt,
                allDay = parsed.allDay,
                priority = parsed.priority,
                tags = parsed.tags.joinToString(",").ifBlank { null }
            )
            Graph.taskRepo.insert(task)
            ReminderScheduler.rescheduleAll(this@SmartAddActivity)
            withContext(Dispatchers.Main) { finish() }
        }
    }
}
