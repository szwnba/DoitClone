package com.doit.clone.ui.daily

import android.os.Bundle
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.ImageButton
import androidx.fragment.app.Fragment
import androidx.lifecycle.lifecycleScope
import com.doit.clone.Graph
import com.doit.clone.R
import com.doit.clone.databinding.FragmentReviewDoneBinding
import kotlinx.coroutines.flow.firstOrNull
import kotlinx.coroutines.launch

/** 回顾末页：五星自评 + 评语 + 统计（还原 fragment_daily_review_done） */
class ReviewDoneFragment : Fragment() {

    private var _binding: FragmentReviewDoneBinding? = null
    private val binding get() = _binding!!
    private var stars = 0

    override fun onCreateView(inflater: LayoutInflater, container: ViewGroup?, savedInstanceState: Bundle?): View {
        _binding = FragmentReviewDoneBinding.inflate(inflater, container, false)
        return binding.root
    }

    override fun onViewCreated(view: View, savedInstanceState: Bundle?) {
        stars = requireContext().getSharedPreferences("doit_settings", 0)
            .getInt("review_stars_${System.currentTimeMillis() / 86_400_000L}", 0)

        val buttons = listOf(binding.star1, binding.star2, binding.star3, binding.star4, binding.star5)
        buttons.forEachIndexed { index, btn ->
            btn.setOnClickListener {
                stars = index + 1
                buttons.forEachIndexed { i, b -> b.isSelected = i < stars }
                requireContext().getSharedPreferences("doit_settings", 0).edit()
                    .putInt("review_stars_${System.currentTimeMillis() / 86_400_000L}", stars).apply()
            }
            btn.isSelected = index < stars
        }

        binding.reviewComment.setText(
            requireContext().getSharedPreferences("doit_settings", 0)
                .getString("review_comment_${System.currentTimeMillis() / 86_400_000L}", "")
        )
        binding.reviewComment.setOnFocusChangeListener { _, hasFocus ->
            if (!hasFocus) {
                requireContext().getSharedPreferences("doit_settings", 0).edit()
                    .putString("review_comment_${System.currentTimeMillis() / 86_400_000L}",
                        binding.reviewComment.text?.toString() ?: "").apply()
            }
        }

        viewLifecycleOwner.lifecycleScope.launch {
            val completed = Graph.taskRepo.todayCompleted().firstOrNull()?.size ?: 0
            val overdue = Graph.taskRepo.overdue().firstOrNull()?.size ?: 0
            binding.reviewStats.text =
                getString(R.string.daily_review_stat_completed, completed) + " · " +
                getString(R.string.daily_review_stat_overdue, overdue)
        }
    }

    override fun onDestroyView() {
        super.onDestroyView()
        _binding = null
    }
}
