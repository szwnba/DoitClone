package im.doit.pro.github;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.ListView;
import android.widget.TextView;

import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import org.json.JSONArray;
import org.json.JSONObject;

import im.doit.pro.activity.DSwipeBackBaseActivity;

/** 从 GitHub 挑 Issue 附加到任务 —— 复用原版印象笔记附件管线（回传协议 evernote_note_*） */
public class IssuePickerActivity extends DSwipeBackBaseActivity {

    public static final String K_ISSUE_REPO = "issue_repo";
    public static final String DEFAULT_ISSUE_REPO = "szwnba/affweb";

    static class Issue {
        int number;
        String title;
        String url;
        String state;
        String updated;
    }

    private final List<Issue> issues = new ArrayList<Issue>();
    private ListView list;
    private TextView emptyView;
    private TextView footer;
    private BaseAdapter adapter;
    private int page = 1;
    private boolean loading = false;
    private boolean done = false;
    private final Handler main = new Handler(Looper.getMainLooper());

    public static String issueRepo(android.content.Context c) {
        String r = GitHubSync.prefs(c).getString(K_ISSUE_REPO, "");
        return r.length() == 0 ? DEFAULT_ISSUE_REPO : r;
    }

    private int id(String name) {
        return getResources().getIdentifier(name, "id", getPackageName());
    }

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(getResources().getIdentifier("activity_issue_picker", "layout", getPackageName()));

        android.app.ActionBar bar = getActionBar();
        if (bar != null) {
            bar.setTitle(getResources().getIdentifier("issue_picker_title", "string", getPackageName()));
            bar.setDisplayHomeAsUpEnabled(true);
            bar.setHomeButtonEnabled(true);
            bar.setDisplayShowTitleEnabled(true);
            bar.setDisplayUseLogoEnabled(false);
        }

        list = (ListView) findViewById(id("issue_list"));
        emptyView = (TextView) findViewById(id("issue_empty"));
        list.setEmptyView(emptyView);

        if (GitHubSync.token(this).length() == 0) {
            GitHubSync.toast(this, "请先在 设置 → GitHub 同步 里配置 Token");
            startActivity(new Intent().setClassName(this, "im.doit.pro.github.GitHubSyncActivity"));
            finish();
            return;
        }

        adapter = new BaseAdapter() {
            @Override
            public int getCount() {
                return issues.size() + (done || loading ? 0 : 1);
            }

            @Override
            public Object getItem(int position) {
                return null;
            }

            @Override
            public long getItemId(int position) {
                return position;
            }

            @Override
            public View getView(int position, View convertView, ViewGroup parent) {
                if (position >= issues.size()) {
                    if (footer == null) {
                        footer = new TextView(IssuePickerActivity.this);
                        footer.setTextSize(14);
                        footer.setTextColor(0x8a000000);
                        footer.setGravity(android.view.Gravity.CENTER);
                        int pd = (int) (getResources().getDisplayMetrics().density * 14);
                        footer.setPadding(0, pd, 0, pd);
                        footer.setText("加载更多…");
                        footer.setOnClickListener(new View.OnClickListener() {
                            @Override public void onClick(View v) { loadMore(); }
                        });
                    }
                    return footer;
                }
                View row = convertView instanceof TextView ? null : convertView;
                if (row == null || row == footer) {
                    row = LayoutInflater.from(IssuePickerActivity.this).inflate(
                        getResources().getIdentifier("layout_issue_item", "layout", getPackageName()), null);
                }
                Issue it = issues.get(position);
                TextView title = (TextView) row.findViewById(id("issue_item_title"));
                TextView sub = (TextView) row.findViewById(id("issue_item_sub"));
                title.setText("#" + it.number + "  " + it.title);
                sub.setText(it.state + " · 更新 " + it.updated + " · " + issueRepo(IssuePickerActivity.this));
                return row;
            }
        };
        list.setAdapter(adapter);
        list.setOnItemClickListener(new AdapterView.OnItemClickListener() {
            @Override
            public void onItemClick(AdapterView<?> parent, View view, int position, long lid) {
                if (position >= issues.size()) return;
                Issue it = issues.get(position);
                Intent data = new Intent();
                data.putExtra("evernote_note_guid", "gh-issue-" + it.number);
                data.putExtra("evernote_note_title", "#" + it.number + " " + it.title);
                data.putExtra("evernote_note_share_url", it.url);
                setResult(RESULT_OK, data);
                finish();
            }
        });

