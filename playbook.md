# Doit 本地版开发 Playbook —— 踩坑记录

> 本文档记录逆向、本地化改造、新增功能（GitHub 同步）全过程踩过的坑。
> 每条格式：**坑 → 原因 → 解法**。新功能开发前先通读一遍。

---

## 一、工具链与环境

### 1. java 命令找不到（子 shell 丢 PATH）
- **坑**：明明装了 JDK，某个 Bash 调用里 `java` 报"未找到命令"。
- **原因**：每次工具调用是独立 shell，`PATH` 不会自动带 `~/tools/jdk/bin`。
- **解法**：每个脚本开头显式 `export PATH=/home/johnson/tools/jdk/bin:...:$PATH`。

### 2. baksmali 没有可用的命令行入口
- **坑**：`java -cp apktool.jar com.android.tools.smali.baksmali.Main d ...` 报"找不到 main 方法"（Main 继承 jcommander Command，不是标准入口）；从 Maven 下载 `smali-baksmali` jar 又缺 `org.jf.util.jcommander.Command` 依赖。
- **原因**：apktool 2.9.1 fat jar 只捆绑了 Baksmali **引擎类**，没带 CLI 运行器；Maven 上的 baksmali jar 不是 fat jar。
- **解法**：写 5 行驱动类直接调引擎（此法随 apktool.jar 自带全部依赖，永远可用）：

```java
// Bsm.java —— javac -cp apktool.jar 编译，java -cp .:apktool.jar 运行
DexFile dex = new DexBackedDexFile(Opcodes.forApi(19), Files.readAllBytes(new File(in).toPath()));
BaksmaliOptions opt = new BaksmaliOptions();
opt.apiLevel = 19;
Baksmali.disassembleDexFile(dex, new File(outDir), 1, opt);
```

- **注意**：`DexBackedDexFile` 构造参数是 `byte[]` 不是 `FileInputStream`。

### 3. 网络极不稳定（下载/推送频繁断）
- **坑**：curl 报 exit 56/50；SDK zip 半途损坏；git push 报 `curl 65 Recv failure` / `RPC failed`。
- **解法**：
  - 下载一律加 `--retry 3 -C -`（断点续传），大文件下载后**必须校验字节数/哈希**再使用；
  - git 推送前 `git config http.postBuffer 524288000`，重试循环里**用远端 ref 对比判断成功**（见坑 4）。

### 4. shell 重试循环判断推送成功永远为真
- **坑**：`if git push 2>&1 | tail -1; then break; fi` 明明失败也 break。
- **原因**：管道的退出码取自最后一个命令（`tail`），`git push` 的失败被吞了。
- **解法**：推送后对比 `git rev-parse HEAD` 与 `git ls-remote origin main` 是否一致。

### 5. /tmp 是 tmpfs，容量小
- **坑**：SDK 等大文件下载到 /tmp 把 3.4G 配额打满，后续所有写入失败。
- **解法**：大文件统一放真实磁盘（如 ~/downloads）；工具调用前留意 df。

### 6. 没有 KVM，模拟器开不起来
- **坑**：新模拟器 x86_64 镜像强制要求 KVM，ARM64 镜像又禁止跑在 x86 宿主上。
- **解法**：验证类工作走两条路——Robolectric（JVM 单测，适合 Java 源码工程）；或**编译期静态验证**（本 playbook 第五节）+ 让用户真机实测。纯 smali 工程没有单测可言，静态验证尤为重要。

---

## 二、APK 逆向与重建

### 7. jadx 反编译结果不能直接当修改依据
- **坑**：jadx 出的 Java 有时标 `Code decompiled incorrectly`，switch 语句直接吐字节码 + `throw new UnsupportedOperationException`；还有大量 `access$N` 合成方法干扰阅读。
- **原因**：jadx 控制流还原不完美；内部类访问外部私有字段的合成方法无法还原成源码形态。
- **解法**：**jadx-out 只用来读业务逻辑，动手修改一律在 apktool 的 smali 树上**。两边对照着看。

### 8. Android 14+ 安装失败：targetSdk 太老
- **坑**：2015 年的 APK（targetSdk 19 或更低）在新系统上装不上。
- **解法**：apktool.yml 里 `targetSdkVersion: 23`（≥23 即可安装），minSdk 保持 14 不动。

