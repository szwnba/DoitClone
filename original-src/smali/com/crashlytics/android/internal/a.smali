.class public Lcom/crashlytics/android/internal/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Ljava/lang/String;

.field private b:I

.field private c:Z

.field private d:Z


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 23
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/crashlytics/android/internal/a;-><init>(ILjava/lang/String;ZZ)V

    .line 24
    return-void
.end method

.method private constructor <init>(ILjava/lang/String;ZZ)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, 0x4

    iput v0, p0, Lcom/crashlytics/android/internal/a;->b:I

    .line 35
    iput p1, p0, Lcom/crashlytics/android/internal/a;->b:I

    .line 36
    iput-object p2, p0, Lcom/crashlytics/android/internal/a;->a:Ljava/lang/String;

    .line 37
    iput-boolean v1, p0, Lcom/crashlytics/android/internal/a;->c:Z

    .line 38
    iput-boolean v1, p0, Lcom/crashlytics/android/internal/a;->d:Z

    .line 39
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/crashlytics/android/internal/a;->b:I

    return v0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/crashlytics/android/internal/a;->c:Z

    return v0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/crashlytics/android/internal/a;->d:Z

    return v0
.end method
