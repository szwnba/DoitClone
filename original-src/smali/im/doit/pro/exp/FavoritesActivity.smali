.class public Lim/doit/pro/exp/FavoritesActivity;
.super Lim/doit/pro/activity/DSwipeBackBaseActivity;
.source "FavoritesActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lim/doit/pro/exp/FavoritesActivity$Fav;
    }
.end annotation


# static fields
.field private static final BLUE:I = -0xed9d5f

.field private static final PREFS:Ljava/lang/String; = "doit_favorites"

.field private static final TEXT_GRAY:I = -0x757576

.field private static final TEXT_MAIN:I = -0xcccccd


# instance fields
.field private favs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lim/doit/pro/exp/FavoritesActivity$Fav;",
            ">;"
        }
    .end annotation
.end field

.field private root:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 27
    invoke-direct {p0}, Lim/doit/pro/activity/DSwipeBackBaseActivity;-><init>()V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lim/doit/pro/exp/FavoritesActivity;->favs:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lim/doit/pro/exp/FavoritesActivity;)V
    .registers 1

    .line 27
    invoke-direct {p0}, Lim/doit/pro/exp/FavoritesActivity;->showAddDialog()V

    return-void
.end method

.method static synthetic access$100(Lim/doit/pro/exp/FavoritesActivity;I)V
    .registers 2

    .line 27
    invoke-direct {p0, p1}, Lim/doit/pro/exp/FavoritesActivity;->confirmDelete(I)V

    return-void
.end method

.method static synthetic access$200(Lim/doit/pro/exp/FavoritesActivity;Ljava/lang/String;)V
    .registers 2

    .line 27
    invoke-direct {p0, p1}, Lim/doit/pro/exp/FavoritesActivity;->openUrl(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lim/doit/pro/exp/FavoritesActivity;Ljava/lang/String;)V
    .registers 2

    .line 27
    invoke-direct {p0, p1}, Lim/doit/pro/exp/FavoritesActivity;->toast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lim/doit/pro/exp/FavoritesActivity;)Ljava/util/List;
    .registers 1

    .line 27
    iget-object p0, p0, Lim/doit/pro/exp/FavoritesActivity;->favs:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$500(Lim/doit/pro/exp/FavoritesActivity;)V
    .registers 1

    .line 27
    invoke-direct {p0}, Lim/doit/pro/exp/FavoritesActivity;->save()V

    return-void
.end method

.method static synthetic access$600(Lim/doit/pro/exp/FavoritesActivity;)V
    .registers 1

    .line 27
    invoke-direct {p0}, Lim/doit/pro/exp/FavoritesActivity;->render()V

    return-void
.end method

