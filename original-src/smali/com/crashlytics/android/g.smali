.class final Lcom/crashlytics/android/g;
.super Lcom/crashlytics/android/aq;
.source "SourceFile"


# instance fields
.field private b:Landroid/app/Application$ActivityLifecycleCallbacks;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/crashlytics/android/aI;Lcom/crashlytics/android/internal/o;)V
    .locals 11

    .prologue
    .line 56
    const-string v0, "Crashlytics Trace Manager"

    invoke-static {v0}, Lcom/crashlytics/android/c;->b(Ljava/lang/String;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v9

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Lcom/crashlytics/android/g;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/crashlytics/android/aI;Ljava/util/concurrent/ScheduledExecutorService;Lcom/crashlytics/android/internal/o;)V

    .line 59
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/crashlytics/android/aI;Ljava/util/concurrent/ScheduledExecutorService;Lcom/crashlytics/android/internal/o;)V
    .locals 1

    .prologue
    .line 65
    invoke-direct/range {p0 .. p10}, Lcom/crashlytics/android/aq;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/crashlytics/android/aI;Ljava/util/concurrent/ScheduledExecutorService;Lcom/crashlytics/android/internal/o;)V

    .line 16
    new-instance v0, Lcom/crashlytics/android/h;

    invoke-direct {v0, p0}, Lcom/crashlytics/android/h;-><init>(Lcom/crashlytics/android/g;)V

    iput-object v0, p0, Lcom/crashlytics/android/g;->b:Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 67
    return-void
.end method


# virtual methods
.method public final declared-synchronized a()Landroid/app/Application$ActivityLifecycleCallbacks;
    .locals 1

    .prologue
    .line 70
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/crashlytics/android/g;->b:Landroid/app/Application$ActivityLifecycleCallbacks;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
