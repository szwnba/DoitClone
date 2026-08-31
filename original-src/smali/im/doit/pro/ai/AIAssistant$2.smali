.class Lim/doit/pro/ai/AIAssistant$2;
.super Ljava/lang/Object;
.source "AIAssistant.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/ai/AIAssistant;->wireDetail(Lim/doit/pro/activity/TaskDetailFragment;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$a:Landroid/app/Activity;

.field final synthetic val$f:Lim/doit/pro/activity/TaskDetailFragment;


# direct methods
.method constructor <init>(Lim/doit/pro/activity/TaskDetailFragment;Landroid/app/Activity;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 118
    iput-object p1, p0, Lim/doit/pro/ai/AIAssistant$2;->val$f:Lim/doit/pro/activity/TaskDetailFragment;

    iput-object p2, p0, Lim/doit/pro/ai/AIAssistant$2;->val$a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .line 122
    :try_start_0
    iget-object p1, p0, Lim/doit/pro/ai/AIAssistant$2;->val$f:Lim/doit/pro/activity/TaskDetailFragment;

    iget-object v0, p0, Lim/doit/pro/ai/AIAssistant$2;->val$a:Landroid/app/Activity;

    invoke-static {p1, v0}, Lim/doit/pro/ai/AIAssistant;->access$000(Lim/doit/pro/activity/TaskDetailFragment;Landroid/app/Activity;)V
    :try_end_7
    .catchall {:try_start_0 .. :try_end_7} :catchall_8

    .line 125
    goto :goto_21

    .line 123
    :catchall_8
    move-exception p1

    .line 124
    iget-object v0, p0, Lim/doit/pro/ai/AIAssistant$2;->val$a:Landroid/app/Activity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AI \u529f\u80fd\u5f02\u5e38: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lim/doit/pro/ai/AIAssistant;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 126
    :goto_21
    return-void
.end method