        loadMore();
    }

    private void loadMore() {
        if (loading || done) return;
        loading = true;
        final int target = page;
        final IssuePickerActivity self = this;
        new Thread(new Runnable() {
            @Override
            public void run() {
                try {
                    String api = "https://api.github.com/repos/" + issueRepo(self)
                        + "/issues?state=all&per_page=50&page=" + target;
                    HttpURLConnection conn = null;
                    try {
                        conn = (HttpURLConnection) new URL(api).openConnection();
                        conn.setConnectTimeout(15000);
                        conn.setReadTimeout(60000);
                        conn.setRequestMethod("GET");
                        conn.setRequestProperty("Authorization", "token " + GitHubSync.token(self));
                        conn.setRequestProperty("Accept", "application/vnd.github+json");
                        conn.setRequestProperty("User-Agent", "DoitLocalSync/1.0");
                        int code = conn.getResponseCode();
                        String body = readAll(code >= 400 ? conn.getErrorStream() : conn.getInputStream());
                        if (code != 200) throw new Exception("HTTP " + code + " " + body);
                        JSONArray arr = new JSONArray(body);
                        final List<Issue> got = new ArrayList<Issue>();
                        SimpleDateFormat in = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss", Locale.US);
                        SimpleDateFormat out = new SimpleDateFormat("yyyy-MM-dd", Locale.getDefault());
                        for (int i = 0; i < arr.length(); i++) {
                            JSONObject o = arr.getJSONObject(i);
                            if (o.has("pull_request")) continue; // 过滤 PR
                            Issue it = new Issue();
                            it.number = o.optInt("number", 0);
                            it.title = o.optString("title", "");
                            it.url = o.optString("html_url", "");
                            it.state = o.optString("state", "");
                            try {
                                String u = o.optString("updated_at", "");
                                it.updated = u.length() >= 10 ? u.substring(0, 10) : u;
                            } catch (Throwable t) {
                                it.updated = "";
                            }
                            if (it.number > 0 && it.url.length() > 0) got.add(it);
                        }
                        main.post(new Runnable() {
                            @Override public void run() {
                                issues.addAll(got);
                                if (got.size() < 40) done = true; // 到底了
                                page++;
                                adapter.notifyDataSetChanged();
                                emptyView.setText(issues.size() == 0 ? "该仓库没有 Issue" : "加载中…");
                            }
                        });
                    } finally {
                        if (conn != null) conn.disconnect();
                    }
                } catch (final Throwable e) {
                    final String msg = e.getMessage() == null ? e.getClass().getSimpleName() : e.getMessage();
                    main.post(new Runnable() {
                        @Override public void run() {
                            GitHubSync.toast(self, "加载失败: " + msg);
                            if (issues.size() == 0) emptyView.setText("加载失败：" + msg + "\n点右上返回重试");
                            done = true; // 防止 footer 反复失败
                            adapter.notifyDataSetChanged();
                        }
                    });
                } finally {
                    loading = false;
                }
            }
        }).start();
    }

    private static String readAll(InputStream is) throws Exception {
        ByteArrayOutputStream buf = new ByteArrayOutputStream();
        if (is != null) {
            byte[] b = new byte[8192];
            int n;
            while ((n = is.read(b)) > 0) buf.write(b, 0, n);
            is.close();
        }
        return new String(buf.toByteArray(), "UTF-8");
    }

    @Override
    public boolean onOptionsItemSelected(MenuItem item) {
        if (item.getItemId() == 0x0102002c) {
            finish();
            return true;
        }
        return super.onOptionsItemSelected(item);
    }
}
