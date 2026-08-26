package com.doit.clone.ui.home

import android.Manifest
import android.content.pm.PackageManager
import android.os.Build
import android.os.Bundle
import androidx.activity.result.contract.ActivityResultContracts
import androidx.appcompat.app.AppCompatActivity
import androidx.core.content.ContextCompat
import androidx.lifecycle.lifecycleScope
import androidx.recyclerview.widget.LinearLayoutManager
import com.doit.clone.Graph
import com.doit.clone.R
import com.doit.clone.databinding.ActivityHomeBinding
import com.doit.clone.model.BoxType
import com.doit.clone.reminder.ReminderReceiver
import com.doit.clone.reminder.ReminderScheduler
import com.doit.clone.ui.daily.DailyPlanActivity
import com.doit.clone.ui.daily.DailyReviewActivity
import com.doit.clone.ui.search.SearchActivity
import com.doit.clone.ui.settings.SettingsActivity
import com.doit.clone.ui.task.TaskDetailActivity
import com.doit.clone.util.observe
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.launch

/** 主界面：抽屉导航（20 箱子结构）+ 箱子内容 + FAB */
class HomeActivity : AppCompatActivity() {

    private lateinit var binding: ActivityHomeBinding
    private lateinit var drawerAdapter: DrawerAdapter
    private var currentBox: BoxType = BoxType.TODAY

    private val notifPermission =
        registerForActivityResult(ActivityResultContracts.RequestPermission()) { refreshQuickAdd() }

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        binding = ActivityHomeBinding.inflate(layoutInflater)
        setContentView(binding.root)

        setupToolbar()
        setupDrawer()
        setupFab()

        Graph.taskRepo.observeCounts().observe(this) { counts ->
            drawerAdapter.submit(DrawerAdapter.buildItems(counts), currentBox)
        }

        if (savedInstanceState == null) showBox(BoxType.TODAY)
        refreshQuickAdd()
        requestNotifPermissionIfNeeded()
    }

    private fun setupToolbar() {
        binding.toolbar.setNavigationIcon(R.drawable.ic_menu)
        binding.toolbar.setNavigationOnClickListener { binding.drawerLayout.openDrawer(binding.drawerPane) }
        binding.toolbar.inflateMenu(R.menu.menu_home)
        binding.toolbar.setOnMenuItemClickListener { item ->
            when (item.itemId) {
                R.id.action_add -> startActivity(android.content.Intent(this, com.doit.clone.smartadd.SmartAddActivity::class.java))
                R.id.action_group_by -> currentTaskFragment()?.showGroupByDialog()
                R.id.action_search -> startActivity(SearchActivity.intent(this))
                R.id.action_daily_plan -> startActivity(DailyPlanActivity.intent(this))
                R.id.action_daily_review -> startActivity(DailyReviewActivity.intent(this))
                R.id.action_empty_trash -> emptyTrash()
                R.id.action_settings -> startActivity(SettingsActivity.intent(this))
            }
            true
        }
    }

    private fun setupDrawer() {
        drawerAdapter = DrawerAdapter { type ->
            binding.drawerLayout.closeDrawer(binding.drawerPane)
            if (type.isOrganizeEntry) {
                // 项目/目标/情境/过滤器 → 独立列表页（对应原版四个 ViewPager Activity）
                startActivity(OrganizeListActivityIntent.get(this, type))
            } else {
                showBox(type)
            }
        }
        binding.drawerList.layoutManager = LinearLayoutManager(this)
        binding.drawerList.adapter = drawerAdapter
    }

    private fun setupFab() {
        // 原版无 FAB：添加入口在标题栏（icon_actionbar_add）
    }

    private fun showBox(box: BoxType) {
        currentBox = box
        binding.toolbar.title = boxTitle(box)
        binding.toolbar.menu.findItem(R.id.action_empty_trash)?.isVisible = box == BoxType.TRASH
        binding.toolbar.menu.findItem(R.id.action_group_by)?.isVisible =
            TaskListFragmentSupport.groupByVisible(box)
        binding.toolbar.menu.findItem(R.id.action_add)?.isVisible =
            box != BoxType.COMPLETED && box != BoxType.TRASH
        supportFragmentManager.beginTransaction()
            .replace(R.id.fragment_container, TaskListFragment.newInstance(box))
            .commit()
    }

    private fun emptyTrash() {
        com.google.android.material.dialog.MaterialAlertDialogBuilder(this)
            .setTitle(R.string.action_empty_trash)
            .setPositiveButton(R.string.confirm) { _, _ ->
                lifecycleScope.launch(Dispatchers.IO) { Graph.taskRepo.emptyTrash() }
            }
            .setNegativeButton(R.string.cancel, null)
            .show()
    }

    private fun currentTaskFragment(): TaskListFragment? =
        supportFragmentManager.findFragmentById(R.id.fragment_container) as? TaskListFragment

    private fun boxTitle(box: BoxType): String = when (box) {
        BoxType.INBOX -> getString(R.string.box_inbox)
        BoxType.TODAY -> getString(R.string.box_today)
        BoxType.NEXT -> getString(R.string.box_next)
        BoxType.TOMORROW -> getString(R.string.box_tomorrow)
        BoxType.SCHEDULED -> getString(R.string.box_scheduled)
        BoxType.SOMEDAY -> getString(R.string.box_someday)
        BoxType.WAITING -> getString(R.string.box_waiting)
        BoxType.COMPLETED -> getString(R.string.box_completed)
        BoxType.TRASH -> getString(R.string.box_trash)
        else -> getString(R.string.app_name)
    }

    private fun refreshQuickAdd() {
        if (Graph.settings.quickAddNotification && hasNotifPermission()) {
            ReminderReceiver.notifyQuickAdd(this)
        } else {
            ReminderReceiver.cancelQuickAdd(this)
        }
    }

    private fun hasNotifPermission(): Boolean =
        Build.VERSION.SDK_INT < 33 || ContextCompat.checkSelfPermission(
            this, Manifest.permission.POST_NOTIFICATIONS
        ) == PackageManager.PERMISSION_GRANTED

    private fun requestNotifPermissionIfNeeded() {
        if (Build.VERSION.SDK_INT >= 33 && !hasNotifPermission()) {
            notifPermission.launch(Manifest.permission.POST_NOTIFICATIONS)
        }
    }

    override fun onResume() {
        super.onResume()
        ReminderScheduler.rescheduleAll(this)
        refreshQuickAdd()
    }
}

/** 分组按钮可见性辅助 */
private object TaskListFragmentSupport {
    fun groupByVisible(box: BoxType): Boolean =
        box in setOf(BoxType.TODAY, BoxType.NEXT, BoxType.TOMORROW, BoxType.SCHEDULED, BoxType.SOMEDAY, BoxType.WAITING, BoxType.COMPLETED)
}

/** 组织实体列表页 Intent 工厂 */
object OrganizeListActivityIntent {
    fun get(context: android.content.Context, type: BoxType): android.content.Intent =
        com.doit.clone.ui.organize.OrganizeListActivity.intent(context, type)
}
