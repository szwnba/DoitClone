package im.doit.pro.ai;

import android.app.Activity;
import android.content.Context;
import android.app.AlertDialog;
import android.app.Dialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Handler;
import android.os.Looper;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.EditText;
import android.widget.ScrollView;
import android.widget.TextView;
import android.widget.Toast;

import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.UUID;

import im.doit.pro.activity.TaskDetailFragment;
import im.doit.pro.activity.listener.OnLayoutClickListener;
import im.doit.pro.model.SubTask;
import im.doit.pro.model.Task;
import im.doit.pro.ui.component.DButton;
import im.doit.pro.ui.component.LabelArrowButton;

/** AI 行动方案：BYOK（自带 Key）+ OpenAI 兼容协议，可随时更换服务商 */
public class AIAssistant {

    public static final String PREFS = "doit_ai_assist";
    private static final String K_ENDPOINT = "endpoint";
    private static final String K_KEY = "key";
    private static final String K_MODEL = "model";
    public static final String DEFAULT_ENDPOINT = "https://token.sensenova.cn/v1";
    public static final String DEFAULT_MODEL = "sensenova-6.7-flash-lite";
    private static final String ME = "doit-local-user";

    private static final Handler MAIN = new Handler(Looper.getMainLooper());

    // ---------- 配置 ----------

    public static SharedPreferences prefs(android.content.Context c) {
        return c.getSharedPreferences(PREFS, 0);
    }

    public static String endpoint(android.content.Context c) {
        String v = prefs(c).getString(K_ENDPOINT, "");
        return v.length() == 0 ? DEFAULT_ENDPOINT : v;
    }

    public static String key(android.content.Context c) {
        return prefs(c).getString(K_KEY, "");
    }

    public static String model(android.content.Context c) {
        String v = prefs(c).getString(K_MODEL, "");
        return v.length() == 0 ? DEFAULT_MODEL : v;
    }

    // ---------- 设置页入口（设置页"AI 助理"行） ----------

