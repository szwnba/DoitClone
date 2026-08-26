.class public Lim/doit/pro/activity/ViewNotesActivity;
.super Lim/doit/pro/activity/DSwipeBackFragmentActivity;
.source "ViewNotesActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lim/doit/pro/activity/ViewNotesActivity$PagerAdapter;
    }
.end annotation


# instance fields
.field private mAdapter:Lim/doit/pro/activity/ViewNotesActivity$PagerAdapter;

.field private mCancelBtn:Landroid/widget/Button;

.field private mCurrentPage:I

.field private mNextBtn:Landroid/widget/ImageButton;

.field private mPreBtn:Landroid/widget/ImageButton;

.field private mRefreshBtn:Landroid/widget/ImageButton;

.field private mViewPager:Landroid/support/v4/view/ViewPager;

.field private onCancelClick:Landroid/view/View$OnClickListener;

.field private onNextClick:Landroid/view/View$OnClickListener;

.field private onPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

.field private onPreClick:Landroid/view/View$OnClickListener;

.field private onRefreshClick:Landroid/view/View$OnClickListener;

.field private sharedUrls:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Lim/doit/pro/activity/DSwipeBackFragmentActivity;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lim/doit/pro/activity/ViewNotesActivity;->mCurrentPage:I

    .line 97
    new-instance v0, Lim/doit/pro/activity/ViewNotesActivity$1;

    invoke-direct {v0, p0}, Lim/doit/pro/activity/ViewNotesActivity$1;-><init>(Lim/doit/pro/activity/ViewNotesActivity;)V

    iput-object v0, p0, Lim/doit/pro/activity/ViewNotesActivity;->onCancelClick:Landroid/view/View$OnClickListener;

    .line 105
    new-instance v0, Lim/doit/pro/activity/ViewNotesActivity$2;

    invoke-direct {v0, p0}, Lim/doit/pro/activity/ViewNotesActivity$2;-><init>(Lim/doit/pro/activity/ViewNotesActivity;)V

    iput-object v0, p0, Lim/doit/pro/activity/ViewNotesActivity;->onPreClick:Landroid/view/View$OnClickListener;

    .line 114
    new-instance v0, Lim/doit/pro/activity/ViewNotesActivity$3;

    invoke-direct {v0, p0}, Lim/doit/pro/activity/ViewNotesActivity$3;-><init>(Lim/doit/pro/activity/ViewNotesActivity;)V

    iput-object v0, p0, Lim/doit/pro/activity/ViewNotesActivity;->onNextClick:Landroid/view/View$OnClickListener;

    .line 123
    new-instance v0, Lim/doit/pro/activity/ViewNotesActivity$4;

    invoke-direct {v0, p0}, Lim/doit/pro/activity/ViewNotesActivity$4;-><init>(Lim/doit/pro/activity/ViewNotesActivity;)V

    iput-object v0, p0, Lim/doit/pro/activity/ViewNotesActivity;->onRefreshClick:Landroid/view/View$OnClickListener;

    .line 180
    new-instance v0, Lim/doit/pro/activity/ViewNotesActivity$5;

    invoke-direct {v0, p0}, Lim/doit/pro/activity/ViewNotesActivity$5;-><init>(Lim/doit/pro/activity/ViewNotesActivity;)V

    iput-object v0, p0, Lim/doit/pro/activity/ViewNotesActivity;->onPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 26
    return-void
.end method

.method static synthetic access$0(Lim/doit/pro/activity/ViewNotesActivity;)I
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lim/doit/pro/activity/ViewNotesActivity;->mCurrentPage:I

    return v0
.end method

.method static synthetic access$1(Lim/doit/pro/activity/ViewNotesActivity;I)V
    .locals 0

    .prologue
    .line 29
    iput p1, p0, Lim/doit/pro/activity/ViewNotesActivity;->mCurrentPage:I

    return-void
.end method

.method static synthetic access$2(Lim/doit/pro/activity/ViewNotesActivity;)Landroid/support/v4/view/ViewPager;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lim/doit/pro/activity/ViewNotesActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method static synthetic access$3(Lim/doit/pro/activity/ViewNotesActivity;)Lim/doit/pro/activity/ViewNotesActivity$PagerAdapter;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lim/doit/pro/activity/ViewNotesActivity;->mAdapter:Lim/doit/pro/activity/ViewNotesActivity$PagerAdapter;

    return-object v0
.end method

.method static synthetic access$4(Lim/doit/pro/activity/ViewNotesActivity;)V
    .locals 0

    .prologue
    .line 198
    invoke-direct {p0}, Lim/doit/pro/activity/ViewNotesActivity;->setBottomBtnStatus()V

    return-void
.end method

