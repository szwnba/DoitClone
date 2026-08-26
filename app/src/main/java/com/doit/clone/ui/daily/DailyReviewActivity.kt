package com.doit.clone.ui.daily

import android.content.Context
import android.content.Intent
import android.os.Bundle
import androidx.appcompat.app.AppCompatActivity
import androidx.fragment.app.Fragment
import androidx.viewpager2.adapter.FragmentStateAdapter
import androidx.lifecycle.lifecycleScope
import com.doit.clone.Graph
import com.doit.clone.R
import com.doit.clone.data.db.entity.TaskEntity
import com.doit.clone.databinding.ActivityDailyReviewBinding
import com.doit.clone.model.BoxType
import com.doit.clone.ui.common.Pickers
import com.doit.clone.util.DateUtils
import com.doit.clone.util.toast
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.flow.firstOrNull
import kotlinx.coroutines.launch
import kotlinx.coroutines.withContext

/**
 * 每日回顾 —— 移植原版 DailyReviewActivity：
 * ViewPager 翻「今日完成任务卡」，底栏（明天 / 记录实耗时间 / 删除），
 * 末页为五星自评 + 评语（还原 fragment_daily_review_done）。
 */
class DailyReviewActivity : AppCompatActivity() {

    private lateinit var binding: ActivityDailyReviewBinding
    private val tasks = mutableListOf<TaskEntity>()

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        binding = ActivityDailyReviewBinding.inflate(layoutInflater)
        setContentView(binding.root)
        binding.toolbar.setNavigationOnClickListener { finish() }

        lifecycleScope.launch(Dispatchers.IO) {
            val done = Graph.taskRepo.todayCompleted().firstOrNull() ?: emptyList()
            tasks.clear()
            tasks.addAll(done)
            withContext(Dispatchers.Main) {
                binding.viewpager.adapter = object : androidx.viewpager2.adapter.FragmentStateAdapter(this@DailyReviewActivity) {
                    override fun getItemCount() = tasks.size + 1
                    override fun createFragment(position: Int): Fragment =
                        if (position < tasks.size) PlanPageFragment.newInstance(tasks[position].uuid)
                        else ReviewDoneFragment()
                }
            }
        }

        binding.tomorrowBtn.setOnClickListener { onTomorrowClick() }
        binding.recordTimeSpentBtn.setOnClickListener { onSpentTimeClick() }
        binding.deleteBtn.setOnClickListener { onDeleteClick() }
    }

    private fun currentTask(): TaskEntity? =
        tasks.getOrNull(binding.viewpager.currentItem)

    private fun advance() {
        binding.viewpager.setCurrentItem(
            (binding.viewpager.currentItem + 1).coerceAtMost(tasks.size), true)
    }

    /** 还原 onTomorrowClick：取消完成并推迟到明天 */
    fun onTomorrowClick() {
        val task = currentTask() ?: return
        lifecycleScope.launch(Dispatchers.IO) {
            Graph.taskRepo.restore(task.uuid)
            Graph.taskRepo.update(
                task.copy(completed = false, completedAt = null,
                    attribute = "PLAN", startAt = DateUtils.startOfTomorrow()))
            withContext(Dispatchers.Main) { advance() }
        }
    }

    /** 还原 onSpentTimeClick：记录实耗时间（分钟） */
    fun onSpentTimeClick() {
        val task = currentTask() ?: return
        Pickers.textInput(this, getString(R.string.record_time_spent) + "（分钟）",
            task.spentTime?.toString() ?: "") { text ->
            val minutes = text.trim().toIntOrNull()
            if (minutes != null) {
                lifecycleScope.launch(Dispatchers.IO) {
                    Graph.taskRepo.update(task.copy(spentTime = minutes))
                    withContext(Dispatchers.Main) {
                        toast(getString(R.string.minutes_fmt, minutes))
                        advance()
                    }
                }
            }
        }
    }

    /** 还原 onDeleteClick：移到垃圾桶 */
    fun onDeleteClick() {
        val task = currentTask() ?: return
        lifecycleScope.launch(Dispatchers.IO) {
            Graph.taskRepo.trash(task.uuid)
            withContext(Dispatchers.Main) { advance() }
        }
    }

    companion object {
        fun intent(context: Context): Intent = Intent(context, DailyReviewActivity::class.java)
    }
}
