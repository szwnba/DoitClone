package com.doit.clone.ui.search

import android.content.Context
import android.content.Intent
import android.os.Bundle
import android.text.Editable
import android.text.TextWatcher
import android.view.View
import android.widget.EditText
import androidx.appcompat.app.AppCompatActivity
import androidx.lifecycle.lifecycleScope
import androidx.recyclerview.widget.LinearLayoutManager
import com.doit.clone.Graph
import com.doit.clone.R
import com.doit.clone.data.db.entity.TaskEntity
import com.doit.clone.databinding.ActivitySearchBinding
import com.doit.clone.ui.common.Row
import com.doit.clone.ui.common.TaskGrouper
import com.doit.clone.ui.common.TaskListAdapter
import com.doit.clone.ui.task.TaskDetailActivity
import com.doit.clone.util.observe
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.ExperimentalCoroutinesApi
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.combine
import kotlinx.coroutines.flow.flatMapLatest
import kotlinx.coroutines.flow.flowOf
import kotlinx.coroutines.launch

/** 全文搜索（标题 + 备注，还原原版 SearchActivity） */
class SearchActivity : AppCompatActivity(), TaskListAdapter.Listener {

    private lateinit var binding: ActivitySearchBinding
    private lateinit var adapter: TaskListAdapter
    private val queryFlow = MutableStateFlow("")

    @OptIn(ExperimentalCoroutinesApi::class)
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        binding = ActivitySearchBinding.inflate(layoutInflater)
        setContentView(binding.root)

        binding.toolbar.setNavigationIcon(R.drawable.ic_arrow_back)
        binding.toolbar.setNavigationOnClickListener { finish() }

        val input = EditText(this).apply {
            hint = getString(R.string.search)
            setSingleLine()
            setPadding(24, 0, 24, 0)
            addTextChangedListener(object : TextWatcher {
                override fun beforeTextChanged(s: CharSequence?, a: Int, b: Int, c: Int) {}
                override fun onTextChanged(s: CharSequence?, a: Int, b: Int, c: Int) {}
                override fun afterTextChanged(s: Editable?) {
                    lifecycleScope.launch { queryFlow.emit(s?.toString() ?: "") }
                }
            })
        }
        binding.toolbar.addView(input)

        adapter = TaskListAdapter(this, Graph.settings.dateFormat, com.doit.clone.model.BoxType.INBOX)
        binding.searchList.layoutManager = LinearLayoutManager(this)
        binding.searchList.adapter = adapter

        combine(
            queryFlow.flatMapLatest { q ->
                if (q.isBlank()) flowOf(emptyList()) else Graph.taskRepo.search(q.trim())
            },
            Graph.organizeRepo.projects(),
            Graph.organizeRepo.contexts()
        ) { tasks, projects, contexts ->
            val pMap = projects.associate { it.uuid to it.name }
            val cMap = contexts.associate { it.uuid to it.name }
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

    override fun onToggle(task: TaskEntity) {
        lifecycleScope.launch(Dispatchers.IO) { Graph.taskRepo.toggleComplete(task.uuid) }
    }

    override fun onClick(task: TaskEntity) {
        startActivity(TaskDetailActivity.intent(this, task.uuid))
    }

    override fun onLongClick(task: TaskEntity) {}
    override fun onMarkToday(task: TaskEntity) {}
    override fun onSelectionChanged(count: Int) {}

    companion object {
        fun intent(context: Context): Intent = Intent(context, SearchActivity::class.java)
    }
}
