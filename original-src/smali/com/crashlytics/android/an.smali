.class final Lcom/crashlytics/android/an;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/crashlytics/android/am;


# direct methods
.method constructor <init>(Lcom/crashlytics/android/am;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lcom/crashlytics/android/an;->a:Lcom/crashlytics/android/am;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/crashlytics/android/an;->a:Lcom/crashlytics/android/am;

    invoke-virtual {v0}, Lcom/crashlytics/android/am;->e()V

    .line 107
    return-void
.end method
