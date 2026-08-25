package com.doit.clone.ui.home

import android.os.Bundle
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.fragment.app.Fragment
import androidx.lifecycle.lifecycleScope
import androidx.recyclerview.widget.ItemTouchHelper
import androidx.recyclerview.widget.LinearLayoutManager
import androidx.recyclerview.widget.RecyclerView
import com.doit.clone.Graph
import com.doit.clone.R
import com.doit.clone.data.db.entity.TaskEntity
import com.doit.clone.databinding.FragmentTaskListBinding
import com.doit.clone.model.BoxType
import com.doit.clone.model.GroupByType
import com.doit.clone.ui.common.Pickers
import com.doit.clone.ui.common.Row
import com.doit.clone.ui.common.TaskGrouper
import com.doit.clone.ui.common.TaskListAdapter
import com.doit.clone.ui.task.TaskDetailActivity
import com.doit.clone.util.gone
import com.doit.clone.util.observe
import com.doit.clone.util.visible
import com.google.android.material.dialog.MaterialAlertDialogBuilder
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.combine
import kotlinx.coroutines.launch
import kotlinx.coroutines.withContext

/**
 * 单个箱子的任务列表：观察箱子数据 → 按设置分组 → 展示。
 * 拖拽排序（仅不分组时）、右滑完成、左滑进垃圾桶。
 */
class TaskListFragment : Fragment(), TaskListAdapter.Listener {

    private var _binding: FragmentTaskListBinding? = null
    private val binding get() = _binding!!

    private lateinit var box: BoxType
    private lateinit var adapter: TaskListAdapter

    /** 分组方式的响应式状态：切换分组时自动重算列表 */
    private val groupByFlow = MutableStateFlow(GroupByType.NONE)

    /** 拖拽后的待持久化顺序（submitList 异步，clearView 时 currentList 可能未更新） */
    private var pendingOrder: List<String>? = null

    override fun onCreateView(inflater: LayoutInflater, container: ViewGroup?, savedInstanceState: Bundle?): View {
        _binding = FragmentTaskListBinding.inflate(inflater, container, false)
        return binding.root
    }

    override fun onViewCreated(view: View, savedInstanceState: Bundle?) {
        box = BoxType.from(requireArguments().getString(ARG_BOX) ?: "TODAY") ?: BoxType.TODAY
        groupByFlow.value = Graph.settings.groupBy(box.name)

        adapter = TaskListAdapter(this, Graph.settings.dateFormat)
        binding.taskList.layoutManager = LinearLayoutManager(requireContext())
        binding.taskList.adapter = adapter

        if (box == BoxType.TRASH) {
            binding.emptyView.text = getString(R.string.empty_trash)
        }

        attachSwipe()
        observeData()
    }

    private fun observeData() {
        combine(
            Graph.taskRepo.observeBox(box),
            Graph.organizeRepo.projects(),
            Graph.organizeRepo.goals(),
            Graph.organizeRepo.contexts(),
            groupByFlow
        ) { tasks, projects, goals, contexts, groupBy ->
            val pMap = projects.associate { it.uuid to it.name }
            val cMap = contexts.associate { it.uuid to it.name }
            TaskGrouper.group(
                tasks, groupBy,
                { uuid -> uuid?.let { pMap[it] } },
                { uuid -> uuid?.let { cMap[it] } },
                Graph.settings.dateFormat
            )
        }.observe(viewLifecycleOwner) { rows ->
            adapter.submitList(rows)
            binding.emptyView.visibility = if (rows.isEmpty()) View.VISIBLE else View.GONE
        }
    }

