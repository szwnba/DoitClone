.class public Lim/doit/pro/exp/BlindBoxActivity;
.super Lim/doit/pro/activity/DSwipeBackBaseActivity;
.source "BlindBoxActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lim/doit/pro/exp/BlindBoxActivity$Pick;
    }
.end annotation


# static fields
.field private static final BLUE:I = -0xed9d5f

.field private static final ORANGE:I = -0x3face8

.field private static final SRC_NAMES:[Ljava/lang/String;

.field private static final TEXT_GRAY:I = -0x757576

.field private static final TEXT_MAIN:I = -0xcccccd


# instance fields
.field private current:Lim/doit/pro/exp/BlindBoxActivity$Pick;

.field private drawBtn:Landroid/widget/LinearLayout;

.field private drawTxt:Landroid/widget/TextView;

.field private drawing:Z

.field private final main:Landroid/os/Handler;

.field private pool:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lim/doit/pro/exp/BlindBoxActivity$Pick;",
            ">;"
        }
    .end annotation
.end field

.field private final random:Ljava/util/Random;

.field private resultCard:Landroid/widget/LinearLayout;

.field private root:Landroid/widget/LinearLayout;

.field private srcBtn:Landroid/widget/Button;

.field private srcIndex:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 51
    const-string v0, "\u4eca\u65e5\u5f85\u529e"

    const-string v1, "\u4e0b\u4e00\u6b65\u884c\u52a8"

    const-string v2, "\u5168\u90e8\u5f85\u529e"

    const-string v3, "\u6536\u96c6\u7bb1"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lim/doit/pro/exp/BlindBoxActivity;->SRC_NAMES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 29
    invoke-direct {p0}, Lim/doit/pro/activity/DSwipeBackBaseActivity;-><init>()V

    .line 46
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lim/doit/pro/exp/BlindBoxActivity;->main:Landroid/os/Handler;

    .line 47
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lim/doit/pro/exp/BlindBoxActivity;->random:Ljava/util/Random;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lim/doit/pro/exp/BlindBoxActivity;->pool:Ljava/util/List;

    .line 50
    const/4 v0, 0x0

    iput v0, p0, Lim/doit/pro/exp/BlindBoxActivity;->srcIndex:I

    .line 52
    iput-boolean v0, p0, Lim/doit/pro/exp/BlindBoxActivity;->drawing:Z

    return-void
.end method

.method static synthetic access$000(Lim/doit/pro/exp/BlindBoxActivity;)I
    .registers 1

    .line 29
    iget p0, p0, Lim/doit/pro/exp/BlindBoxActivity;->srcIndex:I

    return p0
.end method

.method static synthetic access$002(Lim/doit/pro/exp/BlindBoxActivity;I)I
    .registers 2

    .line 29
    iput p1, p0, Lim/doit/pro/exp/BlindBoxActivity;->srcIndex:I

    return p1
.end method

