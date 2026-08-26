.class final Lcom/crashlytics/android/aX;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/crashlytics/android/aN;

.field private final b:Lcom/crashlytics/android/aI;

.field private final c:Lcom/crashlytics/android/aM;


# direct methods
.method public constructor <init>(Lcom/crashlytics/android/aN;Lcom/crashlytics/android/aI;Lcom/crashlytics/android/aM;)V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/crashlytics/android/aX;->a:Lcom/crashlytics/android/aN;

    .line 12
    iput-object p2, p0, Lcom/crashlytics/android/aX;->b:Lcom/crashlytics/android/aI;

    .line 13
    iput-object p3, p0, Lcom/crashlytics/android/aX;->c:Lcom/crashlytics/android/aM;

    .line 14
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 19
    :try_start_0
    iget-object v0, p0, Lcom/crashlytics/android/aX;->a:Lcom/crashlytics/android/aN;

    invoke-virtual {v0}, Lcom/crashlytics/android/aN;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/crashlytics/android/ba;->d(Ljava/lang/String;)V

    .line 20
    iget-object v0, p0, Lcom/crashlytics/android/aX;->b:Lcom/crashlytics/android/aI;

    iget-object v1, p0, Lcom/crashlytics/android/aX;->a:Lcom/crashlytics/android/aN;

    invoke-virtual {v0, v1}, Lcom/crashlytics/android/aI;->a(Lcom/crashlytics/android/aN;)V

    .line 21
    iget-object v0, p0, Lcom/crashlytics/android/aX;->c:Lcom/crashlytics/android/aM;

    invoke-interface {v0}, Lcom/crashlytics/android/aM;->d()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    :goto_0
    return-void

    .line 22
    :catch_0
    move-exception v0

    .line 23
    const-string v1, "Crashlytics failed to write session event."

    invoke-static {v1, v0}, Lcom/crashlytics/android/ba;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
