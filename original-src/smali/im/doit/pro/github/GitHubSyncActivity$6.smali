.class Lim/doit/pro/github/GitHubSyncActivity$6;
.super Ljava/lang/Object;
.source "GitHubSyncActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/github/GitHubSyncActivity;->appDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lim/doit/pro/github/GitHubSyncActivity$OnOk;ZLjava/lang/String;Z)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/github/GitHubSyncActivity;

.field final synthetic val$d:Landroid/app/Dialog;

.field final synthetic val$input:Landroid/widget/EditText;

.field final synthetic val$onOk:Lim/doit/pro/github/GitHubSyncActivity$OnOk;


# direct methods
.method constructor <init>(Lim/doit/pro/github/GitHubSyncActivity;Landroid/app/Dialog;Lim/doit/pro/github/GitHubSyncActivity$OnOk;Landroid/widget/EditText;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 112
    iput-object p1, p0, Lim/doit/pro/github/GitHubSyncActivity$6;->this$0:Lim/doit/pro/github/GitHubSyncActivity;

    iput-object p2, p0, Lim/doit/pro/github/GitHubSyncActivity$6;->val$d:Landroid/app/Dialog;

    iput-object p3, p0, Lim/doit/pro/github/GitHubSyncActivity$6;->val$onOk:Lim/doit/pro/github/GitHubSyncActivity$OnOk;

    iput-object p4, p0, Lim/doit/pro/github/GitHubSyncActivity$6;->val$input:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 115
    iget-object p1, p0, Lim/doit/pro/github/GitHubSyncActivity$6;->val$d:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 116
    iget-object p1, p0, Lim/doit/pro/github/GitHubSyncActivity$6;->val$onOk:Lim/doit/pro/github/GitHubSyncActivity$OnOk;

    iget-object v0, p0, Lim/doit/pro/github/GitHubSyncActivity$6;->val$input:Landroid/widget/EditText;

    if-nez v0, :cond_d

    const/4 v0, 0x0

    goto :goto_15

    :cond_d
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_15
    invoke-interface {p1, v0}, Lim/doit/pro/github/GitHubSyncActivity$OnOk;->ok(Ljava/lang/String;)V

    .line 117
    return-void
.end method
