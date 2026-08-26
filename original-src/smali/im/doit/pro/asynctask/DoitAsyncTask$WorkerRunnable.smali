.class abstract Lim/doit/pro/asynctask/DoitAsyncTask$WorkerRunnable;
.super Ljava/lang/Object;
.source "DoitAsyncTask.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/asynctask/DoitAsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "WorkerRunnable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Params:",
        "Ljava/lang/Object;",
        "Result:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<TResult;>;"
    }
.end annotation


# instance fields
.field mParams:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TParams;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 444
    .local p0, "this":Lim/doit/pro/asynctask/DoitAsyncTask$WorkerRunnable;, "Lim/doit/pro/asynctask/DoitAsyncTask<TParams;TProgress;TResult;>.WorkerRunnable<TParams;TResult;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lim/doit/pro/asynctask/DoitAsyncTask$WorkerRunnable;)V
    .locals 0

    .prologue
    .line 444
    invoke-direct {p0}, Lim/doit/pro/asynctask/DoitAsyncTask$WorkerRunnable;-><init>()V

    return-void
.end method
