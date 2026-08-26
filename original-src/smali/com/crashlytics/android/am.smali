.class final Lcom/crashlytics/android/am;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/crashlytics/android/aM;


# instance fields
.field private final a:Ljava/util/concurrent/ScheduledExecutorService;

.field private final b:Lcom/crashlytics/android/aI;

.field private final c:Lcom/crashlytics/android/internal/o;

.field private d:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;"
        }
    .end annotation
.end field

.field private e:I

.field private f:Lcom/crashlytics/android/aL;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ScheduledExecutorService;Lcom/crashlytics/android/aI;Lcom/crashlytics/android/internal/o;)V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, -0x1

    iput v0, p0, Lcom/crashlytics/android/am;->e:I

    .line 32
    iput-object p1, p0, Lcom/crashlytics/android/am;->a:Ljava/util/concurrent/ScheduledExecutorService;

    .line 33
    iput-object p2, p0, Lcom/crashlytics/android/am;->b:Lcom/crashlytics/android/aI;

    .line 34
    iput-object p3, p0, Lcom/crashlytics/android/am;->c:Lcom/crashlytics/android/internal/o;

    .line 35
    return-void
.end method

.method static synthetic a(Lcom/crashlytics/android/am;)Lcom/crashlytics/android/aI;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/crashlytics/android/am;->b:Lcom/crashlytics/android/aI;

    return-object v0
.end method

