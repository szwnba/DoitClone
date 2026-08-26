.class public final Lcom/crashlytics/android/Crashlytics;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static A:Lcom/crashlytics/android/internal/o;

.field private static b:Lcom/crashlytics/android/Crashlytics;

.field private static c:I

.field private static p:Landroid/content/ContextWrapper;

.field private static q:Ljava/lang/String;

.field private static r:Ljava/lang/String;

.field private static s:Ljava/lang/String;

.field private static t:Ljava/lang/String;

.field private static u:Ljava/lang/String;

.field private static v:Ljava/lang/String;

.field private static w:Ljava/lang/String;

.field private static x:Ljava/io/File;

.field private static y:Z

.field private static z:Lcom/crashlytics/android/PinningInfoProvider;


# instance fields
.field a:Ljava/lang/String;

.field private final d:J

.field private final e:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/crashlytics/android/aT;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/crashlytics/android/CrashlyticsListener;

.field private h:Lcom/crashlytics/android/F;

.field private i:Lcom/crashlytics/android/aw;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Lcom/crashlytics/android/aS;

.field private o:Lcom/crashlytics/android/aq;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 110
    sput-object v1, Lcom/crashlytics/android/Crashlytics;->b:Lcom/crashlytics/android/Crashlytics;

    .line 134
    const/4 v0, 0x4

    sput v0, Lcom/crashlytics/android/Crashlytics;->c:I

    .line 173
    const/4 v0, 0x0

    sput-boolean v0, Lcom/crashlytics/android/Crashlytics;->y:Z

    .line 174
    sput-object v1, Lcom/crashlytics/android/Crashlytics;->z:Lcom/crashlytics/android/PinningInfoProvider;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/crashlytics/android/Crashlytics;->f:Ljava/util/concurrent/atomic/AtomicReference;

    .line 152
    iput-object v1, p0, Lcom/crashlytics/android/Crashlytics;->i:Lcom/crashlytics/android/aw;

    .line 154
    iput-object v1, p0, Lcom/crashlytics/android/Crashlytics;->j:Ljava/lang/String;

    .line 155
    iput-object v1, p0, Lcom/crashlytics/android/Crashlytics;->k:Ljava/lang/String;

    .line 156
    iput-object v1, p0, Lcom/crashlytics/android/Crashlytics;->l:Ljava/lang/String;

    .line 157
    iput-object v1, p0, Lcom/crashlytics/android/Crashlytics;->a:Ljava/lang/String;

    .line 179
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/crashlytics/android/Crashlytics;->e:Ljava/util/concurrent/ConcurrentHashMap;

    .line 180
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/crashlytics/android/Crashlytics;->d:J

    .line 181
    return-void
.end method

.method static synthetic a(Lcom/crashlytics/android/Crashlytics;FI)I
    .locals 1

    .prologue
    .line 48
    int-to-float v0, p2

    mul-float/2addr v0, p1

    float-to-int v0, v0

    return v0
.end method

.method static synthetic a(Lcom/crashlytics/android/Crashlytics;)Lcom/crashlytics/android/F;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/crashlytics/android/Crashlytics;->h:Lcom/crashlytics/android/F;

    return-object v0
.end method

.method private a(Lcom/crashlytics/android/av;)Lcom/crashlytics/android/e;
    .locals 11

    .prologue
    .line 1184
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/crashlytics/android/Crashlytics;->m:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/crashlytics/android/ba;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1185
    sget-object v0, Lcom/crashlytics/android/Crashlytics;->r:Ljava/lang/String;

    invoke-static {v0}, Lcom/crashlytics/android/C;->a(Ljava/lang/String;)Lcom/crashlytics/android/C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/crashlytics/android/C;->a()I

    move-result v7

    .line 1187
    new-instance v0, Lcom/crashlytics/android/e;

    sget-object v1, Lcom/crashlytics/android/Crashlytics;->v:Ljava/lang/String;

    sget-object v2, Lcom/crashlytics/android/Crashlytics;->q:Ljava/lang/String;

    sget-object v3, Lcom/crashlytics/android/Crashlytics;->u:Ljava/lang/String;

    sget-object v4, Lcom/crashlytics/android/Crashlytics;->t:Ljava/lang/String;

    sget-object v6, Lcom/crashlytics/android/Crashlytics;->s:Ljava/lang/String;

    sget-object v8, Lcom/crashlytics/android/Crashlytics;->w:Ljava/lang/String;

    const-string v9, "0"

    move-object v10, p1

    invoke-direct/range {v0 .. v10}, Lcom/crashlytics/android/e;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/crashlytics/android/av;)V

    return-object v0
.end method

.method private a(Lcom/crashlytics/android/E;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/crashlytics/android/E",
            "<TT;>;TT;)TT;"
        }
    .end annotation

    .prologue
    .line 815
    iget-object v0, p0, Lcom/crashlytics/android/Crashlytics;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/crashlytics/android/aT;

    .line 816
    if-nez v0, :cond_0

    :goto_0
    return-object p2

    :cond_0
    invoke-interface {p1, v0}, Lcom/crashlytics/android/E;->a(Lcom/crashlytics/android/aT;)Ljava/lang/Object;

    move-result-object p2

    goto :goto_0
.end method

