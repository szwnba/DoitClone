.class Lim/doit/pro/asynctask/DoitAsyncTask$2;
.super Lim/doit/pro/asynctask/DoitAsyncTask$WorkerRunnable;
.source "DoitAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/asynctask/DoitAsyncTask;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lim/doit/pro/asynctask/DoitAsyncTask$WorkerRunnable",
        "<TParams;TResult;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/asynctask/DoitAsyncTask;


# direct methods
.method constructor <init>(Lim/doit/pro/asynctask/DoitAsyncTask;)V
    .locals 1

    .prologue
    .line 1
    iput-object p1, p0, Lim/doit/pro/asynctask/DoitAsyncTask$2;->this$0:Lim/doit/pro/asynctask/DoitAsyncTask;

    .line 186
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lim/doit/pro/asynctask/DoitAsyncTask$WorkerRunnable;-><init>(Lim/doit/pro/asynctask/DoitAsyncTask$WorkerRunnable;)V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 188
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 189
    iget-object v0, p0, Lim/doit/pro/asynctask/DoitAsyncTask$2;->this$0:Lim/doit/pro/asynctask/DoitAsyncTask;

    iget-object v1, p0, Lim/doit/pro/asynctask/DoitAsyncTask$2;->mParams:[Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lim/doit/pro/asynctask/DoitAsyncTask;->doInBackground([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
