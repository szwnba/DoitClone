.class public final Lcom/flurry/android/FlurryAgent;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/flurry/android/FlurryAgent;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    return-void
.end method

.method public static endTimedEvent(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 383
    if-nez p0, :cond_0

    .line 384
    sget-object v0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v1, "String eventId passed to endTimedEvent was null."

    invoke-static {v0, v1}, Lcom/flurry/sdk/ex;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    :goto_0
    return-void

    .line 388
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/bx;->a()Lcom/flurry/sdk/bx;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/flurry/sdk/bx;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 389
    :catch_0
    move-exception v0

    .line 390
    sget-object v1, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to signify the end of event: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/flurry/sdk/ex;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static endTimedEvent(Ljava/lang/String;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 404
    if-nez p0, :cond_0

    .line 405
    sget-object v0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v1, "String eventId passed to endTimedEvent was null."

    invoke-static {v0, v1}, Lcom/flurry/sdk/ex;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    :goto_0
    return-void

    .line 408
    :cond_0
    if-nez p1, :cond_1

    .line 409
    sget-object v0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v1, "String eventId passed to endTimedEvent was null."

    invoke-static {v0, v1}, Lcom/flurry/sdk/ex;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 413
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/bx;->a()Lcom/flurry/sdk/bx;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/flurry/sdk/bx;->b(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 414
    :catch_0
    move-exception v0

    .line 415
    sget-object v1, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to signify the end of event: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/flurry/sdk/ex;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static getAgentVersion()I
    .locals 1

    .prologue
    .line 67
    invoke-static {}, Lcom/flurry/sdk/bx;->a()Lcom/flurry/sdk/bx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/bx;->b()I

    move-result v0

    return v0
.end method

.method public static getReleaseVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    invoke-static {}, Lcom/flurry/sdk/bx;->a()Lcom/flurry/sdk/bx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/bx;->g()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUseHttps()Z
    .locals 2

    .prologue
    .line 151
    invoke-static {}, Lcom/flurry/sdk/eh;->a()Lcom/flurry/sdk/ei;

    move-result-object v0

    const-string v1, "UseHttps"

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/ei;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 152
    return v0
.end method

.method public static logEvent(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 284
    if-nez p0, :cond_0

    .line 285
    sget-object v0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v1, "String eventId passed to logEvent was null."

    invoke-static {v0, v1}, Lcom/flurry/sdk/ex;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    :goto_0
    return-void

    .line 289
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/bx;->a()Lcom/flurry/sdk/bx;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/flurry/sdk/bx;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 290
    :catch_0
    move-exception v0

    .line 291
    sget-object v1, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to log event: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/flurry/sdk/ex;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static logEvent(Ljava/lang/String;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 314
    if-nez p0, :cond_0

    .line 315
    sget-object v0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v1, "String eventId passed to logEvent was null."

    invoke-static {v0, v1}, Lcom/flurry/sdk/ex;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    :goto_0
    return-void

    .line 318
    :cond_0
    if-nez p1, :cond_1

    .line 319
    sget-object v0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v1, "String parameters passed to logEvent was null."

    invoke-static {v0, v1}, Lcom/flurry/sdk/ex;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 323
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/bx;->a()Lcom/flurry/sdk/bx;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/flurry/sdk/bx;->a(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 324
    :catch_0
    move-exception v0

    .line 325
    sget-object v1, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to log event: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/flurry/sdk/ex;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static logEvent(Ljava/lang/String;Ljava/util/Map;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 362
    if-nez p0, :cond_0

    .line 363
    sget-object v0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v1, "String eventId passed to logEvent was null."

    invoke-static {v0, v1}, Lcom/flurry/sdk/ex;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    :goto_0
    return-void

    .line 366
    :cond_0
    if-nez p1, :cond_1

    .line 367
    sget-object v0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v1, "String parameters passed to logEvent was null."

    invoke-static {v0, v1}, Lcom/flurry/sdk/ex;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 371
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/bx;->a()Lcom/flurry/sdk/bx;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/flurry/sdk/bx;->a(Ljava/lang/String;Ljava/util/Map;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 372
    :catch_0
    move-exception v0

    .line 373
    sget-object v1, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to log event: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/flurry/sdk/ex;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static logEvent(Ljava/lang/String;Z)V
    .locals 4

    .prologue
    .line 339
    if-nez p0, :cond_0

    .line 340
    sget-object v0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v1, "String eventId passed to logEvent was null."

    invoke-static {v0, v1}, Lcom/flurry/sdk/ex;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    :goto_0
    return-void

    .line 344
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/bx;->a()Lcom/flurry/sdk/bx;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/flurry/sdk/bx;->a(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 345
    :catch_0
    move-exception v0

    .line 346
    sget-object v1, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to log event: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/flurry/sdk/ex;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static onEndSession(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 241
    if-nez p0, :cond_0

    .line 242
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null context"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 245
    :cond_0
    invoke-static {}, Lcom/flurry/sdk/ey;->a()Lcom/flurry/sdk/ey;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/flurry/sdk/ey;->g(Landroid/content/Context;)V

    .line 248
    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/bx;->a()Lcom/flurry/sdk/bx;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/flurry/sdk/bx;->a(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 252
    :goto_0
    return-void

    .line 249
    :catch_0
    move-exception v0

    .line 250
    sget-object v1, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/flurry/sdk/ex;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static onError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 431
    if-nez p0, :cond_0

    .line 432
    sget-object v0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v1, "String errorId passed to onError was null."

    invoke-static {v0, v1}, Lcom/flurry/sdk/ex;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    :goto_0
    return-void

    .line 435
    :cond_0
    if-nez p1, :cond_1

    .line 436
    sget-object v0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v1, "String message passed to onError was null."

    invoke-static {v0, v1}, Lcom/flurry/sdk/ex;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 439
    :cond_1
    if-nez p2, :cond_2

    .line 440
    sget-object v0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v1, "String errorClass passed to onError was null."

    invoke-static {v0, v1}, Lcom/flurry/sdk/ex;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 444
    :cond_2
    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/bx;->a()Lcom/flurry/sdk/bx;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/flurry/sdk/bx;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 445
    :catch_0
    move-exception v0

    .line 446
    sget-object v1, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/flurry/sdk/ex;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static onError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    .line 451
    if-nez p0, :cond_0

    .line 452
    sget-object v0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v1, "String errorId passed to onError was null."

    invoke-static {v0, v1}, Lcom/flurry/sdk/ex;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    :goto_0
    return-void

    .line 455
    :cond_0
    if-nez p1, :cond_1

    .line 456
    sget-object v0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v1, "String message passed to onError was null."

    invoke-static {v0, v1}, Lcom/flurry/sdk/ex;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 459
    :cond_1
    if-nez p2, :cond_2

    .line 460
    sget-object v0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v1, "Throwable passed to onError was null."

    invoke-static {v0, v1}, Lcom/flurry/sdk/ex;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 464
    :cond_2
    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/bx;->a()Lcom/flurry/sdk/bx;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/flurry/sdk/bx;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 465
    :catch_0
    move-exception v0

    .line 466
    sget-object v1, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/flurry/sdk/ex;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static onEvent(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 476
    if-nez p0, :cond_0

    .line 477
    sget-object v0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v1, "String eventId passed to onEvent was null."

    invoke-static {v0, v1}, Lcom/flurry/sdk/ex;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    :goto_0
    return-void

    .line 481
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/bx;->a()Lcom/flurry/sdk/bx;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/flurry/sdk/bx;->c(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 482
    :catch_0
    move-exception v0

    .line 483
    sget-object v1, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/flurry/sdk/ex;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static onEvent(Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 494
    if-nez p0, :cond_0

    .line 495
    sget-object v0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v1, "String eventId passed to onEvent was null."

    invoke-static {v0, v1}, Lcom/flurry/sdk/ex;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    :goto_0
    return-void

    .line 498
    :cond_0
    if-nez p1, :cond_1

    .line 499
    sget-object v0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v1, "Parameters Map passed to onEvent was null."

    invoke-static {v0, v1}, Lcom/flurry/sdk/ex;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 503
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/bx;->a()Lcom/flurry/sdk/bx;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/flurry/sdk/bx;->c(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 504
    :catch_0
    move-exception v0

    .line 505
    sget-object v1, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/flurry/sdk/ex;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static onPageView()V
    .locals 3

    .prologue
    .line 520
    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/bx;->a()Lcom/flurry/sdk/bx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/bx;->i()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 524
    :goto_0
    return-void

    .line 521
    :catch_0
    move-exception v0

    .line 522
    sget-object v1, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/flurry/sdk/ex;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static onStartSession(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 200
    if-nez p0, :cond_0

    .line 201
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null context"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 203
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 204
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Api key not specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 207
    :cond_2
    invoke-static {p0}, Lcom/flurry/sdk/eg;->a(Landroid/content/Context;)V

    .line 210
    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/bx;->a()Lcom/flurry/sdk/bx;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/flurry/sdk/bx;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 215
    :goto_0
    invoke-static {}, Lcom/flurry/sdk/ey;->a()Lcom/flurry/sdk/ey;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/flurry/sdk/ey;->f(Landroid/content/Context;)V

    .line 216
    return-void

    .line 211
    :catch_0
    move-exception v0

    .line 212
    sget-object v1, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/flurry/sdk/ex;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static setAge(I)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 560
    if-lez p0, :cond_0

    const/16 v0, 0x6e

    if-ge p0, v0, :cond_0

    .line 561
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    int-to-long v2, p0

    const-wide v4, 0x7528ad000L

    mul-long/2addr v2, v4

    sub-long/2addr v0, v2

    .line 563
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2}, Ljava/util/Date;->getYear()I

    move-result v0

    .line 564
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, v0, v6, v6}, Ljava/util/Date;-><init>(III)V

    .line 565
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 567
    invoke-static {}, Lcom/flurry/sdk/eh;->a()Lcom/flurry/sdk/ei;

    move-result-object v2

    const-string v3, "Age"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/flurry/sdk/ei;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 569
    :cond_0
    return-void
.end method

.method public static setCaptureUncaughtExceptions(Z)V
    .locals 3

    .prologue
    .line 163
    invoke-static {}, Lcom/flurry/sdk/eh;->a()Lcom/flurry/sdk/ei;

    move-result-object v0

    const-string v1, "CaptureUncaughtExceptions"

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/ei;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 164
    return-void
.end method

.method public static setContinueSessionMillis(J)V
    .locals 4

    .prologue
    .line 124
    const-wide/16 v0, 0x1388

    cmp-long v0, p0, v0

    if-gez v0, :cond_0

    .line 125
    sget-object v0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid time set for session resumption: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/flurry/sdk/ex;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    :goto_0
    return-void

    .line 129
    :cond_0
    invoke-static {}, Lcom/flurry/sdk/eh;->a()Lcom/flurry/sdk/ei;

    move-result-object v0

    const-string v1, "ContinueSessionMillis"

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/ei;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static setGender(B)V
    .locals 3

    .prologue
    .line 577
    packed-switch p0, :pswitch_data_0

    .line 584
    invoke-static {}, Lcom/flurry/sdk/eh;->a()Lcom/flurry/sdk/ei;

    move-result-object v0

    const-string v1, "Gender"

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/ei;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 586
    :goto_0
    return-void

    .line 580
    :pswitch_0
    invoke-static {}, Lcom/flurry/sdk/eh;->a()Lcom/flurry/sdk/ei;

    move-result-object v0

    const-string v1, "Gender"

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/ei;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 577
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method static setInternalLoggingEnabled(Z)V
    .locals 1

    .prologue
    .line 607
    invoke-static {}, Lcom/flurry/sdk/bx;->a()Lcom/flurry/sdk/bx;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/flurry/sdk/bx;->a(Z)V

    .line 608
    return-void
.end method

.method public static setLocationCriteria(Landroid/location/Criteria;)V
    .locals 2

    .prologue
    .line 543
    invoke-static {}, Lcom/flurry/sdk/eh;->a()Lcom/flurry/sdk/ei;

    move-result-object v0

    const-string v1, "LocationCriteria"

    invoke-virtual {v0, v1, p0}, Lcom/flurry/sdk/ei;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 545
    return-void
.end method

.method public static setLogEnabled(Z)V
    .locals 0

    .prologue
    .line 94
    if-eqz p0, :cond_0

    .line 95
    invoke-static {}, Lcom/flurry/sdk/ex;->b()V

    .line 99
    :goto_0
    return-void

    .line 97
    :cond_0
    invoke-static {}, Lcom/flurry/sdk/ex;->a()V

    goto :goto_0
.end method

.method public static setLogEvents(Z)V
    .locals 3

    .prologue
    .line 137
    invoke-static {}, Lcom/flurry/sdk/eh;->a()Lcom/flurry/sdk/ei;

    move-result-object v0

    const-string v1, "LogEvents"

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/ei;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 138
    return-void
.end method

.method public static setLogLevel(I)V
    .locals 0

    .prologue
    .line 106
    invoke-static {p0}, Lcom/flurry/sdk/ex;->a(I)V

    .line 107
    return-void
.end method

.method public static setReportLocation(Z)V
    .locals 3

    .prologue
    .line 85
    invoke-static {}, Lcom/flurry/sdk/eh;->a()Lcom/flurry/sdk/ei;

    move-result-object v0

    const-string v1, "ReportLocation"

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/ei;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 87
    return-void
.end method

.method public static setReportUrl(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 529
    invoke-static {}, Lcom/flurry/sdk/eh;->a()Lcom/flurry/sdk/ei;

    move-result-object v0

    const-string v1, "ReportUrl"

    invoke-virtual {v0, v1, p0}, Lcom/flurry/sdk/ei;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 530
    return-void
.end method

.method public static setUseHttps(Z)V
    .locals 3

    .prologue
    .line 146
    invoke-static {}, Lcom/flurry/sdk/eh;->a()Lcom/flurry/sdk/ei;

    move-result-object v0

    const-string v1, "UseHttps"

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/ei;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 147
    return-void
.end method

.method public static setUserId(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 595
    if-nez p0, :cond_0

    .line 596
    sget-object v0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v1, "String userId passed to setUserId was null."

    invoke-static {v0, v1}, Lcom/flurry/sdk/ex;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 601
    :goto_0
    return-void

    .line 600
    :cond_0
    invoke-static {}, Lcom/flurry/sdk/eh;->a()Lcom/flurry/sdk/ei;

    move-result-object v0

    const-string v1, "UserId"

    invoke-static {p0}, Lcom/flurry/sdk/fh;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/ei;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static setVersionName(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 54
    if-nez p0, :cond_0

    .line 55
    sget-object v0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v1, "String versionName passed to setVersionName was null."

    invoke-static {v0, v1}, Lcom/flurry/sdk/ex;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    :goto_0
    return-void

    .line 59
    :cond_0
    invoke-static {}, Lcom/flurry/sdk/eh;->a()Lcom/flurry/sdk/ei;

    move-result-object v0

    const-string v1, "VesionName"

    invoke-virtual {v0, v1, p0}, Lcom/flurry/sdk/ei;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method