.method private confirmDelete(I)V
    .registers 7

    .line 228
    new-instance v0, Landroid/app/Dialog;

    const-string v1, "Theme.Doit.Light.Dialog"

    const-string v2, "style"

    invoke-direct {p0, v1, v2}, Lim/doit/pro/exp/FavoritesActivity;->res(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, p0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 229
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const-string v2, "dialog_ghs_confirm"

    const-string v3, "layout"

    invoke-direct {p0, v2, v3}, Lim/doit/pro/exp/FavoritesActivity;->res(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 230
    const-string v2, "title"

    invoke-direct {p0, v2}, Lim/doit/pro/exp/FavoritesActivity;->id(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const-string v3, "\u5220\u9664\u6536\u85cf"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 231
    const-string v2, "ghs_msg"

    invoke-direct {p0, v2}, Lim/doit/pro/exp/FavoritesActivity;->id(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u786e\u5b9a\u5220\u9664\u300c"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lim/doit/pro/exp/FavoritesActivity;->favs:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lim/doit/pro/exp/FavoritesActivity$Fav;

    iget-object v4, v4, Lim/doit/pro/exp/FavoritesActivity$Fav;->n:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\u300d\uff1f"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 232
    const-string v2, "cancel_btn"

    invoke-direct {p0, v2}, Lim/doit/pro/exp/FavoritesActivity;->id(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lim/doit/pro/ui/component/DButton;

    .line 233
    const-string v3, "ok_btn"

    invoke-direct {p0, v3}, Lim/doit/pro/exp/FavoritesActivity;->id(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lim/doit/pro/ui/component/DButton;

    .line 234
    new-instance v4, Lim/doit/pro/exp/FavoritesActivity$6;

    invoke-direct {v4, p0, v0}, Lim/doit/pro/exp/FavoritesActivity$6;-><init>(Lim/doit/pro/exp/FavoritesActivity;Landroid/app/Dialog;)V

    invoke-virtual {v2, v4}, Lim/doit/pro/ui/component/DButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 237
    new-instance v2, Lim/doit/pro/exp/FavoritesActivity$7;

    invoke-direct {v2, p0, v0, p1}, Lim/doit/pro/exp/FavoritesActivity$7;-><init>(Lim/doit/pro/exp/FavoritesActivity;Landroid/app/Dialog;I)V

    invoke-virtual {v3, v2}, Lim/doit/pro/ui/component/DButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 246
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 247
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 248
    return-void
.end method

.method private dp(F)F
    .registers 3

    .line 41
    invoke-virtual {p0}, Lim/doit/pro/exp/FavoritesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, p1

    return v0
.end method

.method private id(Ljava/lang/String;)I
    .registers 5

    .line 42
    invoke-virtual {p0}, Lim/doit/pro/exp/FavoritesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "id"

    invoke-virtual {p0}, Lim/doit/pro/exp/FavoritesActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method private load()V
    .registers 7

    .line 67
    const-string v0, ""

    iget-object v1, p0, Lim/doit/pro/exp/FavoritesActivity;->favs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 69
    :try_start_7
    const-string v1, "doit_favorites"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lim/doit/pro/exp/FavoritesActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 70
    const-string v3, "items"

    const-string v4, "[]"

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 71
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 72
    nop

    :goto_1c
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v2, v1, :cond_54

    .line 73
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 74
    new-instance v4, Lim/doit/pro/exp/FavoritesActivity$Fav;

    invoke-direct {v4}, Lim/doit/pro/exp/FavoritesActivity$Fav;-><init>()V

    .line 75
    const-string v5, "n"

    invoke-virtual {v1, v5, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lim/doit/pro/exp/FavoritesActivity$Fav;->n:Ljava/lang/String;

    .line 76
    const-string v5, "u"

    invoke-virtual {v1, v5, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lim/doit/pro/exp/FavoritesActivity$Fav;->u:Ljava/lang/String;

    .line 77
    iget-object v1, v4, Lim/doit/pro/exp/FavoritesActivity$Fav;->n:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_50

    iget-object v1, v4, Lim/doit/pro/exp/FavoritesActivity$Fav;->u:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_50

    iget-object v1, p0, Lim/doit/pro/exp/FavoritesActivity;->favs:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_50
    .catchall {:try_start_7 .. :try_end_50} :catchall_53

    .line 72
    :cond_50
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    .line 79
    :catchall_53
    move-exception v0

    :cond_54
    nop

    .line 80
    return-void
.end method

.method private openUrl(Ljava/lang/String;)V
    .registers 4

    .line 192
    :try_start_0
    const-string v0, "http"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    :goto_8
    goto :goto_1d

    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_8

    .line 193
    :goto_1d
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Lim/doit/pro/exp/FavoritesActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_2b
    .catchall {:try_start_0 .. :try_end_2b} :catchall_2c

    .line 196
    goto :goto_32

    .line 194
    :catchall_2c
    move-exception p1

    .line 195
    const-string p1, "\u65e0\u6cd5\u6253\u5f00\u94fe\u63a5"

    invoke-direct {p0, p1}, Lim/doit/pro/exp/FavoritesActivity;->toast(Ljava/lang/String;)V

    .line 197
    :goto_32
    return-void
.end method

.method private render()V
    .registers 17

    .line 93
    move-object/from16 v0, p0

    iget-object v1, v0, Lim/doit/pro/exp/FavoritesActivity;->root:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 95
    new-instance v1, Landroid/widget/Button;

    invoke-direct {v1, v0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 96
    const-string v2, "\uff0b \u65b0\u589e\u6536\u85cf"

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 97
    const/high16 v2, 0x41600000    # 14.0f

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextSize(F)V

    .line 98
    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 99
    const v3, -0xed9d5f

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 100
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x42300000    # 44.0f

    invoke-direct {v0, v5}, Lim/doit/pro/exp/FavoritesActivity;->dp(F)F

    move-result v5

    float-to-int v5, v5

    invoke-direct {v4, v2, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 101
    const/high16 v5, 0x41400000    # 12.0f

    invoke-direct {v0, v5}, Lim/doit/pro/exp/FavoritesActivity;->dp(F)F

    move-result v6

    float-to-int v6, v6

    .line 102
    const/4 v7, 0x0

    invoke-virtual {v4, v6, v6, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 103
    invoke-virtual {v1, v4}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 104
    new-instance v4, Lim/doit/pro/exp/FavoritesActivity$1;

    invoke-direct {v4, v0}, Lim/doit/pro/exp/FavoritesActivity$1;-><init>(Lim/doit/pro/exp/FavoritesActivity;)V

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    iget-object v4, v0, Lim/doit/pro/exp/FavoritesActivity;->root:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 109
    iget-object v1, v0, Lim/doit/pro/exp/FavoritesActivity;->favs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/16 v4, 0x11

    const v8, -0x757576

    if-eqz v1, :cond_7e

    .line 110
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 111
    const-string v2, "\u8fd8\u6ca1\u6709\u6536\u85cf\uff0c\u70b9\u4e0a\u65b9\u6309\u94ae\u6dfb\u52a0\n\uff08\u5e38\u7528\u7f51\u5740\u3001\u6587\u6863\u94fe\u63a5\u90fd\u884c\uff09"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    const/high16 v2, 0x41500000    # 13.0f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 113
    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 114
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 115
    const/high16 v2, 0x42200000    # 40.0f

    invoke-direct {v0, v2}, Lim/doit/pro/exp/FavoritesActivity;->dp(F)F

    move-result v3

    float-to-int v3, v3

    invoke-direct {v0, v2}, Lim/doit/pro/exp/FavoritesActivity;->dp(F)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v1, v7, v3, v7, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 116
    iget-object v2, v0, Lim/doit/pro/exp/FavoritesActivity;->root:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 117
    return-void

    .line 120
    :cond_7e
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 121
    const/4 v9, 0x1

    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 122
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 123
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v11, -0x2

    invoke-direct {v10, v2, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 124
    invoke-direct {v0, v5}, Lim/doit/pro/exp/FavoritesActivity;->dp(F)F

    move-result v12

    float-to-int v12, v12

    invoke-virtual {v10, v6, v12, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 125
    invoke-virtual {v1, v10}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 127
    const/4 v6, 0x0

    :goto_9c
    iget-object v10, v0, Lim/doit/pro/exp/FavoritesActivity;->favs:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-ge v6, v10, :cond_1cd

    .line 128
    nop

    .line 129
    iget-object v10, v0, Lim/doit/pro/exp/FavoritesActivity;->favs:Ljava/util/List;

    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lim/doit/pro/exp/FavoritesActivity$Fav;

    .line 130
    new-instance v12, Landroid/widget/LinearLayout;

    invoke-direct {v12, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 131
    invoke-virtual {v12, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 132
    const/16 v13, 0x10

    invoke-virtual {v12, v13}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 133
    invoke-direct {v0, v5}, Lim/doit/pro/exp/FavoritesActivity;->dp(F)F

    move-result v13

    float-to-int v13, v13

    const/high16 v14, 0x41200000    # 10.0f

    invoke-direct {v0, v14}, Lim/doit/pro/exp/FavoritesActivity;->dp(F)F

    move-result v15

    float-to-int v15, v15

    const/high16 v2, 0x41000000    # 8.0f

    invoke-direct {v0, v2}, Lim/doit/pro/exp/FavoritesActivity;->dp(F)F

    move-result v2

    float-to-int v2, v2

    invoke-direct {v0, v14}, Lim/doit/pro/exp/FavoritesActivity;->dp(F)F

    move-result v8

    float-to-int v8, v8

    invoke-virtual {v12, v13, v15, v2, v8}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 135
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 136
    iget-object v8, v10, Lim/doit/pro/exp/FavoritesActivity$Fav;->n:Ljava/lang/String;

    invoke-virtual {v8, v7, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 138
    const/high16 v8, 0x41700000    # 15.0f

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setTextSize(F)V

    .line 139
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 140
    const v13, -0x170f08

    invoke-virtual {v2, v13}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 141
    new-instance v13, Landroid/widget/FrameLayout$LayoutParams;

    const/high16 v15, 0x42080000    # 34.0f

    invoke-direct {v0, v15}, Lim/doit/pro/exp/FavoritesActivity;->dp(F)F

    move-result v3

    float-to-int v3, v3

    invoke-direct {v0, v15}, Lim/doit/pro/exp/FavoritesActivity;->dp(F)F

    move-result v15

    float-to-int v15, v15

    invoke-direct {v13, v3, v15}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 142
    invoke-virtual {v2, v13}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 144
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 145
    invoke-virtual {v3, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 146
    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v15, 0x3f800000    # 1.0f

    invoke-direct {v13, v7, v11, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 147
    invoke-direct {v0, v5}, Lim/doit/pro/exp/FavoritesActivity;->dp(F)F

    move-result v15

    float-to-int v15, v15

    iput v15, v13, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 148
    invoke-virtual {v3, v13}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 149
    new-instance v13, Landroid/widget/TextView;

    invoke-direct {v13, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 150
    iget-object v15, v10, Lim/doit/pro/exp/FavoritesActivity$Fav;->n:Ljava/lang/String;

    invoke-virtual {v13, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    invoke-virtual {v13, v8}, Landroid/widget/TextView;->setTextSize(F)V

    .line 152
    const v8, -0xcccccd

    invoke-virtual {v13, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 153
    new-instance v8, Landroid/widget/TextView;

    invoke-direct {v8, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 154
    iget-object v15, v10, Lim/doit/pro/exp/FavoritesActivity$Fav;->u:Ljava/lang/String;

    invoke-virtual {v8, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    const/high16 v15, 0x41300000    # 11.0f

    invoke-virtual {v8, v15}, Landroid/widget/TextView;->setTextSize(F)V

    .line 156
    const v15, -0x757576

    invoke-virtual {v8, v15}, Landroid/widget/TextView;->setTextColor(I)V

    .line 157
    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 158
    invoke-virtual {v3, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 159
    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 161
    new-instance v8, Landroid/widget/TextView;

    invoke-direct {v8, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 162
    const-string v13, "\u2715"

    invoke-virtual {v8, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    const/high16 v13, 0x41800000    # 16.0f

    invoke-virtual {v8, v13}, Landroid/widget/TextView;->setTextSize(F)V

    .line 164
    const v13, -0x333334

    invoke-virtual {v8, v13}, Landroid/widget/TextView;->setTextColor(I)V

    .line 165
    invoke-direct {v0, v14}, Lim/doit/pro/exp/FavoritesActivity;->dp(F)F

    move-result v13

    float-to-int v13, v13

    const/high16 v4, 0x40c00000    # 6.0f

    invoke-direct {v0, v4}, Lim/doit/pro/exp/FavoritesActivity;->dp(F)F

    move-result v5

    float-to-int v5, v5

    invoke-direct {v0, v14}, Lim/doit/pro/exp/FavoritesActivity;->dp(F)F

    move-result v14

    float-to-int v14, v14

    invoke-direct {v0, v4}, Lim/doit/pro/exp/FavoritesActivity;->dp(F)F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v8, v13, v5, v14, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 166
    new-instance v4, Lim/doit/pro/exp/FavoritesActivity$2;

    invoke-direct {v4, v0, v6}, Lim/doit/pro/exp/FavoritesActivity$2;-><init>(Lim/doit/pro/exp/FavoritesActivity;I)V

    invoke-virtual {v8, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    invoke-virtual {v12, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 171
    invoke-virtual {v12, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 172
    invoke-virtual {v12, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 173
    new-instance v2, Lim/doit/pro/exp/FavoritesActivity$3;

    invoke-direct {v2, v0, v10}, Lim/doit/pro/exp/FavoritesActivity$3;-><init>(Lim/doit/pro/exp/FavoritesActivity;Lim/doit/pro/exp/FavoritesActivity$Fav;)V

    invoke-virtual {v12, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 176
    invoke-virtual {v1, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 178
    iget-object v2, v0, Lim/doit/pro/exp/FavoritesActivity;->favs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v9

    if-ge v6, v2, :cond_1bd

    .line 179
    new-instance v2, Landroid/view/View;

    invoke-direct {v2, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 180
    const/high16 v3, 0x11000000

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 181
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 182
    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1be

    .line 178
    :cond_1bd
    const/4 v4, -0x1

    .line 127
    :goto_1be
    add-int/lit8 v6, v6, 0x1

    const/4 v2, -0x1

    const v3, -0xed9d5f

    const/16 v4, 0x11

    const/high16 v5, 0x41400000    # 12.0f

    const v8, -0x757576

    goto/16 :goto_9c

    .line 185
    :cond_1cd
    iget-object v2, v0, Lim/doit/pro/exp/FavoritesActivity;->root:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 186
    return-void
.end method

.method private res(Ljava/lang/String;Ljava/lang/String;)I
    .registers 5

    .line 43
    invoke-virtual {p0}, Lim/doit/pro/exp/FavoritesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lim/doit/pro/exp/FavoritesActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method private save()V
    .registers 7

    .line 84
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 85
    iget-object v1, p0, Lim/doit/pro/exp/FavoritesActivity;->favs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_30

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lim/doit/pro/exp/FavoritesActivity$Fav;

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "n"

    iget-object v5, v2, Lim/doit/pro/exp/FavoritesActivity$Fav;->n:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "u"

    iget-object v2, v2, Lim/doit/pro/exp/FavoritesActivity$Fav;->u:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_b

    .line 86
    :cond_30
    const-string v1, "doit_favorites"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lim/doit/pro/exp/FavoritesActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "items"

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_48
    .catchall {:try_start_0 .. :try_end_48} :catchall_49

    goto :goto_4a

    .line 87
    :catchall_49
    move-exception v0

    :goto_4a
    nop

    .line 88
    return-void
.end method

.method private showAddDialog()V
    .registers 8

    .line 200
    new-instance v0, Landroid/app/Dialog;

    const-string v1, "Theme.Doit.Light.Dialog"

    const-string v2, "style"

    invoke-direct {p0, v1, v2}, Lim/doit/pro/exp/FavoritesActivity;->res(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, p0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 201
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const-string v2, "dialog_fav_add"

    const-string v3, "layout"

    invoke-direct {p0, v2, v3}, Lim/doit/pro/exp/FavoritesActivity;->res(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 202
    const-string v2, "fav_name"

    invoke-direct {p0, v2}, Lim/doit/pro/exp/FavoritesActivity;->id(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 203
    const-string v3, "fav_url"

    invoke-direct {p0, v3}, Lim/doit/pro/exp/FavoritesActivity;->id(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 204
    const-string v4, "cancel_btn"

    invoke-direct {p0, v4}, Lim/doit/pro/exp/FavoritesActivity;->id(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lim/doit/pro/ui/component/DButton;

    .line 205
    const-string v5, "ok_btn"

    invoke-direct {p0, v5}, Lim/doit/pro/exp/FavoritesActivity;->id(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lim/doit/pro/ui/component/DButton;

    .line 206
    new-instance v6, Lim/doit/pro/exp/FavoritesActivity$4;

    invoke-direct {v6, p0, v0}, Lim/doit/pro/exp/FavoritesActivity$4;-><init>(Lim/doit/pro/exp/FavoritesActivity;Landroid/app/Dialog;)V

    invoke-virtual {v4, v6}, Lim/doit/pro/ui/component/DButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 209
    new-instance v4, Lim/doit/pro/exp/FavoritesActivity$5;

    invoke-direct {v4, p0, v0, v2, v3}, Lim/doit/pro/exp/FavoritesActivity$5;-><init>(Lim/doit/pro/exp/FavoritesActivity;Landroid/app/Dialog;Landroid/widget/EditText;Landroid/widget/EditText;)V

    invoke-virtual {v5, v4}, Lim/doit/pro/ui/component/DButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 223
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 224
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 225
    return-void
.end method

.method private toast(Ljava/lang/String;)V
    .registers 3

    .line 251
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 252
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4

    .line 47
    invoke-super {p0, p1}, Lim/doit/pro/activity/DSwipeBackBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    const-string p1, "activity_favorites"

    const-string v0, "layout"

    invoke-direct {p0, p1, v0}, Lim/doit/pro/exp/FavoritesActivity;->res(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lim/doit/pro/exp/FavoritesActivity;->setContentView(I)V

    .line 50
    invoke-virtual {p0}, Lim/doit/pro/exp/FavoritesActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    .line 51
    if-eqz p1, :cond_2d

    .line 52
    const-string v0, "fav_title"

    const-string v1, "string"

    invoke-direct {p0, v0, v1}, Lim/doit/pro/exp/FavoritesActivity;->res(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setTitle(I)V

    .line 53
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 54
    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 55
    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 56
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setDisplayUseLogoEnabled(Z)V

    .line 59
    :cond_2d
    const-string p1, "fav_root"

    invoke-direct {p0, p1}, Lim/doit/pro/exp/FavoritesActivity;->id(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lim/doit/pro/exp/FavoritesActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lim/doit/pro/exp/FavoritesActivity;->root:Landroid/widget/LinearLayout;

    .line 60
    invoke-direct {p0}, Lim/doit/pro/exp/FavoritesActivity;->load()V

    .line 61
    invoke-direct {p0}, Lim/doit/pro/exp/FavoritesActivity;->render()V

    .line 62
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4

    .line 256
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_e

    invoke-virtual {p0}, Lim/doit/pro/exp/FavoritesActivity;->finish()V

    const/4 p1, 0x1

    return p1

    .line 257
    :cond_e
    invoke-super {p0, p1}, Lim/doit/pro/activity/DSwipeBackBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method
