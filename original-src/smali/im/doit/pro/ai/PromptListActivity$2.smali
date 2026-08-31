.class Lim/doit/pro/ai/PromptListActivity$2;
.super Ljava/lang/Object;
.source "PromptListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/ai/PromptListActivity;->item(ILjava/lang/String;Ljava/lang/String;ZZ)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/ai/PromptListActivity;

.field final synthetic val$body:Ljava/lang/String;

.field final synthetic val$name:Ljava/lang/String;

.field final synthetic val$pid:I


# direct methods
.method constructor <init>(Lim/doit/pro/ai/PromptListActivity;ILjava/lang/String;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 167
    iput-object p1, p0, Lim/doit/pro/ai/PromptListActivity$2;->this$0:Lim/doit/pro/ai/PromptListActivity;

    iput p2, p0, Lim/doit/pro/ai/PromptListActivity$2;->val$pid:I

    iput-object p3, p0, Lim/doit/pro/ai/PromptListActivity$2;->val$name:Ljava/lang/String;

    iput-object p4, p0, Lim/doit/pro/ai/PromptListActivity$2;->val$body:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .line 168
    iget-object p1, p0, Lim/doit/pro/ai/PromptListActivity$2;->this$0:Lim/doit/pro/ai/PromptListActivity;

    iget v0, p0, Lim/doit/pro/ai/PromptListActivity$2;->val$pid:I

    iget-object v1, p0, Lim/doit/pro/ai/PromptListActivity$2;->val$name:Ljava/lang/String;

    iget-object v2, p0, Lim/doit/pro/ai/PromptListActivity$2;->val$body:Ljava/lang/String;

    invoke-static {p1, v0, v1, v2}, Lim/doit/pro/ai/PromptListActivity;->access$000(Lim/doit/pro/ai/PromptListActivity;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
