.class Lim/doit/pro/ai/AIAssistant$3;
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
.method constructor <init>(Landroid/app/Activity;Lim/doit/pro/activity/TaskDetailFragment;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 132
    iput-object p1, p0, Lim/doit/pro/ai/AIAssistant$3;->val$a:Landroid/app/Activity;

    iput-object p2, p0, Lim/doit/pro/ai/AIAssistant$3;->val$f:Lim/doit/pro/activity/TaskDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 136
    :try_start_0
    iget-object p1, p0, Lim/doit/pro/ai/AIAssistant$3;->val$a:Landroid/app/Activity;

    iget-object v0, p0, Lim/doit/pro/ai/AIAssistant$3;->val$f:Lim/doit/pro/activity/TaskDetailFragment;

    invoke-static {v0}, Lim/doit/pro/ai/AIAssistant;->access$100(Ljava/lang/Object;)Lim/doit/pro/model/Task;

    move-result-object v0

    invoke-static {p1, v0}, Lim/doit/pro/ai/AIAssistant;->openDeepSeek(Landroid/app/Activity;Lim/doit/pro/model/Task;)V
    :try_end_b
    .catchall {:try_start_0 .. :try_end_b} :catchall_c

    goto :goto_d

    .line 137
    :catchall_c
    move-exception p1

    :goto_d
    nop

    .line 138
    return-void
.end method
