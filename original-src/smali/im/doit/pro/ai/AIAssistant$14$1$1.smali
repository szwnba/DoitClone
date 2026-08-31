.class Lim/doit/pro/ai/AIAssistant$14$1$1;
.super Ljava/lang/Object;
.source "AIAssistant.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/ai/AIAssistant$14$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lim/doit/pro/ai/AIAssistant$14$1;


# direct methods
.method constructor <init>(Lim/doit/pro/ai/AIAssistant$14$1;)V
    .registers 2

    .line 638
    iput-object p1, p0, Lim/doit/pro/ai/AIAssistant$14$1$1;->this$1:Lim/doit/pro/ai/AIAssistant$14$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 640
    iget-object v0, p0, Lim/doit/pro/ai/AIAssistant$14$1$1;->this$1:Lim/doit/pro/ai/AIAssistant$14$1;

    iget-object v0, v0, Lim/doit/pro/ai/AIAssistant$14$1;->this$0:Lim/doit/pro/ai/AIAssistant$14;

    iget-object v0, v0, Lim/doit/pro/ai/AIAssistant$14;->val$a:Landroid/app/Activity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u2713 \u8fde\u63a5\u6210\u529f\uff0c\u6a21\u578b: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lim/doit/pro/ai/AIAssistant$14$1$1;->this$1:Lim/doit/pro/ai/AIAssistant$14$1;

    iget-object v2, v2, Lim/doit/pro/ai/AIAssistant$14$1;->this$0:Lim/doit/pro/ai/AIAssistant$14;

    iget-object v2, v2, Lim/doit/pro/ai/AIAssistant$14;->val$a:Landroid/app/Activity;

    invoke-static {v2}, Lim/doit/pro/ai/AIAssistant;->model(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lim/doit/pro/ai/AIAssistant;->toast(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
