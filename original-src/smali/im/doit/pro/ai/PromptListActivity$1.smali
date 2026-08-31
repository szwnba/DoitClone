.class Lim/doit/pro/ai/PromptListActivity$1;
.super Ljava/lang/Object;
.source "PromptListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/ai/PromptListActivity;->render()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/ai/PromptListActivity;


# direct methods
.method constructor <init>(Lim/doit/pro/ai/PromptListActivity;)V
    .registers 2

    .line 71
    iput-object p1, p0, Lim/doit/pro/ai/PromptListActivity$1;->this$0:Lim/doit/pro/ai/PromptListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 72
    iget-object p1, p0, Lim/doit/pro/ai/PromptListActivity$1;->this$0:Lim/doit/pro/ai/PromptListActivity;

    const/4 v0, -0x1

    const-string v1, ""

    invoke-static {p1, v0, v1, v1}, Lim/doit/pro/ai/PromptListActivity;->access$000(Lim/doit/pro/ai/PromptListActivity;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
