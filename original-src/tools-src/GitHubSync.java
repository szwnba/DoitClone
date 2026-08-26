package im.doit.pro.github;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.SharedPreferences;
import android.database.sqlite.SQLiteDatabase;
import android.os.Handler;
import android.os.Looper;
import android.os.Process;
import android.text.InputType;
import android.util.Base64;
import android.view.View;
import android.widget.EditText;
import android.widget.Toast;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.zip.GZIPInputStream;
import java.util.zip.GZIPOutputStream;

import org.json.JSONObject;

/** GitHub 仓库备份/恢复（本地版追加功能，不依赖原同步引擎） */
public class GitHubSync {

    private static final String PREFS = "doit_github_sync";
    private static final String K_TOKEN = "token";
    private static final String K_REPO = "repo";
    private static final String K_LAST = "last_sync";
    private static final String DEFAULT_REPO = "szwnba/doit-data";
    private static final String DB_NAME = "doitim.db";
    private static final String REMOTE_FILE = "doitim.db.gz";
    private static final String API = "https://api.github.com";

    private interface Worker {
        void run(Context c) throws Exception;
    }

    private static final Handler MAIN = new Handler(Looper.getMainLooper());

    // ---------- 入口：设置页 ----------

    public static void onSettings(final Activity a) {
        final String[] items = {
            "设置 GitHub Token",
            "设置仓库（当前: " + repo(a) + "）",
            "上传备份到 GitHub",
            "从 GitHub 恢复数据",
            "查看同步状态"
        };
        new AlertDialog.Builder(a).setTitle("GitHub 同步").setItems(items, new DialogInterface.OnClickListener() {
            @Override
            public void onClick(DialogInterface dialog, int which) {
                if (which == 0) editToken(a);
                else if (which == 1) editRepo(a);
                else if (which == 2) upload(a);
                else if (which == 3) download(a);
                else status(a);
            }
        }).show();
    }

    // ---------- 配置 ----------

    private static SharedPreferences prefs(Context c) {
        return c.getSharedPreferences(PREFS, 0);
    }

    private static String token(Context c) {
        return prefs(c).getString(K_TOKEN, "");
    }

    private static String repo(Context c) {
        String r = prefs(c).getString(K_REPO, "");
        return r.length() == 0 ? DEFAULT_REPO : r;
    }

    private static String lastSync(Context c) {
        String s = prefs(c).getString(K_LAST, "");
        return s.length() == 0 ? "从未同步" : s;
    }

    private static void editToken(final Activity a) {
        final EditText input = new EditText(a);
        input.setText(token(a));
        input.setInputType(InputType.TYPE_CLASS_TEXT | InputType.TYPE_TEXT_VARIATION_PASSWORD);
        pad(input);
        new AlertDialog.Builder(a).setTitle("GitHub Token")
            .setMessage("粘贴 fine-grained Token（仅需 doit-data 仓库 Contents 读写权限）")
            .setView(input)
            .setPositiveButton("保存", new DialogInterface.OnClickListener() {
                @Override
                public void onClick(DialogInterface dialog, int which) {
                    String t = input.getText().toString().trim();
                    prefs(a).edit().putString(K_TOKEN, t).commit();
                    toast(a, t.length() == 0 ? "已清空 Token" : "Token 已保存");
                }
            }).setNegativeButton("取消", null).show();
    }

    private static void editRepo(final Activity a) {
        final EditText input = new EditText(a);
        input.setText(repo(a));
        pad(input);
        new AlertDialog.Builder(a).setTitle("同步仓库").setMessage("格式: 用户名/仓库名")
            .setView(input)
            .setPositiveButton("保存", new DialogInterface.OnClickListener() {
                @Override
                public void onClick(DialogInterface dialog, int which) {
                    String r = input.getText().toString().trim();
                    prefs(a).edit().putString(K_REPO, r).commit();
                    toast(a, "仓库已保存: " + r);
                }
            }).setNegativeButton("取消", null).show();
    }

    private static void status(Activity a) {
        String t = token(a);
        String msg = "仓库: " + repo(a)
            + "\nToken: " + (t.length() == 0 ? "未设置" : "已设置")
            + "\n上次同步: " + lastSync(a);
        new AlertDialog.Builder(a).setTitle("GitHub 同步").setMessage(msg)
            .setPositiveButton("确定", null).show();
    }

