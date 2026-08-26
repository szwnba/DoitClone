package im.doit.pro.github;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.DialogInterface;
import android.os.Bundle;
import android.os.Process;
import android.text.InputType;
import android.view.MenuItem;
import android.view.View;
import android.widget.EditText;
import android.widget.TextView;

import im.doit.pro.activity.DSwipeBackBaseActivity;
import im.doit.pro.activity.listener.OnLayoutClickListener;
import im.doit.pro.ui.component.LabelArrowButton;

/** GitHub 同步页 —— 样式仿原版"提醒"设置页（蓝色标题栏 + 白色分块行） */
public class GitHubSyncActivity extends DSwipeBackBaseActivity {

    private int id(String name) {
        return getResources().getIdentifier(name, "id", getPackageName());
    }

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(getResources().getIdentifier("activity_github_sync", "layout", getPackageName()));

        row(id("ghs_token"), new OnLayoutClickListener() {
            @Override
            public void click(View v) { editToken(); }
        });
        row(id("ghs_repo"), new OnLayoutClickListener() {
            @Override
            public void click(View v) { editRepo(); }
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

    private int dialogTheme() {
        return getResources().getIdentifier("Theme.Doit.Light.Dialog", "style", getPackageName());
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
        new AlertDialog.Builder(this, dialogTheme())
            .setTitle("从 GitHub 恢复")
            .setMessage("将用 GitHub 上的备份覆盖本机全部数据，恢复后应用会自动重启。确定继续？")
            .setPositiveButton("恢复", new DialogInterface.OnClickListener() {
                @Override
                public void onClick(DialogInterface dialog, int which) {
                    GitHubSync.doRestore(GitHubSyncActivity.this, new Runnable() {
                        @Override
                        public void run() {
                            new AlertDialog.Builder(GitHubSyncActivity.this, dialogTheme())
                                .setTitle("恢复完成")
                                .setMessage("数据已恢复，应用即将重启。")
                                .setCancelable(false)
                                .setPositiveButton("立即重启", new DialogInterface.OnClickListener() {
                                    @Override
                                    public void onClick(DialogInterface dialog, int which) {
                                        Process.killProcess(Process.myPid());
                                    }
                                }).show();
                        }
                    });
                }
            })
            .setNegativeButton("取消", null)
            .show();
    }

    private void editToken() {
        final EditText input = new EditText(this);
        input.setText(GitHubSync.token(this));
        input.setInputType(InputType.TYPE_CLASS_TEXT | InputType.TYPE_TEXT_VARIATION_PASSWORD);
        float d = getResources().getDisplayMetrics().density;
        input.setPadding((int) (d * 20), (int) (d * 12), (int) (d * 20), (int) (d * 12));
        new AlertDialog.Builder(this, dialogTheme())
            .setTitle("GitHub Token")
            .setMessage("粘贴 fine-grained Token（仅需 doit-data 仓库 Contents 读写权限）")
            .setView(input)
            .setPositiveButton("保存", new DialogInterface.OnClickListener() {
                @Override
                public void onClick(DialogInterface dialog, int which) {
                    String t = input.getText().toString().trim();
                    GitHubSync.prefs(GitHubSyncActivity.this).edit().putString("token", t).commit();
                    GitHubSync.toast(GitHubSyncActivity.this, t.length() == 0 ? "已清空 Token" : "Token 已保存");
                }
            })
            .setNegativeButton("取消", null)
            .show();
    }

    private void editRepo() {
        final EditText input = new EditText(this);
        input.setText(GitHubSync.repo(this));
        float d = getResources().getDisplayMetrics().density;
        input.setPadding((int) (d * 20), (int) (d * 12), (int) (d * 20), (int) (d * 12));
        new AlertDialog.Builder(this, dialogTheme())
            .setTitle("同步仓库")
            .setMessage("格式: 用户名/仓库名")
            .setView(input)
            .setPositiveButton("保存", new DialogInterface.OnClickListener() {
                @Override
                public void onClick(DialogInterface dialog, int which) {
                    String r = input.getText().toString().trim();
                    GitHubSync.prefs(GitHubSyncActivity.this).edit().putString("repo", r).commit();
                    GitHubSync.toast(GitHubSyncActivity.this, "仓库已保存: " + r);
                }
            })
            .setNegativeButton("取消", null)
            .show();
    }
}
