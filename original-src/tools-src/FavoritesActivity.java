package im.doit.pro.exp;

import android.app.Dialog;
import android.content.Intent;
import android.content.SharedPreferences;
import android.net.Uri;
import android.os.Bundle;
import android.view.Gravity;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;

import org.json.JSONArray;
import org.json.JSONObject;

import java.util.ArrayList;
import java.util.List;

import im.doit.pro.activity.DSwipeBackBaseActivity;
import im.doit.pro.ui.component.DButton;

/** 收藏夹：常用链接的增删与浏览器打开，存本机 SharedPreferences */
public class FavoritesActivity extends DSwipeBackBaseActivity {

    private static final String PREFS = "doit_favorites";
    private static final int BLUE = 0xFF1262A1;
    private static final int TEXT_MAIN = 0xFF333333;
    private static final int TEXT_GRAY = 0xFF8A8A8A;

    static class Fav {
        String n; String u;
    }

    private LinearLayout root;
    private List<Fav> favs = new ArrayList<Fav>();

    private float dp(float v) { return getResources().getDisplayMetrics().density * v; }
    private int id(String n) { return getResources().getIdentifier(n, "id", getPackageName()); }
    private int res(String n, String t) { return getResources().getIdentifier(n, t, getPackageName()); }

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(res("activity_favorites", "layout"));

        android.app.ActionBar bar = getActionBar();
        if (bar != null) {
            bar.setTitle(res("fav_title", "string"));
            bar.setDisplayHomeAsUpEnabled(true);
            bar.setHomeButtonEnabled(true);
            bar.setDisplayShowTitleEnabled(true);
            bar.setDisplayUseLogoEnabled(false);
        }

