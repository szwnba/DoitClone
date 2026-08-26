.class Lim/doit/pro/github/GitHubSyncActivity$6;
.super Ljava/lang/Object;
.source "GitHubSyncActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/github/GitHubSyncActivity;->onRestore()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/github/GitHubSyncActivity;


# direct methods
.method constructor <init>(Lim/doit/pro/github/GitHubSyncActivity;)V
    .registers 2

    .line 104
    iput-object p1, p0, Lim/doit/pro/github/GitHubSyncActivity$6;->this$0:Lim/doit/pro/github/GitHubSyncActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 107
    iget-object p1, p0, Lim/doit/pro/github/GitHubSyncActivity$6;->this$0:Lim/doit/pro/github/GitHubSyncActivity;

    new-instance p2, Lim/doit/pro/github/GitHubSyncActivity$6$1;

    invoke-direct {p2, p0}, Lim/doit/pro/github/GitHubSyncActivity$6$1;-><init>(Lim/doit/pro/github/GitHubSyncActivity$6;)V

    invoke-static {p1, p2}, Lim/doit/pro/github/GitHubSync;->doRestore(Landroid/app/Activity;Ljava/lang/Runnable;)V

    .line 122
    return-void
.end method
