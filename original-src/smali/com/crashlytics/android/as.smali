.class final Lcom/crashlytics/android/as;
.super Lcom/crashlytics/android/i;
.source "SourceFile"


# instance fields
.field private synthetic a:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/crashlytics/android/ar;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 40
    iput-object p2, p0, Lcom/crashlytics/android/as;->a:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/crashlytics/android/i;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/crashlytics/android/as;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 44
    return-void
.end method
