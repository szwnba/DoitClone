.class final Lcom/crashlytics/android/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# instance fields
.field private synthetic a:Lcom/crashlytics/android/g;


# direct methods
.method constructor <init>(Lcom/crashlytics/android/g;)V
    .locals 0

    .prologue
    .line 16
    iput-object p1, p0, Lcom/crashlytics/android/h;->a:Lcom/crashlytics/android/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/crashlytics/android/h;->a:Lcom/crashlytics/android/g;

    invoke-virtual {v0, p1}, Lcom/crashlytics/android/g;->a(Landroid/app/Activity;)V

    .line 20
    return-void
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/crashlytics/android/h;->a:Lcom/crashlytics/android/g;

    invoke-virtual {v0, p1}, Lcom/crashlytics/android/g;->b(Landroid/app/Activity;)V

    .line 25
    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/crashlytics/android/h;->a:Lcom/crashlytics/android/g;

    invoke-virtual {v0, p1}, Lcom/crashlytics/android/g;->c(Landroid/app/Activity;)V

    .line 30
    return-void
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/crashlytics/android/h;->a:Lcom/crashlytics/android/g;

    invoke-virtual {v0, p1}, Lcom/crashlytics/android/g;->d(Landroid/app/Activity;)V

    .line 35
    return-void
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/crashlytics/android/h;->a:Lcom/crashlytics/android/g;

    invoke-virtual {v0, p1}, Lcom/crashlytics/android/g;->e(Landroid/app/Activity;)V

    .line 40
    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/crashlytics/android/h;->a:Lcom/crashlytics/android/g;

    invoke-virtual {v0, p1}, Lcom/crashlytics/android/g;->f(Landroid/app/Activity;)V

    .line 45
    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/crashlytics/android/h;->a:Lcom/crashlytics/android/g;

    invoke-virtual {v0, p1}, Lcom/crashlytics/android/g;->g(Landroid/app/Activity;)V

    .line 50
    return-void
.end method
