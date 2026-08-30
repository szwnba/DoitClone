---
name: icon-design
description: 为 Doit 本地版设计/绘制与原版精致线稿风格一致的图标（灰度抽屉版、白色蓝底按钮版），先像素实测原版规格再绘制，生成局域网预览页供用户挑选。当需要新增/替换 App 内任何图标、用户说"画个图标/换个图标/出几版看看/风格不像"时使用。
---

# Doit 本地版图标设计（v2 精致版规范）

为 2015 年 Holo 线稿风格的 doit.im 复刻 App 绘制图标。核心方法：
**① 先像素实测原版规格 → ② 按实测参数 PIL 4 倍超采样绘制 → ③ 预览页给用户挑 → ④ 接入发版**。

## 第一步：像素实测原版规格（必做，别凭感觉）

对目标场景的原版图标（如抽屉项 icon_actionbar_goal）做像素分析：

```python
from PIL import Image
im = Image.open(src + '.png').convert('RGBA'); px = im.load()
W,H = im.size
minx,miny,maxx,maxy,alpha_sum,n = W,H,0,0,0,0
runs, cur = [], 0
midy = H//2
for y in range(H):
    for x in range(W):
        r,g,b,a = px[x,y]
        if a > 20:
            alpha_sum += a; n += 1
            minx,miny,maxx,maxy = min(minx,x),min(miny,y),max(maxx,x),max(maxy,y)
for x in range(W):  # 中线扫描估描边宽
    a = px[x,midy][3]
    if a > 20: cur += 1
    elif cur: runs.append(cur); cur = 0
print('内容占画布: %.0f%% x %.0f%%' % ((maxx-minx+1)/W*100,(maxy-miny+1)/H*100))
print('颜色/透明度: 均α =', alpha_sum//max(n,1), ' 描边条宽:', runs)
```

**原版抽屉图标实测结论（v2 规范的依据）**：

| 参数 | 原版实测值 |
|---|---|
| 颜色 | **黑 #000000 @ α≈104-119**（≈43% 透明黑，不是实心灰！显浅的原因） |
| 内容占画布 | **58~71%**（四周大量留白，显精致） |
| 描边 | 3~5px / 72px 画布（4~7%） |
| 白色变体（蓝底） | 白 @ α≈204（icon_actionbar_add 实测） |

## 第二步：按实测参数绘制

```python
from PIL import Image, ImageDraw

S = 4                       # 4 倍超采样
LW = 5*S                    # 描边 5px/96px 画布（5.2%）
INK = (0,0,0,110)           # 43% 透明黑（抽屉灰）
INK_W = (255,255,255,204)   # 蓝底白（α204）
BOX = (16*S,16*S,80*S,80*S) # 内容占画布 66%

def canvas():
    im = Image.new('RGBA', (96*S, 96*S), (0,0,0,0))
    return im, ImageDraw.Draw(im)

def finish(im, name):
    im.resize((96,96), Image.LANCZOS).save(name)

# 例：骰子（圆角方框 + 五点骰面）
im, d = canvas()
d.rounded_rectangle(BOX, radius=13*S, outline=INK, width=LW)
dot = 4.5*S
for cx,cy in [(33,33),(63,33),(48,48),(33,63),(63,63)]:
    cx,cy = cx*S, cy*S
    d.ellipse((cx-dot,cy-dot,cx+dot,cy+dot), fill=INK)
finish(im, 'my_icon.png')
```

常用形状：`rounded_rectangle`(容器)、`ellipse`(骰点/圆环)、`polygon`+`line`(书签缎带/箭头)、
`rotate(-12, BICUBIC)`(倾斜动感)。每个图标出 2~3 个变体（正置/六点/倾斜、直角/圆角）。

重着色复用原版素材：逐像素换 INK 色即可（形状零改动）；白色原版素材
（icon_actionbar_archive 等）直接用于蓝底按钮。

## 第三步：预览页给用户挑（必做）

生成对比页：新图标大图 + 26dp 抽屉行实景模拟（混入原版菜单行对照）+ 蓝底按钮模拟 +
**修正前后参数对照表**。起局域网服务（必须 `setsid ... < /dev/null & disown`，否则会话结束进程即死），
给用户链接挑选。

## 第四步：接入 App

- 图标放 `original-src/res/drawable-xhdpi-v4/icon_<语义>.png`（72px 或等比）
- 抽屉行 26dp ImageView；蓝底按钮用 ImageView+TextView 横排可点容器
- 先例：`tools-src/BlindBoxActivity.java`、`res/layout/drawer_footer_exp.xml`、
  本目录 `samples/` 里有成品（骰子/书签）
- 之后走标准发版流程（versionCode+1 → 构建签名 → cp 到 docs/download → 推送）

## 样本

`samples/r2_dice_gray.png`（抽屉）、`samples/r2_bookmark_gray.png`（抽屉）、
`samples/r2_dice_white.png`（蓝底按钮）——v2 精致版成品。
