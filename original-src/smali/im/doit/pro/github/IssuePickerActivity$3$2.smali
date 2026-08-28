.class Lim/doit/pro/github/IssuePickerActivity$3$2;
.super Ljava/lang/Object;
.source "IssuePickerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/github/IssuePickerActivity$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lim/doit/pro/github/IssuePickerActivity$3;

.field final synthetic val$msg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lim/doit/pro/github/IssuePickerActivity$3;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 211
    iput-object p1, p0, Lim/doit/pro/github/IssuePickerActivity$3$2;->this$1:Lim/doit/pro/github/IssuePickerActivity$3;

    iput-object p2, p0, Lim/doit/pro/github/IssuePickerActivity$3$2;->val$msg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 213
    iget-object v0, p0, Lim/doit/pro/github/IssuePickerActivity$3$2;->this$1:Lim/doit/pro/github/IssuePickerActivity$3;

    iget-object v0, v0, Lim/doit/pro/github/IssuePickerActivity$3;->val$self:Lim/doit/pro/github/IssuePickerActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u52a0\u8f7d\u5931\u8d25: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lim/doit/pro/github/IssuePickerActivity$3$2;->val$msg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lim/doit/pro/github/GitHubSync;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 214
    iget-object v0, p0, Lim/doit/pro/github/IssuePickerActivity$3$2;->this$1:Lim/doit/pro/github/IssuePickerActivity$3;

    iget-object v0, v0, Lim/doit/pro/github/IssuePickerActivity$3;->this$0:Lim/doit/pro/github/IssuePickerActivity;

    invoke-static {v0}, Lim/doit/pro/github/IssuePickerActivity;->access$000(Lim/doit/pro/github/IssuePickerActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_50

    iget-object v0, p0, Lim/doit/pro/github/IssuePickerActivity$3$2;->this$1:Lim/doit/pro/github/IssuePickerActivity$3;

    iget-object v0, v0, Lim/doit/pro/github/IssuePickerActivity$3;->this$0:Lim/doit/pro/github/IssuePickerActivity;

    invoke-static {v0}, Lim/doit/pro/github/IssuePickerActivity;->access$900(Lim/doit/pro/github/IssuePickerActivity;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u52a0\u8f7d\u5931\u8d25\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lim/doit/pro/github/IssuePickerActivity$3$2;->val$msg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\u70b9\u53f3\u4e0a\u8fd4\u56de\u91cd\u8bd5"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 215
    :cond_50
    iget-object v0, p0, Lim/doit/pro/github/IssuePickerActivity$3$2;->this$1:Lim/doit/pro/github/IssuePickerActivity$3;

    iget-object v0, v0, Lim/doit/pro/github/IssuePickerActivity$3;->this$0:Lim/doit/pro/github/IssuePickerActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lim/doit/pro/github/IssuePickerActivity;->access$102(Lim/doit/pro/github/IssuePickerActivity;Z)Z

    .line 216
    iget-object v0, p0, Lim/doit/pro/github/IssuePickerActivity$3$2;->this$1:Lim/doit/pro/github/IssuePickerActivity$3;

    iget-object v0, v0, Lim/doit/pro/github/IssuePickerActivity$3;->this$0:Lim/doit/pro/github/IssuePickerActivity;

    invoke-static {v0}, Lim/doit/pro/github/IssuePickerActivity;->access$800(Lim/doit/pro/github/IssuePickerActivity;)Landroid/widget/BaseAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 217
    return-void
.end method
