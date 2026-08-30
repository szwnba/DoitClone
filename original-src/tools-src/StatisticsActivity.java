package im.doit.pro.stat;

import android.app.Activity;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.graphics.Paint;
import android.graphics.Typeface;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.view.Gravity;
import android.view.MenuItem;
import android.view.View;
import android.widget.Button;
import android.widget.GridLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collections;
import java.util.Comparator;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import im.doit.pro.activity.DSwipeBackBaseActivity;

/** 任务统计：按天/周/月查看完成情况 —— 直查本地 SQLite，聚合渲染，原版视觉风格 */
public class StatisticsActivity extends DSwipeBackBaseActivity {

    private static final int BLUE = 0xFF1262A1;
    private static final int BLUE_DIM = 0xFF9EC3E0;
    private static final int ORANGE = 0xFFC05318;
    private static final int TEXT_MAIN = 0xFF333333;
    private static final int TEXT_GRAY = 0xFF8A8A8A;
    private static final int HEAT[] = { 0xFFE8E8E8, 0xFFCFE2F2, 0xFF9EC3E0, 0xFF4A87BC, 0xFF1262A1 };

    private LinearLayout root;
    private final Handler main = new Handler(Looper.getMainLooper());
    private String mode = "day";

    static class T {
        long time;
        String title;
    }

    private float dp(float v) { return getResources().getDisplayMetrics().density * v; }
    private int id(String name) { return getResources().getIdentifier(name, "id", getPackageName()); }

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(getResources().getIdentifier("activity_statistics", "layout", getPackageName()));

        android.app.ActionBar bar = getActionBar();
        if (bar != null) {
            bar.setTitle(getResources().getIdentifier("stat_title", "string", getPackageName()));
            bar.setDisplayHomeAsUpEnabled(true);
            bar.setHomeButtonEnabled(true);
            bar.setDisplayShowTitleEnabled(true);
            bar.setDisplayUseLogoEnabled(false);
        }