### 9. Apache HttpClient 运行时缺失
- **坑**：targetSdk ≥ 23 后，原版代码里的 Apache HttpClient 全线 `NoClassDefFoundError`。
- **原因**：API 23 起 HttpClient 从平台移除，需显式声明 legacy 库。
- **解法**：AndroidManifest.xml 加 `<uses-library android:name="org.apache.http.legacy" />`。**新写网络代码不需要它**（用 java.net.HttpURLConnection 更省事），但原版同步代码路径需要。

### 10. versionCode 乱设会锁死升级
- **坑**：给本地版设 versionCode=6，而用户手机上原版是 1414407 → 装不上（系统拒绝降级）。
- **解法**：versionCode 保持在原版序列上递增（1414408、1414409…）；versionName 用 `4.4.5-local-rN` 让用户能在系统设置里**肉眼确认装的是哪一版**。

### 11. 重建后必须验证补丁真的进了 APK
- **坑**：grep 输出被截断，误以为某个 res 修改没生效（其实改了）；反过来也有补丁实际没打进去、构建静默成功的情况。
- **解法**：构建后**三重验证**成固定动作：
  1. `aapt2 dump badging` 确认版本号；
  2. `unzip -p apk classes.dex | strings | grep 关键类`（或 baksmali 回解后 grep 关键方法）确认 smali 补丁；
  3. `aapt2 dump resources | grep 新资源` / `dump xmltree --file res/layout/xxx.xml` 确认 res 补丁。

### 12. 用户手机"还是老样子"≠ 补丁没生效
- **坑**：改了导航栏颜色用户说没变，反复排查构建。
- **原因**：手机上装的是旧 APK（覆盖安装失败或没重装）。
- **解法**：先对比手机 APK 与分发 APK 的哈希/版本名，再怀疑代码。**每次变更必 bump versionName**，一问版本号就知道装的哪版。

---

## 三、本地化 smali 补丁

### 13. 抽屉里的"箱子"是数据库行，不是代码常量
- **坑**：免登录后抽屉少了"项目"入口，怎么改布局都没用。
- **原因**：原版箱子列表（inbox/today/next/…/projects）是服务器下发后写进 `boxes` 表的，本地版没有服务器 → 表是空的。
- **解法**：在 `DSQLiteOpenHelper.onOpen` 里做**幂等种子插入**（`INSERT ... SELECT ... WHERE NOT EXISTS`，14 个默认箱子）。放 onOpen 而非 onCreate 的好处：已装用户的旧库也能被修复。

### 14. 状态栏/导航栏染色：改哪个是一回事，不改哪个也是一回事
- **坑**：为了"新系统上好看"给 styles.xml 加了 `statusBarColor` 蓝色 → 用户要求恢复 2015 年黑色状态栏；`navigationBarColor` 又必须设置否则底部黑条。
- **解法**：`windowDrawsSystemBarBackgrounds=true` + 只设 `navigationBarColor`（Light 主题用 `@color/home_content_bg`），**不要碰 statusBarColor**。老 App 的怀旧感也是需求。

### 15. 长屏黑边（letterbox）
- **坑**：targetSdk < 26 的 App 在新机上默认被限制在 16:9 区域，下半屏全黑。
- **解法**：manifest 加 `android:maxAspectRatio="2.4"` + `resizeableActivity="true"`。查这类问题先确认黑边是"信箱化"还是"导航栏区域"，两者修法不同（本条 vs 坑 14）。

---

## 四、往 smali 工程加新功能（核心方法论）

### 16. 永远不要手写大段 smali
- **坑**：手写寄存器分配、类型签名，一个寄存器号写错就是运行时 crash，且无 IDE 提示。
- **解法**：**Java 写 → javac → d8 → baksmali → 拷 smali 合入树**。全程一条命令链，见 `tools-src/` 里的源码与本文档第 1 节的 Bsm 驱动。

### 17. 新 Java 代码引用不了 R.id / R.layout / R.style
- **坑**：apktool 树没有 R.java，`findViewById(R.id.xxx)` 编译不过。
- **解法**：运行时解析资源，符号名和真实资源完全一致：

