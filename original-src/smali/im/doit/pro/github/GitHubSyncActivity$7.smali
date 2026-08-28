.class Lim/doit/pro/github/GitHubSyncActivity$7;
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


# direct methods
.method constructor <init>(Lim/doit/pro/github/GitHubSyncActivity;Landroid/app/Dialog;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 118
    iput-object p1, p0, Lim/doit/pro/github/GitHubSyncActivity$7;->this$0:Lim/doit/pro/github/GitHubSyncActivity;

    iput-object p2, p0, Lim/doit/pro/github/GitHubSyncActivity$7;->val$d:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 120
    iget-object p1, p0, Lim/doit/pro/github/GitHubSyncActivity$7;->val$d:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
