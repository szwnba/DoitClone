# Doit.im v4 逆向分析报告（原型挖掘）

> 分析对象：`doitv4.apk`（5.8MB，构建于 2015-05，包名 `im.doit.pro.v4`）
> 工具：apktool 2.9.1（资源）+ jadx 1.5.3（代码）
> 好消息：**代码完全未混淆**，类名、方法名、资源名全部可读。

## 1. 应用概况

| 项目 | 值 |
|---|---|
| 包名 | `im.doit.pro.v4` |
| 启动入口 | `StartUpActivity` → `LoginActivity` / `HomeActivity` |
| Application | `im.doit.pro.activity.DoitApp`（全局单例，持有 `Persist` 数据库入口） |
| 主题 | `Theme.Doit.Light`（基于 Holo Light，2015 年风格） |
| 组件总数 | 83（56 Activity + 9 Receiver + 3 Service + 6 Widget 组件等） |
| 权限 | INTERNET、开机启动、外部存储、账户管理、振动、相机（扫码）、Play 内购 |

## 2. 架构

经典 MVC 分层，结构非常清晰：

```
im.doit.pro/
├── activity/     56 个界面（含子包：listener / listview / utils）
├── controller/   控制器
├── model/        数据模型 + enums 枚举
├── db/
│   ├── metadata/ 表结构定义（20+ 张表）
│   └── persist/  DAO 层（TaskDao 41KB 为最大类）
├── api/          云同步（REST + Basic Auth + Gson）
│   └── parser/   JSON 解析器
├── ui/component/ 自定义控件（D 前缀：DActionBar、DSwitch、DDatePicker...）
├── widget/       桌面小部件（3 种）
├── receiver/     开机、提醒、同步、小部件刷新广播
├── service/      同步服务、提醒服务
└── utils/        33 个工具类（DateUtils、RepeaterUtils、SmartAddUtils...）
```

**第三方库**：Gson、Apache HttpClient、drag-sort-listview（拖拽排序）、pull-to-refresh、nineoldandroids（动画兼容）、ViewPager + CirclePageIndicator、Flurry（统计）、Crashlytics（崩溃）、Evernote SDK（附件关联印象笔记）、Play Billing（内购）。

## 3. 核心数据模型

### 3.1 主表清单（db/metadata/）

tasks（任务）、sub_tasks（子任务）、projects（项目）、goals（目标）、task_contexts（情境）、filters（过滤器）、tags（标签）、contacts（联系人）、task_comments（评论）、notices（通知）、oplogs（同步操作日志）、users、purchases（内购）、daily_reviews（每日回顾）、task_review_infos、boxes（箱子显示配置）、last_sync_logs、agent_errors。

### 3.2 tasks 表（33 列，核心中的核心）

```
uuid, repeat_no, deleted, hidden, archived, trashed, completed,
title, notes, attribute, all_day, start_at, end_at,
context, goal, project, priority, pos, now,
sender, sender_email, from_subtask, source, local_attachments,
repeater, assignment, sent_at, reminders, tags, medias, send_origin,
estimated_time, spent_time
```

关联实体均用 **uuid 字符串引用**（非外键），典型的同步友好设计。`pos` 用于手动排序（拖拽）。

### 3.3 关键枚举

**BoxType（左侧抽屉的 20 个箱子，按 pos 排序）**——这是整个 App 的导航骨架：

```
收件箱     inbox(1)
─ 专注 FOCUS（local_group_focus=2 分组标题）─
今日待办   doitnow(3,隐藏聚合) / today(4) / next(5) / tomorrow(6)
日程       scheduled(7) / someday(8) / waiting(9)
─ 整理 ORGANIZE（local_group_organize=10 分组标题）─
项目       projects(11) / 目标 goals(12) / 情境 contexts(13) / 过滤器 filters(14)
─ 完成 DONE（local_group_done=15 分组标题）─
已完成     completed(16) / 垃圾桶 trash(17)
（contacts(18)/nocontext(19)/noproject(20) 为辅助视图）
```

**Attribute（任务属性）**：inbox / next / plan / noplan / waiting
**Repeater 体系**：Repeater 基类 + Daily/Weekly/Monthly(按日期/按周几)/Yearly + RepeaterMode（重复模式）
**GroupByType（每个箱子支持的分组维度）**：

