package im.doit.pro.exp;

import android.app.Activity;
import android.content.Intent;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ListView;

/** 左侧抽屉的「实验功能」分组：以 ListView 页脚形式挂载，不动原版适配器 */
public class ExpDrawer {

    public static void wire(Activity a) {
        try {
            int listId = a.getResources().getIdentifier("menu_list", "id", a.getPackageName());
            ListView list = (ListView) a.findViewById(listId);
            if (list == null) return;
            int layoutId = a.getResources().getIdentifier("drawer_footer_exp", "layout", a.getPackageName());
            View footer = LayoutInflater.from(a).inflate(layoutId, null);
            View box = footer.findViewById(a.getResources().getIdentifier("exp_blindbox_row", "id", a.getPackageName()));
            View fav = footer.findViewById(a.getResources().getIdentifier("exp_fav_row", "id", a.getPackageName()));
            box.setOnClickListener(new View.OnClickListener() {
                @Override public void onClick(View v) {
                    open(v, "im.doit.pro.exp.BlindBoxActivity");
                }
            });
            fav.setOnClickListener(new View.OnClickListener() {
                @Override public void onClick(View v) {
                    open(v, "im.doit.pro.exp.FavoritesActivity");
                }
            });
            list.addFooterView(footer, null, false);
        } catch (Throwable t) {
            // 抽屉接入失败不影响主界面
        }
    }

    private static void open(View v, String cls) {
        try {
            android.content.Context c = v.getContext();
            Intent i = new Intent();
            i.setClassName(c, cls);
            c.startActivity(i);
        } catch (Throwable t) { }
    }
}
