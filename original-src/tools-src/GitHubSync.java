package im.doit.pro.github;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.database.sqlite.SQLiteDatabase;
import android.os.Handler;
import android.os.Looper;
import android.util.Base64;
import android.view.View;
import android.widget.Toast;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
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

/** GitHub 仓库备份/恢复引擎（本地版追加功能，不依赖原同步引擎） */
public class GitHubSync {

    public static final String PREFS = "doit_github_sync";
    private static final String K_TOKEN = "token";
    private static final String K_REPO = "repo";
    private static final String K_LAST = "last_sync";
    public static final String DEFAULT_REPO = "szwnba/doit-data";
    private static final String K_PENDING = "pending_restore";
    private static final String DB_NAME = "doitim.db";
    private static final String REMOTE_FILE = "doitim.db.gz";
    private static final String API = "https://api.github.com";

    public interface Worker {
        void run(Context c) throws Exception;
    }

    private static final Handler MAIN = new Handler(Looper.getMainLooper());

    // ---------- 配置读写 ----------

    public static SharedPreferences prefs(Context c) {
        return c.getSharedPreferences(PREFS, 0);
    }

    public static String token(Context c) {
        return prefs(c).getString(K_TOKEN, "");
    }

    public static String repo(Context c) {
        String r = prefs(c).getString(K_REPO, "");
        return r.length() == 0 ? DEFAULT_REPO : r;
    }

    public static String lastSync(Context c) {
        String s = prefs(c).getString(K_LAST, "");
        return s.length() == 0 ? "从未同步" : s;
    }

    public static void setLastSync(Context c, String what) {
        prefs(c).edit().putString(K_LAST, what + " " + now()).commit();
    }

    // ---------- 设置页入口 ----------

    /** 在 SettingsActivity.onCreate 里调用：找到标签含 "GitHub" 的行并接上点击。 */
    public static void wire(final Activity a) {
        try {
            View target = findByText(a.getWindow().getDecorView(), "GitHub");
            if (target != null) {
                View parent = (View) target.getParent();
                parent.setOnClickListener(new View.OnClickListener() {
                    @Override
                    public void onClick(View v) {
                        open(a);
                    }
                });
            }
        } catch (Throwable t) {
            // 设置页接线失败不影响其他功能
        }
    }

    public static void open(Activity a) {
        Intent i = new Intent();
        i.setClassName(a, "im.doit.pro.github.GitHubSyncActivity");
        a.startActivity(i);
    }

    private static View findByText(View v, String key) {
        if (v instanceof android.widget.TextView) {
            CharSequence text = ((android.widget.TextView) v).getText();
            if (text != null && text.toString().contains(key)) return v;
        }
        if (v instanceof android.view.ViewGroup) {
            android.view.ViewGroup g = (android.view.ViewGroup) v;
            for (int i = 0; i < g.getChildCount(); i++) {
                View r = findByText(g.getChildAt(i), key);
                if (r != null) return r;
            }
        }
        return null;
    }

    // ---------- 上传 / 下载（引擎，回调在主线程） ----------

    public static void doUpload(final Activity a, final Runnable onDone) {
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
                setLastSync(c, "上传");
            }
        }, onDone);
    }

    public static void doRestore(final Activity a, final Runnable onDone) {
        runAsync(a, "正在下载恢复…", new Worker() {
            @Override
            public void run(Context c) throws Exception {
                String path = "/repos/" + repo(c) + "/contents/" + REMOTE_FILE;
                HttpResp r = http(c, "GET", path, null);
                if (r.code == 404) throw new IOException("GitHub 上还没有备份文件");
                if (r.code != 200) throw new IOException("GitHub 返回 " + r.code + " " + brief(r.body));
                String content = new JSONObject(r.body).getString("content");
                byte[] raw = gunzip(Base64.decode(content, Base64.DEFAULT));
                stageRestore(c, raw);
                setLastSync(c, "下载");
            }
        }, onDone);
    }

    /** 启动最早期（DoitApp.onCreate，任何 DB 连接打开前）调用：完成挂起的恢复替换。绝不抛异常。 */
    public static void applyPendingRestore(Context c) {
        try {
            SharedPreferences p = prefs(c);
            if (!p.getBoolean(K_PENDING, false)) return;
            File db = c.getDatabasePath(DB_NAME);
            File staging = new File(db.getParentFile(), DB_NAME + ".ghrestore");
            if (!staging.exists()) {
                p.edit().putBoolean(K_PENDING, false).commit();
                return;
            }
            new File(db.getPath() + "-journal").delete();
            new File(db.getPath() + "-wal").delete();
            new File(db.getPath() + "-shm").delete();
            if (db.exists()) db.delete();
            if (!staging.renameTo(db)) return; // 保底：下次启动再试
            p.edit().putBoolean(K_PENDING, false).commit();
        } catch (Throwable t) {
            // 启动路径，吞掉一切异常
        }
    }

    /** 在 DoitApp.onCreate（DoitCrashException.init 之后）调用：包装默认崩溃处理器，
     *  把堆栈写到应用外部目录和公共 Download 目录，供无 adb 环境取日志。 */
    public static void installCrashLogger(final Context c) {
        try {
            final Thread.UncaughtExceptionHandler prev = Thread.getDefaultUncaughtExceptionHandler();
            Thread.setDefaultUncaughtExceptionHandler(new Thread.UncaughtExceptionHandler() {
                @Override
                public void uncaughtException(Thread t, Throwable e) {
                    try {
                        java.io.StringWriter sw = new java.io.StringWriter();
                        sw.write("==== crash " + now() + " thread=" + t.getName() + " ====\n");
                        e.printStackTrace(new java.io.PrintWriter(sw));
                        String text = sw.toString();
                        java.io.File appDir = c.getExternalFilesDir(null);
                        if (appDir != null) writeFile(new java.io.File(appDir, "doit_crash.txt"), text);
                        try {
                            java.io.File dl = android.os.Environment.getExternalStoragePublicDirectory(
                                android.os.Environment.DIRECTORY_DOWNLOADS);
                            writeFile(new java.io.File(dl, "doit_crash.txt"), text);
                        } catch (Throwable ignore) { }
                    } catch (Throwable ignore) { }
                    if (prev != null) prev.uncaughtException(t, e);
                }
            });
        } catch (Throwable t) { }
    }

    private static void writeFile(java.io.File f, String s) {
        try {
            java.io.FileWriter w = new java.io.FileWriter(f, true);
            w.write(s);
            w.write("\n");
            w.close();
        } catch (Throwable t) { }
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

    /** 只写入暂存文件并打标记，真正的替换推迟到下次启动（applyPendingRestore），
     *  避免在活进程、数据库连接未关闭时替换文件导致旧 WAL 写坏新库。 */
    private static void stageRestore(Context c, byte[] raw) throws IOException {
        File db = c.getDatabasePath(DB_NAME);
        File dir = db.getParentFile();
        if (!dir.exists() && !dir.mkdirs()) throw new IOException("无法访问数据库目录");
        File staging = new File(dir, DB_NAME + ".ghrestore");
        OutputStream os = new FileOutputStream(staging);
        try { os.write(raw); } finally { os.close(); }
        prefs(c).edit().putBoolean(K_PENDING, true).commit();
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

    public static void toast(final Context c, final String msg) {
        MAIN.post(new Runnable() {
            @Override
            public void run() { Toast.makeText(c, msg, Toast.LENGTH_LONG).show(); }
        });
    }

    public static String now() {
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
