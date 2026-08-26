.class public Lim/doit/pro/activity/FollowUsActivity;
.super Lim/doit/pro/activity/DSwipeBackBaseActivity;
.source "FollowUsActivity.java"


# instance fields
.field private facebookBtn:Lim/doit/pro/ui/component/LabelArrowButton;

.field private onFacebookClick:Lim/doit/pro/activity/listener/OnLayoutClickListener;

.field private onTwitterClick:Lim/doit/pro/activity/listener/OnLayoutClickListener;

.field private onWeiboClick:Lim/doit/pro/activity/listener/OnLayoutClickListener;

.field private onWriteReviewInGooglePlay:Lim/doit/pro/activity/listener/OnLayoutClickListener;

.field private twitterBtn:Lim/doit/pro/ui/component/LabelArrowButton;

.field private weiboBtn:Lim/doit/pro/ui/component/LabelArrowButton;

.field private writeReviewInGooglePlayBtn:Lim/doit/pro/ui/component/LabelArrowButton;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Lim/doit/pro/activity/DSwipeBackBaseActivity;-><init>()V

    .line 74
    new-instance v0, Lim/doit/pro/activity/FollowUsActivity$1;

    invoke-direct {v0, p0}, Lim/doit/pro/activity/FollowUsActivity$1;-><init>(Lim/doit/pro/activity/FollowUsActivity;)V

    iput-object v0, p0, Lim/doit/pro/activity/FollowUsActivity;->onFacebookClick:Lim/doit/pro/activity/listener/OnLayoutClickListener;

    .line 87
    new-instance v0, Lim/doit/pro/activity/FollowUsActivity$2;

    invoke-direct {v0, p0}, Lim/doit/pro/activity/FollowUsActivity$2;-><init>(Lim/doit/pro/activity/FollowUsActivity;)V

    iput-object v0, p0, Lim/doit/pro/activity/FollowUsActivity;->onTwitterClick:Lim/doit/pro/activity/listener/OnLayoutClickListener;

    .line 100
    new-instance v0, Lim/doit/pro/activity/FollowUsActivity$3;

    invoke-direct {v0, p0}, Lim/doit/pro/activity/FollowUsActivity$3;-><init>(Lim/doit/pro/activity/FollowUsActivity;)V

    iput-object v0, p0, Lim/doit/pro/activity/FollowUsActivity;->onWeiboClick:Lim/doit/pro/activity/listener/OnLayoutClickListener;

    .line 110
    new-instance v0, Lim/doit/pro/activity/FollowUsActivity$4;

    invoke-direct {v0, p0}, Lim/doit/pro/activity/FollowUsActivity$4;-><init>(Lim/doit/pro/activity/FollowUsActivity;)V

    iput-object v0, p0, Lim/doit/pro/activity/FollowUsActivity;->onWriteReviewInGooglePlay:Lim/doit/pro/activity/listener/OnLayoutClickListener;

    .line 14
    return-void
.end method

.method private init()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lim/doit/pro/activity/FollowUsActivity;->initView()V

    .line 38
    invoke-direct {p0}, Lim/doit/pro/activity/FollowUsActivity;->initViewContent()V

    .line 39
    invoke-direct {p0}, Lim/doit/pro/activity/FollowUsActivity;->initListener()V

    .line 40
    return-void
.end method

.method private initActionBar()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 51
    invoke-virtual {p0}, Lim/doit/pro/activity/FollowUsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 52
    .local v0, "actionBar":Landroid/app/ActionBar;
    const v1, 0x7f0c013a

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    .line 53
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 54
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 55
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 56
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayUseLogoEnabled(Z)V

    .line 57
    return-void
.end method

