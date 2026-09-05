.class Lim/doit/pro/ai/AIAssistant$16$1;
.super Ljava/lang/Object;
.source "AIAssistant.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/ai/AIAssistant$16;->click(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/ai/AIAssistant$16;


# direct methods
.method constructor <init>(Lim/doit/pro/ai/AIAssistant$16;)V
    .registers 2

    .line 785
    iput-object p1, p0, Lim/doit/pro/ai/AIAssistant$16$1;->this$0:Lim/doit/pro/ai/AIAssistant$16;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 789
    :try_start_0
    iget-object v0, p0, Lim/doit/pro/ai/AIAssistant$16$1;->this$0:Lim/doit/pro/ai/AIAssistant$16;

    iget-object v0, v0, Lim/doit/pro/ai/AIAssistant$16;->val$a:Landroid/app/Activity;

    const-string v1, "\u4f60\u662f\u8fde\u901a\u6027\u6d4b\u8bd5"

    const-string v2, "\u53ea\u56de\u590d\u4e24\u4e2a\u5b57\uff1a\u6210\u529f"

    invoke-static {v0, v1, v2}, Lim/doit/pro/ai/AIAssistant;->access$700(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 790
    invoke-static {}, Lim/doit/pro/ai/AIAssistant;->access$400()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lim/doit/pro/ai/AIAssistant$16$1$1;

    invoke-direct {v1, p0}, Lim/doit/pro/ai/AIAssistant$16$1$1;-><init>(Lim/doit/pro/ai/AIAssistant$16$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_17} :catch_18

    .line 800
    goto :goto_38

    .line 794
    :catch_18
    move-exception v0

    .line 795
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_28

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    goto :goto_2c

    :cond_28
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 796
    :goto_2c
    invoke-static {}, Lim/doit/pro/ai/AIAssistant;->access$400()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lim/doit/pro/ai/AIAssistant$16$1$2;

    invoke-direct {v2, p0, v0}, Lim/doit/pro/ai/AIAssistant$16$1$2;-><init>(Lim/doit/pro/ai/AIAssistant$16$1;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 801
    :goto_38
    return-void
.end method
