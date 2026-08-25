package com.doit.clone.ui.daily

import android.content.Context
import android.content.Intent
import android.os.Bundle
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.appcompat.app.AppCompatActivity
import androidx.lifecycle.lifecycleScope
import androidx.recyclerview.widget.LinearLayoutManager
import androidx.recyclerview.widget.RecyclerView
import com.doit.clone.Graph
import com.doit.clone.R
import com.doit.clone.data.db.entity.TaskEntity
import com.doit.clone.databinding.ActivityDailyPlanBinding
import com.doit.clone.databinding.ItemDailyTaskBinding
import com.doit.clone.model.BoxType
import com.doit.clone.ui.task.TaskDetailActivity
import com.doit.clone.util.DateUtils
import com.doit.clone.util.observe
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.launch

/**
 * 每日计划（还原原版 DailyPlanActivity）：
 * 上半区 = 今日已安排；下半区 = 可安排候选（未安排任务 + 逾期任务）。
 */
class DailyPlanActivity : AppCompatActivity() {

    private lateinit var binding: ActivityDailyPlanBinding
    private lateinit var plannedAdapter: DailyTaskAdapter
    private lateinit var candidateAdapter: DailyTaskAdapter

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        binding = ActivityDailyPlanBinding.inflate(layoutInflater)
        setContentView(binding.root)
        binding.toolbar.setNavigationOnClickListener { finish() }

        plannedAdapter = DailyTaskAdapter(showToday = false, showTomorrow = false, listener = object : DailyTaskAdapter.Listener {
            override fun onToggle(task: TaskEntity) = toggle(task)
            override fun onClick(task: TaskEntity) = open(task)
            override fun onToday(task: TaskEntity) {}
            override fun onTomorrow(task: TaskEntity) {}
        })
        candidateAdapter = DailyTaskAdapter(showToday = true, showTomorrow = true, listener = object : DailyTaskAdapter.Listener {
            override fun onToggle(task: TaskEntity) = toggle(task)
            override fun onClick(task: TaskEntity) = open(task)
            override fun onToday(task: TaskEntity) = move(task, BoxType.TODAY)
            override fun onTomorrow(task: TaskEntity) = move(task, BoxType.TOMORROW)
        })

        binding.listPlanned.layoutManager = LinearLayoutManager(this)
        binding.listPlanned.adapter = plannedAdapter
        binding.listCandidates.layoutManager = LinearLayoutManager(this)
        binding.listCandidates.adapter = candidateAdapter

        Graph.taskRepo.observeBox(BoxType.TODAY).observe(this) { plannedAdapter.submit(it) }
        Graph.taskRepo.dailyPlanCandidates().observe(this) { candidateAdapter.submit(it) }
    }

    private fun toggle(task: TaskEntity) {
        lifecycleScope.launch(Dispatchers.IO) { Graph.taskRepo.toggleComplete(task.uuid) }
    }

    private fun open(task: TaskEntity) {
        startActivity(TaskDetailActivity.intent(this, task.uuid))
    }

    private fun move(task: TaskEntity, box: BoxType) {
        lifecycleScope.launch(Dispatchers.IO) { Graph.taskRepo.moveTo(task.uuid, box) }
    }

    class DailyTaskAdapter(
        private val showToday: Boolean,
        private val showTomorrow: Boolean,
        private val listener: Listener
    ) : RecyclerView.Adapter<DailyTaskAdapter.VH>() {

        interface Listener {
            fun onToggle(task: TaskEntity)
            fun onClick(task: TaskEntity)
            fun onToday(task: TaskEntity)
            fun onTomorrow(task: TaskEntity)
        }

        private var items: List<TaskEntity> = emptyList()

        fun submit(list: List<TaskEntity>) {
            items = list
            notifyDataSetChanged()
        }

        class VH(val b: ItemDailyTaskBinding) : RecyclerView.ViewHolder(b.root)

        override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): VH =
            VH(ItemDailyTaskBinding.inflate(LayoutInflater.from(parent.context), parent, false))

        override fun getItemCount() = items.size

        override fun onBindViewHolder(holder: VH, position: Int) {
            val task = items.getOrNull(position) ?: return
            holder.b.title.text = task.title
            holder.b.checkbox.isChecked = task.completed
            holder.b.checkbox.setOnClickListener { listener.onToggle(task) }
            holder.b.root.setOnClickListener { listener.onClick(task) }
            holder.b.btnToday.visibility = if (showToday) View.VISIBLE else View.GONE
            holder.b.btnTomorrow.visibility = if (showTomorrow) View.VISIBLE else View.GONE
            if (showToday) holder.b.btnToday.setOnClickListener { listener.onToday(task) }
            if (showTomorrow) holder.b.btnTomorrow.setOnClickListener { listener.onTomorrow(task) }
        }
    }

    companion object {
        fun intent(context: Context): Intent = Intent(context, DailyPlanActivity::class.java)
    }
}
