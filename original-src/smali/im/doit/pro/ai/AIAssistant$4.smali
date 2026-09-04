.class Lim/doit/pro/ai/AIAssistant$4;
.super Ljava/lang/Object;
.source "AIAssistant.java"

# interfaces
.implements Lim/doit/pro/ai/AIAssistant$OnOk;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/ai/AIAssistant;->onPlanClick(Lim/doit/pro/activity/TaskDetailFragment;Landroid/app/Activity;)V
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
.method constructor <init>(Landroid/app/Activity;Lim/doit/pro/activity/TaskDetailFragment;Lim/doit/pro/model/Task;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 226
    iput-object p1, p0, Lim/doit/pro/ai/AIAssistant$4;->val$a:Landroid/app/Activity;

    iput-object p2, p0, Lim/doit/pro/ai/AIAssistant$4;->val$f:Lim/doit/pro/activity/TaskDetailFragment;

    iput-object p3, p0, Lim/doit/pro/ai/AIAssistant$4;->val$task:Lim/doit/pro/model/Task;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public ok(Ljava/lang/String;)V
    .registers 5

    .line 228
    iget-object p1, p0, Lim/doit/pro/ai/AIAssistant$4;->val$a:Landroid/app/Activity;

    iget-object v0, p0, Lim/doit/pro/ai/AIAssistant$4;->val$f:Lim/doit/pro/activity/TaskDetailFragment;

    iget-object v1, p0, Lim/doit/pro/ai/AIAssistant$4;->val$task:Lim/doit/pro/model/Task;

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lim/doit/pro/ai/AIAssistant;->access$200(Landroid/app/Activity;Lim/doit/pro/activity/TaskDetailFragment;Lim/doit/pro/model/Task;Z)V

    return-void
.end method
