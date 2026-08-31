.class public Lim/doit/pro/ai/PromptListActivity;
.super Lim/doit/pro/activity/DSwipeBackBaseActivity;
.source "PromptListActivity.java"


# static fields
.field private static final BLUE:I = -0xed9d5f

.field private static final TEXT_GRAY:I = -0x757576

.field private static final TEXT_MAIN:I = -0xcccccd


# instance fields
.field private root:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Lim/doit/pro/activity/DSwipeBackBaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lim/doit/pro/ai/PromptListActivity;ILjava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 24
    invoke-direct {p0, p1, p2, p3}, Lim/doit/pro/ai/PromptListActivity;->openEdit(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lim/doit/pro/ai/PromptListActivity;ILjava/lang/String;)V
    .registers 3

    .line 24
    invoke-direct {p0, p1, p2}, Lim/doit/pro/ai/PromptListActivity;->confirmDelete(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lim/doit/pro/ai/PromptListActivity;)V
    .registers 1

    .line 24
    invoke-direct {p0}, Lim/doit/pro/ai/PromptListActivity;->render()V

    return-void
.end method

.method private confirmDelete(ILjava/lang/String;)V
    .registers 8

    .line 234
    new-instance v0, Landroid/app/Dialog;

    const-string v1, "Theme.Doit.Light.Dialog"

    const-string v2, "style"

    invoke-direct {p0, v1, v2}, Lim/doit/pro/ai/PromptListActivity;->res(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, p0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 235
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const-string v2, "dialog_ghs_confirm"

    const-string v3, "layout"

    invoke-direct {p0, v2, v3}, Lim/doit/pro/ai/PromptListActivity;->res(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 236
    const-string v2, "title"

    invoke-direct {p0, v2}, Lim/doit/pro/ai/PromptListActivity;->id(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const-string v3, "\u5220\u9664\u63d0\u793a\u8bcd"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 237
    const-string v2, "ghs_msg"

    invoke-direct {p0, v2}, Lim/doit/pro/ai/PromptListActivity;->id(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u786e\u5b9a\u5220\u9664\u300c"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v3, "\u300d\uff1f"

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 238
    const-string p2, "cancel_btn"

    invoke-direct {p0, p2}, Lim/doit/pro/ai/PromptListActivity;->id(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {v1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lim/doit/pro/ui/component/DButton;

    .line 239
    const-string v2, "ok_btn"

    invoke-direct {p0, v2}, Lim/doit/pro/ai/PromptListActivity;->id(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lim/doit/pro/ui/component/DButton;

    .line 240
    new-instance v3, Lim/doit/pro/ai/PromptListActivity$7;

    invoke-direct {v3, p0, v0}, Lim/doit/pro/ai/PromptListActivity$7;-><init>(Lim/doit/pro/ai/PromptListActivity;Landroid/app/Dialog;)V

    invoke-virtual {p2, v3}, Lim/doit/pro/ui/component/DButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 243
    new-instance p2, Lim/doit/pro/ai/PromptListActivity$8;

    invoke-direct {p2, p0, v0, p1}, Lim/doit/pro/ai/PromptListActivity$8;-><init>(Lim/doit/pro/ai/PromptListActivity;Landroid/app/Dialog;I)V

    invoke-virtual {v2, p2}, Lim/doit/pro/ui/component/DButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 251
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 252
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 253
    return-void
.end method

.method private dp(F)F
    .registers 3

    .line 32
    invoke-virtual {p0}, Lim/doit/pro/ai/PromptListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, p1

    return v0
.end method

.method private id(Ljava/lang/String;)I
    .registers 5

    .line 33
    invoke-virtual {p0}, Lim/doit/pro/ai/PromptListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "id"

    invoke-virtual {p0}, Lim/doit/pro/ai/PromptListActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method private item(ILjava/lang/String;Ljava/lang/String;ZZ)Landroid/view/View;
    .registers 22

    .line 98
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 99
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 100
    new-instance v6, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v6}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 101
    const/4 v7, -0x1

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 102
    const/high16 v8, 0x41000000    # 8.0f

    invoke-direct {v0, v8}, Lim/doit/pro/ai/PromptListActivity;->dp(F)F

    move-result v9

    invoke-virtual {v6, v9}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 103
    const v9, -0xed9d5f

    if-eqz p5, :cond_32

    const/high16 v10, 0x3fc00000    # 1.5f

    invoke-direct {v0, v10}, Lim/doit/pro/ai/PromptListActivity;->dp(F)F

    move-result v10

    float-to-int v10, v10

    invoke-virtual {v6, v10, v9}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 104
    :cond_32
    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 105
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v10, -0x2

    invoke-direct {v6, v7, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 106
    const/high16 v7, 0x41400000    # 12.0f

    invoke-direct {v0, v7}, Lim/doit/pro/ai/PromptListActivity;->dp(F)F

    move-result v11

    float-to-int v11, v11

    .line 107
    invoke-direct {v0, v8}, Lim/doit/pro/ai/PromptListActivity;->dp(F)F

    move-result v12

    float-to-int v12, v12

    const/4 v13, 0x0

    invoke-virtual {v6, v11, v12, v11, v13}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 108
    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 109
    const/high16 v6, 0x41600000    # 14.0f

    invoke-direct {v0, v6}, Lim/doit/pro/ai/PromptListActivity;->dp(F)F

    move-result v11

    float-to-int v11, v11

    invoke-direct {v0, v7}, Lim/doit/pro/ai/PromptListActivity;->dp(F)F

    move-result v12

    float-to-int v12, v12

    invoke-direct {v0, v6}, Lim/doit/pro/ai/PromptListActivity;->dp(F)F

    move-result v6

    float-to-int v6, v6

    const/high16 v14, 0x41200000    # 10.0f

    invoke-direct {v0, v14}, Lim/doit/pro/ai/PromptListActivity;->dp(F)F

    move-result v15

    float-to-int v15, v15

    invoke-virtual {v4, v11, v12, v6, v15}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 112
    new-instance v6, Landroid/widget/LinearLayout;

    invoke-direct {v6, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 113
    invoke-virtual {v6, v13}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 114
    const/16 v11, 0x10

    invoke-virtual {v6, v11}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 115
    const/high16 v11, 0x40c00000    # 6.0f

    if-eqz p5, :cond_9e

    .line 116
    new-instance v12, Landroid/widget/TextView;

    invoke-direct {v12, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 117
    const-string v15, "\u2714"

    invoke-virtual {v12, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    const/high16 v15, 0x41500000    # 13.0f

    invoke-virtual {v12, v15}, Landroid/widget/TextView;->setTextSize(F)V

    .line 119
    invoke-virtual {v12, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 120
    invoke-virtual {v6, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 121
    new-instance v15, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v15, v10, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 122
    invoke-direct {v0, v11}, Lim/doit/pro/ai/PromptListActivity;->dp(F)F

    move-result v13

    float-to-int v13, v13

    iput v13, v15, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 123
    invoke-virtual {v12, v15}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 125
    :cond_9e
    new-instance v12, Landroid/widget/TextView;

    invoke-direct {v12, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 126
    invoke-virtual {v12, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    const/high16 v13, 0x41700000    # 15.0f

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setTextSize(F)V

    .line 128
    const v13, -0xcccccd

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setTextColor(I)V

    .line 129
    invoke-virtual {v6, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 130
    if-eqz p4, :cond_fc

    .line 131
    new-instance v12, Landroid/widget/TextView;

    invoke-direct {v12, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 132
    const-string v13, "\u5185\u7f6e"

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    invoke-virtual {v12, v14}, Landroid/widget/TextView;->setTextSize(F)V

    .line 134
    invoke-virtual {v12, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 135
    new-instance v9, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v9}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 136
    const v13, -0x170f08

    invoke-virtual {v9, v13}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 137
    const/high16 v13, 0x40400000    # 3.0f

    invoke-direct {v0, v13}, Lim/doit/pro/ai/PromptListActivity;->dp(F)F

    move-result v13

    invoke-virtual {v9, v13}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 138
    invoke-virtual {v12, v9}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 139
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v9, v10, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 140
    invoke-direct {v0, v8}, Lim/doit/pro/ai/PromptListActivity;->dp(F)F

    move-result v10

    float-to-int v10, v10

    iput v10, v9, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 141
    invoke-direct {v0, v11}, Lim/doit/pro/ai/PromptListActivity;->dp(F)F

    move-result v10

    float-to-int v10, v10

    invoke-direct {v0, v11}, Lim/doit/pro/ai/PromptListActivity;->dp(F)F

    move-result v13

    float-to-int v13, v13

    invoke-virtual {v12, v10, v5, v13, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 142
    invoke-virtual {v12, v9}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 143
    invoke-virtual {v6, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 145
    :cond_fc
    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 148
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 149
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTextSize(F)V

    .line 151
    const v6, -0x757576

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 152
    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 153
    sget-object v6, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 154
    const/high16 v6, 0x40800000    # 4.0f

    invoke-direct {v0, v6}, Lim/doit/pro/ai/PromptListActivity;->dp(F)F

    move-result v7

    float-to-int v7, v7

    const/4 v9, 0x0

    invoke-virtual {v5, v9, v7, v9, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 155
    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 158
    new-instance v5, Landroid/widget/LinearLayout;

    invoke-direct {v5, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 159
    invoke-virtual {v5, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 160
    const/16 v7, 0x15

    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 161
    invoke-direct {v0, v11}, Lim/doit/pro/ai/PromptListActivity;->dp(F)F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {v5, v9, v7, v9, v9}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 162
    new-instance v7, Landroid/widget/TextView;

    invoke-direct {v7, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 163
    const-string v9, "\u7f16\u8f91"

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    const/high16 v9, 0x41300000    # 11.0f

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setTextSize(F)V

    .line 165
    const v10, -0x444445

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 166
    invoke-direct {v0, v8}, Lim/doit/pro/ai/PromptListActivity;->dp(F)F

    move-result v11

    float-to-int v11, v11

    invoke-direct {v0, v6}, Lim/doit/pro/ai/PromptListActivity;->dp(F)F

    move-result v12

    float-to-int v12, v12

    invoke-direct {v0, v8}, Lim/doit/pro/ai/PromptListActivity;->dp(F)F

    move-result v13

    float-to-int v13, v13

    invoke-direct {v0, v6}, Lim/doit/pro/ai/PromptListActivity;->dp(F)F

    move-result v14

    float-to-int v14, v14

    invoke-virtual {v7, v11, v12, v13, v14}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 167
    new-instance v11, Lim/doit/pro/ai/PromptListActivity$2;

    invoke-direct {v11, v0, v1, v2, v3}, Lim/doit/pro/ai/PromptListActivity$2;-><init>(Lim/doit/pro/ai/PromptListActivity;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 171
    if-nez p4, :cond_1a7

    .line 172
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 173
    const-string v7, "\u5220\u9664"

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setTextSize(F)V

    .line 175
    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 176
    invoke-direct {v0, v8}, Lim/doit/pro/ai/PromptListActivity;->dp(F)F

    move-result v7

    float-to-int v7, v7

    invoke-direct {v0, v6}, Lim/doit/pro/ai/PromptListActivity;->dp(F)F

    move-result v9

    float-to-int v9, v9

    invoke-direct {v0, v8}, Lim/doit/pro/ai/PromptListActivity;->dp(F)F

    move-result v8

    float-to-int v8, v8

    invoke-direct {v0, v6}, Lim/doit/pro/ai/PromptListActivity;->dp(F)F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {v3, v7, v9, v8, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 177
    new-instance v6, Lim/doit/pro/ai/PromptListActivity$3;

    invoke-direct {v6, v0, v1, v2}, Lim/doit/pro/ai/PromptListActivity$3;-><init>(Lim/doit/pro/ai/PromptListActivity;ILjava/lang/String;)V

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    invoke-virtual {v5, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 182
    :cond_1a7
    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 185
    new-instance v3, Lim/doit/pro/ai/PromptListActivity$4;

    invoke-direct {v3, v0, v1, v2}, Lim/doit/pro/ai/PromptListActivity$4;-><init>(Lim/doit/pro/ai/PromptListActivity;ILjava/lang/String;)V

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 192
    return-object v4
.end method

.method private openEdit(ILjava/lang/String;Ljava/lang/String;)V
    .registers 12

    .line 196
    new-instance v6, Landroid/app/Dialog;

    const-string v0, "Theme.Doit.Light.Dialog"

    const-string v1, "style"

    invoke-direct {p0, v0, v1}, Lim/doit/pro/ai/PromptListActivity;->res(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-direct {v6, p0, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 197
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const-string v1, "dialog_prompt_edit"

    const-string v2, "layout"

    invoke-direct {p0, v1, v2}, Lim/doit/pro/ai/PromptListActivity;->res(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 198
    const-string v0, "title"

    invoke-direct {p0, v0}, Lim/doit/pro/ai/PromptListActivity;->id(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-gez p1, :cond_2f

    const-string v1, "\u65b0\u589e\u63d0\u793a\u8bcd"

    goto :goto_31

    :cond_2f
    const-string v1, "\u7f16\u8f91\u63d0\u793a\u8bcd"

    :goto_31
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 199
    const-string v0, "prompt_name"

    invoke-direct {p0, v0}, Lim/doit/pro/ai/PromptListActivity;->id(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/widget/EditText;

    .line 200
    const-string v0, "prompt_body"

    invoke-direct {p0, v0}, Lim/doit/pro/ai/PromptListActivity;->id(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/widget/EditText;

    .line 201
    invoke-virtual {v3, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 202
    invoke-virtual {v4, p3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 203
    if-nez p1, :cond_5f

    .line 204
    const/4 p2, 0x0

    invoke-virtual {v3, p2}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 205
    const-string p2, "\u5185\u7f6e\u63d0\u793a\u8bcd\u4e0d\u53ef\u7f16\u8f91\u5185\u5bb9\uff1b\u53ef\u53e6\u5b58\u4e3a\u81ea\u5b9a\u4e49"

    invoke-virtual {v4, p2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 207
    :cond_5f
    const-string p2, "cancel_btn"

    invoke-direct {p0, p2}, Lim/doit/pro/ai/PromptListActivity;->id(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {v7, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lim/doit/pro/ui/component/DButton;

    .line 208
    const-string p3, "ok_btn"

    invoke-direct {p0, p3}, Lim/doit/pro/ai/PromptListActivity;->id(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {v7, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lim/doit/pro/ui/component/DButton;

    .line 209
    new-instance v0, Lim/doit/pro/ai/PromptListActivity$5;

    invoke-direct {v0, p0, v6}, Lim/doit/pro/ai/PromptListActivity$5;-><init>(Lim/doit/pro/ai/PromptListActivity;Landroid/app/Dialog;)V

    invoke-virtual {p2, v0}, Lim/doit/pro/ui/component/DButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 212
    new-instance p2, Lim/doit/pro/ai/PromptListActivity$6;

    move-object v0, p2

    move-object v1, p0

    move-object v2, v6

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lim/doit/pro/ai/PromptListActivity$6;-><init>(Lim/doit/pro/ai/PromptListActivity;Landroid/app/Dialog;Landroid/widget/EditText;Landroid/widget/EditText;I)V

    invoke-virtual {p3, p2}, Lim/doit/pro/ui/component/DButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 229
    invoke-virtual {v6, v7}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 230
    invoke-virtual {v6}, Landroid/app/Dialog;->show()V

    .line 231
    return-void
.end method

.method private render()V
    .registers 14

    .line 55
    iget-object v0, p0, Lim/doit/pro/ai/PromptListActivity;->root:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 58
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 59
    const-string v1, "\uff0b \u65b0\u589e\u63d0\u793a\u8bcd"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    const/high16 v1, 0x41600000    # 14.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 61
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 62
    const/16 v2, 0x11

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 63
    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 64
    const v3, -0xed9d5f

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 65
    const/high16 v3, 0x41000000    # 8.0f

    invoke-direct {p0, v3}, Lim/doit/pro/ai/PromptListActivity;->dp(F)F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 66
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 67
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x42300000    # 44.0f

    invoke-direct {p0, v3}, Lim/doit/pro/ai/PromptListActivity;->dp(F)F

    move-result v3

    float-to-int v3, v3

    invoke-direct {v2, v1, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 68
    const/high16 v3, 0x41400000    # 12.0f

    invoke-direct {p0, v3}, Lim/doit/pro/ai/PromptListActivity;->dp(F)F

    move-result v3

    float-to-int v3, v3

    .line 69
    const/4 v4, 0x0

    invoke-virtual {v2, v3, v3, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 70
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 71
    new-instance v2, Lim/doit/pro/ai/PromptListActivity$1;

    invoke-direct {v2, p0}, Lim/doit/pro/ai/PromptListActivity$1;-><init>(Lim/doit/pro/ai/PromptListActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    iget-object v2, p0, Lim/doit/pro/ai/PromptListActivity;->root:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 77
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 78
    const-string v2, "\u70b9\u9009\u4efb\u610f\u4e00\u6761\u5207\u6362\u4e3a\u5f53\u524d\u4f7f\u7528\uff1b\u53f3\u4e0a\u89d2\u53ef\u7f16\u8f91\u3001\u5220\u9664\u3002"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    const/high16 v2, 0x41300000    # 11.0f

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 80
    const v2, -0x757576

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 81
    const/high16 v2, 0x41800000    # 16.0f

    invoke-direct {p0, v2}, Lim/doit/pro/ai/PromptListActivity;->dp(F)F

    move-result v3

    float-to-int v3, v3

    const/high16 v5, 0x41200000    # 10.0f

    invoke-direct {p0, v5}, Lim/doit/pro/ai/PromptListActivity;->dp(F)F

    move-result v5

    float-to-int v5, v5

    invoke-direct {p0, v2}, Lim/doit/pro/ai/PromptListActivity;->dp(F)F

    move-result v2

    float-to-int v2, v2

    const/high16 v6, 0x40800000    # 4.0f

    invoke-direct {p0, v6}, Lim/doit/pro/ai/PromptListActivity;->dp(F)F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {v0, v3, v5, v2, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 82
    iget-object v2, p0, Lim/doit/pro/ai/PromptListActivity;->root:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 84
    invoke-static {p0}, Lim/doit/pro/ai/AIAssistant;->currentPromptId(Landroid/content/Context;)I

    move-result v0

    .line 85
    invoke-static {p0}, Lim/doit/pro/ai/AIAssistant;->promptsJson(Landroid/content/Context;)Lorg/json/JSONArray;

    move-result-object v2

    .line 86
    const/4 v3, 0x0

    :goto_9b
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v3, v5, :cond_d4

    .line 87
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 88
    if-nez v5, :cond_a8

    goto :goto_d1

    .line 89
    :cond_a8
    const-string v6, "id"

    invoke-virtual {v5, v6, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v8

    .line 90
    const-string v6, "name"

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 91
    const-string v6, "body"

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 92
    const/4 v5, 0x1

    if-nez v8, :cond_c1

    const/4 v11, 0x1

    goto :goto_c2

    :cond_c1
    const/4 v11, 0x0

    .line 93
    :goto_c2
    iget-object v6, p0, Lim/doit/pro/ai/PromptListActivity;->root:Landroid/widget/LinearLayout;

    if-ne v8, v0, :cond_c8

    const/4 v12, 0x1

    goto :goto_c9

    :cond_c8
    const/4 v12, 0x0

    :goto_c9
    move-object v7, p0

    invoke-direct/range {v7 .. v12}, Lim/doit/pro/ai/PromptListActivity;->item(ILjava/lang/String;Ljava/lang/String;ZZ)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v6, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 86
    :goto_d1
    add-int/lit8 v3, v3, 0x1

    goto :goto_9b

    .line 95
    :cond_d4
    return-void
.end method

.method private res(Ljava/lang/String;Ljava/lang/String;)I
    .registers 5

    .line 34
    invoke-virtual {p0}, Lim/doit/pro/ai/PromptListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lim/doit/pro/ai/PromptListActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4

    .line 38
    invoke-super {p0, p1}, Lim/doit/pro/activity/DSwipeBackBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    const-string p1, "activity_prompt_list"

    const-string v0, "layout"

    invoke-direct {p0, p1, v0}, Lim/doit/pro/ai/PromptListActivity;->res(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lim/doit/pro/ai/PromptListActivity;->setContentView(I)V

    .line 41
    invoke-virtual {p0}, Lim/doit/pro/ai/PromptListActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    .line 42
    if-eqz p1, :cond_2d

    .line 43
    const-string v0, "prompt_list_title"

    const-string v1, "string"

    invoke-direct {p0, v0, v1}, Lim/doit/pro/ai/PromptListActivity;->res(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setTitle(I)V

    .line 44
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 45
    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 46
    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 47
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setDisplayUseLogoEnabled(Z)V

    .line 50
    :cond_2d
    const-string p1, "prompt_root"

    invoke-direct {p0, p1}, Lim/doit/pro/ai/PromptListActivity;->id(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lim/doit/pro/ai/PromptListActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lim/doit/pro/ai/PromptListActivity;->root:Landroid/widget/LinearLayout;

    .line 51
    invoke-direct {p0}, Lim/doit/pro/ai/PromptListActivity;->render()V

    .line 52
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4

    .line 257
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_e

    invoke-virtual {p0}, Lim/doit/pro/ai/PromptListActivity;->finish()V

    const/4 p1, 0x1

    return p1

    .line 258
    :cond_e
    invoke-super {p0, p1}, Lim/doit/pro/activity/DSwipeBackBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method
