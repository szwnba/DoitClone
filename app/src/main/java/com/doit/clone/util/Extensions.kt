package com.doit.clone.util

import android.view.View
import android.widget.Toast
import androidx.lifecycle.LifecycleOwner
import androidx.lifecycle.lifecycleScope
import kotlinx.coroutines.flow.Flow
import kotlinx.coroutines.flow.collectLatest
import kotlinx.coroutines.launch

fun View.visible() { visibility = View.VISIBLE }
fun View.gone() { visibility = View.GONE }

fun android.content.Context.toast(text: String) {
    Toast.makeText(this, text, Toast.LENGTH_SHORT).show()
}

/** 在生命周期内持续收集 Flow（collectLatest 适合列表刷新） */
fun <T> Flow<T>.observe(owner: LifecycleOwner, block: (T) -> Unit) {
    owner.lifecycleScope.launch {
        collectLatest { block(it) }
    }
}
