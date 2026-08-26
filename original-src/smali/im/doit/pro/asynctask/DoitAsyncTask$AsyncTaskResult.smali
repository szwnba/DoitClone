.class Lim/doit/pro/asynctask/DoitAsyncTask$AsyncTaskResult;
.super Ljava/lang/Object;
.source "DoitAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/asynctask/DoitAsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AsyncTaskResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Data:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final mData:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TData;"
        }
    .end annotation
.end field

.field final mTask:Lim/doit/pro/asynctask/DoitAsyncTask;


# direct methods
.method varargs constructor <init>(Lim/doit/pro/asynctask/DoitAsyncTask;[Ljava/lang/Object;)V
    .locals 0
    .param p1, "task"    # Lim/doit/pro/asynctask/DoitAsyncTask;
    .param p2, "data"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lim/doit/pro/asynctask/DoitAsyncTask;",
            "[TData;)V"
        }
    .end annotation

    .prologue
    .line 453
    .local p0, "this":Lim/doit/pro/asynctask/DoitAsyncTask$AsyncTaskResult;, "Lim/doit/pro/asynctask/DoitAsyncTask<TParams;TProgress;TResult;>.AsyncTaskResult<TData;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 454
    iput-object p1, p0, Lim/doit/pro/asynctask/DoitAsyncTask$AsyncTaskResult;->mTask:Lim/doit/pro/asynctask/DoitAsyncTask;

    .line 455
    iput-object p2, p0, Lim/doit/pro/asynctask/DoitAsyncTask$AsyncTaskResult;->mData:[Ljava/lang/Object;

    .line 456
    return-void
.end method
