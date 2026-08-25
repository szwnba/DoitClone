package com.doit.clone.ui.task

import android.graphics.Paint
import android.view.LayoutInflater
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.doit.clone.data.db.entity.SubTaskEntity
import com.doit.clone.databinding.ItemSubtaskBinding

class SubtaskAdapter(
    private val listener: Listener
) : RecyclerView.Adapter<SubtaskAdapter.VH>() {

    interface Listener {
        fun onToggle(sub: SubTaskEntity)
        fun onRename(sub: SubTaskEntity, title: String)
        fun onDelete(sub: SubTaskEntity)
    }

    private var items: List<SubTaskEntity> = emptyList()

    fun submit(list: List<SubTaskEntity>) {
        items = list
        notifyDataSetChanged()
    }

    class VH(val b: ItemSubtaskBinding) : RecyclerView.ViewHolder(b.root)

    override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): VH =
        VH(ItemSubtaskBinding.inflate(LayoutInflater.from(parent.context), parent, false))

    override fun getItemCount() = items.size

    override fun onBindViewHolder(holder: VH, position: Int) {
        val sub = items.getOrNull(position) ?: return
        holder.b.subtaskCheckbox.isChecked = sub.completed
        holder.b.subtaskCheckbox.setOnCheckedChangeListener { _, checked ->
            if (checked != sub.completed) listener.onToggle(sub.copy(completed = checked))
        }
        holder.b.subtaskTitle.setText(sub.title)
        holder.b.subtaskTitle.paintFlags = if (sub.completed) {
            holder.b.subtaskTitle.paintFlags or Paint.STRIKE_THRU_TEXT_FLAG
        } else {
            holder.b.subtaskTitle.paintFlags and Paint.STRIKE_THRU_TEXT_FLAG.inv()
        }
        holder.b.subtaskTitle.setOnFocusChangeListener { _, hasFocus ->
            if (!hasFocus) {
                val text = holder.b.subtaskTitle.text?.toString() ?: ""
                if (text.trim() != sub.title) listener.onRename(sub, text.trim())
            }
        }
        holder.b.subtaskDelete.setOnClickListener { listener.onDelete(sub) }
    }
}
