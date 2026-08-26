.class final Lcom/crashlytics/android/L;
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/crashlytics/android/F;


# direct methods
.method constructor <init>(Lcom/crashlytics/android/F;)V
    .locals 0

    .prologue
    .line 451
    iput-object p1, p0, Lcom/crashlytics/android/L;->a:Lcom/crashlytics/android/F;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()Ljava/lang/Boolean;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 455
    :try_start_0
    iget-object v0, p0, Lcom/crashlytics/android/L;->a:Lcom/crashlytics/android/F;

    invoke-static {v0}, Lcom/crashlytics/android/F;->f(Lcom/crashlytics/android/F;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    .line 456
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Initialization marker file removed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/crashlytics/android/ba;->c(Ljava/lang/String;)V

    .line 457
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 460
    :goto_0
    return-object v0

    .line 458
    :catch_0
    move-exception v0

    .line 459
    const-string v1, "Problem encountered deleting Crashlytics initialization marker."

    invoke-static {v1, v0}, Lcom/crashlytics/android/ba;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 460
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
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
    .line 451
    invoke-direct {p0}, Lcom/crashlytics/android/L;->a()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
