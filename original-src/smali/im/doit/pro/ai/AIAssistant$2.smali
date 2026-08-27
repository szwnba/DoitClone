.class Lim/doit/pro/ai/AIAssistant$2;
.super Ljava/lang/Object;
.source "AIAssistant.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/ai/AIAssistant;->wireDetail(Lim/doit/pro/activity/TaskDetailFragment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$f:Lim/doit/pro/activity/TaskDetailFragment;


# direct methods
.method constructor <init>(Lim/doit/pro/activity/TaskDetailFragment;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 112
    iput-object p1, p0, Lim/doit/pro/ai/AIAssistant$2;->val$f:Lim/doit/pro/activity/TaskDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 114
    iget-object p1, p0, Lim/doit/pro/ai/AIAssistant$2;->val$f:Lim/doit/pro/activity/TaskDetailFragment;

    invoke-static {p1}, Lim/doit/pro/ai/AIAssistant;->access$000(Lim/doit/pro/activity/TaskDetailFragment;)V

    return-void
.end method
