.class public final Lcom/google/android/gms/internal/dy$i;
.super Lcom/google/android/gms/internal/t$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/dy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "i"
.end annotation


# instance fields
.field cP:Lcom/google/android/gms/internal/p$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/p",
            "<",
            "Lcom/google/android/gms/internal/dx;",
            ">.d;"
        }
    .end annotation
.end field

.field gN:Lcom/google/android/gms/internal/dy;

.field private final hu:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/p$d;Lcom/google/android/gms/internal/dy;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/p",
            "<",
            "Lcom/google/android/gms/internal/dx;",
            ">.d;",
            "Lcom/google/android/gms/internal/dy;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/t$a;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/dy$i;->hu:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/dy$i;->cP:Lcom/google/android/gms/internal/p$d;

    iput-object p2, p0, Lcom/google/android/gms/internal/dy$i;->gN:Lcom/google/android/gms/internal/dy;

    return-void
.end method


# virtual methods
.method public a(ILandroid/os/IBinder;Landroid/os/Bundle;)V
    .locals 3

    iget-object v1, p0, Lcom/google/android/gms/internal/dy$i;->hu:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/dy$i;->cP:Lcom/google/android/gms/internal/p$d;

    iget-object v2, p0, Lcom/google/android/gms/internal/dy$i;->gN:Lcom/google/android/gms/internal/dy;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    if-eqz p3, :cond_0

    const-string v1, "loaded_person"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    const-string v1, "loaded_person"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/eq;->d([B)Lcom/google/android/gms/internal/eq;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/dy;->a(Lcom/google/android/gms/internal/dy;Lcom/google/android/gms/plus/model/people/Person;)Lcom/google/android/gms/plus/model/people/Person;

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/p$d;->a(ILandroid/os/IBinder;Landroid/os/Bundle;)V

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public clear()V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/dy$i;->hu:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/google/android/gms/internal/dy$i;->cP:Lcom/google/android/gms/internal/p$d;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/dy$i;->gN:Lcom/google/android/gms/internal/dy;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