```java
private int id(String name)  { return getResources().getIdentifier(name, "id", getPackageName()); }
private int res(String name, String type) { return getResources().getIdentifier(name, type, getPackageName()); }
```

- 需要新 id 时往 `res/values/ids.xml` 加 `<item type="id" name="xxx" />`，构建时 apktool 自动分配。

### 18. 引用 App 内部类：stub 编译法
- **坑**：新 Activity 想继承 `DSwipeBackBaseActivity`、行控件想用 `LabelArrowButton`，但这些类不在 android.jar 里，javac 找不到。
- **解法**：写**同名同包的空壳 stub**（只参与编译，不进 APK）：

```
stubs/im/doit/pro/activity/DSwipeBackBaseActivity.java   → public class ... extends Activity {}
stubs/im/doit/pro/ui/component/LabelArrowButton.java     → 带需要的方法签名
```

- 编译后 baksmali 出的 smali 里类引用就是真实路径（`Lim/doit/pro/activity/DSwipeBackBaseActivity;`），运行时自动落到真身。
- **注意**：d8 要喂编译后的 stub classes（`--classpath stubs-classes`），只给 .java 目录会有 desugaring 警告且无法验证。
- **注意**：baksmali 输出里 stub 自己的 smali 不要拷进基线树（它们和真实类同名，会顶掉原版）。
- 若 stub 声明了与真身不符的继承关系（比如真身是抽象类而 stub 不是），运行时可能 VerifyError——stub 前先 `grep .super / .method abstract` 确认真身结构。

### 19. android:onClick 会被自定义控件覆盖（点击无响应的头号原因）
- **坑**：布局里写了 `android:onClick="onXxxClick"`，Activity 里也写了方法，点击**毫无反应也不报错**。
- **原因**：`LabelArrowButton` 等原版自定义控件在构造器里 `registerListner()` 自己调 `setOnClickListener`，把 XML 的 onClick 监听器**静默覆盖**。原版自己的设置行都是代码里 `setOnLayoutClickListener(...)` 接线的。
- **解法**：代码接线。两种途径：
  - 行控件是原版组件 → 调它的 `setOnLayoutClickListener`（stub 里声明该方法）；
  - 拿不到组件引用 → 在 onCreate 里遍历视图树按文本找（`GitHubSync.wire()` 的做法），找到后 `setOnClickListener`。

### 20. 编译期静态验证清单（没有模拟器时）
构建后逐项 grep 成品 APK（回解 baksmali）：
- Activity 基类/接口引用指向真实类（`.super`/`.implements`）；
- 关键调用存在（如 `setOnLayoutClickListener`、`Dialog;-><init>(Context,I)`）；
- 新布局能被 `aapt2 dump xmltree` 解析；
- 新 id/string 有分配（`aapt2 dump resources | grep ghs_`）。

---

## 五、UI 一致性（仿原版风格）

### 21. 系统 AlertDialog 风格和 2015 App 割裂
- **坑**：`AlertDialog.Builder` 在新设备上渲染成 Material/Holo 大蓝标题弹窗，和 App 的扁平风完全两个世界。
- **解法**：抄原版对话框组件的**容器模式**（参考 `GroupByDialog`）：
  - `new Dialog(context, R.style.Theme_Doit_Light_Dialog)`（透明窗口背景 + 0.3 压暗 + floating）；
  - 内容布局 = `dialog_title_layout`（54dip 标题栏）include + 正文 + `layout_cancel_and_ok_btns`（扁平"取消|确定"双按钮，用原版 `DButton`）；
  - 按钮点击在代码里 `findViewById` 接线（`@id/title`、`@id/cancel_btn`、`@id/ok_btn` 都是现成 id）。
- 新弹窗布局**必须复用这两个 include**，不要自己画按钮。

### 22. 蓝色标题栏不自动显示标题和返回箭头
- **坑**：注册了 `Theme.Doit.Light.WithBackBtn` 主题，标题栏是蓝的但空的。
- **原因**：主题只提供了 `homeAsUpIndicator` 图标；标题要显式设，UP 按钮要显式启用。原版子页都在 `init()` 里做三件事：
  - `getActionBar().setTitle(...)`、`setDisplayHomeAsUpEnabled(true)`、`setHomeButtonEnabled(true)`；
  - home 键点击在 `onOptionsItemSelected` 里判 `0x0102002c`（android.R.id.home）→ `finish()`。

