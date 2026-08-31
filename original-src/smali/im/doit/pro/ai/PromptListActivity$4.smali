.class Lim/doit/pro/ai/PromptListActivity$4;
.super Ljava/lang/Object;
.source "PromptListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/ai/PromptListActivity;->item(ILjava/lang/String;Ljava/lang/String;ZZ)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/ai/PromptListActivity;

.field final synthetic val$name:Ljava/lang/String;

.field final synthetic val$pid:I


# direct methods
.method constructor <init>(Lim/doit/pro/ai/PromptListActivity;ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 185
    iput-object p1, p0, Lim/doit/pro/ai/PromptListActivity$4;->this$0:Lim/doit/pro/ai/PromptListActivity;

    iput p2, p0, Lim/doit/pro/ai/PromptListActivity$4;->val$pid:I

    iput-object p3, p0, Lim/doit/pro/ai/PromptListActivity$4;->val$name:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 187
    iget-object p1, p0, Lim/doit/pro/ai/PromptListActivity$4;->this$0:Lim/doit/pro/ai/PromptListActivity;

    iget v0, p0, Lim/doit/pro/ai/PromptListActivity$4;->val$pid:I

    invoke-static {p1, v0}, Lim/doit/pro/ai/AIAssistant;->setCurrentPromptId(Landroid/content/Context;I)V

    .line 188
    iget-object p1, p0, Lim/doit/pro/ai/PromptListActivity$4;->this$0:Lim/doit/pro/ai/PromptListActivity;

    invoke-static {p1}, Lim/doit/pro/ai/PromptListActivity;->access$200(Lim/doit/pro/ai/PromptListActivity;)V

    .line 189
    iget-object p1, p0, Lim/doit/pro/ai/PromptListActivity$4;->this$0:Lim/doit/pro/ai/PromptListActivity;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5df2\u5207\u6362\u4e3a\u300c"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/doit/pro/ai/PromptListActivity$4;->val$name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u300d"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lim/doit/pro/ai/AIAssistant;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 190
    return-void
.end method
