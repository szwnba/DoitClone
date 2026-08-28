package im.doit.pro.github;

import android.app.Activity;
import android.app.Dialog;
import android.content.DialogInterface;
import android.os.Bundle;
import android.os.Process;
import android.text.InputType;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.widget.EditText;
import android.widget.TextView;

import im.doit.pro.activity.DSwipeBackBaseActivity;
import im.doit.pro.activity.listener.OnLayoutClickListener;
import im.doit.pro.ui.component.DButton;
import im.doit.pro.ui.component.LabelArrowButton;

/** GitHub 同步页 —— 样式仿原版"提醒"设置页（蓝色标题栏 + 白色分块行 + 原版扁平对话框） */
public class GitHubSyncActivity extends DSwipeBackBaseActivity {

    private interface OnOk {
        void ok(String inputText);
    }

    private int id(String name) {
        return getResources().getIdentifier(name, "id", getPackageName());
    }

    private int res(String name, String type) {
        return getResources().getIdentifier(name, type, getPackageName());
    }

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(res("activity_github_sync", "layout"));

        android.app.ActionBar bar = getActionBar();
        if (bar != null) {
            bar.setTitle(res("ghs_title", "string"));
            bar.setDisplayHomeAsUpEnabled(true);
            bar.setHomeButtonEnabled(true);
            bar.setDisplayShowTitleEnabled(true);
            bar.setDisplayUseLogoEnabled(false);
        }

        row(id("ghs_token"), new OnLayoutClickListener() {
            @Override
            public void click(View v) { editToken(); }
        });
        row(id("ghs_repo"), new OnLayoutClickListener() {
            @Override
            public void click(View v) { editRepo(); }
        });
        row(id("ghs_issue_repo"), new OnLayoutClickListener() {
            @Override
            public void click(View v) { editIssueRepo(); }
        });
        row(id("ghs_upload"), new OnLayoutClickListener() {
            @Override
            public void click(View v) { onUpload(); }
        });
        row(id("ghs_restore"), new OnLayoutClickListener() {
            @Override
            public void click(View v) { onRestore(); }
        });
    }

    private void row(int resId, OnLayoutClickListener l) {
        View v = findViewById(resId);
        if (v instanceof LabelArrowButton) {
            ((LabelArrowButton) v).setOnLayoutClickListener(l);
        }
    }

    @Override
    protected void onResume() {
        super.onResume();
        TextView last = (TextView) findViewById(id("ghs_last_sync"));
        if (last != null) {
            last.setText("上次同步：" + GitHubSync.lastSync(this));
        }
    }

    @Override
    public boolean onOptionsItemSelected(MenuItem item) {
        if (item.getItemId() == 0x0102002c) { // android.R.id.home
            finish();
            return true;
        }
        return super.onOptionsItemSelected(item);
    }

    /** 原版模式对话框：Theme.Doit.Light.Dialog + dialog_title_layout + layout_cancel_and_ok_btns */
    private Dialog appDialog(String layoutName, String title, String message, String okText,
            final OnOk onOk, boolean withInput, String inputText, boolean password) {
        final Dialog d = new Dialog(this, res("Theme.Doit.Light.Dialog", "style"));
        View content = LayoutInflater.from(this).inflate(res(layoutName, "layout"), null);
        ((TextView) content.findViewById(id("title"))).setText(title);
        if (message != null) {
            ((TextView) content.findViewById(id("ghs_msg"))).setText(message);
        }
        final EditText input = (EditText) content.findViewById(id("ghs_input"));
        if (input != null) {
            if (password) input.setInputType(InputType.TYPE_CLASS_TEXT | InputType.TYPE_TEXT_VARIATION_PASSWORD);
            input.setText(inputText);
            input.setSelection(input.getText().length());
        }
        DButton cancel = (DButton) content.findViewById(id("cancel_btn"));
        DButton ok = (DButton) content.findViewById(id("ok_btn"));
        if (okText != null) ok.setText(okText);
        cancel.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) { d.dismiss(); }
        });
        ok.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                d.dismiss();
                onOk.ok(input == null ? null : input.getText().toString());
            }
        });
        d.setContentView(content);
        return d;
    }

    private boolean hasToken() {
        if (GitHubSync.token(this).length() == 0) {
            GitHubSync.toast(this, "请先设置 Token");
            editToken();
            return false;
        }
        return true;
    }

    // ---------- 操作 ----------

    private void onUpload() {
        if (!hasToken()) return;
        GitHubSync.doUpload(this, new Runnable() {
            @Override
            public void run() {
                GitHubSync.toast(GitHubSyncActivity.this, "✓ 备份已上传到 GitHub");
                onResume();
            }
        });
    }

    private void onRestore() {
        if (!hasToken()) return;
        appDialog("dialog_ghs_confirm", "从 GitHub 恢复",
            "将用 GitHub 上的备份覆盖本机全部数据，恢复后应用会自动重启。确定继续？",
            "恢复", new OnOk() {
                @Override
                public void ok(String inputText) {
                    GitHubSync.doRestore(GitHubSyncActivity.this, new Runnable() {
                        @Override
                        public void run() {
                            appDialog("dialog_ghs_confirm", "下载完成",
                                "备份已下载到本机。点击「重启」后应用会自动完成数据替换并重新打开。",
                                "重启",
                                new OnOk() {
                                    @Override
                                    public void ok(String s) {
                                        Process.killProcess(Process.myPid());
                                    }
                                }, false, null, false).show();
                        }
                    });
                }
            }, false, null, false).show();
    }

    private void editToken() {
        appDialog("dialog_ghs_input", "GitHub Token",
            "粘贴 fine-grained Token（仅需 doit-data 仓库 Contents 读写权限）",
            "保存", new OnOk() {
                @Override
                public void ok(String text) {
                    String t = text == null ? "" : text.trim();
                    GitHubSync.prefs(GitHubSyncActivity.this).edit().putString("token", t).commit();
                    GitHubSync.toast(GitHubSyncActivity.this,
                        t.length() == 0 ? "已清空 Token" : "Token 已保存");
                }
            }, true, GitHubSync.token(this), true).show();
    }

    private void editIssueRepo() {
        appDialog("dialog_ghs_input", "Issue 仓库", "附加 Issue 用的仓库，格式: 用户名/仓库名（留空恢复默认）",
            "保存", new OnOk() {
                @Override
                public void ok(String text) {
                    String r = text == null ? "" : text.trim();
                    GitHubSync.prefs(GitHubSyncActivity.this).edit()
                        .putString("issue_repo", r).commit();
                    GitHubSync.toast(GitHubSyncActivity.this,
                        r.length() == 0 ? "已恢复默认 Issue 仓库" : "Issue 仓库已保存: " + r);
                }
            }, true, IssuePickerActivity.issueRepo(this), false).show();
    }

    private void editRepo() {
        appDialog("dialog_ghs_input", "同步仓库", "格式: 用户名/仓库名",
            "保存", new OnOk() {
                @Override
                public void ok(String text) {
                    String r = text == null ? "" : text.trim();
                    GitHubSync.prefs(GitHubSyncActivity.this).edit().putString("repo", r).commit();
                    GitHubSync.toast(GitHubSyncActivity.this, "仓库已保存: " + r);
                }
            }, true, GitHubSync.repo(this), false).show();
    }
}