    // ---------- 上传 / 下载 ----------

    private static void upload(final Activity a) {
        if (token(a).length() == 0) { toast(a, "请先设置 Token"); editToken(a); return; }
        runAsync(a, "正在上传备份…", new Worker() {
            @Override
            public void run(Context c) throws Exception {
                byte[] raw = snapshot(c);
                String b64 = Base64.encodeToString(gzip(raw), Base64.NO_WRAP);
                String path = "/repos/" + repo(c) + "/contents/" + REMOTE_FILE;
                String sha = remoteSha(c, path);
                JSONObject body = new JSONObject();
                body.put("message", "Doit backup " + now());
                body.put("content", b64);
                if (sha != null) body.put("sha", sha);
                HttpResp r = http(c, "PUT", path, body.toString());
                if (r.code != 200 && r.code != 201) {
                    throw new IOException("GitHub 返回 " + r.code + " " + brief(r.body));
                }
                prefs(c).edit().putString(K_LAST, "上传 " + now()).commit();
            }
        }, new Runnable() {
            @Override
            public void run() { toast(a, "✓ 备份已上传到 GitHub"); }
        });
    }

    private static void download(final Activity a) {
        if (token(a).length() == 0) { toast(a, "请先设置 Token"); editToken(a); return; }
        new AlertDialog.Builder(a).setTitle("从 GitHub 恢复")
            .setMessage("将用 GitHub 上的备份覆盖本机全部数据，恢复后应用会自动重启。确定继续？")
            .setPositiveButton("恢复", new DialogInterface.OnClickListener() {
                @Override
                public void onClick(DialogInterface dialog, int which) {
                    runAsync(a, "正在下载恢复…", new Worker() {
                        @Override
                        public void run(Context c) throws Exception {
                            String path = "/repos/" + repo(c) + "/contents/" + REMOTE_FILE;
                            HttpResp r = http(c, "GET", path, null);
                            if (r.code == 404) throw new IOException("GitHub 上还没有备份文件");
                            if (r.code != 200) throw new IOException("GitHub 返回 " + r.code + " " + brief(r.body));
                            String content = new JSONObject(r.body).getString("content");
                            byte[] raw = gunzip(Base64.decode(content, Base64.DEFAULT));
                            restoreDb(c, raw);
                            prefs(c).edit().putString(K_LAST, "下载 " + now()).commit();
                        }
                    }, new Runnable() {
                        @Override
                        public void run() {
                            new AlertDialog.Builder(a).setTitle("恢复完成")
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
            }).setNegativeButton("取消", null).show();
    }

    // ---------- 数据库快照与恢复 ----------

    /** 优先 VACUUM INTO 取一致快照，失败则直接读文件 */
    private static byte[] snapshot(Context c) throws IOException {
        File db = c.getDatabasePath(DB_NAME);
        if (!db.exists()) throw new IOException("本机数据库不存在");
        File tmp = new File(db.getParentFile(), "gh_snapshot_tmp.db");
        tmp.delete();
        try {
            SQLiteDatabase d = SQLiteDatabase.openDatabase(db.getPath(), null, SQLiteDatabase.OPEN_READWRITE);
            try { d.execSQL("VACUUM INTO '" + tmp.getPath() + "'"); } finally { d.close(); }
            return readFile(tmp);
        } catch (Throwable t) {
            return readFile(db);
        } finally {
            tmp.delete();
        }
    }

    private static void restoreDb(Context c, byte[] raw) throws IOException {
        File db = c.getDatabasePath(DB_NAME);
        File dir = db.getParentFile();
        if (!dir.exists() && !dir.mkdirs()) throw new IOException("无法访问数据库目录");
        File tmp = new File(dir, "gh_restore_tmp.db");
        OutputStream os = new java.io.FileOutputStream(tmp);
        try { os.write(raw); } finally { os.close(); }
        // 清掉旧 journal/wal，避免旧日志覆盖新库
        new File(db.getPath() + "-journal").delete();
        new File(db.getPath() + "-wal").delete();
        new File(db.getPath() + "-shm").delete();
        if (db.exists() && !db.delete()) throw new IOException("无法替换旧数据库（请重启后重试）");
        if (!tmp.renameTo(db)) throw new IOException("写入恢复数据失败");
    }

    // ---------- HTTP（GitHub Contents API） ----------

    private static class HttpResp {
        int code;
        String body;
    }

    private static String remoteSha(Context c, String path) throws IOException {
        HttpResp r = http(c, "GET", path, null);
        if (r.code == 404) return null;
        if (r.code != 200) throw new IOException("GitHub 返回 " + r.code + " " + brief(r.body));
        try { return new JSONObject(r.body).getString("sha"); }
        catch (Exception e) { return null; }
    }

    private static HttpResp http(Context c, String method, String path, String jsonBody) throws IOException {
        HttpURLConnection conn = null;
        try {
            conn = (HttpURLConnection) new URL(API + path).openConnection();
            conn.setConnectTimeout(15000);
            conn.setReadTimeout(120000);
            conn.setRequestMethod(method);
            conn.setRequestProperty("Authorization", "token " + token(c));
            conn.setRequestProperty("Accept", "application/vnd.github+json");
            conn.setRequestProperty("User-Agent", "DoitLocalSync/1.0");
            if (jsonBody != null) {
                conn.setDoOutput(true);
                conn.setRequestProperty("Content-Type", "application/json");
                OutputStream os = conn.getOutputStream();
                try { os.write(jsonBody.getBytes("UTF-8")); } finally { os.close(); }
            }
            HttpResp r = new HttpResp();
            r.code = conn.getResponseCode();
            InputStream is = r.code >= 400 ? conn.getErrorStream() : conn.getInputStream();
            ByteArrayOutputStream buf = new ByteArrayOutputStream();
            if (is != null) {
                byte[] b = new byte[8192];
                int n;
                while ((n = is.read(b)) > 0) buf.write(b, 0, n);
                is.close();
            }
            r.body = new String(buf.toByteArray(), "UTF-8");
            return r;
        } finally {
            if (conn != null) conn.disconnect();
        }
    }

    // ---------- 工具 ----------

    private static void runAsync(final Activity a, final String doing, final Worker w, final Runnable ok) {
        toast(a, doing);
        new Thread(new Runnable() {
            @Override
            public void run() {
                try {
                    w.run(a);
                    MAIN.post(ok);
                } catch (final Exception e) {
                    final String msg = e.getMessage() == null ? e.getClass().getSimpleName() : e.getMessage();
                    MAIN.post(new Runnable() {
                        @Override
                        public void run() { toast(a, "同步失败: " + msg); }
                    });
                }
            }
        }).start();
    }

    private static void toast(final Context c, final String msg) {
        MAIN.post(new Runnable() {
            @Override
            public void run() { Toast.makeText(c, msg, Toast.LENGTH_LONG).show(); }
        });
    }

    private static void pad(View v) {
        float d = v.getResources().getDisplayMetrics().density;
        v.setPadding((int) (d * 20), (int) (d * 12), (int) (d * 20), (int) (d * 12));
    }

    private static String now() {
        return new SimpleDateFormat("yyyy-MM-dd HH:mm", Locale.getDefault()).format(new Date());
    }

    private static String brief(String s) {
        if (s == null) return "";
        try {
            JSONObject j = new JSONObject(s);
            return j.optString("message", "");
        } catch (Exception e) {
            return s.length() > 120 ? s.substring(0, 120) : s;
        }
    }

    private static byte[] gzip(byte[] raw) throws IOException {
        ByteArrayOutputStream buf = new ByteArrayOutputStream();
        GZIPOutputStream gz = new GZIPOutputStream(buf);
        gz.write(raw);
        gz.close();
        return buf.toByteArray();
    }

    private static byte[] gunzip(byte[] gz) throws IOException {
        GZIPInputStream in = new GZIPInputStream(new ByteArrayInputStream(gz));
        ByteArrayOutputStream buf = new ByteArrayOutputStream();
        byte[] b = new byte[8192];
        int n;
        while ((n = in.read(b)) > 0) buf.write(b, 0, n);
        in.close();
        return buf.toByteArray();
    }

    private static byte[] readFile(File f) throws IOException {
        FileInputStream in = new FileInputStream(f);
        ByteArrayOutputStream buf = new ByteArrayOutputStream();
        byte[] b = new byte[8192];
        int n;
        while ((n = in.read(b)) > 0) buf.write(b, 0, n);
        in.close();
        return buf.toByteArray();
    }
}
