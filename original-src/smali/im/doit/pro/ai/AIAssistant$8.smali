.class Lim/doit/pro/ai/AIAssistant$8;
.super Ljava/lang/Object;
.source "AIAssistant.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/ai/AIAssistant;->showPreviewInner(Landroid/app/Activity;Lim/doit/pro/activity/TaskDetailFragment;Lim/doit/pro/model/Task;Lim/doit/pro/ai/AIAssistant$PlanResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$a:Landroid/app/Activity;

.field final synthetic val$applied:[I

.field final synthetic val$d:Landroid/app/Dialog;

.field final synthetic val$f:Lim/doit/pro/activity/TaskDetailFragment;

.field final synthetic val$r:Lim/doit/pro/ai/AIAssistant$PlanResult;

.field final synthetic val$task:Lim/doit/pro/model/Task;


# direct methods
.method constructor <init>(Landroid/app/Dialog;Landroid/app/Activity;Lim/doit/pro/activity/TaskDetailFragment;Lim/doit/pro/model/Task;Lim/doit/pro/ai/AIAssistant$PlanResult;[I)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 535
    iput-object p1, p0, Lim/doit/pro/ai/AIAssistant$8;->val$d:Landroid/app/Dialog;

    iput-object p2, p0, Lim/doit/pro/ai/AIAssistant$8;->val$a:Landroid/app/Activity;

    iput-object p3, p0, Lim/doit/pro/ai/AIAssistant$8;->val$f:Lim/doit/pro/activity/TaskDetailFragment;

    iput-object p4, p0, Lim/doit/pro/ai/AIAssistant$8;->val$task:Lim/doit/pro/model/Task;

    iput-object p5, p0, Lim/doit/pro/ai/AIAssistant$8;->val$r:Lim/doit/pro/ai/AIAssistant$PlanResult;

    iput-object p6, p0, Lim/doit/pro/ai/AIAssistant$8;->val$applied:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    .line 538
    iget-object p1, p0, Lim/doit/pro/ai/AIAssistant$8;->val$d:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 539
    iget-object p1, p0, Lim/doit/pro/ai/AIAssistant$8;->val$a:Landroid/app/Activity;

    iget-object v0, p0, Lim/doit/pro/ai/AIAssistant$8;->val$f:Lim/doit/pro/activity/TaskDetailFragment;

    iget-object v1, p0, Lim/doit/pro/ai/AIAssistant$8;->val$task:Lim/doit/pro/model/Task;

    iget-object v2, p0, Lim/doit/pro/ai/AIAssistant$8;->val$r:Lim/doit/pro/ai/AIAssistant$PlanResult;

    iget-object v3, p0, Lim/doit/pro/ai/AIAssistant$8;->val$applied:[I

    invoke-static {p1, v0, v1, v2, v3}, Lim/doit/pro/ai/AIAssistant;->access$600(Landroid/app/Activity;Lim/doit/pro/activity/TaskDetailFragment;Lim/doit/pro/model/Task;Lim/doit/pro/ai/AIAssistant$PlanResult;[I)V

    .line 540
    return-void
.end method
