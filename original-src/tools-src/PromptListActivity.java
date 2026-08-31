package im.doit.pro.ai;

import android.app.Activity;
import android.app.Dialog;
import android.graphics.Color;
import android.graphics.drawable.GradientDrawable;
import android.os.Bundle;
import android.text.InputType;
import android.view.Gravity;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;

import org.json.JSONArray;
import org.json.JSONObject;

import im.doit.pro.activity.DSwipeBackBaseActivity;
import im.doit.pro.ui.component.DButton;

/** 方案提示词管理：内置 + 自定义，点选切换当前使用（原型见 prompt-preview） */
public class PromptListActivity extends DSwipeBackBaseActivity {

    private static final int BLUE = 0xFF1262A1;
    private static final int TEXT_MAIN = 0xFF333333;
    private static final int TEXT_GRAY = 0xFF8A8A8A;

    private LinearLayout root;

    private float dp(float v) { return getResources().getDisplayMetrics().density * v; }
    private int id(String n) { return getResources().getIdentifier(n, "id", getPackageName()); }
    private int res(String n, String t) { return getResources().getIdentifier(n, t, getPackageName()); }

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(res("activity_prompt_list", "layout"));

        android.app.ActionBar bar = getActionBar();
        if (bar != null) {
            bar.setTitle(res("prompt_list_title", "string"));
            bar.setDisplayHomeAsUpEnabled(true);
            bar.setHomeButtonEnabled(true);
            bar.setDisplayShowTitleEnabled(true);
            bar.setDisplayUseLogoEnabled(false);
        }