        root = (LinearLayout) findViewById(id("fav_root"));
        load();
        render();
    }

    // ---------- 数据 ----------

    private void load() {
        favs.clear();
        try {
            SharedPreferences p = getSharedPreferences(PREFS, 0);
            String s = p.getString("items", "[]");
            JSONArray arr = new JSONArray(s);
            for (int i = 0; i < arr.length(); i++) {
                JSONObject o = arr.getJSONObject(i);
                Fav f = new Fav();
                f.n = o.optString("n", "");
                f.u = o.optString("u", "");
                if (f.n.length() > 0 && f.u.length() > 0) favs.add(f);
            }
        } catch (Throwable t) { }
    }

    private void save() {
        try {
            JSONArray arr = new JSONArray();
            for (Fav f : favs) arr.put(new JSONObject().put("n", f.n).put("u", f.u));
            getSharedPreferences(PREFS, 0).edit().putString("items", arr.toString()).commit();
        } catch (Throwable t) { }
    }

    // ---------- 渲染 ----------

    private void render() {
        root.removeAllViews();

        Button add = new Button(this);
        add.setText("＋ 新增收藏");
        add.setTextSize(14);
        add.setTextColor(0xFFFFFFFF);
        add.setBackgroundColor(BLUE);
        LinearLayout.LayoutParams alp = new LinearLayout.LayoutParams(-1, (int) dp(44));
        int m = (int) dp(12);
        alp.setMargins(m, m, m, 0);
        add.setLayoutParams(alp);
        add.setOnClickListener(new View.OnClickListener() {
            @Override public void onClick(View v) { showAddDialog(); }
        });
        root.addView(add);

        if (favs.isEmpty()) {
            TextView empty = new TextView(this);
            empty.setText("还没有收藏，点上方按钮添加\n（常用网址、文档链接都行）");
            empty.setTextSize(13);
            empty.setTextColor(TEXT_GRAY);
            empty.setGravity(Gravity.CENTER);
            empty.setPadding(0, (int) dp(40), 0, (int) dp(40));
            root.addView(empty);
            return;
        }

        LinearLayout card = new LinearLayout(this);
        card.setOrientation(LinearLayout.VERTICAL);
        card.setBackgroundColor(0xFFFFFFFF);
        LinearLayout.LayoutParams clp = new LinearLayout.LayoutParams(-1, -2);
        clp.setMargins(m, (int) dp(12), m, 0);
        card.setLayoutParams(clp);

        for (int i = 0; i < favs.size(); i++) {
            final int idx = i;
            final Fav f = favs.get(i);
            LinearLayout row = new LinearLayout(this);
            row.setOrientation(LinearLayout.HORIZONTAL);
            row.setGravity(Gravity.CENTER_VERTICAL);
            row.setPadding((int) dp(12), (int) dp(10), (int) dp(8), (int) dp(10));

            TextView avatar = new TextView(this);
            avatar.setText(f.n.substring(0, 1).toUpperCase());
            avatar.setTextColor(BLUE);
            avatar.setTextSize(15);
            avatar.setGravity(Gravity.CENTER);
            avatar.setBackgroundColor(0xFFE8F0F8);
            android.widget.FrameLayout.LayoutParams avp = new android.widget.FrameLayout.LayoutParams((int) dp(34), (int) dp(34));
            avatar.setLayoutParams(avp);

            LinearLayout info = new LinearLayout(this);
            info.setOrientation(LinearLayout.VERTICAL);
            LinearLayout.LayoutParams ilp = new LinearLayout.LayoutParams(0, -2, 1f);
            ilp.leftMargin = (int) dp(12);
            info.setLayoutParams(ilp);
            TextView nm = new TextView(this);
            nm.setText(f.n);
            nm.setTextSize(15);
            nm.setTextColor(TEXT_MAIN);
            TextView url = new TextView(this);
            url.setText(f.u);
            url.setTextSize(11);
            url.setTextColor(TEXT_GRAY);
            url.setSingleLine(true);
            info.addView(nm);
            info.addView(url);

            TextView del = new TextView(this);
            del.setText("✕");
            del.setTextSize(16);
            del.setTextColor(0xFFCCCCCC);
            del.setPadding((int) dp(10), (int) dp(6), (int) dp(10), (int) dp(6));
            del.setOnClickListener(new View.OnClickListener() {
                @Override public void onClick(View v) { confirmDelete(idx); }
            });

            row.addView(avatar);
            row.addView(info);
            row.addView(del);
            row.setOnClickListener(new View.OnClickListener() {
                @Override public void onClick(View v) { openUrl(f.u); }
            });
            card.addView(row);

            if (i < favs.size() - 1) {
                View line = new View(this);
                line.setBackgroundColor(0x11000000);
                LinearLayout.LayoutParams llp = new LinearLayout.LayoutParams(-1, 1);
                card.addView(line, llp);
            }
        }
        root.addView(card);
    }

    // ---------- 操作 ----------

    private void openUrl(String u) {
        try {
            String url = u.startsWith("http") ? u : "https://" + u;
            startActivity(new Intent(Intent.ACTION_VIEW, Uri.parse(url)));
        } catch (Throwable t) {
            toast("无法打开链接");
        }
    }

    private void showAddDialog() {
        final Dialog d = new Dialog(this, res("Theme.Doit.Light.Dialog", "style"));
        View content = LayoutInflater.from(this).inflate(res("dialog_fav_add", "layout"), null);
        final EditText name = (EditText) content.findViewById(id("fav_name"));
        final EditText url = (EditText) content.findViewById(id("fav_url"));
        DButton cancel = (DButton) content.findViewById(id("cancel_btn"));
        DButton ok = (DButton) content.findViewById(id("ok_btn"));
        cancel.setOnClickListener(new View.OnClickListener() {
            @Override public void onClick(View v) { d.dismiss(); }
        });
        ok.setOnClickListener(new View.OnClickListener() {
            @Override public void onClick(View v) {
                d.dismiss();
                String n = name.getText().toString().trim();
                String u = url.getText().toString().trim();
                if (n.length() == 0 || u.length() == 0) { toast("名称和网址都要填"); return; }
                Fav f = new Fav();
                f.n = n; f.u = u;
                favs.add(f);
                save();
                render();
                toast("已收藏");
            }
        });
        d.setContentView(content);
        d.show();
    }

    private void confirmDelete(final int idx) {
        final Dialog d = new Dialog(this, res("Theme.Doit.Light.Dialog", "style"));
        View content = LayoutInflater.from(this).inflate(res("dialog_ghs_confirm", "layout"), null);
        ((TextView) content.findViewById(id("title"))).setText("删除收藏");
        ((TextView) content.findViewById(id("ghs_msg"))).setText("确定删除「" + favs.get(idx).n + "」？");
        DButton cancel = (DButton) content.findViewById(id("cancel_btn"));
        DButton ok = (DButton) content.findViewById(id("ok_btn"));
        cancel.setOnClickListener(new View.OnClickListener() {
            @Override public void onClick(View v) { d.dismiss(); }
        });
        ok.setOnClickListener(new View.OnClickListener() {
            @Override public void onClick(View v) {
                d.dismiss();
                favs.remove(idx);
                save();
                render();
                toast("已删除");
            }
        });
        d.setContentView(content);
        d.show();
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
