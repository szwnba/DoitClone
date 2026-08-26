.class public Lim/doit/pro/activity/DSwipeBackFragmentActivity;
.super Lme/imid/swipebacklayout/lib/app/SwipeBackActivity;
.source "DSwipeBackFragmentActivity.java"


# instance fields
.field private mSwipeBackLayout:Lme/imid/swipebacklayout/lib/SwipeBackLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lme/imid/swipebacklayout/lib/app/SwipeBackActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 13
    invoke-super {p0, p1}, Lme/imid/swipebacklayout/lib/app/SwipeBackActivity;->onCreate(Landroid/os/Bundle;)V

    .line 15
    invoke-virtual {p0}, Lim/doit/pro/activity/DSwipeBackFragmentActivity;->getSwipeBackLayout()Lme/imid/swipebacklayout/lib/SwipeBackLayout;

    move-result-object v0

    iput-object v0, p0, Lim/doit/pro/activity/DSwipeBackFragmentActivity;->mSwipeBackLayout:Lme/imid/swipebacklayout/lib/SwipeBackLayout;

    .line 17
    iget-object v0, p0, Lim/doit/pro/activity/DSwipeBackFragmentActivity;->mSwipeBackLayout:Lme/imid/swipebacklayout/lib/SwipeBackLayout;

    .line 18
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->getScreenWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40800000    # 4.0f

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {v0, v1}, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->setEdgeSize(I)V

    .line 20
    iget-object v0, p0, Lim/doit/pro/activity/DSwipeBackFragmentActivity;->mSwipeBackLayout:Lme/imid/swipebacklayout/lib/SwipeBackLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->setEdgeTrackingEnabled(I)V

    .line 21
    return-void
.end method
