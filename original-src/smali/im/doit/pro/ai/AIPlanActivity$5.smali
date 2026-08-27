.class Lim/doit/pro/ai/AIPlanActivity$5;
.super Ljava/lang/Object;
.source "AIPlanActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/ai/AIPlanActivity;->appendDelta(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/ai/AIPlanActivity;


# direct methods
.method constructor <init>(Lim/doit/pro/ai/AIPlanActivity;)V
    .registers 2

    .line 161
    iput-object p1, p0, Lim/doit/pro/ai/AIPlanActivity$5;->this$0:Lim/doit/pro/ai/AIPlanActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 163
    iget-object v0, p0, Lim/doit/pro/ai/AIPlanActivity$5;->this$0:Lim/doit/pro/ai/AIPlanActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lim/doit/pro/ai/AIPlanActivity;->access$902(Lim/doit/pro/ai/AIPlanActivity;Z)Z

    .line 164
    iget-object v0, p0, Lim/doit/pro/ai/AIPlanActivity$5;->this$0:Lim/doit/pro/ai/AIPlanActivity;

    invoke-static {v0}, Lim/doit/pro/ai/AIPlanActivity;->access$300(Lim/doit/pro/ai/AIPlanActivity;)V

    .line 165
    return-void
.end method
