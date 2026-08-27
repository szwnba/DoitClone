.class Lim/doit/pro/ai/AIAssistant$2$1;
.super Ljava/lang/Object;
.source "AIAssistant.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/ai/AIAssistant$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/ai/AIAssistant$2;

.field final synthetic val$msg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lim/doit/pro/ai/AIAssistant$2;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 227
    iput-object p1, p0, Lim/doit/pro/ai/AIAssistant$2$1;->this$0:Lim/doit/pro/ai/AIAssistant$2;

    iput-object p2, p0, Lim/doit/pro/ai/AIAssistant$2$1;->val$msg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 228
    iget-object v0, p0, Lim/doit/pro/ai/AIAssistant$2$1;->this$0:Lim/doit/pro/ai/AIAssistant$2;

    iget-object v0, v0, Lim/doit/pro/ai/AIAssistant$2;->val$cb:Lim/doit/pro/ai/AIAssistant$StreamCb;

    iget-object v1, p0, Lim/doit/pro/ai/AIAssistant$2$1;->val$msg:Ljava/lang/String;

    invoke-interface {v0, v1}, Lim/doit/pro/ai/AIAssistant$StreamCb;->onError(Ljava/lang/String;)V

    return-void
.end method
