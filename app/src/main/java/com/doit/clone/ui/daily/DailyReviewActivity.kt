package com.doit.clone.ui.daily

import android.content.Context
import android.content.Intent
import android.os.Bundle
import androidx.appcompat.app.AppCompatActivity
import androidx.lifecycle.lifecycleScope
import androidx.recyclerview.widget.LinearLayoutManager
import com.doit.clone.Graph
import com.doit.clone.R
import com.doit.clone.databinding.ActivityDailyReviewBinding
import com.doit.clone.model.BoxType
import com.doit.clone.ui.task.TaskDetailActivity
import com.doit.clone.util.observe
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.launch

/**
 * 每日回顾（还原原版 DailyReviewActivity）：
 * 今日完成清单 + 逾期未完成清单 + 统计。
 */
class DailyReviewActivity : AppCompatActivity() {

    private lateinit var binding: ActivityDailyReviewBinding

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        binding = ActivityDailyReviewBinding.inflate(layoutInflater)
        setContentView(binding.root)
        binding.toolbar.setNavigationOnClickListener { finish() }

        val completedAdapter = DailyPlanActivity.DailyTaskAdapter(
            showToday = false, showTomorrow = false,
            listener = object : DailyPlanActivity.DailyTaskAdapter.Listener {
                override fun onToggle(task: com.doit.clone.data.db.entity.TaskEntity) {
                    lifecycleScope.launch(Dispatchers.IO) { Graph.taskRepo.toggleComplete(task.uuid) }
                }
                override fun onClick(task: com.doit.clone.data.db.entity.TaskEntity) {
                    startActivity(TaskDetailActivity.intent(this@DailyReviewActivity, task.uuid))
                }
                override fun onToday(task: com.doit.clone.data.db.entity.TaskEntity) {}
                override fun onTomorrow(task: com.doit.clone.data.db.entity.TaskEntity) {}
            }
        )
        val overdueAdapter = DailyPlanActivity.DailyTaskAdapter(
            showToday = false, showTomorrow = true,
            listener = object : DailyPlanActivity.DailyTaskAdapter.Listener {
                override fun onToggle(task: com.doit.clone.data.db.entity.TaskEntity) {
                    lifecycleScope.launch(Dispatchers.IO) { Graph.taskRepo.toggleComplete(task.uuid) }
                }
                override fun onClick(task: com.doit.clone.data.db.entity.TaskEntity) {
                    startActivity(TaskDetailActivity.intent(this@DailyReviewActivity, task.uuid))
                }
                override fun onToday(task: com.doit.clone.data.db.entity.TaskEntity) {}
                override fun onTomorrow(task: com.doit.clone.data.db.entity.TaskEntity) {
                    lifecycleScope.launch(Dispatchers.IO) {
                        Graph.taskRepo.moveTo(task.uuid, BoxType.TOMORROW)
                    }
                }
            }
        )

        binding.listCompleted.layoutManager = LinearLayoutManager(this)
        binding.listCompleted.adapter = completedAdapter
        binding.listOverdue.layoutManager = LinearLayoutManager(this)
        binding.listOverdue.adapter = overdueAdapter

        Graph.taskRepo.todayCompleted().observe(this) { list ->
            completedAdapter.submit(list)
            binding.statCompleted.text = getString(R.string.daily_review_stat_completed, list.size)
        }
        Graph.taskRepo.overdue().observe(this) { list ->
            overdueAdapter.submit(list)
            binding.statOverdue.text = getString(R.string.daily_review_stat_overdue, list.size)
        }
    }

    companion object {
        fun intent(context: Context): Intent = Intent(context, DailyReviewActivity::class.java)
    }
}
