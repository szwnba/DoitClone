.class final Lcom/crashlytics/android/aJ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/crashlytics/android/aK;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/crashlytics/android/aI;)V
    .locals 0

    .prologue
    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 180
    check-cast p1, Lcom/crashlytics/android/aK;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/crashlytics/android/aK;

    .end local p2    # "x1":Ljava/lang/Object;
    iget-wide v0, p1, Lcom/crashlytics/android/aK;->b:J

    iget-wide v2, p2, Lcom/crashlytics/android/aK;->b:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method
