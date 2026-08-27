.class Lim/doit/pro/ai/AIPlanActivity$4$2;
.super Ljava/lang/Object;
.source "AIPlanActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/ai/AIPlanActivity$4;->onDone(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lim/doit/pro/ai/AIPlanActivity$4;

.field final synthetic val$a:Lim/doit/pro/ai/AIPlanActivity;

.field final synthetic val$full:Ljava/lang/String;


# direct methods
.method constructor <init>(Lim/doit/pro/ai/AIPlanActivity$4;Lim/doit/pro/ai/AIPlanActivity;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 117
    iput-object p1, p0, Lim/doit/pro/ai/AIPlanActivity$4$2;->this$1:Lim/doit/pro/ai/AIPlanActivity$4;

    iput-object p2, p0, Lim/doit/pro/ai/AIPlanActivity$4$2;->val$a:Lim/doit/pro/ai/AIPlanActivity;

    iput-object p3, p0, Lim/doit/pro/ai/AIPlanActivity$4$2;->val$full:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 119
    iget-object v0, p0, Lim/doit/pro/ai/AIPlanActivity$4$2;->val$a:Lim/doit/pro/ai/AIPlanActivity;

    invoke-static {v0}, Lim/doit/pro/ai/AIPlanActivity;->access$300(Lim/doit/pro/ai/AIPlanActivity;)V

    .line 120
    iget-object v0, p0, Lim/doit/pro/ai/AIPlanActivity$4$2;->val$a:Lim/doit/pro/ai/AIPlanActivity;

    iget-object v1, p0, Lim/doit/pro/ai/AIPlanActivity$4$2;->val$full:Ljava/lang/String;

    invoke-static {v0, v1}, Lim/doit/pro/ai/AIPlanActivity;->access$402(Lim/doit/pro/ai/AIPlanActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 121
    iget-object v0, p0, Lim/doit/pro/ai/AIPlanActivity$4$2;->val$full:Ljava/lang/String;

    invoke-static {v0}, Lim/doit/pro/ai/AIAssistant;->parseSteps(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 122
    iget-object v1, p0, Lim/doit/pro/ai/AIPlanActivity$4$2;->val$a:Lim/doit/pro/ai/AIPlanActivity;

    invoke-static {v1}, Lim/doit/pro/ai/AIPlanActivity;->access$500(Lim/doit/pro/ai/AIPlanActivity;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lim/doit/pro/ai/AIPlanActivity$4$2;->val$a:Lim/doit/pro/ai/AIPlanActivity;

    invoke-static {v2}, Lim/doit/pro/ai/AIPlanActivity;->access$500(Lim/doit/pro/ai/AIPlanActivity;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->length()I

    move-result v2

    if-lez v2, :cond_2b

    const-string v2, "\n\n"

    goto :goto_2d

    :cond_2b
    const-string v2, ""

    :goto_2d
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 123
    iget-object v1, p0, Lim/doit/pro/ai/AIPlanActivity$4$2;->val$a:Lim/doit/pro/ai/AIPlanActivity;

    invoke-static {v1}, Lim/doit/pro/ai/AIPlanActivity;->access$500(Lim/doit/pro/ai/AIPlanActivity;)Landroid/widget/TextView;

    move-result-object v1

    const-string v2, "\u2500\u2500 \u751f\u6210\u5b8c\u6bd5"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 124
    iget-object v1, p0, Lim/doit/pro/ai/AIPlanActivity$4$2;->val$a:Lim/doit/pro/ai/AIPlanActivity;

    invoke-static {v1}, Lim/doit/pro/ai/AIPlanActivity;->access$500(Lim/doit/pro/ai/AIPlanActivity;)Landroid/widget/TextView;

    move-result-object v1

    if-lez v0, :cond_5d

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\uff0c\u53ef\u5c06 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " \u6761\u6b65\u9aa4\u5e94\u7528\u4e3a\u5b50\u4efb\u52a1 \u2500\u2500"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_5f

    :cond_5d
    const-string v0, " \u2500\u2500"

    :goto_5f
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 125
    iget-object v0, p0, Lim/doit/pro/ai/AIPlanActivity$4$2;->val$a:Lim/doit/pro/ai/AIPlanActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lim/doit/pro/ai/AIPlanActivity;->access$602(Lim/doit/pro/ai/AIPlanActivity;Z)Z

    .line 126
    iget-object v0, p0, Lim/doit/pro/ai/AIPlanActivity$4$2;->val$a:Lim/doit/pro/ai/AIPlanActivity;

    invoke-static {v0}, Lim/doit/pro/ai/AIPlanActivity;->access$700(Lim/doit/pro/ai/AIPlanActivity;)Lim/doit/pro/ui/component/DButton;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/DButton;->setEnabled(Z)V

    .line 127
    iget-object v0, p0, Lim/doit/pro/ai/AIPlanActivity$4$2;->val$a:Lim/doit/pro/ai/AIPlanActivity;

    invoke-static {v0}, Lim/doit/pro/ai/AIPlanActivity;->access$700(Lim/doit/pro/ai/AIPlanActivity;)Lim/doit/pro/ui/component/DButton;

    move-result-object v0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Lim/doit/pro/ui/component/DButton;->setAlpha(F)V

    .line 128
    iget-object v0, p0, Lim/doit/pro/ai/AIPlanActivity$4$2;->val$a:Lim/doit/pro/ai/AIPlanActivity;

    invoke-static {v0}, Lim/doit/pro/ai/AIPlanActivity;->access$800(Lim/doit/pro/ai/AIPlanActivity;)Lim/doit/pro/ui/component/DButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/DButton;->setEnabled(Z)V

    .line 129
    iget-object v0, p0, Lim/doit/pro/ai/AIPlanActivity$4$2;->val$a:Lim/doit/pro/ai/AIPlanActivity;

    invoke-static {v0}, Lim/doit/pro/ai/AIPlanActivity;->access$800(Lim/doit/pro/ai/AIPlanActivity;)Lim/doit/pro/ui/component/DButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Lim/doit/pro/ui/component/DButton;->setAlpha(F)V

    .line 130
    return-void
.end method
