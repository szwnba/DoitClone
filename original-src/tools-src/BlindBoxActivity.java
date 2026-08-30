package im.doit.pro.exp;

import android.app.Activity;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.graphics.Typeface;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.view.Gravity;
import android.view.MenuItem;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.RotateAnimation;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;

import java.io.File;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;

import im.doit.pro.activity.DSwipeBackBaseActivity;

/** 盲盒抽任务：从所选来源随机抽一条未完成任务（原型见 exp-preview） */
public class BlindBoxActivity extends DSwipeBackBaseActivity {

    private static final int BLUE = 0xFF1262A1;
    private static final int ORANGE = 0xFFC05318;
    private static final int TEXT_MAIN = 0xFF333333;
    private static final int TEXT_GRAY = 0xFF8A8A8A;

    static class Pick {
        String uuid;
        String repeatNo;
        String title;
        String attribute;
        int priority;
        long created;
    }

    private LinearLayout root;
    private final Handler main = new Handler(Looper.getMainLooper());
    private final Random random = new Random();
    private List<Pick> pool = new ArrayList<Pick>();
    private Pick current;
    private int srcIndex = 0;
    private static final String[] SRC_NAMES = { "全部待办", "收集箱", "今日待办", "下一步行动" };
    private boolean drawing = false;
    private Button srcBtn;
    private Button drawBtn;
    private LinearLayout resultCard;

    private float dp(float v) { return getResources().getDisplayMetrics().density * v; }
    private int id(String n) { return getResources().getIdentifier(n, "id", getPackageName()); }

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(getResources().getIdentifier("activity_blindbox", "layout", getPackageName()));

        android.app.ActionBar bar = getActionBar();
        if (bar != null) {
            bar.setTitle(getResources().getIdentifier("blindbox_title", "string", getPackageName()));
            bar.setDisplayHomeAsUpEnabled(true);
            bar.setHomeButtonEnabled(true);
            bar.setDisplayShowTitleEnabled(true);
            bar.setDisplayUseLogoEnabled(false);
        }