| 箱子 | 可选分组 | 默认 |
|---|---|---|
| 今日 | 开始时间/截止时间/情境/项目/优先级 | 开始时间 |
| 下一步 | 项目/情境/优先级/截止时间 | 项目 |
| 明日 | 开始时间/截止时间/情境/项目/优先级 | 开始时间 |
| 将来/也许 | 优先级/截止时间/情境/项目 | 优先级 |
| 等待 | 联系人/截止时间/情境/项目/优先级 | 联系人 |
| 已完成 | 完成时间/情境/项目 | — |

## 4. 界面清单（56 个 Activity，按功能域分组）

**启动与账户**：StartUp、BootGuide（引导）、Login、Signup、LoginAgain、Google 登录（Dialog + WebView 两步）、AccountInfo、昵称/性别/日期时间格式/每周起始日编辑。

**主界面**：HomeActivity（DrawerLayout + HomeMenuContent + 菜单 ListView）、Search、SmartAdd（通知栏快速添加，带自然语言日期解析）、Notice（通知中心）。

**任务**：TaskDetail（详情/编辑）、ProjectViewPager / GoalViewPager / TaskContextViewPager / FilterViewPager（四类实体的列表+详情双页滑动）及对应 Detail 页。

**每日计划与回顾**：DailyPlan、DailyPlanOnNext、DailyReview、回顾统计、计划/回顾设置（提醒时间）。

**协作**：ContactList / ContactDetail / SelectContacts / AddContact / SendTask（发送任务给联系人）、ViewNotes。

**Evernote**：AttachFromEvernote、EvernoteAccount。

**系统**：Settings（含小部件样式、提醒设置）、LockSetup/Lock（PIN 锁）、UpgradeToPro（内购）、Feedback、AboutUs、FollowUs、ReceiveOtherAppData（接收分享）。

**桌面小部件（3 种）**：WidgetAddProvider（快速添加按钮）、WidgetBadgeProvider（徽章计数）、WidgetCalendarProvider（日历，带 RemoteViews 服务）。

## 5. 云同步设计（复刻时需替换的关键部分）

- 服务器：`i.doit.im`（中国区）/`i.doitim.com`（国际），**Basic Auth + REST + Gson JSON**
- **OpLog 增量同步**：本地所有写操作记录到 oplogs 表，同步时按批次（单批 ≤512 条）推送给服务器，成功后清除；配合 last_sync_logs 记录各实体最后同步时间做增量拉取
- 账户体系走 Android AccountManager（SyncAdapter 模式），有独立的 DoitSyncReceiver/DoitService
- 内购（Play Billing）解锁 Pro：订阅制

## 6. UI 资产

- 187 个布局 XML，全部可读
- 多密度图标资源（含每个箱子专属图标 `icon_leftbox_<boxname>`，明日箱按日期 1-31 换图标）
- 抽屉菜单项 = 箱子图标 + 名称 + 未完成计数徽章（今日/等待箱还有逾期计数）
- 主列表用 drag-sort-listview 支持拖拽排序，下拉刷新
- 18 种语言（含简繁中文、日、英）

## 7. 复刻建议（结论）

**不建议**基于反编译代码续写（2015 年的 Apache HttpClient/Holo/Support 库早已废弃）；
**建议**照本报告的模型与界面清单，用现代栈重写：

| 层 | 原实现（2015） | 复刻建议（2026） |
|---|---|---|
| 语言 | Java | Kotlin |
| UI | Holo + XML + 自定义控件 | Jetpack Compose（或 XML+Material3） |
| 数据 | SQLite + 手写 DAO | Room + Repository |
| 同步 | 自有 REST + OpLog | 本地优先；二期自建（WebDAV/自托管） |
| 后台 | Service/Receiver/AlarmManager | WorkManager + AlarmManager |
| 通知栏部件 | RemoteViews | Glance（或保持 RemoteViews） |

分阶段：
1. **MVP**：核心箱子导航 + 任务 CRUD + 项目/情境/目标 + 本地 Room 存储 + 搜索 + SmartAdd
2. **二期**：重复任务引擎、每日计划/回顾、提醒、小部件、PIN 锁
3. **三期**：自建同步 + 数据迁移（从 doit.im 导出）

---
*分析产物：`apktool-out/`（资源+manifest+smali）、`jadx-out/sources/`（可读 Java 代码）*
