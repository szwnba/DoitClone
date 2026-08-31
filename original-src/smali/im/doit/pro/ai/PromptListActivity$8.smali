.class Lim/doit/pro/ai/PromptListActivity$8;
.super Ljava/lang/Object;
.source "PromptListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/ai/PromptListActivity;->confirmDelete(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/ai/PromptListActivity;

.field final synthetic val$d:Landroid/app/Dialog;

.field final synthetic val$pid:I


# direct methods
.method constructor <init>(Lim/doit/pro/ai/PromptListActivity;Landroid/app/Dialog;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 243
    iput-object p1, p0, Lim/doit/pro/ai/PromptListActivity$8;->this$0:Lim/doit/pro/ai/PromptListActivity;

    iput-object p2, p0, Lim/doit/pro/ai/PromptListActivity$8;->val$d:Landroid/app/Dialog;

    iput p3, p0, Lim/doit/pro/ai/PromptListActivity$8;->val$pid:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 245
    iget-object p1, p0, Lim/doit/pro/ai/PromptListActivity$8;->val$d:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 246
    iget-object p1, p0, Lim/doit/pro/ai/PromptListActivity$8;->this$0:Lim/doit/pro/ai/PromptListActivity;

    iget v0, p0, Lim/doit/pro/ai/PromptListActivity$8;->val$pid:I

    invoke-static {p1, v0}, Lim/doit/pro/ai/AIAssistant;->deletePrompt(Landroid/content/Context;I)V

    .line 247
    iget-object p1, p0, Lim/doit/pro/ai/PromptListActivity$8;->this$0:Lim/doit/pro/ai/PromptListActivity;

    invoke-static {p1}, Lim/doit/pro/ai/PromptListActivity;->access$200(Lim/doit/pro/ai/PromptListActivity;)V

    .line 248
    iget-object p1, p0, Lim/doit/pro/ai/PromptListActivity$8;->this$0:Lim/doit/pro/ai/PromptListActivity;

    const-string v0, "\u5df2\u5220\u9664"

    invoke-static {p1, v0}, Lim/doit/pro/ai/AIAssistant;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 249
    return-void
.end method
