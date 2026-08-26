.class public Lim/doit/pro/activity/BootGuideActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "BootGuideActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lim/doit/pro/activity/BootGuideActivity$PagerAdapter;
    }
.end annotation


# instance fields
.field private mAdapter:Lim/doit/pro/activity/BootGuideActivity$PagerAdapter;

.field private mCurrentPage:I

.field private mImages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mViewPager:Landroid/support/v4/view/ViewPager;

.field private onPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lim/doit/pro/activity/BootGuideActivity;->mImages:Ljava/util/ArrayList;

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Lim/doit/pro/activity/BootGuideActivity;->mCurrentPage:I

    .line 141
    new-instance v0, Lim/doit/pro/activity/BootGuideActivity$1;

    invoke-direct {v0, p0}, Lim/doit/pro/activity/BootGuideActivity$1;-><init>(Lim/doit/pro/activity/BootGuideActivity;)V

    iput-object v0, p0, Lim/doit/pro/activity/BootGuideActivity;->onPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 22
    return-void
.end method

.method static synthetic access$0(Lim/doit/pro/activity/BootGuideActivity;I)V
    .locals 0

    .prologue
    .line 25
    iput p1, p0, Lim/doit/pro/activity/BootGuideActivity;->mCurrentPage:I

    return-void
.end method

.method static synthetic access$1(Lim/doit/pro/activity/BootGuideActivity;)I
    .locals 1

    .prologue
    .line 25
    iget v0, p0, Lim/doit/pro/activity/BootGuideActivity;->mCurrentPage:I

    return v0
.end method

.method static synthetic access$2(Lim/doit/pro/activity/BootGuideActivity;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lim/doit/pro/activity/BootGuideActivity;->mImages:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3(Lim/doit/pro/activity/BootGuideActivity;)V
    .locals 0

    .prologue
    .line 86
    invoke-direct {p0}, Lim/doit/pro/activity/BootGuideActivity;->finishActivity()V

    return-void
.end method

.method private finishActivity()V
    .locals 1

    .prologue
    .line 87
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/BootGuideActivity;->setResult(I)V

    .line 88
    invoke-virtual {p0}, Lim/doit/pro/activity/BootGuideActivity;->finish()V

    .line 89
    return-void
.end method

.method private init()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lim/doit/pro/activity/BootGuideActivity;->initData()V

    .line 47
    invoke-direct {p0}, Lim/doit/pro/activity/BootGuideActivity;->initView()V

    .line 48
    invoke-direct {p0}, Lim/doit/pro/activity/BootGuideActivity;->initViewContent()V

    .line 49
    invoke-direct {p0}, Lim/doit/pro/activity/BootGuideActivity;->initListener()V

    .line 50
    return-void
.end method

.method private initData()V
    .locals 3

    .prologue
    .line 53
    iget-object v1, p0, Lim/doit/pro/activity/BootGuideActivity;->mImages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 54
    invoke-static {}, Lim/doit/pro/utils/LocalSettings;->getLocalLang()Ljava/lang/String;

    move-result-object v0

    .line 55
    .local v0, "lang":Ljava/lang/String;
    invoke-static {v0}, Lim/doit/pro/utils/LocalSettings;->isCn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 56
    iget-object v1, p0, Lim/doit/pro/activity/BootGuideActivity;->mImages:Ljava/util/ArrayList;

    const v2, 0x7f02012e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    iget-object v1, p0, Lim/doit/pro/activity/BootGuideActivity;->mImages:Ljava/util/ArrayList;

    const v2, 0x7f020131

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    :goto_0
    return-void

    .line 58
    :cond_0
    invoke-static {v0}, Lim/doit/pro/utils/LocalSettings;->isJa(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 59
    iget-object v1, p0, Lim/doit/pro/activity/BootGuideActivity;->mImages:Ljava/util/ArrayList;

    const v2, 0x7f020130

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    iget-object v1, p0, Lim/doit/pro/activity/BootGuideActivity;->mImages:Ljava/util/ArrayList;

    const v2, 0x7f020133

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 62
    :cond_1
    iget-object v1, p0, Lim/doit/pro/activity/BootGuideActivity;->mImages:Ljava/util/ArrayList;

    const v2, 0x7f02012f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    iget-object v1, p0, Lim/doit/pro/activity/BootGuideActivity;->mImages:Ljava/util/ArrayList;

    const v2, 0x7f020132

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private initListener()V
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Lim/doit/pro/activity/BootGuideActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lim/doit/pro/activity/BootGuideActivity;->onPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 93
    return-void
.end method

.method private initView()V
    .locals 1

    .prologue
    .line 68
    const v0, 0x7f0b0070

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/BootGuideActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lim/doit/pro/activity/BootGuideActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 69
    return-void
.end method

.method private initViewContent()V
    .locals 2

    .prologue
    .line 72
    new-instance v0, Lim/doit/pro/activity/BootGuideActivity$PagerAdapter;

    invoke-virtual {p0}, Lim/doit/pro/activity/BootGuideActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lim/doit/pro/activity/BootGuideActivity$PagerAdapter;-><init>(Lim/doit/pro/activity/BootGuideActivity;Landroid/support/v4/app/FragmentManager;)V

    iput-object v0, p0, Lim/doit/pro/activity/BootGuideActivity;->mAdapter:Lim/doit/pro/activity/BootGuideActivity$PagerAdapter;

    .line 73
    iget-object v0, p0, Lim/doit/pro/activity/BootGuideActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lim/doit/pro/activity/BootGuideActivity;->mAdapter:Lim/doit/pro/activity/BootGuideActivity$PagerAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 74
    iget-object v0, p0, Lim/doit/pro/activity/BootGuideActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget v1, p0, Lim/doit/pro/activity/BootGuideActivity;->mCurrentPage:I

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 75
    iget-object v0, p0, Lim/doit/pro/activity/BootGuideActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    new-instance v1, Lim/doit/pro/activity/BootGuideActivity$2;

    invoke-direct {v1, p0}, Lim/doit/pro/activity/BootGuideActivity$2;-><init>(Lim/doit/pro/activity/BootGuideActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 40
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    const v0, 0x7f030038

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/BootGuideActivity;->setContentView(I)V

    .line 42
    invoke-direct {p0}, Lim/doit/pro/activity/BootGuideActivity;->init()V

    .line 43
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 32
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 33
    const/4 v0, 0x1

    .line 35
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method