### 23. 弹窗 OK 回调读不到输入框内容
- **坑**：对话框"保存"后存进去的是空值。
- **原因**：匿名回调读了外层字段，但字段从未从 EditText 赋值（Java 匿名类捕获限制下容易写错归属）。
- **解法**：自定义回调接口把输入文本作为参数传出：`interface OnOk { void ok(String inputText); }`，OK 点击时 `onOk.ok(input.getText().toString())`。

### 24. 想要"和原版一模一样"的样式，先抄原版的实现而不是模仿视觉效果
- **方法论**：每个 UI 需求先找一个原版对应物（提醒页、GroupByDialog…），读它的 layout XML + styles + smali 接线代码，**原样复用其组件/样式/流程**。自创样式必返工。

---

## 六、GitHub 同步实现细节

### 25. GitHub Contents API 的关键约束
- 上传新文件：`PUT /repos/{o}/{r}/contents/{path}`（body: message+content(base64)）→ 201；
- **覆盖已有文件必须带原文件的 `sha`**（先 GET 拿 sha；404 = 不存在则直接建）；
- 请求头 `User-Agent` 必填，GitHub 会拒无 UA 的请求；
- 认证用 fine-grained token：只勾目标数据仓 + Contents 读写，**绝不复用推代码的大权限 token**。

### 26. SQLite 整库快照与恢复
- 快照用 `VACUUM INTO 'tmpfile'`（一致性快照），失败兜底直接读 db 文件；
- **恢复时必须先删 `-journal`/`-wal`/`-shm` 再替换 db 文件**，否则残留 WAL 会把旧数据又写回新库（这是恢复后数据"回到过去"的经典坑）；
- 恢复完杀进程重启（`Process.killProcess(Process.myPid())`），避免内存中的旧 DAO 缓存污染。

### 27. 每次备份 = 一次 commit 的好处与验证
- 用 Contents API 上传天然产生 commit 历史，网页端可回滚任意版本——等于免费版本化备份；
- 验证 API 流程先用 curl 手工跑通（PUT 201 → GET → 带 sha PUT 200 → DELETE 200），再写客户端代码。

---

## 七、发布与验证流程（每次发版固定动作）

1. `apktool.yml` bump versionCode（+1，保持 14144xx 序列）与 versionName（rN+1）；
2. 构建：`apktool b` → `zipalign -f 4` → `apksigner sign`（keystore: `original-src/doit-reverse.keystore`，别名 doit）→ `apksigner verify`；
3. 静态验证（见坑 11/20）；
4. `cp` 到 `docs/download/doit-local.apk`，index.html 里 `?v=rN` 与版本文案同步更新；
5. 推送（postBuffer + 重试 + 远端 ref 对比，见坑 3/4）；
6. 等 Pages workflow success，然后**重新下载线上包校验字节数与哈希**（CDN 有 ~10 分钟缓存，且下载本身可能被截断——先比字节数再比哈希，别被半截文件吓到）；
7. 让用户确认系统设置里的版本号 = 刚发的 versionName（见坑 12）。

---

## 八、本地化补丁的隐形地雷（r9 事件）

### 28. 静态排查结论会被"字符串只在 R 类引用"骗过
- **坑**：断言"启动路径没有时区校验"，结果用户一清数据就弹出时区不一致对话框。
- **原因**：校验代码引用的是**数字资源 ID**（`0x7f0c0092`），grep "timezone/时区" 只能搜到 R 类和 strings.xml，搜不到业务代码。
- **解法**：找"某 UI/文案是谁触发的"时，先查 `res/values/public.xml` 把资源名映射成十六进制 ID，再用 ID 反查 smali。

### 29. 清除数据 = 摘掉原版登录态的"隐形补丁"
- **坑**：免登录版一直正常，用户清除数据后立刻闪退 + 各种空值对话框。
- **原因**：此前一切正常依赖原版安装留下的登录残留（真实 User、偏好设置）；假 User（`new User()`）字段全空，清数据后才第一次真正走到这些空字段。
- **解法**：假 User 创建时补关键默认值（如 timezone = 设备 GMT 偏移）；对返回用户信息的工具方法做空值兜底（`UserUtils.getTimeZone` 返回设备值）；无意义的联网时代校验直接废掉方法体（`showTimeZoneDiffDialog` → `return-void`）。**以后清数据测试要当作"首次真实验收"。**

