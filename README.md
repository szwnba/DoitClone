# Doit 本地版（DoitClone）

> **基准版本 `4.4.5-local-r33`（versionCode 1414437，统计日期边界/周起点/热力图修复）· 下载走 Pages；历史版本见 Releases**
> 下载：https://szwnba.github.io/DoitClone/download/doit-local.apk

doit.im Android 客户端（v4.4.5，2015）的**原版本地化版**：反编译产物重打包 + 十处最小侵入补丁——
原汁原味的界面与功能，免登录、纯本地运行、已解锁 Pro。

## 特性

- 与原版 100% 一致的 UI 与交互（同一份代码）
- 免登录：启动直达主界面，无账号、无网络依赖
- 纯本地：数据仅存本机 SQLite（原版自带离线队列 OpLog，天然支持）
- Pro 解锁：重复任务提醒、每日计划/回顾提醒等付费功能全部可用
- 长屏适配：解除 16:9 信箱限制，导航栏染色无黑边
- GitHub 云备份（r6 起）：设置页一键把整库备份到私有 GitHub 仓库，支持恢复与历史回滚，Token 仅存本机

> 📌 **开发前必读**：[`playbook.md`](playbook.md) 记录了逆向、本地化、新功能开发全过程踩过的坑（smali 工具链、资源 ID、监听器覆盖、原版 UI 模式等 27 条），动手前先通读。

## 仓库结构

```
original-src/   基准源码（apktool 反编译树 + 全部补丁 + 构建文档 + 签名密钥）
docs/           GitHub Pages 产品页与 APK 下载
docs/REVERSE-ENGINEERING.md   原版逆向分析报告
```

## 重新构建

```bash
apktool b original-src -o doit-local-unsigned.apk
zipalign -f 4 doit-local-unsigned.apk aligned.apk
apksigner sign --ks original-src/doit-reverse.keystore \
  --ks-pass pass:doit123456 --ks-key-alias doit \
  --out doit-local.apk aligned.apk
```

补丁清单、升级注意事项、签名风险说明见 `original-src/README.md`。

## 历史

- 2026-08 完成原版 APK 逆向分析（20 箱子语义/数据模型/SmartAdd 标记语法全套还原，见分析报告）
- 期间产出过一版 Kotlin 现代复刻，后按需求移除，收敛为原版补丁路线
- 当前唯一分发物：`docs/download/doit-local.apk`

## 法律

原版代码与素材版权归 doit.im（上海煎饼客网络科技）所有。
本项目为个人学习研究目的的逆向复刻，非官方产品；请勿商用或二次分发。
