.class Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher$3;
.super Ljava/lang/Object;
.source "PullToRefreshAttacher.java"

# interfaces
.implements Lim/doit/pro/ui/component/pullrefresh/EnvironmentDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher;->createDefaultEnvironmentDelegate()Lim/doit/pro/ui/component/pullrefresh/EnvironmentDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher;


# direct methods
.method constructor <init>(Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher$3;->this$0:Lim/doit/pro/ui/component/pullrefresh/PullToRefreshAttacher;

    .line 478
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContextForInflater(Landroid/app/Activity;)Landroid/content/Context;
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 481
    const/4 v1, 0x0

    .line 482
    .local v1, "context":Landroid/content/Context;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-lt v2, v3, :cond_0

    .line 483
    invoke-virtual {p1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 484
    .local v0, "ab":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 485
    invoke-virtual {v0}, Landroid/app/ActionBar;->getThemedContext()Landroid/content/Context;

    move-result-object v1

    .line 488
    .end local v0    # "ab":Landroid/app/ActionBar;
    :cond_0
    if-nez v1, :cond_1

    .line 489
    move-object v1, p1

    .line 491
    :cond_1
    return-object v1
.end method
