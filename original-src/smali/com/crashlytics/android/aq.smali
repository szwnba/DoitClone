.class Lcom/crashlytics/android/aq;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Lcom/crashlytics/android/aM;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;

.field private final h:Ljava/lang/String;

.field private final i:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/crashlytics/android/aI;Lcom/crashlytics/android/internal/o;)V
    .locals 11

    .prologue
    .line 31
    const-string v0, "Crashlytics Session Analytics Manager"

    invoke-static {v0}, Lcom/crashlytics/android/c;->b(Ljava/lang/String;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v9

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Lcom/crashlytics/android/aq;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/crashlytics/android/aI;Ljava/util/concurrent/ScheduledExecutorService;Lcom/crashlytics/android/internal/o;)V

    .line 35
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/crashlytics/android/aI;Ljava/util/concurrent/ScheduledExecutorService;Lcom/crashlytics/android/internal/o;)V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/crashlytics/android/aq;->b:Ljava/lang/String;

    .line 42
    iput-object p2, p0, Lcom/crashlytics/android/aq;->c:Ljava/lang/String;

    .line 43
    iput-object p3, p0, Lcom/crashlytics/android/aq;->d:Ljava/lang/String;

    .line 44
    iput-object p4, p0, Lcom/crashlytics/android/aq;->e:Ljava/lang/String;

    .line 45
    iput-object p5, p0, Lcom/crashlytics/android/aq;->f:Ljava/lang/String;

    .line 46
    iput-object p6, p0, Lcom/crashlytics/android/aq;->g:Ljava/lang/String;

    .line 47
    iput-object p7, p0, Lcom/crashlytics/android/aq;->h:Ljava/lang/String;

    .line 48
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/crashlytics/android/aq;->i:Ljava/lang/String;

    .line 50
    new-instance v0, Lcom/crashlytics/android/am;

    invoke-direct {v0, p9, p8, p10}, Lcom/crashlytics/android/am;-><init>(Ljava/util/concurrent/ScheduledExecutorService;Lcom/crashlytics/android/aI;Lcom/crashlytics/android/internal/o;)V

    iput-object v0, p0, Lcom/crashlytics/android/aq;->a:Lcom/crashlytics/android/aM;

    .line 53
    invoke-virtual {p8, p0}, Lcom/crashlytics/android/aI;->a(Lcom/crashlytics/android/aq;)V

    .line 54
    return-void
.end method

.method private a(Lcom/crashlytics/android/aO;Landroid/app/Activity;)V
    .locals 11

    .prologue
    .line 97
    iget-object v10, p0, Lcom/crashlytics/android/aq;->a:Lcom/crashlytics/android/aM;

    iget-object v0, p0, Lcom/crashlytics/android/aq;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/crashlytics/android/aq;->i:Ljava/lang/String;

    iget-object v2, p0, Lcom/crashlytics/android/aq;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/crashlytics/android/aq;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/crashlytics/android/aq;->e:Ljava/lang/String;

    iget-object v5, p0, Lcom/crashlytics/android/aq;->f:Ljava/lang/String;

    iget-object v6, p0, Lcom/crashlytics/android/aq;->g:Ljava/lang/String;

    iget-object v7, p0, Lcom/crashlytics/android/aq;->h:Ljava/lang/String;

    const-string v8, "activity"

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v9

    move-object v8, p1

    invoke-static/range {v0 .. v9}, Lcom/crashlytics/android/aN;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/crashlytics/android/aO;Ljava/util/Map;)Lcom/crashlytics/android/aN;

    move-result-object v0

    invoke-interface {v10, v0}, Lcom/crashlytics/android/aM;->a(Lcom/crashlytics/android/aN;)V

    .line 100
    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/crashlytics/android/aO;->a:Lcom/crashlytics/android/aO;

    invoke-direct {p0, v0, p1}, Lcom/crashlytics/android/aq;->a(Lcom/crashlytics/android/aO;Landroid/app/Activity;)V

    .line 65
    return-void
.end method

