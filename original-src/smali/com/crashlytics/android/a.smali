.class abstract Lcom/crashlytics/android/a;
.super Lcom/crashlytics/android/b;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/crashlytics/android/internal/o;Lcom/crashlytics/android/internal/f;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/crashlytics/android/b;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/crashlytics/android/internal/o;Lcom/crashlytics/android/internal/f;)V

    .line 41
    return-void
.end method

.method private static a(Lcom/crashlytics/android/internal/g;Lcom/crashlytics/android/e;)Lcom/crashlytics/android/internal/g;
    .locals 6

    .prologue
    .line 73
    const-string v0, "app[identifier]"

    iget-object v1, p1, Lcom/crashlytics/android/e;->b:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/crashlytics/android/internal/g;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/crashlytics/android/internal/g;

    move-result-object v0

    const-string v1, "app[name]"

    iget-object v2, p1, Lcom/crashlytics/android/e;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/crashlytics/android/internal/g;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/crashlytics/android/internal/g;

    move-result-object v0

    const-string v1, "app[display_version]"

    iget-object v2, p1, Lcom/crashlytics/android/e;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/crashlytics/android/internal/g;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/crashlytics/android/internal/g;

    move-result-object v0

    const-string v1, "app[build_version]"

    iget-object v2, p1, Lcom/crashlytics/android/e;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/crashlytics/android/internal/g;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/crashlytics/android/internal/g;

    move-result-object v0

    const-string v1, "app[source]"

    iget v2, p1, Lcom/crashlytics/android/e;->g:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/crashlytics/android/internal/g;->a(Ljava/lang/String;Ljava/lang/Number;)Lcom/crashlytics/android/internal/g;

    move-result-object v0

    const-string v1, "app[minimum_sdk_version]"

    iget-object v2, p1, Lcom/crashlytics/android/e;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/crashlytics/android/internal/g;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/crashlytics/android/internal/g;

    move-result-object v0

    const-string v1, "app[built_sdk_version]"

    iget-object v2, p1, Lcom/crashlytics/android/e;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/crashlytics/android/internal/g;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/crashlytics/android/internal/g;

    move-result-object v2

    .line 81
    iget-object v0, p1, Lcom/crashlytics/android/e;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/crashlytics/android/ba;->e(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 82
    const-string v0, "app[instance_identifier]"

    iget-object v1, p1, Lcom/crashlytics/android/e;->e:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Lcom/crashlytics/android/internal/g;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/crashlytics/android/internal/g;

    .line 85
    :cond_0
    iget-object v0, p1, Lcom/crashlytics/android/e;->j:Lcom/crashlytics/android/av;

    if-eqz v0, :cond_1

    .line 86
    const/4 v1, 0x0

    .line 89
    :try_start_0
    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->d()Landroid/content/ContextWrapper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v3, p1, Lcom/crashlytics/android/e;->j:Lcom/crashlytics/android/av;

    iget v3, v3, Lcom/crashlytics/android/av;->b:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    .line 91
    const-string v0, "app[icon][hash]"

    iget-object v3, p1, Lcom/crashlytics/android/e;->j:Lcom/crashlytics/android/av;

    iget-object v3, v3, Lcom/crashlytics/android/av;->a:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Lcom/crashlytics/android/internal/g;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/crashlytics/android/internal/g;

    move-result-object v0

    const-string v3, "app[icon][data]"

    const-string v4, "icon.png"

    const-string v5, "application/octet-stream"

    invoke-virtual {v0, v3, v4, v5, v1}, Lcom/crashlytics/android/internal/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)Lcom/crashlytics/android/internal/g;

    move-result-object v0

    const-string v3, "app[icon][width]"

    iget-object v4, p1, Lcom/crashlytics/android/e;->j:Lcom/crashlytics/android/av;

    iget v4, v4, Lcom/crashlytics/android/av;->c:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/crashlytics/android/internal/g;->a(Ljava/lang/String;Ljava/lang/Number;)Lcom/crashlytics/android/internal/g;

    move-result-object v0

    const-string v3, "app[icon][height]"

    iget-object v4, p1, Lcom/crashlytics/android/e;->j:Lcom/crashlytics/android/av;

    iget v4, v4, Lcom/crashlytics/android/av;->d:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/crashlytics/android/internal/g;->a(Ljava/lang/String;Ljava/lang/Number;)Lcom/crashlytics/android/internal/g;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    const-string v0, "Failed to close app icon InputStream."

    invoke-static {v1, v0}, Lcom/crashlytics/android/ba;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 102
    :cond_1
    :goto_0
    return-object v2

    .line 95
    :catch_0
    move-exception v0

    .line 96
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to find app icon with resource ID: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p1, Lcom/crashlytics/android/e;->j:Lcom/crashlytics/android/av;

    iget v4, v4, Lcom/crashlytics/android/av;->b:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/crashlytics/android/ba;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 98
    const-string v0, "Failed to close app icon InputStream."

    invoke-static {v1, v0}, Lcom/crashlytics/android/ba;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v2, "Failed to close app icon InputStream."

    invoke-static {v1, v2}, Lcom/crashlytics/android/ba;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final a(Lcom/crashlytics/android/e;)Z
    .locals 4

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/crashlytics/android/a;->b()Lcom/crashlytics/android/internal/g;

    move-result-object v0

    .line 46
    const-string v1, "X-CRASHLYTICS-API-KEY"

    iget-object v2, p1, Lcom/crashlytics/android/e;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/crashlytics/android/internal/g;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/crashlytics/android/internal/g;

    move-result-object v0

    const-string v1, "X-CRASHLYTICS-API-CLIENT-TYPE"

    const-string v2, "android"

    invoke-virtual {v0, v1, v2}, Lcom/crashlytics/android/internal/g;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/crashlytics/android/internal/g;

    move-result-object v0

    const-string v1, "X-CRASHLYTICS-API-CLIENT-VERSION"

    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->getCrashlyticsVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/crashlytics/android/internal/g;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/crashlytics/android/internal/g;

    move-result-object v0

    .line 47
    invoke-static {v0, p1}, Lcom/crashlytics/android/a;->a(Lcom/crashlytics/android/internal/g;Lcom/crashlytics/android/e;)Lcom/crashlytics/android/internal/g;

    move-result-object v1

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Sending app info to "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/crashlytics/android/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/crashlytics/android/ba;->c(Ljava/lang/String;)V

    .line 50
    iget-object v0, p1, Lcom/crashlytics/android/e;->j:Lcom/crashlytics/android/av;

    if-eqz v0, :cond_0

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "App icon hash is "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/crashlytics/android/e;->j:Lcom/crashlytics/android/av;

    iget-object v2, v2, Lcom/crashlytics/android/av;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/crashlytics/android/ba;->c(Ljava/lang/String;)V

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "App icon size is "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/crashlytics/android/e;->j:Lcom/crashlytics/android/av;

    iget v2, v2, Lcom/crashlytics/android/av;->c:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p1, Lcom/crashlytics/android/e;->j:Lcom/crashlytics/android/av;

    iget v2, v2, Lcom/crashlytics/android/av;->d:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/crashlytics/android/ba;->c(Ljava/lang/String;)V

    .line 55
    :cond_0
    invoke-virtual {v1}, Lcom/crashlytics/android/internal/g;->b()I

    move-result v2

    .line 56
    const-string v0, "POST"

    invoke-virtual {v1}, Lcom/crashlytics/android/internal/g;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Create"

    .line 58
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " app request ID: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "X-REQUEST-ID"

    invoke-virtual {v1, v3}, Lcom/crashlytics/android/internal/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/crashlytics/android/ba;->c(Ljava/lang/String;)V

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Result was "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/crashlytics/android/ba;->c(Ljava/lang/String;)V

    .line 61
    invoke-static {v2}, Lcom/crashlytics/android/c;->a(I)I

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    return v0

    .line 56
    :cond_1
    const-string v0, "Update"

    goto :goto_0

    .line 61
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method
