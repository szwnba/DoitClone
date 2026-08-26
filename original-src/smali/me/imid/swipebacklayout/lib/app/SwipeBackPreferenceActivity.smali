.class public Lme/imid/swipebacklayout/lib/app/SwipeBackPreferenceActivity;
.super Landroid/preference/PreferenceActivity;
.source "SwipeBackPreferenceActivity.java"

# interfaces
.implements Lme/imid/swipebacklayout/lib/app/SwipeBackActivityBase;


# instance fields
.field private mHelper:Lme/imid/swipebacklayout/lib/app/SwipeBackActivityHelper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public findViewById(I)Landroid/view/View;
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 27
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 28
    .local v0, "v":Landroid/view/View;
    if-nez v0, :cond_0

    iget-object v1, p0, Lme/imid/swipebacklayout/lib/app/SwipeBackPreferenceActivity;->mHelper:Lme/imid/swipebacklayout/lib/app/SwipeBackActivityHelper;

    if-eqz v1, :cond_0

    .line 29
    iget-object v1, p0, Lme/imid/swipebacklayout/lib/app/SwipeBackPreferenceActivity;->mHelper:Lme/imid/swipebacklayout/lib/app/SwipeBackActivityHelper;

    invoke-virtual {v1, p1}, Lme/imid/swipebacklayout/lib/app/SwipeBackActivityHelper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 30
    .end local v0    # "v":Landroid/view/View;
    :cond_0
    return-object v0
.end method

.method public getSwipeBackLayout()Lme/imid/swipebacklayout/lib/SwipeBackLayout;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lme/imid/swipebacklayout/lib/app/SwipeBackPreferenceActivity;->mHelper:Lme/imid/swipebacklayout/lib/app/SwipeBackActivityHelper;

    invoke-virtual {v0}, Lme/imid/swipebacklayout/lib/app/SwipeBackActivityHelper;->getSwipeBackLayout()Lme/imid/swipebacklayout/lib/SwipeBackLayout;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 14
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 15
    new-instance v0, Lme/imid/swipebacklayout/lib/app/SwipeBackActivityHelper;

    invoke-direct {v0, p0}, Lme/imid/swipebacklayout/lib/app/SwipeBackActivityHelper;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lme/imid/swipebacklayout/lib/app/SwipeBackPreferenceActivity;->mHelper:Lme/imid/swipebacklayout/lib/app/SwipeBackActivityHelper;

    .line 16
    iget-object v0, p0, Lme/imid/swipebacklayout/lib/app/SwipeBackPreferenceActivity;->mHelper:Lme/imid/swipebacklayout/lib/app/SwipeBackActivityHelper;

    invoke-virtual {v0}, Lme/imid/swipebacklayout/lib/app/SwipeBackActivityHelper;->onActivityCreate()V

    .line 17
    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 21
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 22
    iget-object v0, p0, Lme/imid/swipebacklayout/lib/app/SwipeBackPreferenceActivity;->mHelper:Lme/imid/swipebacklayout/lib/app/SwipeBackActivityHelper;

    invoke-virtual {v0}, Lme/imid/swipebacklayout/lib/app/SwipeBackActivityHelper;->onPostCreate()V

    .line 23
    return-void
.end method

.method public scrollToFinishActivity()V
    .locals 1

    .prologue
    .line 44
    invoke-virtual {p0}, Lme/imid/swipebacklayout/lib/app/SwipeBackPreferenceActivity;->getSwipeBackLayout()Lme/imid/swipebacklayout/lib/SwipeBackLayout;

    move-result-object v0

    invoke-virtual {v0}, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->scrollToFinishActivity()V

    .line 45
    return-void
.end method

.method public setSwipeBackEnable(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 39
    invoke-virtual {p0}, Lme/imid/swipebacklayout/lib/app/SwipeBackPreferenceActivity;->getSwipeBackLayout()Lme/imid/swipebacklayout/lib/SwipeBackLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->setEnableGesture(Z)V

    .line 40
    return-void
.end method
