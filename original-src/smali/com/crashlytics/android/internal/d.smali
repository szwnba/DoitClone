.class public Lcom/crashlytics/android/internal/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/crashlytics/android/internal/o;


# instance fields
.field private final a:Lcom/crashlytics/android/internal/b;

.field private b:Lcom/crashlytics/android/internal/p;

.field private c:Ljavax/net/ssl/SSLSocketFactory;

.field private d:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 35
    new-instance v0, Lcom/crashlytics/android/internal/b;

    new-instance v1, Lcom/crashlytics/android/internal/a;

    const/4 v2, 0x4

    const-class v3, Lcom/crashlytics/android/internal/d;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/crashlytics/android/internal/a;-><init>(ILjava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/crashlytics/android/internal/b;-><init>(Lcom/crashlytics/android/internal/a;)V

    invoke-direct {p0, v0}, Lcom/crashlytics/android/internal/d;-><init>(Lcom/crashlytics/android/internal/b;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Lcom/crashlytics/android/internal/b;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/crashlytics/android/internal/d;->a:Lcom/crashlytics/android/internal/b;

    .line 41
    return-void
.end method

.method private declared-synchronized a()V
    .locals 1

    .prologue
    .line 57
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/crashlytics/android/internal/d;->d:Z

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/crashlytics/android/internal/d;->c:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    monitor-exit p0

    return-void

    .line 57
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized b()Ljavax/net/ssl/SSLSocketFactory;
    .locals 1

    .prologue
    .line 109
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/crashlytics/android/internal/d;->c:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/crashlytics/android/internal/d;->d:Z

    if-nez v0, :cond_0

    .line 110
    invoke-direct {p0}, Lcom/crashlytics/android/internal/d;->c()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/crashlytics/android/internal/d;->c:Ljavax/net/ssl/SSLSocketFactory;

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/crashlytics/android/internal/d;->c:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 109
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized c()Ljavax/net/ssl/SSLSocketFactory;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 116
    monitor-enter p0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/crashlytics/android/internal/d;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    :try_start_1
    const-string v1, "TLS"

    invoke-static {v1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v1

    .line 120
    new-instance v2, Lcom/crashlytics/android/internal/c;

    iget-object v3, p0, Lcom/crashlytics/android/internal/d;->b:Lcom/crashlytics/android/internal/p;

    invoke-interface {v3}, Lcom/crashlytics/android/internal/p;->a()Ljava/io/InputStream;

    move-result-object v3

    iget-object v4, p0, Lcom/crashlytics/android/internal/d;->b:Lcom/crashlytics/android/internal/p;

    invoke-interface {v4}, Lcom/crashlytics/android/internal/p;->b()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/crashlytics/android/internal/c;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 122
    new-instance v3, Lcom/crashlytics/android/internal/q;

    iget-object v4, p0, Lcom/crashlytics/android/internal/d;->b:Lcom/crashlytics/android/internal/p;

    invoke-interface {v4}, Lcom/crashlytics/android/internal/p;->c()[Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Lcom/crashlytics/android/internal/q;-><init>(Lcom/crashlytics/android/internal/c;[Ljava/lang/String;)V

    .line 123
    const/4 v2, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljavax/net/ssl/TrustManager;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v4, v3}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 124
    iget-object v2, p0, Lcom/crashlytics/android/internal/d;->a:Lcom/crashlytics/android/internal/b;

    const-string v3, "Custom SSL pinning enabled"

    invoke-virtual {v2, v3}, Lcom/crashlytics/android/internal/b;->a(Ljava/lang/String;)V

    .line 125
    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 129
    :goto_0
    monitor-exit p0

    return-object v0

    .line 126
    :catch_0
    move-exception v1

    .line 127
    :try_start_2
    iget-object v2, p0, Lcom/crashlytics/android/internal/d;->a:Lcom/crashlytics/android/internal/b;

    const-string v3, "Exception while validating pinned certs"

    invoke-virtual {v2, v3, v1}, Lcom/crashlytics/android/internal/b;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 116
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final a(Lcom/crashlytics/android/internal/f;Ljava/lang/String;)Lcom/crashlytics/android/internal/g;
    .locals 1

    .prologue
    .line 63
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/crashlytics/android/internal/d;->a(Lcom/crashlytics/android/internal/f;Ljava/lang/String;Ljava/util/Map;)Lcom/crashlytics/android/internal/g;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/crashlytics/android/internal/f;Ljava/lang/String;Ljava/util/Map;)Lcom/crashlytics/android/internal/g;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/crashlytics/android/internal/f;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/crashlytics/android/internal/g;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 70
    sget-object v0, Lcom/crashlytics/android/internal/e;->a:[I

    invoke-virtual {p1}, Lcom/crashlytics/android/internal/f;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 88
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported HTTP method!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :pswitch_0
    invoke-static {p2, p3, v2}, Lcom/crashlytics/android/internal/g;->a(Ljava/lang/CharSequence;Ljava/util/Map;Z)Lcom/crashlytics/android/internal/g;

    move-result-object v0

    move-object v1, v0

    .line 92
    :goto_0
    if-nez p2, :cond_1

    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/crashlytics/android/internal/d;->b:Lcom/crashlytics/android/internal/p;

    if-eqz v0, :cond_0

    .line 93
    invoke-direct {p0}, Lcom/crashlytics/android/internal/d;->b()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v2

    .line 95
    if-eqz v2, :cond_0

    .line 96
    invoke-virtual {v1}, Lcom/crashlytics/android/internal/g;->a()Ljava/net/HttpURLConnection;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, v2}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 101
    :cond_0
    return-object v1

    .line 76
    :pswitch_1
    invoke-static {p2, p3, v2}, Lcom/crashlytics/android/internal/g;->b(Ljava/lang/CharSequence;Ljava/util/Map;Z)Lcom/crashlytics/android/internal/g;

    move-result-object v0

    move-object v1, v0

    .line 77
    goto :goto_0

    .line 80
    :pswitch_2
    invoke-static {p2}, Lcom/crashlytics/android/internal/g;->a(Ljava/lang/CharSequence;)Lcom/crashlytics/android/internal/g;

    move-result-object v0

    move-object v1, v0

    .line 81
    goto :goto_0

    .line 84
    :pswitch_3
    invoke-static {p2}, Lcom/crashlytics/android/internal/g;->b(Ljava/lang/CharSequence;)Lcom/crashlytics/android/internal/g;

    move-result-object v0

    move-object v1, v0

    .line 85
    goto :goto_0

    .line 92
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, "https"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    goto :goto_1

    .line 70
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public final a(Lcom/crashlytics/android/internal/p;)V
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/crashlytics/android/internal/d;->b:Lcom/crashlytics/android/internal/p;

    if-eq v0, p1, :cond_0

    .line 51
    iput-object p1, p0, Lcom/crashlytics/android/internal/d;->b:Lcom/crashlytics/android/internal/p;

    .line 52
    invoke-direct {p0}, Lcom/crashlytics/android/internal/d;->a()V

    .line 54
    :cond_0
    return-void
.end method
