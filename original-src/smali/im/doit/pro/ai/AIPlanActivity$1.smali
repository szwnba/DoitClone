.class Lim/doit/pro/ai/AIPlanActivity$1;
.super Ljava/lang/Object;
.source "AIPlanActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/ai/AIPlanActivity;->onCreate(Landroid/os/Bundle;)V
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

    .line 65
    iput-object p1, p0, Lim/doit/pro/ai/AIPlanActivity$1;->this$0:Lim/doit/pro/ai/AIPlanActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 66
    iget-object p1, p0, Lim/doit/pro/ai/AIPlanActivity$1;->this$0:Lim/doit/pro/ai/AIPlanActivity;

    invoke-virtual {p1}, Lim/doit/pro/ai/AIPlanActivity;->finish()V

    return-void
.end method
