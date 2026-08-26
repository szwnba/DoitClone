package com.doit.clone.ui.home

import android.os.Bundle
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.appcompat.app.AppCompatActivity
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
import com.doit.clone.util.observe
import com.google.android.material.dialog.MaterialAlertDialogBuilder
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.combine
import kotlinx.coroutines.launch
import kotlinx.coroutines.withContext

/**
 * 单个箱子的任务列表。还原原版交互：
 * - 今日/下一步箱复选框=立即处理；其他箱=完成
 * - 明日/日程箱带"移到今天"按钮
 * - 长按进入多选（Contextual Action Bar：全选/完成/移动/删除）
 * - 右滑完成、左滑垃圾桶（多选时禁用）
 */
class TaskListFragment : Fragment(), TaskListAdapter.Listener {

    private var _binding: FragmentTaskListBinding? = null
    private val binding get() = _binding!!

    private lateinit var box: BoxType
    private lateinit var adapter: TaskListAdapter
    private val groupByFlow = MutableStateFlow(GroupByType.NONE)
    private var pendingOrder: List<String>? = null
    private var actionMode: androidx.appcompat.view.ActionMode? = null

    override fun onCreateView(inflater: LayoutInflater, container: ViewGroup?, savedInstanceState: Bundle?): View {
        _binding = FragmentTaskListBinding.inflate(inflater, container, false)
        return binding.root
    }

    override fun onViewCreated(view: View, savedInstanceState: Bundle?) {
        box = BoxType.from(requireArguments().getString(ARG_BOX) ?: "TODAY") ?: BoxType.TODAY
        groupByFlow.value = Graph.settings.groupBy(box.name)

        adapter = TaskListAdapter(this, Graph.settings.dateFormat, box)
        binding.taskList.layoutManager = LinearLayoutManager(requireContext())
        binding.taskList.adapter = adapter

        if (box == BoxType.TRASH) binding.emptyView.text = getString(R.string.empty_trash)

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

            override fun isLongPressDragEnabled(): Boolean = false

            override fun getMovementFlags(recyclerView: RecyclerView, viewHolder: RecyclerView.ViewHolder): Int {
                if (adapter.selectionMode) return 0
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
            val isDoitNowBox = box == BoxType.TODAY || box == BoxType.NEXT
            if (isDoitNowBox && !task.completed) {
                // 今日/下一步箱：立即处理切换（还原 doitNow/notNow）
                if (task.now) Graph.taskRepo.notNow(task.uuid) else Graph.taskRepo.doitNow(task.uuid)
            } else {
                Graph.taskRepo.toggleComplete(task.uuid)
            }
        }
    }

    override fun onMarkToday(task: TaskEntity) {
        viewLifecycleOwner.lifecycleScope.launch(Dispatchers.IO) {
            Graph.taskRepo.moveTo(task.uuid, BoxType.TODAY)
        }
    }

    override fun onClick(task: TaskEntity) {
        startActivity(TaskDetailActivity.intent(requireContext(), task.uuid))
    }

    override fun onLongClick(task: TaskEntity) {
        if (box == BoxType.TRASH || box == BoxType.COMPLETED) {
            showTrashMenu(task)
            return
        }
        adapter.startSelection(task)
        startActionMode()
    }

    private fun showTrashMenu(task: TaskEntity) {
        MaterialAlertDialogBuilder(requireContext())
            .setTitle(task.title)
            .setItems(arrayOf(getString(R.string.action_restore), getString(R.string.delete))) { _, which ->
                viewLifecycleOwner.lifecycleScope.launch(Dispatchers.IO) {
                    if (which == 0) Graph.taskRepo.restore(task.uuid)
                    else Graph.taskRepo.deleteForever(task.uuid)
                }
            }
            .show()
    }

    // ===== 多选 CAB =====

    private fun startActionMode() {
        val activity = requireActivity() as? AppCompatActivity ?: return
        actionMode?.finish()
        actionMode = activity.startSupportActionMode(object : androidx.appcompat.view.ActionMode.Callback {
            override fun onCreateActionMode(mode: androidx.appcompat.view.ActionMode, menu: android.view.Menu): Boolean {
                mode.menuInflater.inflate(R.menu.menu_multiselect, menu)
                return true
            }

            override fun onPrepareActionMode(mode: androidx.appcompat.view.ActionMode, menu: android.view.Menu) = false

            override fun onActionItemClicked(mode: androidx.appcompat.view.ActionMode, item: android.view.MenuItem): Boolean {
                val uuids = adapter.selected.toList()
                when (item.itemId) {
                    R.id.action_select_all -> adapter.selectAll()
                    R.id.action_batch_complete -> batch {
                        Graph.taskRepo.batchComplete(uuids)
                        mode.finish()
                    }
                    R.id.action_batch_move -> {
                        showBatchMoveDialog(uuids) { mode.finish() }
                    }
                    R.id.action_batch_trash -> batch {
                        Graph.taskRepo.batchTrash(uuids)
                        mode.finish()
                    }
                    else -> return false
                }
                return true
            }

            override fun onDestroyActionMode(mode: androidx.appcompat.view.ActionMode) {
                adapter.stopSelection()
                actionMode = null
            }
        })
    }

    private inline fun batch(crossinline block: suspend () -> Unit) {
        viewLifecycleOwner.lifecycleScope.launch(Dispatchers.IO) { block() }
    }

    private fun showBatchMoveDialog(uuids: List<String>, onDone: () -> Unit) {
        val boxes = listOf(
            BoxType.INBOX to getString(R.string.box_inbox),
            BoxType.TODAY to getString(R.string.box_today),
            BoxType.TOMORROW to getString(R.string.box_tomorrow),
            BoxType.NEXT to getString(R.string.box_next),
            BoxType.SCHEDULED to getString(R.string.box_scheduled),
            BoxType.SOMEDAY to getString(R.string.box_someday),
            BoxType.WAITING to getString(R.string.box_waiting)
        )
        Pickers.radio(
            requireContext(),
            getString(R.string.task_move_to),
            boxes.map { it.second },
            -1
        ) { index ->
            val target = boxes[index].first
            viewLifecycleOwner.lifecycleScope.launch(Dispatchers.IO) {
                Graph.taskRepo.batchMove(uuids, target)
                withContext(Dispatchers.Main) { onDone() }
            }
        }
    }

    override fun onSelectionChanged(count: Int) {
        actionMode?.title = getString(R.string.selected_count, count)
        if (count == 0) actionMode?.finish()
    }

    /** 工具栏「分组查看」入口（由 HomeActivity 调用） */
    fun showGroupByDialog() {
        val options = TaskGrouper.optionsFor(box.name)
        Pickers.radio(
            requireContext(),
            getString(R.string.group_by),
            options.map { TaskGrouper.label(it) },
            options.indexOf(groupByFlow.value)
        ) { index ->
            Graph.settings.setGroupBy(box.name, options[index])
            groupByFlow.value = options[index]
        }
    }

    override fun onDestroyView() {
        super.onDestroyView()
        actionMode?.finish()
        _binding = null
    }

    companion object {
        private const val ARG_BOX = "box"

        fun newInstance(box: BoxType): TaskListFragment = TaskListFragment().apply {
            arguments = Bundle().apply { putString(ARG_BOX, box.name) }
        }
    }
}
