.class public abstract Lim/doit/pro/asynctask/DoitAsyncTask;
.super Ljava/lang/Object;
.source "DoitAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lim/doit/pro/asynctask/DoitAsyncTask$AsyncTaskResult;,
        Lim/doit/pro/asynctask/DoitAsyncTask$InternalHandler;,
        Lim/doit/pro/asynctask/DoitAsyncTask$Status;,
        Lim/doit/pro/asynctask/DoitAsyncTask$WorkerRunnable;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Params:",
        "Ljava/lang/Object;",
        "Progress:",
        "Ljava/lang/Object;",
        "Result:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$im$doit$pro$asynctask$DoitAsyncTask$Status:[I = null

.field private static final CORE_POOL_SIZE:I = 0x5

.field private static final KEEP_ALIVE:I = 0xa

.field private static final LOG_TAG:Ljava/lang/String; = "AsyncTask"

.field private static final MAXIMUM_POOL_SIZE:I = 0x80

.field private static final MESSAGE_POST_CANCEL:I = 0x3

.field private static final MESSAGE_POST_PROGRESS:I = 0x2

.field private static final MESSAGE_POST_RESULT:I = 0x1

.field private static final sExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

.field private static final sHandler:Lim/doit/pro/asynctask/DoitAsyncTask$InternalHandler;

.field private static final sThreadFactory:Ljava/util/concurrent/ThreadFactory;

.field private static final sWorkQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mFuture:Ljava/util/concurrent/FutureTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/FutureTask",
            "<TResult;>;"
        }
    .end annotation
.end field

.field private volatile mStatus:Lim/doit/pro/asynctask/DoitAsyncTask$Status;

