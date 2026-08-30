---
name: icon-design
description: 为 Doit 本地版设计/绘制与应用风格一致的原版线稿风图标（灰度抽屉版、白色蓝底按钮版），并生成局域网预览页供用户挑选。当需要新增/替换 App 内任何图标、用户说"画个图标/换个图标/出几版看看"时使用。
---

# Doit 本地版图标设计

为 2015 年 Holo 线稿风格的 doit.im 复刻 App 绘制原创图标。核心方法：**PIL 4 倍超采样绘制 → 缩小抗锯齿**，不用外部设计工具。

## 风格规范（必须遵守）

| 参数 | 值 |
|---|---|
| 画布 | 96×96（实际绘制 384×384，4 倍超采样后 LANCZOS 缩小） |
| 描边宽度 | 画布短边的 7%（线稿风格，不用填充面） |
| 圆角半径 | 方形轮廓用短边的 20% |
| 抽屉用色 | 灰 `#9B9B9B`（对齐原版抽屉线稿） |
| 蓝底按钮用色 | 纯白 `#FFFFFF`（原版有为蓝底设计的白色图标先例） |
| 语义色 | 高优先级橙 `#C05318`、品牌蓝 `#1262A1` 可用于点睛 |

## 绘制管线（标准脚本）

```python
from PIL import Image, ImageDraw

def canvas():
    im = Image.new('RGBA', (96*4, 96*4), (0,0,0,0))   # 4x 超采样
    return im, ImageDraw.Draw(im)

def finish(im, name):
    im.resize((96,96), Image.LANCZOS).save(name)

GRAY=(155,155,155,255); WHITE=(255,255,255,255); LW=int(96*4*0.07)

# 例：骰子（圆角方框 + 五点骰面）
im, d = canvas()
d.rounded_rectangle((LW,LW,96*4-LW,96*4-LW), radius=20*4, outline=GRAY, width=LW)
dot = 7*4
for cx,cy in [(34,34),(62,34),(48,48),(34,62),(62,62)]:
    cx,cy = cx*4, cy*4
    d.ellipse((cx-dot,cy-dot,cx+dot,cy+dot), fill=GRAY)
finish(im, 'my_icon.png')
```

常用形状：`rounded_rectangle`(容器/骰子)、`ellipse`(骰点/圆环)、`polygon`(书签缎带/箭头)、
`line`(星芒/斜杠)、`rotate(-12, BICUBIC)`(倾斜动感)。每个图标出 2~3 个变体供挑选。

## 重着色（复用原版素材时）

原版素材库在 `original-src/res/drawable-xhdpi-v4/`。把现有 PNG 逐像素换色即得灰度/白色版，
形状零改动：

```python
im = Image.open(src).convert('RGBA'); px = im.load()
for y in range(im.height):
    for x in range(im.width):
        r,g,b,a = px[x,y]
        if a > 0: px[x,y] = (155,155,155,a)   # 目标色
```

白色素材（如 icon_actionbar_archive）本身就是给蓝底按钮用的，直接取用。

## 预览与挑选（必做环节）

设计 ≥2 个变体后，生成对比预览页（每个图标给：实际使用尺寸行模拟、2×/3× 放大、
与原版图标的并列对比），起局域网服务给用户挑：

```bash
cd <预览目录>
setsid nohup python3 -m http.server 890N --bind 0.0.0.0 > log 2>&1 < /dev/null & disown
# 注意：必须 setsid+disown，否则工具会话结束进程即死
```

用户选定编号后再接入 App。

## 接入 App

- 抽屉/列表行图标：26dp（drawable-xhdpi 72×72 或按需缩放的 PNG），放
  `original-src/res/drawable-xhdpi-v4/icon_<语义>.png`，布局 `ImageView src` 引用
- 蓝底按钮：白色变体，`ImageView` + `TextView` 横排放进可点容器（Button 放不了图标）
- 已有接入先例：`tools-src/BlindBoxActivity.java`、`res/layout/drawer_footer_exp.xml`
- 之后走标准发版流程（versionCode+1 → 构建 → 签名 → cp 到 docs/download → 推送）