.method a(Lcom/crashlytics/android/c;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/crashlytics/android/aq;->a:Lcom/crashlytics/android/aM;

    invoke-interface {v0, p1, p2}, Lcom/crashlytics/android/aM;->a(Lcom/crashlytics/android/c;Ljava/lang/String;)V

    .line 104
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 11

    .prologue
    .line 59
    iget-object v10, p0, Lcom/crashlytics/android/aq;->a:Lcom/crashlytics/android/aM;

    iget-object v0, p0, Lcom/crashlytics/android/aq;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/crashlytics/android/aq;->i:Ljava/lang/String;

    iget-object v2, p0, Lcom/crashlytics/android/aq;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/crashlytics/android/aq;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/crashlytics/android/aq;->e:Ljava/lang/String;

    iget-object v5, p0, Lcom/crashlytics/android/aq;->f:Ljava/lang/String;

    iget-object v6, p0, Lcom/crashlytics/android/aq;->g:Ljava/lang/String;

    iget-object v7, p0, Lcom/crashlytics/android/aq;->h:Ljava/lang/String;

    const-string v8, "sessionId"

    invoke-static {v8, p1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v9

    sget-object v8, Lcom/crashlytics/android/aO;->i:Lcom/crashlytics/android/aO;

    invoke-static/range {v0 .. v9}, Lcom/crashlytics/android/aN;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/crashlytics/android/aO;Ljava/util/Map;)Lcom/crashlytics/android/aN;

    move-result-object v0

    invoke-interface {v10, v0}, Lcom/crashlytics/android/aM;->b(Lcom/crashlytics/android/aN;)V

    .line 61
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/crashlytics/android/aq;->a:Lcom/crashlytics/android/aM;

    invoke-interface {v0}, Lcom/crashlytics/android/aM;->a()V

    .line 109
    return-void
.end method

.method public b(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lcom/crashlytics/android/aO;->g:Lcom/crashlytics/android/aO;

    invoke-direct {p0, v0, p1}, Lcom/crashlytics/android/aq;->a(Lcom/crashlytics/android/aO;Landroid/app/Activity;)V

    .line 69
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 11

    .prologue
    .line 72
    iget-object v10, p0, Lcom/crashlytics/android/aq;->a:Lcom/crashlytics/android/aM;

    iget-object v0, p0, Lcom/crashlytics/android/aq;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/crashlytics/android/aq;->i:Ljava/lang/String;

    iget-object v2, p0, Lcom/crashlytics/android/aq;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/crashlytics/android/aq;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/crashlytics/android/aq;->e:Ljava/lang/String;

    iget-object v5, p0, Lcom/crashlytics/android/aq;->f:Ljava/lang/String;

    iget-object v6, p0, Lcom/crashlytics/android/aq;->g:Ljava/lang/String;

    iget-object v7, p0, Lcom/crashlytics/android/aq;->h:Ljava/lang/String;

    const-string v8, "sessionId"

    invoke-static {v8, p1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v9

    sget-object v8, Lcom/crashlytics/android/aO;->h:Lcom/crashlytics/android/aO;

    invoke-static/range {v0 .. v9}, Lcom/crashlytics/android/aN;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/crashlytics/android/aO;Ljava/util/Map;)Lcom/crashlytics/android/aN;

    move-result-object v0

    invoke-interface {v10, v0}, Lcom/crashlytics/android/aM;->a(Lcom/crashlytics/android/aN;)V

    .line 74
    return-void
.end method

.method c()V
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/crashlytics/android/aq;->a:Lcom/crashlytics/android/aM;

    invoke-interface {v0}, Lcom/crashlytics/android/aM;->b()V

    .line 113
    new-instance v0, Lcom/crashlytics/android/al;

    invoke-direct {v0}, Lcom/crashlytics/android/al;-><init>()V

    iput-object v0, p0, Lcom/crashlytics/android/aq;->a:Lcom/crashlytics/android/aM;

    .line 114
    return-void
.end method

.method public c(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 77
    sget-object v0, Lcom/crashlytics/android/aO;->e:Lcom/crashlytics/android/aO;

    invoke-direct {p0, v0, p1}, Lcom/crashlytics/android/aq;->a(Lcom/crashlytics/android/aO;Landroid/app/Activity;)V

    .line 78
    return-void
.end method

.method public d(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 81
    sget-object v0, Lcom/crashlytics/android/aO;->c:Lcom/crashlytics/android/aO;

    invoke-direct {p0, v0, p1}, Lcom/crashlytics/android/aq;->a(Lcom/crashlytics/android/aO;Landroid/app/Activity;)V

    .line 82
    return-void
.end method

.method public e(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 85
    sget-object v0, Lcom/crashlytics/android/aO;->d:Lcom/crashlytics/android/aO;

    invoke-direct {p0, v0, p1}, Lcom/crashlytics/android/aq;->a(Lcom/crashlytics/android/aO;Landroid/app/Activity;)V

    .line 86
    return-void
.end method

.method public f(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 89
    sget-object v0, Lcom/crashlytics/android/aO;->b:Lcom/crashlytics/android/aO;

    invoke-direct {p0, v0, p1}, Lcom/crashlytics/android/aq;->a(Lcom/crashlytics/android/aO;Landroid/app/Activity;)V

    .line 90
    return-void
.end method

.method public g(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 93
    sget-object v0, Lcom/crashlytics/android/aO;->f:Lcom/crashlytics/android/aO;

    invoke-direct {p0, v0, p1}, Lcom/crashlytics/android/aq;->a(Lcom/crashlytics/android/aO;Landroid/app/Activity;)V

    .line 94
    return-void
.end method