.field private final mWorker:Lim/doit/pro/asynctask/DoitAsyncTask$WorkerRunnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lim/doit/pro/asynctask/DoitAsyncTask$WorkerRunnable",
            "<TParams;TResult;>;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic $SWITCH_TABLE$im$doit$pro$asynctask$DoitAsyncTask$Status()[I
    .locals 3

    .prologue
    .line 131
    sget-object v0, Lim/doit/pro/asynctask/DoitAsyncTask;->$SWITCH_TABLE$im$doit$pro$asynctask$DoitAsyncTask$Status:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lim/doit/pro/asynctask/DoitAsyncTask$Status;->values()[Lim/doit/pro/asynctask/DoitAsyncTask$Status;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lim/doit/pro/asynctask/DoitAsyncTask$Status;->FINISHED:Lim/doit/pro/asynctask/DoitAsyncTask$Status;

    invoke-virtual {v1}, Lim/doit/pro/asynctask/DoitAsyncTask$Status;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    :try_start_1
    sget-object v1, Lim/doit/pro/asynctask/DoitAsyncTask$Status;->PENDING:Lim/doit/pro/asynctask/DoitAsyncTask$Status;

    invoke-virtual {v1}, Lim/doit/pro/asynctask/DoitAsyncTask$Status;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    :try_start_2
    sget-object v1, Lim/doit/pro/asynctask/DoitAsyncTask$Status;->RUNNING:Lim/doit/pro/asynctask/DoitAsyncTask$Status;

    invoke-virtual {v1}, Lim/doit/pro/asynctask/DoitAsyncTask$Status;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    sput-object v0, Lim/doit/pro/asynctask/DoitAsyncTask;->$SWITCH_TABLE$im$doit$pro$asynctask$DoitAsyncTask$Status:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method static constructor <clinit>()V
    .locals 9

    .prologue
    .line 139
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    .line 138
    sput-object v0, Lim/doit/pro/asynctask/DoitAsyncTask;->sWorkQueue:Ljava/util/concurrent/BlockingQueue;

    .line 141
    new-instance v0, Lim/doit/pro/asynctask/DoitAsyncTask$1;

    invoke-direct {v0}, Lim/doit/pro/asynctask/DoitAsyncTask$1;-><init>()V

    sput-object v0, Lim/doit/pro/asynctask/DoitAsyncTask;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    .line 149
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x5

    .line 150
    const/16 v3, 0x80

    const-wide/16 v4, 0xa

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v7, Lim/doit/pro/asynctask/DoitAsyncTask;->sWorkQueue:Ljava/util/concurrent/BlockingQueue;

    sget-object v8, Lim/doit/pro/asynctask/DoitAsyncTask;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    .line 149
    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v1, Lim/doit/pro/asynctask/DoitAsyncTask;->sExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 156
    new-instance v0, Lim/doit/pro/asynctask/DoitAsyncTask$InternalHandler;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lim/doit/pro/asynctask/DoitAsyncTask$InternalHandler;-><init>(Lim/doit/pro/asynctask/DoitAsyncTask$InternalHandler;)V

    sput-object v0, Lim/doit/pro/asynctask/DoitAsyncTask;->sHandler:Lim/doit/pro/asynctask/DoitAsyncTask$InternalHandler;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 185
    .local p0, "this":Lim/doit/pro/asynctask/DoitAsyncTask;, "Lim/doit/pro/asynctask/DoitAsyncTask<TParams;TProgress;TResult;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    sget-object v0, Lim/doit/pro/asynctask/DoitAsyncTask$Status;->PENDING:Lim/doit/pro/asynctask/DoitAsyncTask$Status;

    iput-object v0, p0, Lim/doit/pro/asynctask/DoitAsyncTask;->mStatus:Lim/doit/pro/asynctask/DoitAsyncTask$Status;

    .line 186
    new-instance v0, Lim/doit/pro/asynctask/DoitAsyncTask$2;

    invoke-direct {v0, p0}, Lim/doit/pro/asynctask/DoitAsyncTask$2;-><init>(Lim/doit/pro/asynctask/DoitAsyncTask;)V

    iput-object v0, p0, Lim/doit/pro/asynctask/DoitAsyncTask;->mWorker:Lim/doit/pro/asynctask/DoitAsyncTask$WorkerRunnable;

    .line 193
    new-instance v0, Lim/doit/pro/asynctask/DoitAsyncTask$3;

    iget-object v1, p0, Lim/doit/pro/asynctask/DoitAsyncTask;->mWorker:Lim/doit/pro/asynctask/DoitAsyncTask$WorkerRunnable;

    invoke-direct {v0, p0, v1}, Lim/doit/pro/asynctask/DoitAsyncTask$3;-><init>(Lim/doit/pro/asynctask/DoitAsyncTask;Ljava/util/concurrent/Callable;)V

    iput-object v0, p0, Lim/doit/pro/asynctask/DoitAsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;

    .line 222
    return-void
.end method

.method static synthetic access$0(Lim/doit/pro/asynctask/DoitAsyncTask;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 418
    invoke-direct {p0, p1}, Lim/doit/pro/asynctask/DoitAsyncTask;->finish(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1()Lim/doit/pro/asynctask/DoitAsyncTask$InternalHandler;
    .locals 1

    .prologue
    .line 156
    sget-object v0, Lim/doit/pro/asynctask/DoitAsyncTask;->sHandler:Lim/doit/pro/asynctask/DoitAsyncTask$InternalHandler;

    return-object v0
.end method

.method private finish(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 419
    .local p0, "this":Lim/doit/pro/asynctask/DoitAsyncTask;, "Lim/doit/pro/asynctask/DoitAsyncTask<TParams;TProgress;TResult;>;"
    .local p1, "result":Ljava/lang/Object;, "TResult;"
    invoke-virtual {p0}, Lim/doit/pro/asynctask/DoitAsyncTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 420
    .end local p1    # "result":Ljava/lang/Object;, "TResult;"
    :cond_0
    invoke-virtual {p0, p1}, Lim/doit/pro/asynctask/DoitAsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 421
    sget-object v0, Lim/doit/pro/asynctask/DoitAsyncTask$Status;->FINISHED:Lim/doit/pro/asynctask/DoitAsyncTask$Status;

    iput-object v0, p0, Lim/doit/pro/asynctask/DoitAsyncTask;->mStatus:Lim/doit/pro/asynctask/DoitAsyncTask$Status;

    .line 422
    return-void
.end method


# virtual methods
.method public final cancel(Z)Z
    .locals 1
    .param p1, "mayInterruptIfRunning"    # Z

    .prologue
    .line 328
    .local p0, "this":Lim/doit/pro/asynctask/DoitAsyncTask;, "Lim/doit/pro/asynctask/DoitAsyncTask<TParams;TProgress;TResult;>;"
    iget-object v0, p0, Lim/doit/pro/asynctask/DoitAsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    move-result v0

    return v0
.end method

.method protected varargs abstract doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)TResult;"
        }
    .end annotation
.end method

.method public final varargs execute([Ljava/lang/Object;)Lim/doit/pro/asynctask/DoitAsyncTask;
    .locals 2
    .param p1, "params"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)",
            "Lim/doit/pro/asynctask/DoitAsyncTask",
            "<TParams;TProgress;TResult;>;"
        }
    .end annotation

    .prologue
    .line 380
    .local p0, "this":Lim/doit/pro/asynctask/DoitAsyncTask;, "Lim/doit/pro/asynctask/DoitAsyncTask<TParams;TProgress;TResult;>;"
    iget-object v0, p0, Lim/doit/pro/asynctask/DoitAsyncTask;->mStatus:Lim/doit/pro/asynctask/DoitAsyncTask$Status;

    sget-object v1, Lim/doit/pro/asynctask/DoitAsyncTask$Status;->PENDING:Lim/doit/pro/asynctask/DoitAsyncTask$Status;

    if-eq v0, v1, :cond_0

    .line 381
    invoke-static {}, Lim/doit/pro/asynctask/DoitAsyncTask;->$SWITCH_TABLE$im$doit$pro$asynctask$DoitAsyncTask$Status()[I

    move-result-object v0

    iget-object v1, p0, Lim/doit/pro/asynctask/DoitAsyncTask;->mStatus:Lim/doit/pro/asynctask/DoitAsyncTask$Status;

    invoke-virtual {v1}, Lim/doit/pro/asynctask/DoitAsyncTask$Status;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 392
    :cond_0
    sget-object v0, Lim/doit/pro/asynctask/DoitAsyncTask$Status;->RUNNING:Lim/doit/pro/asynctask/DoitAsyncTask$Status;

    iput-object v0, p0, Lim/doit/pro/asynctask/DoitAsyncTask;->mStatus:Lim/doit/pro/asynctask/DoitAsyncTask$Status;

    .line 394
    invoke-virtual {p0}, Lim/doit/pro/asynctask/DoitAsyncTask;->onPreExecute()V

    .line 396
    iget-object v0, p0, Lim/doit/pro/asynctask/DoitAsyncTask;->mWorker:Lim/doit/pro/asynctask/DoitAsyncTask$WorkerRunnable;

    iput-object p1, v0, Lim/doit/pro/asynctask/DoitAsyncTask$WorkerRunnable;->mParams:[Ljava/lang/Object;

    .line 397
    sget-object v0, Lim/doit/pro/asynctask/DoitAsyncTask;->sExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v1, p0, Lim/doit/pro/asynctask/DoitAsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 399
    return-object p0

    .line 383
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot execute task: the task is already running."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 386
    :pswitch_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot execute task: the task has already been executed (a task can be executed only once)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 381
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .prologue
    .line 343
    .local p0, "this":Lim/doit/pro/asynctask/DoitAsyncTask;, "Lim/doit/pro/asynctask/DoitAsyncTask<TParams;TProgress;TResult;>;"
    iget-object v0, p0, Lim/doit/pro/asynctask/DoitAsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 1
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    .line 363
    .local p0, "this":Lim/doit/pro/asynctask/DoitAsyncTask;, "Lim/doit/pro/asynctask/DoitAsyncTask<TParams;TProgress;TResult;>;"
    iget-object v0, p0, Lim/doit/pro/asynctask/DoitAsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getStatus()Lim/doit/pro/asynctask/DoitAsyncTask$Status;
    .locals 1

    .prologue
    .line 230
    .local p0, "this":Lim/doit/pro/asynctask/DoitAsyncTask;, "Lim/doit/pro/asynctask/DoitAsyncTask<TParams;TProgress;TResult;>;"
    iget-object v0, p0, Lim/doit/pro/asynctask/DoitAsyncTask;->mStatus:Lim/doit/pro/asynctask/DoitAsyncTask$Status;

    return-object v0
.end method

.method public final isCancelled()Z
    .locals 1

    .prologue
    .line 303
    .local p0, "this":Lim/doit/pro/asynctask/DoitAsyncTask;, "Lim/doit/pro/asynctask/DoitAsyncTask<TParams;TProgress;TResult;>;"
    iget-object v0, p0, Lim/doit/pro/asynctask/DoitAsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->isCancelled()Z

    move-result v0

    return v0
.end method

.method protected onCancelled()V
    .locals 0

    .prologue
    .line 292
    .local p0, "this":Lim/doit/pro/asynctask/DoitAsyncTask;, "Lim/doit/pro/asynctask/DoitAsyncTask<TParams;TProgress;TResult;>;"
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 271
    .local p0, "this":Lim/doit/pro/asynctask/DoitAsyncTask;, "Lim/doit/pro/asynctask/DoitAsyncTask<TParams;TProgress;TResult;>;"
    .local p1, "result":Ljava/lang/Object;, "TResult;"
    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 258
    .local p0, "this":Lim/doit/pro/asynctask/DoitAsyncTask;, "Lim/doit/pro/asynctask/DoitAsyncTask<TParams;TProgress;TResult;>;"
    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .param p1, "values"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TProgress;)V"
        }
    .end annotation

    .prologue
    .line 283
    .local p0, "this":Lim/doit/pro/asynctask/DoitAsyncTask;, "Lim/doit/pro/asynctask/DoitAsyncTask<TParams;TProgress;TResult;>;"
    return-void
.end method

.method protected final varargs publishProgress([Ljava/lang/Object;)V
    .locals 3
    .param p1, "values"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TProgress;)V"
        }
    .end annotation

    .prologue
    .line 414
    .local p0, "this":Lim/doit/pro/asynctask/DoitAsyncTask;, "Lim/doit/pro/asynctask/DoitAsyncTask<TParams;TProgress;TResult;>;"
    sget-object v0, Lim/doit/pro/asynctask/DoitAsyncTask;->sHandler:Lim/doit/pro/asynctask/DoitAsyncTask$InternalHandler;

    const/4 v1, 0x2

    .line 415
    new-instance v2, Lim/doit/pro/asynctask/DoitAsyncTask$AsyncTaskResult;

    invoke-direct {v2, p0, p1}, Lim/doit/pro/asynctask/DoitAsyncTask$AsyncTaskResult;-><init>(Lim/doit/pro/asynctask/DoitAsyncTask;[Ljava/lang/Object;)V

    .line 414
    invoke-virtual {v0, v1, v2}, Lim/doit/pro/asynctask/DoitAsyncTask$InternalHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 415
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 416
    return-void
.end method