### 30. 无 adb 环境取崩溃日志：装一个落盘崩溃处理器
- **坑**：用户手机闪退但不会用 adb logcat，远程只能靠猜。
- **解法**：在 Application.onCreate 包装 `Thread.setDefaultUncaughtExceptionHandler`（注意装在原崩溃处理器**之后**以保留链），把堆栈追加写到 `getExternalFilesDir(null)/doit_crash.txt` 和公共 `Download/doit_crash.txt`，用户用文件管理器即可取到发给开发者。

### 31. 原版对版本号格式有隐含假设（闪退排查的实战收获）
- **坑**：`versionName` 带 `-local-rN` 后缀后，`CheckVersion.needUpdate` 按点切分再 `Integer.parseInt`
  解析 `5-local-r10` → `NumberFormatException` 主线程崩溃。该检查一天仅触发一次且服务器死亡时
  走失败分支，所以潜伏多日才爆，极具迷惑性（曾被误判为"恢复数据引入的崩溃"）。
- **解法**：`CheckVersion.needUpdate` 整体改为 `return false`，`HomeActivity.checkVersionEveryday`
  废为空方法（同时避免向死服务器发请求）。**任何自定义 versionName 之前，先全局搜
  `parseInt`/`valueOf` 对版本号的使用。**
- **附带收获**：落盘崩溃日志（坑 30）一次就锁定了真凶——用户发来 `doit_crash.txt`，
  堆栈比任何远程猜测都快。之前对"恢复数据坏库"的怀疑其实证据不足。
### 32. 2015 年的闹钟代码在现代系统上"不响"的三层原因
- **坑**：任务提醒设置了但不响。代码用的全是 `AlarmManager.set()`（非精确、Doze 下可推迟数小时），
  且 manifest 没有 `POST_NOTIFICATIONS`（Android 13+ 通知权限）。
- **解法**：全部 6 处 `set(IJLandroid/app/PendingIntent;)V` 就地替换为
  `setExactAndAllowWhileIdle`（**同签名**，API 23 起可用，Doze 白名单级精确触发）——smali 一行 sed 搞定；
  manifest 补 `POST_NOTIFICATIONS`（targetSdk<33 声明即自动授予，同时让系统设置里出现通知开关）。
- **代码修不了的（必须用户侧操作）**：国产 ROM 的自启动/后台限制（vivo/iCos 等）要把 App 加入
  白名单；提醒时间设在过去不会响。
- **排查技巧**：receiver 上 `android:permission` 引用未定义的自定义权限**不是问题**——同 UID 自发自收
  不做权限校验，别在这里浪费时间。
### 33. 假 User 的身份字段是"核弹级"隐患——评论闪退案例
- **坑**：加了评论后点开任务就闪退。评论创建时 `author = user.getUuid()`（假 User 为 null），
  详情页渲染 `comment.getAuthor().equals(user.getUuid())` → null.equals → NPE。
- **解法**：假 User 补固定身份 `uuid="doit-local-user"`（`BaseEntity.setUuid`，User 继承自它），
  同时 `TaskComment.getAuthor()` 空值兜底返回同一常量——**已入库的 null 评论在渲染时被 getter 兜底救活，
  无需清数据**；新评论 author 恒等于当前用户 uuid，走"这是我"的渲染分支，头像 null 已有保护。
- **方法论**：凡"渲染时对用户身份字段做 equals/格式化"的地方，假 User 的 null 都是雷；
  与其逐个补渲染端，不如给假 User 一个完整、稳定、合理的身份（uuid/account/nickname/timezone），
  并在模型 getter 层兜底救已入库的脏数据。
### 34. AI 功能接入模式（r13 实战定型）
- **架构**：BYOK + OpenAI 兼容 `/chat/completions`（端点/Key/模型三项用户可配，Key 不入代码不入库）。
  端点/模型可做默认值，**Key 绝对不硬编码**（仓库公开，dex 里就是泄露）。
