.class final Lcom/crashlytics/android/bb;
.super Lcom/crashlytics/android/internal/a;
.source "SourceFile"


# instance fields
.field private b:Ljava/lang/Boolean;


# direct methods
.method constructor <init>(ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x4

    invoke-direct {p0, v0, p2}, Lcom/crashlytics/android/internal/a;-><init>(ILjava/lang/String;)V

    .line 96
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/crashlytics/android/bb;->b:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 100
    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->b()I

    move-result v0

    return v0
.end method

.method public final b()Z
    .locals 3

    .prologue
    .line 105
    iget-object v0, p0, Lcom/crashlytics/android/bb;->b:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 106
    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->d()Landroid/content/ContextWrapper;

    move-result-object v0

    const-string v1, "com.crashlytics.SilenceCrashlyticsLogCat"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/crashlytics/android/ba;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/crashlytics/android/bb;->b:Ljava/lang/Boolean;

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/crashlytics/android/bb;->b:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 114
    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->getInstance()Lcom/crashlytics/android/Crashlytics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/crashlytics/android/Crashlytics;->getDebugMode()Z

    move-result v0

    return v0
.end method
