.class Lim/doit/pro/ai/AIAssistant$6;
.super Ljava/lang/Object;
.source "AIAssistant.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/ai/AIAssistant;->showPreview(Landroid/app/Activity;Lim/doit/pro/activity/TaskDetailFragment;Lim/doit/pro/model/Task;Lim/doit/pro/ai/AIAssistant$PlanResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$a:Landroid/app/Activity;

.field final synthetic val$d:Landroid/app/Dialog;

.field final synthetic val$f:Lim/doit/pro/activity/TaskDetailFragment;

.field final synthetic val$task:Lim/doit/pro/model/Task;


# direct methods
.method constructor <init>(Landroid/app/Dialog;Landroid/app/Activity;Lim/doit/pro/activity/TaskDetailFragment;Lim/doit/pro/model/Task;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 467
    iput-object p1, p0, Lim/doit/pro/ai/AIAssistant$6;->val$d:Landroid/app/Dialog;

    iput-object p2, p0, Lim/doit/pro/ai/AIAssistant$6;->val$a:Landroid/app/Activity;

    iput-object p3, p0, Lim/doit/pro/ai/AIAssistant$6;->val$f:Lim/doit/pro/activity/TaskDetailFragment;

    iput-object p4, p0, Lim/doit/pro/ai/AIAssistant$6;->val$task:Lim/doit/pro/model/Task;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .line 470
    iget-object p1, p0, Lim/doit/pro/ai/AIAssistant$6;->val$d:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 471
    iget-object p1, p0, Lim/doit/pro/ai/AIAssistant$6;->val$a:Landroid/app/Activity;

    iget-object v0, p0, Lim/doit/pro/ai/AIAssistant$6;->val$f:Lim/doit/pro/activity/TaskDetailFragment;

    iget-object v1, p0, Lim/doit/pro/ai/AIAssistant$6;->val$task:Lim/doit/pro/model/Task;

    const/4 v2, 0x1

    invoke-static {p1, v0, v1, v2}, Lim/doit/pro/ai/AIAssistant;->access$100(Landroid/app/Activity;Lim/doit/pro/activity/TaskDetailFragment;Lim/doit/pro/model/Task;Z)V

    .line 472
    return-void
.end method