.method private initListener()V
    .locals 2

    .prologue
    .line 68
    iget-object v0, p0, Lim/doit/pro/activity/FollowUsActivity;->facebookBtn:Lim/doit/pro/ui/component/LabelArrowButton;

    iget-object v1, p0, Lim/doit/pro/activity/FollowUsActivity;->onFacebookClick:Lim/doit/pro/activity/listener/OnLayoutClickListener;

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/LabelArrowButton;->setOnLayoutClickListener(Lim/doit/pro/activity/listener/OnLayoutClickListener;)V

    .line 69
    iget-object v0, p0, Lim/doit/pro/activity/FollowUsActivity;->twitterBtn:Lim/doit/pro/ui/component/LabelArrowButton;

    iget-object v1, p0, Lim/doit/pro/activity/FollowUsActivity;->onTwitterClick:Lim/doit/pro/activity/listener/OnLayoutClickListener;

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/LabelArrowButton;->setOnLayoutClickListener(Lim/doit/pro/activity/listener/OnLayoutClickListener;)V

    .line 70
    iget-object v0, p0, Lim/doit/pro/activity/FollowUsActivity;->weiboBtn:Lim/doit/pro/ui/component/LabelArrowButton;

    iget-object v1, p0, Lim/doit/pro/activity/FollowUsActivity;->onWeiboClick:Lim/doit/pro/activity/listener/OnLayoutClickListener;

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/LabelArrowButton;->setOnLayoutClickListener(Lim/doit/pro/activity/listener/OnLayoutClickListener;)V

    .line 71
    iget-object v0, p0, Lim/doit/pro/activity/FollowUsActivity;->writeReviewInGooglePlayBtn:Lim/doit/pro/ui/component/LabelArrowButton;

    iget-object v1, p0, Lim/doit/pro/activity/FollowUsActivity;->onWriteReviewInGooglePlay:Lim/doit/pro/activity/listener/OnLayoutClickListener;

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/LabelArrowButton;->setOnLayoutClickListener(Lim/doit/pro/activity/listener/OnLayoutClickListener;)V

    .line 72
    return-void
.end method

.method private initView()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Lim/doit/pro/activity/FollowUsActivity;->initActionBar()V

    .line 44
    const v0, 0x7f0b0088

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/FollowUsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lim/doit/pro/ui/component/LabelArrowButton;

    iput-object v0, p0, Lim/doit/pro/activity/FollowUsActivity;->facebookBtn:Lim/doit/pro/ui/component/LabelArrowButton;

    .line 45
    const v0, 0x7f0b0089

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/FollowUsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lim/doit/pro/ui/component/LabelArrowButton;

    iput-object v0, p0, Lim/doit/pro/activity/FollowUsActivity;->twitterBtn:Lim/doit/pro/ui/component/LabelArrowButton;

    .line 46
    const v0, 0x7f0b008a

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/FollowUsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lim/doit/pro/ui/component/LabelArrowButton;

    iput-object v0, p0, Lim/doit/pro/activity/FollowUsActivity;->weiboBtn:Lim/doit/pro/ui/component/LabelArrowButton;

    .line 47
    const v0, 0x7f0b008b

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/FollowUsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lim/doit/pro/ui/component/LabelArrowButton;

    iput-object v0, p0, Lim/doit/pro/activity/FollowUsActivity;->writeReviewInGooglePlayBtn:Lim/doit/pro/ui/component/LabelArrowButton;

    .line 48
    return-void
.end method

.method private initViewContent()V
    .locals 2

    .prologue
    .line 60
    invoke-static {}, Lim/doit/pro/utils/LocalSettings;->isCn()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lim/doit/pro/utils/LocalSettings;->isTw()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 61
    :cond_0
    iget-object v0, p0, Lim/doit/pro/activity/FollowUsActivity;->weiboBtn:Lim/doit/pro/ui/component/LabelArrowButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/LabelArrowButton;->setVisibility(I)V

    .line 65
    :goto_0
    return-void

    .line 63
    :cond_1
    iget-object v0, p0, Lim/doit/pro/activity/FollowUsActivity;->weiboBtn:Lim/doit/pro/ui/component/LabelArrowButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/LabelArrowButton;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 31
    invoke-super {p0, p1}, Lim/doit/pro/activity/DSwipeBackBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    const v0, 0x7f030029

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/FollowUsActivity;->setContentView(I)V

    .line 33
    invoke-direct {p0}, Lim/doit/pro/activity/FollowUsActivity;->init()V

    .line 34
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 20
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 25
    invoke-super {p0, p1}, Lim/doit/pro/activity/DSwipeBackBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 22
    :pswitch_0
    invoke-virtual {p0}, Lim/doit/pro/activity/FollowUsActivity;->finish()V

    .line 23
    const/4 v0, 0x1

    goto :goto_0

    .line 20
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
