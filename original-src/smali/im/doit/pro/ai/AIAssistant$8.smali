.class Lim/doit/pro/ai/AIAssistant$8;
.super Ljava/lang/Object;
.source "AIAssistant.java"

# interfaces
.implements Lim/doit/pro/activity/listener/OnLayoutClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/ai/AIAssistant;->row(Landroid/app/Activity;Ljava/lang/String;Lim/doit/pro/ai/AIAssistant$OnOk;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$a:Landroid/app/Activity;

.field final synthetic val$current:Ljava/lang/String;

.field final synthetic val$id:Ljava/lang/String;

.field final synthetic val$onOk:Lim/doit/pro/ai/AIAssistant$OnOk;

.field final synthetic val$password:Z


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/app/Activity;Lim/doit/pro/ai/AIAssistant$OnOk;Ljava/lang/String;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 419
    iput-object p1, p0, Lim/doit/pro/ai/AIAssistant$8;->val$id:Ljava/lang/String;

    iput-object p2, p0, Lim/doit/pro/ai/AIAssistant$8;->val$a:Landroid/app/Activity;

    iput-object p3, p0, Lim/doit/pro/ai/AIAssistant$8;->val$onOk:Lim/doit/pro/ai/AIAssistant$OnOk;

    iput-object p4, p0, Lim/doit/pro/ai/AIAssistant$8;->val$current:Ljava/lang/String;

    iput-boolean p5, p0, Lim/doit/pro/ai/AIAssistant$8;->val$password:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public click(Landroid/view/View;)V
    .registers 13

    .line 422
    iget-object p1, p0, Lim/doit/pro/ai/AIAssistant$8;->val$id:Ljava/lang/String;

    const-string v0, "ai_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string v1, "ai_endpoint"

    if-eqz p1, :cond_10

    const-string p1, "\u7c98\u8d34 API Key\uff08\u4ec5\u5b58\u672c\u673a\uff09"

    move-object v5, p1

    goto :goto_1f

    .line 423
    :cond_10
    iget-object p1, p0, Lim/doit/pro/ai/AIAssistant$8;->val$id:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1c

    const-string p1, "OpenAI \u517c\u5bb9\u7aef\u70b9\uff08\u7559\u7a7a\u6062\u590d\u9ed8\u8ba4\uff09"

    move-object v5, p1

    goto :goto_1f

    .line 424
    :cond_1c
    const-string p1, "\u6a21\u578b\u540d\uff08\u7559\u7a7a\u6062\u590d\u9ed8\u8ba4\uff09"

    move-object v5, p1

    .line 425
    :goto_1f
    iget-object v2, p0, Lim/doit/pro/ai/AIAssistant$8;->val$a:Landroid/app/Activity;

    const-string v3, "dialog_ghs_input"

    iget-object p1, p0, Lim/doit/pro/ai/AIAssistant$8;->val$id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2f

    const-string p1, "API Key"

    :goto_2d
    move-object v4, p1

    goto :goto_3d

    :cond_2f
    iget-object p1, p0, Lim/doit/pro/ai/AIAssistant$8;->val$id:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3a

    const-string p1, "API \u7aef\u70b9"

    goto :goto_2d

    :cond_3a
    const-string p1, "\u6a21\u578b"

    goto :goto_2d

    :goto_3d
    const-string v6, "\u4fdd\u5b58"

    iget-object v7, p0, Lim/doit/pro/ai/AIAssistant$8;->val$onOk:Lim/doit/pro/ai/AIAssistant$OnOk;

    const/4 v8, 0x1

    iget-object v9, p0, Lim/doit/pro/ai/AIAssistant$8;->val$current:Ljava/lang/String;

    iget-boolean v10, p0, Lim/doit/pro/ai/AIAssistant$8;->val$password:Z

    invoke-static/range {v2 .. v10}, Lim/doit/pro/ai/AIAssistant;->appDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lim/doit/pro/ai/AIAssistant$OnOk;ZLjava/lang/String;Z)Landroid/app/Dialog;

    move-result-object p1

    .line 426
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 427
    return-void
.end method
