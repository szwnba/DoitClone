# Doit 复刻版（DoitClone）

> **当前基准版本：原版本地化版 `4.4.5-local-r3`**（`original-src/` 构建，产物 `dist/doit-local.apk`）。
> 下载：https://szwnba.github.io/DoitClone/download/doit-local.apk

基于对 doit.im v4 安卓客户端（2015 版 APK）的逆向分析，用现代 Android 技术栈完整重写的
本地优先 GTD 任务管理应用。界面结构、箱子语义、数据模型均还原自原版。

## 技术栈

| 层 | 实现 |
|---|---|
| 语言 | Kotlin 2.0 |
| UI | XML + Material 3 + ViewBinding |
| 数据 | Room (SQLite)，Flow 响应式查询 |
| 异步 | Kotlin 协程 |
| 提醒 | AlarmManager 精确闹钟 + 通知渠道 |
| 构建 | AGP 8.5 / Gradle 8.7 / KSP |

最低支持 Android 8.0 (API 26)，targetSdk 34。

## 已还原的原版功能

- **20 箱子抽屉导航**：收件箱 / 专注组（今日、下一步、明日、日程、将来也许、等待）/
  整理组（项目、目标、情境、过滤器）/ 完成组（已完成、垃圾桶），含徽章计数（今日/等待箱
  支持逾期计数）
- **箱子语义**（1:1 还原原版 `TaskDaoHelper`）：
  - 今日 = `PLAN 且 startAt ≤ 今天末`（含逾期、不含重复任务）
  - 明日 = `PLAN 且 startAt 在明天区间`
  - 日程 = `PLAN 且 startAt ≥ 后天` 或带重复规则
  - 下一步/将来也许/等待/收件箱 = 按 attribute 直查
- **分组查看**：每箱子可用维度还原自原版 `BoxUtils.getGroupBys`（今日按开始时间、
  下一步按项目、将来按优先级……），分组偏好按箱子记忆
- **任务全字段**：标题/备注/开始与截止/全天/优先级(高中低无)/项目/目标/情境/#标签/
  预估与耗时/子任务（可勾选、增删、改名）
- **重复任务引擎**：每天、每N天、每周多选、每月按日期、每月第N周周几、每年；
  完成时自动生成下一实例（repeatNo 递增、按锚点推进日期、保留时长）
- **提醒**：每任务多时刻提醒（HH:mm），闹钟触发通知（完成/稍后提醒10分钟按钮），
  开机自动重排；每日计划（默认 8:00）与每日回顾（默认 20:00）每日提醒
- **SmartAdd 快速添加**：通知栏常驻入口，支持自然语言——
  `明天 9:00-11:00 交报告 #工作 !高`（今天/明天/后天/大后天/N天后/周X/下周X、
  时间段、上午下午晚上前缀、#标签、!高中低）
- **每日计划**：今日已安排 + 可安排候选（收件箱/下一步/将来 + 逾期），一键安排到今日/明日
- **每日回顾**：今日完成统计 + 逾期未完成清单，一键推迟到明日
- **搜索**：标题 + 备注全文匹配
- **垃圾桶**：软删除、恢复、彻底删除、清空
- **拖拽排序**：不分组模式下拖动调整顺序；右滑完成、左滑进垃圾桶

## 未包含（依赖外部服务的原版功能）

云同步（OpLog → doit.im 服务器）、联系人协作/发送任务、Evernote 附件、
Pro 内购、桌面小部件（计划三期实现）。

## 构建

```bash
# 需要 JDK 17 与 Android SDK（compileSdk 34）
./gradlew assembleDebug
# 产物：app/build/outputs/apk/debug/app-debug.apk
```

或直接用 Android Studio 打开项目根目录，等待 Gradle Sync 后运行。

## 数据迁移（从原版 doit.im）

原服务仍在线，可在网页版设置中导出数据；后续版本可提供导入器
（原版 tasks 表字段与本项目的 `TaskEntity` 一一对应）。

## 项目结构

```
app/src/main/java/com/doit/clone/
├── DoitApp.kt            Application + Graph（手动 DI 容器）
├── model/                BoxType / Attribute / GroupByType / Priority
├── data/
│   ├── db/entity/        Room 实体（tasks 等 6 表，字段还原原版 33 列）
│   ├── db/dao/           TaskDao（箱子查询语义）/ 组织实体 DAO
│   └── repo/             TaskRepository（完成分裂/移动/排序）/ Organize / Settings
├── repeat/               Repeater 五种重复模式 + 实例生成
├── reminder/             调度器 + 通知接收器 + 开机重排
├── smartadd/             自然语言解析器 + 快速添加界面
├── ui/
│   ├── home/             HomeActivity（抽屉）+ TaskListFragment（箱子列表）
│   ├── task/             TaskDetailActivity（全字段编辑）+ 子任务
│   ├── organize/         项目/目标/情境/过滤器 列表与详情
│   ├── daily/            每日计划 / 每日回顾
│   ├── search/ settings/ 搜索 / 设置
│   └── common/           分组器 / 任务适配器 / 各类选择器
```

## 原版素材（v1.1 视觉还原）

为达到与原版一致的视觉效果，本项目移植了原版 APK 的图片素材与设计参数
（仅限个人学习研究用途，请勿用于商业用途或二次分发）：

- **313 个原版 PNG 图标**（icon_leftbox_* 箱子图标、icon_checkbox_* 复选框、
  icon_actionbar_* 标题栏、icon_pop_priority_* 优先级等，含明日箱 tomorrow1~31 全套）
- **原版启动图标** logo_launcher（全密度）
- **原版配色**：标题栏蓝 `#1262A1`（带上白下黑渐变）、内容背景暖白 `#F2F1EF`、
  优先级四色（高 `#C05318` / 中 `#207CC2` / 低 `#85C3F2` / 无 `#D3D4D6`）、逾期红 `#CB0101`
- **原版尺寸**：标题栏 48dp、抽屉 280dp、菜单项 48dp、任务行 58dp、分组头 44dp、优先级条 4dp
- **原版布局结构**：任务行 = 左优先级色条 + 复选框 + 标题/属性行 + 右对齐截止；
  抽屉项 = 图标 + 名称 + [逾期|总数] 徽章；明日箱图标随明日日期动态切换（原版彩蛋）
- 移除了 FAB（原版无此元素），添加入口回归标题栏"+"图标

## 法律说明

本项目为个人学习与自用目的的复刻，非官方产品，与 doit.im 官方无任何关联。
界面图片素材与设计参数还原自 2015 年版客户端，仅用于个人学习研究；
应用逻辑代码全部为原创重写。请勿用于商业用途或二次分发。
