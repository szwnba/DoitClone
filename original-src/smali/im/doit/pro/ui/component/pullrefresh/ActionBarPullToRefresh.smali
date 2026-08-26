.class public Lim/doit/pro/ui/component/pullrefresh/ActionBarPullToRefresh;
.super Ljava/lang/Object;
.source "ActionBarPullToRefresh.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lim/doit/pro/ui/component/pullrefresh/ActionBarPullToRefresh$SetupWizard;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static from(Landroid/app/Activity;)Lim/doit/pro/ui/component/pullrefresh/ActionBarPullToRefresh$SetupWizard;
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 31
    new-instance v0, Lim/doit/pro/ui/component/pullrefresh/ActionBarPullToRefresh$SetupWizard;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lim/doit/pro/ui/component/pullrefresh/ActionBarPullToRefresh$SetupWizard;-><init>(Landroid/app/Activity;Lim/doit/pro/ui/component/pullrefresh/ActionBarPullToRefresh$SetupWizard;)V

    return-object v0
.end method
