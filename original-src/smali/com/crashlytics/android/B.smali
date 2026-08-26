.class final Lcom/crashlytics/android/B;
.super Lcom/crashlytics/android/i;
.source "SourceFile"


# instance fields
.field private synthetic a:Landroid/content/Context;

.field private synthetic b:F

.field private synthetic c:Ljava/util/concurrent/CountDownLatch;

.field private synthetic d:Lcom/crashlytics/android/Crashlytics;


# direct methods
.method constructor <init>(Lcom/crashlytics/android/Crashlytics;Landroid/content/Context;FLjava/util/concurrent/CountDownLatch;)V
    .locals 0

    .prologue
    .line 945
    iput-object p1, p0, Lcom/crashlytics/android/B;->d:Lcom/crashlytics/android/Crashlytics;

    iput-object p2, p0, Lcom/crashlytics/android/B;->a:Landroid/content/Context;

    iput p3, p0, Lcom/crashlytics/android/B;->b:F

    iput-object p4, p0, Lcom/crashlytics/android/B;->c:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Lcom/crashlytics/android/i;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 949
    :try_start_0
    iget-object v0, p0, Lcom/crashlytics/android/B;->d:Lcom/crashlytics/android/Crashlytics;

    iget-object v1, p0, Lcom/crashlytics/android/B;->a:Landroid/content/Context;

    iget v2, p0, Lcom/crashlytics/android/B;->b:F

    invoke-static {v0, v1, v2}, Lcom/crashlytics/android/Crashlytics;->a(Lcom/crashlytics/android/Crashlytics;Landroid/content/Context;F)V

    .line 952
    iget-object v0, p0, Lcom/crashlytics/android/B;->d:Lcom/crashlytics/android/Crashlytics;

    invoke-static {v0}, Lcom/crashlytics/android/Crashlytics;->a(Lcom/crashlytics/android/Crashlytics;)Lcom/crashlytics/android/F;

    move-result-object v0

    invoke-virtual {v0}, Lcom/crashlytics/android/F;->e()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 956
    iget-object v0, p0, Lcom/crashlytics/android/B;->c:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 957
    :goto_0
    return-void

    .line 953
    :catch_0
    move-exception v0

    .line 954
    :try_start_1
    const-string v1, "Problem encountered during Crashlytics initialization."

    invoke-static {v1, v0}, Lcom/crashlytics/android/ba;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 956
    iget-object v0, p0, Lcom/crashlytics/android/B;->c:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/crashlytics/android/B;->c:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw v0
.end method