.method private static a(ILjava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 286
    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->getInstance()Lcom/crashlytics/android/Crashlytics;

    move-result-object v0

    .line 287
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/crashlytics/android/Crashlytics;->h:Lcom/crashlytics/android/F;

    if-nez v1, :cond_1

    .line 288
    :cond_0
    const-string v0, "Crashlytics must be initialized by calling Crashlytics.start(Context) prior to logging messages."

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/crashlytics/android/ba;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 294
    :goto_0
    return-void

    .line 292
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, v0, Lcom/crashlytics/android/Crashlytics;->d:J

    sub-long/2addr v2, v4

    .line 293
    iget-object v0, v0, Lcom/crashlytics/android/Crashlytics;->h:Lcom/crashlytics/android/F;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/crashlytics/android/ba;->b(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "/"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v3, v1}, Lcom/crashlytics/android/F;->a(JLjava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/crashlytics/android/Crashlytics;Landroid/content/Context;F)V
    .locals 13

    .prologue
    .line 48
    :try_start_0
    new-instance v1, Lcom/crashlytics/android/aP;

    invoke-direct {v1}, Lcom/crashlytics/android/aP;-><init>()V

    new-instance v2, Lcom/crashlytics/android/ag;

    invoke-direct {v2}, Lcom/crashlytics/android/ag;-><init>()V

    new-instance v3, Lcom/crashlytics/android/ap;

    sget-object v4, Lcom/crashlytics/android/Crashlytics;->x:Ljava/io/File;

    const-string v5, "session_analytics.tap"

    const-string v6, "session_analytics_to_send"

    invoke-direct {v3, v4, v5, v6}, Lcom/crashlytics/android/ap;-><init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v9, Lcom/crashlytics/android/aI;

    invoke-direct {v9, v1, v2, v3}, Lcom/crashlytics/android/aI;-><init>(Lcom/crashlytics/android/aP;Lcom/crashlytics/android/ag;Lcom/crashlytics/android/ap;)V

    iget-object v1, p0, Lcom/crashlytics/android/Crashlytics;->i:Lcom/crashlytics/android/aw;

    invoke-virtual {v1}, Lcom/crashlytics/android/aw;->b()Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Lcom/crashlytics/android/Crashlytics;->i:Lcom/crashlytics/android/aw;

    invoke-virtual {v1}, Lcom/crashlytics/android/aw;->g()Ljava/lang/String;

    move-result-object v4

    iget-object v1, p0, Lcom/crashlytics/android/Crashlytics;->i:Lcom/crashlytics/android/aw;

    invoke-virtual {v1}, Lcom/crashlytics/android/aw;->c()Ljava/lang/String;

    move-result-object v5

    iget-object v1, p0, Lcom/crashlytics/android/Crashlytics;->i:Lcom/crashlytics/android/aw;

    invoke-virtual {v1}, Lcom/crashlytics/android/aw;->d()Ljava/lang/String;

    move-result-object v6

    instance-of v1, p1, Landroid/app/Application;

    if-eqz v1, :cond_4

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_4

    move-object v0, p1

    check-cast v0, Landroid/app/Application;

    move-object v11, v0

    new-instance v1, Lcom/crashlytics/android/g;

    sget-object v2, Lcom/crashlytics/android/Crashlytics;->q:Ljava/lang/String;

    sget-object v7, Lcom/crashlytics/android/Crashlytics;->t:Ljava/lang/String;

    sget-object v8, Lcom/crashlytics/android/Crashlytics;->u:Ljava/lang/String;

    sget-object v10, Lcom/crashlytics/android/Crashlytics;->A:Lcom/crashlytics/android/internal/o;

    invoke-direct/range {v1 .. v10}, Lcom/crashlytics/android/g;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/crashlytics/android/aI;Lcom/crashlytics/android/internal/o;)V

    iput-object v1, p0, Lcom/crashlytics/android/Crashlytics;->o:Lcom/crashlytics/android/aq;

    const-string v2, "Registering activity lifecycle callbacks for session analytics."

    invoke-static {v2}, Lcom/crashlytics/android/ba;->d(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/crashlytics/android/g;->a()Landroid/app/Application$ActivityLifecycleCallbacks;

    move-result-object v1

    invoke-virtual {v11, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "https://settings.crashlytics.com/spi/v2/platforms/android/apps/%s/settings"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    sget-object v5, Lcom/crashlytics/android/Crashlytics;->q:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v9, Lcom/crashlytics/android/aj;

    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->l()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/crashlytics/android/Crashlytics;->A:Lcom/crashlytics/android/internal/o;

    invoke-direct {v9, v2, v1, v3}, Lcom/crashlytics/android/aj;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/crashlytics/android/internal/o;)V

    new-instance v10, Lcom/crashlytics/android/ag;

    invoke-direct {v10}, Lcom/crashlytics/android/ag;-><init>()V

    new-instance v11, Lcom/crashlytics/android/aU;

    invoke-direct {v11}, Lcom/crashlytics/android/aU;-><init>()V

    new-instance v12, Lcom/crashlytics/android/m;

    invoke-direct {v12}, Lcom/crashlytics/android/m;-><init>()V

    invoke-direct {p0}, Lcom/crashlytics/android/Crashlytics;->w()Ljava/lang/String;

    move-result-object v8

    iget-object v1, p0, Lcom/crashlytics/android/Crashlytics;->n:Lcom/crashlytics/android/aS;

    if-nez v1, :cond_0

    sget-object v1, Lcom/crashlytics/android/Crashlytics;->v:Ljava/lang/String;

    sget-object v2, Lcom/crashlytics/android/Crashlytics;->q:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/crashlytics/android/ba;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/crashlytics/android/Crashlytics;->m:Ljava/lang/String;

    aput-object v4, v1, v2

    invoke-static {v1}, Lcom/crashlytics/android/ba;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v1, Lcom/crashlytics/android/Crashlytics;->r:Ljava/lang/String;

    invoke-static {v1}, Lcom/crashlytics/android/C;->a(Ljava/lang/String;)Lcom/crashlytics/android/C;

    move-result-object v1

    invoke-virtual {v1}, Lcom/crashlytics/android/C;->a()I

    move-result v7

    new-instance v1, Lcom/crashlytics/android/aV;

    sget-object v2, Lcom/crashlytics/android/Crashlytics;->v:Ljava/lang/String;

    sget-object v5, Lcom/crashlytics/android/Crashlytics;->u:Ljava/lang/String;

    sget-object v6, Lcom/crashlytics/android/Crashlytics;->t:Ljava/lang/String;

    invoke-direct/range {v1 .. v8}, Lcom/crashlytics/android/aV;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    new-instance v2, Lcom/crashlytics/android/aS;

    move-object v3, v1

    move-object v4, v10

    move-object v5, v11

    move-object v6, v12

    move-object v7, v9

    invoke-direct/range {v2 .. v7}, Lcom/crashlytics/android/aS;-><init>(Lcom/crashlytics/android/aV;Lcom/crashlytics/android/ag;Lcom/crashlytics/android/aU;Lcom/crashlytics/android/m;Lcom/crashlytics/android/aW;)V

    iput-object v2, p0, Lcom/crashlytics/android/Crashlytics;->n:Lcom/crashlytics/android/aS;

    :cond_0
    const/4 v2, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/crashlytics/android/Crashlytics;->n:Lcom/crashlytics/android/aS;

    invoke-virtual {v1}, Lcom/crashlytics/android/aS;->a()Lcom/crashlytics/android/aT;

    move-result-object v3

    iget-object v1, p0, Lcom/crashlytics/android/Crashlytics;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget-object v1, v3, Lcom/crashlytics/android/aT;->d:Lcom/crashlytics/android/au;

    iget-boolean v1, v1, Lcom/crashlytics/android/au;->c:Z

    if-nez v1, :cond_5

    const-string v1, "Disabling analytics collection based on settings flag value."

    invoke-static {v1}, Lcom/crashlytics/android/ba;->d(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/crashlytics/android/Crashlytics;->o:Lcom/crashlytics/android/aq;

    invoke-virtual {v1}, Lcom/crashlytics/android/aq;->c()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v6, v3

    :goto_1
    if-eqz v6, :cond_a

    :try_start_2
    iget-object v3, v6, Lcom/crashlytics/android/aT;->a:Lcom/crashlytics/android/f;

    const/4 v1, 0x1

    const-string v7, "new"

    iget-object v9, v3, Lcom/crashlytics/android/f;->a:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-direct {p0, v8}, Lcom/crashlytics/android/Crashlytics;->d(Ljava/lang/String;)Lcom/crashlytics/android/av;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/crashlytics/android/Crashlytics;->a(Lcom/crashlytics/android/av;)Lcom/crashlytics/android/e;

    move-result-object v1

    new-instance v7, Lcom/crashlytics/android/ad;

    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->l()Ljava/lang/String;

    move-result-object v8

    iget-object v3, v3, Lcom/crashlytics/android/f;->b:Ljava/lang/String;

    sget-object v9, Lcom/crashlytics/android/Crashlytics;->A:Lcom/crashlytics/android/internal/o;

    invoke-direct {v7, v8, v3, v9}, Lcom/crashlytics/android/ad;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/crashlytics/android/internal/o;)V

    invoke-virtual {v7, v1}, Lcom/crashlytics/android/ad;->a(Lcom/crashlytics/android/e;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-direct {p0}, Lcom/crashlytics/android/Crashlytics;->v()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result v1

    :cond_1
    :goto_2
    move v3, v1

    :goto_3
    :try_start_3
    iget-object v1, v6, Lcom/crashlytics/android/aT;->d:Lcom/crashlytics/android/au;

    iget-boolean v1, v1, Lcom/crashlytics/android/au;->b:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :goto_4
    if-eqz v3, :cond_9

    if-eqz v1, :cond_9

    const/4 v1, 0x0

    :try_start_4
    iget-object v2, p0, Lcom/crashlytics/android/Crashlytics;->h:Lcom/crashlytics/android/F;

    invoke-virtual {v2}, Lcom/crashlytics/android/F;->b()V

    invoke-virtual {p0}, Lcom/crashlytics/android/Crashlytics;->s()Lcom/crashlytics/android/af;

    move-result-object v2

    if-eqz v2, :cond_2

    new-instance v3, Lcom/crashlytics/android/aF;

    invoke-direct {v3, v2}, Lcom/crashlytics/android/aF;-><init>(Lcom/crashlytics/android/af;)V

    invoke-virtual {v3, p1, p2}, Lcom/crashlytics/android/aF;->a(Landroid/content/Context;F)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    :cond_2
    :goto_5
    if-eqz v1, :cond_3

    const-string v1, "Crash reporting disabled."

    invoke-static {v1}, Lcom/crashlytics/android/ba;->c(Ljava/lang/String;)V

    :cond_3
    return-void

    :cond_4
    :try_start_5
    sget-object v1, Lcom/crashlytics/android/Crashlytics;->q:Ljava/lang/String;

    new-instance v1, Lcom/crashlytics/android/aq;

    sget-object v2, Lcom/crashlytics/android/Crashlytics;->q:Ljava/lang/String;

    sget-object v7, Lcom/crashlytics/android/Crashlytics;->t:Ljava/lang/String;

    sget-object v8, Lcom/crashlytics/android/Crashlytics;->u:Ljava/lang/String;

    sget-object v10, Lcom/crashlytics/android/Crashlytics;->A:Lcom/crashlytics/android/internal/o;

    invoke-direct/range {v1 .. v10}, Lcom/crashlytics/android/aq;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/crashlytics/android/aI;Lcom/crashlytics/android/internal/o;)V

    iput-object v1, p0, Lcom/crashlytics/android/Crashlytics;->o:Lcom/crashlytics/android/aq;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v1

    const-string v2, "Crashlytics failed to initialize session analytics."

    invoke-static {v2, v1}, Lcom/crashlytics/android/ba;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_5
    :try_start_6
    iget-object v1, p0, Lcom/crashlytics/android/Crashlytics;->o:Lcom/crashlytics/android/aq;

    iget-object v6, v3, Lcom/crashlytics/android/aT;->e:Lcom/crashlytics/android/c;

    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->l()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Lcom/crashlytics/android/aq;->a(Lcom/crashlytics/android/c;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    move-object v6, v3

    goto :goto_1

    :catch_1
    move-exception v1

    const-string v6, "Error dealing with settings"

    invoke-static {v6, v1}, Lcom/crashlytics/android/ba;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v6, v3

    goto/16 :goto_1

    :cond_6
    :try_start_7
    const-string v1, "Failed to create app with Crashlytics service."

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/crashlytics/android/ba;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v1, 0x0

    goto :goto_2

    :cond_7
    const-string v7, "configured"

    iget-object v9, v3, Lcom/crashlytics/android/f;->a:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-direct {p0}, Lcom/crashlytics/android/Crashlytics;->v()Z

    move-result v1

    goto :goto_2

    :cond_8
    iget-boolean v7, v3, Lcom/crashlytics/android/f;->d:Z

    if-eqz v7, :cond_1

    const-string v7, "Server says an update is required - forcing a full App update."

    invoke-static {v7}, Lcom/crashlytics/android/ba;->c(Ljava/lang/String;)V

    invoke-direct {p0, v8}, Lcom/crashlytics/android/Crashlytics;->d(Ljava/lang/String;)Lcom/crashlytics/android/av;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/crashlytics/android/Crashlytics;->a(Lcom/crashlytics/android/av;)Lcom/crashlytics/android/e;

    move-result-object v7

    new-instance v8, Lcom/crashlytics/android/aZ;

    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->l()Ljava/lang/String;

    move-result-object v9

    iget-object v3, v3, Lcom/crashlytics/android/f;->b:Ljava/lang/String;

    sget-object v10, Lcom/crashlytics/android/Crashlytics;->A:Lcom/crashlytics/android/internal/o;

    invoke-direct {v8, v9, v3, v10}, Lcom/crashlytics/android/aZ;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/crashlytics/android/internal/o;)V

    invoke-virtual {v8, v7}, Lcom/crashlytics/android/aZ;->a(Lcom/crashlytics/android/e;)Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    goto/16 :goto_2

    :catch_2
    move-exception v1

    const-string v3, "Error performing auto configuration."

    invoke-static {v3, v1}, Lcom/crashlytics/android/ba;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    move v3, v5

    goto/16 :goto_3

    :catch_3
    move-exception v1

    const-string v5, "Error getting collect reports setting."

    invoke-static {v5, v1}, Lcom/crashlytics/android/ba;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    move v1, v4

    goto/16 :goto_4

    :catch_4
    move-exception v2

    const-string v3, "Error sending crash report"

    invoke-static {v3, v2}, Lcom/crashlytics/android/ba;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_5

    :cond_9
    move v1, v2

    goto/16 :goto_5

    :cond_a
    move v1, v4

    move v3, v5

    goto/16 :goto_4
.end method

.method static a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 258
    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->getInstance()Lcom/crashlytics/android/Crashlytics;

    move-result-object v0

    .line 259
    iget-object v1, v0, Lcom/crashlytics/android/Crashlytics;->o:Lcom/crashlytics/android/aq;

    if-eqz v1, :cond_0

    .line 260
    iget-object v0, v0, Lcom/crashlytics/android/Crashlytics;->o:Lcom/crashlytics/android/aq;

    invoke-virtual {v0, p0}, Lcom/crashlytics/android/aq;->b(Ljava/lang/String;)V

    .line 262
    :cond_0
    return-void
.end method

.method private declared-synchronized a(Ljava/lang/String;Landroid/content/Context;F)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 874
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/crashlytics/android/Crashlytics;->p:Landroid/content/ContextWrapper;

    if-eqz v0, :cond_1

    .line 875
    const-string v0, "Crashlytics already started, ignoring re-initialization attempt."

    invoke-static {v0}, Lcom/crashlytics/android/ba;->c(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 977
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 879
    :cond_1
    :try_start_1
    sput-object p1, Lcom/crashlytics/android/Crashlytics;->v:Ljava/lang/String;

    .line 880
    new-instance v0, Landroid/content/ContextWrapper;

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/crashlytics/android/Crashlytics;->p:Landroid/content/ContextWrapper;

    .line 881
    new-instance v0, Lcom/crashlytics/android/internal/d;

    sget-object v2, Lcom/crashlytics/android/ba;->a:Lcom/crashlytics/android/internal/b;

    invoke-direct {v0, v2}, Lcom/crashlytics/android/internal/d;-><init>(Lcom/crashlytics/android/internal/b;)V

    sput-object v0, Lcom/crashlytics/android/Crashlytics;->A:Lcom/crashlytics/android/internal/o;

    .line 883
    const/4 v0, 0x4

    const-string v2, "Crashlytics"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Initializing Crashlytics "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->getCrashlyticsVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/crashlytics/android/ba;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 886
    :try_start_2
    sget-object v0, Lcom/crashlytics/android/Crashlytics;->p:Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/crashlytics/android/Crashlytics;->q:Ljava/lang/String;

    .line 887
    sget-object v0, Lcom/crashlytics/android/Crashlytics;->p:Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 889
    sget-object v2, Lcom/crashlytics/android/Crashlytics;->q:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/crashlytics/android/Crashlytics;->r:Ljava/lang/String;

    .line 890
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Installer package name is: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/crashlytics/android/Crashlytics;->r:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/crashlytics/android/ba;->c(Ljava/lang/String;)V

    .line 892
    sget-object v2, Lcom/crashlytics/android/Crashlytics;->q:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 893
    iget v2, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/crashlytics/android/Crashlytics;->t:Ljava/lang/String;

    .line 894
    iget-object v2, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-nez v2, :cond_4

    const-string v0, "0.0"

    :goto_1
    sput-object v0, Lcom/crashlytics/android/Crashlytics;->u:Ljava/lang/String;

    .line 895
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/crashlytics/android/Crashlytics;->s:Ljava/lang/String;

    .line 897
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/crashlytics/android/Crashlytics;->w:Ljava/lang/String;

    .line 900
    const/4 v0, 0x0

    sget-object v2, Lcom/crashlytics/android/Crashlytics;->p:Landroid/content/ContextWrapper;

    const-string v3, "com.crashlytics.android.build_id"

    const-string v4, "string"

    invoke-static {v2, v3, v4}, Lcom/crashlytics/android/ba;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_2

    sget-object v0, Lcom/crashlytics/android/Crashlytics;->p:Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Build ID is: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/crashlytics/android/ba;->c(Ljava/lang/String;)V

    :cond_2
    iput-object v0, p0, Lcom/crashlytics/android/Crashlytics;->m:Ljava/lang/String;

    .line 902
    sget-object v0, Lcom/crashlytics/android/Crashlytics;->p:Landroid/content/ContextWrapper;

    new-instance v2, Ljava/io/File;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    const-string v3, "com.crashlytics.sdk.android"

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v2, Lcom/crashlytics/android/Crashlytics;->x:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/crashlytics/android/Crashlytics;->x:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 907
    :cond_3
    :goto_2
    :try_start_3
    new-instance v0, Lcom/crashlytics/android/aw;

    sget-object v2, Lcom/crashlytics/android/Crashlytics;->p:Landroid/content/ContextWrapper;

    invoke-direct {v0, v2}, Lcom/crashlytics/android/aw;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/crashlytics/android/Crashlytics;->i:Lcom/crashlytics/android/aw;

    .line 910
    iget-object v0, p0, Lcom/crashlytics/android/Crashlytics;->i:Lcom/crashlytics/android/aw;

    invoke-virtual {v0}, Lcom/crashlytics/android/aw;->h()Ljava/lang/String;

    .line 913
    new-instance v0, Lcom/crashlytics/android/j;

    iget-object v2, p0, Lcom/crashlytics/android/Crashlytics;->m:Ljava/lang/String;

    sget-object v3, Lcom/crashlytics/android/Crashlytics;->p:Landroid/content/ContextWrapper;

    const-string v4, "com.crashlytics.RequireBuildId"

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lcom/crashlytics/android/ba;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v3

    invoke-direct {v0, v2, v3}, Lcom/crashlytics/android/j;-><init>(Ljava/lang/String;Z)V

    sget-object v2, Lcom/crashlytics/android/Crashlytics;->q:Ljava/lang/String;

    invoke-virtual {v0, p1, v2}, Lcom/crashlytics/android/j;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 918
    :try_start_4
    const-string v0, "Installing exception handler..."

    invoke-static {v0}, Lcom/crashlytics/android/ba;->c(Ljava/lang/String;)V

    .line 919
    new-instance v0, Lcom/crashlytics/android/F;

    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v2

    iget-object v3, p0, Lcom/crashlytics/android/Crashlytics;->g:Lcom/crashlytics/android/CrashlyticsListener;

    iget-object v4, p0, Lcom/crashlytics/android/Crashlytics;->m:Ljava/lang/String;

    invoke-direct {v0, v2, v3, v4}, Lcom/crashlytics/android/F;-><init>(Ljava/lang/Thread$UncaughtExceptionHandler;Lcom/crashlytics/android/CrashlyticsListener;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/crashlytics/android/Crashlytics;->h:Lcom/crashlytics/android/F;

    .line 926
    iget-object v0, p0, Lcom/crashlytics/android/Crashlytics;->h:Lcom/crashlytics/android/F;

    invoke-virtual {v0}, Lcom/crashlytics/android/F;->f()Z

    move-result v1

    .line 929
    iget-object v0, p0, Lcom/crashlytics/android/Crashlytics;->h:Lcom/crashlytics/android/F;

    invoke-virtual {v0}, Lcom/crashlytics/android/F;->d()V

    .line 931
    iget-object v0, p0, Lcom/crashlytics/android/Crashlytics;->h:Lcom/crashlytics/android/F;

    invoke-virtual {v0}, Lcom/crashlytics/android/F;->c()V

    .line 932
    iget-object v0, p0, Lcom/crashlytics/android/Crashlytics;->h:Lcom/crashlytics/android/F;

    invoke-virtual {v0}, Lcom/crashlytics/android/F;->h()V

    .line 933
    iget-object v0, p0, Lcom/crashlytics/android/Crashlytics;->h:Lcom/crashlytics/android/F;

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 934
    const-string v0, "Successfully installed exception handler."

    invoke-static {v0}, Lcom/crashlytics/android/ba;->c(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 943
    :goto_3
    :try_start_5
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 945
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/crashlytics/android/B;

    invoke-direct {v3, p0, p2, p3, v0}, Lcom/crashlytics/android/B;-><init>(Lcom/crashlytics/android/Crashlytics;Landroid/content/Context;FLjava/util/concurrent/CountDownLatch;)V

    const-string v4, "Crashlytics Initializer"

    invoke-direct {v2, v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 964
    if-eqz v1, :cond_0

    .line 965
    const-string v1, "Crashlytics detected incomplete initialization on previous app launch. Will initialize synchronously."

    invoke-static {v1}, Lcom/crashlytics/android/ba;->c(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 969
    const-wide/16 v2, 0xfa0

    :try_start_6
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 970
    const/4 v0, 0x5

    const-string v1, "Crashlytics"

    const-string v2, "Crashlytics initialization was not completed in the allotted time."

    invoke-static {v0, v1, v2}, Lcom/crashlytics/android/ba;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0

    .line 973
    :catch_0
    move-exception v0

    .line 974
    :try_start_7
    const-string v1, "Crashlytics was interrupted during initialization."

    invoke-static {v1, v0}, Lcom/crashlytics/android/ba;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_0

    .line 874
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 894
    :cond_4
    :try_start_8
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_1

    .line 903
    :catch_1
    move-exception v0

    .line 904
    :try_start_9
    const-string v2, "Error setting up app properties"

    invoke-static {v2, v0}, Lcom/crashlytics/android/ba;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 935
    :catch_2
    move-exception v0

    .line 936
    const-string v2, "There was a problem installing the exception handler."

    invoke-static {v2, v0}, Lcom/crashlytics/android/ba;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_3
.end method

.method static a(Z)V
    .locals 3

    .prologue
    .line 651
    invoke-static {}, Lcom/crashlytics/android/ba;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "always_send_reports_opt_in"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 652
    return-void
.end method

.method static synthetic a(Lcom/crashlytics/android/Crashlytics;Landroid/app/Activity;Lcom/crashlytics/android/ay;)Z
    .locals 6

    .prologue
    .line 48
    new-instance v4, Lcom/crashlytics/android/ak;

    invoke-direct {v4, p1, p2}, Lcom/crashlytics/android/ak;-><init>(Landroid/content/Context;Lcom/crashlytics/android/ay;)V

    new-instance v3, Lcom/crashlytics/android/D;

    const/4 v0, 0x0

    invoke-direct {v3, p0, v0}, Lcom/crashlytics/android/D;-><init>(Lcom/crashlytics/android/Crashlytics;B)V

    new-instance v0, Lcom/crashlytics/android/x;

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/crashlytics/android/x;-><init>(Lcom/crashlytics/android/Crashlytics;Landroid/app/Activity;Lcom/crashlytics/android/D;Lcom/crashlytics/android/ak;Lcom/crashlytics/android/ay;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    const-string v0, "Waiting for user opt-in."

    invoke-static {v0}, Lcom/crashlytics/android/ba;->c(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/crashlytics/android/D;->b()V

    invoke-virtual {v3}, Lcom/crashlytics/android/D;->a()Z

    move-result v0

    return v0
.end method

.method static b()I
    .locals 1

    .prologue
    .line 572
    sget v0, Lcom/crashlytics/android/Crashlytics;->c:I

    return v0
.end method

.method private static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 820
    .line 823
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 824
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 825
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v3, 0x80

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 827
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 828
    if-eqz v0, :cond_2

    .line 829
    const-string v2, "com.crashlytics.ApiKey"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 837
    :goto_0
    invoke-static {v0}, Lcom/crashlytics/android/ba;->e(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 839
    const-string v2, "com.crashlytics.ApiKey"

    const-string v3, "string"

    invoke-static {p0, v2, v3}, Lcom/crashlytics/android/ba;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 840
    if-eqz v2, :cond_0

    .line 841
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 845
    :cond_0
    invoke-static {v0}, Lcom/crashlytics/android/ba;->e(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 846
    sget-boolean v2, Lcom/crashlytics/android/Crashlytics;->y:Z

    if-nez v2, :cond_1

    invoke-static {p0}, Lcom/crashlytics/android/ba;->e(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 847
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Crashlytics could not be initialized, API key missing from AndroidManifest.xml. Add the following tag to your Application element \n\t<meta-data android:name=\"com.crashlytics.ApiKey\" android:value=\"YOUR_API_KEY\"/>"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 831
    :catch_0
    move-exception v0

    .line 834
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Caught non-fatal exception while retrieving apiKey: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/crashlytics/android/ba;->c(Ljava/lang/String;)V

    :cond_2
    move-object v0, v1

    goto :goto_0

    .line 849
    :cond_3
    const-string v2, "Crashlytics could not be initialized, API key missing from AndroidManifest.xml. Add the following tag to your Application element \n\t<meta-data android:name=\"com.crashlytics.ApiKey\" android:value=\"YOUR_API_KEY\"/>"

    invoke-static {v2, v1}, Lcom/crashlytics/android/ba;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 853
    :cond_4
    return-object v0
.end method

.method static b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 265
    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->getInstance()Lcom/crashlytics/android/Crashlytics;

    move-result-object v0

    .line 266
    iget-object v1, v0, Lcom/crashlytics/android/Crashlytics;->o:Lcom/crashlytics/android/aq;

    if-eqz v1, :cond_0

    .line 267
    iget-object v0, v0, Lcom/crashlytics/android/Crashlytics;->o:Lcom/crashlytics/android/aq;

    invoke-virtual {v0, p0}, Lcom/crashlytics/android/aq;->a(Ljava/lang/String;)V

    .line 269
    :cond_0
    return-void
.end method

.method private static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    const/16 v1, 0x400

    .line 864
    if-eqz p0, :cond_0

    .line 865
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 866
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v1, :cond_0

    .line 867
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 870
    :cond_0
    return-object p0
.end method

.method static d()Landroid/content/ContextWrapper;
    .locals 1

    .prologue
    .line 580
    sget-object v0, Lcom/crashlytics/android/Crashlytics;->p:Landroid/content/ContextWrapper;

    return-object v0
.end method

.method private d(Ljava/lang/String;)Lcom/crashlytics/android/av;
    .locals 5

    .prologue
    .line 1217
    const/4 v1, 0x0

    .line 1221
    if-eqz p1, :cond_0

    .line 1223
    :try_start_0
    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->x()I

    move-result v2

    .line 1224
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "App icon resource ID is "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/crashlytics/android/ba;->c(Ljava/lang/String;)V

    .line 1229
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1230
    const/4 v0, 0x1

    iput-boolean v0, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 1232
    sget-object v0, Lcom/crashlytics/android/Crashlytics;->p:Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 1234
    new-instance v0, Lcom/crashlytics/android/av;

    iget v4, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v3, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-direct {v0, p1, v2, v4, v3}, Lcom/crashlytics/android/av;-><init>(Ljava/lang/String;III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1240
    :goto_0
    return-object v0

    .line 1235
    :catch_0
    move-exception v0

    .line 1236
    const-string v2, "Failed to load icon"

    invoke-static {v2, v0}, Lcom/crashlytics/android/ba;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method static e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 584
    sget-object v0, Lcom/crashlytics/android/Crashlytics;->q:Ljava/lang/String;

    return-object v0
.end method

.method static f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 594
    sget-object v0, Lcom/crashlytics/android/Crashlytics;->r:Ljava/lang/String;

    return-object v0
.end method

.method static g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 598
    sget-object v0, Lcom/crashlytics/android/Crashlytics;->u:Ljava/lang/String;

    return-object v0
.end method

.method public static getCrashlyticsVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 561
    const-string v0, "1.1.5.4"

    return-object v0
.end method

.method public static declared-synchronized getInstance()Lcom/crashlytics/android/Crashlytics;
    .locals 2

    .prologue
    .line 225
    const-class v1, Lcom/crashlytics/android/Crashlytics;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/crashlytics/android/Crashlytics;->b:Lcom/crashlytics/android/Crashlytics;

    if-nez v0, :cond_0

    .line 226
    new-instance v0, Lcom/crashlytics/android/Crashlytics;

    invoke-direct {v0}, Lcom/crashlytics/android/Crashlytics;-><init>()V

    sput-object v0, Lcom/crashlytics/android/Crashlytics;->b:Lcom/crashlytics/android/Crashlytics;

    .line 229
    :cond_0
    sget-object v0, Lcom/crashlytics/android/Crashlytics;->b:Lcom/crashlytics/android/Crashlytics;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 225
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getPinningInfoProvider()Lcom/crashlytics/android/PinningInfoProvider;
    .locals 1

    .prologue
    .line 516
    sget-object v0, Lcom/crashlytics/android/Crashlytics;->z:Lcom/crashlytics/android/PinningInfoProvider;

    return-object v0
.end method

.method static h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 602
    sget-object v0, Lcom/crashlytics/android/Crashlytics;->t:Ljava/lang/String;

    return-object v0
.end method

.method static i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 606
    sget-object v0, Lcom/crashlytics/android/Crashlytics;->v:Ljava/lang/String;

    return-object v0
.end method

.method static j()Ljava/io/File;
    .locals 1

    .prologue
    .line 610
    sget-object v0, Lcom/crashlytics/android/Crashlytics;->x:Ljava/io/File;

    return-object v0
.end method

.method static k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 614
    sget-object v0, Lcom/crashlytics/android/Crashlytics;->s:Ljava/lang/String;

    return-object v0
.end method

.method static l()Ljava/lang/String;
    .locals 2

    .prologue
    .line 618
    sget-object v0, Lcom/crashlytics/android/Crashlytics;->p:Landroid/content/ContextWrapper;

    const-string v1, "com.crashlytics.ApiEndpoint"

    invoke-static {v0, v1}, Lcom/crashlytics/android/ba;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static log(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "priority"    # I
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 310
    invoke-static {p0, p1, p2}, Lcom/crashlytics/android/Crashlytics;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 313
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/crashlytics/android/ba;->c(ILjava/lang/String;Ljava/lang/String;)V

    .line 314
    return-void
.end method

.method public static log(Ljava/lang/String;)V
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 282
    const/4 v0, 0x3

    const-string v1, "Crashlytics"

    invoke-static {v0, v1, p0}, Lcom/crashlytics/android/Crashlytics;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 283
    return-void
.end method

.method public static logException(Ljava/lang/Throwable;)V
    .locals 3
    .param p0, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 242
    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->getInstance()Lcom/crashlytics/android/Crashlytics;

    move-result-object v0

    .line 243
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/crashlytics/android/Crashlytics;->h:Lcom/crashlytics/android/F;

    if-nez v1, :cond_1

    .line 244
    :cond_0
    const-string v0, "Crashlytics must be initialized by calling Crashlytics.start(Context) prior to logging exceptions."

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/crashlytics/android/ba;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 255
    :goto_0
    return-void

    .line 249
    :cond_1
    if-nez p0, :cond_2

    .line 250
    const/4 v0, 0x5

    const-string v1, "Crashlytics"

    const-string v2, "Crashlytics is ignoring a request to log a null exception."

    invoke-static {v0, v1, v2}, Lcom/crashlytics/android/ba;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 254
    :cond_2
    iget-object v0, v0, Lcom/crashlytics/android/Crashlytics;->h:Lcom/crashlytics/android/F;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/crashlytics/android/F;->a(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static n()Z
    .locals 3

    .prologue
    .line 647
    invoke-static {}, Lcom/crashlytics/android/ba;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "always_send_reports_opt_in"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static setApplicationInstallationIdentifier(Ljava/lang/String;)V
    .locals 2
    .param p0, "identifier"    # Ljava/lang/String;

    .prologue
    .line 367
    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->getInstance()Lcom/crashlytics/android/Crashlytics;

    move-result-object v0

    invoke-static {p0}, Lcom/crashlytics/android/Crashlytics;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/crashlytics/android/Crashlytics;->a:Ljava/lang/String;

    .line 368
    return-void
.end method

.method public static setBool(Ljava/lang/String;Z)V
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Z

    .prologue
    .line 407
    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/crashlytics/android/Crashlytics;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    return-void
.end method

.method public static setDouble(Ljava/lang/String;D)V
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # D

    .prologue
    .line 416
    invoke-static {p1, p2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/crashlytics/android/Crashlytics;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    return-void
.end method

.method public static setFloat(Ljava/lang/String;F)V
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # F

    .prologue
    .line 425
    invoke-static {p1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/crashlytics/android/Crashlytics;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    return-void
.end method

.method public static setInt(Ljava/lang/String;I)V
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # I

    .prologue
    .line 434
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/crashlytics/android/Crashlytics;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    return-void
.end method

.method public static setLong(Ljava/lang/String;J)V
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # J

    .prologue
    .line 443
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/crashlytics/android/Crashlytics;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    return-void
.end method

.method public static setPinningInfoProvider(Lcom/crashlytics/android/PinningInfoProvider;)V
    .locals 2
    .param p0, "pinningInfo"    # Lcom/crashlytics/android/PinningInfoProvider;

    .prologue
    .line 486
    sget-object v0, Lcom/crashlytics/android/Crashlytics;->z:Lcom/crashlytics/android/PinningInfoProvider;

    if-eq v0, p0, :cond_0

    .line 487
    sput-object p0, Lcom/crashlytics/android/Crashlytics;->z:Lcom/crashlytics/android/PinningInfoProvider;

    .line 489
    sget-object v0, Lcom/crashlytics/android/Crashlytics;->A:Lcom/crashlytics/android/internal/o;

    if-eqz v0, :cond_0

    .line 490
    if-nez p0, :cond_1

    .line 491
    sget-object v0, Lcom/crashlytics/android/Crashlytics;->A:Lcom/crashlytics/android/internal/o;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/crashlytics/android/internal/o;->a(Lcom/crashlytics/android/internal/p;)V

    .line 513
    :cond_0
    :goto_0
    return-void

    .line 493
    :cond_1
    sget-object v0, Lcom/crashlytics/android/Crashlytics;->A:Lcom/crashlytics/android/internal/o;

    new-instance v1, Lcom/crashlytics/android/s;

    invoke-direct {v1, p0}, Lcom/crashlytics/android/s;-><init>(Lcom/crashlytics/android/PinningInfoProvider;)V

    invoke-interface {v0, v1}, Lcom/crashlytics/android/internal/o;->a(Lcom/crashlytics/android/internal/p;)V

    goto :goto_0
.end method

.method public static setString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 379
    if-nez p0, :cond_1

    .line 380
    sget-object v0, Lcom/crashlytics/android/Crashlytics;->p:Landroid/content/ContextWrapper;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/crashlytics/android/Crashlytics;->p:Landroid/content/ContextWrapper;

    invoke-static {v0}, Lcom/crashlytics/android/ba;->e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 381
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Custom attribute key cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 383
    :cond_0
    const-string v0, "Attempting to set custom attribute with null key, ignoring."

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/crashlytics/android/ba;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 399
    :goto_0
    return-void

    .line 387
    :cond_1
    invoke-static {p0}, Lcom/crashlytics/android/Crashlytics;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 388
    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->getInstance()Lcom/crashlytics/android/Crashlytics;

    move-result-object v0

    iget-object v0, v0, Lcom/crashlytics/android/Crashlytics;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    const/16 v1, 0x40

    if-lt v0, v1, :cond_2

    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->getInstance()Lcom/crashlytics/android/Crashlytics;

    move-result-object v0

    iget-object v0, v0, Lcom/crashlytics/android/Crashlytics;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 390
    :cond_2
    if-nez p1, :cond_3

    .line 391
    const-string p1, ""

    .line 395
    :goto_1
    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->getInstance()Lcom/crashlytics/android/Crashlytics;

    move-result-object v0

    iget-object v0, v0, Lcom/crashlytics/android/Crashlytics;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 393
    :cond_3
    invoke-static {p1}, Lcom/crashlytics/android/Crashlytics;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 397
    :cond_4
    const-string v0, "Exceeded maximum number of custom attributes (64)"

    invoke-static {v0}, Lcom/crashlytics/android/ba;->c(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static setUserEmail(Ljava/lang/String;)V
    .locals 2
    .param p0, "email"    # Ljava/lang/String;

    .prologue
    .line 360
    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->getInstance()Lcom/crashlytics/android/Crashlytics;

    move-result-object v0

    invoke-static {p0}, Lcom/crashlytics/android/Crashlytics;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/crashlytics/android/Crashlytics;->k:Ljava/lang/String;

    .line 361
    return-void
.end method

.method public static setUserIdentifier(Ljava/lang/String;)V
    .locals 2
    .param p0, "identifier"    # Ljava/lang/String;

    .prologue
    .line 342
    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->getInstance()Lcom/crashlytics/android/Crashlytics;

    move-result-object v0

    invoke-static {p0}, Lcom/crashlytics/android/Crashlytics;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/crashlytics/android/Crashlytics;->j:Ljava/lang/String;

    .line 343
    return-void
.end method

.method public static setUserName(Ljava/lang/String;)V
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 351
    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->getInstance()Lcom/crashlytics/android/Crashlytics;

    move-result-object v0

    invoke-static {p0}, Lcom/crashlytics/android/Crashlytics;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/crashlytics/android/Crashlytics;->l:Ljava/lang/String;

    .line 352
    return-void
.end method

.method public static start(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 190
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p0, v0}, Lcom/crashlytics/android/Crashlytics;->start(Landroid/content/Context;F)V

    .line 191
    return-void
.end method

.method public static start(Landroid/content/Context;F)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "delay"    # F

    .prologue
    .line 201
    if-nez p0, :cond_0

    .line 202
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 205
    :cond_0
    invoke-static {p0}, Lcom/crashlytics/android/Crashlytics;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 207
    if-nez v0, :cond_1

    .line 219
    :goto_0
    return-void

    .line 212
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->getInstance()Lcom/crashlytics/android/Crashlytics;

    move-result-object v1

    invoke-direct {v1, v0, p0, p1}, Lcom/crashlytics/android/Crashlytics;->a(Ljava/lang/String;Landroid/content/Context;F)V
    :try_end_0
    .catch Lcom/crashlytics/android/CrashlyticsMissingDependencyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 213
    :catch_0
    move-exception v0

    .line 215
    throw v0

    .line 216
    :catch_1
    move-exception v0

    .line 217
    const-string v1, "Crashlytics was not started due to an exception during initialization"

    invoke-static {v1, v0}, Lcom/crashlytics/android/ba;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static synthetic u()Lcom/crashlytics/android/internal/o;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/crashlytics/android/Crashlytics;->A:Lcom/crashlytics/android/internal/o;

    return-object v0
.end method

.method private v()Z
    .locals 3

    .prologue
    .line 1150
    iget-object v0, p0, Lcom/crashlytics/android/Crashlytics;->n:Lcom/crashlytics/android/aS;

    sget-object v1, Lcom/crashlytics/android/aR;->b:Lcom/crashlytics/android/aR;

    invoke-virtual {v0, v1}, Lcom/crashlytics/android/aS;->a(Lcom/crashlytics/android/aR;)Lcom/crashlytics/android/aT;

    move-result-object v0

    .line 1151
    iget-object v1, p0, Lcom/crashlytics/android/Crashlytics;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 1153
    if-nez v0, :cond_0

    .line 1154
    const-string v1, "Failed to force reload of settings from Crashlytics."

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/crashlytics/android/ba;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1157
    :cond_0
    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private w()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1196
    .line 1199
    :try_start_0
    sget-object v1, Lcom/crashlytics/android/Crashlytics;->p:Landroid/content/ContextWrapper;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->x()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 1200
    :try_start_1
    invoke-static {v2}, Lcom/crashlytics/android/ba;->b(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    .line 1201
    invoke-static {v1}, Lcom/crashlytics/android/ba;->e(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v3

    if-eqz v3, :cond_0

    .line 1205
    :goto_0
    const-string v1, "Failed to close icon input stream."

    invoke-static {v2, v1}, Lcom/crashlytics/android/ba;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 1208
    :goto_1
    return-object v0

    :cond_0
    move-object v0, v1

    .line 1201
    goto :goto_0

    .line 1202
    :catch_0
    move-exception v1

    move-object v2, v0

    .line 1203
    :goto_2
    :try_start_2
    const-string v3, "Could not calculate hash for app icon."

    invoke-static {v3, v1}, Lcom/crashlytics/android/ba;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1205
    const-string v1, "Failed to close icon input stream."

    invoke-static {v2, v1}, Lcom/crashlytics/android/ba;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_3
    const-string v1, "Failed to close icon input stream."

    invoke-static {v2, v1}, Lcom/crashlytics/android/ba;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_3

    .line 1202
    :catch_1
    move-exception v1

    goto :goto_2
.end method

.method private static x()I
    .locals 1

    .prologue
    .line 1244
    sget-object v0, Lcom/crashlytics/android/Crashlytics;->p:Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->icon:I

    return v0
.end method


# virtual methods
.method final a()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 448
    iget-object v0, p0, Lcom/crashlytics/android/Crashlytics;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method final a(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 680
    new-instance v0, Lcom/crashlytics/android/u;

    invoke-direct {v0, p0, p1}, Lcom/crashlytics/android/u;-><init>(Lcom/crashlytics/android/Crashlytics;Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/crashlytics/android/Crashlytics;->a(Lcom/crashlytics/android/E;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method final c()Lcom/crashlytics/android/aw;
    .locals 1

    .prologue
    .line 576
    iget-object v0, p0, Lcom/crashlytics/android/Crashlytics;->i:Lcom/crashlytics/android/aw;

    return-object v0
.end method

.method public final crash()V
    .locals 1

    .prologue
    .line 568
    new-instance v0, Lcom/crashlytics/android/CrashTest;

    invoke-direct {v0}, Lcom/crashlytics/android/CrashTest;-><init>()V

    invoke-virtual {v0}, Lcom/crashlytics/android/CrashTest;->indexOutOfBounds()V

    .line 569
    return-void
.end method

.method public final getDebugMode()Z
    .locals 1

    .prologue
    .line 478
    sget-boolean v0, Lcom/crashlytics/android/Crashlytics;->y:Z

    return v0
.end method

.method final m()Z
    .locals 2

    .prologue
    .line 634
    new-instance v0, Lcom/crashlytics/android/t;

    invoke-direct {v0, p0}, Lcom/crashlytics/android/t;-><init>(Lcom/crashlytics/android/Crashlytics;)V

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/crashlytics/android/Crashlytics;->a(Lcom/crashlytics/android/E;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method final o()Lcom/crashlytics/android/F;
    .locals 1

    .prologue
    .line 655
    iget-object v0, p0, Lcom/crashlytics/android/Crashlytics;->h:Lcom/crashlytics/android/F;

    return-object v0
.end method

.method final p()Ljava/lang/String;
    .locals 1

    .prologue
    .line 659
    iget-object v0, p0, Lcom/crashlytics/android/Crashlytics;->i:Lcom/crashlytics/android/aw;

    invoke-virtual {v0}, Lcom/crashlytics/android/aw;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/crashlytics/android/Crashlytics;->j:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final q()Ljava/lang/String;
    .locals 1

    .prologue
    .line 663
    iget-object v0, p0, Lcom/crashlytics/android/Crashlytics;->i:Lcom/crashlytics/android/aw;

    invoke-virtual {v0}, Lcom/crashlytics/android/aw;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/crashlytics/android/Crashlytics;->k:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final r()Ljava/lang/String;
    .locals 1

    .prologue
    .line 667
    iget-object v0, p0, Lcom/crashlytics/android/Crashlytics;->i:Lcom/crashlytics/android/aw;

    invoke-virtual {v0}, Lcom/crashlytics/android/aw;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/crashlytics/android/Crashlytics;->l:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final s()Lcom/crashlytics/android/af;
    .locals 2

    .prologue
    .line 698
    new-instance v0, Lcom/crashlytics/android/v;

    invoke-direct {v0, p0}, Lcom/crashlytics/android/v;-><init>(Lcom/crashlytics/android/Crashlytics;)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/crashlytics/android/Crashlytics;->a(Lcom/crashlytics/android/E;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/crashlytics/android/af;

    return-object v0
.end method

.method public final setDebugMode(Z)V
    .locals 1
    .param p1, "debug"    # Z

    .prologue
    .line 466
    sput-boolean p1, Lcom/crashlytics/android/Crashlytics;->y:Z

    .line 469
    if-eqz p1, :cond_0

    const/4 v0, 0x3

    :goto_0
    sput v0, Lcom/crashlytics/android/Crashlytics;->c:I

    .line 470
    return-void

    .line 469
    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public final setListener(Lcom/crashlytics/android/CrashlyticsListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/crashlytics/android/CrashlyticsListener;

    .prologue
    .line 457
    iput-object p1, p0, Lcom/crashlytics/android/Crashlytics;->g:Lcom/crashlytics/android/CrashlyticsListener;

    .line 458
    return-void
.end method

.method final t()Lcom/crashlytics/android/aQ;
    .locals 2

    .prologue
    .line 711
    new-instance v0, Lcom/crashlytics/android/w;

    invoke-direct {v0, p0}, Lcom/crashlytics/android/w;-><init>(Lcom/crashlytics/android/Crashlytics;)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/crashlytics/android/Crashlytics;->a(Lcom/crashlytics/android/E;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/crashlytics/android/aQ;

    return-object v0
.end method

.method public final verifyPinning(Ljava/net/URL;)Z
    .locals 4
    .param p1, "url"    # Ljava/net/URL;

    .prologue
    const/4 v1, 0x0

    .line 529
    :try_start_0
    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->getPinningInfoProvider()Lcom/crashlytics/android/PinningInfoProvider;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/crashlytics/android/Crashlytics;->A:Lcom/crashlytics/android/internal/o;

    sget-object v2, Lcom/crashlytics/android/internal/f;->a:Lcom/crashlytics/android/internal/f;

    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/crashlytics/android/internal/o;->a(Lcom/crashlytics/android/internal/f;Ljava/lang/String;)Lcom/crashlytics/android/internal/g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/crashlytics/android/internal/g;->a()Ljava/net/HttpURLConnection;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljavax/net/ssl/HttpsURLConnection;->setInstanceFollowRedirects(Z)V

    invoke-virtual {v2}, Lcom/crashlytics/android/internal/g;->b()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    .line 532
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 529
    goto :goto_0

    .line 530
    :catch_0
    move-exception v0

    .line 531
    const-string v2, "Could not verify SSL pinning"

    invoke-static {v2, v0}, Lcom/crashlytics/android/ba;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v1

    .line 532
    goto :goto_0
.end method