    public static void wire(final Activity a) {
        try {
            View target = findByText(a.getWindow().getDecorView(), "AI 助理");
            if (target == null) target = findByText(a.getWindow().getDecorView(), "AI Assistant");
            if (target != null) {
                View parent = (View) target.getParent();
                parent.setOnClickListener(new View.OnClickListener() {
                    @Override
                    public void onClick(View v) {
                        Intent i = new Intent();
                        i.setClassName(a, "im.doit.pro.ai.AISettingsActivity");
                        a.startActivity(i);
                    }
                });
            }
        } catch (Throwable t) { }
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

    // ---------- 详情页「AI 行动方案」 ----------

    /** 在 TaskDetailFragment.onCreateView（initView 之后）调用：接上详情页的 AI 按钮。
     *  必须传入 inflate 出来的 layoutView——此时 getView() 还是 null。 */
    public static void wireDetail(final TaskDetailFragment f, View layout) {
        try {
            // 不能用 f.getActivity()：真实类继承 support-v4 Fragment，其返回类型是
            // FragmentActivity，签名不匹配会 NoSuchMethodError。布局的 context 就是宿主 Activity。
            final Activity a = layout.getContext() instanceof Activity ? (Activity) layout.getContext() : null;
            int id = layout.getResources().getIdentifier("ai_plan_btn", "id", layout.getContext().getPackageName());
            View btn = layout.findViewById(id);
            if (btn != null && a != null) {
                btn.setOnClickListener(new View.OnClickListener() {
                    @Override
                    public void onClick(View v) {
                        try {
                            onPlanClick(f, a);
                        } catch (Throwable t) {
                            toast(a, "AI 功能异常: " + t);
                        }
                    }
                });
            }
        } catch (Throwable t) { }
    }

    private static Task getTask(Object fragment) {
        try {
            java.lang.reflect.Field f = fragment.getClass().getDeclaredField("mTask");
            f.setAccessible(true);
            return (Task) f.get(fragment);
        } catch (Throwable t) {
            return null;
        }
    }

    private static boolean isCreateMode(Object fragment) {
        try {
            java.lang.reflect.Field f = fragment.getClass().getDeclaredField("mIsCreate");
            f.setAccessible(true);
            return f.getBoolean(fragment);
        } catch (Throwable t) {
            return false;
        }
    }

    private static void onPlanClick(final TaskDetailFragment f, final Activity a) {
        if (a == null) return;
        if (key(a).length() == 0) {
            toast(a, "请先在 设置 → AI 助理 里配置 API Key");
            a.startActivity(new Intent().setClassName(a, "im.doit.pro.ai.AISettingsActivity"));
            return;
        }
        if (isCreateMode(f)) {
            toast(a, "请先保存任务，再生成 AI 方案");
            return;
        }
        final Task task = getTask(f);
        if (task == null) { toast(a, "任务未加载"); return; }
        String title = safe(task.getTitle()).trim();
        if (title.length() == 0) { toast(a, "请先填写任务标题"); return; }

        // 组装提示：已有子任务会追加、已有描述会被替换
        StringBuilder warn = new StringBuilder();
        try {
            int existing = task.getSubTasks() == null ? 0 : task.getSubTasks().size();
            if (existing > 0) warn.append("\n注意：任务已有 ").append(existing).append(" 条子任务，应用后会追加新的子任务。");
        } catch (Throwable t) { }
        if (!isBlank(task.getNotes())) warn.append("\n注意：现有描述将被方案文本替换（原内容会作为上下文提供给 AI）。");

        confirm(a, "AI 行动方案",
            "将根据任务「" + title + "」生成行动方案。\n任务标题与描述会发送给你配置的 AI 服务商。" + warn + "\n\n继续？",
            "生成", new OnOk() {
                @Override
                public void ok(String s) { generate(a, f, task, false); }
            });
    }

    private static void generate(final Activity a, final TaskDetailFragment f, final Task task, final boolean regen) {
        toast(a, regen ? "正在重新生成…" : "AI 正在生成行动方案…");
        new Thread(new Runnable() {
            @Override
            public void run() {
                try {
                    final PlanResult r = requestPlan(a, task);
                    MAIN.post(new Runnable() {
                        @Override
                        public void run() { showPreview(a, f, task, r); }
                    });
                } catch (final Exception e) {
                    final String msg = e.getMessage() == null ? e.getClass().getSimpleName() : e.getMessage();
                    MAIN.post(new Runnable() {
                        @Override
                        public void run() { toast(a, "AI 调用失败: " + msg); }
                    });
                }
            }
        }).start();
    }

    // ---------- 方案数据 ----------

    private static class PlanResult {
        String summary = "";
        String plan = "";
        final List<String> steps = new ArrayList<String>();
        final List<String> estimates = new ArrayList<String>();
    }

        public static final int BUILTIN_PROMPT_ID = 0;
    public static final String BUILTIN_PROMPT_NAME = "GTD 教练 · 内置";
    public static final String BUILTIN_PROMPT_BODY = "你是一位资深的 GTD 个人管理教练和项目规划专家。用户会给你一个任务，"
            + "请生成一份务实、可执行的行动方案。要求："
            + "1) summary 用一句话澄清目标与完成标准；"
            + "2) plan 给出精炼的方案文本，包含：可行性要点、阶段划分、每阶段做什么、关键风险与规避建议，用简短的段落和「·」列表排版；"
            + "3) steps 给出 3~8 条可直接执行的下一步行动，按执行顺序排列，每条以动词开头、具体明确、单条可在 2 小时内完成；"
            + "4) 如果任务本身很小，steps 只给 1~3 条，不要过度拆解；"
            + "5) 全部使用简体中文；"
            + "6) 严格只输出一个 JSON 对象，禁止输出任何解释、markdown 或代码块标记。"
            + "JSON 格式：{\"summary\":\"...\",\"plan\":\"...\",\"steps\":[{\"title\":\"...\",\"estimate\":\"...\"}]}";

    /** 提示词存取：SharedPreferences JSON 数组 [{"id","name","body"}]，id 0 = 内置不可删 */
    public static org.json.JSONArray promptsJson(Context c) {
        org.json.JSONArray arr;
        try {
            arr = new org.json.JSONArray(prefs(c).getString("prompts", "[]"));
        } catch (Throwable t) {
            arr = new org.json.JSONArray();
        }
        boolean hasBuiltin = false;
        for (int i = 0; i < arr.length(); i++) {
            if (arr.optJSONObject(i) != null && arr.optJSONObject(i).optInt("id", -1) == BUILTIN_PROMPT_ID) { hasBuiltin = true; break; }
        }
        if (!hasBuiltin) {
            try { arr.put(new org.json.JSONObject().put("id", BUILTIN_PROMPT_ID).put("name", BUILTIN_PROMPT_NAME).put("body", BUILTIN_PROMPT_BODY)); } catch (Throwable t) { }
        }
        return arr;
    }

    public static int currentPromptId(Context c) {
        return prefs(c).getInt("cur_prompt", BUILTIN_PROMPT_ID);
    }

    public static void setCurrentPromptId(Context c, int id) {
        prefs(c).edit().putInt("cur_prompt", id).commit();
    }

    public static String currentPromptName(Context c) {
        int id = currentPromptId(c);
        org.json.JSONArray arr = promptsJson(c);
        for (int i = 0; i < arr.length(); i++) {
            org.json.JSONObject o = arr.optJSONObject(i);
            if (o != null && o.optInt("id", -1) == id) return o.optString("name", "");
        }
        return BUILTIN_PROMPT_NAME;
    }

    /** 保存（id<0 = 新增）；返回 id */
    public static int savePrompt(Context c, int id, String name, String body) {
        org.json.JSONArray arr = promptsJson(c);
        if (id < 0) {
            int max = 0;
            for (int i = 0; i < arr.length(); i++) {
                org.json.JSONObject o = arr.optJSONObject(i);
                if (o != null) max = Math.max(max, o.optInt("id", 0));
            }
            id = max + 1;
            try { arr.put(new org.json.JSONObject().put("id", id).put("name", name).put("body", body)); } catch (Throwable t) { }
        } else {
            for (int i = 0; i < arr.length(); i++) {
                org.json.JSONObject o = arr.optJSONObject(i);
                if (o != null && o.optInt("id", -1) == id) {
                    if (id != BUILTIN_PROMPT_ID) {
                        try { o.put("name", name); o.put("body", body); } catch (Throwable t) { }
                    }
                    break;
                }
            }
        }
        prefs(c).edit().putString("prompts", arr.toString()).commit();
        return id;
    }

    public static void deletePrompt(Context c, int id) {
        if (id == BUILTIN_PROMPT_ID) return;
        org.json.JSONArray arr = promptsJson(c);
        org.json.JSONArray out = new org.json.JSONArray();
        for (int i = 0; i < arr.length(); i++) {
            org.json.JSONObject o = arr.optJSONObject(i);
            if (o == null || o.optInt("id", -1) == id) continue;
            out.put(o);
        }
        prefs(c).edit().putString("prompts", out.toString()).commit();
        if (currentPromptId(c) == id) setCurrentPromptId(c, BUILTIN_PROMPT_ID);
    }

    /** 取当前提示词并替换变量（{标题}/{日期}/{描述}），供生成使用 */
    private static String buildSystem(Context c, Task task) {
        int id = currentPromptId(c);
        String body = BUILTIN_PROMPT_BODY;
        org.json.JSONArray arr = promptsJson(c);
        for (int i = 0; i < arr.length(); i++) {
            org.json.JSONObject o = arr.optJSONObject(i);
            if (o != null && o.optInt("id", -1) == id) { body = o.optString("body", BUILTIN_PROMPT_BODY); break; }
        }
        String title = safe(task.getTitle()).trim();
        String date = new SimpleDateFormat("yyyy-MM-dd EEEE", Locale.CHINA).format(new Date());
        String notes = isBlank(task.getNotes()) ? "无" : task.getNotes();
        body = body.replace("{标题}", title).replace("{日期}", date).replace("{描述}", notes);
        return body;
    }

    /** 任意输出 -> 整理为方案：内置 schema 直读；其他 JSON 通用美化+抢救步骤；非 JSON 纯文本 */
    private static PlanResult normalizePlan(String content) {
        PlanResult r = new PlanResult();
        if (content == null) content = "";
        String trimmed = content.trim();
        String json = extractJson(trimmed);
        org.json.JSONObject o = null;
        if (json != null) {
            try { o = new org.json.JSONObject(json); } catch (Throwable t) { o = null; }
        }
        if (o != null && (o.has("plan") || o.has("summary") || o.has("steps"))) {
            r.summary = o.optString("summary", "");
            r.plan = o.optString("plan", "");
            org.json.JSONArray arr = o.optJSONArray("steps");
            if (arr != null) {
                for (int i = 0; i < arr.length() && i < 12; i++) {
                    org.json.JSONObject st = arr.optJSONObject(i);
                    if (st == null) continue;
                    String title = st.optString("title", "").trim();
                    if (title.length() == 0) continue;
                    r.steps.add(title);
                    r.estimates.add(st.optString("estimate", ""));
                }
            }
            if (r.plan.length() == 0 && r.steps.isEmpty()) {
                r.plan = flatten(o, "");
            }
            return r;
        }
        if (o != null) {
            String pretty = flatten(o, "");
            r.plan = pretty.length() > 0 ? pretty : trimmed;
            java.util.List<java.util.List<String>> cands = new java.util.ArrayList<java.util.List<String>>();
            collectStepArrays(o, cands);
            java.util.List<String> best = null;
            for (java.util.List<String> c : cands) if (best == null || c.size() > best.size()) best = c;
            if (best != null) for (int i = 0; i < best.size() && i < 12; i++) r.steps.add(best.get(i));
            return r;
        }
        r.plan = trimmed;
        return r;
    }

    private static String flatten(Object node, String prefix) {
        StringBuilder sb = new StringBuilder();
        flatten(node, prefix, sb, 0);
        return sb.toString();
    }

    private static void flatten(Object node, String prefix, StringBuilder sb, int depth) {
        if (node instanceof org.json.JSONObject) {
            org.json.JSONObject o = (org.json.JSONObject) node;
            java.util.Iterator<String> it = o.keys();
            while (it.hasNext()) {
                String k = it.next();
                emit(k, o.opt(k), prefix, sb, depth);
            }
        } else if (node instanceof org.json.JSONArray) {
            org.json.JSONArray a = (org.json.JSONArray) node;
            for (int i = 0; i < a.length(); i++) {
                emit(null, a.opt(i), prefix + "· ", sb, depth);
            }
        }
    }

    private static void emit(String key, Object v, String prefix, StringBuilder sb, int depth) {
        String head = (key == null || key.length() == 0) ? prefix : prefix + key + "：";
        if (v instanceof org.json.JSONObject) {
            sb.append(head).append('\n');
            flatten(v, prefix + "   ", sb, depth + 1);
        } else if (v instanceof org.json.JSONArray) {
            sb.append(head).append('\n');
            flatten(v, prefix + "  ", sb, depth + 1);
        } else {
            String str = String.valueOf(v).trim();
            if (str.length() > 0) sb.append(head).append(str).append('\n');
        }
    }

    private static void collectStepArrays(Object node, java.util.List<java.util.List<String>> out) {
        if (node instanceof org.json.JSONArray) {
            org.json.JSONArray a = (org.json.JSONArray) node;
            java.util.List<String> cand = new java.util.ArrayList<String>();
            for (int i = 0; i < a.length(); i++) {
                Object it = a.opt(i);
                if (it instanceof String) {
                    String t = ((String) it).trim();
                    if (t.length() >= 3 && t.length() <= 80) cand.add(t);
                } else if (it instanceof org.json.JSONObject) {
                    org.json.JSONObject o = (org.json.JSONObject) it;
                    String best = null;
                    java.util.Iterator<String> k = o.keys();
                    while (k.hasNext()) {
                        Object v = o.opt(k.next());
                        if (v instanceof String) {
                            String t = ((String) v).trim();
                            if (t.length() >= 3 && t.length() <= 60 && (best == null || t.length() < best.length())) best = t;
                        }
                    }
                    if (best != null) cand.add(best);
                }
            }
            if (cand.size() >= 2) out.add(cand);
            for (int i = 0; i < a.length(); i++) collectStepArrays(a.opt(i), out);
        } else if (node instanceof org.json.JSONObject) {
            org.json.JSONObject o = (org.json.JSONObject) node;
            java.util.Iterator<String> it = o.keys();
            while (it.hasNext()) collectStepArrays(o.opt(it.next()), out);
        }
    }

    private static PlanResult requestPlan(Activity a, Task task) throws Exception {
        String sys = buildSystem(a, task);        String user = "今天的日期：" + new SimpleDateFormat("yyyy-MM-dd EEEE", Locale.CHINA).format(new Date())
            + "\n任务标题：" + safe(task.getTitle())
            + "\n已有描述：" + (isBlank(task.getNotes()) ? "无" : task.getNotes())
            + "\n请生成行动方案 JSON。";

        String content = chat(a, sys, user);
        return normalizePlan(content);
    }

    private static void showPreview(final Activity a, final TaskDetailFragment f, final Task task, final PlanResult r) {
        StringBuilder sb = new StringBuilder();
        sb.append("〔提示词：").append(currentPromptName(a)).append("〕\n\n");
        if (r.summary.length() > 0) sb.append("【目标】").append(r.summary).append("\n\n");
        sb.append(r.plan == null ? "" : r.plan);
        if (r.steps.size() > 0) {
            sb.append("\n\n── 将创建的子任务 ──\n");
            for (int i = 0; i < r.steps.size(); i++) {
                sb.append(i + 1).append(". ").append(r.steps.get(i));
                String est = r.estimates.get(i);
                if (est.length() > 0) sb.append("（约").append(est).append("）");
                sb.append("\n");
            }
        }
        final Dialog d = new Dialog(a, a.getResources().getIdentifier("Theme.Doit.Light.Dialog", "style", a.getPackageName()));
        View content = LayoutInflater.from(a).inflate(a.getResources().getIdentifier("dialog_ai_plan", "layout", a.getPackageName()), null);
        TextView tv = (TextView) content.findViewById(a.getResources().getIdentifier("ai_plan_text", "id", a.getPackageName()));
        tv.setText(sb.toString());
        DButton cancel = (DButton) content.findViewById(a.getResources().getIdentifier("cancel_btn", "id", a.getPackageName()));
        DButton ok = (DButton) content.findViewById(a.getResources().getIdentifier("ok_btn", "id", a.getPackageName()));
        ok.setText("应用到任务");
        cancel.setText("关闭");
        final int[] applied = {0};
        cancel.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) { d.dismiss(); }
        });
        DButton regen = (DButton) content.findViewById(a.getResources().getIdentifier("ai_regen_btn", "id", a.getPackageName()));
        regen.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                d.dismiss();
                generate(a, f, task, true);
            }
        });
        ok.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                d.dismiss();
                apply(a, f, task, r, applied);
            }
        });
        d.setContentView(content);
        try {
            d.show();
            android.view.Window w = d.getWindow();
            if (w != null) w.setLayout(android.view.ViewGroup.LayoutParams.MATCH_PARENT, (int) (a.getResources().getDisplayMetrics().heightPixels * 0.7));
        } catch (Throwable t) {
            toast(a, "方案已生成，但页面已关闭，请重新点击 AI 行动方案查看");
        }
    }

    private static void apply(final Activity a, final TaskDetailFragment f, final Task task, final PlanResult r, final int[] applied) {
        try {
        applyInner(a, f, task, r, applied);
        } catch (Throwable t) {
            toast(a, "应用方案时出错: " + t);
        }
    }

    private static void applyInner(final Activity a, final TaskDetailFragment f, final Task task, final PlanResult r, final int[] applied) {
        // 1. 描述 = 方案文本（setText 触发原版 TextWatcher 自动保存）
        try {
            View notes = f.getView().findViewById(a.getResources().getIdentifier("notes", "id", a.getPackageName()));
            String doc = buildDoc(r);
            if (notes instanceof TextView) ((TextView) notes).setText(doc);
            else task.setNotes(doc);
        } catch (Throwable t) {
            try { task.setNotes(buildDoc(r)); } catch (Throwable ignore) { }
        }
        // 2. 子任务按原版配方逐条插入
        applied[0] = 0;
        try {
            for (int i = 0; i < r.steps.size(); i++) {
                SubTask st = new SubTask(task.getUuid(), task.getRepeatNo());
                st.setUuid(UUID.randomUUID().toString());
                String title = r.steps.get(i);
                String est = r.estimates.get(i);
                if (est.length() > 0) title = title + "（约" + est + "）";
                st.setTitle(title);
                st.initPos();
                task.getSubTasks().add(st);
                im.doit.pro.activity.DoitApp.persist().subTaskDao.createAndSaveLog(st);
                applied[0]++;
            }
        } catch (Throwable t) {
            toast(a, "子任务写入失败: " + t.getMessage());
        }
        // 3. 刷新子任务列表（原版私有方法，反射调用）
        try {
            java.lang.reflect.Method m = f.getClass().getDeclaredMethod("setSubtaskViewContent");
            m.setAccessible(true);
            m.invoke(f);
        } catch (Throwable t) { }
        toast(a, applied[0] > 0
            ? "✓ 方案已应用：描述已更新，新增 " + applied[0] + " 条子任务"
            : "✓ 方案已应用到描述");
    }

    private static String buildDoc(PlanResult r) {
        StringBuilder sb = new StringBuilder();
        if (r.summary.length() > 0) sb.append("【AI 目标】").append(r.summary).append("\n\n");
        sb.append(r.plan == null ? "" : r.plan);
        if (r.steps.size() > 0) {
            sb.append("\n\n【AI 行动清单】\n");
            for (int i = 0; i < r.steps.size(); i++) {
                sb.append(i + 1).append(". ").append(r.steps.get(i));
                String est = r.estimates.get(i);
                if (est.length() > 0) sb.append("（约").append(est).append("）");
                sb.append("\n");
            }
        }
        return sb.toString();
    }

    // ---------- LLM 调用（OpenAI 兼容 /chat/completions） ----------

    private static String chat(Activity a, String system, String user) throws Exception {
        org.json.JSONObject body = new org.json.JSONObject();
        body.put("model", model(a));
        org.json.JSONArray messages = new org.json.JSONArray();
        org.json.JSONObject sys = new org.json.JSONObject();
        sys.put("role", "system");
        sys.put("content", system);
        messages.put(sys);
        org.json.JSONObject usr = new org.json.JSONObject();
        usr.put("role", "user");
        usr.put("content", user);
        messages.put(usr);
        body.put("messages", messages);
        body.put("temperature", 0.4);

        HttpURLConnection conn = null;
        try {
            conn = (HttpURLConnection) new URL(endpoint(a).replaceAll("/+$", "") + "/chat/completions").openConnection();
            conn.setConnectTimeout(15000);
            conn.setReadTimeout(120000);
            conn.setRequestMethod("POST");
            conn.setRequestProperty("Authorization", "Bearer " + key(a));
            conn.setRequestProperty("Content-Type", "application/json");
            conn.setRequestProperty("User-Agent", "DoitLocalAI/1.0");
            conn.setDoOutput(true);
            OutputStream os = conn.getOutputStream();
            try { os.write(body.toString().getBytes("UTF-8")); } finally { os.close(); }
            int code = conn.getResponseCode();
            InputStream is = code >= 400 ? conn.getErrorStream() : conn.getInputStream();
            ByteArrayOutputStream buf = new ByteArrayOutputStream();
            if (is != null) {
                byte[] b = new byte[8192];
                int n;
                while ((n = is.read(b)) > 0) buf.write(b, 0, n);
                is.close();
            }
            String resp = new String(buf.toByteArray(), "UTF-8");
            if (code != 200) throw new Exception("HTTP " + code + " " + brief(resp));
            org.json.JSONObject o = new org.json.JSONObject(resp);
            org.json.JSONArray choices = o.optJSONArray("choices");
            if (choices == null || choices.length() == 0) throw new Exception("无返回内容 " + brief(resp));
            return choices.getJSONObject(0).getJSONObject("message").getString("content");
        } finally {
            if (conn != null) conn.disconnect();
        }
    }

    /** 从模型输出里抢救 JSON：剥代码块围栏、截取首尾大括号 */
    private static String extractJson(String content) {
        if (content == null) return null;
        String s = content.trim();
        if (s.startsWith("```")) {
            int nl = s.indexOf('\n');
            if (nl > 0) s = s.substring(nl + 1);
            int fence = s.lastIndexOf("```");
            if (fence >= 0) s = s.substring(0, fence);
            s = s.trim();
        }
        int l = s.indexOf('{');
        int r = s.lastIndexOf('}');
        if (l >= 0 && r > l) return s.substring(l, r + 1);
        return null;
    }

    private static String brief(String s) {
        if (s == null) return "";
        try {
            return new org.json.JSONObject(s).optString("message", "");
        } catch (Exception e) {
            return s.length() > 120 ? s.substring(0, 120) : s;
        }
    }

    private static String safe(String s) { return s == null ? "" : s; }

    private static boolean isBlank(String s) { return s == null || s.trim().length() == 0; }

    public static void toast(final android.content.Context c, final String msg) {
        MAIN.post(new Runnable() {
            @Override
            public void run() { Toast.makeText(c, msg, Toast.LENGTH_LONG).show(); }
        });
    }

    private interface OnOk {
        void ok(String inputText);
    }

    private static Dialog appDialog(Activity a, String layoutName, String title, String message, String okText,
            final OnOk onOk, boolean withInput, String inputText, boolean password) {
        final Dialog d = new Dialog(a, a.getResources().getIdentifier("Theme.Doit.Light.Dialog", "style", a.getPackageName()));
        View content = LayoutInflater.from(a).inflate(a.getResources().getIdentifier(layoutName, "layout", a.getPackageName()), null);
        ((TextView) content.findViewById(a.getResources().getIdentifier("title", "id", a.getPackageName()))).setText(title);
        TextView msg = (TextView) content.findViewById(a.getResources().getIdentifier("ghs_msg", "id", a.getPackageName()));
        if (msg != null && message != null) msg.setText(message);
        final EditText input = (EditText) content.findViewById(a.getResources().getIdentifier("ghs_input", "id", a.getPackageName()));
        if (input != null) {
            if (password) input.setInputType(android.text.InputType.TYPE_CLASS_TEXT | android.text.InputType.TYPE_TEXT_VARIATION_PASSWORD);
            input.setText(inputText);
            input.setSelection(input.getText().length());
        }
        DButton cancel = (DButton) content.findViewById(a.getResources().getIdentifier("cancel_btn", "id", a.getPackageName()));
        DButton ok = (DButton) content.findViewById(a.getResources().getIdentifier("ok_btn", "id", a.getPackageName()));
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

    private static void confirm(Activity a, String title, String msg, String okText, final OnOk onOk) {
        appDialog(a, "dialog_ghs_confirm", title, msg, okText, onOk, false, null, false).show();
    }

    // ---------- AI 设置页逻辑（由 AISettingsActivity 调用） ----------

    public static void wireSettings(final Activity a) {
        row(a, "ai_endpoint", new OnOk() {
            @Override
            public void ok(String text) {
                String v = text == null ? "" : text.trim();
                prefs(a).edit().putString(K_ENDPOINT, v).commit();
                toast(a, v.length() == 0 ? "已恢复默认端点" : "端点已保存");
            }
        }, endpoint(a), false);
        row(a, "ai_key", new OnOk() {
            @Override
            public void ok(String text) {
                String v = text == null ? "" : text.trim();
                prefs(a).edit().putString(K_KEY, v).commit();
                toast(a, v.length() == 0 ? "已清空 Key" : "Key 已保存");
            }
        }, key(a), true);
        row(a, "ai_model", new OnOk() {
            @Override
            public void ok(String text) {
                String v = text == null ? "" : text.trim();
                prefs(a).edit().putString(K_MODEL, v).commit();
                toast(a, v.length() == 0 ? "已恢复默认模型" : "模型已保存: " + v);
            }
        }, model(a), false);
        View promptRow = a.findViewById(a.getResources().getIdentifier("ai_prompt", "id", a.getPackageName()));
        if (promptRow instanceof LabelArrowButton) {
            LabelArrowButton pr = (LabelArrowButton) promptRow;
            try { pr.setLabel("方案提示词 · " + currentPromptName(a)); } catch (Throwable t) { }
            pr.setOnLayoutClickListener(new OnLayoutClickListener() {
                @Override
                public void click(View v) {
                    a.startActivity(new android.content.Intent().setClassName(a, "im.doit.pro.ai.PromptListActivity"));
                }
            });
        }
        View test = a.findViewById(a.getResources().getIdentifier("ai_test", "id", a.getPackageName()));
        if (test instanceof LabelArrowButton) {
            ((LabelArrowButton) test).setOnLayoutClickListener(new OnLayoutClickListener() {
                @Override
                public void click(View v) {
                    if (key(a).length() == 0) { toast(a, "请先填写 API Key"); return; }
                    toast(a, "正在测试连接…");
                    new Thread(new Runnable() {
                        @Override
                        public void run() {
                            try {
                                chat(a, "你是连通性测试", "只回复两个字：成功");
                                MAIN.post(new Runnable() {
                                    @Override
                                    public void run() { toast(a, "✓ 连接成功，模型: " + model(a)); }
                                });
                            } catch (final Exception e) {
                                final String msg = e.getMessage() == null ? e.getClass().getSimpleName() : e.getMessage();
                                MAIN.post(new Runnable() {
                                    @Override
                                    public void run() { toast(a, "✗ 连接失败: " + msg); }
                                });
                            }
                        }
                    }).start();
                }
            });
        }
    }

    private static void row(final Activity a, String id, final OnOk onOk, final String current, final boolean password) {
        View v = a.findViewById(a.getResources().getIdentifier(id, "id", a.getPackageName()));
        if (v instanceof LabelArrowButton) {
            ((LabelArrowButton) v).setOnLayoutClickListener(new OnLayoutClickListener() {
                @Override
                public void click(View view) {
                    String hint = id.equals("ai_key") ? "粘贴 API Key（仅存本机）"
                        : id.equals("ai_endpoint") ? "OpenAI 兼容端点，如 https://token.sensenova.cn/v1（留空恢复默认）"
                        : "模型名（留空恢复默认）";
                    appDialog(a, "dialog_ghs_input", id.equals("ai_key") ? "API Key" : id.equals("ai_endpoint") ? "API 端点" : "模型",
                        hint, "保存", onOk, true, current, password).show();
                }
            });
        }
    }
}
