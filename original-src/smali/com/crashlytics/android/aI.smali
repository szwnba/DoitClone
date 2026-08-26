.class final Lcom/crashlytics/android/aI;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/crashlytics/android/aP;

.field private final b:Lcom/crashlytics/android/ag;

.field private c:Lcom/crashlytics/android/c;

.field private final d:Lcom/crashlytics/android/ap;

.field private final e:I

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/crashlytics/android/aq;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/crashlytics/android/aP;Lcom/crashlytics/android/ag;Lcom/crashlytics/android/ap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 59
    const/16 v0, 0x64

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/crashlytics/android/aI;-><init>(Lcom/crashlytics/android/aP;Lcom/crashlytics/android/ag;Lcom/crashlytics/android/ap;I)V

    .line 60
    return-void
.end method

.method private constructor <init>(Lcom/crashlytics/android/aP;Lcom/crashlytics/android/ag;Lcom/crashlytics/android/ap;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/crashlytics/android/aI;->f:Ljava/util/List;

    .line 48
    iput-object p1, p0, Lcom/crashlytics/android/aI;->a:Lcom/crashlytics/android/aP;

    .line 49
    iput-object p3, p0, Lcom/crashlytics/android/aI;->d:Lcom/crashlytics/android/ap;

    .line 50
    iput-object p2, p0, Lcom/crashlytics/android/aI;->b:Lcom/crashlytics/android/ag;

    .line 52
    iget-object v0, p0, Lcom/crashlytics/android/aI;->b:Lcom/crashlytics/android/ag;

    invoke-virtual {v0}, Lcom/crashlytics/android/ag;->a()J

    .line 54
    const/16 v0, 0x64

    iput v0, p0, Lcom/crashlytics/android/aI;->e:I

    .line 55
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 147
    iget-object v0, p0, Lcom/crashlytics/android/aI;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/crashlytics/android/aq;

    .line 149
    :try_start_0
    invoke-virtual {v0}, Lcom/crashlytics/android/aq;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 150
    :catch_0
    move-exception v0

    .line 151
    const-string v2, "One of the roll over listeners threw an exception"

    invoke-static {v2, v0}, Lcom/crashlytics/android/ba;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 154
    :cond_0
    return-void
.end method

.method private static b(Ljava/lang/String;)J
    .locals 5

    .prologue
    const-wide/16 v0, 0x0

    .line 203
    const-string v2, "_"

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 205
    array-length v3, v2

    const/4 v4, 0x3

    if-eq v3, v4, :cond_0

    .line 210
    :goto_0
    return-wide v0

    .line 208
    :cond_0
    const/4 v3, 0x2

    :try_start_0
    aget-object v2, v2, v3

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    goto :goto_0

    .line 210
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private e()I
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/crashlytics/android/aI;->c:Lcom/crashlytics/android/c;

    if-nez v0, :cond_0

    const/16 v0, 0x1f40

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/crashlytics/android/aI;->c:Lcom/crashlytics/android/c;

    iget v0, v0, Lcom/crashlytics/android/c;->c:I

    goto :goto_0
.end method


# virtual methods
.method final a(Lcom/crashlytics/android/aN;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 63
    iget-object v0, p0, Lcom/crashlytics/android/aI;->a:Lcom/crashlytics/android/aP;

    invoke-virtual {v0, p1}, Lcom/crashlytics/android/aP;->a(Lcom/crashlytics/android/aN;)[B

    move-result-object v0

    .line 64
    array-length v1, v0

    iget-object v2, p0, Lcom/crashlytics/android/aI;->d:Lcom/crashlytics/android/ap;

    invoke-direct {p0}, Lcom/crashlytics/android/aI;->e()I

    move-result v3

    invoke-virtual {v2, v1, v3}, Lcom/crashlytics/android/ap;->a(II)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "session analytics events file is %d bytes, new event is %d bytes, this is over flush limit of %d, rolling it over"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/crashlytics/android/aI;->d:Lcom/crashlytics/android/ap;

    invoke-virtual {v6}, Lcom/crashlytics/android/ap;->a()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v5

    const/4 v1, 0x2

    invoke-direct {p0}, Lcom/crashlytics/android/aI;->e()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    const-string v3, "Crashlytics"

    invoke-static {v2, v3, v1}, Lcom/crashlytics/android/ba;->b(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/crashlytics/android/aI;->a()Z

    .line 66
    :cond_0
    iget-object v1, p0, Lcom/crashlytics/android/aI;->d:Lcom/crashlytics/android/ap;

    invoke-virtual {v1, v0}, Lcom/crashlytics/android/ap;->a([B)V

    .line 67
    return-void
.end method

.method final a(Lcom/crashlytics/android/aq;)V
    .locals 1

    .prologue
    .line 74
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/crashlytics/android/aI;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    :cond_0
    return-void
.end method

.method final a(Lcom/crashlytics/android/c;)V
    .locals 0

    .prologue
    .line 139
    iput-object p1, p0, Lcom/crashlytics/android/aI;->c:Lcom/crashlytics/android/c;

    .line 140
    return-void
.end method

.method final a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 161
    iget-object v0, p0, Lcom/crashlytics/android/aI;->d:Lcom/crashlytics/android/ap;

    invoke-virtual {v0, p1}, Lcom/crashlytics/android/ap;->a(Ljava/util/List;)V

    .line 162
    return-void
.end method

.method final a()Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 82
    .line 83
    const/4 v0, 0x0

    .line 87
    iget-object v3, p0, Lcom/crashlytics/android/aI;->d:Lcom/crashlytics/android/ap;

    invoke-virtual {v3}, Lcom/crashlytics/android/ap;->b()Z

    move-result v3

    if-nez v3, :cond_0

    .line 88
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sa"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/crashlytics/android/aI;->b:Lcom/crashlytics/android/ag;

    invoke-virtual {v0}, Lcom/crashlytics/android/ag;->a()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ".tap"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 89
    iget-object v3, p0, Lcom/crashlytics/android/aI;->d:Lcom/crashlytics/android/ap;

    invoke-virtual {v3, v0}, Lcom/crashlytics/android/ap;->a(Ljava/lang/String;)V

    .line 91
    const/4 v3, 0x4

    const-string v4, "Crashlytics"

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "generated new to-send analytics file %s"

    new-array v7, v1, [Ljava/lang/Object;

    aput-object v0, v7, v2

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v4, v2}, Lcom/crashlytics/android/ba;->b(ILjava/lang/String;Ljava/lang/String;)V

    .line 94
    iget-object v2, p0, Lcom/crashlytics/android/aI;->b:Lcom/crashlytics/android/ag;

    invoke-virtual {v2}, Lcom/crashlytics/android/ag;->a()J

    .line 98
    :goto_0
    invoke-direct {p0, v0}, Lcom/crashlytics/android/aI;->a(Ljava/lang/String;)V

    .line 99
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method final b()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 157
    iget-object v0, p0, Lcom/crashlytics/android/aI;->d:Lcom/crashlytics/android/ap;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/crashlytics/android/ap;->a(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method final c()V
    .locals 2

    .prologue
    .line 165
    iget-object v0, p0, Lcom/crashlytics/android/aI;->d:Lcom/crashlytics/android/ap;

    iget-object v1, p0, Lcom/crashlytics/android/aI;->d:Lcom/crashlytics/android/ap;

    invoke-virtual {v1}, Lcom/crashlytics/android/ap;->c()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/crashlytics/android/ap;->a(Ljava/util/List;)V

    .line 166
    iget-object v0, p0, Lcom/crashlytics/android/aI;->d:Lcom/crashlytics/android/ap;

    invoke-virtual {v0}, Lcom/crashlytics/android/ap;->d()V

    .line 167
    return-void
.end method

.method final d()V
    .locals 7

    .prologue
    .line 170
    iget-object v0, p0, Lcom/crashlytics/android/aI;->d:Lcom/crashlytics/android/ap;

    invoke-virtual {v0}, Lcom/crashlytics/android/ap;->c()Ljava/util/List;

    move-result-object v0

    .line 172
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    iget v2, p0, Lcom/crashlytics/android/aI;->e:I

    if-gt v1, v2, :cond_0

    .line 200
    :goto_0
    return-void

    .line 174
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    iget v2, p0, Lcom/crashlytics/android/aI;->e:I

    sub-int/2addr v1, v2

    .line 176
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "Found %d files in session analytics roll over directory, this is greater than %d, deleting %d oldest files"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget v6, p0, Lcom/crashlytics/android/aI;->e:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/crashlytics/android/ba;->d(Ljava/lang/String;)V

    .line 180
    new-instance v2, Ljava/util/TreeSet;

    new-instance v3, Lcom/crashlytics/android/aJ;

    invoke-direct {v3, p0}, Lcom/crashlytics/android/aJ;-><init>(Lcom/crashlytics/android/aI;)V

    invoke-direct {v2, v3}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 187
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 188
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/crashlytics/android/aI;->b(Ljava/lang/String;)J

    move-result-wide v4

    .line 189
    new-instance v6, Lcom/crashlytics/android/aK;

    invoke-direct {v6, p0, v0, v4, v5}, Lcom/crashlytics/android/aK;-><init>(Lcom/crashlytics/android/aI;Ljava/io/File;J)V

    invoke-virtual {v2, v6}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 192
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 193
    invoke-virtual {v2}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/crashlytics/android/aK;

    .line 194
    iget-object v0, v0, Lcom/crashlytics/android/aK;->a:Ljava/io/File;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 196
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 199
    :cond_3
    iget-object v0, p0, Lcom/crashlytics/android/aI;->d:Lcom/crashlytics/android/ap;

    invoke-virtual {v0, v3}, Lcom/crashlytics/android/ap;->a(Ljava/util/List;)V

    goto/16 :goto_0
.end method