.method private a(II)V
    .locals 7

    .prologue
    .line 116
    :try_start_0
    new-instance v1, Lcom/crashlytics/android/aY;

    iget-object v0, p0, Lcom/crashlytics/android/am;->b:Lcom/crashlytics/android/aI;

    invoke-direct {v1, v0, p0}, Lcom/crashlytics/android/aY;-><init>(Lcom/crashlytics/android/aI;Lcom/crashlytics/android/aM;)V

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Scheduling time based file roll over every "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " seconds"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/crashlytics/android/ba;->d(Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Lcom/crashlytics/android/am;->a:Ljava/util/concurrent/ScheduledExecutorService;

    int-to-long v2, p1

    int-to-long v4, p2

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/crashlytics/android/am;->d:Ljava/util/concurrent/ScheduledFuture;
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    :goto_0
    return-void

    .line 120
    :catch_0
    move-exception v0

    .line 121
    const-string v1, "Crashlytics failed to schedule time based analytics file roll over"

    invoke-static {v1, v0}, Lcom/crashlytics/android/ba;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private c(Lcom/crashlytics/android/aN;)Ljava/util/concurrent/Future;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/crashlytics/android/aN;",
            ")",
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 38
    iget-object v0, p0, Lcom/crashlytics/android/am;->a:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/crashlytics/android/aX;

    iget-object v2, p0, Lcom/crashlytics/android/am;->b:Lcom/crashlytics/android/aI;

    invoke-direct {v1, p1, v2, p0}, Lcom/crashlytics/android/aX;-><init>(Lcom/crashlytics/android/aN;Lcom/crashlytics/android/aI;Lcom/crashlytics/android/aM;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/crashlytics/android/am;->f:Lcom/crashlytics/android/aL;

    if-nez v0, :cond_0

    .line 96
    const-string v0, "skipping analytics files send because we don\'t yet know the target endpoint"

    invoke-static {v0}, Lcom/crashlytics/android/ba;->d(Ljava/lang/String;)V

    .line 112
    :goto_0
    return-void

    .line 101
    :cond_0
    :try_start_0
    const-string v0, "submitting send all analytics files action"

    invoke-static {v0}, Lcom/crashlytics/android/ba;->d(Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Lcom/crashlytics/android/am;->a:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/crashlytics/android/an;

    invoke-direct {v1, p0}, Lcom/crashlytics/android/an;-><init>(Lcom/crashlytics/android/am;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 109
    :catch_0
    move-exception v0

    .line 110
    const-string v1, "Crashlytics failed to submit send analytics files action."

    invoke-static {v1, v0}, Lcom/crashlytics/android/ba;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final a(Lcom/crashlytics/android/aN;)V
    .locals 0

    .prologue
    .line 161
    invoke-direct {p0, p1}, Lcom/crashlytics/android/am;->c(Lcom/crashlytics/android/aN;)Ljava/util/concurrent/Future;

    .line 162
    return-void
.end method

.method public final a(Lcom/crashlytics/android/c;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 136
    new-instance v0, Lcom/crashlytics/android/ai;

    iget-object v1, p1, Lcom/crashlytics/android/c;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/crashlytics/android/am;->c:Lcom/crashlytics/android/internal/o;

    invoke-direct {v0, p2, v1, v2}, Lcom/crashlytics/android/ai;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/crashlytics/android/internal/o;)V

    iput-object v0, p0, Lcom/crashlytics/android/am;->f:Lcom/crashlytics/android/aL;

    .line 140
    iget-object v0, p0, Lcom/crashlytics/android/am;->b:Lcom/crashlytics/android/aI;

    invoke-virtual {v0, p1}, Lcom/crashlytics/android/aI;->a(Lcom/crashlytics/android/c;)V

    .line 141
    iget v0, p1, Lcom/crashlytics/android/c;->b:I

    iput v0, p0, Lcom/crashlytics/android/am;->e:I

    .line 142
    const/4 v0, 0x0

    iget v1, p0, Lcom/crashlytics/android/am;->e:I

    invoke-direct {p0, v0, v1}, Lcom/crashlytics/android/am;->a(II)V

    .line 143
    return-void
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 147
    iget-object v0, p0, Lcom/crashlytics/android/am;->a:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/crashlytics/android/ao;

    invoke-direct {v1, p0}, Lcom/crashlytics/android/ao;-><init>(Lcom/crashlytics/android/am;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 157
    return-void
.end method

.method public final b(Lcom/crashlytics/android/aN;)V
    .locals 2

    .prologue
    .line 167
    :try_start_0
    invoke-direct {p0, p1}, Lcom/crashlytics/android/am;->c(Lcom/crashlytics/android/aN;)Ljava/util/concurrent/Future;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    :goto_0
    return-void

    .line 168
    :catch_0
    move-exception v0

    .line 169
    const-string v1, "Failed to synchronously write session event."

    invoke-static {v1, v0}, Lcom/crashlytics/android/ba;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final c()V
    .locals 2

    .prologue
    .line 127
    iget-object v0, p0, Lcom/crashlytics/android/am;->d:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    .line 128
    const-string v0, "Cancelling time-based rollover because no events are currently being generated."

    invoke-static {v0}, Lcom/crashlytics/android/ba;->d(Ljava/lang/String;)V

    .line 129
    iget-object v0, p0, Lcom/crashlytics/android/am;->d:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 130
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/crashlytics/android/am;->d:Ljava/util/concurrent/ScheduledFuture;

    .line 132
    :cond_0
    return-void
.end method

.method public final d()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 43
    iget v0, p0, Lcom/crashlytics/android/am;->e:I

    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    move v0, v1

    .line 44
    :goto_0
    iget-object v3, p0, Lcom/crashlytics/android/am;->d:Ljava/util/concurrent/ScheduledFuture;

    if-nez v3, :cond_2

    .line 46
    :goto_1
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 47
    iget v0, p0, Lcom/crashlytics/android/am;->e:I

    iget v1, p0, Lcom/crashlytics/android/am;->e:I

    invoke-direct {p0, v0, v1}, Lcom/crashlytics/android/am;->a(II)V

    .line 49
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 43
    goto :goto_0

    :cond_2
    move v1, v2

    .line 44
    goto :goto_1
.end method

.method final e()V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 61
    .line 63
    iget-object v0, p0, Lcom/crashlytics/android/am;->b:Lcom/crashlytics/android/aI;

    invoke-virtual {v0}, Lcom/crashlytics/android/aI;->b()Ljava/util/List;

    move-result-object v0

    move-object v2, v0

    move v0, v1

    .line 66
    :goto_0
    :try_start_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 67
    iget-object v1, p0, Lcom/crashlytics/android/am;->f:Lcom/crashlytics/android/aL;

    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->i()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v2}, Lcom/crashlytics/android/aL;->a(Ljava/lang/String;Ljava/util/List;)Z

    move-result v3

    .line 69
    if-eqz v3, :cond_0

    .line 70
    invoke-interface {v2}, Ljava/util/List;->size()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    add-int/2addr v1, v0

    .line 71
    :try_start_1
    iget-object v0, p0, Lcom/crashlytics/android/am;->b:Lcom/crashlytics/android/aI;

    invoke-virtual {v0, v2}, Lcom/crashlytics/android/aI;->a(Ljava/util/List;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move v0, v1

    .line 74
    :cond_0
    :try_start_2
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "attempt to send batch of %d analytics files %s"

    const/4 v1, 0x2

    new-array v6, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v6, v1

    const/4 v2, 0x1

    if-eqz v3, :cond_1

    const-string v1, "succeeded"

    :goto_1
    aput-object v1, v6, v2

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/crashlytics/android/ba;->d(Ljava/lang/String;)V

    .line 77
    if-eqz v3, :cond_2

    .line 78
    iget-object v1, p0, Lcom/crashlytics/android/am;->b:Lcom/crashlytics/android/aI;

    invoke-virtual {v1}, Lcom/crashlytics/android/aI;->b()Ljava/util/List;

    move-result-object v1

    move-object v2, v1

    .line 82
    goto :goto_0

    .line 74
    :cond_1
    const-string v1, "did not succeed"
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 83
    :catch_0
    move-exception v1

    move-object v7, v1

    move v1, v0

    move-object v0, v7

    .line 84
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Crashlytics failed to send batch of analytics files to server: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/crashlytics/android/ba;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v1

    .line 88
    :cond_2
    if-nez v0, :cond_3

    .line 89
    iget-object v0, p0, Lcom/crashlytics/android/am;->b:Lcom/crashlytics/android/aI;

    invoke-virtual {v0}, Lcom/crashlytics/android/aI;->d()V

    .line 91
    :cond_3
    return-void

    .line 83
    :catch_1
    move-exception v0

    goto :goto_2
.end method
