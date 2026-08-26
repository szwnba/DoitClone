.class final Lcom/crashlytics/android/ah;
.super Lcom/crashlytics/android/b;
.source "SourceFile"

# interfaces
.implements Lcom/crashlytics/android/af;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/crashlytics/android/internal/o;)V
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/crashlytics/android/internal/f;->b:Lcom/crashlytics/android/internal/f;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/crashlytics/android/b;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/crashlytics/android/internal/o;Lcom/crashlytics/android/internal/f;)V

    .line 32
    return-void
.end method


# virtual methods
.method public final a(Lcom/crashlytics/android/ae;)Z
    .locals 6

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/crashlytics/android/ah;->b()Lcom/crashlytics/android/internal/g;

    move-result-object v0

    .line 51
    const-string v1, "X-CRASHLYTICS-API-KEY"

    iget-object v2, p1, Lcom/crashlytics/android/ae;->a:Ljava/lang/String;

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

    iget-object v1, p1, Lcom/crashlytics/android/ae;->b:Lcom/crashlytics/android/aE;

    invoke-virtual {v1}, Lcom/crashlytics/android/aE;->e()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-virtual {v1, v0}, Lcom/crashlytics/android/internal/g;->a(Ljava/util/Map$Entry;)Lcom/crashlytics/android/internal/g;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    .line 52
    :cond_0
    iget-object v0, p1, Lcom/crashlytics/android/ae;->b:Lcom/crashlytics/android/aE;

    const-string v2, "report[file]"

    invoke-virtual {v0}, Lcom/crashlytics/android/aE;->b()Ljava/lang/String;

    move-result-object v3

    const-string v4, "application/octet-stream"

    invoke-virtual {v0}, Lcom/crashlytics/android/aE;->d()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/crashlytics/android/internal/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Lcom/crashlytics/android/internal/g;

    move-result-object v1

    const-string v2, "report[identifier]"

    invoke-virtual {v0}, Lcom/crashlytics/android/aE;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/crashlytics/android/internal/g;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/crashlytics/android/internal/g;

    move-result-object v0

    .line 54
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Sending report to: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/crashlytics/android/ah;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/crashlytics/android/ba;->c(Ljava/lang/String;)V

    .line 56
    invoke-virtual {v0}, Lcom/crashlytics/android/internal/g;->b()I

    move-result v1

    .line 58
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Create report request ID: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "X-REQUEST-ID"

    invoke-virtual {v0, v3}, Lcom/crashlytics/android/internal/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/crashlytics/android/ba;->c(Ljava/lang/String;)V

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Result was: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/crashlytics/android/ba;->c(Ljava/lang/String;)V

    .line 61
    invoke-static {v1}, Lcom/crashlytics/android/c;->a(I)I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
