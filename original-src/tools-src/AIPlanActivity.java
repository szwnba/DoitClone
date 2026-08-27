package im.doit.pro.ai;

import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.view.MenuItem;
import android.view.View;
import android.widget.ScrollView;
import android.widget.TextView;

import java.lang.ref.WeakReference;

import im.doit.pro.activity.DSwipeBackBaseActivity;
import im.doit.pro.model.Task;
import im.doit.pro.ui.component.DButton;

/** AI 行动方案页：流式生成 → 预览 → 应用（描述=方案全文，编号行=子任务） */
public class AIPlanActivity extends DSwipeBackBaseActivity {

    private TextView text;
    private ScrollView scroll;
    private DButton regenBtn;
    private DButton applyBtn;

    private String taskUuid;
    private String taskRepeatNo;
    private String fullText = "";
    private boolean streaming = false;

    // UI 节流：delta 高频到达，攒 60ms 刷一次屏
    private final Handler ui = new Handler(Looper.getMainLooper());
    private final StringBuilder pending = new StringBuilder();
    private boolean flushScheduled = false;

    private int id(String name) {
        return getResources().getIdentifier(name, "id", getPackageName());
    }

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(getResources().getIdentifier("activity_ai_plan", "layout", getPackageName()));

        android.app.ActionBar bar = getActionBar();
        if (bar != null) {
            bar.setTitle(getResources().getIdentifier("ai_plan_page_title", "string", getPackageName()));
            bar.setDisplayHomeAsUpEnabled(true);
            bar.setHomeButtonEnabled(true);
        }

        text = (TextView) findViewById(id("ai_plan_text"));
        scroll = (ScrollView) findViewById(id("ai_plan_scroll"));
        regenBtn = (DButton) findViewById(id("ai_plan_regen"));
        applyBtn = (DButton) findViewById(id("ai_plan_apply"));

        taskUuid = getIntent().getStringExtra("taskUuid");
        taskRepeatNo = getIntent().getStringExtra("taskRepeatNo");
        String title = getIntent().getStringExtra("taskTitle");
        if (taskUuid == null || taskUuid.length() == 0) {
            AIAssistant.toast(this, "任务参数缺失");
            finish();
            return;
        }

        findViewById(id("ai_plan_close")).setOnClickListener(new View.OnClickListener() {
            @Override public void onClick(View v) { finish(); }
        });
        regenBtn.setOnClickListener(new View.OnClickListener() {
            @Override public void onClick(View v) { startGen(); }
        });
        applyBtn.setOnClickListener(new View.OnClickListener() {
            @Override public void onClick(View v) { apply(); }
        });

        if (title != null) {
            getActionBar().setSubtitle(title);
        }
        startGen();
    }

    private void startGen() {
        if (streaming) return;
        streaming = true;
        fullText = "";
        pending.setLength(0);
        text.setText("正在生成…\n\n");
        applyBtn.setEnabled(false);
        applyBtn.setAlpha(0.4f);
        regenBtn.setEnabled(false);
        regenBtn.setAlpha(0.4f);

        final WeakReference<AIPlanActivity> self = new WeakReference<AIPlanActivity>(this);
        final Task snapshot = AIAssistant.loadTask(this, taskUuid, taskRepeatNo);
        if (snapshot == null) {
            text.setText("任务未找到（可能已被删除）");
            streaming = false;
            regenBtn.setEnabled(true);
            regenBtn.setAlpha(1f);
            return;
        }

        AIAssistant.chatStream(this, AIAssistant.systemPrompt(), AIAssistant.userPrompt(this, snapshot),
            new AIAssistant.StreamCb() {
                @Override
                public void onDelta(final String piece) {
                    final AIPlanActivity a = self.get();
                    if (a == null || a.isFinishing()) return;
                    a.runOnUiThread(new Runnable() {
                        @Override public void run() { a.appendDelta(piece); }
                    });
                }

                @Override
                public void onDone(final String full) {
                    final AIPlanActivity a = self.get();
                    if (a == null || a.isFinishing()) return;
                    a.runOnUiThread(new Runnable() {
                        @Override public void run() {
                            a.flushPending();
                            a.fullText = full;
                            int steps = AIAssistant.parseSteps(full).size();
                            a.text.append(a.text.length() > 0 ? "\n\n" : "");
                            a.text.append("── 生成完毕");
                            a.text.append(steps > 0 ? "，可将 " + steps + " 条步骤应用为子任务 ──" : " ──");
                            a.streaming = false;
                            a.applyBtn.setEnabled(true);
                            a.applyBtn.setAlpha(1f);
                            a.regenBtn.setEnabled(true);
                            a.regenBtn.setAlpha(1f);
                        }
                    });
                }

                @Override
                public void onError(final String message) {
                    final AIPlanActivity a = self.get();
                    if (a == null || a.isFinishing()) return;
                    a.runOnUiThread(new Runnable() {
                        @Override public void run() {
                            a.flushPending();
                            a.text.append(a.text.length() > 0 ? "\n\n" : "");
                            a.text.append("✗ 生成失败：");
                            a.text.append(message);
                            a.text.append("\n可点「重新生成」重试，或检查 设置 → AI 助理。");
                            a.streaming = false;
                            a.regenBtn.setEnabled(true);
                            a.regenBtn.setAlpha(1f);
                        }
                    });
                }
            });
    }

    private void appendDelta(String piece) {
        if (text.getText().toString().startsWith("正在生成…")) {
            text.setText("");
        }
        pending.append(piece);
        if (!flushScheduled) {
            flushScheduled = true;
            ui.postDelayed(new Runnable() {
                @Override public void run() {
                    flushScheduled = false;
                    flushPending();
                }
            }, 60);
        }
    }

    private void flushPending() {
        if (pending.length() > 0) {
            text.append(pending.toString());
            pending.setLength(0);
            scroll.post(new Runnable() {
                @Override public void run() { scroll.fullScroll(ScrollView.FOCUS_DOWN); }
            });
        }
    }

    private void apply() {
        if (fullText.length() == 0 || streaming) return;
        int n = AIAssistant.applyToTask(this, taskUuid, taskRepeatNo, fullText);
        if (n < 0) {
            AIAssistant.toast(this, "任务未找到，应用失败");
            return;
        }
        AIAssistant.toast(this, n > 0
            ? "✓ 已应用：描述已更新，新增 " + n + " 条子任务"
            : "✓ 方案已写入描述");
        finish();
    }

    @Override
    public boolean onOptionsItemSelected(MenuItem item) {
        if (item.getItemId() == 0x0102002c) { // android.R.id.home
            finish();
            return true;
        }
        return super.onOptionsItemSelected(item);
    }
}
