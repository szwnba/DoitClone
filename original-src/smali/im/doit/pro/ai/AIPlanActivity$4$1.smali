.class Lim/doit/pro/ai/AIPlanActivity$4$1;
.super Ljava/lang/Object;
.source "AIPlanActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/ai/AIPlanActivity$4;->onDelta(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lim/doit/pro/ai/AIPlanActivity$4;

.field final synthetic val$a:Lim/doit/pro/ai/AIPlanActivity;

.field final synthetic val$piece:Ljava/lang/String;


# direct methods
.method constructor <init>(Lim/doit/pro/ai/AIPlanActivity$4;Lim/doit/pro/ai/AIPlanActivity;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 108
    iput-object p1, p0, Lim/doit/pro/ai/AIPlanActivity$4$1;->this$1:Lim/doit/pro/ai/AIPlanActivity$4;

    iput-object p2, p0, Lim/doit/pro/ai/AIPlanActivity$4$1;->val$a:Lim/doit/pro/ai/AIPlanActivity;

    iput-object p3, p0, Lim/doit/pro/ai/AIPlanActivity$4$1;->val$piece:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 109
    iget-object v0, p0, Lim/doit/pro/ai/AIPlanActivity$4$1;->val$a:Lim/doit/pro/ai/AIPlanActivity;

    iget-object v1, p0, Lim/doit/pro/ai/AIPlanActivity$4$1;->val$piece:Ljava/lang/String;

    invoke-static {v0, v1}, Lim/doit/pro/ai/AIPlanActivity;->access$200(Lim/doit/pro/ai/AIPlanActivity;Ljava/lang/String;)V

    return-void
.end method
