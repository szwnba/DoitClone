.class Lim/doit/pro/ai/AIPlanActivity$4;
.super Ljava/lang/Object;
.source "AIPlanActivity.java"

# interfaces
.implements Lim/doit/pro/ai/AIAssistant$StreamCb;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/ai/AIPlanActivity;->startGen()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/ai/AIPlanActivity;

.field final synthetic val$self:Ljava/lang/ref/WeakReference;


# direct methods
.method constructor <init>(Lim/doit/pro/ai/AIPlanActivity;Ljava/lang/ref/WeakReference;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 103
    iput-object p1, p0, Lim/doit/pro/ai/AIPlanActivity$4;->this$0:Lim/doit/pro/ai/AIPlanActivity;

    iput-object p2, p0, Lim/doit/pro/ai/AIPlanActivity$4;->val$self:Ljava/lang/ref/WeakReference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDelta(Ljava/lang/String;)V
    .registers 4

    .line 106
    iget-object v0, p0, Lim/doit/pro/ai/AIPlanActivity$4;->val$self:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lim/doit/pro/ai/AIPlanActivity;

    .line 107
    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Lim/doit/pro/ai/AIPlanActivity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_11

    goto :goto_1a

    .line 108
    :cond_11
    new-instance v1, Lim/doit/pro/ai/AIPlanActivity$4$1;

    invoke-direct {v1, p0, v0, p1}, Lim/doit/pro/ai/AIPlanActivity$4$1;-><init>(Lim/doit/pro/ai/AIPlanActivity$4;Lim/doit/pro/ai/AIPlanActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lim/doit/pro/ai/AIPlanActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 111
    return-void

    .line 107
    :cond_1a
    :goto_1a
    return-void
.end method

.method public onDone(Ljava/lang/String;)V
    .registers 4

    .line 115
    iget-object v0, p0, Lim/doit/pro/ai/AIPlanActivity$4;->val$self:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lim/doit/pro/ai/AIPlanActivity;

    .line 116
    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Lim/doit/pro/ai/AIPlanActivity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_11

    goto :goto_1a

    .line 117
    :cond_11
    new-instance v1, Lim/doit/pro/ai/AIPlanActivity$4$2;

    invoke-direct {v1, p0, v0, p1}, Lim/doit/pro/ai/AIPlanActivity$4$2;-><init>(Lim/doit/pro/ai/AIPlanActivity$4;Lim/doit/pro/ai/AIPlanActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lim/doit/pro/ai/AIPlanActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 132
    return-void

    .line 116
    :cond_1a
    :goto_1a
    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .registers 4

    .line 136
    iget-object v0, p0, Lim/doit/pro/ai/AIPlanActivity$4;->val$self:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lim/doit/pro/ai/AIPlanActivity;

    .line 137
    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Lim/doit/pro/ai/AIPlanActivity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_11

    goto :goto_1a

    .line 138
    :cond_11
    new-instance v1, Lim/doit/pro/ai/AIPlanActivity$4$3;

    invoke-direct {v1, p0, v0, p1}, Lim/doit/pro/ai/AIPlanActivity$4$3;-><init>(Lim/doit/pro/ai/AIPlanActivity$4;Lim/doit/pro/ai/AIPlanActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lim/doit/pro/ai/AIPlanActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 150
    return-void

    .line 137
    :cond_1a
    :goto_1a
    return-void
.end method
