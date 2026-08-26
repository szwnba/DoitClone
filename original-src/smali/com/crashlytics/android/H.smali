.class final Lcom/crashlytics/android/H;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:J

.field private synthetic b:Ljava/lang/String;

.field private synthetic c:Lcom/crashlytics/android/F;


# direct methods
.method constructor <init>(Lcom/crashlytics/android/F;JLjava/lang/String;)V
    .locals 0

    .prologue
    .line 360
    iput-object p1, p0, Lcom/crashlytics/android/H;->c:Lcom/crashlytics/android/F;

    iput-wide p2, p0, Lcom/crashlytics/android/H;->a:J

    iput-object p4, p0, Lcom/crashlytics/android/H;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 360
    iget-object v0, p0, Lcom/crashlytics/android/H;->c:Lcom/crashlytics/android/F;

    invoke-static {v0}, Lcom/crashlytics/android/F;->a(Lcom/crashlytics/android/F;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/crashlytics/android/H;->c:Lcom/crashlytics/android/F;

    invoke-static {v0}, Lcom/crashlytics/android/F;->d(Lcom/crashlytics/android/F;)Lcom/crashlytics/android/az;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/crashlytics/android/H;->c:Lcom/crashlytics/android/F;

    invoke-static {v0}, Lcom/crashlytics/android/F;->e(Lcom/crashlytics/android/F;)Z

    :cond_0
    iget-object v0, p0, Lcom/crashlytics/android/H;->c:Lcom/crashlytics/android/F;

    iget-object v0, p0, Lcom/crashlytics/android/H;->c:Lcom/crashlytics/android/F;

    invoke-static {v0}, Lcom/crashlytics/android/F;->d(Lcom/crashlytics/android/F;)Lcom/crashlytics/android/az;

    move-result-object v0

    const/high16 v1, 0x10000

    iget-wide v2, p0, Lcom/crashlytics/android/H;->a:J

    iget-object v4, p0, Lcom/crashlytics/android/H;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/crashlytics/android/F;->a(Lcom/crashlytics/android/az;IJLjava/lang/String;)V

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method
