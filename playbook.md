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

## 九、教训级方法论

- **改 UI 前先读原版同类实现**（坑 24）——所有"风格不统一"返工都源于此。
- **读代码用 jadx，改代码用 smali，验证用回解**（坑 7/11）——三种视图各司其职。
- **新功能走 Java→d8→smali 工具链 + stub 编译**（坑 16/17/18）——把 smali 当编译产物而不是手写语言。
- **每个现象先证伪"环境问题"再怀疑代码**（坑 3/6/12/下载截断）——这台机器的网络和老手机的状态都不可信。
- **用户报"没反应/没变化"时，先让用户报版本号**（坑 12），再查监听器覆盖（坑 19）。
