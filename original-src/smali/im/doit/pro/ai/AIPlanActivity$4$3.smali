.class Lim/doit/pro/ai/AIPlanActivity$4$3;
.super Ljava/lang/Object;
.source "AIPlanActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/ai/AIPlanActivity$4;->onError(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lim/doit/pro/ai/AIPlanActivity$4;

.field final synthetic val$a:Lim/doit/pro/ai/AIPlanActivity;

.field final synthetic val$message:Ljava/lang/String;


# direct methods
.method constructor <init>(Lim/doit/pro/ai/AIPlanActivity$4;Lim/doit/pro/ai/AIPlanActivity;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 138
    iput-object p1, p0, Lim/doit/pro/ai/AIPlanActivity$4$3;->this$1:Lim/doit/pro/ai/AIPlanActivity$4;

    iput-object p2, p0, Lim/doit/pro/ai/AIPlanActivity$4$3;->val$a:Lim/doit/pro/ai/AIPlanActivity;

    iput-object p3, p0, Lim/doit/pro/ai/AIPlanActivity$4$3;->val$message:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 140
    iget-object v0, p0, Lim/doit/pro/ai/AIPlanActivity$4$3;->val$a:Lim/doit/pro/ai/AIPlanActivity;

    invoke-static {v0}, Lim/doit/pro/ai/AIPlanActivity;->access$300(Lim/doit/pro/ai/AIPlanActivity;)V

    .line 141
    iget-object v0, p0, Lim/doit/pro/ai/AIPlanActivity$4$3;->val$a:Lim/doit/pro/ai/AIPlanActivity;

    invoke-static {v0}, Lim/doit/pro/ai/AIPlanActivity;->access$500(Lim/doit/pro/ai/AIPlanActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lim/doit/pro/ai/AIPlanActivity$4$3;->val$a:Lim/doit/pro/ai/AIPlanActivity;

    invoke-static {v1}, Lim/doit/pro/ai/AIPlanActivity;->access$500(Lim/doit/pro/ai/AIPlanActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->length()I

    move-result v1

    if-lez v1, :cond_1a

    const-string v1, "\n\n"

    goto :goto_1c

    :cond_1a
    const-string v1, ""

    :goto_1c
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 142
    iget-object v0, p0, Lim/doit/pro/ai/AIPlanActivity$4$3;->val$a:Lim/doit/pro/ai/AIPlanActivity;

    invoke-static {v0}, Lim/doit/pro/ai/AIPlanActivity;->access$500(Lim/doit/pro/ai/AIPlanActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "\u2717 \u751f\u6210\u5931\u8d25\uff1a"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 143
    iget-object v0, p0, Lim/doit/pro/ai/AIPlanActivity$4$3;->val$a:Lim/doit/pro/ai/AIPlanActivity;

    invoke-static {v0}, Lim/doit/pro/ai/AIPlanActivity;->access$500(Lim/doit/pro/ai/AIPlanActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lim/doit/pro/ai/AIPlanActivity$4$3;->val$message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 144
    iget-object v0, p0, Lim/doit/pro/ai/AIPlanActivity$4$3;->val$a:Lim/doit/pro/ai/AIPlanActivity;

    invoke-static {v0}, Lim/doit/pro/ai/AIPlanActivity;->access$500(Lim/doit/pro/ai/AIPlanActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "\n\u53ef\u70b9\u300c\u91cd\u65b0\u751f\u6210\u300d\u91cd\u8bd5\uff0c\u6216\u68c0\u67e5 \u8bbe\u7f6e \u2192 AI \u52a9\u7406\u3002"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 145
    iget-object v0, p0, Lim/doit/pro/ai/AIPlanActivity$4$3;->val$a:Lim/doit/pro/ai/AIPlanActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lim/doit/pro/ai/AIPlanActivity;->access$602(Lim/doit/pro/ai/AIPlanActivity;Z)Z

    .line 146
    iget-object v0, p0, Lim/doit/pro/ai/AIPlanActivity$4$3;->val$a:Lim/doit/pro/ai/AIPlanActivity;

    invoke-static {v0}, Lim/doit/pro/ai/AIPlanActivity;->access$800(Lim/doit/pro/ai/AIPlanActivity;)Lim/doit/pro/ui/component/DButton;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/DButton;->setEnabled(Z)V

    .line 147
    iget-object v0, p0, Lim/doit/pro/ai/AIPlanActivity$4$3;->val$a:Lim/doit/pro/ai/AIPlanActivity;

    invoke-static {v0}, Lim/doit/pro/ai/AIPlanActivity;->access$800(Lim/doit/pro/ai/AIPlanActivity;)Lim/doit/pro/ui/component/DButton;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/DButton;->setAlpha(F)V

    .line 148
    return-void
.end method
