package com.doit.clone.ui.common

import android.app.DatePickerDialog
import android.app.TimePickerDialog
import android.content.Context
import com.google.android.material.dialog.MaterialAlertDialogBuilder
import com.google.android.material.textfield.TextInputEditText
import com.google.android.material.textfield.TextInputLayout
import android.view.ViewGroup
import android.widget.FrameLayout
import com.doit.clone.util.DateUtils
import java.util.Calendar

/** 各类对话框选择器（日期/时间/单选/文本输入/实体选择） */
object Pickers {

    fun datePicker(context: Context, initial: Calendar?, onPicked: (Calendar) -> Unit) {
        val c = initial ?: DateUtils.now()
        DatePickerDialog(
            context,
            { _, year, month, day ->
                onPicked(DateUtils.cal(System.currentTimeMillis()).apply {
                    set(Calendar.YEAR, year); set(Calendar.MONTH, month); set(Calendar.DAY_OF_MONTH, day)
                })
            },
            c.get(Calendar.YEAR), c.get(Calendar.MONTH), c.get(Calendar.DAY_OF_MONTH)
        ).apply {
            if (initial == null) datePicker.init(
                c.get(Calendar.YEAR), c.get(Calendar.MONTH), c.get(Calendar.DAY_OF_MONTH), null
            )
        }.show()
    }

    fun timePicker(context: Context, initialHour: Int, initialMinute: Int, onPicked: (Int, Int) -> Unit) {
        TimePickerDialog(context, { _, h, m -> onPicked(h, m) }, initialHour, initialMinute, true).show()
    }

    /** 单选对话框；返回索引；checked=-1 表示未选 */
    fun radio(context: Context, title: String, options: List<String>, checked: Int, onPicked: (Int) -> Unit) {
        MaterialAlertDialogBuilder(context)
            .setTitle(title)
            .setSingleChoiceItems(options.toTypedArray(), checked) { dialog, which ->
                dialog.dismiss()
                onPicked(which)
            }
            .setNegativeButton(android.R.string.cancel, null)
            .show()
    }

    /** 多选对话框（选中集合以字符串值表示） */
    fun multiChoice(context: Context, title: String, options: List<String>, checked: Set<String>, onDone: (Set<String>) -> Unit) {
        val checkedArr = options.map { it in checked }.toBooleanArray()
        val current = checked.toMutableSet()
        MaterialAlertDialogBuilder(context)
            .setTitle(title)
            .setMultiChoiceItems(options.toTypedArray(), checkedArr) { _, which, isChecked ->
                val v = options[which]
                if (isChecked) current.add(v) else current.remove(v)
            }
            .setPositiveButton(android.R.string.ok) { _, _ -> onDone(current) }
            .setNegativeButton(android.R.string.cancel, null)
            .show()
    }

    fun textInput(context: Context, title: String, preset: String = "", onOk: (String) -> Unit) {
        val container = FrameLayout(context)
        val layout = TextInputLayout(context).apply {
            val pad = (16 * context.resources.displayMetrics.density).toInt()
            setPadding(pad, pad / 2, pad, 0)
        }
        val input = TextInputEditText(context).apply { setText(preset); hint = title }
        layout.addView(
            input, ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT
        )
        container.addView(layout, ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT)
        MaterialAlertDialogBuilder(context)
            .setTitle(title)
            .setView(container)
            .setPositiveButton(android.R.string.ok) { _, _ -> onOk(input.text?.toString() ?: "") }
            .setNegativeButton(android.R.string.cancel, null)
            .show()
    }
}


/** 原版优先级弹窗行：图标 + 名称 */
class PriorityPopupAdapter(
    context: android.content.Context,
    private val items: List<Pair<Int, String>>
) : android.widget.ArrayAdapter<Int>(context, 0) {

    override fun getCount() = items.size

    override fun getView(position: Int, convertView: android.view.View?, parent: android.view.ViewGroup): android.view.View {
        val row = convertView ?: android.view.LayoutInflater.from(context)
            .inflate(android.R.layout.simple_list_item_1, parent, false)
        val text = row.findViewById<android.widget.TextView>(android.R.id.text1)
        val (iconRes, name) = items[position]
        text.text = name
        val d = androidx.core.content.ContextCompat.getDrawable(context, iconRes)
        d?.setBounds(0, 0, 72, 72)
        text.setCompoundDrawables(d, null, null, null)
        text.compoundDrawablePadding = 24
        return row
    }
}
