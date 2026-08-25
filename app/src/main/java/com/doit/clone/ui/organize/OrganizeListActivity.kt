package com.doit.clone.ui.organize

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
import com.doit.clone.data.repo.OrganizeRepository
import com.doit.clone.databinding.ActivityOrganizeListBinding
import com.doit.clone.databinding.ItemOrganizeBinding
import com.doit.clone.model.BoxType
import com.doit.clone.ui.common.Pickers
import com.doit.clone.util.gone
import com.doit.clone.util.observe
import com.doit.clone.util.visible
import com.google.android.material.dialog.MaterialAlertDialogBuilder
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.flow.map
import kotlinx.coroutines.flow.firstOrNull
import kotlinx.coroutines.launch
import kotlinx.coroutines.withContext

/**
 * 项目/目标/情境/过滤器的列表页（对应原版四个 *ViewPagerActivity 的列表半边）。
 */
class OrganizeListActivity : AppCompatActivity() {

    private lateinit var binding: ActivityOrganizeListBinding
    private lateinit var kind: OrganizeRepository.Kind

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        binding = ActivityOrganizeListBinding.inflate(layoutInflater)
        setContentView(binding.root)

        kind = when (BoxType.from(intent.getStringExtra(EXTRA_BOX) ?: "")) {
            BoxType.PROJECTS -> OrganizeRepository.Kind.PROJECT
            BoxType.GOALS -> OrganizeRepository.Kind.GOAL
            BoxType.CONTEXTS -> OrganizeRepository.Kind.CONTEXT
            BoxType.FILTERS -> OrganizeRepository.Kind.FILTER
            else -> OrganizeRepository.Kind.PROJECT
        }

        binding.toolbar.title = when (kind) {
            OrganizeRepository.Kind.PROJECT -> getString(R.string.box_projects)
            OrganizeRepository.Kind.GOAL -> getString(R.string.box_goals)
            OrganizeRepository.Kind.CONTEXT -> getString(R.string.box_contexts)
            OrganizeRepository.Kind.FILTER -> getString(R.string.box_filters)
        }
        binding.toolbar.setNavigationOnClickListener { finish() }

        val adapter = EntityAdapter { uuid -> openDetail(uuid) }
        binding.organizeList.layoutManager = LinearLayoutManager(this)
        binding.organizeList.adapter = adapter

        observeEntities(adapter)
        binding.fabAdd.setOnClickListener { createEntity() }
    }

    private fun observeEntities(adapter: EntityAdapter) {
        val flow: kotlinx.coroutines.flow.Flow<List<EntityUi>> = when (kind) {
            OrganizeRepository.Kind.PROJECT -> Graph.organizeRepo.projects()
                .map { list -> list.map { EntityUi(it.uuid, it.name) } }
            OrganizeRepository.Kind.GOAL -> Graph.organizeRepo.goals()
                .map { list -> list.map { EntityUi(it.uuid, it.name) } }
            OrganizeRepository.Kind.CONTEXT -> Graph.organizeRepo.contexts()
                .map { list -> list.map { EntityUi(it.uuid, it.name) } }
            OrganizeRepository.Kind.FILTER -> Graph.organizeRepo.filters()
                .map { list -> list.map { EntityUi(it.uuid, it.name) } }
        }
        flow.observe(this) { entities ->
            adapter.submit(entities)
            binding.emptyView.visibility = if (entities.isEmpty()) View.VISIBLE else View.GONE
        }
    }

    private fun openDetail(uuid: String) {
        startActivity(OrganizeDetailActivity.intent(this, kind, uuid))
    }

    private fun createEntity() {
        val title = when (kind) {
            OrganizeRepository.Kind.PROJECT -> getString(R.string.new_project)
            OrganizeRepository.Kind.GOAL -> getString(R.string.new_goal)
            OrganizeRepository.Kind.CONTEXT -> getString(R.string.new_context)
            OrganizeRepository.Kind.FILTER -> getString(R.string.new_filter)
        }
        Pickers.textInput(this, title) { name ->
            if (name.isNotBlank()) {
                if (kind == OrganizeRepository.Kind.FILTER) {
                    createFilter(name)
                } else {
                    lifecycleScope.launch(Dispatchers.IO) { Graph.organizeRepo.create(kind, name) }
                }
            }
        }
    }

    /** 过滤器：名称 → 条件（箱子/优先级/项目/目标/情境/标签，全部可跳过） */
    private fun createFilter(name: String) {
        lifecycleScope.launch(Dispatchers.IO) {
            Graph.organizeRepo.createFilter(name, null, null, null, null, null, null)
        }
    }

    data class EntityUi(val uuid: String, val name: String)

    inner class EntityAdapter(private val onClick: (String) -> Unit) :
        RecyclerView.Adapter<EntityAdapter.VH>() {

        private var items: List<EntityUi> = emptyList()

        fun submit(list: List<EntityUi>) {
            items = list
            notifyDataSetChanged()
        }

        inner class VH(val b: ItemOrganizeBinding) : RecyclerView.ViewHolder(b.root)

        override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): VH =
            VH(ItemOrganizeBinding.inflate(LayoutInflater.from(parent.context), parent, false))

        override fun getItemCount() = items.size

        override fun onBindViewHolder(holder: VH, position: Int) {
            val item = items[position]
            holder.b.organizeName.text = item.name
            holder.b.organizeIcon.setImageResource(iconRes())
            holder.b.organizeCount.text = ""
            holder.b.root.setOnClickListener { onClick(item.uuid) }
            holder.b.root.setOnLongClickListener { renameOrDelete(item); true }
        }
    }

    private fun iconRes(): Int = when (kind) {
        OrganizeRepository.Kind.PROJECT -> R.drawable.ic_projects
        OrganizeRepository.Kind.GOAL -> R.drawable.ic_goals
        OrganizeRepository.Kind.CONTEXT -> R.drawable.ic_contexts
        OrganizeRepository.Kind.FILTER -> R.drawable.ic_filters
    }

    private fun renameOrDelete(item: EntityUi) {
        val options = arrayOf(getString(R.string.rename), getString(R.string.delete))
        MaterialAlertDialogBuilder(this)
            .setTitle(item.name)
            .setItems(options) { _, which ->
                if (which == 0) {
                    Pickers.textInput(this, getString(R.string.rename), item.name) { newName ->
                        lifecycleScope.launch(Dispatchers.IO) {
                            Graph.organizeRepo.rename(kind, item.uuid, newName)
                        }
                    }
                } else {
                    lifecycleScope.launch(Dispatchers.IO) {
                        Graph.organizeRepo.delete(kind, item.uuid)
                    }
                }
            }
            .show()
    }

    companion object {
        private const val EXTRA_BOX = "box"

        fun intent(context: Context, box: BoxType): Intent =
            Intent(context, OrganizeListActivity::class.java).putExtra(EXTRA_BOX, box.name)
    }
}