        root = (LinearLayout) findViewById(id("bb_root"));
        buildUi();
        loadPool();
    }

    private void buildUi() {
        // 来源切换行
        srcBtn = new Button(this);
        srcBtn.setTextSize(14);
        srcBtn.setTextColor(TEXT_MAIN);
        srcBtn.setBackgroundColor(0xFFFFFFFF);
        LinearLayout.LayoutParams slp = new LinearLayout.LayoutParams(-1, (int) dp(42));
        int m = (int) dp(12);
        slp.setMargins(m, m, m, 0);
        srcBtn.setLayoutParams(slp);
        srcBtn.setOnClickListener(new View.OnClickListener() {
            @Override public void onClick(View v) {
                srcIndex = (srcIndex + 1) % SRC_NAMES.length;
                updateSrcLabel();
                loadPool();
            }
        });
        root.addView(srcBtn);
        updateSrcLabel();

        // 抽取大按钮
        drawBtn = new Button(this);
        drawBtn.setTextSize(18);
        drawBtn.setTypeface(Typeface.DEFAULT_BOLD);
        drawBtn.setTextColor(0xFFFFFFFF);
        drawBtn.setBackgroundColor(BLUE);
        drawBtn.setText("🎁  点 我 抽 一 个");
        LinearLayout.LayoutParams dlp = new LinearLayout.LayoutParams(-1, (int) dp(150));
        dlp.setMargins(m, (int) dp(14), m, 0);
        drawBtn.setLayoutParams(dlp);
        drawBtn.setOnClickListener(new View.OnClickListener() {
            @Override public void onClick(View v) { draw(); }
        });
        root.addView(drawBtn);

        // 结果卡
        resultCard = new LinearLayout(this);
        resultCard.setOrientation(LinearLayout.VERTICAL);
        resultCard.setBackgroundColor(0xFFFFFFFF);
        LinearLayout.LayoutParams rlp = new LinearLayout.LayoutParams(-1, -2);
        rlp.setMargins(m, (int) dp(14), m, 0);
        resultCard.setLayoutParams(rlp);
        resultCard.setPadding((int) dp(16), (int) dp(14), (int) dp(16), (int) dp(14));
        resultCard.setVisibility(View.GONE);
        root.addView(resultCard);

        TextView hint = new TextView(this);
        hint.setText("· 只抽未完成、未删除的任务\n· 抽中不消耗、不改动任务本身");
        hint.setTextSize(11);
        hint.setTextColor(TEXT_GRAY);
        hint.setPadding((int) dp(16), (int) dp(12), (int) dp(16), 0);
        root.addView(hint);
    }

    private void updateSrcLabel() {
        srcBtn.setText("任务来源：" + SRC_NAMES[srcIndex] + "　（点我切换）");
    }

    private String srcWhere() {
        switch (srcIndex) {
            case 1: return " AND attribute='inbox'";
            case 2: return " AND attribute='plan' AND start_at>=" + todayStart() + " AND start_at<" + (todayStart() + 86400000L) + " AND (repeater IS NULL OR repeater='')";
            case 3: return " AND attribute='next'";
            default: return "";
        }
    }

    private long todayStart() {
        java.util.Calendar c = java.util.Calendar.getInstance();
        c.set(java.util.Calendar.HOUR_OF_DAY, 0);
        c.set(java.util.Calendar.MINUTE, 0);
        c.set(java.util.Calendar.SECOND, 0);
        c.set(java.util.Calendar.MILLISECOND, 0);
        return c.getTimeInMillis();
    }

    private void loadPool() {
        final BlindBoxActivity self = this;
        resultCard.setVisibility(View.GONE);
        new Thread(new Runnable() {
            @Override public void run() {
                List<Pick> r = new ArrayList<Pick>();
                try {
                    File db = getDatabasePath("doitim.db");
                    if (db.exists()) {
                        SQLiteDatabase d = SQLiteDatabase.openDatabase(db.getPath(), null, SQLiteDatabase.OPEN_READONLY);
                        try {
                            Cursor c = d.rawQuery("SELECT uuid, repeat_no, title, attribute, priority, created FROM tasks WHERE completed=0 AND trashed=0 AND deleted=0" + srcWhere(), null);
                            while (c.moveToNext()) {
                                Pick p = new Pick();
                                p.uuid = c.getString(0);
                                p.repeatNo = c.getString(1);
                                p.title = c.getString(2);
                                p.attribute = c.getString(3);
                                p.priority = c.getInt(4);
                                p.created = c.getLong(5);
                                if (p.title != null && p.title.trim().length() > 0) r.add(p);
                            }
                            c.close();
                        } finally { d.close(); }
                    }
                } catch (Throwable t) { }
                final List<Pick> res = r;
                main.post(new Runnable() {
                    @Override public void run() {
                        if (self.isFinishing()) return;
                        self.pool = res;
                        drawBtn.setText(res.size() > 0 ? "🎁  点 我 抽 一 个" : "🎁  该来源暂无任务");
                    }
                });
            }
        }).start();
    }

    private void draw() {
        if (drawing) return;
        if (pool.isEmpty()) { toast("该来源暂无可抽的任务"); return; }
        drawing = true;
        resultCard.setVisibility(View.GONE);

        // 摇动动画
        RotateAnimation shake = new RotateAnimation(-3f, 3f, Animation.RELATIVE_TO_SELF, 0.5f, Animation.RELATIVE_TO_SELF, 0.5f);
        shake.setDuration(90);
        shake.setRepeatCount(7);
        shake.setRepeatMode(Animation.REVERSE);
        drawBtn.startAnimation(shake);

        // 标题滚动
        final int steps = 9;
        for (int i = 0; i < steps; i++) {
            final int n = i;
            main.postDelayed(new Runnable() {
                @Override public void run() {
                    Pick p = pool.get(random.nextInt(pool.size()));
                    drawBtn.setText("「" + shortTitle(p.title) + "」");
                    if (n == steps - 1) reveal(pool.get(random.nextInt(pool.size())));
                }
            }, 90 * (i + 1));
        }
    }

    private String shortTitle(String t) {
        t = t.trim();
        return t.length() > 12 ? t.substring(0, 12) + "…" : t;
    }

    private void reveal(Pick p) {
        current = p;
        drawing = false;
        drawBtn.setText("🎁  再 抽 一 个");

        resultCard.removeAllViews();
        resultCard.setVisibility(View.VISIBLE);

        TextView box = new TextView(this);
        box.setText("来自：" + boxName(p.attribute));
        box.setTextSize(11); box.setTextColor(TEXT_GRAY);
        resultCard.addView(box);

        TextView title = new TextView(this);
        title.setText(p.title);
        title.setTextSize(17); title.setTextColor(TEXT_MAIN);
        title.setPadding(0, (int) dp(8), 0, (int) dp(8));
        resultCard.addView(title);

        LinearLayout meta = new LinearLayout(this);
        meta.setOrientation(LinearLayout.HORIZONTAL);
        if (p.priority >= 3) {
            TextView pr = new TextView(this);
            pr.setText("高优先级");
            pr.setTextSize(12); pr.setTextColor(ORANGE);
            pr.setPadding(0, 0, (int) dp(12), 0);
            meta.addView(pr);
        }
        TextView age = new TextView(this);
        age.setText("创建于 " + ageText(p.created));
        age.setTextSize(12); age.setTextColor(TEXT_GRAY);
        meta.addView(age);
        resultCard.addView(meta);

        Button go = new Button(this);
        go.setText("去做这条 →");
        go.setTextSize(14);
        go.setTextColor(BLUE);
        go.setBackgroundColor(0xFFF2F6FA);
        LinearLayout.LayoutParams glp = new LinearLayout.LayoutParams(-1, (int) dp(40));
        glp.topMargin = (int) dp(12);
        go.setLayoutParams(glp);
        go.setOnClickListener(new View.OnClickListener() {
            @Override public void onClick(View v) { openDetail(); }
        });
        resultCard.addView(go);
    }

    private String boxName(String attr) {
        if ("inbox".equals(attr)) return "收集箱";
        if ("next".equals(attr)) return "下一步行动";
        if ("plan".equals(attr)) return "今日待办";
        if ("waiting".equals(attr)) return "等待";
        if ("noplan".equals(attr)) return "未安排";
        return "任务";
    }

    private String ageText(long created) {
        if (created <= 0) return "未知时间";
        long days = (System.currentTimeMillis() - created) / 86400000L;
        if (days <= 0) return "今天";
        if (days == 1) return "昨天";
        return days + " 天前";
    }

    /** 反射拿真实 Task 对象并打开详情页（extra 需要 Serializable 的原版对象） */
    private void openDetail() {
        if (current == null) return;
        try {
            Class<?> app = Class.forName("im.doit.pro.activity.DoitApp");
            Object persist = app.getMethod("persist").invoke(null);
            Object dao = persist.getClass().getField("taskDao").get(persist);
            Method find = dao.getClass().getMethod("findByUUIDAndRepeatNo", String.class, String.class);
            Object task = find.invoke(dao, current.uuid, current.repeatNo);
            if (task == null) { toast("任务已不存在"); return; }
            android.content.Intent i = new android.content.Intent();
            i.setClassName(this, "im.doit.pro.activity.TaskDetailActivity");
            i.putExtra("task", (java.io.Serializable) task);
            try {
                Object box = app.getMethod("currentBox").invoke(null);
                if (box != null) i.putExtra("box", (java.io.Serializable) box);
            } catch (Throwable ignore) { }
            startActivity(i);
        } catch (Throwable t) {
            toast("打开详情失败: " + t.getClass().getSimpleName());
        }
    }

    private void toast(String msg) {
        android.widget.Toast.makeText(this, msg, android.widget.Toast.LENGTH_SHORT).show();
    }

    @Override
    public boolean onOptionsItemSelected(MenuItem item) {
        if (item.getItemId() == 0x0102002c) { finish(); return true; }
        return super.onOptionsItemSelected(item);
    }
}
