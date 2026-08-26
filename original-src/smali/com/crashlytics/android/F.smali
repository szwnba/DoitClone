.class final Lcom/crashlytics/android/F;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# static fields
.field static final a:Ljava/io/FilenameFilter;

.field private static b:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private static c:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private static final d:Ljava/util/regex/Pattern;

.field private static final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final f:Lcom/crashlytics/android/k;


# instance fields
.field private final g:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final h:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final i:I

.field private final j:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private final k:Ljava/io/File;

.field private final l:Ljava/io/File;

.field private final m:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final n:Ljava/lang/String;

.field private final o:Landroid/content/BroadcastReceiver;

.field private final p:Landroid/content/BroadcastReceiver;

.field private final q:Lcom/crashlytics/android/k;

.field private final r:Lcom/crashlytics/android/k;

.field private final s:Ljava/util/concurrent/ExecutorService;

.field private t:Landroid/app/ActivityManager$RunningAppProcessInfo;

.field private u:Lcom/crashlytics/android/az;

.field private v:Z

.field private w:[Ljava/lang/Thread;

.field private x:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[",
            "Ljava/lang/StackTraceElement;",
            ">;"
        }
    .end annotation
.end field

.field private y:[Ljava/lang/StackTraceElement;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 116
    new-instance v0, Lcom/crashlytics/android/G;

    invoke-direct {v0}, Lcom/crashlytics/android/G;-><init>()V

    sput-object v0, Lcom/crashlytics/android/F;->a:Ljava/io/FilenameFilter;

    .line 124
    new-instance v0, Lcom/crashlytics/android/R;

    invoke-direct {v0}, Lcom/crashlytics/android/R;-><init>()V

    sput-object v0, Lcom/crashlytics/android/F;->b:Ljava/util/Comparator;

    .line 131
    new-instance v0, Lcom/crashlytics/android/T;

    invoke-direct {v0}, Lcom/crashlytics/android/T;-><init>()V

    sput-object v0, Lcom/crashlytics/android/F;->c:Ljava/util/Comparator;

    .line 141
    new-instance v0, Lcom/crashlytics/android/U;

    invoke-direct {v0}, Lcom/crashlytics/android/U;-><init>()V

    .line 148
    const-string v0, "([\\d|A-Z|a-z]{12}\\-[\\d|A-Z|a-z]{4}\\-[\\d|A-Z|a-z]{4}\\-[\\d|A-Z|a-z]{12}).+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/crashlytics/android/F;->d:Ljava/util/regex/Pattern;

    .line 151
    const-string v0, "X-CRASHLYTICS-SEND-FLAGS"

    const-string v1, "1"

    invoke-static {v0, v1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/crashlytics/android/F;->e:Ljava/util/Map;

    .line 173
    const-string v0, "0"

    invoke-static {v0}, Lcom/crashlytics/android/k;->a(Ljava/lang/String;)Lcom/crashlytics/android/k;

    move-result-object v0

    sput-object v0, Lcom/crashlytics/android/F;->f:Lcom/crashlytics/android/k;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Thread$UncaughtExceptionHandler;Lcom/crashlytics/android/CrashlyticsListener;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 228
    const-string v0, "Crashlytics Exception Handler"

    invoke-static {v0}, Lcom/crashlytics/android/c;->a(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/crashlytics/android/F;-><init>(Ljava/lang/Thread$UncaughtExceptionHandler;Lcom/crashlytics/android/CrashlyticsListener;Ljava/util/concurrent/ExecutorService;Ljava/lang/String;)V

    .line 230
    return-void
.end method

.method private constructor <init>(Ljava/lang/Thread$UncaughtExceptionHandler;Lcom/crashlytics/android/CrashlyticsListener;Ljava/util/concurrent/ExecutorService;Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 236
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 184
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v4}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/crashlytics/android/F;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 185
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/crashlytics/android/F;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 237
    iput-object p1, p0, Lcom/crashlytics/android/F;->j:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 238
    iput-object p3, p0, Lcom/crashlytics/android/F;->s:Ljava/util/concurrent/ExecutorService;

    .line 239
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/crashlytics/android/F;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 240
    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->j()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/crashlytics/android/F;->k:Ljava/io/File;

    .line 241
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/crashlytics/android/F;->k:Ljava/io/File;

    const-string v2, "initialization_marker"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/crashlytics/android/F;->l:Ljava/io/File;

    .line 242
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "Crashlytics Android SDK/%s"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->getCrashlyticsVersion()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/crashlytics/android/F;->n:Ljava/lang/String;

    .line 249
    const/16 v0, 0x8

    iput v0, p0, Lcom/crashlytics/android/F;->i:I

    .line 251
    const-string v0, "Checking for previous crash marker."

    invoke-static {v0}, Lcom/crashlytics/android/ba;->c(Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->j()Ljava/io/File;

    move-result-object v1

    const-string v2, "crash_marker"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    if-eqz p2, :cond_0

    :try_start_0
    invoke-interface {p2}, Lcom/crashlytics/android/CrashlyticsListener;->crashlyticsDidDetectCrashDuringPreviousExecution()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 253
    :cond_0
    :goto_0
    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/crashlytics/android/k;->a(Ljava/lang/String;)Lcom/crashlytics/android/k;

    move-result-object v0

    iput-object v0, p0, Lcom/crashlytics/android/F;->q:Lcom/crashlytics/android/k;

    .line 254
    if-nez p4, :cond_1

    const/4 v0, 0x0

    :goto_1
    iput-object v0, p0, Lcom/crashlytics/android/F;->r:Lcom/crashlytics/android/k;

    .line 256
    new-instance v0, Lcom/crashlytics/android/V;

    invoke-direct {v0, p0}, Lcom/crashlytics/android/V;-><init>(Lcom/crashlytics/android/F;)V

    iput-object v0, p0, Lcom/crashlytics/android/F;->p:Landroid/content/BroadcastReceiver;

    .line 263
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 265
    new-instance v1, Lcom/crashlytics/android/W;

    invoke-direct {v1, p0}, Lcom/crashlytics/android/W;-><init>(Lcom/crashlytics/android/F;)V

    iput-object v1, p0, Lcom/crashlytics/android/F;->o:Landroid/content/BroadcastReceiver;

    .line 272
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 274
    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->d()Landroid/content/ContextWrapper;

    move-result-object v2

    iget-object v3, p0, Lcom/crashlytics/android/F;->p:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 275
    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->d()Landroid/content/ContextWrapper;

    move-result-object v0

    iget-object v2, p0, Lcom/crashlytics/android/F;->o:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2, v1}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 276
    iget-object v0, p0, Lcom/crashlytics/android/F;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 277
    return-void

    .line 251
    :catch_0
    move-exception v0

    const-string v1, "Exception thrown by CrashlyticsListener while notifying of previous crash."

    invoke-static {v1, v0}, Lcom/crashlytics/android/ba;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 254
    :cond_1
    const-string v0, "-"

    const-string v1, ""

    invoke-virtual {p4, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/crashlytics/android/k;->a(Ljava/lang/String;)Lcom/crashlytics/android/k;

    move-result-object v0

    goto :goto_1
.end method

.method private static a(FIZIJJ)I
    .locals 2

    .prologue
    .line 1761
    const/4 v0, 0x1

    invoke-static {v0, p0}, Lcom/crashlytics/android/p;->b(IF)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 1764
    const/4 v1, 0x2

    invoke-static {v1, p1}, Lcom/crashlytics/android/p;->f(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1765
    const/4 v1, 0x3

    invoke-static {v1, p2}, Lcom/crashlytics/android/p;->b(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1766
    const/4 v1, 0x4

    invoke-static {v1, p3}, Lcom/crashlytics/android/p;->d(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1767
    const/4 v1, 0x5

    invoke-static {v1, p4, p5}, Lcom/crashlytics/android/p;->b(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1768
    const/4 v1, 0x6

    invoke-static {v1, p6, p7}, Lcom/crashlytics/android/p;->b(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1770
    return v0
.end method

.method private a(ILcom/crashlytics/android/k;Lcom/crashlytics/android/k;IJJZLjava/util/Map;ILcom/crashlytics/android/k;Lcom/crashlytics/android/k;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/crashlytics/android/k;",
            "Lcom/crashlytics/android/k;",
            "IJJZ",
            "Ljava/util/Map",
            "<",
            "Lcom/crashlytics/android/ax;",
            "Ljava/lang/String;",
            ">;I",
            "Lcom/crashlytics/android/k;",
            "Lcom/crashlytics/android/k;",
            ")I"
        }
    .end annotation

    .prologue
    .line 1278
    const/4 v1, 0x1

    invoke-static {v1, p2}, Lcom/crashlytics/android/p;->b(ILcom/crashlytics/android/k;)I

    move-result v1

    add-int/lit8 v1, v1, 0x0

    .line 1281
    const/4 v2, 0x3

    invoke-static {v2, p1}, Lcom/crashlytics/android/p;->e(II)I

    move-result v2

    add-int/2addr v2, v1

    .line 1282
    if-nez p3, :cond_0

    const/4 v1, 0x0

    :goto_0
    add-int/2addr v1, v2

    .line 1283
    const/4 v2, 0x5

    invoke-static {v2, p4}, Lcom/crashlytics/android/p;->d(II)I

    move-result v2

    add-int/2addr v1, v2

    .line 1284
    const/4 v2, 0x6

    invoke-static {v2, p5, p6}, Lcom/crashlytics/android/p;->b(IJ)I

    move-result v2

    add-int/2addr v1, v2

    .line 1285
    const/4 v2, 0x7

    invoke-static {v2, p7, p8}, Lcom/crashlytics/android/p;->b(IJ)I

    move-result v2

    add-int/2addr v1, v2

    .line 1286
    const/16 v2, 0xa

    move/from16 v0, p9

    invoke-static {v2, v0}, Lcom/crashlytics/android/p;->b(IZ)I

    move-result v2

    add-int/2addr v1, v2

    .line 1287
    if-eqz p10, :cond_1

    .line 1288
    invoke-interface/range {p10 .. p10}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v3, v1

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/util/Map$Entry;

    .line 1289
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/crashlytics/android/ax;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/crashlytics/android/F;->a(Lcom/crashlytics/android/ax;Ljava/lang/String;)I

    move-result v1

    .line 1290
    const/16 v2, 0xb

    invoke-static {v2}, Lcom/crashlytics/android/p;->a(I)I

    move-result v2

    invoke-static {v1}, Lcom/crashlytics/android/p;->c(I)I

    move-result v5

    add-int/2addr v2, v5

    add-int/2addr v1, v2

    add-int/2addr v1, v3

    move v3, v1

    .line 1292
    goto :goto_1

    .line 1282
    :cond_0
    const/4 v1, 0x4

    invoke-static {v1, p3}, Lcom/crashlytics/android/p;->b(ILcom/crashlytics/android/k;)I

    move-result v1

    goto :goto_0

    :cond_1
    move v3, v1

    .line 1294
    :cond_2
    const/16 v1, 0xc

    move/from16 v0, p11

    invoke-static {v1, v0}, Lcom/crashlytics/android/p;->d(II)I

    move-result v1

    add-int v2, v3, v1

    .line 1295
    if-nez p12, :cond_3

    const/4 v1, 0x0

    :goto_2
    add-int/2addr v2, v1

    .line 1296
    if-nez p13, :cond_4

    const/4 v1, 0x0

    :goto_3
    add-int/2addr v1, v2

    .line 1298
    return v1

    .line 1295
    :cond_3
    const/16 v1, 0xd

    move-object/from16 v0, p12

    invoke-static {v1, v0}, Lcom/crashlytics/android/p;->b(ILcom/crashlytics/android/k;)I

    move-result v1

    goto :goto_2

    .line 1296
    :cond_4
    const/16 v1, 0xe

    move-object/from16 v0, p13

    invoke-static {v1, v0}, Lcom/crashlytics/android/p;->b(ILcom/crashlytics/android/k;)I

    move-result v1

    goto :goto_3
.end method

.method private static a(Lcom/crashlytics/android/ax;Ljava/lang/String;)I
    .locals 3

    .prologue
    .line 1269
    const/4 v0, 0x1

    iget v1, p0, Lcom/crashlytics/android/ax;->f:I

    invoke-static {v0, v1}, Lcom/crashlytics/android/p;->e(II)I

    move-result v0

    .line 1270
    const/4 v1, 0x2

    invoke-static {p1}, Lcom/crashlytics/android/k;->a(Ljava/lang/String;)Lcom/crashlytics/android/k;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/crashlytics/android/p;->b(ILcom/crashlytics/android/k;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1272
    return v0
.end method

.method private static a(Ljava/lang/StackTraceElement;Z)I
    .locals 6

    .prologue
    const/4 v1, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1594
    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->isNativeMethod()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1598
    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v0

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-long v4, v0

    invoke-static {v3, v4, v5}, Lcom/crashlytics/android/p;->b(IJ)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 1603
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/crashlytics/android/k;->a(Ljava/lang/String;)Lcom/crashlytics/android/k;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/crashlytics/android/p;->b(ILcom/crashlytics/android/k;)I

    move-result v3

    add-int/2addr v0, v3

    .line 1607
    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1608
    const/4 v3, 0x3

    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/crashlytics/android/k;->a(Ljava/lang/String;)Lcom/crashlytics/android/k;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/crashlytics/android/p;->b(ILcom/crashlytics/android/k;)I

    move-result v3

    add-int/2addr v0, v3

    .line 1611
    :cond_0
    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->isNativeMethod()Z

    move-result v3

    if-nez v3, :cond_3

    .line 1612
    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v3

    if-lez v3, :cond_3

    .line 1614
    const/4 v3, 0x4

    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v4

    int-to-long v4, v4

    invoke-static {v3, v4, v5}, Lcom/crashlytics/android/p;->b(IJ)I

    move-result v3

    add-int/2addr v0, v3

    move v3, v0

    .line 1617
    :goto_1
    const/4 v4, 0x5

    if-eqz p1, :cond_2

    move v0, v1

    :goto_2
    invoke-static {v4, v0}, Lcom/crashlytics/android/p;->d(II)I

    move-result v0

    add-int/2addr v0, v3

    .line 1619
    return v0

    .line 1600
    :cond_1
    const-wide/16 v4, 0x0

    invoke-static {v3, v4, v5}, Lcom/crashlytics/android/p;->b(IJ)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    goto :goto_0

    :cond_2
    move v0, v2

    .line 1617
    goto :goto_2

    :cond_3
    move v3, v0

    goto :goto_1
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    .prologue
    .line 1754
    const/4 v0, 0x1

    invoke-static {p0}, Lcom/crashlytics/android/k;->a(Ljava/lang/String;)Lcom/crashlytics/android/k;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/crashlytics/android/p;->b(ILcom/crashlytics/android/k;)I

    move-result v0

    .line 1755
    const/4 v1, 0x2

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    invoke-static {p1}, Lcom/crashlytics/android/k;->a(Ljava/lang/String;)Lcom/crashlytics/android/k;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/crashlytics/android/p;->b(ILcom/crashlytics/android/k;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1756
    return v0
.end method

.method private a(Ljava/lang/Thread;Ljava/lang/Throwable;Ljava/util/Map;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Thread;",
            "Ljava/lang/Throwable;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 1700
    invoke-direct {p0, p1, p2}, Lcom/crashlytics/android/F;->b(Ljava/lang/Thread;Ljava/lang/Throwable;)I

    move-result v0

    .line 1703
    invoke-static {v3}, Lcom/crashlytics/android/p;->a(I)I

    move-result v1

    invoke-static {v0}, Lcom/crashlytics/android/p;->c(I)I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x0

    .line 1706
    if-eqz p3, :cond_0

    .line 1707
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v2, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/Map$Entry;

    .line 1708
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/crashlytics/android/F;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1709
    const/4 v1, 0x2

    invoke-static {v1}, Lcom/crashlytics/android/p;->a(I)I

    move-result v1

    invoke-static {v0}, Lcom/crashlytics/android/p;->c(I)I

    move-result v5

    add-int/2addr v1, v5

    add-int/2addr v0, v1

    add-int/2addr v0, v2

    move v2, v0

    .line 1711
    goto :goto_0

    :cond_0
    move v2, v0

    .line 1715
    :cond_1
    iget-object v0, p0, Lcom/crashlytics/android/F;->t:Landroid/app/ActivityManager$RunningAppProcessInfo;

    if-eqz v0, :cond_2

    .line 1716
    const/4 v1, 0x3

    iget-object v0, p0, Lcom/crashlytics/android/F;->t:Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v4, 0x64

    if-eq v0, v4, :cond_3

    move v0, v3

    :goto_1
    invoke-static {v1, v0}, Lcom/crashlytics/android/p;->b(IZ)I

    move-result v0

    add-int/2addr v2, v0

    .line 1719
    :cond_2
    const/4 v0, 0x4

    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->d()Landroid/content/ContextWrapper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    invoke-static {v0, v1}, Lcom/crashlytics/android/p;->d(II)I

    move-result v0

    add-int/2addr v0, v2

    .line 1722
    return v0

    .line 1716
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private a(Ljava/lang/Thread;[Ljava/lang/StackTraceElement;IZ)I
    .locals 6

    .prologue
    .line 1568
    const/4 v0, 0x1

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/crashlytics/android/k;->a(Ljava/lang/String;)Lcom/crashlytics/android/k;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/crashlytics/android/p;->b(ILcom/crashlytics/android/k;)I

    move-result v0

    .line 1569
    const/4 v1, 0x2

    invoke-static {v1, p3}, Lcom/crashlytics/android/p;->d(II)I

    move-result v1

    add-int/2addr v1, v0

    .line 1571
    array-length v2, p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, p2, v0

    .line 1572
    invoke-static {v3, p4}, Lcom/crashlytics/android/F;->a(Ljava/lang/StackTraceElement;Z)I

    move-result v3

    .line 1573
    const/4 v4, 0x3

    invoke-static {v4}, Lcom/crashlytics/android/p;->a(I)I

    move-result v4

    invoke-static {v3}, Lcom/crashlytics/android/p;->c(I)I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v3, v4

    add-int/2addr v1, v3

    .line 1571
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1577
    :cond_0
    return v1
.end method

.method private a(Ljava/lang/Throwable;I)I
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v1, 0x0

    .line 1779
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/crashlytics/android/k;->a(Ljava/lang/String;)Lcom/crashlytics/android/k;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/crashlytics/android/p;->b(ILcom/crashlytics/android/k;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 1784
    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    .line 1785
    if-eqz v2, :cond_0

    .line 1786
    const/4 v3, 0x3

    invoke-static {v2}, Lcom/crashlytics/android/k;->a(Ljava/lang/String;)Lcom/crashlytics/android/k;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/crashlytics/android/p;->b(ILcom/crashlytics/android/k;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1789
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    array-length v5, v4

    move v2, v1

    :goto_0
    if-ge v2, v5, :cond_1

    aget-object v3, v4, v2

    .line 1790
    invoke-static {v3, v8}, Lcom/crashlytics/android/F;->a(Ljava/lang/StackTraceElement;Z)I

    move-result v3

    .line 1791
    const/4 v6, 0x4

    invoke-static {v6}, Lcom/crashlytics/android/p;->a(I)I

    move-result v6

    invoke-static {v3}, Lcom/crashlytics/android/p;->c(I)I

    move-result v7

    add-int/2addr v6, v7

    add-int/2addr v3, v6

    add-int/2addr v3, v0

    .line 1789
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v0, v3

    goto :goto_0

    .line 1797
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    .line 1798
    if-eqz v2, :cond_2

    .line 1799
    const/16 v3, 0x8

    if-ge p2, v3, :cond_3

    .line 1800
    add-int/lit8 v1, p2, 0x1

    invoke-direct {p0, v2, v1}, Lcom/crashlytics/android/F;->a(Ljava/lang/Throwable;I)I

    move-result v1

    .line 1801
    const/4 v2, 0x6

    invoke-static {v2}, Lcom/crashlytics/android/p;->a(I)I

    move-result v2

    invoke-static {v1}, Lcom/crashlytics/android/p;->c(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 1816
    :cond_2
    :goto_1
    return v0

    .line 1807
    :cond_3
    :goto_2
    if-eqz v2, :cond_4

    .line 1808
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    .line 1809
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1812
    :cond_4
    const/4 v2, 0x7

    invoke-static {v2, v1}, Lcom/crashlytics/android/p;->d(II)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_1
.end method

.method private a(Lcom/crashlytics/android/az;)Lcom/crashlytics/android/k;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 389
    if-nez p1, :cond_0

    .line 390
    const/4 v0, 0x0

    .line 416
    :goto_0
    return-object v0

    .line 396
    :cond_0
    const/4 v0, 0x1

    new-array v1, v0, [I

    aput v4, v1, v4

    .line 398
    invoke-virtual {p1}, Lcom/crashlytics/android/az;->a()I

    move-result v0

    new-array v2, v0, [B

    .line 401
    :try_start_0
    new-instance v0, Lcom/crashlytics/android/I;

    invoke-direct {v0, p0, v2, v1}, Lcom/crashlytics/android/I;-><init>(Lcom/crashlytics/android/F;[B[I)V

    invoke-virtual {p1, v0}, Lcom/crashlytics/android/az;->a(Lcom/crashlytics/android/aD;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 416
    :goto_1
    aget v0, v1, v4

    invoke-static {v2, v4, v0}, Lcom/crashlytics/android/k;->a([BII)Lcom/crashlytics/android/k;

    move-result-object v0

    goto :goto_0

    .line 412
    :catch_0
    move-exception v0

    .line 413
    const-string v3, "A problem occurred while reading the Crashlytics log file."

    invoke-static {v3, v0}, Lcom/crashlytics/android/ba;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private a(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1922
    :try_start_0
    iget-object v1, p0, Lcom/crashlytics/android/F;->s:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 1928
    :goto_0
    return-object v0

    .line 1924
    :catch_0
    move-exception v1

    const-string v1, "Executor is shut down because we\'re handling a fatal crash."

    invoke-static {v1}, Lcom/crashlytics/android/ba;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 1926
    :catch_1
    move-exception v1

    .line 1927
    const-string v2, "Failed to execute task."

    invoke-static {v2, v1}, Lcom/crashlytics/android/ba;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static a(Ljava/io/File;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 773
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x23

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 1944
    :try_start_0
    iget-object v0, p0, Lcom/crashlytics/android/F;->s:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/crashlytics/android/Q;

    invoke-direct {v1, p0, p1}, Lcom/crashlytics/android/Q;-><init>(Lcom/crashlytics/android/F;Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1956
    :goto_0
    return-object v0

    .line 1955
    :catch_0
    move-exception v0

    const-string v0, "Executor is shut down because we\'re handling a fatal crash."

    invoke-static {v0}, Lcom/crashlytics/android/ba;->c(Ljava/lang/String;)V

    .line 1956
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/crashlytics/android/F;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/crashlytics/android/F;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic a(Lcom/crashlytics/android/F;Ljava/util/Date;Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 58
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/crashlytics/android/F;->k:Ljava/io/File;

    const-string v3, "crash_marker"

    invoke-direct {v0, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    invoke-direct {p0}, Lcom/crashlytics/android/F;->n()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/crashlytics/android/Crashlytics;->b(Ljava/lang/String;)V

    new-instance v7, Lcom/crashlytics/android/n;

    iget-object v1, p0, Lcom/crashlytics/android/F;->k:Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "SessionCrash"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v1, v0}, Lcom/crashlytics/android/n;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {v7}, Lcom/crashlytics/android/p;->a(Ljava/io/OutputStream;)Lcom/crashlytics/android/p;

    move-result-object v2

    const-string v5, "crash"

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/crashlytics/android/F;->a(Ljava/util/Date;Lcom/crashlytics/android/p;Ljava/lang/Thread;Ljava/lang/Throwable;Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v0, v7

    :goto_0
    const-string v1, "Failed to flush to session begin file."

    invoke-static {v2, v1}, Lcom/crashlytics/android/ba;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    const-string v1, "Failed to close fatal exception file output stream."

    invoke-static {v0, v1}, Lcom/crashlytics/android/ba;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    :goto_1
    invoke-direct {p0}, Lcom/crashlytics/android/F;->m()V

    invoke-direct {p0}, Lcom/crashlytics/android/F;->l()V

    iget-object v0, p0, Lcom/crashlytics/android/F;->k:Ljava/io/File;

    sget-object v1, Lcom/crashlytics/android/F;->a:Ljava/io/FilenameFilter;

    const/4 v2, 0x4

    sget-object v3, Lcom/crashlytics/android/F;->c:Ljava/util/Comparator;

    invoke-static {v0, v1, v2, v3}, Lcom/crashlytics/android/ba;->a(Ljava/io/File;Ljava/io/FilenameFilter;ILjava/util/Comparator;)V

    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->getInstance()Lcom/crashlytics/android/Crashlytics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/crashlytics/android/Crashlytics;->m()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/crashlytics/android/F;->p()V

    :cond_0
    return-void

    :cond_1
    :try_start_2
    const-string v0, "Tried to write a fatal exception while no session was open."

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/crashlytics/android/ba;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v0, v2

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v7, v2

    :goto_2
    :try_start_3
    const-string v1, "An error occurred in the fatal exception logger"

    invoke-static {v1, v0}, Lcom/crashlytics/android/ba;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0, v0, v7}, Lcom/crashlytics/android/F;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const-string v0, "Failed to flush to session begin file."

    invoke-static {v2, v0}, Lcom/crashlytics/android/ba;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    const-string v0, "Failed to close fatal exception file output stream."

    invoke-static {v7, v0}, Lcom/crashlytics/android/ba;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v7, v2

    :goto_3
    const-string v1, "Failed to flush to session begin file."

    invoke-static {v2, v1}, Lcom/crashlytics/android/ba;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    const-string v1, "Failed to close fatal exception file output stream."

    invoke-static {v7, v1}, Lcom/crashlytics/android/ba;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method static a(Lcom/crashlytics/android/az;IJLjava/lang/String;)V
    .locals 6

    .prologue
    .line 519
    if-nez p0, :cond_1

    .line 563
    :cond_0
    :goto_0
    return-void

    .line 522
    :cond_1
    if-nez p4, :cond_3

    .line 523
    const-string v0, "null"

    .line 543
    :goto_1
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x4000

    if-le v1, v2, :cond_2

    .line 546
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "..."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit16 v2, v2, -0x4000

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 549
    :cond_2
    const-string v1, "\r"

    const-string v2, " "

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 550
    const-string v1, "\n"

    const-string v2, " "

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 552
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "%d %s%n"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 554
    invoke-virtual {p0, v0}, Lcom/crashlytics/android/az;->a([B)V

    .line 557
    :goto_2
    invoke-virtual {p0}, Lcom/crashlytics/android/az;->b()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/crashlytics/android/az;->a()I

    move-result v0

    const/high16 v1, 0x10000

    if-le v0, v1, :cond_0

    .line 558
    invoke-virtual {p0}, Lcom/crashlytics/android/az;->c()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 560
    :catch_0
    move-exception v0

    .line 561
    const-string v1, "There was a problem writing to the Crashlytics log."

    invoke-static {v1, v0}, Lcom/crashlytics/android/ba;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_3
    move-object v0, p4

    goto :goto_1
.end method

.method private static a(Lcom/crashlytics/android/n;)V
    .locals 2

    .prologue
    .line 859
    if-eqz p0, :cond_0

    .line 861
    :try_start_0
    invoke-virtual {p0}, Lcom/crashlytics/android/n;->a()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 866
    :cond_0
    :goto_0
    return-void

    .line 862
    :catch_0
    move-exception v0

    .line 863
    const-string v1, "Error closing session file stream in the presence of an exception"

    invoke-static {v1, v0}, Lcom/crashlytics/android/ba;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private a(Lcom/crashlytics/android/p;ILjava/lang/StackTraceElement;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v0, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 1624
    invoke-virtual {p1, p2, v5}, Lcom/crashlytics/android/p;->g(II)V

    .line 1625
    invoke-static {p3, p4}, Lcom/crashlytics/android/F;->a(Ljava/lang/StackTraceElement;Z)I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/crashlytics/android/p;->b(I)V

    .line 1627
    invoke-virtual {p3}, Ljava/lang/StackTraceElement;->isNativeMethod()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1630
    invoke-virtual {p3}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v2

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {p1, v4, v2, v3}, Lcom/crashlytics/android/p;->a(IJ)V

    .line 1635
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p3}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/crashlytics/android/k;->a(Ljava/lang/String;)Lcom/crashlytics/android/k;

    move-result-object v2

    invoke-virtual {p1, v5, v2}, Lcom/crashlytics/android/p;->a(ILcom/crashlytics/android/k;)V

    .line 1637
    invoke-virtual {p3}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1638
    const/4 v2, 0x3

    invoke-virtual {p3}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/crashlytics/android/k;->a(Ljava/lang/String;)Lcom/crashlytics/android/k;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/crashlytics/android/p;->a(ILcom/crashlytics/android/k;)V

    .line 1641
    :cond_0
    invoke-virtual {p3}, Ljava/lang/StackTraceElement;->isNativeMethod()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1644
    invoke-virtual {p3}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v2

    if-lez v2, :cond_1

    .line 1645
    invoke-virtual {p3}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {p1, v0, v2, v3}, Lcom/crashlytics/android/p;->a(IJ)V

    .line 1652
    :cond_1
    const/4 v2, 0x5

    if-eqz p4, :cond_3

    :goto_1
    invoke-virtual {p1, v2, v0}, Lcom/crashlytics/android/p;->a(II)V

    .line 1653
    return-void

    .line 1632
    :cond_2
    const-wide/16 v2, 0x0

    invoke-virtual {p1, v4, v2, v3}, Lcom/crashlytics/android/p;->a(IJ)V

    goto :goto_0

    :cond_3
    move v0, v1

    .line 1652
    goto :goto_1
.end method

.method private static a(Lcom/crashlytics/android/p;Ljava/io/File;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1305
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1307
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    .line 1308
    long-to-int v0, v0

    new-array v3, v0, [B

    .line 1313
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1315
    const/4 v0, 0x0

    .line 1318
    :goto_0
    :try_start_1
    array-length v2, v3

    if-ge v0, v2, :cond_0

    array-length v2, v3

    sub-int/2addr v2, v0

    invoke-virtual {v1, v3, v0, v2}, Ljava/io/FileInputStream;->read([BII)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v2

    if-ltz v2, :cond_0

    .line 1319
    add-int/2addr v0, v2

    goto :goto_0

    .line 1322
    :cond_0
    const-string v0, "Failed to close file input stream."

    invoke-static {v1, v0}, Lcom/crashlytics/android/ba;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 1325
    invoke-virtual {p0, v3}, Lcom/crashlytics/android/p;->a([B)V

    .line 1329
    :goto_1
    return-void

    .line 1322
    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_2
    const-string v2, "Failed to close file input stream."

    invoke-static {v1, v2}, Lcom/crashlytics/android/ba;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    throw v0

    .line 1327
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Tried to include a file that doesn\'t exist: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/crashlytics/android/ba;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 1322
    :catchall_1
    move-exception v0

    goto :goto_2
.end method

.method private a(Lcom/crashlytics/android/p;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 882
    const/4 v0, 0x4

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "SessionUser"

    aput-object v0, v2, v1

    const/4 v0, 0x1

    const-string v3, "SessionApp"

    aput-object v3, v2, v0

    const/4 v0, 0x2

    const-string v3, "SessionOS"

    aput-object v3, v2, v0

    const/4 v0, 0x3

    const-string v3, "SessionDevice"

    aput-object v3, v2, v0

    .line 884
    array-length v3, v2

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    .line 885
    new-instance v5, Lcom/crashlytics/android/ab;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/crashlytics/android/ab;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v5}, Lcom/crashlytics/android/F;->a(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v5

    .line 887
    array-length v6, v5

    if-nez v6, :cond_0

    .line 888
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Can\'t find "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " data for session ID "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/crashlytics/android/ba;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 884
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 890
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Collecting "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " data for session ID "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/crashlytics/android/ba;->c(Ljava/lang/String;)V

    .line 891
    aget-object v4, v5, v1

    invoke-static {p1, v4}, Lcom/crashlytics/android/F;->a(Lcom/crashlytics/android/p;Ljava/io/File;)V

    goto :goto_1

    .line 894
    :cond_1
    return-void
.end method

.method private a(Lcom/crashlytics/android/p;Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1477
    const/4 v0, 0x1

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/crashlytics/android/p;->g(II)V

    .line 1478
    invoke-direct {p0, p2, p3}, Lcom/crashlytics/android/F;->b(Ljava/lang/Thread;Ljava/lang/Throwable;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/crashlytics/android/p;->b(I)V

    .line 1480
    iget-object v3, p0, Lcom/crashlytics/android/F;->y:[Ljava/lang/StackTraceElement;

    const/4 v4, 0x4

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/crashlytics/android/F;->a(Lcom/crashlytics/android/p;Ljava/lang/Thread;[Ljava/lang/StackTraceElement;IZ)V

    .line 1484
    iget-object v0, p0, Lcom/crashlytics/android/F;->w:[Ljava/lang/Thread;

    array-length v7, v0

    .line 1485
    const/4 v0, 0x0

    move v6, v0

    :goto_0
    if-ge v6, v7, :cond_0

    .line 1486
    iget-object v0, p0, Lcom/crashlytics/android/F;->w:[Ljava/lang/Thread;

    aget-object v2, v0, v6

    .line 1487
    iget-object v0, p0, Lcom/crashlytics/android/F;->x:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/StackTraceElement;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/crashlytics/android/F;->a(Lcom/crashlytics/android/p;Ljava/lang/Thread;[Ljava/lang/StackTraceElement;IZ)V

    .line 1485
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    .line 1490
    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x2

    invoke-direct {p0, p1, p3, v0, v1}, Lcom/crashlytics/android/F;->a(Lcom/crashlytics/android/p;Ljava/lang/Throwable;II)V

    .line 1492
    const/4 v0, 0x3

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/crashlytics/android/p;->g(II)V

    .line 1493
    invoke-static {}, Lcom/crashlytics/android/F;->s()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/crashlytics/android/p;->b(I)V

    .line 1494
    const/4 v0, 0x1

    sget-object v1, Lcom/crashlytics/android/F;->f:Lcom/crashlytics/android/k;

    invoke-virtual {p1, v0, v1}, Lcom/crashlytics/android/p;->a(ILcom/crashlytics/android/k;)V

    .line 1495
    const/4 v0, 0x2

    sget-object v1, Lcom/crashlytics/android/F;->f:Lcom/crashlytics/android/k;

    invoke-virtual {p1, v0, v1}, Lcom/crashlytics/android/p;->a(ILcom/crashlytics/android/k;)V

    .line 1496
    const/4 v0, 0x3

    const-wide/16 v2, 0x0

    invoke-virtual {p1, v0, v2, v3}, Lcom/crashlytics/android/p;->a(IJ)V

    .line 1498
    const/4 v0, 0x4

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/crashlytics/android/p;->g(II)V

    .line 1499
    invoke-direct {p0}, Lcom/crashlytics/android/F;->r()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/crashlytics/android/p;->b(I)V

    .line 1500
    const/4 v0, 0x1

    const-wide/16 v2, 0x0

    invoke-virtual {p1, v0, v2, v3}, Lcom/crashlytics/android/p;->a(IJ)V

    .line 1501
    const/4 v0, 0x2

    const-wide/16 v2, 0x0

    invoke-virtual {p1, v0, v2, v3}, Lcom/crashlytics/android/p;->a(IJ)V

    .line 1502
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/crashlytics/android/F;->q:Lcom/crashlytics/android/k;

    invoke-virtual {p1, v0, v1}, Lcom/crashlytics/android/p;->a(ILcom/crashlytics/android/k;)V

    .line 1503
    iget-object v0, p0, Lcom/crashlytics/android/F;->r:Lcom/crashlytics/android/k;

    if-eqz v0, :cond_1

    .line 1504
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/crashlytics/android/F;->r:Lcom/crashlytics/android/k;

    invoke-virtual {p1, v0, v1}, Lcom/crashlytics/android/p;->a(ILcom/crashlytics/android/k;)V

    .line 1506
    :cond_1
    return-void
.end method

.method private a(Lcom/crashlytics/android/p;Ljava/lang/Thread;[Ljava/lang/StackTraceElement;IZ)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 1582
    invoke-virtual {p1, v1, v2}, Lcom/crashlytics/android/p;->g(II)V

    .line 1583
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/crashlytics/android/F;->a(Ljava/lang/Thread;[Ljava/lang/StackTraceElement;IZ)I

    move-result v0

    .line 1584
    invoke-virtual {p1, v0}, Lcom/crashlytics/android/p;->b(I)V

    .line 1585
    invoke-virtual {p2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/crashlytics/android/k;->a(Ljava/lang/String;)Lcom/crashlytics/android/k;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/crashlytics/android/p;->a(ILcom/crashlytics/android/k;)V

    .line 1586
    invoke-virtual {p1, v2, p4}, Lcom/crashlytics/android/p;->a(II)V

    .line 1588
    array-length v1, p3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p3, v0

    .line 1589
    const/4 v3, 0x3

    invoke-direct {p0, p1, v3, v2, p5}, Lcom/crashlytics/android/F;->a(Lcom/crashlytics/android/p;ILjava/lang/StackTraceElement;Z)V

    .line 1588
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1591
    :cond_0
    return-void
.end method

.method private a(Lcom/crashlytics/android/p;Ljava/lang/Throwable;II)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v6, 0x1

    .line 1536
    const/4 v1, 0x2

    invoke-virtual {p1, p4, v1}, Lcom/crashlytics/android/p;->g(II)V

    .line 1537
    invoke-direct {p0, p2, v6}, Lcom/crashlytics/android/F;->a(Ljava/lang/Throwable;I)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/crashlytics/android/p;->b(I)V

    .line 1539
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/crashlytics/android/k;->a(Ljava/lang/String;)Lcom/crashlytics/android/k;

    move-result-object v1

    invoke-virtual {p1, v6, v1}, Lcom/crashlytics/android/p;->a(ILcom/crashlytics/android/k;)V

    .line 1540
    invoke-virtual {p2}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    .line 1541
    if-eqz v1, :cond_0

    .line 1542
    const/4 v2, 0x3

    invoke-static {v1}, Lcom/crashlytics/android/k;->a(Ljava/lang/String;)Lcom/crashlytics/android/k;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Lcom/crashlytics/android/p;->a(ILcom/crashlytics/android/k;)V

    .line 1545
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v4, v2, v1

    .line 1546
    const/4 v5, 0x4

    invoke-direct {p0, p1, v5, v4, v6}, Lcom/crashlytics/android/F;->a(Lcom/crashlytics/android/p;ILjava/lang/StackTraceElement;Z)V

    .line 1545
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1549
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    .line 1550
    if-eqz v1, :cond_2

    .line 1551
    const/16 v2, 0x8

    if-ge p3, v2, :cond_3

    .line 1552
    add-int/lit8 v0, p3, 0x1

    const/4 v2, 0x6

    invoke-direct {p0, p1, v1, v0, v2}, Lcom/crashlytics/android/F;->a(Lcom/crashlytics/android/p;Ljava/lang/Throwable;II)V

    .line 1564
    :cond_2
    :goto_1
    return-void

    .line 1557
    :cond_3
    :goto_2
    if-eqz v1, :cond_4

    .line 1558
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    .line 1559
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1561
    :cond_4
    const/4 v1, 0x7

    invoke-virtual {p1, v1, v0}, Lcom/crashlytics/android/p;->a(II)V

    goto :goto_1
.end method

.method private a(Lcom/crashlytics/android/p;Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/crashlytics/android/p;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v4, 0x2

    .line 1511
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1512
    invoke-virtual {p1, v4, v4}, Lcom/crashlytics/android/p;->g(II)V

    .line 1513
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/crashlytics/android/F;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/crashlytics/android/p;->b(I)V

    .line 1515
    const/4 v2, 0x1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/crashlytics/android/k;->a(Ljava/lang/String;)Lcom/crashlytics/android/k;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Lcom/crashlytics/android/p;->a(ILcom/crashlytics/android/k;)V

    .line 1516
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1517
    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    invoke-static {v0}, Lcom/crashlytics/android/k;->a(Ljava/lang/String;)Lcom/crashlytics/android/k;

    move-result-object v0

    invoke-virtual {p1, v4, v0}, Lcom/crashlytics/android/p;->a(ILcom/crashlytics/android/k;)V

    goto :goto_0

    .line 1519
    :cond_1
    return-void
.end method

.method private a(Lcom/crashlytics/android/p;[Ljava/io/File;Ljava/lang/String;)V
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 869
    sget-object v1, Lcom/crashlytics/android/ba;->b:Ljava/util/Comparator;

    invoke-static {p2, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 871
    array-length v2, p2

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v0, p2, v1

    .line 873
    :try_start_0
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "Found Non Fatal for session ID %s in %s "

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p3, v5, v6

    const/4 v6, 0x1

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/crashlytics/android/ba;->c(Ljava/lang/String;)V

    .line 874
    invoke-static {p1, v0}, Lcom/crashlytics/android/F;->a(Lcom/crashlytics/android/p;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 871
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 875
    :catch_0
    move-exception v0

    .line 876
    const-string v3, "Error writting non-fatal to session."

    invoke-static {v3, v0}, Lcom/crashlytics/android/ba;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 879
    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 900
    new-instance v0, Lcom/crashlytics/android/ac;

    invoke-direct {v0, p1}, Lcom/crashlytics/android/ac;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/crashlytics/android/F;->a(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 901
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 900
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 903
    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;I)V
    .locals 4

    .prologue
    .line 1341
    iget-object v0, p0, Lcom/crashlytics/android/F;->k:Ljava/io/File;

    new-instance v1, Lcom/crashlytics/android/ab;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "SessionEvent"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/crashlytics/android/ab;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/crashlytics/android/F;->c:Ljava/util/Comparator;

    invoke-static {v0, v1, p2, v2}, Lcom/crashlytics/android/ba;->a(Ljava/io/File;Ljava/io/FilenameFilter;ILjava/util/Comparator;)V

    .line 1343
    return-void
.end method

.method private a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V
    .locals 3

    .prologue
    .line 1076
    if-eqz p2, :cond_0

    .line 1077
    const/4 v2, 0x0

    :try_start_0
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, p2}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {p1, v1}, Lcom/crashlytics/android/F;->a(Ljava/lang/Throwable;Ljava/io/Writer;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const-string v0, "Failed to close stack trace writer."

    invoke-static {v1, v0}, Lcom/crashlytics/android/ba;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 1079
    :cond_0
    :goto_0
    return-void

    .line 1077
    :catch_0
    move-exception v0

    move-object v1, v2

    :goto_1
    :try_start_2
    const-string v2, "Failed to create PrintWriter"

    invoke-static {v2, v0}, Lcom/crashlytics/android/ba;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const-string v0, "Failed to close stack trace writer."

    invoke-static {v1, v0}, Lcom/crashlytics/android/ba;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_2
    const-string v2, "Failed to close stack trace writer."

    invoke-static {v1, v2}, Lcom/crashlytics/android/ba;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private static a(Ljava/lang/Throwable;Ljava/io/Writer;)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 1109
    const/4 v0, 0x1

    move v3, v0

    .line 1111
    :goto_0
    if-eqz p0, :cond_4

    .line 1112
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 1113
    :goto_1
    if-eqz v0, :cond_1

    move-object v2, v0

    .line 1115
    :goto_2
    if-eqz v3, :cond_2

    const-string v0, ""

    .line 1116
    :goto_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ": "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1120
    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    array-length v3, v2

    move v0, v1

    :goto_4
    if-ge v0, v3, :cond_3

    aget-object v4, v2, v0

    .line 1121
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "\tat "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1120
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1112
    :cond_0
    const-string v2, "(\r\n|\n|\u000c)"

    const-string v4, " "

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1113
    :cond_1
    const-string v0, ""

    move-object v2, v0

    goto :goto_2

    .line 1115
    :cond_2
    const-string v0, "Caused by: "

    goto :goto_3

    .line 1124
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    move v3, v1

    .line 1125
    goto :goto_0

    .line 1126
    :catch_0
    move-exception v0

    .line 1127
    const-string v1, "Could not write stack trace"

    invoke-static {v1, v0}, Lcom/crashlytics/android/ba;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1129
    :cond_4
    return-void
.end method

.method private a(Ljava/util/Date;Lcom/crashlytics/android/p;Ljava/lang/Thread;Ljava/lang/Throwable;Ljava/lang/String;Z)V
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1392
    invoke-virtual/range {p1 .. p1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long v16, v4, v6

    .line 1393
    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->d()Landroid/content/ContextWrapper;

    move-result-object v4

    invoke-static {v4}, Lcom/crashlytics/android/ba;->b(Landroid/content/Context;)F

    move-result v4

    .line 1394
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/crashlytics/android/F;->v:Z

    invoke-static {v5}, Lcom/crashlytics/android/ba;->a(Z)I

    move-result v5

    .line 1395
    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->d()Landroid/content/ContextWrapper;

    move-result-object v6

    invoke-static {v6}, Lcom/crashlytics/android/ba;->c(Landroid/content/Context;)Z

    move-result v6

    .line 1396
    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->d()Landroid/content/ContextWrapper;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget v7, v7, Landroid/content/res/Configuration;->orientation:I

    .line 1397
    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->d()Landroid/content/ContextWrapper;

    move-result-object v8

    invoke-static {v8}, Lcom/crashlytics/android/ba;->a(Landroid/content/Context;)J

    move-result-wide v8

    .line 1398
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/crashlytics/android/ba;->b(Ljava/lang/String;)J

    move-result-wide v10

    .line 1400
    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->e()Ljava/lang/String;

    move-result-object v12

    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->d()Landroid/content/ContextWrapper;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/crashlytics/android/ba;->a(Ljava/lang/String;Landroid/content/Context;)Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/crashlytics/android/F;->t:Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 1401
    new-instance v12, Ljava/util/LinkedList;

    invoke-direct {v12}, Ljava/util/LinkedList;-><init>()V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/crashlytics/android/F;->x:Ljava/util/List;

    .line 1402
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/crashlytics/android/F;->y:[Ljava/lang/StackTraceElement;

    .line 1404
    if-eqz p6, :cond_0

    .line 1405
    invoke-static {}, Ljava/lang/Thread;->getAllStackTraces()Ljava/util/Map;

    move-result-object v13

    .line 1406
    invoke-interface {v13}, Ljava/util/Map;->size()I

    move-result v12

    new-array v12, v12, [Ljava/lang/Thread;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/crashlytics/android/F;->w:[Ljava/lang/Thread;

    .line 1407
    const/4 v12, 0x0

    .line 1408
    invoke-interface {v13}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    move v14, v12

    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    .line 1409
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/crashlytics/android/F;->w:[Ljava/lang/Thread;

    move-object/from16 v18, v0

    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Thread;

    aput-object v13, v18, v14

    .line 1410
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/crashlytics/android/F;->x:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    invoke-interface {v13, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1411
    add-int/lit8 v12, v14, 0x1

    move v14, v12

    goto :goto_0

    .line 1416
    :cond_0
    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Thread;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/crashlytics/android/F;->w:[Ljava/lang/Thread;

    .line 1419
    :cond_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/crashlytics/android/F;->u:Lcom/crashlytics/android/az;

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/crashlytics/android/F;->a(Lcom/crashlytics/android/az;)Lcom/crashlytics/android/k;

    move-result-object v14

    .line 1421
    if-nez v14, :cond_2

    .line 1422
    const-string v12, "No log data to include with this event."

    invoke-static {v12}, Lcom/crashlytics/android/ba;->c(Ljava/lang/String;)V

    .line 1426
    :cond_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/crashlytics/android/F;->u:Lcom/crashlytics/android/az;

    const-string v13, "There was a problem closing the Crashlytics log file."

    invoke-static {v12, v13}, Lcom/crashlytics/android/ba;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 1427
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/crashlytics/android/F;->u:Lcom/crashlytics/android/az;

    .line 1430
    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->d()Landroid/content/ContextWrapper;

    move-result-object v12

    const-string v13, "com.crashlytics.CollectCustomKeys"

    const/4 v15, 0x1

    invoke-static {v12, v13, v15}, Lcom/crashlytics/android/ba;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v12

    if-nez v12, :cond_7

    .line 1431
    new-instance v12, Ljava/util/TreeMap;

    invoke-direct {v12}, Ljava/util/TreeMap;-><init>()V

    .line 1442
    :goto_1
    const/16 v13, 0xa

    const/4 v15, 0x2

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v15}, Lcom/crashlytics/android/p;->g(II)V

    .line 1443
    const/4 v13, 0x1

    move-wide/from16 v0, v16

    invoke-static {v13, v0, v1}, Lcom/crashlytics/android/p;->b(IJ)I

    move-result v13

    add-int/lit8 v13, v13, 0x0

    const/4 v15, 0x2

    invoke-static/range {p5 .. p5}, Lcom/crashlytics/android/k;->a(Ljava/lang/String;)Lcom/crashlytics/android/k;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Lcom/crashlytics/android/p;->b(ILcom/crashlytics/android/k;)I

    move-result v15

    add-int/2addr v13, v15

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-direct {v0, v1, v2, v12}, Lcom/crashlytics/android/F;->a(Ljava/lang/Thread;Ljava/lang/Throwable;Ljava/util/Map;)I

    move-result v15

    const/16 v18, 0x3

    invoke-static/range {v18 .. v18}, Lcom/crashlytics/android/p;->a(I)I

    move-result v18

    invoke-static {v15}, Lcom/crashlytics/android/p;->c(I)I

    move-result v19

    add-int v18, v18, v19

    add-int v15, v15, v18

    add-int/2addr v13, v15

    invoke-static/range {v4 .. v11}, Lcom/crashlytics/android/F;->a(FIZIJJ)I

    move-result v15

    const/16 v18, 0x5

    invoke-static/range {v18 .. v18}, Lcom/crashlytics/android/p;->a(I)I

    move-result v18

    invoke-static {v15}, Lcom/crashlytics/android/p;->c(I)I

    move-result v19

    add-int v18, v18, v19

    add-int v15, v15, v18

    add-int/2addr v13, v15

    if-eqz v14, :cond_3

    const/4 v15, 0x1

    invoke-static {v15, v14}, Lcom/crashlytics/android/p;->b(ILcom/crashlytics/android/k;)I

    move-result v15

    const/16 v18, 0x6

    invoke-static/range {v18 .. v18}, Lcom/crashlytics/android/p;->a(I)I

    move-result v18

    invoke-static {v15}, Lcom/crashlytics/android/p;->c(I)I

    move-result v19

    add-int v18, v18, v19

    add-int v15, v15, v18

    add-int/2addr v13, v15

    :cond_3
    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Lcom/crashlytics/android/p;->b(I)V

    .line 1446
    const/4 v13, 0x1

    move-object/from16 v0, p2

    move-wide/from16 v1, v16

    invoke-virtual {v0, v13, v1, v2}, Lcom/crashlytics/android/p;->a(IJ)V

    .line 1447
    const/4 v13, 0x2

    invoke-static/range {p5 .. p5}, Lcom/crashlytics/android/k;->a(Ljava/lang/String;)Lcom/crashlytics/android/k;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v15}, Lcom/crashlytics/android/p;->a(ILcom/crashlytics/android/k;)V

    .line 1449
    const/4 v13, 0x3

    const/4 v15, 0x2

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v15}, Lcom/crashlytics/android/p;->g(II)V

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-direct {v0, v1, v2, v12}, Lcom/crashlytics/android/F;->a(Ljava/lang/Thread;Ljava/lang/Throwable;Ljava/util/Map;)I

    move-result v13

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Lcom/crashlytics/android/p;->b(I)V

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v3}, Lcom/crashlytics/android/F;->a(Lcom/crashlytics/android/p;Ljava/lang/Thread;Ljava/lang/Throwable;)V

    if-eqz v12, :cond_4

    invoke-interface {v12}, Ljava/util/Map;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_4

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v12}, Lcom/crashlytics/android/F;->a(Lcom/crashlytics/android/p;Ljava/util/Map;)V

    :cond_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/crashlytics/android/F;->t:Landroid/app/ActivityManager$RunningAppProcessInfo;

    if-eqz v12, :cond_5

    const/4 v13, 0x3

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/crashlytics/android/F;->t:Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v12, v12, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v15, 0x64

    if-eq v12, v15, :cond_8

    const/4 v12, 0x1

    :goto_2
    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v12}, Lcom/crashlytics/android/p;->a(IZ)V

    :cond_5
    const/4 v12, 0x4

    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->d()Landroid/content/ContextWrapper;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v13

    iget v13, v13, Landroid/content/res/Configuration;->orientation:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Lcom/crashlytics/android/p;->a(II)V

    .line 1450
    const/4 v12, 0x5

    const/4 v13, 0x2

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Lcom/crashlytics/android/p;->g(II)V

    invoke-static/range {v4 .. v11}, Lcom/crashlytics/android/F;->a(FIZIJJ)I

    move-result v12

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Lcom/crashlytics/android/p;->b(I)V

    const/4 v12, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v4}, Lcom/crashlytics/android/p;->a(IF)V

    const/4 v4, 0x2

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Lcom/crashlytics/android/p;->c(II)V

    const/4 v4, 0x3

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v6}, Lcom/crashlytics/android/p;->a(IZ)V

    const/4 v4, 0x4

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v7}, Lcom/crashlytics/android/p;->a(II)V

    const/4 v4, 0x5

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v8, v9}, Lcom/crashlytics/android/p;->a(IJ)V

    const/4 v4, 0x6

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v10, v11}, Lcom/crashlytics/android/p;->a(IJ)V

    .line 1452
    if-eqz v14, :cond_6

    const/4 v4, 0x6

    const/4 v5, 0x2

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Lcom/crashlytics/android/p;->g(II)V

    const/4 v4, 0x1

    invoke-static {v4, v14}, Lcom/crashlytics/android/p;->b(ILcom/crashlytics/android/k;)I

    move-result v4

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lcom/crashlytics/android/p;->b(I)V

    const/4 v4, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v14}, Lcom/crashlytics/android/p;->a(ILcom/crashlytics/android/k;)V

    .line 1453
    :cond_6
    return-void

    .line 1433
    :cond_7
    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->getInstance()Lcom/crashlytics/android/Crashlytics;

    move-result-object v12

    invoke-virtual {v12}, Lcom/crashlytics/android/Crashlytics;->a()Ljava/util/Map;

    move-result-object v13

    .line 1434
    if-eqz v13, :cond_9

    invoke-interface {v13}, Ljava/util/Map;->size()I

    move-result v12

    const/4 v15, 0x1

    if-le v12, v15, :cond_9

    .line 1438
    new-instance v12, Ljava/util/TreeMap;

    invoke-direct {v12, v13}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    goto/16 :goto_1

    .line 1449
    :cond_8
    const/4 v12, 0x0

    goto :goto_2

    :cond_9
    move-object v12, v13

    goto/16 :goto_1
.end method

.method static synthetic a(Lcom/crashlytics/android/F;Z)Z
    .locals 0

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/crashlytics/android/F;->v:Z

    return p1
.end method

.method static synthetic a(Lcom/crashlytics/android/F;Ljava/io/FilenameFilter;)[Ljava/io/File;
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/crashlytics/android/F;->a(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/io/FilenameFilter;)[Ljava/io/File;
    .locals 1

    .prologue
    .line 928
    iget-object v0, p0, Lcom/crashlytics/android/F;->k:Ljava/io/File;

    invoke-virtual {v0, p1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/io/File;

    :cond_0
    return-object v0
.end method

.method private b(Ljava/lang/Thread;Ljava/lang/Throwable;)I
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v2, 0x0

    const/4 v7, 0x1

    .line 1726
    iget-object v0, p0, Lcom/crashlytics/android/F;->y:[Ljava/lang/StackTraceElement;

    const/4 v1, 0x4

    invoke-direct {p0, p1, v0, v1, v7}, Lcom/crashlytics/android/F;->a(Ljava/lang/Thread;[Ljava/lang/StackTraceElement;IZ)I

    move-result v0

    .line 1729
    invoke-static {v7}, Lcom/crashlytics/android/p;->a(I)I

    move-result v1

    invoke-static {v0}, Lcom/crashlytics/android/p;->c(I)I

    move-result v3

    add-int/2addr v1, v3

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x0

    .line 1731
    iget-object v1, p0, Lcom/crashlytics/android/F;->w:[Ljava/lang/Thread;

    array-length v4, v1

    move v1, v2

    move v3, v0

    .line 1732
    :goto_0
    if-ge v1, v4, :cond_0

    .line 1733
    iget-object v0, p0, Lcom/crashlytics/android/F;->w:[Ljava/lang/Thread;

    aget-object v5, v0, v1

    .line 1734
    iget-object v0, p0, Lcom/crashlytics/android/F;->x:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/StackTraceElement;

    invoke-direct {p0, v5, v0, v2, v2}, Lcom/crashlytics/android/F;->a(Ljava/lang/Thread;[Ljava/lang/StackTraceElement;IZ)I

    move-result v0

    .line 1735
    invoke-static {v7}, Lcom/crashlytics/android/p;->a(I)I

    move-result v5

    invoke-static {v0}, Lcom/crashlytics/android/p;->c(I)I

    move-result v6

    add-int/2addr v5, v6

    add-int/2addr v0, v5

    add-int/2addr v3, v0

    .line 1732
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1739
    :cond_0
    invoke-direct {p0, p2, v7}, Lcom/crashlytics/android/F;->a(Ljava/lang/Throwable;I)I

    move-result v0

    .line 1740
    const/4 v1, 0x2

    invoke-static {v1}, Lcom/crashlytics/android/p;->a(I)I

    move-result v1

    invoke-static {v0}, Lcom/crashlytics/android/p;->c(I)I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    add-int/2addr v0, v3

    .line 1743
    invoke-static {}, Lcom/crashlytics/android/F;->s()I

    move-result v1

    .line 1744
    invoke-static {v8}, Lcom/crashlytics/android/p;->a(I)I

    move-result v2

    invoke-static {v1}, Lcom/crashlytics/android/p;->c(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 1746
    invoke-direct {p0}, Lcom/crashlytics/android/F;->r()I

    move-result v1

    .line 1747
    invoke-static {v8}, Lcom/crashlytics/android/p;->a(I)I

    move-result v2

    invoke-static {v1}, Lcom/crashlytics/android/p;->c(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 1750
    return v0
.end method

.method private static b(Ljava/lang/String;)Lcom/crashlytics/android/k;
    .locals 1

    .prologue
    .line 1196
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/crashlytics/android/k;->a(Ljava/lang/String;)Lcom/crashlytics/android/k;

    move-result-object v0

    goto :goto_0
.end method

.method private b(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TT;>;)",
            "Ljava/util/concurrent/Future",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1972
    :try_start_0
    iget-object v0, p0, Lcom/crashlytics/android/F;->s:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/crashlytics/android/S;

    invoke-direct {v1, p0, p1}, Lcom/crashlytics/android/S;-><init>(Lcom/crashlytics/android/F;Ljava/util/concurrent/Callable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1985
    :goto_0
    return-object v0

    .line 1984
    :catch_0
    move-exception v0

    const-string v0, "Executor is shut down because we\'re handling a fatal crash."

    invoke-static {v0}, Lcom/crashlytics/android/ba;->c(Ljava/lang/String;)V

    .line 1985
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/crashlytics/android/F;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/crashlytics/android/F;->m()V

    return-void
.end method

.method static synthetic b(Lcom/crashlytics/android/F;Ljava/util/Date;Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 58
    invoke-direct {p0}, Lcom/crashlytics/android/F;->n()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-static {v8}, Lcom/crashlytics/android/Crashlytics;->a(Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Crashlytics is logging non-fatal exception \""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\" from thread "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/crashlytics/android/ba;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/crashlytics/android/F;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    invoke-static {v0}, Lcom/crashlytics/android/ba;->a(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "SessionEvent"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v7, Lcom/crashlytics/android/n;

    iget-object v1, p0, Lcom/crashlytics/android/F;->k:Ljava/io/File;

    invoke-direct {v7, v1, v0}, Lcom/crashlytics/android/n;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {v7}, Lcom/crashlytics/android/p;->a(Ljava/io/OutputStream;)Lcom/crashlytics/android/p;

    move-result-object v2

    const-string v5, "error"

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/crashlytics/android/F;->a(Ljava/util/Date;Lcom/crashlytics/android/p;Ljava/lang/Thread;Ljava/lang/Throwable;Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const-string v0, "Failed to flush to non-fatal file."

    invoke-static {v2, v0}, Lcom/crashlytics/android/ba;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    const-string v0, "Failed to close non-fatal file output stream."

    invoke-static {v7, v0}, Lcom/crashlytics/android/ba;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    :goto_0
    const/16 v0, 0x40

    :try_start_2
    invoke-direct {p0, v8, v0}, Lcom/crashlytics/android/F;->a(Ljava/lang/String;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :goto_1
    return-void

    :catch_0
    move-exception v0

    move-object v1, v2

    :goto_2
    :try_start_3
    const-string v3, "An error occurred in the non-fatal exception logger"

    invoke-static {v3, v0}, Lcom/crashlytics/android/ba;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0, v0, v1}, Lcom/crashlytics/android/F;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    const-string v0, "Failed to flush to non-fatal file."

    invoke-static {v2, v0}, Lcom/crashlytics/android/ba;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    const-string v0, "Failed to close non-fatal file output stream."

    invoke-static {v1, v0}, Lcom/crashlytics/android/ba;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v7, v2

    :goto_3
    const-string v1, "Failed to flush to non-fatal file."

    invoke-static {v2, v1}, Lcom/crashlytics/android/ba;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    const-string v1, "Failed to close non-fatal file output stream."

    invoke-static {v7, v1}, Lcom/crashlytics/android/ba;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    throw v0

    :catch_1
    move-exception v0

    const-string v1, "An error occurred when trimming non-fatal files."

    invoke-static {v1, v0}, Lcom/crashlytics/android/ba;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_0
    const-string v0, "Tried to write a non-fatal exception while no session was open."

    invoke-static {v0, v2}, Lcom/crashlytics/android/ba;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :catchall_1
    move-exception v0

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object v7, v1

    goto :goto_3

    :catch_2
    move-exception v0

    move-object v1, v7

    goto :goto_2
.end method

.method static synthetic c(Lcom/crashlytics/android/F;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/crashlytics/android/F;->l()V

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1204
    const/4 v4, 0x0

    .line 1205
    const/4 v3, 0x0

    .line 1207
    :try_start_0
    new-instance v18, Lcom/crashlytics/android/n;

    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->j()Ljava/io/File;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "SessionDevice"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-direct {v0, v2, v5}, Lcom/crashlytics/android/n;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1208
    :try_start_1
    invoke-static/range {v18 .. v18}, Lcom/crashlytics/android/p;->a(Ljava/io/OutputStream;)Lcom/crashlytics/android/p;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object v17

    .line 1210
    :try_start_2
    new-instance v2, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 1212
    invoke-static {}, Lcom/crashlytics/android/ba;->b()I

    move-result v4

    .line 1214
    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v3}, Lcom/crashlytics/android/F;->b(Ljava/lang/String;)Lcom/crashlytics/android/k;

    move-result-object v6

    .line 1215
    sget-object v3, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-static {v3}, Lcom/crashlytics/android/F;->b(Ljava/lang/String;)Lcom/crashlytics/android/k;

    move-result-object v15

    .line 1216
    sget-object v3, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-static {v3}, Lcom/crashlytics/android/F;->b(Ljava/lang/String;)Lcom/crashlytics/android/k;

    move-result-object v16

    .line 1218
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v7

    .line 1219
    invoke-static {}, Lcom/crashlytics/android/ba;->c()J

    move-result-wide v8

    .line 1220
    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockCount()I

    move-result v3

    int-to-long v10, v3

    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSize()I

    move-result v2

    int-to-long v2, v2

    mul-long/2addr v10, v2

    .line 1221
    invoke-static {}, Lcom/crashlytics/android/ba;->d()Z

    move-result v12

    .line 1223
    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->getInstance()Lcom/crashlytics/android/Crashlytics;

    move-result-object v2

    invoke-virtual {v2}, Lcom/crashlytics/android/Crashlytics;->c()Lcom/crashlytics/android/aw;

    move-result-object v2

    .line 1224
    invoke-virtual {v2}, Lcom/crashlytics/android/aw;->e()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/crashlytics/android/k;->a(Ljava/lang/String;)Lcom/crashlytics/android/k;

    move-result-object v5

    .line 1226
    invoke-virtual {v2}, Lcom/crashlytics/android/aw;->f()Ljava/util/Map;

    move-result-object v13

    .line 1228
    invoke-static {}, Lcom/crashlytics/android/ba;->f()I

    move-result v14

    .line 1230
    const/16 v2, 0x9

    const/4 v3, 0x2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Lcom/crashlytics/android/p;->g(II)V

    move-object/from16 v3, p0

    .line 1232
    invoke-direct/range {v3 .. v16}, Lcom/crashlytics/android/F;->a(ILcom/crashlytics/android/k;Lcom/crashlytics/android/k;IJJZLjava/util/Map;ILcom/crashlytics/android/k;Lcom/crashlytics/android/k;)I

    move-result v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lcom/crashlytics/android/p;->b(I)V

    .line 1235
    const/4 v2, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v5}, Lcom/crashlytics/android/p;->a(ILcom/crashlytics/android/k;)V

    .line 1237
    const/4 v2, 0x3

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v4}, Lcom/crashlytics/android/p;->b(II)V

    .line 1238
    const/4 v2, 0x4

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v6}, Lcom/crashlytics/android/p;->a(ILcom/crashlytics/android/k;)V

    .line 1239
    const/4 v2, 0x5

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v7}, Lcom/crashlytics/android/p;->a(II)V

    .line 1240
    const/4 v2, 0x6

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v8, v9}, Lcom/crashlytics/android/p;->a(IJ)V

    .line 1241
    const/4 v2, 0x7

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v10, v11}, Lcom/crashlytics/android/p;->a(IJ)V

    .line 1242
    const/16 v2, 0xa

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v12}, Lcom/crashlytics/android/p;->a(IZ)V

    .line 1244
    invoke-interface {v13}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/util/Map$Entry;

    move-object v4, v0

    .line 1245
    const/16 v2, 0xb

    const/4 v3, 0x2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Lcom/crashlytics/android/p;->g(II)V

    .line 1246
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/crashlytics/android/ax;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/crashlytics/android/F;->a(Lcom/crashlytics/android/ax;Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lcom/crashlytics/android/p;->b(I)V

    .line 1248
    const/4 v3, 0x1

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/crashlytics/android/ax;

    iget v2, v2, Lcom/crashlytics/android/ax;->f:I

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v2}, Lcom/crashlytics/android/p;->b(II)V

    .line 1249
    const/4 v3, 0x2

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/crashlytics/android/k;->a(Ljava/lang/String;)Lcom/crashlytics/android/k;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v2}, Lcom/crashlytics/android/p;->a(ILcom/crashlytics/android/k;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    goto :goto_0

    .line 1259
    :catch_0
    move-exception v2

    move-object/from16 v3, v17

    move-object/from16 v4, v18

    .line 1260
    :goto_1
    :try_start_3
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4}, Lcom/crashlytics/android/F;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    .line 1261
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1263
    :catchall_0
    move-exception v2

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    :goto_2
    const-string v3, "Failed to flush session device info."

    move-object/from16 v0, v17

    invoke-static {v0, v3}, Lcom/crashlytics/android/ba;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 1264
    const-string v3, "Failed to close session device file."

    move-object/from16 v0, v18

    invoke-static {v0, v3}, Lcom/crashlytics/android/ba;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    throw v2

    .line 1251
    :cond_0
    const/16 v2, 0xc

    :try_start_4
    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v14}, Lcom/crashlytics/android/p;->a(II)V

    .line 1253
    if-eqz v15, :cond_1

    .line 1254
    const/16 v2, 0xd

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v15}, Lcom/crashlytics/android/p;->a(ILcom/crashlytics/android/k;)V

    .line 1256
    :cond_1
    if-eqz v16, :cond_2

    .line 1257
    const/16 v2, 0xe

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v2, v1}, Lcom/crashlytics/android/p;->a(ILcom/crashlytics/android/k;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 1263
    :cond_2
    const-string v2, "Failed to flush session device info."

    move-object/from16 v0, v17

    invoke-static {v0, v2}, Lcom/crashlytics/android/ba;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 1264
    const-string v2, "Failed to close session device file."

    move-object/from16 v0, v18

    invoke-static {v0, v2}, Lcom/crashlytics/android/ba;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 1265
    return-void

    .line 1263
    :catchall_1
    move-exception v2

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    goto :goto_2

    :catchall_2
    move-exception v2

    move-object/from16 v17, v3

    goto :goto_2

    :catchall_3
    move-exception v2

    goto :goto_2

    .line 1259
    :catch_1
    move-exception v2

    goto :goto_1

    :catch_2
    move-exception v2

    move-object/from16 v4, v18

    goto :goto_1
.end method

.method static synthetic d(Lcom/crashlytics/android/F;)Lcom/crashlytics/android/az;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/crashlytics/android/F;->u:Lcom/crashlytics/android/az;

    return-object v0
.end method

.method static synthetic e(Lcom/crashlytics/android/F;)Z
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/crashlytics/android/F;->k()Z

    move-result v0

    return v0
.end method

.method static synthetic f(Lcom/crashlytics/android/F;)Ljava/io/File;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/crashlytics/android/F;->l:Ljava/io/File;

    return-object v0
.end method

.method static synthetic i()Ljava/util/regex/Pattern;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/crashlytics/android/F;->d:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method static synthetic j()Ljava/util/Map;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/crashlytics/android/F;->e:Ljava/util/Map;

    return-object v0
.end method

.method private k()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 590
    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->d()Landroid/content/ContextWrapper;

    move-result-object v2

    const-string v3, "com.crashlytics.CollectCustomLogs"

    invoke-static {v2, v3, v1}, Lcom/crashlytics/android/ba;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    .line 593
    if-nez v2, :cond_0

    .line 594
    const-string v1, "Preferences requested not to collect custom logs. Aborting log file creation."

    invoke-static {v1}, Lcom/crashlytics/android/ba;->c(Ljava/lang/String;)V

    .line 621
    :goto_0
    return v0

    .line 599
    :cond_0
    iget-object v2, p0, Lcom/crashlytics/android/F;->u:Lcom/crashlytics/android/az;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Could not close log file: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/crashlytics/android/F;->u:Lcom/crashlytics/android/az;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/crashlytics/android/ba;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 601
    const/4 v3, 0x0

    .line 612
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "crashlytics-userlog-"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ".temp"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 613
    new-instance v2, Ljava/io/File;

    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->d()Landroid/content/ContextWrapper;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ContextWrapper;->getFilesDir()Ljava/io/File;

    move-result-object v5

    invoke-direct {v2, v5, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 614
    :try_start_1
    new-instance v3, Lcom/crashlytics/android/az;

    invoke-direct {v3, v2}, Lcom/crashlytics/android/az;-><init>(Ljava/io/File;)V

    iput-object v3, p0, Lcom/crashlytics/android/F;->u:Lcom/crashlytics/android/az;

    .line 615
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move v0, v1

    .line 621
    goto :goto_0

    .line 616
    :catch_0
    move-exception v1

    move-object v2, v3

    .line 617
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Could not create log file: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/crashlytics/android/ba;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 616
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method private l()V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 701
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 702
    new-instance v1, Lcom/crashlytics/android/l;

    invoke-direct {v1}, Lcom/crashlytics/android/l;-><init>()V

    invoke-virtual {v1}, Lcom/crashlytics/android/l;->toString()Ljava/lang/String;

    move-result-object v4

    .line 704
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Opening an new session with ID "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/crashlytics/android/ba;->c(Ljava/lang/String;)V

    .line 706
    :try_start_0
    new-instance v3, Lcom/crashlytics/android/n;

    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->j()Ljava/io/File;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "BeginSession"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v1, v5}, Lcom/crashlytics/android/n;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_7

    :try_start_1
    invoke-static {v3}, Lcom/crashlytics/android/p;->a(Ljava/io/OutputStream;)Lcom/crashlytics/android/p;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_8

    move-result-object v1

    const/4 v5, 0x1

    :try_start_2
    iget-object v6, p0, Lcom/crashlytics/android/F;->n:Ljava/lang/String;

    invoke-static {v6}, Lcom/crashlytics/android/k;->a(Ljava/lang/String;)Lcom/crashlytics/android/k;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lcom/crashlytics/android/p;->a(ILcom/crashlytics/android/k;)V

    const/4 v5, 0x2

    invoke-static {v4}, Lcom/crashlytics/android/k;->a(Ljava/lang/String;)Lcom/crashlytics/android/k;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lcom/crashlytics/android/p;->a(ILcom/crashlytics/android/k;)V

    const/4 v5, 0x3

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    invoke-virtual {v1, v5, v6, v7}, Lcom/crashlytics/android/p;->a(IJ)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_9

    const-string v0, "Failed to flush to session begin file."

    invoke-static {v1, v0}, Lcom/crashlytics/android/ba;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    const-string v0, "Failed to close begin session file."

    invoke-static {v3, v0}, Lcom/crashlytics/android/ba;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 707
    :try_start_3
    new-instance v3, Lcom/crashlytics/android/n;

    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->j()Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "SessionApp"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v0, v1}, Lcom/crashlytics/android/n;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    :try_start_4
    invoke-static {v3}, Lcom/crashlytics/android/p;->a(Ljava/io/OutputStream;)Lcom/crashlytics/android/p;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    move-result-object v1

    :try_start_5
    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/crashlytics/android/k;->a(Ljava/lang/String;)Lcom/crashlytics/android/k;

    move-result-object v0

    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->h()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/crashlytics/android/k;->a(Ljava/lang/String;)Lcom/crashlytics/android/k;

    move-result-object v5

    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->g()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/crashlytics/android/k;->a(Ljava/lang/String;)Lcom/crashlytics/android/k;

    move-result-object v6

    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->k()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/crashlytics/android/k;->a(Ljava/lang/String;)Lcom/crashlytics/android/k;

    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->d()Landroid/content/ContextWrapper;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ContextWrapper;->getPackageCodePath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/crashlytics/android/k;->a(Ljava/lang/String;)Lcom/crashlytics/android/k;

    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->getInstance()Lcom/crashlytics/android/Crashlytics;

    move-result-object v7

    invoke-virtual {v7}, Lcom/crashlytics/android/Crashlytics;->c()Lcom/crashlytics/android/aw;

    move-result-object v7

    invoke-virtual {v7}, Lcom/crashlytics/android/aw;->b()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/crashlytics/android/k;->a(Ljava/lang/String;)Lcom/crashlytics/android/k;

    move-result-object v7

    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->f()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/crashlytics/android/C;->a(Ljava/lang/String;)Lcom/crashlytics/android/C;

    move-result-object v8

    invoke-virtual {v8}, Lcom/crashlytics/android/C;->a()I

    move-result v8

    const/4 v9, 0x7

    const/4 v10, 0x2

    invoke-virtual {v1, v9, v10}, Lcom/crashlytics/android/p;->g(II)V

    const/4 v9, 0x1

    invoke-static {v9, v0}, Lcom/crashlytics/android/p;->b(ILcom/crashlytics/android/k;)I

    move-result v9

    add-int/lit8 v9, v9, 0x0

    const/4 v10, 0x2

    invoke-static {v10, v5}, Lcom/crashlytics/android/p;->b(ILcom/crashlytics/android/k;)I

    move-result v10

    add-int/2addr v9, v10

    const/4 v10, 0x3

    invoke-static {v10, v6}, Lcom/crashlytics/android/p;->b(ILcom/crashlytics/android/k;)I

    move-result v10

    add-int/2addr v9, v10

    invoke-static {}, Lcom/crashlytics/android/F;->q()I

    move-result v10

    const/4 v11, 0x5

    invoke-static {v11}, Lcom/crashlytics/android/p;->a(I)I

    move-result v11

    invoke-static {v10}, Lcom/crashlytics/android/p;->c(I)I

    move-result v12

    add-int/2addr v11, v12

    add-int/2addr v10, v11

    add-int/2addr v9, v10

    const/4 v10, 0x6

    invoke-static {v10, v7}, Lcom/crashlytics/android/p;->b(ILcom/crashlytics/android/k;)I

    move-result v10

    add-int/2addr v9, v10

    const/16 v10, 0xa

    invoke-static {v10, v8}, Lcom/crashlytics/android/p;->e(II)I

    move-result v10

    add-int/2addr v9, v10

    invoke-virtual {v1, v9}, Lcom/crashlytics/android/p;->b(I)V

    const/4 v9, 0x1

    invoke-virtual {v1, v9, v0}, Lcom/crashlytics/android/p;->a(ILcom/crashlytics/android/k;)V

    const/4 v0, 0x2

    invoke-virtual {v1, v0, v5}, Lcom/crashlytics/android/p;->a(ILcom/crashlytics/android/k;)V

    const/4 v0, 0x3

    invoke-virtual {v1, v0, v6}, Lcom/crashlytics/android/p;->a(ILcom/crashlytics/android/k;)V

    const/4 v0, 0x5

    const/4 v5, 0x2

    invoke-virtual {v1, v0, v5}, Lcom/crashlytics/android/p;->g(II)V

    invoke-static {}, Lcom/crashlytics/android/F;->q()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/crashlytics/android/p;->b(I)V

    const/4 v0, 0x1

    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->i()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v0, v5}, Lcom/crashlytics/android/p;->a(ILjava/lang/String;)V

    const/4 v0, 0x6

    invoke-virtual {v1, v0, v7}, Lcom/crashlytics/android/p;->a(ILcom/crashlytics/android/k;)V

    const/16 v0, 0xa

    invoke-virtual {v1, v0, v8}, Lcom/crashlytics/android/p;->b(II)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_6

    const-string v0, "Failed to flush to session app file."

    invoke-static {v1, v0}, Lcom/crashlytics/android/ba;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    const-string v0, "Failed to close session app file."

    invoke-static {v3, v0}, Lcom/crashlytics/android/ba;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 708
    :try_start_6
    new-instance v1, Lcom/crashlytics/android/n;

    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->j()Ljava/io/File;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "SessionOS"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v0, v3}, Lcom/crashlytics/android/n;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :try_start_7
    invoke-static {v1}, Lcom/crashlytics/android/p;->a(Ljava/io/OutputStream;)Lcom/crashlytics/android/p;

    move-result-object v2

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-static {v0}, Lcom/crashlytics/android/k;->a(Ljava/lang/String;)Lcom/crashlytics/android/k;

    move-result-object v0

    sget-object v3, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    invoke-static {v3}, Lcom/crashlytics/android/k;->a(Ljava/lang/String;)Lcom/crashlytics/android/k;

    move-result-object v3

    invoke-static {}, Lcom/crashlytics/android/ba;->e()Z

    move-result v5

    const/16 v6, 0x8

    const/4 v7, 0x2

    invoke-virtual {v2, v6, v7}, Lcom/crashlytics/android/p;->g(II)V

    const/4 v6, 0x1

    const/4 v7, 0x3

    invoke-static {v6, v7}, Lcom/crashlytics/android/p;->e(II)I

    move-result v6

    add-int/lit8 v6, v6, 0x0

    const/4 v7, 0x2

    invoke-static {v7, v0}, Lcom/crashlytics/android/p;->b(ILcom/crashlytics/android/k;)I

    move-result v7

    add-int/2addr v6, v7

    const/4 v7, 0x3

    invoke-static {v7, v3}, Lcom/crashlytics/android/p;->b(ILcom/crashlytics/android/k;)I

    move-result v7

    add-int/2addr v6, v7

    const/4 v7, 0x4

    invoke-static {v7, v5}, Lcom/crashlytics/android/p;->b(IZ)I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v2, v6}, Lcom/crashlytics/android/p;->b(I)V

    const/4 v6, 0x1

    const/4 v7, 0x3

    invoke-virtual {v2, v6, v7}, Lcom/crashlytics/android/p;->b(II)V

    const/4 v6, 0x2

    invoke-virtual {v2, v6, v0}, Lcom/crashlytics/android/p;->a(ILcom/crashlytics/android/k;)V

    const/4 v0, 0x3

    invoke-virtual {v2, v0, v3}, Lcom/crashlytics/android/p;->a(ILcom/crashlytics/android/k;)V

    const/4 v0, 0x4

    invoke-virtual {v2, v0, v5}, Lcom/crashlytics/android/p;->a(IZ)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    const-string v0, "Failed to flush to session OS file."

    invoke-static {v2, v0}, Lcom/crashlytics/android/ba;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    const-string v0, "Failed to close session OS file."

    invoke-static {v1, v0}, Lcom/crashlytics/android/ba;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 709
    invoke-direct {p0, v4}, Lcom/crashlytics/android/F;->c(Ljava/lang/String;)V

    .line 710
    return-void

    .line 706
    :catch_0
    move-exception v0

    move-object v1, v2

    :goto_0
    :try_start_8
    invoke-direct {p0, v0, v2}, Lcom/crashlytics/android/F;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :catchall_0
    move-exception v0

    :goto_1
    const-string v3, "Failed to flush to session begin file."

    invoke-static {v1, v3}, Lcom/crashlytics/android/ba;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    const-string v1, "Failed to close begin session file."

    invoke-static {v2, v1}, Lcom/crashlytics/android/ba;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    throw v0

    .line 707
    :catch_1
    move-exception v0

    move-object v1, v2

    :goto_2
    :try_start_9
    invoke-direct {p0, v0, v1}, Lcom/crashlytics/android/F;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :catchall_1
    move-exception v0

    move-object v3, v1

    move-object v1, v2

    :goto_3
    const-string v2, "Failed to flush to session app file."

    invoke-static {v1, v2}, Lcom/crashlytics/android/ba;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    const-string v1, "Failed to close session app file."

    invoke-static {v3, v1}, Lcom/crashlytics/android/ba;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    throw v0

    .line 708
    :catch_2
    move-exception v0

    move-object v1, v2

    :goto_4
    :try_start_a
    invoke-direct {p0, v0, v1}, Lcom/crashlytics/android/F;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :catchall_2
    move-exception v0

    :goto_5
    const-string v3, "Failed to flush to session OS file."

    invoke-static {v2, v3}, Lcom/crashlytics/android/ba;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    const-string v2, "Failed to close session OS file."

    invoke-static {v1, v2}, Lcom/crashlytics/android/ba;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    throw v0

    :catchall_3
    move-exception v0

    move-object v1, v2

    goto :goto_5

    :catch_3
    move-exception v0

    goto :goto_4

    .line 707
    :catchall_4
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    goto :goto_3

    :catchall_5
    move-exception v0

    move-object v1, v2

    goto :goto_3

    :catchall_6
    move-exception v0

    goto :goto_3

    :catch_4
    move-exception v0

    move-object v1, v3

    goto :goto_2

    :catch_5
    move-exception v0

    move-object v2, v1

    move-object v1, v3

    goto :goto_2

    .line 706
    :catchall_7
    move-exception v0

    move-object v1, v2

    goto :goto_1

    :catchall_8
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto :goto_1

    :catchall_9
    move-exception v0

    move-object v2, v3

    goto :goto_1

    :catch_6
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto :goto_0

    :catch_7
    move-exception v0

    move-object v2, v3

    goto :goto_0
.end method

.method private m()V
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 716
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    invoke-direct/range {p0 .. p0}, Lcom/crashlytics/android/F;->o()[Ljava/io/File;

    move-result-object v4

    sget-object v2, Lcom/crashlytics/android/F;->b:Ljava/util/Comparator;

    invoke-static {v4, v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    const/16 v2, 0x8

    array-length v5, v4

    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v5, :cond_0

    aget-object v6, v4, v2

    invoke-static {v6}, Lcom/crashlytics/android/F;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/crashlytics/android/aa;

    const/4 v4, 0x0

    invoke-direct {v2, v4}, Lcom/crashlytics/android/aa;-><init>(B)V

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/crashlytics/android/F;->a(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v4

    array-length v5, v4

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v5, :cond_2

    aget-object v6, v4, v2

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/crashlytics/android/F;->d:Ljava/util/regex/Pattern;

    invoke-virtual {v8, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/regex/Matcher;->matches()Z

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Trimming open session file: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/crashlytics/android/ba;->c(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 718
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/crashlytics/android/F;->n()Ljava/lang/String;

    move-result-object v2

    .line 720
    if-eqz v2, :cond_13

    .line 723
    const/4 v5, 0x0

    const/4 v3, 0x0

    :try_start_0
    new-instance v4, Lcom/crashlytics/android/n;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/crashlytics/android/F;->k:Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, "SessionUser"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v6, v2}, Lcom/crashlytics/android/n;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    :try_start_1
    invoke-static {v4}, Lcom/crashlytics/android/p;->a(Ljava/io/OutputStream;)Lcom/crashlytics/android/p;

    move-result-object v3

    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->getInstance()Lcom/crashlytics/android/Crashlytics;

    move-result-object v2

    invoke-virtual {v2}, Lcom/crashlytics/android/Crashlytics;->p()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->getInstance()Lcom/crashlytics/android/Crashlytics;

    move-result-object v5

    invoke-virtual {v5}, Lcom/crashlytics/android/Crashlytics;->r()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->getInstance()Lcom/crashlytics/android/Crashlytics;

    move-result-object v6

    invoke-virtual {v6}, Lcom/crashlytics/android/Crashlytics;->q()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v7

    if-nez v2, :cond_6

    if-nez v5, :cond_6

    if-nez v7, :cond_6

    const-string v2, "Failed to flush session user file."

    invoke-static {v3, v2}, Lcom/crashlytics/android/ba;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    const-string v2, "Failed to close session user file."

    invoke-static {v4, v2}, Lcom/crashlytics/android/ba;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 725
    :goto_2
    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->getInstance()Lcom/crashlytics/android/Crashlytics;

    move-result-object v2

    invoke-virtual {v2}, Lcom/crashlytics/android/Crashlytics;->t()Lcom/crashlytics/android/aQ;

    move-result-object v2

    .line 727
    if-eqz v2, :cond_11

    .line 728
    iget v9, v2, Lcom/crashlytics/android/aQ;->a:I

    .line 730
    const-string v2, "Closing all open sessions."

    invoke-static {v2}, Lcom/crashlytics/android/ba;->c(Ljava/lang/String;)V

    .line 731
    invoke-direct/range {p0 .. p0}, Lcom/crashlytics/android/F;->o()[Ljava/io/File;

    move-result-object v10

    .line 733
    if-eqz v10, :cond_12

    array-length v2, v10

    if-lez v2, :cond_12

    .line 734
    array-length v11, v10

    const/4 v2, 0x0

    move v7, v2

    :goto_3
    if-ge v7, v11, :cond_12

    aget-object v12, v10, v7

    .line 735
    invoke-static {v12}, Lcom/crashlytics/android/F;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v13

    .line 736
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Closing session: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/crashlytics/android/ba;->c(Ljava/lang/String;)V

    .line 737
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Collecting session parts for ID "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/crashlytics/android/ba;->c(Ljava/lang/String;)V

    new-instance v2, Lcom/crashlytics/android/ab;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "SessionCrash"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/crashlytics/android/ab;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/crashlytics/android/F;->a(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v14

    if-eqz v14, :cond_e

    array-length v2, v14

    if-lez v2, :cond_e

    const/4 v2, 0x1

    move v3, v2

    :goto_4
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "Session %s has fatal exception: %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v13, v5, v6

    const/4 v6, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v5, v6

    invoke-static {v2, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/crashlytics/android/ba;->c(Ljava/lang/String;)V

    new-instance v2, Lcom/crashlytics/android/ab;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "SessionEvent"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/crashlytics/android/ab;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/crashlytics/android/F;->a(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v8

    if-eqz v8, :cond_f

    array-length v2, v8

    if-lez v2, :cond_f

    const/4 v2, 0x1

    :goto_5
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "Session %s has non-fatal exceptions: %s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v13, v6, v15

    const/4 v15, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    aput-object v16, v6, v15

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/crashlytics/android/ba;->c(Ljava/lang/String;)V

    if-nez v3, :cond_3

    if-eqz v2, :cond_10

    :cond_3
    const/4 v6, 0x0

    const/4 v4, 0x0

    :try_start_2
    new-instance v5, Lcom/crashlytics/android/n;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/crashlytics/android/F;->k:Ljava/io/File;

    invoke-direct {v5, v15, v13}, Lcom/crashlytics/android/n;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-static {v5}, Lcom/crashlytics/android/p;->a(Ljava/io/OutputStream;)Lcom/crashlytics/android/p;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-result-object v4

    :try_start_4
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v15, "Collecting SessionStart data for session ID "

    invoke-direct {v6, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/crashlytics/android/ba;->c(Ljava/lang/String;)V

    invoke-static {v4, v12}, Lcom/crashlytics/android/F;->a(Lcom/crashlytics/android/p;Ljava/io/File;)V

    const/4 v6, 0x4

    new-instance v12, Ljava/util/Date;

    invoke-direct {v12}, Ljava/util/Date;-><init>()V

    invoke-virtual {v12}, Ljava/util/Date;->getTime()J

    move-result-wide v16

    const-wide/16 v18, 0x3e8

    div-long v16, v16, v18

    move-wide/from16 v0, v16

    invoke-virtual {v4, v6, v0, v1}, Lcom/crashlytics/android/p;->a(IJ)V

    const/4 v6, 0x5

    invoke-virtual {v4, v6, v3}, Lcom/crashlytics/android/p;->a(IZ)V

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v13}, Lcom/crashlytics/android/F;->a(Lcom/crashlytics/android/p;Ljava/lang/String;)V

    if-eqz v2, :cond_4

    array-length v2, v8

    if-le v2, v9, :cond_14

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "Trimming down to %d logged exceptions."

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v8, v12

    invoke-static {v2, v6, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/crashlytics/android/ba;->c(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v9}, Lcom/crashlytics/android/F;->a(Ljava/lang/String;I)V

    new-instance v2, Lcom/crashlytics/android/ab;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "SessionEvent"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Lcom/crashlytics/android/ab;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/crashlytics/android/F;->a(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v2

    :goto_6
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v2, v13}, Lcom/crashlytics/android/F;->a(Lcom/crashlytics/android/p;[Ljava/io/File;Ljava/lang/String;)V

    :cond_4
    if-eqz v3, :cond_5

    const/4 v2, 0x0

    aget-object v2, v14, v2

    invoke-static {v4, v2}, Lcom/crashlytics/android/F;->a(Lcom/crashlytics/android/p;Ljava/io/File;)V

    :cond_5
    const/16 v2, 0xb

    const/4 v3, 0x1

    invoke-virtual {v4, v2, v3}, Lcom/crashlytics/android/p;->a(II)V

    const/16 v2, 0xc

    const/4 v3, 0x3

    invoke-virtual {v4, v2, v3}, Lcom/crashlytics/android/p;->b(II)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    const-string v2, "Error flushing session file stream"

    invoke-static {v4, v2}, Lcom/crashlytics/android/ba;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    const-string v2, "Failed to close CLS file"

    invoke-static {v5, v2}, Lcom/crashlytics/android/ba;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    :goto_7
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Removing session part files for ID "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/crashlytics/android/ba;->c(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/crashlytics/android/F;->a(Ljava/lang/String;)V

    .line 734
    add-int/lit8 v2, v7, 0x1

    move v7, v2

    goto/16 :goto_3

    .line 723
    :cond_6
    if-nez v2, :cond_7

    :try_start_5
    const-string v2, ""

    :cond_7
    invoke-static {v2}, Lcom/crashlytics/android/k;->a(Ljava/lang/String;)Lcom/crashlytics/android/k;

    move-result-object v8

    if-nez v5, :cond_c

    const/4 v2, 0x0

    move-object v6, v2

    :goto_8
    if-nez v7, :cond_d

    const/4 v2, 0x0

    move-object v5, v2

    :goto_9
    const/4 v2, 0x1

    invoke-static {v2, v8}, Lcom/crashlytics/android/p;->b(ILcom/crashlytics/android/k;)I

    move-result v2

    add-int/lit8 v2, v2, 0x0

    if-eqz v6, :cond_8

    const/4 v7, 0x2

    invoke-static {v7, v6}, Lcom/crashlytics/android/p;->b(ILcom/crashlytics/android/k;)I

    move-result v7

    add-int/2addr v2, v7

    :cond_8
    if-eqz v5, :cond_9

    const/4 v7, 0x3

    invoke-static {v7, v5}, Lcom/crashlytics/android/p;->b(ILcom/crashlytics/android/k;)I

    move-result v7

    add-int/2addr v2, v7

    :cond_9
    const/4 v7, 0x6

    const/4 v9, 0x2

    invoke-virtual {v3, v7, v9}, Lcom/crashlytics/android/p;->g(II)V

    invoke-virtual {v3, v2}, Lcom/crashlytics/android/p;->b(I)V

    const/4 v2, 0x1

    invoke-virtual {v3, v2, v8}, Lcom/crashlytics/android/p;->a(ILcom/crashlytics/android/k;)V

    if-eqz v6, :cond_a

    const/4 v2, 0x2

    invoke-virtual {v3, v2, v6}, Lcom/crashlytics/android/p;->a(ILcom/crashlytics/android/k;)V

    :cond_a
    if-eqz v5, :cond_b

    const/4 v2, 0x3

    invoke-virtual {v3, v2, v5}, Lcom/crashlytics/android/p;->a(ILcom/crashlytics/android/k;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_b
    const-string v2, "Failed to flush session user file."

    invoke-static {v3, v2}, Lcom/crashlytics/android/ba;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    const-string v2, "Failed to close session user file."

    invoke-static {v4, v2}, Lcom/crashlytics/android/ba;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_c
    :try_start_6
    invoke-static {v5}, Lcom/crashlytics/android/k;->a(Ljava/lang/String;)Lcom/crashlytics/android/k;

    move-result-object v2

    move-object v6, v2

    goto :goto_8

    :cond_d
    invoke-static {v7}, Lcom/crashlytics/android/k;->a(Ljava/lang/String;)Lcom/crashlytics/android/k;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-object v2

    move-object v5, v2

    goto :goto_9

    :catch_0
    move-exception v2

    move-object v4, v5

    :goto_a
    :try_start_7
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4}, Lcom/crashlytics/android/F;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :catchall_0
    move-exception v2

    :goto_b
    const-string v5, "Failed to flush session user file."

    invoke-static {v3, v5}, Lcom/crashlytics/android/ba;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    const-string v3, "Failed to close session user file."

    invoke-static {v4, v3}, Lcom/crashlytics/android/ba;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    throw v2

    .line 737
    :cond_e
    const/4 v2, 0x0

    move v3, v2

    goto/16 :goto_4

    :cond_f
    const/4 v2, 0x0

    goto/16 :goto_5

    :catch_1
    move-exception v2

    move-object v3, v4

    move-object v4, v6

    :goto_c
    :try_start_8
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Failed to write session file for session ID: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v2}, Lcom/crashlytics/android/ba;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4}, Lcom/crashlytics/android/F;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    const-string v2, "Error flushing session file stream"

    invoke-static {v3, v2}, Lcom/crashlytics/android/ba;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    invoke-static {v4}, Lcom/crashlytics/android/F;->a(Lcom/crashlytics/android/n;)V

    goto/16 :goto_7

    :catchall_1
    move-exception v2

    move-object v5, v6

    :goto_d
    const-string v3, "Error flushing session file stream"

    invoke-static {v4, v3}, Lcom/crashlytics/android/ba;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    const-string v3, "Failed to close CLS file"

    invoke-static {v5, v3}, Lcom/crashlytics/android/ba;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    throw v2

    :cond_10
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "No events present for session ID "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/crashlytics/android/ba;->c(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 741
    :cond_11
    const-string v2, "No session begin files found."

    invoke-static {v2}, Lcom/crashlytics/android/ba;->c(Ljava/lang/String;)V

    .line 746
    :cond_12
    :goto_e
    return-void

    .line 744
    :cond_13
    const-string v2, "Unable to close session. Settings are not loaded."

    invoke-static {v2}, Lcom/crashlytics/android/ba;->c(Ljava/lang/String;)V

    goto :goto_e

    .line 737
    :catchall_2
    move-exception v2

    goto :goto_d

    :catchall_3
    move-exception v2

    move-object v5, v4

    move-object v4, v3

    goto :goto_d

    :catch_2
    move-exception v2

    move-object v3, v4

    move-object v4, v5

    goto :goto_c

    :catch_3
    move-exception v2

    move-object v3, v4

    move-object v4, v5

    goto :goto_c

    .line 723
    :catchall_4
    move-exception v2

    move-object v4, v5

    goto :goto_b

    :catch_4
    move-exception v2

    goto :goto_a

    :cond_14
    move-object v2, v8

    goto/16 :goto_6
.end method

.method private n()Ljava/lang/String;
    .locals 2

    .prologue
    .line 758
    new-instance v0, Lcom/crashlytics/android/ab;

    const-string v1, "BeginSession"

    invoke-direct {v0, v1}, Lcom/crashlytics/android/ab;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/crashlytics/android/F;->a(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    .line 759
    sget-object v1, Lcom/crashlytics/android/F;->b:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 760
    array-length v1, v0

    if-lez v1, :cond_0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/crashlytics/android/F;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private o()[Ljava/io/File;
    .locals 2

    .prologue
    .line 917
    new-instance v0, Lcom/crashlytics/android/ab;

    const-string v1, "BeginSession"

    invoke-direct {v0, v1}, Lcom/crashlytics/android/ab;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/crashlytics/android/F;->a(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private p()V
    .locals 6

    .prologue
    .line 990
    sget-object v0, Lcom/crashlytics/android/F;->a:Ljava/io/FilenameFilter;

    invoke-direct {p0, v0}, Lcom/crashlytics/android/F;->a(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 992
    const-string v4, "Attempting to send crash report at time of crash..."

    invoke-static {v4}, Lcom/crashlytics/android/ba;->c(Ljava/lang/String;)V

    .line 994
    new-instance v4, Ljava/lang/Thread;

    new-instance v5, Lcom/crashlytics/android/N;

    invoke-direct {v5, p0, v3}, Lcom/crashlytics/android/N;-><init>(Lcom/crashlytics/android/F;Ljava/io/File;)V

    const-string v3, "Crashlytics Report Uploader"

    invoke-direct {v4, v5, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    .line 990
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1006
    :cond_0
    return-void
.end method

.method private static q()I
    .locals 2

    .prologue
    .line 1147
    const/4 v0, 0x1

    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->i()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/crashlytics/android/k;->a(Ljava/lang/String;)Lcom/crashlytics/android/k;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/crashlytics/android/p;->b(ILcom/crashlytics/android/k;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 1151
    return v0
.end method

.method private r()I
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 1522
    const/4 v0, 0x1

    invoke-static {v0, v2, v3}, Lcom/crashlytics/android/p;->b(IJ)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 1525
    const/4 v1, 0x2

    invoke-static {v1, v2, v3}, Lcom/crashlytics/android/p;->b(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1526
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/crashlytics/android/F;->q:Lcom/crashlytics/android/k;

    invoke-static {v1, v2}, Lcom/crashlytics/android/p;->b(ILcom/crashlytics/android/k;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1527
    iget-object v1, p0, Lcom/crashlytics/android/F;->r:Lcom/crashlytics/android/k;

    if-eqz v1, :cond_0

    .line 1528
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/crashlytics/android/F;->r:Lcom/crashlytics/android/k;

    invoke-static {v1, v2}, Lcom/crashlytics/android/p;->b(ILcom/crashlytics/android/k;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1531
    :cond_0
    return v0
.end method

.method private static s()I
    .locals 4

    .prologue
    .line 1820
    const/4 v0, 0x1

    sget-object v1, Lcom/crashlytics/android/F;->f:Lcom/crashlytics/android/k;

    invoke-static {v0, v1}, Lcom/crashlytics/android/p;->b(ILcom/crashlytics/android/k;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 1823
    const/4 v1, 0x2

    sget-object v2, Lcom/crashlytics/android/F;->f:Lcom/crashlytics/android/k;

    invoke-static {v1, v2}, Lcom/crashlytics/android/p;->b(ILcom/crashlytics/android/k;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1824
    const/4 v1, 0x3

    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Lcom/crashlytics/android/p;->b(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1826
    return v0
.end method


# virtual methods
.method final a(JLjava/lang/String;)V
    .locals 1

    .prologue
    .line 360
    new-instance v0, Lcom/crashlytics/android/H;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/crashlytics/android/H;-><init>(Lcom/crashlytics/android/F;JLjava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/crashlytics/android/F;->b(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 372
    return-void
.end method

.method final a(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 344
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 346
    new-instance v1, Lcom/crashlytics/android/Z;

    invoke-direct {v1, p0, v0, p1, p2}, Lcom/crashlytics/android/Z;-><init>(Lcom/crashlytics/android/F;Ljava/util/Date;Ljava/lang/Thread;Ljava/lang/Throwable;)V

    invoke-direct {p0, v1}, Lcom/crashlytics/android/F;->a(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 354
    return-void
.end method

.method final a([Ljava/io/File;)V
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 1861
    new-instance v2, Ljava/io/File;

    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->j()Ljava/io/File;

    move-result-object v0

    const-string v3, "invalidClsFiles"

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    array-length v4, v3

    move v0, v1

    :goto_0
    if-ge v0, v4, :cond_0

    aget-object v5, v3, v0

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 1866
    :cond_1
    array-length v3, p1

    move v2, v1

    :goto_1
    if-ge v2, v3, :cond_3

    aget-object v0, p1, v2

    .line 1867
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Found invalid session part file: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/crashlytics/android/ba;->c(Ljava/lang/String;)V

    .line 1868
    invoke-static {v0}, Lcom/crashlytics/android/F;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 1869
    new-instance v4, Lcom/crashlytics/android/P;

    invoke-direct {v4, p0, v0}, Lcom/crashlytics/android/P;-><init>(Lcom/crashlytics/android/F;Ljava/lang/String;)V

    .line 1876
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Deleting all part files for invalid session: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/crashlytics/android/ba;->c(Ljava/lang/String;)V

    .line 1877
    invoke-direct {p0, v4}, Lcom/crashlytics/android/F;->a(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v4

    array-length v5, v4

    move v0, v1

    :goto_2
    if-ge v0, v5, :cond_2

    aget-object v6, v4, v0

    .line 1878
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Deleting session file: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/crashlytics/android/ba;->c(Ljava/lang/String;)V

    .line 1879
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 1877
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1866
    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 1882
    :cond_3
    return-void
.end method

.method final a()Z
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lcom/crashlytics/android/F;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method final b()V
    .locals 1

    .prologue
    .line 326
    new-instance v0, Lcom/crashlytics/android/Y;

    invoke-direct {v0, p0}, Lcom/crashlytics/android/Y;-><init>(Lcom/crashlytics/android/F;)V

    invoke-direct {p0, v0}, Lcom/crashlytics/android/F;->a(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    .line 336
    return-void
.end method

.method final c()V
    .locals 1

    .prologue
    .line 423
    new-instance v0, Lcom/crashlytics/android/J;

    invoke-direct {v0, p0}, Lcom/crashlytics/android/J;-><init>(Lcom/crashlytics/android/F;)V

    invoke-direct {p0, v0}, Lcom/crashlytics/android/F;->b(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 432
    return-void
.end method

.method final d()V
    .locals 1

    .prologue
    .line 435
    new-instance v0, Lcom/crashlytics/android/K;

    invoke-direct {v0, p0}, Lcom/crashlytics/android/K;-><init>(Lcom/crashlytics/android/F;)V

    invoke-direct {p0, v0}, Lcom/crashlytics/android/F;->b(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 445
    return-void
.end method

.method final e()V
    .locals 1

    .prologue
    .line 451
    new-instance v0, Lcom/crashlytics/android/L;

    invoke-direct {v0, p0}, Lcom/crashlytics/android/L;-><init>(Lcom/crashlytics/android/F;)V

    invoke-direct {p0, v0}, Lcom/crashlytics/android/F;->b(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 464
    return-void
.end method

.method final f()Z
    .locals 1

    .prologue
    .line 467
    new-instance v0, Lcom/crashlytics/android/M;

    invoke-direct {v0, p0}, Lcom/crashlytics/android/M;-><init>(Lcom/crashlytics/android/F;)V

    invoke-direct {p0, v0}, Lcom/crashlytics/android/F;->a(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method final g()Z
    .locals 1

    .prologue
    .line 567
    invoke-direct {p0}, Lcom/crashlytics/android/F;->o()[Ljava/io/File;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final h()V
    .locals 1

    .prologue
    .line 1847
    new-instance v0, Lcom/crashlytics/android/O;

    invoke-direct {v0, p0}, Lcom/crashlytics/android/O;-><init>(Lcom/crashlytics/android/F;)V

    invoke-direct {p0, v0}, Lcom/crashlytics/android/F;->a(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 1853
    return-void
.end method

.method public final declared-synchronized uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "thread"    # Ljava/lang/Thread;
    .param p2, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 285
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/crashlytics/android/F;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 287
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Crashlytics is handling uncaught exception \""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\" from thread "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/crashlytics/android/ba;->c(Ljava/lang/String;)V

    .line 289
    iget-object v0, p0, Lcom/crashlytics/android/F;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 290
    const-string v0, "Unregistering power receivers."

    invoke-static {v0}, Lcom/crashlytics/android/ba;->c(Ljava/lang/String;)V

    .line 291
    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->d()Landroid/content/ContextWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/crashlytics/android/F;->p:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 292
    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->d()Landroid/content/ContextWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/crashlytics/android/F;->o:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 297
    :cond_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 299
    new-instance v1, Lcom/crashlytics/android/X;

    invoke-direct {v1, p0, v0, p1, p2}, Lcom/crashlytics/android/X;-><init>(Lcom/crashlytics/android/F;Ljava/util/Date;Ljava/lang/Thread;Ljava/lang/Throwable;)V

    invoke-direct {p0, v1}, Lcom/crashlytics/android/F;->a(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 309
    :try_start_2
    const-string v0, "Crashlytics completed exception processing. Invoking default exception handler."

    invoke-static {v0}, Lcom/crashlytics/android/ba;->c(Ljava/lang/String;)V

    .line 310
    iget-object v0, p0, Lcom/crashlytics/android/F;->j:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 311
    iget-object v0, p0, Lcom/crashlytics/android/F;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 312
    :goto_0
    monitor-exit p0

    return-void

    .line 306
    :catch_0
    move-exception v0

    .line 307
    :try_start_3
    const-string v1, "An error occurred in the uncaught exception handler"

    invoke-static {v1, v0}, Lcom/crashlytics/android/ba;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 309
    :try_start_4
    const-string v0, "Crashlytics completed exception processing. Invoking default exception handler."

    invoke-static {v0}, Lcom/crashlytics/android/ba;->c(Ljava/lang/String;)V

    .line 310
    iget-object v0, p0, Lcom/crashlytics/android/F;->j:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 311
    iget-object v0, p0, Lcom/crashlytics/android/F;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 285
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 309
    :catchall_1
    move-exception v0

    :try_start_5
    const-string v1, "Crashlytics completed exception processing. Invoking default exception handler."

    invoke-static {v1}, Lcom/crashlytics/android/ba;->c(Ljava/lang/String;)V

    .line 310
    iget-object v1, p0, Lcom/crashlytics/android/F;->j:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v1, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 311
    iget-object v1, p0, Lcom/crashlytics/android/F;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method
