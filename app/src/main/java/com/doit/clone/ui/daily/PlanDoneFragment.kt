package com.doit.clone.ui.daily

import android.os.Bundle
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.fragment.app.Fragment
import com.doit.clone.databinding.FragmentPlanDoneBinding

/** 计划向导末页：已安排 / 剩余 + 从下一步获取（还原 fragment_daily_plan_done） */
class PlanDoneFragment : Fragment() {

    private var _binding: FragmentPlanDoneBinding? = null
    private val binding get() = _binding!!

    override fun onCreateView(inflater: LayoutInflater, container: ViewGroup?, savedInstanceState: Bundle?): View {
        _binding = FragmentPlanDoneBinding.inflate(inflater, container, false)
        return binding.root
    }

    override fun onViewCreated(view: View, savedInstanceState: Bundle?) {
        val host = activity as? Host ?: return
        binding.arrangedTime.text = "${host.arrangedMinutes()} 分钟"
        binding.leftTime.text = "${host.leftMinutes()} 分钟"
        binding.goMoreFromNextBtn.setOnClickListener { host.loadFromNext() }
    }

    interface Host {
        fun arrangedMinutes(): Int
        fun leftMinutes(): Int
        fun loadFromNext()
    }

    override fun onDestroyView() {
        super.onDestroyView()
        _binding = null
    }

    companion object {
        fun newInstance() = PlanDoneFragment()
    }
}
