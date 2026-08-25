package com.doit.clone.ui.organize

import android.content.Context
import android.content.Intent
import android.os.Bundle
import android.view.View
import androidx.appcompat.app.AppCompatActivity
import androidx.lifecycle.lifecycleScope
import androidx.recyclerview.widget.LinearLayoutManager
import com.doit.clone.Graph
import com.doit.clone.R
import com.doit.clone.data.db.entity.TaskEntity
import com.doit.clone.data.repo.OrganizeRepository
import com.doit.clone.databinding.ActivityOrganizeDetailBinding
import com.doit.clone.ui.common.Row
import com.doit.clone.ui.common.TaskGrouper
import com.doit.clone.ui.common.TaskListAdapter
import com.doit.clone.ui.common.Pickers
import com.doit.clone.ui.task.TaskDetailActivity
import com.doit.clone.util.observe
import com.google.android.material.dialog.MaterialAlertDialogBuilder
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.flow.combine
import kotlinx.coroutines.launch
import kotlinx.coroutines.withContext

/**
 * 组织实体详情：实体信息 + 该实体下的任务列表（对应原版 *ViewPagerActivity 的详情半边）。
 */
class OrganizeDetailActivity : AppCompatActivity(), TaskListAdapter.Listener {

    private lateinit var binding: ActivityOrganizeDetailBinding
    private lateinit var kind: OrganizeRepository.Kind
    private var uuid: String = ""
    private var entityName: String = ""

    private lateinit var adapter: TaskListAdapter

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        binding = ActivityOrganizeDetailBinding.inflate(layoutInflater)
        setContentView(binding.root)

        kind = (intent.getSerializableExtra(EXTRA_KIND) as? OrganizeRepository.Kind)
            ?: OrganizeRepository.Kind.PROJECT
        uuid = intent.getStringExtra(EXTRA_UUID) ?: ""

        binding.toolbar.setNavigationOnClickListener { finish() }
        binding.toolbar.inflateMenu(R.menu.menu_organize_detail)
        binding.toolbar.setOnMenuItemClickListener { item ->
            when (item.itemId) {
                R.id.action_rename -> rename()
                R.id.action_delete -> deleteEntity()
            }
            true
        }

        adapter = TaskListAdapter(this, Graph.settings.dateFormat)
        binding.detailTaskList.layoutManager = LinearLayoutManager(this)
        binding.detailTaskList.adapter = adapter

        observe()
    }

    private fun observe() {
        if (kind == OrganizeRepository.Kind.FILTER) {
            lifecycleScope.launch(Dispatchers.IO) {
                val f = Graph.organizeRepo.getFilter(uuid)
                val flow = Graph.taskRepo.observeFilter(
                    f?.attribute, f?.priority, f?.projectUuid, f?.goalUuid, f?.contextUuid, f?.tag
                )
                withContext(Dispatchers.Main) {
                    entityName = f?.name ?: ""
                    binding.toolbar.title = entityName
                    bindTaskFlow(flow)
                }
            }
            return
        }
        val taskFlow = when (kind) {
            OrganizeRepository.Kind.PROJECT -> Graph.taskRepo.observeByProject(uuid)
            OrganizeRepository.Kind.GOAL -> Graph.taskRepo.observeByGoal(uuid)
            else -> Graph.taskRepo.observeByContext(uuid)
        }
        bindTaskFlow(taskFlow)
    }

    private fun bindTaskFlow(taskFlow: kotlinx.coroutines.flow.Flow<List<com.doit.clone.data.db.entity.TaskEntity>>) {
        combine(
            taskFlow,
            Graph.organizeRepo.projects(),
            Graph.organizeRepo.goals(),
            Graph.organizeRepo.contexts()
        ) { tasks, projects, goals, contexts ->
            val pMap = projects.associate { it.uuid to it.name }
            val gMap = goals.associate { it.uuid to it.name }
            val cMap = contexts.associate { it.uuid to it.name }
            if (kind != OrganizeRepository.Kind.FILTER) {
                entityName = when (kind) {
                    OrganizeRepository.Kind.PROJECT -> pMap[uuid]
                    OrganizeRepository.Kind.GOAL -> gMap[uuid]
                    else -> cMap[uuid]
                } ?: entityName
                binding.toolbar.title = entityName.ifBlank { getString(R.string.app_name) }
            }
            binding.detailSubtitle.text = getString(R.string.task_count, tasks.size)
            TaskGrouper.group(
                tasks, com.doit.clone.model.GroupByType.NONE,
                { u -> u?.let { pMap[it] } },
                { u -> u?.let { cMap[it] } },
                Graph.settings.dateFormat
            )
        }.observe(this) { rows ->
            adapter.submitList(rows)
            binding.emptyView.visibility = if (rows.isEmpty()) View.VISIBLE else View.GONE
        }
    }

    private fun rename() {
        Pickers.textInput(this, getString(R.string.rename), entityName) { newName ->
            lifecycleScope.launch(Dispatchers.IO) {
                Graph.organizeRepo.rename(kind, uuid, newName)
                withContext(Dispatchers.Main) {
                    entityName = newName
                    binding.toolbar.title = newName
                }
            }
        }
    }

    private fun deleteEntity() {
        MaterialAlertDialogBuilder(this)
            .setTitle(getString(R.string.delete) + "「${entityName}」？")
            .setPositiveButton(R.string.confirm) { _, _ ->
                lifecycleScope.launch(Dispatchers.IO) {
                    Graph.organizeRepo.delete(kind, uuid)
                    withContext(Dispatchers.Main) { finish() }
                }
            }
            .setNegativeButton(R.string.cancel, null)
            .show()
    }

    override fun onToggle(task: TaskEntity) {
        lifecycleScope.launch(Dispatchers.IO) { Graph.taskRepo.toggleComplete(task.uuid) }
    }

    override fun onClick(task: TaskEntity) {
        startActivity(TaskDetailActivity.intent(this, task.uuid))
    }

    override fun onLongClick(task: TaskEntity) {
        // 详情页长按仅提供删除到垃圾桶
        lifecycleScope.launch(Dispatchers.IO) { Graph.taskRepo.trash(task.uuid) }
    }

    companion object {
        private const val EXTRA_KIND = "kind"
        private const val EXTRA_UUID = "uuid"

        fun intent(context: Context, kind: OrganizeRepository.Kind, uuid: String): Intent =
            Intent(context, OrganizeDetailActivity::class.java).apply {
                putExtra(EXTRA_KIND, kind)
                putExtra(EXTRA_UUID, uuid)
            }
    }
}
