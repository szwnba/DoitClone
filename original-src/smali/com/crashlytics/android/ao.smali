.class final Lcom/crashlytics/android/ao;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/crashlytics/android/am;


# direct methods
.method constructor <init>(Lcom/crashlytics/android/am;)V
    .locals 0

    .prologue
    .line 147
    iput-object p1, p0, Lcom/crashlytics/android/ao;->a:Lcom/crashlytics/android/am;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 151
    :try_start_0
    iget-object v0, p0, Lcom/crashlytics/android/ao;->a:Lcom/crashlytics/android/am;

    invoke-static {v0}, Lcom/crashlytics/android/am;->a(Lcom/crashlytics/android/am;)Lcom/crashlytics/android/aI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/crashlytics/android/aI;->c()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    :goto_0
    return-void

    .line 152
    :catch_0
    move-exception v0

    .line 153
    const-string v1, "Crashlytics failed to clean up all analytics session files"

    invoke-static {v1, v0}, Lcom/crashlytics/android/ba;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
