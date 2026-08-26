.class public Lim/doit/pro/activity/StartDailyPlanDialog;
.super Lim/doit/pro/activity/BaseActivity;
.source "StartDailyPlanDialog.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lim/doit/pro/activity/BaseActivity;-><init>()V

    return-void
.end method

.method private initContentViewWidth()V
    .locals 10

    .prologue
    .line 116
    invoke-virtual {p0}, Lim/doit/pro/activity/StartDailyPlanDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    .line 117
    .local v4, "win":Landroid/view/Window;
    invoke-virtual {p0}, Lim/doit/pro/activity/StartDailyPlanDialog;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    .line 118
    .local v1, "m":Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 119
    .local v0, "d":Landroid/view/Display;
    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .line 120
    .local v3, "p":Landroid/view/WindowManager$LayoutParams;
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 121
    .local v2, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {v0, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 122
    iget v5, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v6, v5

    const-wide v8, 0x3fee666666666666L    # 0.95

    mul-double/2addr v6, v8

    double-to-int v5, v6

    iput v5, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 123
    invoke-virtual {v4, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 124
    const/16 v5, 0x11

    invoke-virtual {v4, v5}, Landroid/view/Window;->setGravity(I)V

    .line 125
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    .line 33
    invoke-super {p0, p1}, Lim/doit/pro/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    const v4, 0x7f030050

    invoke-virtual {p0, v4}, Lim/doit/pro/activity/StartDailyPlanDialog;->setContentView(I)V

    .line 36
    invoke-direct {p0}, Lim/doit/pro/activity/StartDailyPlanDialog;->initContentViewWidth()V

    .line 38
    const v4, 0x7f0b010e

    invoke-virtual {p0, v4}, Lim/doit/pro/activity/StartDailyPlanDialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 39
    const v4, 0x7f0b0107

    invoke-virtual {p0, v4}, Lim/doit/pro/activity/StartDailyPlanDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 40
    .local v0, "bodyView":Landroid/widget/TextView;
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 41
    const v4, 0x7f0c0094

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    .line 43
    const v4, 0x7f0b0106

    invoke-virtual {p0, v4}, Lim/doit/pro/activity/StartDailyPlanDialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 45
    const v4, 0x7f0b0109

    invoke-virtual {p0, v4}, Lim/doit/pro/activity/StartDailyPlanDialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 46
    const v4, 0x7f0b010a

    invoke-virtual {p0, v4}, Lim/doit/pro/activity/StartDailyPlanDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 47
    .local v3, "positiveBtn":Landroid/widget/Button;
    const v4, 0x7f0c0023

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(I)V

    .line 48
    new-instance v4, Lim/doit/pro/activity/StartDailyPlanDialog$1;

    invoke-direct {v4, p0}, Lim/doit/pro/activity/StartDailyPlanDialog$1;-><init>(Lim/doit/pro/activity/StartDailyPlanDialog;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    const v4, 0x7f0b010b

    invoke-virtual {p0, v4}, Lim/doit/pro/activity/StartDailyPlanDialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 62
    const v4, 0x7f0b010c

    invoke-virtual {p0, v4}, Lim/doit/pro/activity/StartDailyPlanDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 63
    .local v2, "neutralBtn":Landroid/widget/Button;
    const v4, 0x7f0c0047

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setText(I)V

    .line 64
    new-instance v4, Lim/doit/pro/activity/StartDailyPlanDialog$2;

    invoke-direct {v4, p0}, Lim/doit/pro/activity/StartDailyPlanDialog$2;-><init>(Lim/doit/pro/activity/StartDailyPlanDialog;)V

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    const v4, 0x7f0b010d

    invoke-virtual {p0, v4}, Lim/doit/pro/activity/StartDailyPlanDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 91
    .local v1, "negativeBtn":Landroid/widget/Button;
    invoke-virtual {v1, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 92
    const v4, 0x7f0c0024

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setText(I)V

    .line 93
    new-instance v4, Lim/doit/pro/activity/StartDailyPlanDialog$3;

    invoke-direct {v4, p0}, Lim/doit/pro/activity/StartDailyPlanDialog$3;-><init>(Lim/doit/pro/activity/StartDailyPlanDialog;)V

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 111
    const/4 v0, 0x0

    invoke-static {v0}, Lim/doit/pro/activity/DoitApp;->setDailyPlaning(Z)V

    .line 112
    invoke-super {p0}, Lim/doit/pro/activity/BaseActivity;->onPause()V

    .line 113
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 105
    invoke-super {p0}, Lim/doit/pro/activity/BaseActivity;->onResume()V

    .line 106
    const/4 v0, 0x1

    invoke-static {v0}, Lim/doit/pro/activity/DoitApp;->setDailyPlaning(Z)V

    .line 107
    return-void
.end method
