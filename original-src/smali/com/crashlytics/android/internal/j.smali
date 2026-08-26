.class public interface abstract Lcom/crashlytics/android/internal/j;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/crashlytics/android/internal/j;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 349
    new-instance v0, Lcom/crashlytics/android/internal/k;

    invoke-direct {v0}, Lcom/crashlytics/android/internal/k;-><init>()V

    sput-object v0, Lcom/crashlytics/android/internal/j;->a:Lcom/crashlytics/android/internal/j;

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
