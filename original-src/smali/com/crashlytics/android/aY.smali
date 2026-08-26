.class final Lcom/crashlytics/android/aY;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/crashlytics/android/aI;

.field private final b:Lcom/crashlytics/android/aM;


# direct methods
.method public constructor <init>(Lcom/crashlytics/android/aI;Lcom/crashlytics/android/aM;)V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/crashlytics/android/aY;->a:Lcom/crashlytics/android/aI;

    .line 11
    iput-object p2, p0, Lcom/crashlytics/android/aY;->b:Lcom/crashlytics/android/aM;

    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 17
    :try_start_0
    const-string v0, "Performing time based analytics file roll over."

    invoke-static {v0}, Lcom/crashlytics/android/ba;->d(Ljava/lang/String;)V

    .line 18
    iget-object v0, p0, Lcom/crashlytics/android/aY;->a:Lcom/crashlytics/android/aI;

    invoke-virtual {v0}, Lcom/crashlytics/android/aI;->a()Z

    move-result v0

    .line 20
    if-nez v0, :cond_0

    .line 23
    iget-object v0, p0, Lcom/crashlytics/android/aY;->b:Lcom/crashlytics/android/aM;

    invoke-interface {v0}, Lcom/crashlytics/android/aM;->c()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    :cond_0
    :goto_0
    return-void

    .line 25
    :catch_0
    move-exception v0

    .line 26
    const-string v1, "Crashlytics failed to roll over session analytics file"

    invoke-static {v1, v0}, Lcom/crashlytics/android/ba;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
