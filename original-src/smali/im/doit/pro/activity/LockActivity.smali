.class public Lim/doit/pro/activity/LockActivity;
.super Lim/doit/pro/activity/BaseActivity;
.source "LockActivity.java"

# interfaces
.implements Lim/doit/pro/ui/component/LockPatternView$OnPatternListener;


# instance fields
.field private lockPattern:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lim/doit/pro/ui/component/LockPatternView$Cell;",
            ">;"
        }
    .end annotation
.end field

.field private lockPatternView:Lim/doit/pro/ui/component/LockPatternView;

.field private tipsView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lim/doit/pro/activity/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lim/doit/pro/activity/LockActivity;)Lim/doit/pro/ui/component/LockPatternView;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lim/doit/pro/activity/LockActivity;->lockPatternView:Lim/doit/pro/ui/component/LockPatternView;

    return-object v0
.end method

.method private resetPatternAfterWrong()V
    .locals 4

    .prologue
    .line 92
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    new-instance v1, Lim/doit/pro/activity/LockActivity$1;

    invoke-direct {v1, p0}, Lim/doit/pro/activity/LockActivity$1;-><init>(Lim/doit/pro/activity/LockActivity;)V

    .line 107
    const-wide/16 v2, 0x1f4

    .line 92
    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 108
    return-void
.end method


# virtual methods
.method protected isShowLockView()Z
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 33
    invoke-super {p0, p1}, Lim/doit/pro/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    invoke-static {}, Lim/doit/pro/utils/LocalSettings;->getGenstureLockKey()Ljava/lang/String;

    move-result-object v1

    .line 35
    .local v1, "lockKey":Ljava/lang/String;
    invoke-static {v1}, Lim/doit/pro/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 36
    invoke-virtual {p0}, Lim/doit/pro/activity/LockActivity;->finish()V

    .line 51
    :goto_0
    return-void

    .line 39
    :cond_0
    invoke-static {v1}, Lim/doit/pro/ui/component/LockPatternView;->stringToPattern(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lim/doit/pro/activity/LockActivity;->lockPattern:Ljava/util/List;

    .line 40
    const v2, 0x7f03002e

    invoke-virtual {p0, v2}, Lim/doit/pro/activity/LockActivity;->setContentView(I)V

    .line 42
    const v2, 0x7f0b0057

    invoke-virtual {p0, v2}, Lim/doit/pro/activity/LockActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lim/doit/pro/ui/component/DRoundedAvatarView;

    .line 43
    .local v0, "avatarView":Lim/doit/pro/ui/component/DRoundedAvatarView;
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->user()Lim/doit/pro/model/User;

    move-result-object v2

    invoke-virtual {v2}, Lim/doit/pro/model/User;->getAvatar()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 44
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->user()Lim/doit/pro/model/User;

    move-result-object v3

    invoke-virtual {v3}, Lim/doit/pro/model/User;->getEmail()Ljava/lang/String;

    move-result-object v3

    .line 43
    invoke-virtual {v0, v2, v3}, Lim/doit/pro/ui/component/DRoundedAvatarView;->setAvatar(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 46
    const v2, 0x7f0b0091

    invoke-virtual {p0, v2}, Lim/doit/pro/activity/LockActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lim/doit/pro/ui/component/LockPatternView;

    iput-object v2, p0, Lim/doit/pro/activity/LockActivity;->lockPatternView:Lim/doit/pro/ui/component/LockPatternView;

    .line 47
    iget-object v2, p0, Lim/doit/pro/activity/LockActivity;->lockPatternView:Lim/doit/pro/ui/component/LockPatternView;

    invoke-virtual {v2, p0}, Lim/doit/pro/ui/component/LockPatternView;->setOnPatternListener(Lim/doit/pro/ui/component/LockPatternView$OnPatternListener;)V

    .line 49
    const v2, 0x7f0b0090

    invoke-virtual {p0, v2}, Lim/doit/pro/activity/LockActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lim/doit/pro/activity/LockActivity;->tipsView:Landroid/widget/TextView;

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 60
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 61
    invoke-virtual {p0}, Lim/doit/pro/activity/LockActivity;->goToScreen()V

    .line 62
    const/4 v0, 0x1

    .line 64
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lim/doit/pro/activity/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPatternCellAdded(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lim/doit/pro/ui/component/LockPatternView$Cell;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 77
    .local p1, "pattern":Ljava/util/List;, "Ljava/util/List<Lim/doit/pro/ui/component/LockPatternView$Cell;>;"
    return-void
.end method

.method public onPatternCleared()V
    .locals 0

    .prologue
    .line 73
    return-void
.end method

.method public onPatternDetected(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lim/doit/pro/ui/component/LockPatternView$Cell;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 81
    .local p1, "pattern":Ljava/util/List;, "Ljava/util/List<Lim/doit/pro/ui/component/LockPatternView$Cell;>;"
    iget-object v0, p0, Lim/doit/pro/activity/LockActivity;->lockPattern:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    invoke-virtual {p0}, Lim/doit/pro/activity/LockActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lim/doit/pro/activity/DoitApp;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lim/doit/pro/activity/DoitApp;->saveAppResumed(Z)V

    .line 83
    invoke-virtual {p0}, Lim/doit/pro/activity/LockActivity;->finish()V

    .line 89
    :goto_0
    return-void

    .line 85
    :cond_0
    iget-object v0, p0, Lim/doit/pro/activity/LockActivity;->lockPatternView:Lim/doit/pro/ui/component/LockPatternView;

    sget-object v1, Lim/doit/pro/ui/component/LockPatternView$DisplayMode;->Wrong:Lim/doit/pro/ui/component/LockPatternView$DisplayMode;

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/LockPatternView;->setDisplayMode(Lim/doit/pro/ui/component/LockPatternView$DisplayMode;)V

    .line 86
    iget-object v0, p0, Lim/doit/pro/activity/LockActivity;->tipsView:Landroid/widget/TextView;

    const v1, 0x7f0c0245

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 87
    invoke-direct {p0}, Lim/doit/pro/activity/LockActivity;->resetPatternAfterWrong()V

    goto :goto_0
.end method

.method public onPatternStart()V
    .locals 0

    .prologue
    .line 69
    return-void
.end method

.method protected toLogin()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 29
    return-void
.end method
