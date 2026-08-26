.class final Lcom/crashlytics/android/t;
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/crashlytics/android/Crashlytics;


# direct methods
.method constructor <init>(Lcom/crashlytics/android/Crashlytics;)V
    .locals 0

    .prologue
    .line 634
    iput-object p1, p0, Lcom/crashlytics/android/t;->a:Lcom/crashlytics/android/Crashlytics;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/crashlytics/android/aT;)Ljava/lang/Object;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 634
    iget-object v1, p1, Lcom/crashlytics/android/aT;->d:Lcom/crashlytics/android/au;

    iget-boolean v1, v1, Lcom/crashlytics/android/au;->a:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/crashlytics/android/t;->a:Lcom/crashlytics/android/Crashlytics;

    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->n()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method