.method static synthetic access$100()[Ljava/lang/String;
    .registers 1

    .line 29
    sget-object v0, Lim/doit/pro/exp/BlindBoxActivity;->SRC_NAMES:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lim/doit/pro/exp/BlindBoxActivity;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 29
    invoke-direct {p0, p1}, Lim/doit/pro/exp/BlindBoxActivity;->shortTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1100(Lim/doit/pro/exp/BlindBoxActivity;Lim/doit/pro/exp/BlindBoxActivity$Pick;)V
    .registers 2

    .line 29
    invoke-direct {p0, p1}, Lim/doit/pro/exp/BlindBoxActivity;->reveal(Lim/doit/pro/exp/BlindBoxActivity$Pick;)V

    return-void
.end method

.method static synthetic access$1200(Lim/doit/pro/exp/BlindBoxActivity;)V
    .registers 1

    .line 29
    invoke-direct {p0}, Lim/doit/pro/exp/BlindBoxActivity;->openDetail()V

    return-void
.end method

.method static synthetic access$200(Lim/doit/pro/exp/BlindBoxActivity;)V
    .registers 1

    .line 29
    invoke-direct {p0}, Lim/doit/pro/exp/BlindBoxActivity;->updateSrcLabel()V

    return-void
.end method

.method static synthetic access$300(Lim/doit/pro/exp/BlindBoxActivity;)V
    .registers 1

    .line 29
    invoke-direct {p0}, Lim/doit/pro/exp/BlindBoxActivity;->loadPool()V

    return-void
.end method

.method static synthetic access$400(Lim/doit/pro/exp/BlindBoxActivity;)V
    .registers 1

    .line 29
    invoke-direct {p0}, Lim/doit/pro/exp/BlindBoxActivity;->draw()V

    return-void
.end method

.method static synthetic access$500(Lim/doit/pro/exp/BlindBoxActivity;)Ljava/lang/String;
    .registers 1

    .line 29
    invoke-direct {p0}, Lim/doit/pro/exp/BlindBoxActivity;->srcWhere()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lim/doit/pro/exp/BlindBoxActivity;)Ljava/util/List;
    .registers 1

    .line 29
    iget-object p0, p0, Lim/doit/pro/exp/BlindBoxActivity;->pool:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$602(Lim/doit/pro/exp/BlindBoxActivity;Ljava/util/List;)Ljava/util/List;
    .registers 2

    .line 29
    iput-object p1, p0, Lim/doit/pro/exp/BlindBoxActivity;->pool:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$700(Lim/doit/pro/exp/BlindBoxActivity;)Landroid/widget/TextView;
    .registers 1

    .line 29
    iget-object p0, p0, Lim/doit/pro/exp/BlindBoxActivity;->drawTxt:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$800(Lim/doit/pro/exp/BlindBoxActivity;)Landroid/os/Handler;
    .registers 1

    .line 29
    iget-object p0, p0, Lim/doit/pro/exp/BlindBoxActivity;->main:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$900(Lim/doit/pro/exp/BlindBoxActivity;)Ljava/util/Random;
    .registers 1

    .line 29
    iget-object p0, p0, Lim/doit/pro/exp/BlindBoxActivity;->random:Ljava/util/Random;

    return-object p0
.end method

.method private ageText(J)Ljava/lang/String;
    .registers 7

    .line 295
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_9

    const-string p1, "\u672a\u77e5\u65f6\u95f4"

    return-object p1

    .line 296
    :cond_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, p1

    const-wide/32 p1, 0x5265c00

    div-long/2addr v2, p1

    .line 297
    cmp-long p1, v2, v0

    if-gtz p1, :cond_19

    const-string p1, "\u4eca\u5929"

    return-object p1

    .line 298
    :cond_19
    const-wide/16 p1, 0x1

    cmp-long v0, v2, p1

    if-nez v0, :cond_22

    const-string p1, "\u6628\u5929"

    return-object p1

    .line 299
    :cond_22
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " \u5929\u524d"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private boxName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 286
    const-string v0, "inbox"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string p1, "\u6536\u96c6\u7bb1"

    return-object p1

    .line 287
    :cond_b
    const-string v0, "next"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    const-string p1, "\u4e0b\u4e00\u6b65\u884c\u52a8"

    return-object p1

    .line 288
    :cond_16
    const-string v0, "plan"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    const-string p1, "\u4eca\u65e5\u5f85\u529e"

    return-object p1

    .line 289
    :cond_21
    const-string v0, "waiting"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    const-string p1, "\u7b49\u5f85"

    return-object p1

    .line 290
    :cond_2c
    const-string v0, "noplan"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_37

    const-string p1, "\u672a\u5b89\u6392"

    return-object p1

    .line 291
    :cond_37
    const-string p1, "\u4efb\u52a1"

    return-object p1
.end method

