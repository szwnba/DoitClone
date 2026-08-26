.class final Lcom/crashlytics/android/at;
.super Lcom/crashlytics/android/i;
.source "SourceFile"


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:Ljava/util/concurrent/ExecutorService;

.field private synthetic c:J

.field private synthetic d:Ljava/util/concurrent/TimeUnit;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/util/concurrent/ExecutorService;JLjava/util/concurrent/TimeUnit;)V
    .locals 1

    .prologue
    .line 58
    iput-object p1, p0, Lcom/crashlytics/android/at;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/crashlytics/android/at;->b:Ljava/util/concurrent/ExecutorService;

    iput-wide p3, p0, Lcom/crashlytics/android/at;->c:J

    iput-object p5, p0, Lcom/crashlytics/android/at;->d:Ljava/util/concurrent/TimeUnit;

    invoke-direct {p0}, Lcom/crashlytics/android/i;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .prologue
    .line 62
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Executing shutdown hook for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/crashlytics/android/at;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/crashlytics/android/ba;->c(Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcom/crashlytics/android/at;->b:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 64
    iget-object v0, p0, Lcom/crashlytics/android/at;->b:Ljava/util/concurrent/ExecutorService;

    iget-wide v2, p0, Lcom/crashlytics/android/at;->c:J

    iget-object v1, p0, Lcom/crashlytics/android/at;->d:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v2, v3, v1}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/crashlytics/android/at;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " did not shut down in the allocated time. Requesting immediate shutdown."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/crashlytics/android/ba;->c(Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lcom/crashlytics/android/at;->b:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    :cond_0
    :goto_0
    return-void

    .line 70
    :catch_0
    move-exception v0

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "Interrupted while waiting for %s to shut down. Requesting immediate shutdown."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/crashlytics/android/at;->a:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/crashlytics/android/ba;->c(Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Lcom/crashlytics/android/at;->b:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    goto :goto_0
.end method
