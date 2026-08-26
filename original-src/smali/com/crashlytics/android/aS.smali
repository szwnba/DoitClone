.class Lcom/crashlytics/android/aS;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/crashlytics/android/aV;

.field private final b:Lcom/crashlytics/android/aU;

.field private final c:Lcom/crashlytics/android/ag;

.field private final d:Lcom/crashlytics/android/m;

.field private final e:Lcom/crashlytics/android/aW;


# direct methods
.method public constructor <init>(Lcom/crashlytics/android/aV;Lcom/crashlytics/android/ag;Lcom/crashlytics/android/aU;Lcom/crashlytics/android/m;Lcom/crashlytics/android/aW;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/crashlytics/android/aS;->a:Lcom/crashlytics/android/aV;

    .line 30
    iput-object p2, p0, Lcom/crashlytics/android/aS;->c:Lcom/crashlytics/android/ag;

    .line 31
    iput-object p3, p0, Lcom/crashlytics/android/aS;->b:Lcom/crashlytics/android/aU;

    .line 32
    iput-object p4, p0, Lcom/crashlytics/android/aS;->d:Lcom/crashlytics/android/m;

    .line 33
    iput-object p5, p0, Lcom/crashlytics/android/aS;->e:Lcom/crashlytics/android/aW;

    .line 34
    return-void
.end method

.method private a(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 104
    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->d()Landroid/content/ContextWrapper;

    move-result-object v0

    invoke-static {v0}, Lcom/crashlytics/android/ba;->d(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/crashlytics/android/aS;->b:Lcom/crashlytics/android/aU;

    invoke-virtual {v0, p1}, Lcom/crashlytics/android/aU;->a(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1

    .line 108
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/crashlytics/android/ba;->c(Ljava/lang/String;)V

    .line 109
    return-void
.end method

.method private b(Lcom/crashlytics/android/aR;)Lcom/crashlytics/android/aT;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 69
    .line 72
    :try_start_0
    sget-object v0, Lcom/crashlytics/android/aR;->b:Lcom/crashlytics/android/aR;

    invoke-virtual {v0, p1}, Lcom/crashlytics/android/aR;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 73
    iget-object v0, p0, Lcom/crashlytics/android/aS;->d:Lcom/crashlytics/android/m;

    invoke-virtual {v0}, Lcom/crashlytics/android/m;->a()Lorg/json/JSONObject;

    move-result-object v2

    .line 75
    if-eqz v2, :cond_5

    .line 76
    iget-object v0, p0, Lcom/crashlytics/android/aS;->b:Lcom/crashlytics/android/aU;

    iget-object v3, p0, Lcom/crashlytics/android/aS;->c:Lcom/crashlytics/android/ag;

    invoke-virtual {v0, v3, v2}, Lcom/crashlytics/android/aU;->a(Lcom/crashlytics/android/ag;Lorg/json/JSONObject;)Lcom/crashlytics/android/aT;

    move-result-object v0

    .line 78
    if-eqz v0, :cond_4

    .line 79
    const-string v3, "Loaded cached settings: "

    invoke-direct {p0, v2, v3}, Lcom/crashlytics/android/aS;->a(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 81
    iget-object v2, p0, Lcom/crashlytics/android/aS;->c:Lcom/crashlytics/android/ag;

    invoke-virtual {v2}, Lcom/crashlytics/android/ag;->a()J

    move-result-wide v2

    .line 83
    sget-object v4, Lcom/crashlytics/android/aR;->c:Lcom/crashlytics/android/aR;

    invoke-virtual {v4, p1}, Lcom/crashlytics/android/aR;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-wide v4, v0, Lcom/crashlytics/android/aT;->f:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    cmp-long v2, v4, v2

    if-gez v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    if-nez v2, :cond_2

    .line 85
    :cond_0
    :try_start_1
    const-string v1, "Returning cached settings."

    invoke-static {v1}, Lcom/crashlytics/android/ba;->c(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 100
    :goto_1
    return-object v0

    .line 83
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 87
    :cond_2
    :try_start_2
    const-string v0, "Cached settings have expired."

    invoke-static {v0}, Lcom/crashlytics/android/ba;->c(Ljava/lang/String;)V

    :cond_3
    :goto_2
    move-object v0, v1

    .line 98
    goto :goto_1

    .line 90
    :cond_4
    const-string v0, "Failed to transform cached settings data."

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/crashlytics/android/ba;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_1

    .line 93
    :cond_5
    const-string v0, "No cached settings data found."

    invoke-static {v0}, Lcom/crashlytics/android/ba;->c(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 96
    :catch_0
    move-exception v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    .line 97
    :goto_3
    const-string v2, "Failed to get cached settings"

    invoke-static {v2, v1}, Lcom/crashlytics/android/ba;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 96
    :catch_1
    move-exception v1

    goto :goto_3
.end method


# virtual methods
.method public a()Lcom/crashlytics/android/aT;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/crashlytics/android/aR;->a:Lcom/crashlytics/android/aR;

    invoke-virtual {p0, v0}, Lcom/crashlytics/android/aS;->a(Lcom/crashlytics/android/aR;)Lcom/crashlytics/android/aT;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/crashlytics/android/aR;)Lcom/crashlytics/android/aT;
    .locals 7

    .prologue
    .line 41
    const/4 v1, 0x0

    .line 44
    :try_start_0
    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->getInstance()Lcom/crashlytics/android/Crashlytics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/crashlytics/android/Crashlytics;->getDebugMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 45
    invoke-direct {p0, p1}, Lcom/crashlytics/android/aS;->b(Lcom/crashlytics/android/aR;)Lcom/crashlytics/android/aT;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 48
    :cond_0
    if-nez v1, :cond_1

    .line 49
    :try_start_1
    iget-object v0, p0, Lcom/crashlytics/android/aS;->e:Lcom/crashlytics/android/aW;

    iget-object v2, p0, Lcom/crashlytics/android/aS;->a:Lcom/crashlytics/android/aV;

    invoke-interface {v0, v2}, Lcom/crashlytics/android/aW;->a(Lcom/crashlytics/android/aV;)Lorg/json/JSONObject;

    move-result-object v0

    .line 51
    if-eqz v0, :cond_1

    .line 52
    iget-object v2, p0, Lcom/crashlytics/android/aS;->b:Lcom/crashlytics/android/aU;

    iget-object v3, p0, Lcom/crashlytics/android/aS;->c:Lcom/crashlytics/android/ag;

    invoke-virtual {v2, v3, v0}, Lcom/crashlytics/android/aU;->a(Lcom/crashlytics/android/ag;Lorg/json/JSONObject;)Lcom/crashlytics/android/aT;

    move-result-object v1

    .line 53
    iget-object v2, p0, Lcom/crashlytics/android/aS;->d:Lcom/crashlytics/android/m;

    iget-wide v4, v1, Lcom/crashlytics/android/aT;->f:J

    invoke-virtual {v2, v4, v5, v0}, Lcom/crashlytics/android/m;->a(JLorg/json/JSONObject;)V

    .line 54
    const-string v2, "Loaded settings: "

    invoke-direct {p0, v0, v2}, Lcom/crashlytics/android/aS;->a(Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    move-object v0, v1

    .line 59
    if-nez v0, :cond_2

    .line 60
    :try_start_2
    sget-object v1, Lcom/crashlytics/android/aR;->c:Lcom/crashlytics/android/aR;

    invoke-direct {p0, v1}, Lcom/crashlytics/android/aS;->b(Lcom/crashlytics/android/aR;)Lcom/crashlytics/android/aT;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v0

    .line 65
    :cond_2
    :goto_0
    return-object v0

    .line 62
    :catch_0
    move-exception v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    .line 63
    :goto_1
    const-string v2, "Unknown error while loading Crashlytics settings. Crashes will be cached until settings can be retrieved."

    invoke-static {v2, v1}, Lcom/crashlytics/android/ba;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 62
    :catch_1
    move-exception v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_1
.end method
