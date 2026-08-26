.class final Lcom/crashlytics/android/I;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/crashlytics/android/aD;


# instance fields
.field private synthetic a:[B

.field private synthetic b:[I


# direct methods
.method constructor <init>(Lcom/crashlytics/android/F;[B[I)V
    .locals 0

    .prologue
    .line 401
    iput-object p2, p0, Lcom/crashlytics/android/I;->a:[B

    iput-object p3, p0, Lcom/crashlytics/android/I;->b:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/io/InputStream;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 405
    :try_start_0
    iget-object v0, p0, Lcom/crashlytics/android/I;->a:[B

    iget-object v1, p0, Lcom/crashlytics/android/I;->b:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-virtual {p1, v0, v1, p2}, Ljava/io/InputStream;->read([BII)I

    .line 406
    iget-object v0, p0, Lcom/crashlytics/android/I;->b:[I

    const/4 v1, 0x0

    aget v2, v0, v1

    add-int/2addr v2, p2

    aput v2, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 408
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 409
    return-void

    .line 408
    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    throw v0
.end method
