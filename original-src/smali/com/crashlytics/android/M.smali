.class final Lcom/crashlytics/android/M;
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
    .line 467
    iput-object p1, p0, Lcom/crashlytics/android/M;->a:Lcom/crashlytics/android/F;

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
    .line 467
    iget-object v0, p0, Lcom/crashlytics/android/M;->a:Lcom/crashlytics/android/F;

    invoke-static {v0}, Lcom/crashlytics/android/F;->f(Lcom/crashlytics/android/F;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
