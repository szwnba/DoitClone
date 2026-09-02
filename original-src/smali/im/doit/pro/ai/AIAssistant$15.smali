.class Lim/doit/pro/ai/AIAssistant$15;
.super Ljava/lang/Object;
.source "AIAssistant.java"

# interfaces
.implements Lim/doit/pro/activity/listener/OnLayoutClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/ai/AIAssistant;->wireSettings(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$a:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 734
    iput-object p1, p0, Lim/doit/pro/ai/AIAssistant$15;->val$a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public click(Landroid/view/View;)V
    .registers 3

    .line 737
    iget-object p1, p0, Lim/doit/pro/ai/AIAssistant$15;->val$a:Landroid/app/Activity;

    invoke-static {p1}, Lim/doit/pro/ai/AIAssistant;->key(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_14

    iget-object p1, p0, Lim/doit/pro/ai/AIAssistant$15;->val$a:Landroid/app/Activity;

    const-string v0, "\u8bf7\u5148\u586b\u5199 API Key"

    invoke-static {p1, v0}, Lim/doit/pro/ai/AIAssistant;->toast(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 738
    :cond_14
    iget-object p1, p0, Lim/doit/pro/ai/AIAssistant$15;->val$a:Landroid/app/Activity;

    const-string v0, "\u6b63\u5728\u6d4b\u8bd5\u8fde\u63a5\u2026"

    invoke-static {p1, v0}, Lim/doit/pro/ai/AIAssistant;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 739
    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lim/doit/pro/ai/AIAssistant$15$1;

    invoke-direct {v0, p0}, Lim/doit/pro/ai/AIAssistant$15$1;-><init>(Lim/doit/pro/ai/AIAssistant$15;)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 756
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 757
    return-void
.end method