.method static synthetic access$5(Lim/doit/pro/activity/ViewNotesActivity;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lim/doit/pro/activity/ViewNotesActivity;->sharedUrls:Ljava/util/ArrayList;

    return-object v0
.end method

.method private init()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lim/doit/pro/activity/ViewNotesActivity;->initData()V

    .line 47
    invoke-direct {p0}, Lim/doit/pro/activity/ViewNotesActivity;->initView()V

    .line 48
    invoke-direct {p0}, Lim/doit/pro/activity/ViewNotesActivity;->initViewContent()V

    .line 49
    invoke-direct {p0}, Lim/doit/pro/activity/ViewNotesActivity;->initListener()V

    .line 50
    return-void
.end method

.method private initActionBar()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 71
    invoke-virtual {p0}, Lim/doit/pro/activity/ViewNotesActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 73
    .local v0, "actionBar":Landroid/app/ActionBar;
    const v1, 0x7f020048

    invoke-static {v1}, Lim/doit/pro/activity/utils/ViewUtils;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 72
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 74
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 75
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 76
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 77
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayUseLogoEnabled(Z)V

    .line 78
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 79
    const v1, 0x7f0300a1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setCustomView(I)V

    .line 80
    return-void
.end method

.method private initData()V
    .locals 4

    .prologue
    .line 53
    invoke-virtual {p0}, Lim/doit/pro/activity/ViewNotesActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "shared_urls"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 54
    .local v0, "arrs":[Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lim/doit/pro/activity/ViewNotesActivity;->sharedUrls:Ljava/util/ArrayList;

    .line 55
    if-eqz v0, :cond_0

    .line 56
    iget-object v1, p0, Lim/doit/pro/activity/ViewNotesActivity;->sharedUrls:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 58
    :cond_0
    invoke-virtual {p0}, Lim/doit/pro/activity/ViewNotesActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "position"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lim/doit/pro/activity/ViewNotesActivity;->mCurrentPage:I

    .line 59
    return-void
.end method

.method private initListener()V
    .locals 2

    .prologue
    .line 90
    iget-object v0, p0, Lim/doit/pro/activity/ViewNotesActivity;->mCancelBtn:Landroid/widget/Button;

    iget-object v1, p0, Lim/doit/pro/activity/ViewNotesActivity;->onCancelClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    iget-object v0, p0, Lim/doit/pro/activity/ViewNotesActivity;->mPreBtn:Landroid/widget/ImageButton;

    iget-object v1, p0, Lim/doit/pro/activity/ViewNotesActivity;->onPreClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    iget-object v0, p0, Lim/doit/pro/activity/ViewNotesActivity;->mNextBtn:Landroid/widget/ImageButton;

    iget-object v1, p0, Lim/doit/pro/activity/ViewNotesActivity;->onNextClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    iget-object v0, p0, Lim/doit/pro/activity/ViewNotesActivity;->mRefreshBtn:Landroid/widget/ImageButton;

    iget-object v1, p0, Lim/doit/pro/activity/ViewNotesActivity;->onRefreshClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    iget-object v0, p0, Lim/doit/pro/activity/ViewNotesActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lim/doit/pro/activity/ViewNotesActivity;->onPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 95
    return-void
.end method

.method private initView()V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Lim/doit/pro/activity/ViewNotesActivity;->initActionBar()V

    .line 63
    const v0, 0x7f0b0092

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/ViewNotesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lim/doit/pro/activity/ViewNotesActivity;->mCancelBtn:Landroid/widget/Button;

    .line 64
    const v0, 0x7f0b00fe

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/ViewNotesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lim/doit/pro/activity/ViewNotesActivity;->mPreBtn:Landroid/widget/ImageButton;

    .line 65
    const v0, 0x7f0b00ff

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/ViewNotesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lim/doit/pro/activity/ViewNotesActivity;->mNextBtn:Landroid/widget/ImageButton;

    .line 66
    const v0, 0x7f0b0100

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/ViewNotesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lim/doit/pro/activity/ViewNotesActivity;->mRefreshBtn:Landroid/widget/ImageButton;

    .line 67
    const v0, 0x7f0b0070

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/ViewNotesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lim/doit/pro/activity/ViewNotesActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 68
    return-void
.end method

.method private initViewContent()V
    .locals 2

    .prologue
    .line 83
    new-instance v0, Lim/doit/pro/activity/ViewNotesActivity$PagerAdapter;

    invoke-virtual {p0}, Lim/doit/pro/activity/ViewNotesActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lim/doit/pro/activity/ViewNotesActivity$PagerAdapter;-><init>(Lim/doit/pro/activity/ViewNotesActivity;Landroid/support/v4/app/FragmentManager;)V

    iput-object v0, p0, Lim/doit/pro/activity/ViewNotesActivity;->mAdapter:Lim/doit/pro/activity/ViewNotesActivity$PagerAdapter;

    .line 84
    iget-object v0, p0, Lim/doit/pro/activity/ViewNotesActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lim/doit/pro/activity/ViewNotesActivity;->mAdapter:Lim/doit/pro/activity/ViewNotesActivity$PagerAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 85
    iget-object v0, p0, Lim/doit/pro/activity/ViewNotesActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget v1, p0, Lim/doit/pro/activity/ViewNotesActivity;->mCurrentPage:I

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 86
    invoke-direct {p0}, Lim/doit/pro/activity/ViewNotesActivity;->setBottomBtnStatus()V

    .line 87
    return-void
.end method

.method private setBottomBtnStatus()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 199
    iget v0, p0, Lim/doit/pro/activity/ViewNotesActivity;->mCurrentPage:I

    if-gtz v0, :cond_0

    .line 200
    iget-object v0, p0, Lim/doit/pro/activity/ViewNotesActivity;->mPreBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 204
    :goto_0
    iget v0, p0, Lim/doit/pro/activity/ViewNotesActivity;->mCurrentPage:I

    iget-object v1, p0, Lim/doit/pro/activity/ViewNotesActivity;->sharedUrls:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-lt v0, v1, :cond_1

    .line 205
    iget-object v0, p0, Lim/doit/pro/activity/ViewNotesActivity;->mNextBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 209
    :goto_1
    return-void

    .line 202
    :cond_0
    iget-object v0, p0, Lim/doit/pro/activity/ViewNotesActivity;->mPreBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto :goto_0

    .line 207
    :cond_1
    iget-object v0, p0, Lim/doit/pro/activity/ViewNotesActivity;->mNextBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto :goto_1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 40
    invoke-super {p0, p1}, Lim/doit/pro/activity/DSwipeBackFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    const v0, 0x7f03004c

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/ViewNotesActivity;->setContentView(I)V

    .line 42
    invoke-direct {p0}, Lim/doit/pro/activity/ViewNotesActivity;->init()V

    .line 43
    return-void
.end method