        root = (LinearLayout) findViewById(id("prompt_root"));
        render();
    }

    private void render() {
        root.removeAllViews();

        // ＋ 新增
        TextView add = new TextView(this);
        add.setText("＋ 新增提示词");
        add.setTextSize(14);
        add.setTextColor(0xFFFFFFFF);
        add.setGravity(Gravity.CENTER);
        GradientDrawable addBg = new GradientDrawable();
        addBg.setColor(BLUE);
        addBg.setCornerRadius(dp(8));
        add.setBackgroundDrawable(addBg);
        LinearLayout.LayoutParams alp = new LinearLayout.LayoutParams(-1, (int) dp(44));
        int m = (int) dp(12);
        alp.setMargins(m, m, m, 0);
        add.setLayoutParams(alp);
        add.setOnClickListener(new View.OnClickListener() {
            @Override public void onClick(View v) { openEdit(-1, "", ""); }
        });
        root.addView(add);

        // 提示
        TextView hint = new TextView(this);
        hint.setText("点选任意一条切换为当前使用；右上角可编辑、删除。");
        hint.setTextSize(11);
        hint.setTextColor(TEXT_GRAY);
        hint.setPadding((int) dp(16), (int) dp(10), (int) dp(16), (int) dp(4));
        root.addView(hint);

        int cur = AIAssistant.currentPromptId(this);
        JSONArray arr = AIAssistant.promptsJson(this);
        for (int i = 0; i < arr.length(); i++) {
            JSONObject o = arr.optJSONObject(i);
            if (o == null) continue;
            final int pid = o.optInt("id", -1);
            String name = o.optString("name", "");
            String body = o.optString("body", "");
            boolean builtin = pid == AIAssistant.BUILTIN_PROMPT_ID;
            root.addView(item(pid, name, body, builtin, pid == cur));
        }
    }

    private View item(final int pid, final String name, final String body, boolean builtin, boolean current) {
        LinearLayout card = new LinearLayout(this);
        card.setOrientation(LinearLayout.VERTICAL);
        GradientDrawable bg = new GradientDrawable();
        bg.setColor(0xFFFFFFFF);
        bg.setCornerRadius(dp(8));
        if (current) bg.setStroke((int) dp(1.5f), BLUE);
        card.setBackgroundDrawable(bg);
        LinearLayout.LayoutParams clp = new LinearLayout.LayoutParams(-1, -2);
        int m = (int) dp(12);
        clp.setMargins(m, (int) dp(8), m, 0);
        card.setLayoutParams(clp);
        card.setPadding((int) dp(14), (int) dp(12), (int) dp(14), (int) dp(10));

        // 名称行
        LinearLayout nmRow = new LinearLayout(this);
        nmRow.setOrientation(LinearLayout.HORIZONTAL);
        nmRow.setGravity(Gravity.CENTER_VERTICAL);
        if (current) {
            TextView chk = new TextView(this);
            chk.setText("✔");
            chk.setTextSize(13);
            chk.setTextColor(BLUE);
            nmRow.addView(chk);
            LinearLayout.LayoutParams cl = new LinearLayout.LayoutParams(-2, -2);
            cl.rightMargin = (int) dp(6);
            chk.setLayoutParams(cl);
        }
        TextView nm = new TextView(this);
        nm.setText(name);
        nm.setTextSize(15);
        nm.setTextColor(TEXT_MAIN);
        nmRow.addView(nm);
        if (builtin) {
            TextView badge = new TextView(this);
            badge.setText("内置");
            badge.setTextSize(10);
            badge.setTextColor(BLUE);
            GradientDrawable bb = new GradientDrawable();
            bb.setColor(0xFFE8F0F8);
            bb.setCornerRadius(dp(3));
            badge.setBackgroundDrawable(bb);
            LinearLayout.LayoutParams blp = new LinearLayout.LayoutParams(-2, -2);
            blp.leftMargin = (int) dp(8);
            badge.setPadding((int) dp(6), 1, (int) dp(6), 1);
            badge.setLayoutParams(blp);
            nmRow.addView(badge);
        }
        card.addView(nmRow);

        // 摘要
        TextView sm = new TextView(this);
        sm.setText(body);
        sm.setTextSize(12);
        sm.setTextColor(TEXT_GRAY);
        sm.setMaxLines(2);
        sm.setEllipsize(android.text.TextUtils.TruncateAt.END);
        sm.setPadding(0, (int) dp(4), 0, 0);
        card.addView(sm);

        // 操作行
        LinearLayout ops = new LinearLayout(this);
        ops.setOrientation(LinearLayout.HORIZONTAL);
        ops.setGravity(Gravity.RIGHT | Gravity.CENTER_VERTICAL);
        ops.setPadding(0, (int) dp(6), 0, 0);
        TextView edit = new TextView(this);
        edit.setText("编辑");
        edit.setTextSize(11);
        edit.setTextColor(0xFFBBBBBB);
        edit.setPadding((int) dp(8), (int) dp(4), (int) dp(8), (int) dp(4));
        edit.setOnClickListener(new View.OnClickListener() {
            @Override public void onClick(View v) { openEdit(pid, name, body); }
        });
        ops.addView(edit);
        if (!builtin) {
            TextView del = new TextView(this);
            del.setText("删除");
            del.setTextSize(11);
            del.setTextColor(0xFFBBBBBB);
            del.setPadding((int) dp(8), (int) dp(4), (int) dp(8), (int) dp(4));
            del.setOnClickListener(new View.OnClickListener() {
                @Override public void onClick(View v) { confirmDelete(pid, name); }
            });
            ops.addView(del);
        }
        card.addView(ops);

        // 整卡点击 = 切换当前
        card.setOnClickListener(new View.OnClickListener() {
            @Override public void onClick(View v) {
                AIAssistant.setCurrentPromptId(PromptListActivity.this, pid);
                render();
                AIAssistant.toast(PromptListActivity.this, "已切换为「" + name + "」");
            }
        });
        return card;
    }

    private void openEdit(final int pid, String name, String body) {
        final Dialog d = new Dialog(this, res("Theme.Doit.Light.Dialog", "style"));
        View content = LayoutInflater.from(this).inflate(res("dialog_prompt_edit", "layout"), null);
        ((TextView) content.findViewById(id("title"))).setText(pid < 0 ? "新增提示词" : "编辑提示词");
        final EditText nameEt = (EditText) content.findViewById(id("prompt_name"));
        final EditText bodyEt = (EditText) content.findViewById(id("prompt_body"));
        nameEt.setText(name);
        bodyEt.setText(body);
        if (pid == AIAssistant.BUILTIN_PROMPT_ID) {
            nameEt.setEnabled(false);
            bodyEt.setHint("内置提示词不可编辑内容；可另存为自定义");
        }
        DButton cancel = (DButton) content.findViewById(id("cancel_btn"));
        DButton ok = (DButton) content.findViewById(id("ok_btn"));
        cancel.setOnClickListener(new View.OnClickListener() {
            @Override public void onClick(View v) { d.dismiss(); }
        });
        ok.setOnClickListener(new View.OnClickListener() {
            @Override public void onClick(View v) {
                d.dismiss();
                String n = nameEt.getText().toString().trim();
                String b = bodyEt.getText().toString().trim();
                if (n.length() == 0 || b.length() == 0) { AIAssistant.toast(PromptListActivity.this, "名称和内容都要填"); return; }
                if (pid == AIAssistant.BUILTIN_PROMPT_ID) {
                    // 内置 → 另存为副本
                    int nid = AIAssistant.savePrompt(PromptListActivity.this, -1, n + "（副本）", b);
                    AIAssistant.setCurrentPromptId(PromptListActivity.this, nid);
                } else {
                    AIAssistant.savePrompt(PromptListActivity.this, pid, n, b);
                }
                render();
                AIAssistant.toast(PromptListActivity.this, "已保存");
            }
        });
        d.setContentView(content);
        d.show();
    }

    private void confirmDelete(final int pid, String name) {
        final Dialog d = new Dialog(this, res("Theme.Doit.Light.Dialog", "style"));
        View content = LayoutInflater.from(this).inflate(res("dialog_ghs_confirm", "layout"), null);
        ((TextView) content.findViewById(id("title"))).setText("删除提示词");
        ((TextView) content.findViewById(id("ghs_msg"))).setText("确定删除「" + name + "」？");
        DButton cancel = (DButton) content.findViewById(id("cancel_btn"));
        DButton ok = (DButton) content.findViewById(id("ok_btn"));
        cancel.setOnClickListener(new View.OnClickListener() {
            @Override public void onClick(View v) { d.dismiss(); }
        });
        ok.setOnClickListener(new View.OnClickListener() {
            @Override public void onClick(View v) {
                d.dismiss();
                AIAssistant.deletePrompt(PromptListActivity.this, pid);
                render();
                AIAssistant.toast(PromptListActivity.this, "已删除");
            }
        });
        d.setContentView(content);
        d.show();
    }

    @Override
    public boolean onOptionsItemSelected(MenuItem item) {
        if (item.getItemId() == 0x0102002c) { finish(); return true; }
        return super.onOptionsItemSelected(item);
    }
}
