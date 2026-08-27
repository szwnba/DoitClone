package im.doit.pro.ai;

import android.app.Activity;
import android.os.Bundle;
import android.view.MenuItem;
import android.view.View;

import im.doit.pro.activity.DSwipeBackBaseActivity;
import im.doit.pro.activity.listener.OnLayoutClickListener;
import im.doit.pro.ui.component.LabelArrowButton;

/** AI 助理设置页 —— 仿原版设置页风格 */
public class AISettingsActivity extends DSwipeBackBaseActivity {

    private int id(String name) {
        return getResources().getIdentifier(name, "id", getPackageName());
    }

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(getResources().getIdentifier("activity_ai_settings", "layout", getPackageName()));

        android.app.ActionBar bar = getActionBar();
        if (bar != null) {
            bar.setTitle(getResources().getIdentifier("ai_title", "string", getPackageName()));
            bar.setDisplayHomeAsUpEnabled(true);
            bar.setHomeButtonEnabled(true);
        }

        AIAssistant.wireSettings(this);
    }

    @Override
    public boolean onOptionsItemSelected(MenuItem item) {
        if (item.getItemId() == 0x0102002c) { // android.R.id.home
            finish();
            return true;
        }
        return super.onOptionsItemSelected(item);
    }
}