- **AI 输出抢救**：模型可能包代码围栏或夹带文字，先剥围栏、再截首尾大括号；
  解析失败降级为纯文本方案（永不空手而归）。
- **相对日期**：把今天日期放进 prompt 让模型输出绝对时间，App 端不做相对时间推算。
- **写回原版数据的配方**：描述 = 对 notes EditText setText（触发原版 TextWatcher 自动保存）；
  子任务 = new SubTask(task.getUuid(), task.getRepeatNo()) → setUuid(UUID) → setTitle → initPos
  → task.getSubTasks().add → subTaskDao.createAndSaveLog → 反射调私有 setSubtaskViewContent() 刷新。
- **反射取私有字段**：mTask 等 fragment 私有字段用 getDeclaredField + setAccessible，
  比给整个 Fragment 建 stub 轻得多。
- **对话框防崩**：异步回来 dialog.show() 前页面可能已销毁 → show 包 try/catch，防 BadTokenException。
- **r14 复检修正（自查揪出的坑）**：在 onCreateView 里给按钮接线时**不能用 getView()**——
  Fragment 的 view 要等 onCreateView 返回后才挂载，此时 getView() 为 null，NPE 被 try/catch
  吞掉后表现为"按钮点了没反应"。必须把 inflate 出来的 layoutView 直接传给接线方法。
  另：新建任务（mIsCreate）未落库时禁用 AI（防孤儿子任务）；重复应用会追加子任务、
  描述会被替换——这两种情况都要在确认框里向用户明示。
- **stub 方法签名必须逐字节核对（r15 血泪）**：stub 里 `getActivity()` 声明返回
  `android.app.Activity`，但真实 TaskDetailFragment 继承 support-v4 Fragment，其
  `getActivity()` 返回 `FragmentActivity` → 运行时 NoSuchMethodError 秒崩。
  规则：**凡 stub 涉及继承体系的方法（尤其返回类型），先 grep 真实类及其父链的
  `.method` 签名**；能不从 stub 类拿的东西就换个来源（如 Activity 从 `layout.getContext()` 拿）。
- **签名全量审计脚本**：把新包 smali 里对 `Lim/doit/...` 的全部 invoke/field 引用
  逐个沿真实继承链解析核对（单文件检查会因继承产生大量误报，框架父类按公开 API 放行，
  有"同款调用已在旧版本工作"的先例即闭环）。r15 审计 65 项全部通过后才发版。

### 35. 入口复用与 SSE 流式（r17）
- **劫持原版按钮比新增按钮优雅**：详情页右上"发送"按钮不再需要（服务已死），直接改
  `TaskDetailActivity$OnSendBtnClick.onClick` 里的一行 invoke → 拉起 AI 页；布局里按钮文案换成
  @string/ai_plan_short。原版样式零改动，天然统一。
- **SSE 流式三要点**：body 带 "stream":true + Accept: text/event-stream；按行读，取 "data:" 前缀，
  "[DONE]" 结束，choices[0].delta.content 为增量；**服务商不支持时自动降级非流式**（一次性吐全文）。
- **流式 UI 别逐 token 刷屏**：TextView.append 是 void 且高频 post 会卡——攒 60ms 批量 flush +
  自动滚底；Activity 用 WeakReference 持有防泄漏，isFinishing 防窗口销毁后回调。
- **方案落库走独立 Activity 时**：taskUuid 传参 + taskDao.findByUUID 重查（别传对象）；
  保存用 taskDao.updateAndSaveLog；步骤行用正则 ^\d{1,2}[.、)）] 从【行动步骤】小节提取。
- **流式输出别要求 JSON**：让模型直接输出可读的【目标/行动步骤/风险提示】文本（边流边看），
  完成后再用正则抽步骤——比"流 JSON 再解析"体验好得多。

### 36. "按钮劫持没生效"——先确认用户点的到底是哪一个按钮（r18）
- **坑**：劫持了顶栏布局里的文字"发送"按钮（layout_task_detail_topbar/send_btn），用户点的却是
  **ActionBar 菜单**里的纸飞机图标（res/menu/task_detail_menu.xml 的 action_send_to →
  onMenuItemSelected → startSelectContacts）。同一屏有两个"发送"，长得像、路径完全不同。
