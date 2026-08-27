# DoitClone 工程指令

这是一个逆向复活 doit.im Android v4 的工程：`original-src/` 是 apktool 反编译的 smali 基线，
所有功能修改通过 smali 补丁或「Java→d8→smali 工具链」完成。

## 强制规则

**做任何涉及本工程的开发/修改/构建之前，必须先完整阅读 [`playbook.md`](playbook.md)**
（27 条踩坑记录，含工具链、资源 ID、监听器覆盖、原版 UI 模式、发布流程）。
不做相关修改、只是回答问题时可跳过。

## 即使不读 playbook 也不能违反的红线

1. **不要手写大段 smali** —— 用 Java 编译（javac → d8 → baksmali，驱动类见 playbook 第 1 节）。
2. **android:onClick 无效** —— 原版自定义控件构造时会覆盖它；必须代码里 setOnClickListener / setOnLayoutClickListener 接线。
3. **新代码引用不了 R.id/R.layout** —— 运行时 `getIdentifier(name, type, pkg)` 解析。
4. **改完必 bump 版本号**（apktool.yml，versionCode +1 / versionName rN+1），否则无法区分用户手机上装的是哪版。
5. **恢复 SQLite 前必须删 -journal/-wal/-shm**，替换 db 后杀进程重启。
6. **UI 一律抄原版实现**：页面用 `Theme.Doit.Light.WithBackBtn` + setTitle/setDisplayHomeAsUpEnabled/setHomeButtonEnabled 三件套；
   弹窗用 `Dialog(context, Theme.Doit.Light.Dialog)` + `dialog_title_layout` / `layout_cancel_and_ok_btns` include。
7. **发版固定动作**见 playbook 第七节（构建→验证→哈希校验→Pages 确认）。
8. 引用 App 内部类用 stub 编译法，stub 不进 APK（playbook 坑 18）。

## 关键路径

- 基线源码树：`original-src/`（补丁清单在其 README）
- 新增功能 Java 源码归档：`original-src/tools-src/`
- 编译工作区（仓库外）：`~/​.zcode/workspace/default/doit-reverse/ghsync/`
- 私有数据仓（备份目标）：szwnba/doit-data
