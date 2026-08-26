.class public Lim/doit/pro/activity/utils/ViewUtils;
.super Ljava/lang/Object;
.source "ViewUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dip2px(F)I
    .locals 3
    .param p0, "dpValue"    # F

    .prologue
    .line 284
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->context()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 285
    .local v0, "scale":F
    mul-float v1, p0, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method public static varargs format(I[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p0, "resId"    # I
    .param p1, "arg"    # [Ljava/lang/Object;

    .prologue
    .line 41
    invoke-static {p0}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lim/doit/pro/activity/utils/ViewUtils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static varargs format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "arg"    # [Ljava/lang/Object;

    .prologue
    .line 34
    new-instance v0, Ljava/util/Formatter;

    invoke-direct {v0}, Ljava/util/Formatter;-><init>()V

    .line 35
    .local v0, "formatter":Ljava/util/Formatter;
    invoke-virtual {v0, p0, p1}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v1

    .line 36
    .local v1, "result":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/util/Formatter;->close()V

    .line 37
    return-object v1
.end method

.method public static formatTime(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 10
    .param p0, "time"    # Ljava/util/Calendar;

    .prologue
    const/4 v9, 0x0

    const/4 v7, 0x1

    .line 111
    const-string v1, ""

    .line 112
    .local v1, "dateFormat":Ljava/lang/String;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    .line 113
    .local v5, "now":Ljava/util/Calendar;
    invoke-static {p0}, Lim/doit/pro/utils/DateUtils;->copyDate(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v0

    .line 114
    .local v0, "date":Ljava/util/Calendar;
    invoke-static {v5, v0}, Lim/doit/pro/utils/DateUtils;->diffDay(Ljava/util/Calendar;Ljava/util/Calendar;)I

    move-result v2

    .line 115
    .local v2, "diffDay":I
    if-le v2, v7, :cond_1

    .line 116
    invoke-static {v0}, Lim/doit/pro/utils/DateUtils;->formatDateHourMinute(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v1

    .line 134
    :cond_0
    :goto_0
    return-object v1

    .line 117
    :cond_1
    if-gt v2, v7, :cond_0

    .line 118
    invoke-static {v5, v0}, Lim/doit/pro/utils/DateUtils;->diffHour(Ljava/util/Calendar;Ljava/util/Calendar;)I

    move-result v3

    .line 119
    .local v3, "diffHour":I
    if-lez v3, :cond_3

    .line 121
    if-le v3, v7, :cond_2

    const v6, 0x7f0c01a4

    :goto_1
    invoke-static {v6}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v6

    new-array v7, v7, [Ljava/lang/Object;

    .line 122
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    .line 120
    invoke-static {v6, v7}, Lim/doit/pro/activity/utils/ViewUtils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 123
    goto :goto_0

    .line 122
    :cond_2
    const v6, 0x7f0c01a5

    goto :goto_1

    .line 124
    :cond_3
    invoke-static {v5, v0}, Lim/doit/pro/utils/DateUtils;->diffMinute(Ljava/util/Calendar;Ljava/util/Calendar;)I

    move-result v4

    .line 125
    .local v4, "diffMin":I
    if-lt v4, v7, :cond_5

    .line 127
    if-le v4, v7, :cond_4

    const v6, 0x7f0c01a6

    :goto_2
    invoke-static {v6}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v6

    new-array v7, v7, [Ljava/lang/Object;

    .line 128
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    .line 126
    invoke-static {v6, v7}, Lim/doit/pro/activity/utils/ViewUtils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 129
    goto :goto_0

    .line 128
    :cond_4
    const v6, 0x7f0c01a7

    goto :goto_2

    .line 130
    :cond_5
    const v6, 0x7f0c01a8

    invoke-static {v6}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getBitmapFromView(Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 5
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 289
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 290
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 289
    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 291
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 292
    .local v1, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {p0, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 293
    return-object v0
.end method

.method public static getColor(I)I
    .locals 1
    .param p0, "id"    # I

    .prologue
    .line 49
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->context()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0
.end method

.method public static getColors(I)Landroid/content/res/ColorStateList;
    .locals 4
    .param p0, "id"    # I

    .prologue
    .line 54
    :try_start_0
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->context()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 55
    invoke-virtual {v3, p0}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v2

    .line 57
    .local v2, "parser":Landroid/content/res/XmlResourceParser;
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->context()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 56
    invoke-static {v3, v2}, Landroid/content/res/ColorStateList;->createFromXml(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/res/ColorStateList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 62
    .end local v2    # "parser":Landroid/content/res/XmlResourceParser;
    :goto_0
    return-object v0

    .line 59
    :catch_0
    move-exception v1

    .line 60
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 62
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getDimens(I)F
    .locals 1
    .param p0, "id"    # I

    .prologue
    .line 85
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->context()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    return v0
.end method

.method public static getDimensionPixelSize(I)I
    .locals 1
    .param p0, "id"    # I

    .prologue
    .line 89
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->context()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method public static getDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "id"    # I

    .prologue
    .line 66
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->context()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static getId(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .param p0, "variableName"    # Ljava/lang/String;
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 70
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->context()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 71
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->context()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 70
    invoke-virtual {v1, p0, p1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 72
    .local v0, "resourceId":I
    if-nez v0, :cond_0

    .line 73
    const/4 v0, -0x1

    .line 75
    .end local v0    # "resourceId":I
    :cond_0
    return v0
.end method

.method public static getInteger(I)I
    .locals 1
    .param p0, "id"    # I

    .prologue
    .line 81
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->context()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public static getRoundedCornerBitmap(Landroid/graphics/Bitmap;FIIZZZZ)Landroid/graphics/Bitmap;
    .locals 12
    .param p0, "input"    # Landroid/graphics/Bitmap;
    .param p1, "pixels"    # F
    .param p2, "w"    # I
    .param p3, "h"    # I
    .param p4, "squareTL"    # Z
    .param p5, "squareTR"    # Z
    .param p6, "squareBL"    # Z
    .param p7, "squareBR"    # Z

    .prologue
    .line 204
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p3, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 205
    .local v8, "output":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 206
    .local v0, "canvas":Landroid/graphics/Canvas;
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->context()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 207
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v7, v1, Landroid/util/DisplayMetrics;->density:F

    .line 209
    .local v7, "densityMultiplier":F
    const v1, 0x106000b

    invoke-static {v1}, Lim/doit/pro/activity/utils/ViewUtils;->getColor(I)I

    move-result v6

    .line 210
    .local v6, "color":I
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 211
    .local v5, "paint":Landroid/graphics/Paint;
    new-instance v9, Landroid/graphics/Rect;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v9, v1, v2, p2, p3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 212
    .local v9, "rect":Landroid/graphics/Rect;
    new-instance v10, Landroid/graphics/RectF;

    invoke-direct {v10, v9}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 215
    .local v10, "rectF":Landroid/graphics/RectF;
    mul-float v11, p1, v7

    .line 217
    .local v11, "roundPx":F
    const/4 v1, 0x1

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 218
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 219
    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 220
    invoke-virtual {v0, v10, v11, v11, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 223
    if-eqz p4, :cond_0

    .line 224
    const/4 v1, 0x0

    const/4 v2, 0x0

    div-int/lit8 v3, p2, 0x2

    int-to-float v3, v3

    div-int/lit8 v4, p3, 0x2

    int-to-float v4, v4

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 226
    :cond_0
    if-eqz p5, :cond_1

    .line 227
    div-int/lit8 v1, p2, 0x2

    int-to-float v1, v1

    const/4 v2, 0x0

    int-to-float v3, p2

    div-int/lit8 v4, p3, 0x2

    int-to-float v4, v4

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 229
    :cond_1
    if-eqz p6, :cond_2

    .line 230
    const/4 v1, 0x0

    div-int/lit8 v2, p3, 0x2

    int-to-float v2, v2

    div-int/lit8 v3, p2, 0x2

    int-to-float v3, v3

    int-to-float v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 232
    :cond_2
    if-eqz p7, :cond_3

    .line 233
    div-int/lit8 v1, p2, 0x2

    int-to-float v1, v1

    div-int/lit8 v2, p3, 0x2

    int-to-float v2, v2

    int-to-float v3, p2

    int-to-float v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 236
    :cond_3
    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 237
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 239
    return-object v8
.end method

.method public static getText(I)Ljava/lang/String;
    .locals 1
    .param p0, "id"    # I

    .prologue
    .line 45
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->context()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static hideSoftKeyboard(Landroid/widget/EditText;)V
    .locals 3
    .param p0, "editText"    # Landroid/widget/EditText;

    .prologue
    .line 253
    if-nez p0, :cond_0

    .line 260
    :goto_0
    return-void

    .line 256
    :cond_0
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->context()Landroid/content/Context;

    move-result-object v1

    .line 257
    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 256
    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 258
    .local v0, "mInputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p0}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    .line 259
    const/4 v2, 0x0

    .line 258
    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0
.end method

.method public static initDefaultStartAt(ZLjava/util/Calendar;)Ljava/util/Calendar;
    .locals 1
    .param p0, "isAllday"    # Z
    .param p1, "defaultDate"    # Ljava/util/Calendar;

    .prologue
    const/4 v0, 0x1

    .line 275
    if-eqz p0, :cond_0

    .line 276
    invoke-static {p1}, Lim/doit/pro/utils/DateUtils;->startOfDate(Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 280
    :goto_0
    return-object p1

    .line 278
    :cond_0
    invoke-static {p1, v0, v0}, Lim/doit/pro/utils/DateUtils;->addCurrentDateHour(Ljava/util/Calendar;IZ)V

    goto :goto_0
.end method

.method public static setChildBackground(Landroid/view/ViewGroup;)V
    .locals 6
    .param p0, "wrapView"    # Landroid/view/ViewGroup;

    .prologue
    .line 178
    const/4 v3, 0x0

    .line 179
    .local v3, "visable":Z
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 180
    .local v1, "childCount":I
    const/4 v4, -0x1

    .line 181
    .local v4, "visibleIndex":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, v1, :cond_1

    .line 189
    if-eqz v3, :cond_3

    .line 190
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 191
    const/4 v5, -0x1

    if-le v4, v5, :cond_0

    .line 192
    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 193
    .local v0, "child":Landroid/view/View;
    const v5, 0x106000d

    invoke-virtual {v0, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 198
    .end local v0    # "child":Landroid/view/View;
    :cond_0
    :goto_1
    return-void

    .line 182
    :cond_1
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 183
    .restart local v0    # "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_2

    .line 184
    const/4 v3, 0x1

    .line 185
    const v5, 0x7f020178

    invoke-virtual {v0, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 186
    move v4, v2

    .line 181
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 196
    .end local v0    # "child":Landroid/view/View;
    :cond_3
    const/16 v5, 0x8

    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1
.end method

.method public static setCompleteViewContent(Lim/doit/pro/model/BaseEntityWithPos;Landroid/widget/ImageView;)V
    .locals 2
    .param p0, "entity"    # Lim/doit/pro/model/BaseEntityWithPos;
    .param p1, "completeBtn"    # Landroid/widget/ImageView;

    .prologue
    .line 139
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 140
    invoke-virtual {p0}, Lim/doit/pro/model/BaseEntityWithPos;->isArchived()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lim/doit/pro/model/BaseEntityWithPos;->isCompleted()Z

    move-result v1

    if-nez v1, :cond_1

    .line 141
    invoke-virtual {p0}, Lim/doit/pro/model/BaseEntityWithPos;->isTrashed()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lim/doit/pro/model/BaseEntityWithPos;->getCompleted()Ljava/util/Calendar;

    move-result-object v1

    if-nez v1, :cond_1

    .line 140
    :cond_0
    const/4 v0, 0x0

    .line 142
    .local v0, "isSelected":Z
    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 143
    invoke-virtual {p0}, Lim/doit/pro/model/BaseEntityWithPos;->isEditable()Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 144
    return-void

    .line 140
    .end local v0    # "isSelected":Z
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static setDetailChildBackground(Landroid/view/ViewGroup;)V
    .locals 6
    .param p0, "wrapView"    # Landroid/view/ViewGroup;

    .prologue
    .line 147
    const/4 v3, 0x0

    .line 148
    .local v3, "visable":Z
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 149
    .local v1, "childCount":I
    const/4 v4, -0x1

    .line 150
    .local v4, "visibleIndex":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, v1, :cond_1

    .line 162
    if-eqz v3, :cond_5

    .line 163
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 164
    const/4 v5, -0x1

    if-le v4, v5, :cond_0

    .line 165
    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 166
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 167
    const v5, 0x106000d

    invoke-virtual {v0, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 175
    .end local v0    # "child":Landroid/view/View;
    :cond_0
    :goto_1
    return-void

    .line 151
    :cond_1
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 152
    .restart local v0    # "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_2

    .line 153
    const/4 v3, 0x1

    .line 154
    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 155
    const v5, 0x7f020178

    invoke-virtual {v0, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 159
    :goto_2
    move v4, v2

    .line 150
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 157
    :cond_3
    const v5, 0x7f020179

    invoke-virtual {v0, v5}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_2

    .line 169
    :cond_4
    const v5, 0x7f020058

    invoke-virtual {v0, v5}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    .line 173
    .end local v0    # "child":Landroid/view/View;
    :cond_5
    const/16 v5, 0x8

    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1
.end method

.method public static setListViewHeightBasedOnChildren(Landroid/widget/ListView;)V
    .locals 7
    .param p0, "listView"    # Landroid/widget/ListView;

    .prologue
    const/4 v6, 0x0

    .line 93
    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    .line 94
    .local v1, "listAdapter":Landroid/widget/ListAdapter;
    if-nez v1, :cond_0

    .line 108
    :goto_0
    return-void

    .line 98
    :cond_0
    const/4 v4, 0x0

    .line 99
    .local v4, "totalHeight":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v5

    if-lt v0, v5, :cond_1

    .line 105
    invoke-virtual {p0}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 106
    .local v3, "params":Landroid/view/ViewGroup$LayoutParams;
    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 107
    invoke-virtual {p0, v3}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 100
    .end local v3    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    const/4 v5, 0x0

    invoke-interface {v1, v0, v5, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 101
    .local v2, "listItem":Landroid/view/View;
    invoke-virtual {v2, v6, v6}, Landroid/view/View;->measure(II)V

    .line 102
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v4, v5

    .line 99
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static showSoftKeyboard(Landroid/widget/EditText;)V
    .locals 3
    .param p0, "editText"    # Landroid/widget/EditText;

    .prologue
    .line 243
    if-nez p0, :cond_0

    .line 250
    :goto_0
    return-void

    .line 246
    :cond_0
    invoke-virtual {p0}, Landroid/widget/EditText;->requestFocus()Z

    .line 247
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->context()Landroid/content/Context;

    move-result-object v1

    .line 248
    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 247
    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 249
    .local v0, "keyboard":Landroid/view/inputmethod/InputMethodManager;
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    goto :goto_0
.end method

.method public static showSoftKeyboardDelayed(Landroid/widget/EditText;J)V
    .locals 1
    .param p0, "editText"    # Landroid/widget/EditText;
    .param p1, "delayMillis"    # J

    .prologue
    .line 264
    new-instance v0, Lim/doit/pro/activity/utils/ViewUtils$1;

    invoke-direct {v0, p0}, Lim/doit/pro/activity/utils/ViewUtils$1;-><init>(Landroid/widget/EditText;)V

    invoke-virtual {p0, v0, p1, p2}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 271
    return-void
.end method
