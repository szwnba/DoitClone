.class public Lim/doit/pro/activity/DSwipeBackBaseActivity;
.super Lim/doit/pro/activity/BaseActivity;
.source "DSwipeBackBaseActivity.java"

# interfaces
.implements Lme/imid/swipebacklayout/lib/app/SwipeBackActivityBase;


# instance fields
.field private mHelper:Lme/imid/swipebacklayout/lib/app/SwipeBackActivityHelper;

.field private mSwipeBackLayout:Lme/imid/swipebacklayout/lib/SwipeBackLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lim/doit/pro/activity/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public findViewById(I)Landroid/view/View;
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 44
    invoke-super {p0, p1}, Lim/doit/pro/activity/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 45
    .local v0, "v":Landroid/view/View;
    if-nez v0, :cond_0

    iget-object v1, p0, Lim/doit/pro/activity/DSwipeBackBaseActivity;->mHelper:Lme/imid/swipebacklayout/lib/app/SwipeBackActivityHelper;

    if-eqz v1, :cond_0

    .line 46
    iget-object v1, p0, Lim/doit/pro/activity/DSwipeBackBaseActivity;->mHelper:Lme/imid/swipebacklayout/lib/app/SwipeBackActivityHelper;

    invoke-virtual {v1, p1}, Lme/imid/swipebacklayout/lib/app/SwipeBackActivityHelper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 47
    .end local v0    # "v":Landroid/view/View;
    :cond_0
    return-object v0
.end method

.method public getSwipeBackLayout()Lme/imid/swipebacklayout/lib/SwipeBackLayout;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lim/doit/pro/activity/DSwipeBackBaseActivity;->mHelper:Lme/imid/swipebacklayout/lib/app/SwipeBackActivityHelper;

    invoke-virtual {v0}, Lme/imid/swipebacklayout/lib/app/SwipeBackActivityHelper;->getSwipeBackLayout()Lme/imid/swipebacklayout/lib/SwipeBackLayout;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 18
    invoke-super {p0, p1}, Lim/doit/pro/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 19
    new-instance v0, Lme/imid/swipebacklayout/lib/app/SwipeBackActivityHelper;

    invoke-direct {v0, p0}, Lme/imid/swipebacklayout/lib/app/SwipeBackActivityHelper;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lim/doit/pro/activity/DSwipeBackBaseActivity;->mHelper:Lme/imid/swipebacklayout/lib/app/SwipeBackActivityHelper;

    .line 20
    iget-object v0, p0, Lim/doit/pro/activity/DSwipeBackBaseActivity;->mHelper:Lme/imid/swipebacklayout/lib/app/SwipeBackActivityHelper;

    invoke-virtual {v0}, Lme/imid/swipebacklayout/lib/app/SwipeBackActivityHelper;->onActivityCreate()V

    .line 22
    invoke-virtual {p0}, Lim/doit/pro/activity/DSwipeBackBaseActivity;->getSwipeBackLayout()Lme/imid/swipebacklayout/lib/SwipeBackLayout;

    move-result-object v0

    iput-object v0, p0, Lim/doit/pro/activity/DSwipeBackBaseActivity;->mSwipeBackLayout:Lme/imid/swipebacklayout/lib/SwipeBackLayout;

    .line 24
    iget-object v0, p0, Lim/doit/pro/activity/DSwipeBackBaseActivity;->mSwipeBackLayout:Lme/imid/swipebacklayout/lib/SwipeBackLayout;

    invoke-static {}, Lim/doit/pro/activity/DoitApp;->getScreenWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40800000    # 4.0f

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {v0, v1}, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->setEdgeSize(I)V

    .line 26
    iget-object v0, p0, Lim/doit/pro/activity/DSwipeBackBaseActivity;->mSwipeBackLayout:Lme/imid/swipebacklayout/lib/SwipeBackLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->setEdgeTrackingEnabled(I)V

    .line 27
    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 38
    invoke-super {p0, p1}, Lim/doit/pro/activity/BaseActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 39
    iget-object v0, p0, Lim/doit/pro/activity/DSwipeBackBaseActivity;->mHelper:Lme/imid/swipebacklayout/lib/app/SwipeBackActivityHelper;

    invoke-virtual {v0}, Lme/imid/swipebacklayout/lib/app/SwipeBackActivityHelper;->onPostCreate()V

    .line 40
    return-void
.end method

.method public scrollToFinishActivity()V
    .locals 1

    .prologue
    .line 62
    invoke-virtual {p0}, Lim/doit/pro/activity/DSwipeBackBaseActivity;->getSwipeBackLayout()Lme/imid/swipebacklayout/lib/SwipeBackLayout;

    move-result-object v0

    invoke-virtual {v0}, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->scrollToFinishActivity()V

    .line 63
    return-void
.end method

.method public setSwipeBackEnable(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 57
    invoke-virtual {p0}, Lim/doit/pro/activity/DSwipeBackBaseActivity;->getSwipeBackLayout()Lme/imid/swipebacklayout/lib/SwipeBackLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->setEnableGesture(Z)V

    .line 58
    return-void
.end method

.method protected setSwitchBackEnable(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 30
    iget-object v0, p0, Lim/doit/pro/activity/DSwipeBackBaseActivity;->mSwipeBackLayout:Lme/imid/swipebacklayout/lib/SwipeBackLayout;

    if-nez v0, :cond_0

    .line 34
    :goto_0
    return-void

    .line 33
    :cond_0
    iget-object v0, p0, Lim/doit/pro/activity/DSwipeBackBaseActivity;->mSwipeBackLayout:Lme/imid/swipebacklayout/lib/SwipeBackLayout;

    invoke-virtual {v0, p1}, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->setEnableGesture(Z)V

    goto :goto_0
.end method