    private fun attachSwipe() {
        val swipeDirs = if (box == BoxType.COMPLETED) 0
        else ItemTouchHelper.LEFT or ItemTouchHelper.RIGHT

        val callback = object : ItemTouchHelper.SimpleCallback(0, swipeDirs) {

            override fun getMovementFlags(recyclerView: RecyclerView, viewHolder: RecyclerView.ViewHolder): Int {
                val position = viewHolder.bindingAdapterPosition
                if (position == RecyclerView.NO_POSITION) return 0
                if (adapter.currentList.getOrNull(position) !is Row.TaskRow) return 0
                val drag = if (groupByFlow.value == GroupByType.NONE)
                    ItemTouchHelper.UP or ItemTouchHelper.DOWN else 0
                return makeMovementFlags(drag, swipeDirs)
            }

            override fun onMove(
                recyclerView: RecyclerView,
                viewHolder: RecyclerView.ViewHolder,
                target: RecyclerView.ViewHolder
            ): Boolean {
                val from = viewHolder.bindingAdapterPosition
                val to = target.bindingAdapterPosition
                if (from == RecyclerView.NO_POSITION || to == RecyclerView.NO_POSITION || from == to) return false
                val rows = adapter.currentList.toMutableList()
                if (rows.getOrNull(from) !is Row.TaskRow || rows.getOrNull(to) !is Row.TaskRow) return false
                val item = rows.removeAt(from)
                rows.add(to, item)
                adapter.submitList(rows)
                pendingOrder = rows.filterIsInstance<Row.TaskRow>().map { it.task.uuid }
                return true
            }

            override fun onSwiped(viewHolder: RecyclerView.ViewHolder, direction: Int) {
                val position = viewHolder.bindingAdapterPosition
                if (position == RecyclerView.NO_POSITION) return
                val row = adapter.currentList.getOrNull(position)
                if (row !is Row.TaskRow) return
                val task = row.task
                viewLifecycleOwner.lifecycleScope.launch(Dispatchers.IO) {
                    if (direction == ItemTouchHelper.RIGHT) {
                        Graph.taskRepo.toggleComplete(task.uuid)
                    } else {
                        Graph.taskRepo.trash(task.uuid)
                    }
                }
            }

            override fun clearView(recyclerView: RecyclerView, viewHolder: RecyclerView.ViewHolder) {
                super.clearView(recyclerView, viewHolder)
                val order = pendingOrder
                pendingOrder = null
                if (order != null && order.size > 1) {
                    viewLifecycleOwner.lifecycleScope.launch(Dispatchers.IO) {
                        Graph.taskRepo.reorder(order)
                    }
                }
            }
        }
        ItemTouchHelper(callback).attachToRecyclerView(binding.taskList)
    }

    // ===== TaskListAdapter.Listener =====

    override fun onToggle(task: TaskEntity) {
        viewLifecycleOwner.lifecycleScope.launch(Dispatchers.IO) {
            Graph.taskRepo.toggleComplete(task.uuid)
        }
    }

    override fun onClick(task: TaskEntity) {
        startActivity(TaskDetailActivity.intent(requireContext(), task.uuid))
    }

    override fun onLongClick(task: TaskEntity) {
        if (box == BoxType.TRASH) {
            MaterialAlertDialogBuilder(requireContext())
                .setTitle(task.title)
                .setItems(arrayOf(getString(R.string.action_restore), getString(R.string.delete))) { _, which ->
                    viewLifecycleOwner.lifecycleScope.launch(Dispatchers.IO) {
                        if (which == 0) Graph.taskRepo.restore(task.uuid)
                        else Graph.taskRepo.deleteForever(task.uuid)
                    }
                }
                .show()
            return
        }
        val options = arrayOf(
            if (task.completed) getString(R.string.action_uncomplete) else getString(R.string.action_complete),
            getString(R.string.task_move_to),
            getString(R.string.action_trash)
        )
        MaterialAlertDialogBuilder(requireContext())
            .setTitle(task.title)
            .setItems(options) { _, which ->
                viewLifecycleOwner.lifecycleScope.launch(Dispatchers.IO) {
                    when (which) {
                        0 -> Graph.taskRepo.toggleComplete(task.uuid)
                        1 -> withContext(Dispatchers.Main) { showMoveDialog(task) }
                        2 -> Graph.taskRepo.trash(task.uuid)
                    }
                }
            }
            .show()
    }

    private fun showMoveDialog(task: TaskEntity) {
        val boxes = listOf(
            BoxType.INBOX to "收件箱",
            BoxType.TODAY to "今日待办",
            BoxType.TOMORROW to "明日待办",
            BoxType.NEXT to "下一步",
            BoxType.SCHEDULED to "日程",
            BoxType.SOMEDAY to "将来/也许",
            BoxType.WAITING to "等待"
        )
        Pickers.radio(
            requireContext(),
            getString(R.string.task_move_to),
            boxes.map { it.second },
            boxes.indexOfFirst { it.first.name == task.attribute }
        ) { index ->
            val target = boxes[index].first
            viewLifecycleOwner.lifecycleScope.launch(Dispatchers.IO) {
                Graph.taskRepo.moveTo(task.uuid, target)
            }
        }
    }

    /** 工具栏「分组查看」入口（由 HomeActivity 调用） */
    fun showGroupByDialog() {
        val options = TaskGrouper.optionsFor(box.name)
        val current = groupByFlow.value
        Pickers.radio(
            requireContext(),
            getString(R.string.group_by),
            options.map { TaskGrouper.label(it) },
            options.indexOf(current)
        ) { index ->
            Graph.settings.setGroupBy(box.name, options[index])
            groupByFlow.value = options[index]
        }
    }

    override fun onDestroyView() {
        super.onDestroyView()
        _binding = null
    }

    companion object {
        private const val ARG_BOX = "box"

        fun newInstance(box: BoxType): TaskListFragment = TaskListFragment().apply {
            arguments = Bundle().apply { putString(ARG_BOX, box.name) }
        }
    }
}
