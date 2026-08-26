.class public Lim/doit/pro/activity/DoitApp$MyLifecycleHandler;
.super Ljava/lang/Object;
.source "DoitApp.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/activity/DoitApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyLifecycleHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/activity/DoitApp;


# direct methods
.method public constructor <init>(Lim/doit/pro/activity/DoitApp;)V
    .locals 0

    .prologue
    .line 360
    iput-object p1, p0, Lim/doit/pro/activity/DoitApp$MyLifecycleHandler;->this$0:Lim/doit/pro/activity/DoitApp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 364
    iget-object v0, p0, Lim/doit/pro/activity/DoitApp$MyLifecycleHandler;->this$0:Lim/doit/pro/activity/DoitApp;

    invoke-static {v0}, Lim/doit/pro/activity/DoitApp;->access$0(Lim/doit/pro/activity/DoitApp;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 365
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 368
    iget-object v0, p0, Lim/doit/pro/activity/DoitApp$MyLifecycleHandler;->this$0:Lim/doit/pro/activity/DoitApp;

    invoke-static {v0}, Lim/doit/pro/activity/DoitApp;->access$0(Lim/doit/pro/activity/DoitApp;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 369
    iget-object v0, p0, Lim/doit/pro/activity/DoitApp$MyLifecycleHandler;->this$0:Lim/doit/pro/activity/DoitApp;

    invoke-static {v0}, Lim/doit/pro/activity/DoitApp;->access$0(Lim/doit/pro/activity/DoitApp;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 371
    :cond_0
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 377
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 374
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 381
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 384
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->access$1()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Lim/doit/pro/activity/DoitApp;->access$2(J)V

    .line 385
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 388
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->access$3()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Lim/doit/pro/activity/DoitApp;->access$4(J)V

    .line 389
    return-void
.end method
