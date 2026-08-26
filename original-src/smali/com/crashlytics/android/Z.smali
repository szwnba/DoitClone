.class final Lcom/crashlytics/android/Z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Ljava/util/Date;

.field private synthetic b:Ljava/lang/Thread;

.field private synthetic c:Ljava/lang/Throwable;

.field private synthetic d:Lcom/crashlytics/android/F;


# direct methods
.method constructor <init>(Lcom/crashlytics/android/F;Ljava/util/Date;Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 346
    iput-object p1, p0, Lcom/crashlytics/android/Z;->d:Lcom/crashlytics/android/F;

    iput-object p2, p0, Lcom/crashlytics/android/Z;->a:Ljava/util/Date;

    iput-object p3, p0, Lcom/crashlytics/android/Z;->b:Ljava/lang/Thread;

    iput-object p4, p0, Lcom/crashlytics/android/Z;->c:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 349
    iget-object v0, p0, Lcom/crashlytics/android/Z;->d:Lcom/crashlytics/android/F;

    invoke-static {v0}, Lcom/crashlytics/android/F;->a(Lcom/crashlytics/android/F;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 350
    iget-object v0, p0, Lcom/crashlytics/android/Z;->d:Lcom/crashlytics/android/F;

    iget-object v1, p0, Lcom/crashlytics/android/Z;->a:Ljava/util/Date;

    iget-object v2, p0, Lcom/crashlytics/android/Z;->b:Ljava/lang/Thread;

    iget-object v3, p0, Lcom/crashlytics/android/Z;->c:Ljava/lang/Throwable;

    invoke-static {v0, v1, v2, v3}, Lcom/crashlytics/android/F;->b(Lcom/crashlytics/android/F;Ljava/util/Date;Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 352
    :cond_0
    return-void
.end method