- **排查口诀**：用户说"XX 按钮"，先穷举这个界面所有叫 XX 的入口——布局文件搜、**menu 目录也要搜**、
  再用资源 ID 反查 inflate/点击处理类（菜单项是数字 ID 分支在 onMenuItemSelected/onOptionsItemSelected 里）。
- **教训**：xml 改完务必回解验证（这次菜单图标进了包但点击劫持锚文本没匹配上，静默失败——
  assert 挂了但脚本继续跑完构建，产物验证才发现）。

### 37. 签名审计抓不住"空壳方法"——TaskDao.findByUUID 恒返回 null（r19）
- **坑**：调用 `TaskDao.findByUUID(String)` 签名存在、运行不抛异常，但它是**标注 @Deprecated 的
  空壳**（方法体就一行 `const-null; return`），恒返回 null → 表现为"任务未找到"。
  真实实现在 `findByUUIDAndRepeatNo(uuid, repeatNo)`（repeatNo 传 null 时拼 `repeat_no IS NULL`）。
- **教训**：复用原版 API 前看三样东西——签名、**@Deprecated 注解**、**方法体是否只有 return 常量**。
  审计脚本可升级：对将被调用的方法做"空壳体检"（方法体 ≤5 条指令且含 return-const 即告警）。

### 38. 版本回退的正确姿势（r20 实操）
- Android **不允许降级安装**（versionCode 单调递增），"回退到 rN" = 用 git 把 original-src 整树
  checkout 回该提交，**打更高的 versionCode**（rN 内容 + 新号）重新构建分发。
- 恢复用"先 git rm 再 checkout"两步：`git checkout <commit> -- path` 不会删除该提交之后新增的文件，
  只清不取会留下尸体类（还进 dex）。
- 回退后核对清单：新增入口/劫持是否消失、原入口是否回来、ai 包文件数对得上、
  构建产物大小与目标版本一致（只差版本号时应相同）。

### 39. 原版 ActionBar 默认"什么都不显示"——标题要五件套（r22）
- **坑**：自建页面照抄了原版三件套（setTitle/setDisplayHomeAsUpEnabled/setHomeButtonEnabled），
  结果蓝色栏和箭头都有、标题死活不显示。
- **原因**：`Theme.Doit.Light.ActionBar` 样式里 `android:displayOptions = none`——原版把
  ActionBar 默认设为全隐藏，每个子页面在代码里显式逐项打开。完整五件套（UserWeekStartsOnActivity
  为准）：setTitle + setDisplayHomeAsUpEnabled(true) + setHomeButtonEnabled(true) +
  **setDisplayShowTitleEnabled(true)** + setDisplayUseLogoEnabled(false)。
- **教训**：抄原版 UI 初始化时要抄**完整方法体**（数 invoke 条数对齐），别按语义"理解着抄"。

### 40. 借尸还魂：复用原版"回传管线"集成新功能（r23 Issue 附件）
- **场景**：印象笔记附件挂了（服务退出中国），要用 GitHub Issue 顶上同样的 UI。
- **关键发现**：原版 `Media` 附件模型是通用的（uuid/type/title/url），回传协议是
  `setResult(RESULT_OK, evernote_note_guid/title/share_url 三 extras)` → fragment 的
  `onActivityResult(0x2711)` 自动完成**去重、落库、刷新卡片**。
- **零成本集成**：新选择页只需按同样协议 setResult；劫持点小到一行——
  `showAttachFromEvernoteDailog` 里的 `const-class AttachFromEvernoteActivity` 换成新类即可，
  请求码/启动方式全留原版。**先找原版有没有"协议化"的接缝，比硬改 UI 层优雅一个数量级。**
- **Issue 附加格式**：guid=`gh-issue-{number}`（天然去重键）、title=`#42 标题`、url=html_url；
  Issues API 会混入 PR，按响应里有无 `pull_request` 字段过滤。

### 41. 换设置行的控件类型 = 闪退（r25→r26）
- **坑**：把设置页"同步日志"行从 LabelTextView 换成 LabelArrowButton（为了箭头样式），打开设置页即崩。
- **原因**：SettingsActivity 对该视图有 `check-cast LabelTextView` 硬转换——原版代码对布局控件
  有类型假设。改任何原版行的控件类型前，必须先 grep 它的资源 ID 找出全部消费方。
