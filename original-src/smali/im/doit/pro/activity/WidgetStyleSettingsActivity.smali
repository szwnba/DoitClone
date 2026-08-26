.class public Lim/doit/pro/activity/WidgetStyleSettingsActivity;
.super Lim/doit/pro/activity/BaseActivity;
.source "WidgetStyleSettingsActivity.java"


# instance fields
.field private final backgroundColorMenuNames:[Ljava/lang/String;

.field private final backgroundColorValues:[Ljava/lang/String;

.field private mBackgroundAlphaView:Landroid/widget/SeekBar;

.field private mBackgroundColorView:Lim/doit/pro/ui/component/LabelTextView;

.field private mTextSizeView:Lim/doit/pro/ui/component/LabelTextView;

.field private onBackgroundColorClick:Lim/doit/pro/activity/listener/OnLayoutClickListener;

.field private onTextSizeClick:Lim/doit/pro/activity/listener/OnLayoutClickListener;

.field private final textSizeMenuNames:[Ljava/lang/String;

.field private final textSizeValues:[F


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 19
    invoke-direct {p0}, Lim/doit/pro/activity/BaseActivity;-><init>()V

    .line 21
    new-array v0, v5, [Ljava/lang/String;

    .line 22
    const v1, 0x7f0c0129

    invoke-static {v1}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    .line 23
    const v1, 0x7f0c012a

    invoke-static {v1}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    .line 24
    const v1, 0x7f0c012b

    invoke-static {v1}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    iput-object v0, p0, Lim/doit/pro/activity/WidgetStyleSettingsActivity;->textSizeMenuNames:[Ljava/lang/String;

    .line 25
    new-array v0, v5, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lim/doit/pro/activity/WidgetStyleSettingsActivity;->textSizeValues:[F

    .line 26
    new-array v0, v4, [Ljava/lang/String;

    .line 27
    const v1, 0x7f0c012d

    invoke-static {v1}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    const v1, 0x7f0c012c

    invoke-static {v1}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    iput-object v0, p0, Lim/doit/pro/activity/WidgetStyleSettingsActivity;->backgroundColorMenuNames:[Ljava/lang/String;

    .line 28
    new-array v0, v4, [Ljava/lang/String;

    .line 29
    const-string v1, "#ffffff"

    aput-object v1, v0, v2

    const-string v1, "#000000"

    aput-object v1, v0, v3

    iput-object v0, p0, Lim/doit/pro/activity/WidgetStyleSettingsActivity;->backgroundColorValues:[Ljava/lang/String;

    .line 136
    new-instance v0, Lim/doit/pro/activity/WidgetStyleSettingsActivity$1;

    invoke-direct {v0, p0}, Lim/doit/pro/activity/WidgetStyleSettingsActivity$1;-><init>(Lim/doit/pro/activity/WidgetStyleSettingsActivity;)V

    iput-object v0, p0, Lim/doit/pro/activity/WidgetStyleSettingsActivity;->onTextSizeClick:Lim/doit/pro/activity/listener/OnLayoutClickListener;

    .line 154
    new-instance v0, Lim/doit/pro/activity/WidgetStyleSettingsActivity$2;

    invoke-direct {v0, p0}, Lim/doit/pro/activity/WidgetStyleSettingsActivity$2;-><init>(Lim/doit/pro/activity/WidgetStyleSettingsActivity;)V

    iput-object v0, p0, Lim/doit/pro/activity/WidgetStyleSettingsActivity;->onBackgroundColorClick:Lim/doit/pro/activity/listener/OnLayoutClickListener;

    .line 19
    return-void

    .line 25
    :array_0
    .array-data 4
        0x3f900000    # 1.125f
        0x3f800000    # 1.0f
        0x3f600000    # 0.875f
    .end array-data
.end method

.method static synthetic access$0(Lim/doit/pro/activity/WidgetStyleSettingsActivity;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lim/doit/pro/activity/WidgetStyleSettingsActivity;->textSizeMenuNames:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lim/doit/pro/activity/WidgetStyleSettingsActivity;)[F
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lim/doit/pro/activity/WidgetStyleSettingsActivity;->textSizeValues:[F

    return-object v0
.end method

.method static synthetic access$2(Lim/doit/pro/activity/WidgetStyleSettingsActivity;)V
    .locals 0

    .prologue
    .line 104
    invoke-direct {p0}, Lim/doit/pro/activity/WidgetStyleSettingsActivity;->setTextSizeViewContent()V

    return-void
.end method

.method static synthetic access$3(Lim/doit/pro/activity/WidgetStyleSettingsActivity;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lim/doit/pro/activity/WidgetStyleSettingsActivity;->backgroundColorMenuNames:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4(Lim/doit/pro/activity/WidgetStyleSettingsActivity;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lim/doit/pro/activity/WidgetStyleSettingsActivity;->backgroundColorValues:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5(Lim/doit/pro/activity/WidgetStyleSettingsActivity;)V
    .locals 0

    .prologue
    .line 94
    invoke-direct {p0}, Lim/doit/pro/activity/WidgetStyleSettingsActivity;->setBackgroundColorViewContent()V

    return-void
.end method

.method private init()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Lim/doit/pro/activity/WidgetStyleSettingsActivity;->initView()V

    .line 62
    invoke-direct {p0}, Lim/doit/pro/activity/WidgetStyleSettingsActivity;->initViewContent()V

    .line 63
    invoke-direct {p0}, Lim/doit/pro/activity/WidgetStyleSettingsActivity;->initListener()V

    .line 64
    return-void
.end method

.method private initActionBar()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 75
    invoke-virtual {p0}, Lim/doit/pro/activity/WidgetStyleSettingsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 76
    .local v0, "actionBar":Landroid/app/ActionBar;
    const v1, 0x7f0c023b

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    .line 77
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 78
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 79
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 80
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayUseLogoEnabled(Z)V

    .line 81
    return-void
.end method

.method private initListener()V
    .locals 2

    .prologue
    .line 115
    iget-object v0, p0, Lim/doit/pro/activity/WidgetStyleSettingsActivity;->mTextSizeView:Lim/doit/pro/ui/component/LabelTextView;

    iget-object v1, p0, Lim/doit/pro/activity/WidgetStyleSettingsActivity;->onTextSizeClick:Lim/doit/pro/activity/listener/OnLayoutClickListener;

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/LabelTextView;->setOnLayoutClickListener(Lim/doit/pro/activity/listener/OnLayoutClickListener;)V

    .line 116
    iget-object v0, p0, Lim/doit/pro/activity/WidgetStyleSettingsActivity;->mBackgroundColorView:Lim/doit/pro/ui/component/LabelTextView;

    iget-object v1, p0, Lim/doit/pro/activity/WidgetStyleSettingsActivity;->onBackgroundColorClick:Lim/doit/pro/activity/listener/OnLayoutClickListener;

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/LabelTextView;->setOnLayoutClickListener(Lim/doit/pro/activity/listener/OnLayoutClickListener;)V

    .line 117
    iget-object v0, p0, Lim/doit/pro/activity/WidgetStyleSettingsActivity;->mBackgroundAlphaView:Landroid/widget/SeekBar;

    .line 118
    new-instance v1, Lim/doit/pro/activity/WidgetStyleSettingsActivity$3;

    invoke-direct {v1, p0}, Lim/doit/pro/activity/WidgetStyleSettingsActivity$3;-><init>(Lim/doit/pro/activity/WidgetStyleSettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 134
    return-void
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 67
    invoke-direct {p0}, Lim/doit/pro/activity/WidgetStyleSettingsActivity;->initActionBar()V

    .line 68
    const v0, 0x7f0b0101

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/WidgetStyleSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lim/doit/pro/ui/component/LabelTextView;

    iput-object v0, p0, Lim/doit/pro/activity/WidgetStyleSettingsActivity;->mTextSizeView:Lim/doit/pro/ui/component/LabelTextView;

    .line 69
    const v0, 0x7f0b0102

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/WidgetStyleSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lim/doit/pro/ui/component/LabelTextView;

    iput-object v0, p0, Lim/doit/pro/activity/WidgetStyleSettingsActivity;->mBackgroundColorView:Lim/doit/pro/ui/component/LabelTextView;

    .line 70
    iget-object v0, p0, Lim/doit/pro/activity/WidgetStyleSettingsActivity;->mBackgroundColorView:Lim/doit/pro/ui/component/LabelTextView;

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/LabelTextView;->setBackgroundResource(I)V

    .line 71
    const v0, 0x7f0b0103

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/WidgetStyleSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lim/doit/pro/activity/WidgetStyleSettingsActivity;->mBackgroundAlphaView:Landroid/widget/SeekBar;

    .line 72
    return-void
.end method

.method private initViewContent()V
    .locals 0

    .prologue
    .line 84
    invoke-direct {p0}, Lim/doit/pro/activity/WidgetStyleSettingsActivity;->setTextSizeViewContent()V

    .line 85
    invoke-direct {p0}, Lim/doit/pro/activity/WidgetStyleSettingsActivity;->setBackgroundColorViewContent()V

    .line 86
    invoke-direct {p0}, Lim/doit/pro/activity/WidgetStyleSettingsActivity;->setBackgroundAlphaViewContent()V

    .line 87
    return-void
.end method

.method private setBackgroundAlphaViewContent()V
    .locals 2

    .prologue
    .line 90
    invoke-static {}, Lim/doit/pro/utils/LocalSettings;->getWidgetBGAlpha()I

    move-result v0

    .line 91
    .local v0, "bgAlpha":I
    iget-object v1, p0, Lim/doit/pro/activity/WidgetStyleSettingsActivity;->mBackgroundAlphaView:Landroid/widget/SeekBar;

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 92
    return-void
.end method

.method private setBackgroundColorViewContent()V
    .locals 4

    .prologue
    .line 95
    invoke-static {}, Lim/doit/pro/utils/LocalSettings;->getWidgetBGColor()Ljava/lang/String;

    move-result-object v0

    .line 96
    .local v0, "bgColor":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lim/doit/pro/activity/WidgetStyleSettingsActivity;->backgroundColorValues:[Ljava/lang/String;

    array-length v2, v2

    if-lt v1, v2, :cond_0

    .line 102
    :goto_1
    return-void

    .line 97
    :cond_0
    iget-object v2, p0, Lim/doit/pro/activity/WidgetStyleSettingsActivity;->backgroundColorValues:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 98
    iget-object v2, p0, Lim/doit/pro/activity/WidgetStyleSettingsActivity;->mBackgroundColorView:Lim/doit/pro/ui/component/LabelTextView;

    iget-object v3, p0, Lim/doit/pro/activity/WidgetStyleSettingsActivity;->backgroundColorMenuNames:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Lim/doit/pro/ui/component/LabelTextView;->setText(Ljava/lang/String;)V

    goto :goto_1

    .line 96
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private setTextSizeViewContent()V
    .locals 4

    .prologue
    .line 105
    invoke-static {}, Lim/doit/pro/utils/LocalSettings;->getWidgetFontScale()F

    move-result v0

    .line 106
    .local v0, "fontScale":F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lim/doit/pro/activity/WidgetStyleSettingsActivity;->textSizeValues:[F

    array-length v2, v2

    if-lt v1, v2, :cond_0

    .line 112
    :goto_1
    return-void

    .line 107
    :cond_0
    iget-object v2, p0, Lim/doit/pro/activity/WidgetStyleSettingsActivity;->textSizeValues:[F

    aget v2, v2, v1

    cmpl-float v2, v2, v0

    if-nez v2, :cond_1

    .line 108
    iget-object v2, p0, Lim/doit/pro/activity/WidgetStyleSettingsActivity;->mTextSizeView:Lim/doit/pro/ui/component/LabelTextView;

    iget-object v3, p0, Lim/doit/pro/activity/WidgetStyleSettingsActivity;->textSizeMenuNames:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Lim/doit/pro/ui/component/LabelTextView;->setText(Ljava/lang/String;)V

    goto :goto_1

    .line 106
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 48
    invoke-super {p0, p1}, Lim/doit/pro/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    const v0, 0x7f03004d

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/WidgetStyleSettingsActivity;->setContentView(I)V

    .line 50
    invoke-direct {p0}, Lim/doit/pro/activity/WidgetStyleSettingsActivity;->init()V

    .line 51
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 37
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 42
    invoke-super {p0, p1}, Lim/doit/pro/activity/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 39
    :pswitch_0
    invoke-virtual {p0}, Lim/doit/pro/activity/WidgetStyleSettingsActivity;->finish()V

    .line 40
    const/4 v0, 0x1

    goto :goto_0

    .line 37
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 56
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->refreshWidget()V

    .line 57
    invoke-super {p0}, Lim/doit/pro/activity/BaseActivity;->onPause()V

    .line 58
    return-void
.end method
