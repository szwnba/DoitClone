.class final Lcom/crashlytics/android/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/crashlytics/android/E;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/crashlytics/android/E",
        "<",
        "Lcom/crashlytics/android/af;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/crashlytics/android/Crashlytics;)V
    .locals 0

    .prologue
    .line 698
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/crashlytics/android/aT;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 698
    new-instance v0, Lcom/crashlytics/android/ah;

    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->l()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/crashlytics/android/aT;->a:Lcom/crashlytics/android/f;

    iget-object v2, v2, Lcom/crashlytics/android/f;->c:Ljava/lang/String;

    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->u()Lcom/crashlytics/android/internal/o;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/crashlytics/android/ah;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/crashlytics/android/internal/o;)V

    return-object v0
.end method
