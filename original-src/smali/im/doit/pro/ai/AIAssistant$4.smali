.class Lim/doit/pro/ai/AIAssistant$4;
.super Ljava/lang/Object;
.source "AIAssistant.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/ai/AIAssistant;->generate(Landroid/app/Activity;Lim/doit/pro/activity/TaskDetailFragment;Lim/doit/pro/model/Task;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$a:Landroid/app/Activity;

.field final synthetic val$f:Lim/doit/pro/activity/TaskDetailFragment;

.field final synthetic val$task:Lim/doit/pro/model/Task;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lim/doit/pro/model/Task;Lim/doit/pro/activity/TaskDetailFragment;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 185
    iput-object p1, p0, Lim/doit/pro/ai/AIAssistant$4;->val$a:Landroid/app/Activity;

    iput-object p2, p0, Lim/doit/pro/ai/AIAssistant$4;->val$task:Lim/doit/pro/model/Task;

    iput-object p3, p0, Lim/doit/pro/ai/AIAssistant$4;->val$f:Lim/doit/pro/activity/TaskDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 189
    :try_start_0
    iget-object v0, p0, Lim/doit/pro/ai/AIAssistant$4;->val$a:Landroid/app/Activity;

    iget-object v1, p0, Lim/doit/pro/ai/AIAssistant$4;->val$task:Lim/doit/pro/model/Task;

    invoke-static {v0, v1}, Lim/doit/pro/ai/AIAssistant;->access$200(Landroid/app/Activity;Lim/doit/pro/model/Task;)Lim/doit/pro/ai/AIAssistant$PlanResult;

    move-result-object v0

    .line 190
    invoke-static {}, Lim/doit/pro/ai/AIAssistant;->access$400()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lim/doit/pro/ai/AIAssistant$4$1;

    invoke-direct {v2, p0, v0}, Lim/doit/pro/ai/AIAssistant$4$1;-><init>(Lim/doit/pro/ai/AIAssistant$4;Lim/doit/pro/ai/AIAssistant$PlanResult;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_14} :catch_15

    .line 200
    goto :goto_35

    .line 194
    :catch_15
    move-exception v0

    .line 195
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_25

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    goto :goto_29

    :cond_25
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 196
    :goto_29
    invoke-static {}, Lim/doit/pro/ai/AIAssistant;->access$400()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lim/doit/pro/ai/AIAssistant$4$2;

    invoke-direct {v2, p0, v0}, Lim/doit/pro/ai/AIAssistant$4$2;-><init>(Lim/doit/pro/ai/AIAssistant$4;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 201
    :goto_35
    return-void
.end method
