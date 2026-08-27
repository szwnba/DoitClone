.class Lim/doit/pro/ai/AIAssistant$4$1;
.super Ljava/lang/Object;
.source "AIAssistant.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/ai/AIAssistant$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/ai/AIAssistant$4;

.field final synthetic val$r:Lim/doit/pro/ai/AIAssistant$PlanResult;


# direct methods
.method constructor <init>(Lim/doit/pro/ai/AIAssistant$4;Lim/doit/pro/ai/AIAssistant$PlanResult;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 182
    iput-object p1, p0, Lim/doit/pro/ai/AIAssistant$4$1;->this$0:Lim/doit/pro/ai/AIAssistant$4;

    iput-object p2, p0, Lim/doit/pro/ai/AIAssistant$4$1;->val$r:Lim/doit/pro/ai/AIAssistant$PlanResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 184
    iget-object v0, p0, Lim/doit/pro/ai/AIAssistant$4$1;->this$0:Lim/doit/pro/ai/AIAssistant$4;

    iget-object v0, v0, Lim/doit/pro/ai/AIAssistant$4;->val$a:Landroid/app/Activity;

    iget-object v1, p0, Lim/doit/pro/ai/AIAssistant$4$1;->this$0:Lim/doit/pro/ai/AIAssistant$4;

    iget-object v1, v1, Lim/doit/pro/ai/AIAssistant$4;->val$f:Lim/doit/pro/activity/TaskDetailFragment;

    iget-object v2, p0, Lim/doit/pro/ai/AIAssistant$4$1;->this$0:Lim/doit/pro/ai/AIAssistant$4;

    iget-object v2, v2, Lim/doit/pro/ai/AIAssistant$4;->val$task:Lim/doit/pro/model/Task;

    iget-object v3, p0, Lim/doit/pro/ai/AIAssistant$4$1;->val$r:Lim/doit/pro/ai/AIAssistant$PlanResult;

    invoke-static {v0, v1, v2, v3}, Lim/doit/pro/ai/AIAssistant;->access$300(Landroid/app/Activity;Lim/doit/pro/activity/TaskDetailFragment;Lim/doit/pro/model/Task;Lim/doit/pro/ai/AIAssistant$PlanResult;)V

    return-void
.end method
