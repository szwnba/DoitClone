package com.doit.clone.ui.daily

import android.os.Bundle
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.EditText
import android.widget.ImageView
import android.widget.TextView
import androidx.fragment.app.Fragment
import androidx.lifecycle.lifecycleScope
import com.doit.clone.Graph
import com.doit.clone.databinding.FragmentPlanPageBinding
import com.doit.clone.util.DateUtils
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.launch
import kotlinx.coroutines.withContext

/** 计划/回顾向导的任务卡片页（对应原版 TaskDetailFragment 的计划形态） */
class PlanPageFragment : Fragment() {

    private var _binding: FragmentPlanPageBinding? = null
    private val binding get() = _binding!!
    private var loaded = false

    override fun onCreateView(inflater: LayoutInflater, container: ViewGroup?, savedInstanceState: Bundle?): View {
        _binding = FragmentPlanPageBinding.inflate(inflater, container, false)
        return binding.root
    }

    override fun onViewCreated(view: View, savedInstanceState: Bundle?) {
        val uuid = requireArguments().getString("uuid") ?: return
        viewLifecycleOwner.lifecycleScope.launch(Dispatchers.IO) {
            val task = Graph.taskRepo.get(uuid) ?: return@launch
            withContext(Dispatchers.Main) {
                if (_binding == null) return@withContext
                binding.title.setText(task.title)
                binding.notes.setText(task.notes ?: "")
                binding.completeBtn.isSelected = task.completed
                binding.valueStart.text = task.startAt?.let {
                    (if (task.allDay) DateUtils.friendlyDate(it, Graph.settings.dateFormat)
                    else DateUtils.friendlyDate(it, Graph.settings.dateFormat) + " " + DateUtils.formatTime(it))
                } ?: ""
                binding.valueEstimate.text =
                    task.estimatedTime?.let { String.format("%d 分钟", it) } ?: ""
                loaded = true
            }
        }
        // 标题/备注即时保存
        binding.title.setOnFocusChangeListener { _, hasFocus ->
            if (!hasFocus && loaded) saveText(uuid)
        }
        binding.notes.setOnFocusChangeListener { _, hasFocus ->
            if (!hasFocus && loaded) saveText(uuid)
        }
        binding.completeBtn.setOnClickListener {
            it.isSelected = !it.isSelected
            viewLifecycleOwner.lifecycleScope.launch(Dispatchers.IO) {
                Graph.taskRepo.toggleComplete(uuid)
            }
        }
    }

    private fun saveText(uuid: String) {
        viewLifecycleOwner.lifecycleScope.launch(Dispatchers.IO) {
            val task = Graph.taskRepo.get(uuid) ?: return@launch
            val newTitle = binding.title.text?.toString() ?: task.title
            val newNotes = binding.notes.text?.toString()
            Graph.taskRepo.update(task.copy(title = newTitle, notes = newNotes))
        }
    }

    override fun onDestroyView() {
        super.onDestroyView()
        _binding = null
    }

    companion object {
        fun newInstance(uuid: String) = PlanPageFragment().apply {
            arguments = Bundle().apply { putString("uuid", uuid) }
        }
    }
}
