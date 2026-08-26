.class final Lcom/crashlytics/android/K;
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
    .line 435
    iput-object p1, p0, Lcom/crashlytics/android/K;->a:Lcom/crashlytics/android/F;

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
    .line 435
    iget-object v0, p0, Lcom/crashlytics/android/K;->a:Lcom/crashlytics/android/F;

    invoke-static {v0}, Lcom/crashlytics/android/F;->f(Lcom/crashlytics/android/F;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    const-string v0, "Initialization marker file created."

    invoke-static {v0}, Lcom/crashlytics/android/ba;->c(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method
