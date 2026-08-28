.class Lim/doit/pro/github/IssuePickerActivity$3$1;
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

.field final synthetic val$got:Ljava/util/List;


# direct methods
.method constructor <init>(Lim/doit/pro/github/IssuePickerActivity$3;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 197
    iput-object p1, p0, Lim/doit/pro/github/IssuePickerActivity$3$1;->this$1:Lim/doit/pro/github/IssuePickerActivity$3;

    iput-object p2, p0, Lim/doit/pro/github/IssuePickerActivity$3$1;->val$got:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 199
    iget-object v0, p0, Lim/doit/pro/github/IssuePickerActivity$3$1;->this$1:Lim/doit/pro/github/IssuePickerActivity$3;

    iget-object v0, v0, Lim/doit/pro/github/IssuePickerActivity$3;->this$0:Lim/doit/pro/github/IssuePickerActivity;

    invoke-static {v0}, Lim/doit/pro/github/IssuePickerActivity;->access$000(Lim/doit/pro/github/IssuePickerActivity;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lim/doit/pro/github/IssuePickerActivity$3$1;->val$got:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 200
    iget-object v0, p0, Lim/doit/pro/github/IssuePickerActivity$3$1;->val$got:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x28

    if-ge v0, v1, :cond_1f

    iget-object v0, p0, Lim/doit/pro/github/IssuePickerActivity$3$1;->this$1:Lim/doit/pro/github/IssuePickerActivity$3;

    iget-object v0, v0, Lim/doit/pro/github/IssuePickerActivity$3;->this$0:Lim/doit/pro/github/IssuePickerActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lim/doit/pro/github/IssuePickerActivity;->access$102(Lim/doit/pro/github/IssuePickerActivity;Z)Z

    .line 201
    :cond_1f
    iget-object v0, p0, Lim/doit/pro/github/IssuePickerActivity$3$1;->this$1:Lim/doit/pro/github/IssuePickerActivity$3;

    iget-object v0, v0, Lim/doit/pro/github/IssuePickerActivity$3;->this$0:Lim/doit/pro/github/IssuePickerActivity;

    invoke-static {v0}, Lim/doit/pro/github/IssuePickerActivity;->access$708(Lim/doit/pro/github/IssuePickerActivity;)I

    .line 202
    iget-object v0, p0, Lim/doit/pro/github/IssuePickerActivity$3$1;->this$1:Lim/doit/pro/github/IssuePickerActivity$3;

    iget-object v0, v0, Lim/doit/pro/github/IssuePickerActivity$3;->this$0:Lim/doit/pro/github/IssuePickerActivity;

    invoke-static {v0}, Lim/doit/pro/github/IssuePickerActivity;->access$800(Lim/doit/pro/github/IssuePickerActivity;)Landroid/widget/BaseAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 203
    iget-object v0, p0, Lim/doit/pro/github/IssuePickerActivity$3$1;->this$1:Lim/doit/pro/github/IssuePickerActivity$3;

    iget-object v0, v0, Lim/doit/pro/github/IssuePickerActivity$3;->this$0:Lim/doit/pro/github/IssuePickerActivity;

    invoke-static {v0}, Lim/doit/pro/github/IssuePickerActivity;->access$900(Lim/doit/pro/github/IssuePickerActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lim/doit/pro/github/IssuePickerActivity$3$1;->this$1:Lim/doit/pro/github/IssuePickerActivity$3;

    iget-object v1, v1, Lim/doit/pro/github/IssuePickerActivity$3;->this$0:Lim/doit/pro/github/IssuePickerActivity;

    invoke-static {v1}, Lim/doit/pro/github/IssuePickerActivity;->access$000(Lim/doit/pro/github/IssuePickerActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_4a

    const-string v1, "\u8be5\u4ed3\u5e93\u6ca1\u6709 Issue"

    goto :goto_4c

    :cond_4a
    const-string v1, "\u52a0\u8f7d\u4e2d\u2026"

    :goto_4c
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 204
    return-void
.end method
