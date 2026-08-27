package im.doit.pro.ai;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Handler;
import android.os.Looper;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.Toast;

import java.io.BufferedReader;
import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.UUID;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import im.doit.pro.activity.listener.OnLayoutClickListener;
import im.doit.pro.model.SubTask;
import im.doit.pro.model.Task;
import im.doit.pro.ui.component.DButton;
import im.doit.pro.ui.component.LabelArrowButton;

/** AI 行动方案：BYOK + OpenAI 兼容协议，SSE 流式输出，可随时更换服务商 */
public class AIAssistant {

    public static final String PREFS = "doit_ai_assist";
    private static final String K_ENDPOINT = "endpoint";
    private static final String K_KEY = "key";
    private static final String K_MODEL = "model";
    public static final String DEFAULT_ENDPOINT = "https://token.sensenova.cn/v1";
    public static final String DEFAULT_MODEL = "sensenova-6.7-flash-lite";

    private static final Handler MAIN = new Handler(Looper.getMainLooper());

    // ---------- 配置 ----------

    public static SharedPreferences prefs(Context c) {
        return c.getSharedPreferences(PREFS, 0);
    }

    public static String endpoint(Context c) {
        String v = prefs(c).getString(K_ENDPOINT, "");
        return v.length() == 0 ? DEFAULT_ENDPOINT : v;
    }

    public static String key(Context c) {
        return prefs(c).getString(K_KEY, "");
    }

    public static String model(Context c) {
        String v = prefs(c).getString(K_MODEL, "");
        return v.length() == 0 ? DEFAULT_MODEL : v;
    }

    // ---------- 设置页入口 ----------

    public static void wire(final Activity a) {
        try {
            View target = findByText(a.getWindow().getDecorView(), "AI 助理");
            if (target == null) target = findByText(a.getWindow().getDecorView(), "AI Assistant");
            if (target != null) {
                View parent = (View) target.getParent();
                parent.setOnClickListener(new View.OnClickListener() {
                    @Override
                    public void onClick(View v) {
                        a.startActivity(new Intent().setClassName(a, "im.doit.pro.ai.AISettingsActivity"));
                    }
                });
            }
        } catch (Throwable t) { }
    }