        root = (LinearLayout) findViewById(id("stat_root"));
        reload();
    }

    public static void open(Activity a) {
        android.content.Intent i = new android.content.Intent();
        i.setClassName(a, "im.doit.pro.stat.StatisticsActivity");
        a.startActivity(i);
    }

    private void reload() {
        root.removeAllViews();
        root.addView(spinnerRow());
        loadAsync();
    }

    private View spinnerRow() {
        LinearLayout row = new LinearLayout(this);
        row.setOrientation(LinearLayout.HORIZONTAL);
        row.setBackgroundColor(0xFFFFFFFF);
        LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(-1, -2);
        int m = (int) dp(12);
        lp.setMargins(m, m, m, (int) dp(10));
        row.setLayoutParams(lp);
        String[] segLabels = { "按天", "按周", "按月" };
        String[] modes = { "day", "week", "month" };
        for (int i = 0; i < 3; i++) {
            Button b = new Button(this);
            LinearLayout.LayoutParams blp = new LinearLayout.LayoutParams(0, (int) dp(38), 1f);
            if (i > 0) blp.leftMargin = 1;
            b.setLayoutParams(blp);
            b.setText(segLabels[i]);
            b.setTextSize(14);
            boolean on = modes[i].equals(mode);
            b.setBackgroundColor(on ? BLUE : 0x00000000);
            b.setTextColor(on ? 0xFFFFFFFF : TEXT_GRAY);
            final String mm = modes[i];
            b.setOnClickListener(new View.OnClickListener() {
                @Override public void onClick(View v) {
                    if (!mode.equals(mm)) { mode = mm; reload(); }
                }
            });
            row.addView(b);
        }
        return row;
    }

    // ---------- 数据加载 ----------

    private void loadAsync() {
        final StatisticsActivity self = this;
        final String m = mode;
        new Thread(new Runnable() {
            @Override public void run() {
                Object[] result = null;
                try { result = query(m); } catch (Throwable t) { }
                final Object[] r = result;
                main.post(new Runnable() {
                    @Override public void run() {
                        if (self.isFinishing() || !m.equals(mode)) return;
                        if (r == null) { root.addView(note("数据读取失败，请重试")); return; }
                        render(m, r);
                    }
                });
            }
        }).start();
    }

    /** 返回 [doneInBuckets[], createdInBuckets[], doneRate, buckets[label], groups, heat[]] */
    private Object[] query(String m) {
        File db = getDatabasePath("doitim.db");
        if (!db.exists()) return new Object[] { new int[7], new int[7], Integer.valueOf(0), new String[0], new Object[0][], new int[0] };
        SQLiteDatabase d = SQLiteDatabase.openDatabase(db.getPath(), null, SQLiteDatabase.OPEN_READONLY);
        try {
            Calendar now = Calendar.getInstance();
            List<long[]> ranges = new ArrayList<long[]>();
            List<String> labels = new ArrayList<String>();
            SimpleDateFormat df;

            if ("day".equals(m)) {
                df = new SimpleDateFormat("M/d", Locale.CHINA);
                for (int i = 6; i >= 0; i--) {
                    Calendar s = (Calendar) now.clone(); s.add(Calendar.DAY_OF_YEAR, -i);
                    dayStart(s);
                    Calendar e = (Calendar) s.clone(); e.add(Calendar.DAY_OF_YEAR, 1);
                    ranges.add(new long[]{ s.getTimeInMillis(), e.getTimeInMillis() });
                    labels.add(i == 0 ? "今天" : (i == 1 ? "昨天" : df.format(s.getTime())));
                }
            } else if ("week".equals(m)) {
                df = new SimpleDateFormat("M/d", Locale.CHINA);
                for (int i = 5; i >= 0; i--) {
                    Calendar s = (Calendar) now.clone();
                    s.add(Calendar.WEEK_OF_YEAR, -i);
                    s.set(Calendar.DAY_OF_WEEK, Calendar.MONDAY);
                    dayStart(s);
                    if (s.after(now)) { s.add(Calendar.WEEK_OF_YEAR, -1); } // 周日时本周一计算
                    Calendar e = (Calendar) s.clone(); e.add(Calendar.WEEK_OF_YEAR, 1);
                    ranges.add(new long[]{ s.getTimeInMillis(), e.getTimeInMillis() });
                    labels.add(i == 0 ? "本周" : df.format(s.getTime()) + "周");
                }
            } else {
                for (int i = 5; i >= 0; i--) {
                    Calendar s = (Calendar) now.clone();
                    s.add(Calendar.MONTH, -i);
                    s.set(Calendar.DAY_OF_MONTH, 1); dayStart(s);
                    Calendar e = (Calendar) s.clone(); e.add(Calendar.MONTH, 1);
                    ranges.add(new long[]{ s.getTimeInMillis(), e.getTimeInMillis() });
                    labels.add(i == 0 ? "本月" : (s.get(Calendar.MONTH) + 1) + "月");
                }
            }

            int n = ranges.size();
            int[] done = new int[n];
            int[] created = new int[n];
            for (int i = 0; i < n; i++) {
                done[i] = count(d, "completed>0 AND trashed=0 AND deleted=0 AND completed>=? AND completed<?", ranges.get(i));
                created[i] = count(d, "trashed=0 AND deleted=0 AND created>=? AND created<?", ranges.get(i));
            }
            // 完成率 = 当前时段新增里已完成的比例
            long[] cur = ranges.get(n - 1);
            int c = count(d, "trashed=0 AND deleted=0 AND created>=? AND created<?", cur);
            int cd = count(d, "completed>0 AND trashed=0 AND deleted=0 AND created>=? AND created<?", cur);
            int rate = c > 0 ? Math.round(cd * 100f / c) : 0;

            // 清单：当前时段 + 上一时段的完成任务
            List<Object[]> groups = new ArrayList<Object[]>();
            SimpleDateFormat gdf = new SimpleDateFormat("M月d日 EEEE", Locale.CHINA);
            SimpleDateFormat hdf = new SimpleDateFormat("M月d日", Locale.CHINA);
            Map<String, List<T>> byDay = new HashMap<String, List<T>>();
            List<String> dayOrder = new ArrayList<String>();
            long listFrom = n >= 2 ? ranges.get(n - 2)[0] : ranges.get(0)[0];
            Cursor cr = d.rawQuery("SELECT title, completed FROM tasks WHERE completed>0 AND trashed=0 AND deleted=0 AND completed>=? ORDER BY completed DESC", new String[]{ String.valueOf(listFrom) });
            while (cr.moveToNext()) {
                T t = new T();
                t.title = cr.getString(0);
                t.time = cr.getLong(1);
                String key;
                if ("day".equals(m)) {
                    Calendar c2 = Calendar.getInstance(); c2.setTimeInMillis(t.time);
                    dayStart(c2);
                    int off = daysBetween(c2, now);
                    key = off == 0 ? "今天" : (off == 1 ? "昨天" : hdf.format(c2.getTime()));
                } else {
                    Calendar c2 = Calendar.getInstance(); c2.setTimeInMillis(t.time);
                    dayStart(c2);
                    key = gdf.format(c2.getTime());
                }
                if (!byDay.containsKey(key)) { byDay.put(key, new ArrayList<T>()); dayOrder.add(key); }
                byDay.get(key).add(t);
            }
            cr.close();
            for (String k : dayOrder) groups.add(new Object[]{ k, byDay.get(k) });

            // 热力（仅月）：本月每日完成数
            int[] heat = new int[0];
            if ("month".equals(m)) {
                Calendar ms = (Calendar) now.clone();
                ms.set(Calendar.DAY_OF_MONTH, 1); dayStart(ms);
                int days = now.getActualMaximum(Calendar.DAY_OF_MONTH);
                heat = new int[days];
                Cursor hc = d.rawQuery("SELECT completed FROM tasks WHERE completed>0 AND trashed=0 AND deleted=0 AND completed>=?", new String[]{ String.valueOf(ms.getTimeInMillis()) });
                while (hc.moveToNext()) {
                    Calendar c3 = Calendar.getInstance(); c3.setTimeInMillis(hc.getLong(0));
                    int dom = c3.get(Calendar.DAY_OF_MONTH);
                    if (dom >= 1 && dom <= days) heat[dom - 1]++;
                }
                hc.close();
            }

            return new Object[]{ done, created, rate, labels.toArray(new String[0]), groups.toArray(new Object[0][]), heat };
        } finally {
            d.close();
        }
    }

    private int count(SQLiteDatabase d, String where, long[] range) {
        Cursor c = d.rawQuery("SELECT COUNT(*) FROM tasks WHERE " + where,
            new String[]{ String.valueOf(range[0]), String.valueOf(range[1]) });
        c.moveToFirst();
        int n = c.getInt(0);
        c.close();
        return n;
    }

    private static void dayStart(Calendar c) {
        c.set(Calendar.HOUR_OF_DAY, 0); c.set(Calendar.MINUTE, 0);
        c.set(Calendar.SECOND, 0); c.set(Calendar.MILLISECOND, 0);
    }

    private static int daysBetween(Calendar a, Calendar b) {
        long d = b.getTimeInMillis() - a.getTimeInMillis();
        return (int) Math.round(d / 86400000.0);
    }

    // ---------- 渲染 ----------

    private void render(String m, Object[] r) {
        int[] done = (int[]) r[0];
        int[] created = (int[]) r[1];
        int rate = (Integer) r[2];
        String[] labels = (String[]) r[3];
        Object[][] groups = (Object[][]) r[4];
        int[] heat = (int[]) r[5];

        int total = 0;
        for (int v : done) total += v;
        int createdTotal = 0;
        for (int v : created) createdTotal += v;

        root.addView(kpiRow(done[done.length - 1], created[created.length - 1], rate));
        root.addView(chartCard("完成趋势", labels, done));
        if ("month".equals(m) && heat.length > 0) root.addView(heatCard(heat));
        if (groups.length == 0) root.addView(note("该时段还没有完成记录"));
        for (Object[] g : groups) {
            root.addView(groupHeader((String) g[0] + "  ·  " + ((List<?>) g[1]).size() + " 条"));
            LinearLayout card = card();
            List<?> ts = (List<?>) g[1];
            for (int i = 0; i < ts.size() && i < 30; i++) {
                T t = (T) ts.get(i);
                card.addView(taskRow(t.title));
            }
            root.addView(card);
        }
    }

    private View kpiRow(int done, int created, int rate) {
        LinearLayout card = card();
        card.setPadding((int) dp(6), (int) dp(12), (int) dp(6), (int) dp(12));
        int[][] kv = { { done, 0 }, { created, 0 }, { rate, 1 } };
        String[] kl = { "完成", "新增", "完成率" };
        for (int i = 0; i < 3; i++) {
            LinearLayout col = new LinearLayout(this);
            col.setOrientation(LinearLayout.VERTICAL);
            col.setGravity(Gravity.CENTER);
            LinearLayout.LayoutParams clp = new LinearLayout.LayoutParams(0, -2, 1f);
            col.setLayoutParams(clp);
            TextView v = new TextView(this);
            v.setText(kv[i][1] == 1 ? rate + "%" : String.valueOf(kv[i][0]));
            v.setTextSize(22); v.setTypeface(Typeface.DEFAULT_BOLD);
            v.setTextColor(kv[i][1] == 1 ? ORANGE : BLUE);
            TextView l = new TextView(this);
            l.setText(kl[i]); l.setTextSize(11); l.setTextColor(TEXT_GRAY);
            l.setPadding(0, (int) dp(3), 0, 0);
            col.addView(v); col.addView(l);
            card.addView(col);
        }
        return card;
    }

    private View chartCard(String title, String[] labels, int[] values) {
        LinearLayout card = card();
        card.setPadding((int) dp(12), (int) dp(12), (int) dp(8), (int) dp(8));
        TextView t = new TextView(this);
        t.setText(title); t.setTextSize(12); t.setTextColor(TEXT_GRAY);
        t.setPadding(0, 0, 0, (int) dp(10));
        card.addView(t);

        LinearLayout bars = new LinearLayout(this);
        bars.setOrientation(LinearLayout.HORIZONTAL);
        int max = 1;
        for (int v : values) if (v > max) max = v;
        int barMaxPx = (int) dp(110);
        for (int i = 0; i < values.length; i++) {
            LinearLayout col = new LinearLayout(this);
            col.setOrientation(LinearLayout.VERTICAL);
            col.setGravity(Gravity.CENTER_HORIZONTAL);
            LinearLayout.LayoutParams clp = new LinearLayout.LayoutParams(0, -2, 1f);
            clp.setMargins((int) dp(3), 0, (int) dp(3), 0);
            col.setLayoutParams(clp);

            TextView val = new TextView(this);
            val.setText(String.valueOf(values[i]));
            val.setTextSize(9); val.setTextColor(BLUE);
            val.setPadding(0, 0, 0, (int) dp(2));

            android.widget.FrameLayout slot = new android.widget.FrameLayout(this);
            LinearLayout.LayoutParams slp = new LinearLayout.LayoutParams(-1, barMaxPx);
            slot.setLayoutParams(slp);
            View bar = new View(this);
            android.widget.FrameLayout.LayoutParams blp = new android.widget.FrameLayout.LayoutParams(-1, Math.max((int) (values[i] * 1f / max * barMaxPx), values[i] > 0 ? (int) dp(3) : 0), Gravity.BOTTOM);
            bar.setLayoutParams(blp);
            bar.setBackgroundColor(i == values.length - 1 ? BLUE : BLUE_DIM);
            slot.addView(bar);

            TextView lab = new TextView(this);
            lab.setText(labels[i]);
            lab.setTextSize(9); lab.setTextColor(TEXT_GRAY);
            lab.setPadding(0, (int) dp(5), 0, 0);
            lab.setSingleLine(true);

            col.addView(val); col.addView(slot); col.addView(lab);
            bars.addView(col);
        }
        card.addView(bars);
        return card;
    }

    private View heatCard(int[] heat) {
        LinearLayout card = card();
        card.setPadding((int) dp(12), (int) dp(12), (int) dp(12), (int) dp(10));
        TextView t = new TextView(this);
        t.setText("本月热力 · 每格一天，颜色越深完成越多");
        t.setTextSize(12); t.setTextColor(TEXT_GRAY);
        t.setPadding(0, 0, 0, (int) dp(10));
        card.addView(t);

        Calendar cal = Calendar.getInstance();
        int firstDow = (cal.get(Calendar.DAY_OF_WEEK) + 5) % 7; // 周一=0
        int days = heat.length;
        GridLayout grid = new GridLayout(this);
        grid.setColumnCount(7);
        int cell = (int) dp(14);
        int gap = (int) dp(3);
        for (int i = 0; i < firstDow; i++) grid.addView(blank(cell));
        for (int i = 0; i < days; i++) {
            View v = new View(this);
            GridLayout.LayoutParams gl = new GridLayout.LayoutParams();
            gl.width = cell; gl.height = cell;
            gl.setMargins(0, 0, gap, gap);
            v.setLayoutParams(gl);
            int c = heat[i];
            int lv = c >= 10 ? 4 : c >= 6 ? 3 : c >= 3 ? 2 : c >= 1 ? 1 : 0;
            v.setBackgroundColor(HEAT[lv]);
            grid.addView(v);
        }
        card.addView(grid);
        return card;
    }

    private View blank(int size) {
        View v = new View(this);
        GridLayout.LayoutParams gl = new GridLayout.LayoutParams();
        gl.width = size; gl.height = 1;
        gl.setMargins(0, 0, (int) dp(3), (int) dp(3));
        v.setLayoutParams(gl);
        return v;
    }

    private LinearLayout card() {
        LinearLayout c = new LinearLayout(this);
        c.setOrientation(LinearLayout.VERTICAL);
        c.setBackgroundColor(0xFFFFFFFF);
        LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(-1, -2);
        int m = (int) dp(12);
        lp.setMargins(m, 0, m, (int) dp(10));
        c.setLayoutParams(lp);
        return c;
    }

    private View groupHeader(String text) {
        TextView t = new TextView(this);
        t.setText(text);
        t.setTextSize(12); t.setTextColor(TEXT_GRAY);
        t.setPadding((int) dp(14), (int) dp(8), (int) dp(14), (int) dp(5));
        return t;
    }

    private View taskRow(String title) {
        LinearLayout row = new LinearLayout(this);
        row.setOrientation(LinearLayout.HORIZONTAL);
        row.setGravity(Gravity.CENTER_VERTICAL);
        row.setPadding((int) dp(10), (int) dp(9), (int) dp(10), (int) dp(9));
        if (getResources().getIdentifier("icon_checkbox_completed", "drawable", getPackageName()) != 0) {
            ImageView iv = new ImageView(this);
            int resid = getResources().getIdentifier("icon_checkbox_completed", "drawable", getPackageName());
            iv.setImageResource(resid);
            LinearLayout.LayoutParams ilp = new LinearLayout.LayoutParams((int) dp(18), (int) dp(18));
            ilp.rightMargin = (int) dp(10);
            iv.setLayoutParams(ilp);
            row.addView(iv);
        }
        TextView tv = new TextView(this);
        tv.setText(title);
        tv.setTextSize(14); tColor(tv);
        tv.setSingleLine(true);
        tv.setPaintFlags(tv.getPaintFlags() | Paint.STRIKE_THRU_TEXT_FLAG);
        LinearLayout.LayoutParams tlp = new LinearLayout.LayoutParams(0, -2, 1f);
        tv.setLayoutParams(tlp);
        row.addView(tv);
        return row;
    }

    private void tColor(TextView tv) { tv.setTextColor(0xFF9A9A9A); }

    private View note(String text) {
        TextView t = new TextView(this);
        t.setText(text);
        t.setTextSize(13); t.setTextColor(TEXT_GRAY);
        t.setGravity(Gravity.CENTER);
        t.setPadding(0, (int) dp(30), 0, (int) dp(30));
        return t;
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
