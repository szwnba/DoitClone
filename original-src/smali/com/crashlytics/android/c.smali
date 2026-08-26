.class Lcom/crashlytics/android/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I

.field public final c:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IIII)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/crashlytics/android/c;->a:Ljava/lang/String;

    .line 16
    iput p2, p0, Lcom/crashlytics/android/c;->b:I

    .line 17
    iput p3, p0, Lcom/crashlytics/android/c;->c:I

    .line 18
    return-void
.end method

.method public static a(I)I
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 26
    const/16 v2, 0xc8

    if-lt p0, v2, :cond_1

    const/16 v2, 0x12b

    if-gt p0, v2, :cond_1

    .line 36
    :cond_0
    :goto_0
    return v0

    .line 28
    :cond_1
    const/16 v2, 0x12c

    if-lt p0, v2, :cond_2

    const/16 v2, 0x18f

    if-gt p0, v2, :cond_2

    move v0, v1

    .line 29
    goto :goto_0

    .line 30
    :cond_2
    const/16 v2, 0x190

    if-lt p0, v2, :cond_3

    const/16 v2, 0x1f3

    if-le p0, v2, :cond_0

    .line 32
    :cond_3
    const/16 v0, 0x1f4

    if-lt p0, v0, :cond_4

    move v0, v1

    .line 33
    goto :goto_0

    :cond_4
    move v0, v1

    .line 36
    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;
    .locals 1

    .prologue
    .line 21
    invoke-static {p0}, Lcom/crashlytics/android/c;->c(Ljava/lang/String;)Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    .line 22
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 23
    invoke-static {p0, v0}, Lcom/crashlytics/android/c;->a(Ljava/lang/String;Ljava/util/concurrent/ExecutorService;)V

    .line 24
    return-object v0
.end method

.method private static a(Ljava/lang/String;Ljava/util/concurrent/ExecutorService;)V
    .locals 8

    .prologue
    .line 53
    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    new-instance v7, Ljava/lang/Thread;

    new-instance v1, Lcom/crashlytics/android/at;

    const-wide/16 v4, 0x2

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/crashlytics/android/at;-><init>(Ljava/lang/String;Ljava/util/concurrent/ExecutorService;JLjava/util/concurrent/TimeUnit;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Crashlytics Shutdown Hook for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v7, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/lang/Runtime;->addShutdownHook(Ljava/lang/Thread;)V

    .line 54
    return-void
.end method

.method public static b(Ljava/lang/String;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    .prologue
    .line 28
    invoke-static {p0}, Lcom/crashlytics/android/c;->c(Ljava/lang/String;)Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    .line 29
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    .line 30
    invoke-static {p0, v0}, Lcom/crashlytics/android/c;->a(Ljava/lang/String;Ljava/util/concurrent/ExecutorService;)V

    .line 31
    return-object v0
.end method

.method public static c(Ljava/lang/String;)Ljava/util/concurrent/ThreadFactory;
    .locals 4

    .prologue
    .line 35
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x1

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    .line 37
    new-instance v1, Lcom/crashlytics/android/ar;

    invoke-direct {v1, p0, v0}, Lcom/crashlytics/android/ar;-><init>(Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicLong;)V

    return-object v1
.end method