.method private buildUi()V
    .registers 10

    .line 83
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lim/doit/pro/exp/BlindBoxActivity;->srcBtn:Landroid/widget/Button;

    .line 84
    const/high16 v1, 0x41600000    # 14.0f

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextSize(F)V

    .line 85
    iget-object v0, p0, Lim/doit/pro/exp/BlindBoxActivity;->srcBtn:Landroid/widget/Button;

    const v2, -0xcccccd

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 86
    iget-object v0, p0, Lim/doit/pro/exp/BlindBoxActivity;->srcBtn:Landroid/widget/Button;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 87
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x42280000    # 42.0f

    invoke-direct {p0, v3}, Lim/doit/pro/exp/BlindBoxActivity;->dp(F)F

    move-result v3

    float-to-int v3, v3

    invoke-direct {v0, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 88
    const/high16 v3, 0x41400000    # 12.0f

    invoke-direct {p0, v3}, Lim/doit/pro/exp/BlindBoxActivity;->dp(F)F

    move-result v4

    float-to-int v4, v4

    .line 89
    const/4 v5, 0x0

    invoke-virtual {v0, v4, v4, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 90
    iget-object v6, p0, Lim/doit/pro/exp/BlindBoxActivity;->srcBtn:Landroid/widget/Button;

    invoke-virtual {v6, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 91
    iget-object v0, p0, Lim/doit/pro/exp/BlindBoxActivity;->srcBtn:Landroid/widget/Button;

    new-instance v6, Lim/doit/pro/exp/BlindBoxActivity$1;

    invoke-direct {v6, p0}, Lim/doit/pro/exp/BlindBoxActivity$1;-><init>(Lim/doit/pro/exp/BlindBoxActivity;)V

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    iget-object v0, p0, Lim/doit/pro/exp/BlindBoxActivity;->root:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lim/doit/pro/exp/BlindBoxActivity;->srcBtn:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 99
    invoke-direct {p0}, Lim/doit/pro/exp/BlindBoxActivity;->updateSrcLabel()V

    .line 102
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lim/doit/pro/exp/BlindBoxActivity;->drawBtn:Landroid/widget/LinearLayout;

    .line 103
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 104
    iget-object v0, p0, Lim/doit/pro/exp/BlindBoxActivity;->drawBtn:Landroid/widget/LinearLayout;

    const/16 v6, 0x11

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 105
    iget-object v0, p0, Lim/doit/pro/exp/BlindBoxActivity;->drawBtn:Landroid/widget/LinearLayout;

    const v6, -0xed9d5f

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 106
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v6, 0x43160000    # 150.0f

    invoke-direct {p0, v6}, Lim/doit/pro/exp/BlindBoxActivity;->dp(F)F

    move-result v6

    float-to-int v6, v6

    invoke-direct {v0, v2, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 107
    invoke-direct {p0, v1}, Lim/doit/pro/exp/BlindBoxActivity;->dp(F)F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {v0, v4, v6, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 108
    iget-object v6, p0, Lim/doit/pro/exp/BlindBoxActivity;->drawBtn:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 109
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 110
    const-string v6, "icon_exp_boxopen"

    const-string v7, "drawable"

    invoke-direct {p0, v6, v7}, Lim/doit/pro/exp/BlindBoxActivity;->res(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 111
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v7, 0x42080000    # 34.0f

    invoke-direct {p0, v7}, Lim/doit/pro/exp/BlindBoxActivity;->dp(F)F

    move-result v8

    float-to-int v8, v8

    invoke-direct {p0, v7}, Lim/doit/pro/exp/BlindBoxActivity;->dp(F)F

    move-result v7

    float-to-int v7, v7

    invoke-direct {v6, v8, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 112
    invoke-direct {p0, v1}, Lim/doit/pro/exp/BlindBoxActivity;->dp(F)F

    move-result v7

    float-to-int v7, v7

    iput v7, v6, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 113
    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 114
    new-instance v6, Landroid/widget/TextView;

    invoke-direct {v6, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lim/doit/pro/exp/BlindBoxActivity;->drawTxt:Landroid/widget/TextView;

    .line 115
    const-string v7, "\u70b9 \u6211 \u62bd \u4e00 \u4e2a"

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    iget-object v6, p0, Lim/doit/pro/exp/BlindBoxActivity;->drawTxt:Landroid/widget/TextView;

    const/high16 v7, 0x41900000    # 18.0f

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextSize(F)V

    .line 117
    iget-object v6, p0, Lim/doit/pro/exp/BlindBoxActivity;->drawTxt:Landroid/widget/TextView;

    sget-object v7, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 118
    iget-object v6, p0, Lim/doit/pro/exp/BlindBoxActivity;->drawTxt:Landroid/widget/TextView;

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 119
    iget-object v6, p0, Lim/doit/pro/exp/BlindBoxActivity;->drawBtn:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 120
    iget-object v0, p0, Lim/doit/pro/exp/BlindBoxActivity;->drawBtn:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lim/doit/pro/exp/BlindBoxActivity;->drawTxt:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 121
    iget-object v0, p0, Lim/doit/pro/exp/BlindBoxActivity;->drawBtn:Landroid/widget/LinearLayout;

    new-instance v6, Lim/doit/pro/exp/BlindBoxActivity$2;

    invoke-direct {v6, p0}, Lim/doit/pro/exp/BlindBoxActivity$2;-><init>(Lim/doit/pro/exp/BlindBoxActivity;)V

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    iget-object v0, p0, Lim/doit/pro/exp/BlindBoxActivity;->root:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lim/doit/pro/exp/BlindBoxActivity;->drawBtn:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 127
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lim/doit/pro/exp/BlindBoxActivity;->resultCard:Landroid/widget/LinearLayout;

    .line 128
    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 129
    iget-object v0, p0, Lim/doit/pro/exp/BlindBoxActivity;->resultCard:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 130
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x2

    invoke-direct {v0, v2, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 131
    invoke-direct {p0, v1}, Lim/doit/pro/exp/BlindBoxActivity;->dp(F)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v4, v2, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 132
    iget-object v2, p0, Lim/doit/pro/exp/BlindBoxActivity;->resultCard:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 133
    iget-object v0, p0, Lim/doit/pro/exp/BlindBoxActivity;->resultCard:Landroid/widget/LinearLayout;

    const/high16 v2, 0x41800000    # 16.0f

    invoke-direct {p0, v2}, Lim/doit/pro/exp/BlindBoxActivity;->dp(F)F

    move-result v4

    float-to-int v4, v4

    invoke-direct {p0, v1}, Lim/doit/pro/exp/BlindBoxActivity;->dp(F)F

    move-result v6

    float-to-int v6, v6

    invoke-direct {p0, v2}, Lim/doit/pro/exp/BlindBoxActivity;->dp(F)F

    move-result v7

    float-to-int v7, v7

    invoke-direct {p0, v1}, Lim/doit/pro/exp/BlindBoxActivity;->dp(F)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v4, v6, v7, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 134
    iget-object v0, p0, Lim/doit/pro/exp/BlindBoxActivity;->resultCard:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 135
    iget-object v0, p0, Lim/doit/pro/exp/BlindBoxActivity;->root:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lim/doit/pro/exp/BlindBoxActivity;->resultCard:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 137
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 138
    const-string v1, "\u00b7 \u53ea\u62bd\u672a\u5b8c\u6210\u3001\u672a\u5220\u9664\u7684\u4efb\u52a1\n\u00b7 \u62bd\u4e2d\u4e0d\u6d88\u8017\u3001\u4e0d\u6539\u52a8\u4efb\u52a1\u672c\u8eab"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    const/high16 v1, 0x41300000    # 11.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 140
    const v1, -0x757576

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 141
    invoke-direct {p0, v2}, Lim/doit/pro/exp/BlindBoxActivity;->dp(F)F

    move-result v1

    float-to-int v1, v1

    invoke-direct {p0, v3}, Lim/doit/pro/exp/BlindBoxActivity;->dp(F)F

    move-result v3

    float-to-int v3, v3

    invoke-direct {p0, v2}, Lim/doit/pro/exp/BlindBoxActivity;->dp(F)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v3, v2, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 142
    iget-object v1, p0, Lim/doit/pro/exp/BlindBoxActivity;->root:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 143
    return-void
.end method

.method private dp(F)F
    .registers 3

    .line 58
    invoke-virtual {p0}, Lim/doit/pro/exp/BlindBoxActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, p1

    return v0
.end method

.method private draw()V
    .registers 10

    .line 206
    iget-boolean v0, p0, Lim/doit/pro/exp/BlindBoxActivity;->drawing:Z

    if-eqz v0, :cond_5

    return-void

    .line 207
    :cond_5
    iget-object v0, p0, Lim/doit/pro/exp/BlindBoxActivity;->pool:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_13

    const-string v0, "\u8be5\u6765\u6e90\u6682\u65e0\u53ef\u62bd\u7684\u4efb\u52a1"

    invoke-direct {p0, v0}, Lim/doit/pro/exp/BlindBoxActivity;->toast(Ljava/lang/String;)V

    return-void

    .line 208
    :cond_13
    const/4 v0, 0x1

    iput-boolean v0, p0, Lim/doit/pro/exp/BlindBoxActivity;->drawing:Z

    .line 209
    iget-object v0, p0, Lim/doit/pro/exp/BlindBoxActivity;->resultCard:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 212
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/high16 v3, -0x3fc00000    # -3.0f

    const/high16 v4, 0x40400000    # 3.0f

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v7, 0x1

    const/high16 v8, 0x3f000000    # 0.5f

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 213
    const-wide/16 v1, 0x5a

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 214
    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setRepeatCount(I)V

    .line 215
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setRepeatMode(I)V

    .line 216
    iget-object v1, p0, Lim/doit/pro/exp/BlindBoxActivity;->drawBtn:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 220
    const/4 v0, 0x0

    :goto_40
    const/16 v1, 0x9

    if-ge v0, v1, :cond_55

    .line 221
    nop

    .line 222
    iget-object v1, p0, Lim/doit/pro/exp/BlindBoxActivity;->main:Landroid/os/Handler;

    new-instance v2, Lim/doit/pro/exp/BlindBoxActivity$4;

    invoke-direct {v2, p0, v0}, Lim/doit/pro/exp/BlindBoxActivity$4;-><init>(Lim/doit/pro/exp/BlindBoxActivity;I)V

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v3, v0, 0x5a

    int-to-long v3, v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 220
    goto :goto_40

    .line 230
    :cond_55
    return-void
.end method

.method private id(Ljava/lang/String;)I
    .registers 5

    .line 59
    invoke-virtual {p0}, Lim/doit/pro/exp/BlindBoxActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "id"

    invoke-virtual {p0}, Lim/doit/pro/exp/BlindBoxActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method private loadPool()V
    .registers 3

    .line 168
    nop

    .line 169
    iget-object v0, p0, Lim/doit/pro/exp/BlindBoxActivity;->resultCard:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 170
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lim/doit/pro/exp/BlindBoxActivity$3;

    invoke-direct {v1, p0, p0}, Lim/doit/pro/exp/BlindBoxActivity$3;-><init>(Lim/doit/pro/exp/BlindBoxActivity;Lim/doit/pro/exp/BlindBoxActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 202
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 203
    return-void
.end method

.method private openDetail()V
    .registers 11

    .line 304
    iget-object v0, p0, Lim/doit/pro/exp/BlindBoxActivity;->current:Lim/doit/pro/exp/BlindBoxActivity$Pick;

    if-nez v0, :cond_5

    return-void

    .line 306
    :cond_5
    :try_start_5
    const-string v0, "im.doit.pro.activity.DoitApp"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 307
    const-string v1, "persist"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 308
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v5, "taskDao"

    invoke-virtual {v3, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 309
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v5, "findByUUIDAndRepeatNo"

    const/4 v6, 0x2

    new-array v7, v6, [Ljava/lang/Class;

    const-class v8, Ljava/lang/String;

    aput-object v8, v7, v2

    const-class v8, Ljava/lang/String;

    const/4 v9, 0x1

    aput-object v8, v7, v9

    invoke-virtual {v3, v5, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 310
    new-array v5, v6, [Ljava/lang/Object;

    iget-object v6, p0, Lim/doit/pro/exp/BlindBoxActivity;->current:Lim/doit/pro/exp/BlindBoxActivity$Pick;

    iget-object v6, v6, Lim/doit/pro/exp/BlindBoxActivity$Pick;->uuid:Ljava/lang/String;

    aput-object v6, v5, v2

    iget-object v6, p0, Lim/doit/pro/exp/BlindBoxActivity;->current:Lim/doit/pro/exp/BlindBoxActivity$Pick;

    iget-object v6, v6, Lim/doit/pro/exp/BlindBoxActivity$Pick;->repeatNo:Ljava/lang/String;

    aput-object v6, v5, v9

    invoke-virtual {v3, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 311
    if-nez v1, :cond_59

    const-string v0, "\u4efb\u52a1\u5df2\u4e0d\u5b58\u5728"

    invoke-direct {p0, v0}, Lim/doit/pro/exp/BlindBoxActivity;->toast(Ljava/lang/String;)V

    return-void

    .line 312
    :cond_59
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 313
    const-string v5, "im.doit.pro.activity.TaskDetailActivity"

    invoke-virtual {v3, p0, v5}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 314
    const-string v5, "task"

    check-cast v1, Ljava/io/Serializable;

    invoke-virtual {v3, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;
    :try_end_6a
    .catchall {:try_start_5 .. :try_end_6a} :catchall_88

    .line 316
    :try_start_6a
    const-string v1, "currentBox"

    new-array v5, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v4, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 317
    if-eqz v0, :cond_83

    const-string v1, "box"

    check-cast v0, Ljava/io/Serializable;

    invoke-virtual {v3, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;
    :try_end_81
    .catchall {:try_start_6a .. :try_end_81} :catchall_82

    goto :goto_83

    .line 318
    :catchall_82
    move-exception v0

    :cond_83
    :goto_83
    nop

    .line 319
    :try_start_84
    invoke-virtual {p0, v3}, Lim/doit/pro/exp/BlindBoxActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_87
    .catchall {:try_start_84 .. :try_end_87} :catchall_88

    .line 322
    goto :goto_a7

    .line 320
    :catchall_88
    move-exception v0

    .line 321
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u6253\u5f00\u8be6\u60c5\u5931\u8d25: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lim/doit/pro/exp/BlindBoxActivity;->toast(Ljava/lang/String;)V

    .line 323
    :goto_a7
    return-void
.end method

.method private res(Ljava/lang/String;Ljava/lang/String;)I
    .registers 5

    .line 60
    invoke-virtual {p0}, Lim/doit/pro/exp/BlindBoxActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lim/doit/pro/exp/BlindBoxActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method private reveal(Lim/doit/pro/exp/BlindBoxActivity$Pick;)V
    .registers 10

    .line 238
    iput-object p1, p0, Lim/doit/pro/exp/BlindBoxActivity;->current:Lim/doit/pro/exp/BlindBoxActivity$Pick;

    .line 239
    const/4 v0, 0x0

    iput-boolean v0, p0, Lim/doit/pro/exp/BlindBoxActivity;->drawing:Z

    .line 240
    iget-object v1, p0, Lim/doit/pro/exp/BlindBoxActivity;->drawTxt:Landroid/widget/TextView;

    const-string v2, "\u518d \u62bd \u4e00 \u4e2a"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 242
    iget-object v1, p0, Lim/doit/pro/exp/BlindBoxActivity;->resultCard:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 243
    iget-object v1, p0, Lim/doit/pro/exp/BlindBoxActivity;->resultCard:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 245
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 246
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u6765\u81ea\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lim/doit/pro/exp/BlindBoxActivity$Pick;->attribute:Ljava/lang/String;

    invoke-direct {p0, v3}, Lim/doit/pro/exp/BlindBoxActivity;->boxName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 247
    const/high16 v2, 0x41300000    # 11.0f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    const v2, -0x757576

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 248
    iget-object v3, p0, Lim/doit/pro/exp/BlindBoxActivity;->resultCard:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 250
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 251
    iget-object v3, p1, Lim/doit/pro/exp/BlindBoxActivity$Pick;->title:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 252
    const/high16 v3, 0x41880000    # 17.0f

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextSize(F)V

    const v3, -0xcccccd

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 253
    const/high16 v3, 0x41000000    # 8.0f

    invoke-direct {p0, v3}, Lim/doit/pro/exp/BlindBoxActivity;->dp(F)F

    move-result v4

    float-to-int v4, v4

    invoke-direct {p0, v3}, Lim/doit/pro/exp/BlindBoxActivity;->dp(F)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v1, v0, v4, v0, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 254
    iget-object v3, p0, Lim/doit/pro/exp/BlindBoxActivity;->resultCard:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 256
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 257
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 258
    iget v3, p1, Lim/doit/pro/exp/BlindBoxActivity$Pick;->priority:I

    const/4 v4, 0x3

    const/high16 v5, 0x41400000    # 12.0f

    if-lt v3, v4, :cond_9d

    .line 259
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 260
    const-string v4, "\u9ad8\u4f18\u5148\u7ea7"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 261
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextSize(F)V

    const v4, -0x3face8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 262
    invoke-direct {p0, v5}, Lim/doit/pro/exp/BlindBoxActivity;->dp(F)F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v3, v0, v0, v4, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 263
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 265
    :cond_9d
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 266
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u521b\u5efa\u4e8e "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v6, p1, Lim/doit/pro/exp/BlindBoxActivity$Pick;->created:J

    invoke-direct {p0, v6, v7}, Lim/doit/pro/exp/BlindBoxActivity;->ageText(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 267
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 268
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 269
    iget-object p1, p0, Lim/doit/pro/exp/BlindBoxActivity;->resultCard:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 271
    new-instance p1, Landroid/widget/Button;

    invoke-direct {p1, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 272
    const-string v0, "\u53bb\u505a\u8fd9\u6761 \u2192"

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 273
    const/high16 v0, 0x41600000    # 14.0f

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setTextSize(F)V

    .line 274
    const v0, -0xed9d5f

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setTextColor(I)V

    .line 275
    const v0, -0xd0906

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 276
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x42200000    # 40.0f

    invoke-direct {p0, v1}, Lim/doit/pro/exp/BlindBoxActivity;->dp(F)F

    move-result v1

    float-to-int v1, v1

    const/4 v2, -0x1

    invoke-direct {v0, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 277
    invoke-direct {p0, v5}, Lim/doit/pro/exp/BlindBoxActivity;->dp(F)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 278
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 279
    new-instance v0, Lim/doit/pro/exp/BlindBoxActivity$5;

    invoke-direct {v0, p0}, Lim/doit/pro/exp/BlindBoxActivity$5;-><init>(Lim/doit/pro/exp/BlindBoxActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 282
    iget-object v0, p0, Lim/doit/pro/exp/BlindBoxActivity;->resultCard:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 283
    return-void
.end method

.method private shortTitle(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 233
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 234
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xc

    if-le v0, v1, :cond_24

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\u2026"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_24
    return-object p1
.end method

.method private srcWhere()Ljava/lang/String;
    .registers 6

    .line 150
    iget v0, p0, Lim/doit/pro/exp/BlindBoxActivity;->srcIndex:I

    packed-switch v0, :pswitch_data_3e

    .line 154
    const-string v0, ""

    return-object v0

    .line 153
    :pswitch_8
    const-string v0, " AND attribute=\'next\'"

    return-object v0

    .line 152
    :pswitch_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " AND attribute=\'plan\' AND start_at>="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lim/doit/pro/exp/BlindBoxActivity;->todayStart()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND start_at<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lim/doit/pro/exp/BlindBoxActivity;->todayStart()J

    move-result-wide v1

    const-wide/32 v3, 0x5265c00

    add-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND (repeater IS NULL OR repeater=\'\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 151
    :pswitch_3b
    const-string v0, " AND attribute=\'inbox\'"

    return-object v0

    :pswitch_data_3e
    .packed-switch 0x1
        :pswitch_3b
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method

.method private toast(Ljava/lang/String;)V
    .registers 3

    .line 326
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 327
    return-void
.end method

.method private todayStart()J
    .registers 4

    .line 159
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 160
    const/16 v1, 0xb

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 161
    const/16 v1, 0xc

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 162
    const/16 v1, 0xd

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 163
    const/16 v1, 0xe

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 164
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method private updateSrcLabel()V
    .registers 5

    .line 146
    iget-object v0, p0, Lim/doit/pro/exp/BlindBoxActivity;->srcBtn:Landroid/widget/Button;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u4efb\u52a1\u6765\u6e90\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lim/doit/pro/exp/BlindBoxActivity;->SRC_NAMES:[Ljava/lang/String;

    iget v3, p0, Lim/doit/pro/exp/BlindBoxActivity;->srcIndex:I

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u3000\uff08\u70b9\u6211\u5207\u6362\uff09"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 147
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6

    .line 64
    invoke-super {p0, p1}, Lim/doit/pro/activity/DSwipeBackBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 65
    invoke-virtual {p0}, Lim/doit/pro/exp/BlindBoxActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const-string v0, "layout"

    invoke-virtual {p0}, Lim/doit/pro/exp/BlindBoxActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "activity_blindbox"

    invoke-virtual {p1, v2, v0, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lim/doit/pro/exp/BlindBoxActivity;->setContentView(I)V

    .line 67
    invoke-virtual {p0}, Lim/doit/pro/exp/BlindBoxActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    .line 68
    if-eqz p1, :cond_3d

    .line 69
    invoke-virtual {p0}, Lim/doit/pro/exp/BlindBoxActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "string"

    invoke-virtual {p0}, Lim/doit/pro/exp/BlindBoxActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "blindbox_title"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setTitle(I)V

    .line 70
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 71
    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 72
    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 73
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setDisplayUseLogoEnabled(Z)V

    .line 76
    :cond_3d
    const-string p1, "bb_root"

    invoke-direct {p0, p1}, Lim/doit/pro/exp/BlindBoxActivity;->id(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lim/doit/pro/exp/BlindBoxActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lim/doit/pro/exp/BlindBoxActivity;->root:Landroid/widget/LinearLayout;

    .line 77
    invoke-direct {p0}, Lim/doit/pro/exp/BlindBoxActivity;->buildUi()V

    .line 78
    invoke-direct {p0}, Lim/doit/pro/exp/BlindBoxActivity;->loadPool()V

    .line 79
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4

    .line 331
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_e

    invoke-virtual {p0}, Lim/doit/pro/exp/BlindBoxActivity;->finish()V

    const/4 p1, 0x1

    return p1

    .line 332
    :cond_e
    invoke-super {p0, p1}, Lim/doit/pro/activity/DSwipeBackBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method
