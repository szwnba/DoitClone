.class Lim/doit/pro/asynctask/DoitAsyncTask$InternalHandler;
.super Landroid/os/Handler;
.source "DoitAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/asynctask/DoitAsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InternalHandler"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 424
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lim/doit/pro/asynctask/DoitAsyncTask$InternalHandler;)V
    .locals 0

    .prologue
    .line 424
    invoke-direct {p0}, Lim/doit/pro/asynctask/DoitAsyncTask$InternalHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 428
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lim/doit/pro/asynctask/DoitAsyncTask$AsyncTaskResult;

    .line 429
    .local v0, "result":Lim/doit/pro/asynctask/DoitAsyncTask$AsyncTaskResult;
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 441
    :goto_0
    return-void

    .line 432
    :pswitch_0
    iget-object v1, v0, Lim/doit/pro/asynctask/DoitAsyncTask$AsyncTaskResult;->mTask:Lim/doit/pro/asynctask/DoitAsyncTask;

    iget-object v2, v0, Lim/doit/pro/asynctask/DoitAsyncTask$AsyncTaskResult;->mData:[Ljava/lang/Object;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-static {v1, v2}, Lim/doit/pro/asynctask/DoitAsyncTask;->access$0(Lim/doit/pro/asynctask/DoitAsyncTask;Ljava/lang/Object;)V

    goto :goto_0

    .line 435
    :pswitch_1
    iget-object v1, v0, Lim/doit/pro/asynctask/DoitAsyncTask$AsyncTaskResult;->mTask:Lim/doit/pro/asynctask/DoitAsyncTask;

    iget-object v2, v0, Lim/doit/pro/asynctask/DoitAsyncTask$AsyncTaskResult;->mData:[Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lim/doit/pro/asynctask/DoitAsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    goto :goto_0

    .line 438
    :pswitch_2
    iget-object v1, v0, Lim/doit/pro/asynctask/DoitAsyncTask$AsyncTaskResult;->mTask:Lim/doit/pro/asynctask/DoitAsyncTask;

    invoke-virtual {v1}, Lim/doit/pro/asynctask/DoitAsyncTask;->onCancelled()V

    goto :goto_0

    .line 429
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