- **解法**：控件类型还原（LabelTextView），只换 label 文案；点击接线用 findViewById 后
  setOnClickListener（对任何控件类型都成立）。**文案可以随便换，控件类不能随便换。**

### 42. APK 分发切换到 GitHub Releases（r26 起）
- **动机**：APK 进 git 仓库会随历史永久累积（每版 ~5.7MB，25 版已 ~126MB 对象）。
- **做法**：`POST /releases`（tag=rN, body=更新说明）→ `POST uploads.../assets?name=doit-local-rN.apk`
  （Content-Type: vnd.android.package-archive，**附件不计仓库体积**）→ 页面下载按钮指向
  `releases/download/rN/doit-local-rN.apk` → 仓库 `git rm` 掉 docs/download 里的 APK。
- **注意**：上传接口偶发**空响应但实际成功**，重传会报 Validation Failed（同名）——以
  `GET /releases/tags/rN` 查 assets 状态为准；重试循环别按响应判成败，按查询结果判。
- **实际回退（r26 当日）**：Release 下载要经 objects.githubusercontent.com，大陆网络经常
  连不上；而 Pages 托管该用户已成功下载 20+ 次（经验证可行）。**分发方式的选择要以用户
  网络实测为准，不是"官方最佳实践"为准**。
- **发版流程定稿（r28）**：**只走 Pages 单路**——cp 到 docs/download/doit-local.apk +
  页面 ?v=rN + 推送。Release 归档环节被用户明确砍掉（每次上传都在弱网上卡住数分钟，
  收益≈0）；历史上传过的 Release（r25/r26/r27 部分）留着不管即可。
- **顺带**：构建机 /tmp 是 tmpfs，apktool 的 aapt2 要在 /tmp 写临时文件，塞满会报
  "failed to write ... Invalid entry name/IO error" 且 tail 掩盖真因——报 IO error 先 df /tmp。

### 44. 统计功能实现套路（r30）
- **直查 SQLite 绕开 DAO**：统计类需求（聚合/分组）不需要模型对象——
  `SQLiteDatabase.openDatabase(getDatabasePath("doitim.db"), OPEN_READONLY)` 只读连接与主连接共存无冲突，
  免 stub、免空壳方法陷阱（教训 37 的根治方案）。
- **完成时间的近似**：tasks 表只有 `completed` 0/1 标记，无完成时间戳——用 `updated` 近似
  （完成动作必然 touch updated）。时间戳统一为**毫秒**（13 位）。
- **入口偷梁换柱的最省改法**：复用已死功能的活动做跳板——菜单项改标题（contacts→统计），
  ContactListActivity.onCreate 整体替换为"打开统计页+finish"，一处补丁覆盖所有菜单入口。
- **纯代码搭 UI**：统计页除 ScrollView 骨架外全部代码构建（weight 排版 + dp 换算 + FrameLayout
  底部对齐做柱状图 + GridLayout 做热力图），避免资源膨胀，视图复杂度也完全可控。

### 45. 跨包静态调用必须 public（r31）
- **坑**：统计入口 `StatisticsActivity.open(Activity)` 漏写 public（包私有），ContactListActivity
  （另一个包）调用它 → `IllegalAccessError` 打开即闪退。
- **规则**：凡是被 smali 补丁跨包调用的 Java 静态方法，**一律 public**；编译期 javac 不报错
  是因为调用发生在 smali（绕过了 Java 访问检查），运行时才炸。审计脚本可加一条：
  被外部包引用的方法检查 smali 里的 `.method public` 前缀。

## 九、教训级方法论

- **改 UI 前先读原版同类实现**（坑 24）——所有"风格不统一"返工都源于此。
- **读代码用 jadx，改代码用 smali，验证用回解**（坑 7/11）——三种视图各司其职。
- **新功能走 Java→d8→smali 工具链 + stub 编译**（坑 16/17/18）——把 smali 当编译产物而不是手写语言。
- **每个现象先证伪"环境问题"再怀疑代码**（坑 3/6/12/下载截断）——这台机器的网络和老手机的状态都不可信。
- **用户报"没反应/没变化"时，先让用户报版本号**（坑 12），再查监听器覆盖（坑 19）。
