.class final Lcom/crashlytics/android/N;
.super Lcom/crashlytics/android/i;
.source "SourceFile"


# instance fields
.field private synthetic a:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/crashlytics/android/F;Ljava/io/File;)V
    .locals 0

    .prologue
    .line 994
    iput-object p2, p0, Lcom/crashlytics/android/N;->a:Ljava/io/File;

    invoke-direct {p0}, Lcom/crashlytics/android/i;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 996
    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->getInstance()Lcom/crashlytics/android/Crashlytics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/crashlytics/android/Crashlytics;->s()Lcom/crashlytics/android/af;

    move-result-object v0

    .line 1000
    if-eqz v0, :cond_0

    .line 1001
    new-instance v1, Lcom/crashlytics/android/aF;

    invoke-direct {v1, v0}, Lcom/crashlytics/android/aF;-><init>(Lcom/crashlytics/android/af;)V

    new-instance v0, Lcom/crashlytics/android/aE;

    iget-object v2, p0, Lcom/crashlytics/android/N;->a:Ljava/io/File;

    invoke-static {}, Lcom/crashlytics/android/F;->j()Ljava/util/Map;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/crashlytics/android/aE;-><init>(Ljava/io/File;Ljava/util/Map;)V

    invoke-virtual {v1, v0}, Lcom/crashlytics/android/aF;->a(Lcom/crashlytics/android/aE;)Z

    .line 1003
    :cond_0
    return-void
.end method
