# 原版本地化版源码（基准版本 4.4.5-local-r4 / code 1414408）

本目录是 doit.im v4.4.5（2015）APK 的 apktool 反编译产物 + 本地化补丁，
**当前分发的 doit-local.apk 即由此树构建**。

## 重新构建

```bash
apktool b original-src -o doit-local-unsigned.apk
zipalign -f 4 doit-local-unsigned.apk aligned.apk
apksigner sign --ks original-src/doit-reverse.keystore \
  --ks-pass pass:doit123456 --ks-key-alias doit \
  --out doit-local.apk aligned.apk
```

## 相对原版的全部改动

| # | 位置 | 改动 | 作用 |
|---|---|---|---|
| 1 | `AndroidManifest.xml` | `maxAspectRatio=2.4` + `resizeableActivity=true` | 解除 16:9 信箱化（长屏黑边） |
| 2 | `res/values/styles.xml` | 两个主题加 `windowDrawsSystemBarBackgrounds` + `navigationBarColor` | 底部导航栏区域染色（消除黑条） |
| 3 | `smali/.../DoitApp.smali` | `isLogin/isAuth→true`、`isLoginAgain→false`、`user()` 空安全 | 免登录 |
| 4 | `smali/.../StartUpActivity.smali` | `startInit` 直进主界面 | 跳过登录页/引导/同步自启 |
| 5 | `smali/.../DoitService.smali` | `onStartCommand` 直接返回 | 彻底中和云同步（纯本地） |
| 6 | `smali/.../UserUtils.smali` | `isNotPro→false` | 解锁全部 Pro 功能 |
| 7 | `smali/.../DSQLiteOpenHelper.smali` | 新增 `onOpen` 幂等种子 14 个默认箱子 | 原版箱子数据依赖服务器下发，本地版必须自种 |
| 8 | `AndroidManifest.xml` | `uses-library org.apache.http.legacy` | targetSdk 23 上 Apache HttpClient 可用 |
| 9 | `AndroidManifest.xml`（此前版本） | targetSdk 23 | Android 14+ 可装 |
| 10 | `smali/im/doit/pro/github/`（新增 15 个文件） | `GitHubSync` 整类（Java 编译→d8→baksmali）+ 设置页入口行 + `SettingsActivity.onGitHubSyncClick` + 字符串资源 | **GitHub 私有仓备份/恢复**：设置页手动把整库 gzip 后经 Contents API 备份到私有仓库，可下载覆盖恢复（恢复后自动重启）；Token 仅存本机 SharedPreferences |

### 补丁 10 说明（GitHub 备份）

- 源码见 `tools-src/GitHubSync.java`（Java 源，smali 由它编译而来）；入口在
  设置 → 通用 → **GitHub 同步（备份 / 恢复）**。
- 上传 = `VACUUM INTO` 一致性快照 → gzip → base64 → `PUT /repos/{owner}/{repo}/contents/doitim.db.gz`（自动带 sha 覆盖，每次备份是一个 commit，可在 GitHub 网页回滚任意历史版本）。
- 恢复 = GET 同一文件 → 解码解压 → 覆盖 `doitim.db`（清 journal/wal）→ 提示重启进程。
- 认证：GitHub fine-grained token（仅需目标私有仓 Contents 读写），在 App 设置页粘贴，不写死在代码里。

## 签名密钥

`doit-reverse.keystore`（别名 `doit`，口令 `doit123456`）。
**注意：密钥随公开仓库分发意味着任何人都能签同包名升级包，仅接受自担风险时使用。**

## 法律

原版代码与素材版权归 doit.im（上海煎饼客网络科技）所有，仅限个人学习研究，
请勿商用或二次分发。
