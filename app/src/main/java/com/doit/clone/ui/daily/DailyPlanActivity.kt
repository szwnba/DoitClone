package com.doit.clone.ui.daily

import android.content.Context
import android.content.Intent
import android.os.Bundle
import androidx.appcompat.app.AppCompatActivity
import androidx.fragment.app.Fragment
import androidx.lifecycle.lifecycleScope
import androidx.recyclerview.widget.RecyclerView
import androidx.viewpager2.widget.ViewPager2
import com.doit.clone.Graph
import com.doit.clone.R
import com.doit.clone.data.db.entity.TaskEntity
import com.doit.clone.databinding.ActivityDailyPlanBinding
import com.doit.clone.model.BoxType
import com.doit.clone.ui.common.Pickers
import com.doit.clone.util.toast
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.flow.firstOrNull
import kotlinx.coroutines.launch
import kotlinx.coroutines.withContext

/**
 * 每日计划 —— 移植原版 DailyPlanActivity 的向导式结构：
 * ViewPager 逐张翻「今日任务卡」，蓝色底栏（今天 / 预估时间 / 删除），
 * 末页为汇总（已安排 / 剩余工作时间）+「再从下一步行动中选几条」。
 */
class DailyPlanActivity : AppCompatActivity(), PlanDoneFragment.Host {

    private lateinit var binding: ActivityDailyPlanBinding
    private val tasks = mutableListOf<TaskEntity>()
    private var workTimeMinutes = 480   // 默认 8 小时（对应原版 initWorkTime）

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        binding = ActivityDailyPlanBinding.inflate(layoutInflater)
        setContentView(binding.root)
        binding.toolbar.setNavigationOnClickListener { finish() }

        lifecycleScope.launch(Dispatchers.IO) {
            val today = Graph.taskRepo.observeBox(BoxType.TODAY).firstOrNull() ?: emptyList()
            tasks.clear()
            tasks.addAll(today)
            withContext(Dispatchers.Main) { setupPager() }
        }

        binding.todayBtn.setOnClickListener { onTodayClick() }
        binding.estimateBtn.setOnClickListener { onEstimateClick() }
        binding.deleteBtn.setOnClickListener { onDeleteClick() }
    }

    private fun setupPager() {
        binding.viewpager.adapter = object : androidx.viewpager2.adapter.FragmentStateAdapter(this) {
            override fun getItemCount() = tasks.size + 1  // 末页汇总
            override fun createFragment(position: Int): Fragment =
                if (position < tasks.size) PlanPageFragment.newInstance(tasks[position].uuid)
                else PlanDoneFragment.newInstance()
        }
    }

    private fun currentTask(): TaskEntity? {
        val pos = binding.viewpager.currentItem
        return tasks.getOrNull(pos)
    }

    private fun advance() {
        val next = (binding.viewpager.currentItem + 1).coerceAtMost(tasks.size)
        binding.viewpager.setCurrentItem(next, true)
    }

    /** 还原 onTodayClick：安排到今天（保持时间则设今天）*/
    fun onTodayClick() {
        val task = currentTask() ?: return
        lifecycleScope.launch(Dispatchers.IO) {
            Graph.taskRepo.moveTo(task.uuid, BoxType.TODAY)
            withContext(Dispatchers.Main) { advance() }
        }
    }

    /** 还原 onEstimateClick：预估时间输入（分钟）*/
    fun onEstimateClick() {
        val task = currentTask() ?: return
        Pickers.textInput(this, getString(R.string.time_estimated) + "（分钟）",
            task.estimatedTime?.toString() ?: "") { text ->
            val minutes = text.trim().toIntOrNull()
            if (minutes != null) {
                lifecycleScope.launch(Dispatchers.IO) {
                    Graph.taskRepo.update(task.copy(estimatedTime = minutes))
                    withContext(Dispatchers.Main) {
                        toast(getString(R.string.minutes_fmt, minutes))
                        advance()
                    }
                }
            }
        }
    }

    /** 还原 onDeleteClick：移到垃圾桶并翻下一页 */
    fun onDeleteClick() {
        val task = currentTask() ?: return
        lifecycleScope.launch(Dispatchers.IO) {
            Graph.taskRepo.trash(task.uuid)
            withContext(Dispatchers.Main) { advance() }
        }
    }

    override fun arrangedMinutes(): Int =
        tasks.filter { !it.completed }.sumOf { it.estimatedTime ?: 0 }

    override fun leftMinutes(): Int = (workTimeMinutes - arrangedMinutes()).coerceAtLeast(0)

    /** 还原「再从下一步行动中选几条」：把下一步任务追加进计划向导 */
    override fun loadFromNext() {
        lifecycleScope.launch(Dispatchers.IO) {
            val next = Graph.taskRepo.observeBox(BoxType.NEXT).firstOrNull() ?: emptyList()
            val newOnes = next.filter { n -> tasks.none { it.uuid == n.uuid } }
            if (newOnes.isEmpty()) {
                withContext(Dispatchers.Main) { toast("下一步没有更多任务了") }
                return@launch
            }
            tasks.addAll(newOnes)
            withContext(Dispatchers.Main) {
                binding.viewpager.adapter?.notifyDataSetChanged()
                binding.viewpager.setCurrentItem(tasks.size - newOnes.size, true)
            }
        }
    }

    companion object {
        fun intent(context: Context): Intent = Intent(context, DailyPlanActivity::class.java)
    }
}
