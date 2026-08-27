.class Lim/doit/pro/ai/AIPlanActivity$6;
.super Ljava/lang/Object;
.source "AIPlanActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/ai/AIPlanActivity;->flushPending()V
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

    .line 174
    iput-object p1, p0, Lim/doit/pro/ai/AIPlanActivity$6;->this$0:Lim/doit/pro/ai/AIPlanActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 175
    iget-object v0, p0, Lim/doit/pro/ai/AIPlanActivity$6;->this$0:Lim/doit/pro/ai/AIPlanActivity;

    invoke-static {v0}, Lim/doit/pro/ai/AIPlanActivity;->access$1000(Lim/doit/pro/ai/AIPlanActivity;)Landroid/widget/ScrollView;

    move-result-object v0

    const/16 v1, 0x82

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->fullScroll(I)Z

    return-void
.end method
