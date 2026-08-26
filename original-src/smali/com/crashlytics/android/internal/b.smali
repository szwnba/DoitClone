.class public final Lcom/crashlytics/android/internal/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/crashlytics/android/internal/a;


# direct methods
.method public constructor <init>(Lcom/crashlytics/android/internal/a;)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/crashlytics/android/internal/b;->a:Lcom/crashlytics/android/internal/a;

    .line 16
    return-void
.end method

.method private a(I)Z
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/crashlytics/android/internal/b;->a:Lcom/crashlytics/android/internal/a;

    invoke-virtual {v0}, Lcom/crashlytics/android/internal/a;->a()I

    move-result v0

    if-gt v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/crashlytics/android/internal/b;->a:Lcom/crashlytics/android/internal/a;

    invoke-virtual {v0}, Lcom/crashlytics/android/internal/a;->b()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/crashlytics/android/internal/b;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 27
    invoke-static {p1, p2, p3}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    .line 29
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/crashlytics/android/internal/b;->a:Lcom/crashlytics/android/internal/a;

    iget-object v0, v0, Lcom/crashlytics/android/internal/a;->a:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-virtual {p0, v1, v0, p1}, Lcom/crashlytics/android/internal/b;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 51
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    .line 70
    iget-object v0, p0, Lcom/crashlytics/android/internal/b;->a:Lcom/crashlytics/android/internal/a;

    iget-object v0, v0, Lcom/crashlytics/android/internal/a;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/crashlytics/android/internal/b;->a:Lcom/crashlytics/android/internal/a;

    invoke-virtual {v1}, Lcom/crashlytics/android/internal/a;->b()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x6

    invoke-direct {p0, v1}, Lcom/crashlytics/android/internal/b;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/crashlytics/android/internal/b;->a:Lcom/crashlytics/android/internal/a;

    invoke-virtual {v1}, Lcom/crashlytics/android/internal/a;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 71
    :cond_0
    :goto_0
    return-void

    .line 70
    :cond_1
    if-eqz p2, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_2
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public final b(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/crashlytics/android/internal/b;->a:Lcom/crashlytics/android/internal/a;

    invoke-virtual {v0}, Lcom/crashlytics/android/internal/a;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 40
    invoke-static {p1, p2, p3}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    .line 42
    :cond_0
    return-void
.end method
