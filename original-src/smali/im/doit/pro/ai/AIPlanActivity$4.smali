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

    .line 101
    iput-object p1, p0, Lim/doit/pro/ai/AIPlanActivity$4;->this$0:Lim/doit/pro/ai/AIPlanActivity;

    iput-object p2, p0, Lim/doit/pro/ai/AIPlanActivity$4;->val$self:Ljava/lang/ref/WeakReference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDelta(Ljava/lang/String;)V
    .registers 4

    .line 104
    iget-object v0, p0, Lim/doit/pro/ai/AIPlanActivity$4;->val$self:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lim/doit/pro/ai/AIPlanActivity;

    .line 105
    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Lim/doit/pro/ai/AIPlanActivity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_11

    goto :goto_1a

    .line 106
    :cond_11
    new-instance v1, Lim/doit/pro/ai/AIPlanActivity$4$1;

    invoke-direct {v1, p0, v0, p1}, Lim/doit/pro/ai/AIPlanActivity$4$1;-><init>(Lim/doit/pro/ai/AIPlanActivity$4;Lim/doit/pro/ai/AIPlanActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lim/doit/pro/ai/AIPlanActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 109
    return-void

    .line 105
    :cond_1a
    :goto_1a
    return-void
.end method

.method public onDone(Ljava/lang/String;)V
    .registers 4

    .line 113
    iget-object v0, p0, Lim/doit/pro/ai/AIPlanActivity$4;->val$self:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lim/doit/pro/ai/AIPlanActivity;

    .line 114
    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Lim/doit/pro/ai/AIPlanActivity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_11

    goto :goto_1a

    .line 115
    :cond_11
    new-instance v1, Lim/doit/pro/ai/AIPlanActivity$4$2;

    invoke-direct {v1, p0, v0, p1}, Lim/doit/pro/ai/AIPlanActivity$4$2;-><init>(Lim/doit/pro/ai/AIPlanActivity$4;Lim/doit/pro/ai/AIPlanActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lim/doit/pro/ai/AIPlanActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 130
    return-void

    .line 114
    :cond_1a
    :goto_1a
    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .registers 4

    .line 134
    iget-object v0, p0, Lim/doit/pro/ai/AIPlanActivity$4;->val$self:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lim/doit/pro/ai/AIPlanActivity;

    .line 135
    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Lim/doit/pro/ai/AIPlanActivity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_11

    goto :goto_1a

    .line 136
    :cond_11
    new-instance v1, Lim/doit/pro/ai/AIPlanActivity$4$3;

    invoke-direct {v1, p0, v0, p1}, Lim/doit/pro/ai/AIPlanActivity$4$3;-><init>(Lim/doit/pro/ai/AIPlanActivity$4;Lim/doit/pro/ai/AIPlanActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lim/doit/pro/ai/AIPlanActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 148
    return-void

    .line 135
    :cond_1a
    :goto_1a
    return-void
.end method
