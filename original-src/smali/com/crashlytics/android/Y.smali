.class final Lcom/crashlytics/android/Y;
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
.field private synthetic a:Lcom/crashlytics/android/F;


# direct methods
.method constructor <init>(Lcom/crashlytics/android/F;)V
    .locals 0

    .prologue
    .line 326
    iput-object p1, p0, Lcom/crashlytics/android/Y;->a:Lcom/crashlytics/android/F;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 326
    iget-object v0, p0, Lcom/crashlytics/android/Y;->a:Lcom/crashlytics/android/F;

    invoke-static {v0}, Lcom/crashlytics/android/F;->a(Lcom/crashlytics/android/F;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/crashlytics/android/Y;->a:Lcom/crashlytics/android/F;

    invoke-static {v0}, Lcom/crashlytics/android/F;->b(Lcom/crashlytics/android/F;)V

    iget-object v0, p0, Lcom/crashlytics/android/Y;->a:Lcom/crashlytics/android/F;

    invoke-static {v0}, Lcom/crashlytics/android/F;->c(Lcom/crashlytics/android/F;)V

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