    private static View findByText(View v, String key) {
        if (v instanceof TextView) {
            CharSequence text = ((TextView) v).getText();
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

    // ---------- 方案页入口（详情页右上「AI 方案」按钮劫持点） ----------

    public static void openPlan(Activity a) {
        try {
            Task task = getTaskOn(a);
            if (task == null) { toast(a, "任务未加载"); return; }
            String title = safe(task.getTitle()).trim();
            if (title.length() == 0) { toast(a, "请先填写任务标题"); return; }
            if (key(a).length() == 0) {
                toast(a, "请先在 设置 → AI 助理 里配置 API Key");
                a.startActivity(new Intent().setClassName(a, "im.doit.pro.ai.AISettingsActivity"));
                return;
            }
            Intent i = new Intent();
            i.setClassName(a, "im.doit.pro.ai.AIPlanActivity");
            i.putExtra("taskUuid", task.getUuid());
            i.putExtra("taskTitle", title);
            a.startActivity(i);
        } catch (Throwable t) {
            toast(a, "打开 AI 方案失败: " + t);
        }
    }

    private static Task getTaskOn(Object holder) {
        try {
            java.lang.reflect.Field f = holder.getClass().getDeclaredField("mTask");
            f.setAccessible(true);
            return (Task) f.get(holder);
        } catch (Throwable t) {
            return null;
        }
    }

    // ---------- 方案生成（流式） ----------

    public static String systemPrompt() {
        return "你是一位资深的 GTD 个人管理教练和项目规划专家。用户给你一个任务，"
            + "请生成务实、可执行的行动方案。严格按以下纯文本格式输出（禁止 markdown、禁止代码块、禁止多余寒暄）：\n"
            + "【目标】一句话澄清目标与完成标准\n"
            + "【行动步骤】\n"
            + "1. 动词开头的具体行动（约X分钟/小时）\n"
            + "2. …\n"
            + "【风险提示】\n"
            + "· 关键风险与规避建议（2~3 条）\n"
            + "要求：步骤 3~8 条、按执行顺序、单条 2 小时内可完成；任务很小就只给 1~3 条，不过度拆解；全部简体中文。";
    }

    public static String userPrompt(Context c, Task task) {
        return "今天的日期：" + new SimpleDateFormat("yyyy-MM-dd EEEE", Locale.CHINA).format(new Date())
            + "\n任务标题：" + safe(task.getTitle()).trim()
            + "\n已有描述：" + (isBlank(task.getNotes()) ? "无" : task.getNotes())
            + "\n请按格式生成行动方案。";
    }

    public interface StreamCb {
        void onDelta(String text);
        void onDone(String fullText);
        void onError(String message);
    }

    /** SSE 流式调用；服务商不支持流式时自动降级为一次性返回 */
    public static void chatStream(final Context c, final String system, final String user, final StreamCb cb) {
        new Thread(new Runnable() {
            @Override
            public void run() {
                HttpURLConnection conn = null;
                try {
                    org.json.JSONObject body = new org.json.JSONObject();
                    body.put("model", model(c));
                    org.json.JSONArray messages = new org.json.JSONArray();
                    messages.put(new org.json.JSONObject().put("role", "system").put("content", system));
                    messages.put(new org.json.JSONObject().put("role", "user").put("content", user));
                    body.put("messages", messages);
                    body.put("temperature", 0.4);
                    body.put("stream", true);

                    conn = (HttpURLConnection) new URL(endpoint(c).replaceAll("/+$", "") + "/chat/completions").openConnection();
                    conn.setConnectTimeout(15000);
                    conn.setReadTimeout(180000);
                    conn.setRequestMethod("POST");
                    conn.setRequestProperty("Authorization", "Bearer " + key(c));
                    conn.setRequestProperty("Content-Type", "application/json");
                    conn.setRequestProperty("Accept", "text/event-stream");
                    conn.setRequestProperty("User-Agent", "DoitLocalAI/1.0");
                    conn.setDoOutput(true);
                    OutputStream os = conn.getOutputStream();
                    try { os.write(body.toString().getBytes("UTF-8")); } finally { os.close(); }

                    int code = conn.getResponseCode();
                    if (code != 200) {
                        String err = readAll(code >= 400 ? conn.getErrorStream() : conn.getInputStream());
                        throw new Exception("HTTP " + code + " " + brief(err));
                    }

                    StringBuilder full = new StringBuilder();
                    BufferedReader reader = new BufferedReader(new InputStreamReader(conn.getInputStream(), "UTF-8"));
                    String line;
                    while ((line = reader.readLine()) != null) {
                        if (!line.startsWith("data:")) continue;
                        String payload = line.substring(5).trim();
                        if (payload.length() == 0) continue;
                        if ("[DONE]".equals(payload)) break;
                        try {
                            org.json.JSONObject chunk = new org.json.JSONObject(payload);
                            org.json.JSONArray choices = chunk.optJSONArray("choices");
                            if (choices == null || choices.length() == 0) continue;
                            org.json.JSONObject delta = choices.getJSONObject(0).optJSONObject("delta");
                            if (delta == null) continue;
                            String piece = delta.optString("content", "");
                            if (piece.length() > 0) {
                                full.append(piece);
                                cb.onDelta(piece);
                            }
                        } catch (Throwable ignore) { }
                    }
                    if (full.length() == 0) throw new Exception("模型未返回内容");
                    cb.onDone(full.toString());
                } catch (Throwable e) {
                    final String msg = e.getMessage() == null ? e.getClass().getSimpleName() : e.getMessage();
                    try {
                        // 流式失败 → 非流式兜底
                        String full = chat(c, system, user);
                        cb.onDelta(full);
                        cb.onDone(full);
                    } catch (Throwable e2) {
                        MAIN.post(new Runnable() {
                            @Override public void run() { cb.onError(msg); }
                        });
                    }
                } finally {
                    if (conn != null) conn.disconnect();
                }
            }
        }).start();
    }

    /** 非流式调用（测试连接 / 流式兜底） */
    public static String chat(Context c, String system, String user) throws Exception {
        org.json.JSONObject body = new org.json.JSONObject();
        body.put("model", model(c));
        org.json.JSONArray messages = new org.json.JSONArray();
        messages.put(new org.json.JSONObject().put("role", "system").put("content", system));
        messages.put(new org.json.JSONObject().put("role", "user").put("content", user));
        body.put("messages", messages);
        body.put("temperature", 0.4);

        HttpURLConnection conn = null;
        try {
            conn = (HttpURLConnection) new URL(endpoint(c).replaceAll("/+$", "") + "/chat/completions").openConnection();
            conn.setConnectTimeout(15000);
            conn.setReadTimeout(120000);
            conn.setRequestMethod("POST");
            conn.setRequestProperty("Authorization", "Bearer " + key(c));
            conn.setRequestProperty("Content-Type", "application/json");
            conn.setRequestProperty("User-Agent", "DoitLocalAI/1.0");
            conn.setDoOutput(true);
            OutputStream os = conn.getOutputStream();
            try { os.write(body.toString().getBytes("UTF-8")); } finally { os.close(); }
            int code = conn.getResponseCode();
            String resp = readAll(code >= 400 ? conn.getErrorStream() : conn.getInputStream());
            if (code != 200) throw new Exception("HTTP " + code + " " + brief(resp));
            org.json.JSONObject o = new org.json.JSONObject(resp);
            org.json.JSONArray choices = o.optJSONArray("choices");
            if (choices == null || choices.length() == 0) throw new Exception("无返回内容 " + brief(resp));
            return choices.getJSONObject(0).getJSONObject("message").getString("content");
        } finally {
            if (conn != null) conn.disconnect();
        }
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

    private static String brief(String s) {
        if (s == null) return "";
        try {
            return new org.json.JSONObject(s).optString("message", "");
        } catch (Exception e) {
            return s.length() > 120 ? s.substring(0, 120) : s;
        }
    }

    // ---------- 方案应用：描述 = 方案全文，编号行 = 子任务 ----------

    private static final Pattern STEP_LINE = Pattern.compile("^\\s*(\\d{1,2})[.、)）]\\s*(\\S.{3,80})$");

    public static List<String> parseSteps(String planText) {
        List<String> steps = new ArrayList<String>();
        if (planText == null) return steps;
        // 优先取【行动步骤】小节，没有就扫全文
        String zone = planText;
        int s = planText.indexOf("【行动步骤】");
        if (s >= 0) {
            int e = planText.indexOf("【", s + 6);
            zone = e > s ? planText.substring(s, e) : planText.substring(s);
        }
        Matcher m = STEP_LINE.matcher(zone);
        while (m.find() && steps.size() < 12) {
            steps.add(m.group(2).trim());
        }
        return steps;
    }

    /** 按 uuid 加载任务（方案页用） */
    public static Task loadTask(Context c, String uuid) {
        try {
            return im.doit.pro.activity.DoitApp.persist().taskDao.findByUUID(uuid);
        } catch (Throwable t) {
            return null;
        }
    }

    /** 返回创建的子任务数；-1 = 任务未找到 */
    public static int applyToTask(Context c, String taskUuid, String planText) {
        Task t = im.doit.pro.activity.DoitApp.persist().taskDao.findByUUID(taskUuid);
        if (t == null) return -1;
        t.setNotes(planText.trim());
        im.doit.pro.activity.DoitApp.persist().taskDao.updateAndSaveLog(t);
        int n = 0;
        try {
            List<String> steps = parseSteps(planText);
            for (int i = 0; i < steps.size(); i++) {
                SubTask st = new SubTask(t.getUuid(), t.getRepeatNo());
                st.setUuid(UUID.randomUUID().toString());
                st.setTitle(steps.get(i));
                st.initPos();
                t.getSubTasks().add(st);
                im.doit.pro.activity.DoitApp.persist().subTaskDao.createAndSaveLog(st);
                n++;
            }
        } catch (Throwable ignore) { }
        return n;
    }

    // ---------- 工具 ----------

    public static void toast(final Context c, final String msg) {
        MAIN.post(new Runnable() {
            @Override
            public void run() { Toast.makeText(c, msg, Toast.LENGTH_LONG).show(); }
        });
    }

    private static String safe(String s) { return s == null ? "" : s; }

    private static boolean isBlank(String s) { return s == null || s.trim().length() == 0; }

    // ---------- AI 设置页 ----------

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
                                    @Override public void run() { toast(a, "✓ 连接成功，模型: " + model(a)); }
                                });
                            } catch (final Exception e) {
                                final String msg = e.getMessage() == null ? e.getClass().getSimpleName() : e.getMessage();
                                MAIN.post(new Runnable() {
                                    @Override public void run() { toast(a, "✗ 连接失败: " + msg); }
                                });
                            }
                        }
                    }).start();
                }
            });
        }
    }

    interface OnOk {
        void ok(String inputText);
    }

    private static void row(final Activity a, String id, final OnOk onOk, final String current, final boolean password) {
        View v = a.findViewById(a.getResources().getIdentifier(id, "id", a.getPackageName()));
        if (v instanceof LabelArrowButton) {
            ((LabelArrowButton) v).setOnLayoutClickListener(new OnLayoutClickListener() {
                @Override
                public void click(View view) {
                    String hint = id.equals("ai_key") ? "粘贴 API Key（仅存本机）"
                        : id.equals("ai_endpoint") ? "OpenAI 兼容端点（留空恢复默认）"
                        : "模型名（留空恢复默认）";
                    appDialog(a, "dialog_ghs_input", id.equals("ai_key") ? "API Key" : id.equals("ai_endpoint") ? "API 端点" : "模型",
                        hint, "保存", onOk, true, current, password).show();
                }
            });
        }
    }

    static android.app.Dialog appDialog(Activity a, String layoutName, String title, String message, String okText,
            final OnOk onOk, boolean withInput, String inputText, boolean password) {
        final android.app.Dialog d = new android.app.Dialog(a, a.getResources().getIdentifier("Theme.Doit.Light.Dialog", "style", a.getPackageName()));
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
            @Override public void onClick(View v) { d.dismiss(); }
        });
        ok.setOnClickListener(new View.OnClickListener() {
            @Override public void onClick(View v) {
                d.dismiss();
                onOk.ok(input == null ? null : input.getText().toString());
            }
        });
        d.setContentView(content);
        return d;
    }
}
