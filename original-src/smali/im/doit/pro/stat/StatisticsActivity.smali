.class public Lim/doit/pro/stat/StatisticsActivity;
.super Lim/doit/pro/activity/DSwipeBackBaseActivity;
.source "StatisticsActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lim/doit/pro/stat/StatisticsActivity$T;
    }
.end annotation


# static fields
.field private static final BLUE:I = -0xed9d5f

.field private static final BLUE_DIM:I = -0x613c20

.field private static final HEAT:[I

.field private static final ORANGE:I = -0x3face8

.field private static final TEXT_GRAY:I = -0x757576

.field private static final TEXT_MAIN:I = -0xcccccd


# instance fields
.field private final main:Landroid/os/Handler;

.field private mode:Ljava/lang/String;

.field private root:Landroid/widget/LinearLayout;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 43
    const v0, -0xc07f47

    const v1, -0xf2aa6f

    const v2, -0x1f1f20

    const v3, -0x36200f

    const v4, -0x6c4021

    filled-new-array {v2, v3, v4, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lim/doit/pro/stat/StatisticsActivity;->HEAT:[I

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 36
    invoke-direct {p0}, Lim/doit/pro/activity/DSwipeBackBaseActivity;-><init>()V

    .line 46
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lim/doit/pro/stat/StatisticsActivity;->main:Landroid/os/Handler;

    .line 47
    const-string v0, "day"

    iput-object v0, p0, Lim/doit/pro/stat/StatisticsActivity;->mode:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lim/doit/pro/stat/StatisticsActivity;)Ljava/lang/String;
    .registers 1

    .line 36
    iget-object p0, p0, Lim/doit/pro/stat/StatisticsActivity;->mode:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$002(Lim/doit/pro/stat/StatisticsActivity;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 36
    iput-object p1, p0, Lim/doit/pro/stat/StatisticsActivity;->mode:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lim/doit/pro/stat/StatisticsActivity;)V
    .registers 1

    .line 36
    invoke-direct {p0}, Lim/doit/pro/stat/StatisticsActivity;->reload()V

    return-void
.end method

.method static synthetic access$200(Lim/doit/pro/stat/StatisticsActivity;Ljava/lang/String;)[Ljava/lang/Object;
    .registers 2

    .line 36
    invoke-direct {p0, p1}, Lim/doit/pro/stat/StatisticsActivity;->query(Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lim/doit/pro/stat/StatisticsActivity;Ljava/lang/String;)Landroid/view/View;
    .registers 2

    .line 36
    invoke-direct {p0, p1}, Lim/doit/pro/stat/StatisticsActivity;->note(Ljava/lang/String;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lim/doit/pro/stat/StatisticsActivity;)Landroid/widget/LinearLayout;
    .registers 1

    .line 36
    iget-object p0, p0, Lim/doit/pro/stat/StatisticsActivity;->root:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$500(Lim/doit/pro/stat/StatisticsActivity;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 3

    .line 36
    invoke-direct {p0, p1, p2}, Lim/doit/pro/stat/StatisticsActivity;->render(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$600(Lim/doit/pro/stat/StatisticsActivity;)Landroid/os/Handler;
    .registers 1

    .line 36
    iget-object p0, p0, Lim/doit/pro/stat/StatisticsActivity;->main:Landroid/os/Handler;

    return-object p0
.end method

.method private blank(I)Landroid/view/View;
    .registers 6

    .line 402
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 403
    new-instance v1, Landroid/widget/GridLayout$LayoutParams;

    invoke-direct {v1}, Landroid/widget/GridLayout$LayoutParams;-><init>()V

    .line 404
    iput p1, v1, Landroid/widget/GridLayout$LayoutParams;->width:I

    const/4 p1, 0x1

    iput p1, v1, Landroid/widget/GridLayout$LayoutParams;->height:I

    .line 405
    const/high16 p1, 0x40400000    # 3.0f

    invoke-direct {p0, p1}, Lim/doit/pro/stat/StatisticsActivity;->dp(F)F

    move-result v2

    float-to-int v2, v2

    invoke-direct {p0, p1}, Lim/doit/pro/stat/StatisticsActivity;->dp(F)F

    move-result p1

    float-to-int p1, p1

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v3, v2, p1}, Landroid/widget/GridLayout$LayoutParams;->setMargins(IIII)V

    .line 406
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 407
    return-object v0
.end method

.method private card()Landroid/widget/LinearLayout;
    .registers 6

    .line 411
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 412
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 413
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 414
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v1, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 415
    const/high16 v1, 0x41400000    # 12.0f

    invoke-direct {p0, v1}, Lim/doit/pro/stat/StatisticsActivity;->dp(F)F

    move-result v1

    float-to-int v1, v1

    .line 416
    const/high16 v3, 0x41200000    # 10.0f

    invoke-direct {p0, v3}, Lim/doit/pro/stat/StatisticsActivity;->dp(F)F

    move-result v3

    float-to-int v3, v3

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v4, v1, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 417
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 418
    return-object v0
.end method

.method private chartCard(Ljava/lang/String;[Ljava/lang/String;[I)Landroid/view/View;
    .registers 20

    .line 321
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct/range {p0 .. p0}, Lim/doit/pro/stat/StatisticsActivity;->card()Landroid/widget/LinearLayout;

    move-result-object v2

    .line 322
    const/high16 v3, 0x41400000    # 12.0f

    invoke-direct {v0, v3}, Lim/doit/pro/stat/StatisticsActivity;->dp(F)F

    move-result v4

    float-to-int v4, v4

    invoke-direct {v0, v3}, Lim/doit/pro/stat/StatisticsActivity;->dp(F)F

    move-result v5

    float-to-int v5, v5

    const/high16 v6, 0x41000000    # 8.0f

    invoke-direct {v0, v6}, Lim/doit/pro/stat/StatisticsActivity;->dp(F)F

    move-result v7

    float-to-int v7, v7

    invoke-direct {v0, v6}, Lim/doit/pro/stat/StatisticsActivity;->dp(F)F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {v2, v4, v5, v7, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 323
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 324
    move-object/from16 v5, p1

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTextSize(F)V

    const v3, -0x757576

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 325
    const/high16 v5, 0x41200000    # 10.0f

    invoke-direct {v0, v5}, Lim/doit/pro/stat/StatisticsActivity;->dp(F)F

    move-result v5

    float-to-int v5, v5

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v6, v6, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 326
    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 328
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 329
    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 330
    nop

    .line 331
    array-length v5, v1

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    :goto_51
    if-ge v8, v5, :cond_5b

    aget v10, v1, v8

    if-le v10, v9, :cond_58

    move v9, v10

    :cond_58
    add-int/lit8 v8, v8, 0x1

    goto :goto_51

    .line 332
    :cond_5b
    const/high16 v5, 0x42dc0000    # 110.0f

    invoke-direct {v0, v5}, Lim/doit/pro/stat/StatisticsActivity;->dp(F)F

    move-result v5

    float-to-int v5, v5

    .line 333
    const/4 v8, 0x0

    :goto_63
    array-length v10, v1

    if-ge v8, v10, :cond_12e

    .line 334
    new-instance v10, Landroid/widget/LinearLayout;

    invoke-direct {v10, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 335
    invoke-virtual {v10, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 336
    invoke-virtual {v10, v7}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 337
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v12, -0x2

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-direct {v11, v6, v12, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 338
    const/high16 v12, 0x40400000    # 3.0f

    invoke-direct {v0, v12}, Lim/doit/pro/stat/StatisticsActivity;->dp(F)F

    move-result v14

    float-to-int v14, v14

    invoke-direct {v0, v12}, Lim/doit/pro/stat/StatisticsActivity;->dp(F)F

    move-result v15

    float-to-int v15, v15

    invoke-virtual {v11, v14, v6, v15, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 339
    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 341
    new-instance v11, Landroid/widget/TextView;

    invoke-direct {v11, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 342
    aget v14, v1, v8

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 343
    const/high16 v14, 0x41100000    # 9.0f

    invoke-virtual {v11, v14}, Landroid/widget/TextView;->setTextSize(F)V

    const v15, -0xed9d5f

    invoke-virtual {v11, v15}, Landroid/widget/TextView;->setTextColor(I)V

    .line 344
    const/high16 v15, 0x40000000    # 2.0f

    invoke-direct {v0, v15}, Lim/doit/pro/stat/StatisticsActivity;->dp(F)F

    move-result v15

    float-to-int v15, v15

    invoke-virtual {v11, v6, v6, v6, v15}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 346
    new-instance v15, Landroid/widget/FrameLayout;

    invoke-direct {v15, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 347
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v6, v3, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 348
    invoke-virtual {v15, v6}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 349
    new-instance v6, Landroid/view/View;

    invoke-direct {v6, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 350
    new-instance v14, Landroid/widget/FrameLayout$LayoutParams;

    aget v7, v1, v8

    int-to-float v3, v7

    mul-float v3, v3, v13

    int-to-float v13, v9

    div-float/2addr v3, v13

    int-to-float v13, v5

    mul-float v3, v3, v13

    float-to-int v3, v3

    if-lez v7, :cond_d6

    invoke-direct {v0, v12}, Lim/doit/pro/stat/StatisticsActivity;->dp(F)F

    move-result v7

    float-to-int v7, v7

    goto :goto_d7

    :cond_d6
    const/4 v7, 0x0

    :goto_d7
    invoke-static {v3, v7}, Ljava/lang/Math;->max(II)I

    move-result v3

    const/16 v7, 0x50

    const/4 v12, -0x1

    invoke-direct {v14, v12, v3, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 351
    invoke-virtual {v6, v14}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 352
    array-length v3, v1

    const/4 v7, 0x1

    sub-int/2addr v3, v7

    if-ne v8, v3, :cond_ed

    const v3, -0xed9d5f

    goto :goto_f0

    :cond_ed
    const v3, -0x613c20

    :goto_f0
    invoke-virtual {v6, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 353
    invoke-virtual {v15, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 355
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 356
    aget-object v6, p2, v8

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 357
    const/high16 v6, 0x41100000    # 9.0f

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTextSize(F)V

    const v6, -0x757576

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 358
    const/high16 v7, 0x40a00000    # 5.0f

    invoke-direct {v0, v7}, Lim/doit/pro/stat/StatisticsActivity;->dp(F)F

    move-result v7

    float-to-int v7, v7

    const/4 v12, 0x0

    invoke-virtual {v3, v12, v7, v12, v12}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 359
    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 361
    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v10, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v10, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 362
    invoke-virtual {v4, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 333
    add-int/lit8 v8, v8, 0x1

    const v3, -0x757576

    const/4 v6, 0x0

    goto/16 :goto_63

    .line 364
    :cond_12e
    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 365
    return-object v2
.end method

.method private count(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[J)I
    .registers 8

    .line 243
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SELECT COUNT(*) FROM tasks WHERE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    aget-wide v1, p3, v0

    .line 244
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aget-wide v2, p3, v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p3

    filled-new-array {v1, p3}, [Ljava/lang/String;

    move-result-object p3

    .line 243
    invoke-virtual {p1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 245
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 246
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    .line 247
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 248
    return p2
.end method

.method private static dayStart(Ljava/util/Calendar;)V
    .registers 3

    .line 252
    const/16 v0, 0xb

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xc

    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 253
    const/16 v0, 0xd

    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xe

    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 254
    return-void
.end method

.method private static daysBetween(Ljava/util/Calendar;Ljava/util/Calendar;)I
    .registers 4

    .line 258
    invoke-virtual {p0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Calendar;

    invoke-static {p0}, Lim/doit/pro/stat/StatisticsActivity;->dayStart(Ljava/util/Calendar;)V

    .line 259
    invoke-virtual {p1}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Calendar;

    invoke-static {p1}, Lim/doit/pro/stat/StatisticsActivity;->dayStart(Ljava/util/Calendar;)V

    .line 260
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p0

    sub-long/2addr v0, p0

    .line 261
    long-to-double p0, v0

    const-wide v0, 0x4194997000000000L    # 8.64E7

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr p0, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->round(D)J

    move-result-wide p0

    long-to-int p1, p0

    return p1
.end method

.method private dp(F)F
    .registers 3

    .line 54
    invoke-virtual {p0}, Lim/doit/pro/stat/StatisticsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, p1

    return v0
.end method

.method private groupHeader(Ljava/lang/String;)Landroid/view/View;
    .registers 6

    .line 422
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 423
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 424
    const/high16 p1, 0x41400000    # 12.0f

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    const p1, -0x757576

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 425
    const/high16 p1, 0x41600000    # 14.0f

    invoke-direct {p0, p1}, Lim/doit/pro/stat/StatisticsActivity;->dp(F)F

    move-result v1

    float-to-int v1, v1

    const/high16 v2, 0x41000000    # 8.0f

    invoke-direct {p0, v2}, Lim/doit/pro/stat/StatisticsActivity;->dp(F)F

    move-result v2

    float-to-int v2, v2

    invoke-direct {p0, p1}, Lim/doit/pro/stat/StatisticsActivity;->dp(F)F

    move-result p1

    float-to-int p1, p1

    const/high16 v3, 0x40a00000    # 5.0f

    invoke-direct {p0, v3}, Lim/doit/pro/stat/StatisticsActivity;->dp(F)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v0, v1, v2, p1, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 426
    return-object v0
.end method

.method private heatCard([I)Landroid/view/View;
    .registers 13

    .line 369
    invoke-direct {p0}, Lim/doit/pro/stat/StatisticsActivity;->card()Landroid/widget/LinearLayout;

    move-result-object v0

    .line 370
    const/high16 v1, 0x41400000    # 12.0f

    invoke-direct {p0, v1}, Lim/doit/pro/stat/StatisticsActivity;->dp(F)F

    move-result v2

    float-to-int v2, v2

    invoke-direct {p0, v1}, Lim/doit/pro/stat/StatisticsActivity;->dp(F)F

    move-result v3

    float-to-int v3, v3

    invoke-direct {p0, v1}, Lim/doit/pro/stat/StatisticsActivity;->dp(F)F

    move-result v4

    float-to-int v4, v4

    const/high16 v5, 0x41200000    # 10.0f

    invoke-direct {p0, v5}, Lim/doit/pro/stat/StatisticsActivity;->dp(F)F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {v0, v2, v3, v4, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 371
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 372
    const-string v3, "\u672c\u6708\u70ed\u529b \u00b7 \u6bcf\u683c\u4e00\u5929\uff0c\u989c\u8272\u8d8a\u6df1\u5b8c\u6210\u8d8a\u591a"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 373
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextSize(F)V

    const v1, -0x757576

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 374
    invoke-direct {p0, v5}, Lim/doit/pro/stat/StatisticsActivity;->dp(F)F

    move-result v1

    float-to-int v1, v1

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v3, v3, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 375
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 377
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 378
    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x5

    rem-int/2addr v1, v2

    .line 379
    array-length v4, p1

    .line 380
    new-instance v5, Landroid/widget/GridLayout;

    invoke-direct {v5, p0}, Landroid/widget/GridLayout;-><init>(Landroid/content/Context;)V

    .line 381
    invoke-virtual {v5, v2}, Landroid/widget/GridLayout;->setColumnCount(I)V

    .line 382
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x1

    const/4 v7, -0x2

    invoke-direct {v2, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v2}, Landroid/widget/GridLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 383
    const/high16 v2, 0x41600000    # 14.0f

    invoke-direct {p0, v2}, Lim/doit/pro/stat/StatisticsActivity;->dp(F)F

    move-result v2

    float-to-int v2, v2

    .line 384
    const/high16 v6, 0x40400000    # 3.0f

    invoke-direct {p0, v6}, Lim/doit/pro/stat/StatisticsActivity;->dp(F)F

    move-result v6

    float-to-int v6, v6

    .line 385
    const/4 v7, 0x0

    :goto_6c
    if-ge v7, v1, :cond_78

    invoke-direct {p0, v2}, Lim/doit/pro/stat/StatisticsActivity;->blank(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/GridLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_6c

    .line 386
    :cond_78
    const/4 v1, 0x0

    :goto_79
    if-ge v1, v4, :cond_b4

    .line 387
    new-instance v7, Landroid/view/View;

    invoke-direct {v7, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 388
    new-instance v8, Landroid/widget/GridLayout$LayoutParams;

    invoke-direct {v8}, Landroid/widget/GridLayout$LayoutParams;-><init>()V

    .line 389
    iput v2, v8, Landroid/widget/GridLayout$LayoutParams;->width:I

    iput v2, v8, Landroid/widget/GridLayout$LayoutParams;->height:I

    .line 390
    invoke-virtual {v8, v3, v3, v6, v6}, Landroid/widget/GridLayout$LayoutParams;->setMargins(IIII)V

    .line 391
    invoke-virtual {v7, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 392
    aget v8, p1, v1

    .line 393
    const/16 v9, 0xa

    if-lt v8, v9, :cond_97

    const/4 v8, 0x4

    goto :goto_a7

    :cond_97
    const/4 v9, 0x6

    const/4 v10, 0x3

    if-lt v8, v9, :cond_9d

    const/4 v8, 0x3

    goto :goto_a7

    :cond_9d
    if-lt v8, v10, :cond_a1

    const/4 v8, 0x2

    goto :goto_a7

    :cond_a1
    const/4 v9, 0x1

    if-lt v8, v9, :cond_a6

    const/4 v8, 0x1

    goto :goto_a7

    :cond_a6
    const/4 v8, 0x0

    .line 394
    :goto_a7
    sget-object v9, Lim/doit/pro/stat/StatisticsActivity;->HEAT:[I

    aget v8, v9, v8

    invoke-virtual {v7, v8}, Landroid/view/View;->setBackgroundColor(I)V

    .line 395
    invoke-virtual {v5, v7}, Landroid/widget/GridLayout;->addView(Landroid/view/View;)V

    .line 386
    add-int/lit8 v1, v1, 0x1

    goto :goto_79

    .line 397
    :cond_b4
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 398
    return-object v0
.end method

.method private id(Ljava/lang/String;)I
    .registers 5

    .line 55
    invoke-virtual {p0}, Lim/doit/pro/stat/StatisticsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "id"

    invoke-virtual {p0}, Lim/doit/pro/stat/StatisticsActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method private kpiRow(III)Landroid/view/View;
    .registers 8

    .line 309
    invoke-direct {p0}, Lim/doit/pro/stat/StatisticsActivity;->card()Landroid/widget/LinearLayout;

    move-result-object v0

    .line 310
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 311
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u5b8c\u6210 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, "   \u00b7   \u65b0\u589e "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "   \u00b7   \u5b8c\u6210\u7387 "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "%"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 312
    const/high16 p1, 0x41800000    # 16.0f

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 313
    const p1, -0xcccccd

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 314
    const/16 p1, 0x11

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setGravity(I)V

    .line 315
    const/high16 p1, 0x41200000    # 10.0f

    invoke-direct {p0, p1}, Lim/doit/pro/stat/StatisticsActivity;->dp(F)F

    move-result p2

    float-to-int p2, p2

    invoke-direct {p0, p1}, Lim/doit/pro/stat/StatisticsActivity;->dp(F)F

    move-result p1

    float-to-int p1, p1

    const/4 p3, 0x0

    invoke-virtual {v1, p3, p2, p3, p1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 316
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 317
    return-object v0
.end method

.method private loadAsync()V
    .registers 4

    .line 121
    nop

    .line 122
    iget-object v0, p0, Lim/doit/pro/stat/StatisticsActivity;->mode:Ljava/lang/String;

    .line 123
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lim/doit/pro/stat/StatisticsActivity$2;

    invoke-direct {v2, p0, v0, p0}, Lim/doit/pro/stat/StatisticsActivity$2;-><init>(Lim/doit/pro/stat/StatisticsActivity;Ljava/lang/String;Lim/doit/pro/stat/StatisticsActivity;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 136
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 137
    return-void
.end method

.method private note(Ljava/lang/String;)Landroid/view/View;
    .registers 5

    .line 457
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 458
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 459
    const/high16 p1, 0x41500000    # 13.0f

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    const p1, -0x757576

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 460
    const/16 p1, 0x11

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setGravity(I)V

    .line 461
    const/high16 p1, 0x41f00000    # 30.0f

    invoke-direct {p0, p1}, Lim/doit/pro/stat/StatisticsActivity;->dp(F)F

    move-result v1

    float-to-int v1, v1

    invoke-direct {p0, p1}, Lim/doit/pro/stat/StatisticsActivity;->dp(F)F

    move-result p1

    float-to-int p1, p1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1, v2, p1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 462
    return-object v0
.end method

.method public static open(Landroid/app/Activity;)V
    .registers 3

    .line 76
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 77
    const-string v1, "im.doit.pro.stat.StatisticsActivity"

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 78
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 79
    return-void
.end method

.method private query(Ljava/lang/String;)[Ljava/lang/Object;
    .registers 25

    .line 141
    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, "day"

    const-string v3, "doitim.db"

    invoke-virtual {v1, v3}, Lim/doit/pro/stat/StatisticsActivity;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 142
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    const/4 v5, 0x4

    const/4 v6, 0x7

    const/4 v7, 0x3

    const/4 v8, 0x6

    const/4 v9, 0x5

    const/4 v10, 0x2

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-nez v4, :cond_37

    new-array v0, v8, [Ljava/lang/Object;

    new-array v2, v6, [I

    aput-object v2, v0, v11

    new-array v2, v6, [I

    aput-object v2, v0, v12

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v10

    new-array v2, v11, [Ljava/lang/String;

    aput-object v2, v0, v7

    new-array v2, v11, [[Ljava/lang/Object;

    aput-object v2, v0, v5

    new-array v2, v11, [I

    aput-object v2, v0, v9

    return-object v0

    .line 143
    :cond_37
    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4, v12}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 145
    :try_start_40
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    .line 146
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 147
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 150
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15
    :try_end_52
    .catchall {:try_start_40 .. :try_end_52} :catchall_31a

    const-string v16, "\u6628\u5929"

    const-string v17, "\u4eca\u5929"

    const-string v5, "M/d"

    if-eqz v15, :cond_a5

    .line 151
    :try_start_5a
    new-instance v6, Ljava/text/SimpleDateFormat;

    sget-object v15, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-direct {v6, v5, v15}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 152
    const/4 v5, 0x6

    :goto_62
    if-ltz v5, :cond_163

    .line 153
    invoke-virtual {v4}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/Calendar;

    neg-int v9, v5

    invoke-virtual {v15, v8, v9}, Ljava/util/Calendar;->add(II)V

    .line 154
    invoke-static {v15}, Lim/doit/pro/stat/StatisticsActivity;->dayStart(Ljava/util/Calendar;)V

    .line 155
    invoke-virtual {v15}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Calendar;

    invoke-virtual {v9, v8, v12}, Ljava/util/Calendar;->add(II)V

    .line 156
    new-array v8, v10, [J

    invoke-virtual {v15}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v18

    aput-wide v18, v8, v11

    invoke-virtual {v9}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v18

    aput-wide v18, v8, v12

    invoke-interface {v13, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    if-nez v5, :cond_90

    move-object/from16 v8, v17

    goto :goto_9d

    :cond_90
    if-ne v5, v12, :cond_95

    move-object/from16 v8, v16

    goto :goto_9d

    :cond_95
    invoke-virtual {v15}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    :goto_9d
    invoke-interface {v14, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    add-int/lit8 v5, v5, -0x1

    const/4 v8, 0x6

    const/4 v9, 0x5

    goto :goto_62

    .line 159
    :cond_a5
    const-string v8, "week"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_112

    .line 160
    new-instance v8, Ljava/text/SimpleDateFormat;

    sget-object v9, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-direct {v8, v5, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 161
    const/4 v5, 0x5

    :goto_b5
    if-ltz v5, :cond_163

    .line 162
    invoke-virtual {v4}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Calendar;

    .line 163
    neg-int v15, v5

    invoke-virtual {v9, v7, v15}, Ljava/util/Calendar;->add(II)V

    .line 164
    :goto_c1
    invoke-virtual {v9, v6}, Ljava/util/Calendar;->get(I)I

    move-result v15

    if-eq v15, v10, :cond_ce

    const/4 v15, -0x1

    const/4 v6, 0x6

    invoke-virtual {v9, v6, v15}, Ljava/util/Calendar;->add(II)V

    const/4 v6, 0x7

    goto :goto_c1

    .line 165
    :cond_ce
    invoke-static {v9}, Lim/doit/pro/stat/StatisticsActivity;->dayStart(Ljava/util/Calendar;)V

    .line 166
    invoke-virtual {v9}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Calendar;

    invoke-virtual {v6, v7, v12}, Ljava/util/Calendar;->add(II)V

    .line 167
    new-array v15, v10, [J

    invoke-virtual {v9}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v19

    aput-wide v19, v15, v11

    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v19

    aput-wide v19, v15, v12

    invoke-interface {v13, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 168
    if-nez v5, :cond_f0

    const-string v6, "\u672c\u5468"

    goto :goto_10b

    :cond_f0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, "\u5468"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_10b
    invoke-interface {v14, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    add-int/lit8 v5, v5, -0x1

    const/4 v6, 0x7

    goto :goto_b5

    .line 171
    :cond_112
    const/4 v5, 0x5

    :goto_113
    if-ltz v5, :cond_163

    .line 172
    invoke-virtual {v4}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Calendar;

    .line 173
    neg-int v8, v5

    invoke-virtual {v6, v10, v8}, Ljava/util/Calendar;->add(II)V

    .line 174
    const/4 v8, 0x5

    invoke-virtual {v6, v8, v12}, Ljava/util/Calendar;->set(II)V

    invoke-static {v6}, Lim/doit/pro/stat/StatisticsActivity;->dayStart(Ljava/util/Calendar;)V

    .line 175
    invoke-virtual {v6}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Calendar;

    invoke-virtual {v8, v10, v12}, Ljava/util/Calendar;->add(II)V

    .line 176
    new-array v9, v10, [J

    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v18

    aput-wide v18, v9, v11

    invoke-virtual {v8}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v18

    aput-wide v18, v9, v12

    invoke-interface {v13, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 177
    if-nez v5, :cond_145

    const-string v6, "\u672c\u6708"

    goto :goto_15d

    :cond_145
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v10}, Ljava/util/Calendar;->get(I)I

    move-result v6

    add-int/2addr v6, v12

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "\u6708"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_15d
    invoke-interface {v14, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 171
    add-int/lit8 v5, v5, -0x1

    goto :goto_113

    .line 181
    :cond_163
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v5

    .line 182
    new-array v6, v5, [I

    .line 183
    new-array v8, v5, [I

    .line 184
    const/4 v9, 0x0

    :goto_16c
    if-ge v9, v5, :cond_190

    .line 185
    const-string v15, "completed>0 AND trashed=0 AND deleted=0 AND completed>=? AND completed<?"

    invoke-interface {v13, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v7, v18

    check-cast v7, [J

    invoke-direct {v1, v3, v15, v7}, Lim/doit/pro/stat/StatisticsActivity;->count(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[J)I

    move-result v7

    aput v7, v6, v9

    .line 186
    const-string v7, "trashed=0 AND deleted=0 AND created>=? AND created<?"

    invoke-interface {v13, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, [J

    invoke-direct {v1, v3, v7, v15}, Lim/doit/pro/stat/StatisticsActivity;->count(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[J)I

    move-result v7

    aput v7, v8, v9

    .line 184
    add-int/lit8 v9, v9, 0x1

    const/4 v7, 0x3

    goto :goto_16c

    .line 189
    :cond_190
    add-int/lit8 v7, v5, -0x1

    aget v9, v8, v7

    if-lez v9, :cond_1a4

    aget v7, v6, v7

    int-to-float v7, v7

    const/high16 v15, 0x42c80000    # 100.0f

    mul-float v7, v7, v15

    int-to-float v9, v9

    div-float/2addr v7, v9

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    goto :goto_1a5

    :cond_1a4
    const/4 v7, 0x0

    .line 192
    :goto_1a5
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 193
    new-instance v15, Ljava/text/SimpleDateFormat;

    const-string v12, "M\u6708d\u65e5 EEEE"

    sget-object v11, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-direct {v15, v12, v11}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 194
    new-instance v11, Ljava/text/SimpleDateFormat;

    const-string v12, "M\u6708d\u65e5"

    sget-object v10, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-direct {v11, v12, v10}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 195
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 196
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 197
    const/4 v1, 0x2

    if-lt v5, v1, :cond_1d4

    sub-int/2addr v5, v1

    invoke-interface {v13, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [J

    const/4 v5, 0x0

    aget-wide v21, v1, v5

    goto :goto_1dd

    :cond_1d4
    const/4 v5, 0x0

    invoke-interface {v13, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [J

    aget-wide v21, v1, v5

    .line 198
    :goto_1dd
    const-string v1, "SELECT title, completed FROM tasks WHERE completed>0 AND trashed=0 AND deleted=0 AND completed>=? ORDER BY completed DESC"

    const/4 v5, 0x1

    new-array v13, v5, [Ljava/lang/String;

    invoke-static/range {v21 .. v22}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    const/16 v20, 0x0

    aput-object v5, v13, v20

    invoke-virtual {v3, v1, v13}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 199
    :goto_1ee
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_26b

    .line 200
    new-instance v5, Lim/doit/pro/stat/StatisticsActivity$T;

    invoke-direct {v5}, Lim/doit/pro/stat/StatisticsActivity$T;-><init>()V

    .line 201
    move-object/from16 v21, v14

    const/4 v13, 0x0

    invoke-interface {v1, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v5, Lim/doit/pro/stat/StatisticsActivity$T;->title:Ljava/lang/String;

    .line 202
    move/from16 v22, v7

    move-object v14, v8

    const/4 v13, 0x1

    invoke-interface {v1, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    iput-wide v7, v5, Lim/doit/pro/stat/StatisticsActivity$T;->time:J

    .line 204
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_237

    .line 205
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    move-object v8, v14

    iget-wide v13, v5, Lim/doit/pro/stat/StatisticsActivity$T;->time:J

    invoke-virtual {v7, v13, v14}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 206
    invoke-static {v7}, Lim/doit/pro/stat/StatisticsActivity;->dayStart(Ljava/util/Calendar;)V

    .line 207
    invoke-static {v7, v4}, Lim/doit/pro/stat/StatisticsActivity;->daysBetween(Ljava/util/Calendar;Ljava/util/Calendar;)I

    move-result v13

    .line 208
    if-nez v13, :cond_228

    move-object/from16 v7, v17

    goto :goto_236

    :cond_228
    const/4 v14, 0x1

    if-ne v13, v14, :cond_22e

    move-object/from16 v7, v16

    goto :goto_236

    :cond_22e
    invoke-virtual {v7}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v11, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    .line 209
    :goto_236
    goto :goto_24c

    .line 210
    :cond_237
    move-object v8, v14

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    iget-wide v13, v5, Lim/doit/pro/stat/StatisticsActivity$T;->time:J

    invoke-virtual {v7, v13, v14}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 211
    invoke-static {v7}, Lim/doit/pro/stat/StatisticsActivity;->dayStart(Ljava/util/Calendar;)V

    .line 212
    invoke-virtual {v7}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v15, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    .line 214
    :goto_24c
    invoke-interface {v10, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_25d

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v10, v7, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v12, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 215
    :cond_25d
    invoke-interface {v10, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 216
    move-object/from16 v14, v21

    move/from16 v7, v22

    goto :goto_1ee

    .line 217
    :cond_26b
    move/from16 v22, v7

    move-object/from16 v21, v14

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 218
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_276
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_293

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v5, 0x2

    new-array v7, v5, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v7, v5

    invoke-interface {v10, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const/4 v5, 0x1

    aput-object v2, v7, v5

    invoke-interface {v9, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_276

    .line 221
    :cond_293
    const/4 v1, 0x0

    new-array v2, v1, [I

    .line 222
    const-string v1, "month"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2ee

    .line 223
    invoke-virtual {v4}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    .line 224
    const/4 v1, 0x5

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    invoke-static {v0}, Lim/doit/pro/stat/StatisticsActivity;->dayStart(Ljava/util/Calendar;)V

    .line 225
    invoke-virtual {v4, v1}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v2

    .line 226
    new-array v1, v2, [I

    .line 227
    const-string v4, "SELECT completed FROM tasks WHERE completed>0 AND trashed=0 AND deleted=0 AND completed>=?"

    const/4 v5, 0x1

    new-array v7, v5, [Ljava/lang/String;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x0

    aput-object v0, v7, v5

    invoke-virtual {v3, v4, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 228
    :goto_2c6
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_2ea

    .line 229
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    invoke-virtual {v4, v10, v11}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 230
    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 231
    const/4 v5, 0x1

    if-lt v4, v5, :cond_2e9

    if-gt v4, v2, :cond_2e9

    add-int/lit8 v4, v4, -0x1

    aget v7, v1, v4

    add-int/2addr v7, v5

    aput v7, v1, v4

    .line 232
    :cond_2e9
    goto :goto_2c6

    .line 233
    :cond_2ea
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move-object v2, v1

    .line 236
    :cond_2ee
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object v6, v0, v1

    const/4 v1, 0x1

    aput-object v8, v0, v1

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v4, 0x2

    aput-object v1, v0, v4

    const/4 v1, 0x0

    new-array v4, v1, [Ljava/lang/String;

    move-object/from16 v5, v21

    invoke-interface {v5, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x3

    aput-object v4, v0, v5

    new-array v1, v1, [[Ljava/lang/Object;

    invoke-interface {v9, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    const/4 v4, 0x4

    aput-object v1, v0, v4

    const/4 v1, 0x5

    aput-object v2, v0, v1
    :try_end_316
    .catchall {:try_start_5a .. :try_end_316} :catchall_31a

    .line 238
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 236
    return-object v0

    .line 238
    :catchall_31a
    move-exception v0

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 239
    goto :goto_320

    :goto_31f
    throw v0

    :goto_320
    goto :goto_31f
.end method

.method private reload()V
    .registers 3

    .line 82
    iget-object v0, p0, Lim/doit/pro/stat/StatisticsActivity;->root:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 83
    iget-object v0, p0, Lim/doit/pro/stat/StatisticsActivity;->root:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lim/doit/pro/stat/StatisticsActivity;->spinnerRow()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 84
    invoke-direct {p0}, Lim/doit/pro/stat/StatisticsActivity;->loadAsync()V

    .line 85
    return-void
.end method

.method private render(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 5

    .line 268
    :try_start_0
    invoke-direct {p0, p1, p2}, Lim/doit/pro/stat/StatisticsActivity;->renderInner(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_4

    .line 271
    goto :goto_21

    .line 269
    :catchall_4
    move-exception p1

    .line 270
    iget-object p2, p0, Lim/doit/pro/stat/StatisticsActivity;->root:Landroid/widget/LinearLayout;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u6e32\u67d3\u51fa\u9519: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lim/doit/pro/stat/StatisticsActivity;->note(Ljava/lang/String;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 272
    :goto_21
    return-void
.end method

.method private renderInner(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 13

    .line 275
    const/4 v0, 0x0

    aget-object v1, p2, v0

    check-cast v1, [I

    .line 276
    const/4 v2, 0x1

    aget-object v3, p2, v2

    check-cast v3, [I

    .line 277
    const/4 v4, 0x2

    aget-object v4, p2, v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 278
    const/4 v5, 0x3

    aget-object v5, p2, v5

    check-cast v5, [Ljava/lang/String;

    .line 279
    const/4 v6, 0x4

    aget-object v6, p2, v6

    check-cast v6, [[Ljava/lang/Object;

    .line 280
    const/4 v7, 0x5

    aget-object p2, p2, v7

    check-cast p2, [I

    .line 282
    nop

    .line 283
    array-length v7, v1

    const/4 v8, 0x0

    :goto_25
    if-ge v8, v7, :cond_2c

    aget v9, v1, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_25

    .line 284
    :cond_2c
    nop

    .line 285
    array-length v7, v3

    const/4 v8, 0x0

    :goto_2f
    if-ge v8, v7, :cond_36

    aget v9, v3, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_2f

    .line 287
    :cond_36
    iget-object v7, p0, Lim/doit/pro/stat/StatisticsActivity;->root:Landroid/widget/LinearLayout;

    array-length v8, v1

    sub-int/2addr v8, v2

    aget v8, v1, v8

    array-length v9, v3

    sub-int/2addr v9, v2

    aget v3, v3, v9

    invoke-direct {p0, v8, v3, v4}, Lim/doit/pro/stat/StatisticsActivity;->kpiRow(III)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v7, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 288
    iget-object v3, p0, Lim/doit/pro/stat/StatisticsActivity;->root:Landroid/widget/LinearLayout;

    const-string v4, "\u5b8c\u6210\u8d8b\u52bf"

    invoke-direct {p0, v4, v5, v1}, Lim/doit/pro/stat/StatisticsActivity;->chartCard(Ljava/lang/String;[Ljava/lang/String;[I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 289
    const-string v1, "month"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_80

    array-length p1, p2

    if-lez p1, :cond_80

    .line 290
    nop

    .line 291
    array-length p1, p2

    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_61
    if-ge v1, p1, :cond_69

    aget v4, p2, v1

    add-int/2addr v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_61

    .line 292
    :cond_69
    if-lez v3, :cond_75

    iget-object p1, p0, Lim/doit/pro/stat/StatisticsActivity;->root:Landroid/widget/LinearLayout;

    invoke-direct {p0, p2}, Lim/doit/pro/stat/StatisticsActivity;->heatCard([I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_80

    .line 293
    :cond_75
    iget-object p1, p0, Lim/doit/pro/stat/StatisticsActivity;->root:Landroid/widget/LinearLayout;

    const-string p2, "\u672c\u6708\u8fd8\u6ca1\u6709\u5b8c\u6210\u8bb0\u5f55\uff0c\u70ed\u529b\u56fe\u7b49\u4f60\u70b9\u4eae"

    invoke-direct {p0, p2}, Lim/doit/pro/stat/StatisticsActivity;->note(Ljava/lang/String;)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 295
    :cond_80
    :goto_80
    array-length p1, v6

    if-nez p1, :cond_8e

    iget-object p1, p0, Lim/doit/pro/stat/StatisticsActivity;->root:Landroid/widget/LinearLayout;

    const-string p2, "\u8be5\u65f6\u6bb5\u8fd8\u6ca1\u6709\u5b8c\u6210\u8bb0\u5f55"

    invoke-direct {p0, p2}, Lim/doit/pro/stat/StatisticsActivity;->note(Ljava/lang/String;)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 296
    :cond_8e
    array-length p1, v6

    const/4 p2, 0x0

    :goto_90
    if-ge p2, p1, :cond_f3

    aget-object v1, v6, p2

    .line 297
    iget-object v3, p0, Lim/doit/pro/stat/StatisticsActivity;->root:Landroid/widget/LinearLayout;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v5, v1, v0

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  \u00b7  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v1, v2

    check-cast v5, Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " \u6761"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lim/doit/pro/stat/StatisticsActivity;->groupHeader(Ljava/lang/String;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 298
    invoke-direct {p0}, Lim/doit/pro/stat/StatisticsActivity;->card()Landroid/widget/LinearLayout;

    move-result-object v3

    .line 299
    aget-object v1, v1, v2

    check-cast v1, Ljava/util/List;

    .line 300
    const/4 v4, 0x0

    :goto_cf
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_eb

    const/16 v5, 0x1e

    if-ge v4, v5, :cond_eb

    .line 301
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lim/doit/pro/stat/StatisticsActivity$T;

    .line 302
    iget-object v5, v5, Lim/doit/pro/stat/StatisticsActivity$T;->title:Ljava/lang/String;

    invoke-direct {p0, v5}, Lim/doit/pro/stat/StatisticsActivity;->taskRow(Ljava/lang/String;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 300
    add-int/lit8 v4, v4, 0x1

    goto :goto_cf

    .line 304
    :cond_eb
    iget-object v1, p0, Lim/doit/pro/stat/StatisticsActivity;->root:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 296
    add-int/lit8 p2, p2, 0x1

    goto :goto_90

    .line 306
    :cond_f3
    return-void
.end method

.method private spinnerRow()Landroid/view/View;
    .registers 11

    .line 88
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 89
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 90
    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 91
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v2, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 92
    const/high16 v4, 0x41400000    # 12.0f

    invoke-direct {p0, v4}, Lim/doit/pro/stat/StatisticsActivity;->dp(F)F

    move-result v4

    float-to-int v4, v4

    .line 93
    const/high16 v5, 0x41200000    # 10.0f

    invoke-direct {p0, v5}, Lim/doit/pro/stat/StatisticsActivity;->dp(F)F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v3, v4, v4, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 94
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 95
    const-string v3, "\u6309\u5468"

    const-string v4, "\u6309\u6708"

    const-string v5, "\u6309\u5929"

    filled-new-array {v5, v3, v4}, [Ljava/lang/String;

    move-result-object v3

    .line 96
    const-string v4, "week"

    const-string v5, "month"

    const-string v6, "day"

    filled-new-array {v6, v4, v5}, [Ljava/lang/String;

    move-result-object v4

    .line 97
    const/4 v5, 0x0

    :goto_3c
    const/4 v6, 0x3

    if-ge v5, v6, :cond_90

    .line 98
    new-instance v6, Landroid/widget/Button;

    invoke-direct {v6, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 99
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v8, 0x42180000    # 38.0f

    invoke-direct {p0, v8}, Lim/doit/pro/stat/StatisticsActivity;->dp(F)F

    move-result v8

    float-to-int v8, v8

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-direct {v7, v1, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 100
    if-lez v5, :cond_57

    const/4 v8, 0x1

    iput v8, v7, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 101
    :cond_57
    invoke-virtual {v6, v7}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 102
    aget-object v7, v3, v5

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 103
    const/high16 v7, 0x41600000    # 14.0f

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setTextSize(F)V

    .line 104
    aget-object v7, v4, v5

    iget-object v8, p0, Lim/doit/pro/stat/StatisticsActivity;->mode:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 105
    if-eqz v7, :cond_72

    const v8, -0xed9d5f

    goto :goto_73

    :cond_72
    const/4 v8, 0x0

    :goto_73
    invoke-virtual {v6, v8}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 106
    if-eqz v7, :cond_7a

    const/4 v7, -0x1

    goto :goto_7d

    :cond_7a
    const v7, -0x757576

    :goto_7d
    invoke-virtual {v6, v7}, Landroid/widget/Button;->setTextColor(I)V

    .line 107
    aget-object v7, v4, v5

    .line 108
    new-instance v8, Lim/doit/pro/stat/StatisticsActivity$1;

    invoke-direct {v8, p0, v7}, Lim/doit/pro/stat/StatisticsActivity$1;-><init>(Lim/doit/pro/stat/StatisticsActivity;Ljava/lang/String;)V

    invoke-virtual {v6, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 97
    add-int/lit8 v5, v5, 0x1

    goto :goto_3c

    .line 115
    :cond_90
    return-object v0
.end method

.method private tColor(Landroid/widget/TextView;)V
    .registers 3

    .line 454
    const v0, -0x656566

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method private taskRow(Ljava/lang/String;)Landroid/view/View;
    .registers 11

    .line 430
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 431
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 432
    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 433
    const/high16 v3, 0x41200000    # 10.0f

    invoke-direct {p0, v3}, Lim/doit/pro/stat/StatisticsActivity;->dp(F)F

    move-result v4

    float-to-int v4, v4

    const/high16 v5, 0x41100000    # 9.0f

    invoke-direct {p0, v5}, Lim/doit/pro/stat/StatisticsActivity;->dp(F)F

    move-result v6

    float-to-int v6, v6

    invoke-direct {p0, v3}, Lim/doit/pro/stat/StatisticsActivity;->dp(F)F

    move-result v7

    float-to-int v7, v7

    invoke-direct {p0, v5}, Lim/doit/pro/stat/StatisticsActivity;->dp(F)F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v0, v4, v6, v7, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 434
    invoke-virtual {p0}, Lim/doit/pro/stat/StatisticsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {p0}, Lim/doit/pro/stat/StatisticsActivity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "icon_checkbox_completed"

    const-string v7, "drawable"

    invoke-virtual {v4, v6, v7, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_6d

    .line 435
    new-instance v4, Landroid/widget/ImageView;

    invoke-direct {v4, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 436
    invoke-virtual {p0}, Lim/doit/pro/stat/StatisticsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {p0}, Lim/doit/pro/stat/StatisticsActivity;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 437
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 438
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v6, 0x41900000    # 18.0f

    invoke-direct {p0, v6}, Lim/doit/pro/stat/StatisticsActivity;->dp(F)F

    move-result v7

    float-to-int v7, v7

    invoke-direct {p0, v6}, Lim/doit/pro/stat/StatisticsActivity;->dp(F)F

    move-result v6

    float-to-int v6, v6

    invoke-direct {v5, v7, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 439
    invoke-direct {p0, v3}, Lim/doit/pro/stat/StatisticsActivity;->dp(F)F

    move-result v3

    float-to-int v3, v3

    iput v3, v5, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 440
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 441
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 443
    :cond_6d
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 444
    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 445
    const/high16 p1, 0x41600000    # 14.0f

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-direct {p0, v3}, Lim/doit/pro/stat/StatisticsActivity;->tColor(Landroid/widget/TextView;)V

    .line 446
    const/4 p1, 0x1

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 447
    invoke-virtual {v3}, Landroid/widget/TextView;->getPaintFlags()I

    move-result p1

    or-int/2addr p1, v2

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setPaintFlags(I)V

    .line 448
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {p1, v1, v2, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 449
    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 450
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 451
    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6

    .line 59
    invoke-super {p0, p1}, Lim/doit/pro/activity/DSwipeBackBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 60
    invoke-virtual {p0}, Lim/doit/pro/stat/StatisticsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const-string v0, "layout"

    invoke-virtual {p0}, Lim/doit/pro/stat/StatisticsActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "activity_statistics"

    invoke-virtual {p1, v2, v0, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lim/doit/pro/stat/StatisticsActivity;->setContentView(I)V

    .line 62
    invoke-virtual {p0}, Lim/doit/pro/stat/StatisticsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    .line 63
    if-eqz p1, :cond_3d

    .line 64
    invoke-virtual {p0}, Lim/doit/pro/stat/StatisticsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "string"

    invoke-virtual {p0}, Lim/doit/pro/stat/StatisticsActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "stat_title"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setTitle(I)V

    .line 65
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 66
    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 67
    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 68
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setDisplayUseLogoEnabled(Z)V

    .line 71
    :cond_3d
    const-string p1, "stat_root"

    invoke-direct {p0, p1}, Lim/doit/pro/stat/StatisticsActivity;->id(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lim/doit/pro/stat/StatisticsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lim/doit/pro/stat/StatisticsActivity;->root:Landroid/widget/LinearLayout;

    .line 72
    invoke-direct {p0}, Lim/doit/pro/stat/StatisticsActivity;->reload()V

    .line 73
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4

    .line 467
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_e

    .line 468
    invoke-virtual {p0}, Lim/doit/pro/stat/StatisticsActivity;->finish()V

    .line 469
    const/4 p1, 0x1

    return p1

    .line 471
    :cond_e
    invoke-super {p0, p1}, Lim/doit/pro/activity/DSwipeBackBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method
