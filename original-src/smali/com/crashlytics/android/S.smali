.class final Lcom/crashlytics/android/S;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private synthetic a:Ljava/util/concurrent/Callable;


# direct methods
.method constructor <init>(Lcom/crashlytics/android/F;Ljava/util/concurrent/Callable;)V
    .locals 0

    .prologue
    .line 1972
    iput-object p2, p0, Lcom/crashlytics/android/S;->a:Ljava/util/concurrent/Callable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1976
    :try_start_0
    iget-object v0, p0, Lcom/crashlytics/android/S;->a:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1979
    :goto_0
    return-object v0

    .line 1977
    :catch_0
    move-exception v0

    .line 1978
    const-string v1, "Failed to execute task."

    invoke-static {v1, v0}, Lcom/crashlytics/android/ba;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1979
    const/4 v0, 0x0

    goto :goto_0
.end method
