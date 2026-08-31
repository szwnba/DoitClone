.class Lim/doit/pro/ai/PromptListActivity$6;
.super Ljava/lang/Object;
.source "PromptListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/ai/PromptListActivity;->openEdit(ILjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/ai/PromptListActivity;

.field final synthetic val$bodyEt:Landroid/widget/EditText;

.field final synthetic val$d:Landroid/app/Dialog;

.field final synthetic val$nameEt:Landroid/widget/EditText;

.field final synthetic val$pid:I


# direct methods
.method constructor <init>(Lim/doit/pro/ai/PromptListActivity;Landroid/app/Dialog;Landroid/widget/EditText;Landroid/widget/EditText;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 212
    iput-object p1, p0, Lim/doit/pro/ai/PromptListActivity$6;->this$0:Lim/doit/pro/ai/PromptListActivity;

    iput-object p2, p0, Lim/doit/pro/ai/PromptListActivity$6;->val$d:Landroid/app/Dialog;

    iput-object p3, p0, Lim/doit/pro/ai/PromptListActivity$6;->val$nameEt:Landroid/widget/EditText;

    iput-object p4, p0, Lim/doit/pro/ai/PromptListActivity$6;->val$bodyEt:Landroid/widget/EditText;

    iput p5, p0, Lim/doit/pro/ai/PromptListActivity$6;->val$pid:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .line 214
    iget-object p1, p0, Lim/doit/pro/ai/PromptListActivity$6;->val$d:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 215
    iget-object p1, p0, Lim/doit/pro/ai/PromptListActivity$6;->val$nameEt:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 216
    iget-object v0, p0, Lim/doit/pro/ai/PromptListActivity$6;->val$bodyEt:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 217
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_64

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2e

    goto :goto_64

    .line 218
    :cond_2e
    iget v1, p0, Lim/doit/pro/ai/PromptListActivity$6;->val$pid:I

    if-nez v1, :cond_52

    .line 220
    iget-object v1, p0, Lim/doit/pro/ai/PromptListActivity$6;->this$0:Lim/doit/pro/ai/PromptListActivity;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, "\uff08\u526f\u672c\uff09"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v2, -0x1

    invoke-static {v1, v2, p1, v0}, Lim/doit/pro/ai/AIAssistant;->savePrompt(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 221
    iget-object v0, p0, Lim/doit/pro/ai/PromptListActivity$6;->this$0:Lim/doit/pro/ai/PromptListActivity;

    invoke-static {v0, p1}, Lim/doit/pro/ai/AIAssistant;->setCurrentPromptId(Landroid/content/Context;I)V

    .line 222
    goto :goto_57

    .line 223
    :cond_52
    iget-object v2, p0, Lim/doit/pro/ai/PromptListActivity$6;->this$0:Lim/doit/pro/ai/PromptListActivity;

    invoke-static {v2, v1, p1, v0}, Lim/doit/pro/ai/AIAssistant;->savePrompt(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)I

    .line 225
    :goto_57
    iget-object p1, p0, Lim/doit/pro/ai/PromptListActivity$6;->this$0:Lim/doit/pro/ai/PromptListActivity;

    invoke-static {p1}, Lim/doit/pro/ai/PromptListActivity;->access$200(Lim/doit/pro/ai/PromptListActivity;)V

    .line 226
    iget-object p1, p0, Lim/doit/pro/ai/PromptListActivity$6;->this$0:Lim/doit/pro/ai/PromptListActivity;

    const-string v0, "\u5df2\u4fdd\u5b58"

    invoke-static {p1, v0}, Lim/doit/pro/ai/AIAssistant;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 227
    return-void

    .line 217
    :cond_64
    :goto_64
    iget-object p1, p0, Lim/doit/pro/ai/PromptListActivity$6;->this$0:Lim/doit/pro/ai/PromptListActivity;

    const-string v0, "\u540d\u79f0\u548c\u5185\u5bb9\u90fd\u8981\u586b"

    invoke-static {p1, v0}, Lim/doit/pro/ai/AIAssistant;->toast(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
