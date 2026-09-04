.class Lim/doit/pro/ai/AIAssistant$4;
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

    .line 144
    iput-object p1, p0, Lim/doit/pro/ai/AIAssistant$4;->val$a:Landroid/app/Activity;

    iput-object p2, p0, Lim/doit/pro/ai/AIAssistant$4;->val$f:Lim/doit/pro/activity/TaskDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .line 148
    :try_start_0
    iget-object p1, p0, Lim/doit/pro/ai/AIAssistant$4;->val$a:Landroid/app/Activity;

    iget-object v0, p0, Lim/doit/pro/ai/AIAssistant$4;->val$f:Lim/doit/pro/activity/TaskDetailFragment;

    invoke-static {v0}, Lim/doit/pro/ai/AIAssistant;->access$100(Ljava/lang/Object;)Lim/doit/pro/model/Task;

    move-result-object v0

    const-string v1, "com.moonshot.kimichat"

    const-string v2, "Kimi"

    invoke-static {p1, v0, v1, v2}, Lim/doit/pro/ai/AIAssistant;->openExternalAI(Landroid/app/Activity;Lim/doit/pro/model/Task;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_0 .. :try_end_f} :catchall_10

    goto :goto_11

    .line 149
    :catchall_10
    move-exception p1

    :goto_11
    nop

    .line 150
    return-void
.end method
