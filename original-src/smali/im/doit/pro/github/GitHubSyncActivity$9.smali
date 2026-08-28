.class Lim/doit/pro/github/GitHubSyncActivity$9;
.super Ljava/lang/Object;
.source "GitHubSyncActivity.java"

# interfaces
.implements Lim/doit/pro/github/GitHubSyncActivity$OnOk;


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

    .line 155
    iput-object p1, p0, Lim/doit/pro/github/GitHubSyncActivity$9;->this$0:Lim/doit/pro/github/GitHubSyncActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public ok(Ljava/lang/String;)V
    .registers 3

    .line 158
    iget-object p1, p0, Lim/doit/pro/github/GitHubSyncActivity$9;->this$0:Lim/doit/pro/github/GitHubSyncActivity;

    new-instance v0, Lim/doit/pro/github/GitHubSyncActivity$9$1;

    invoke-direct {v0, p0}, Lim/doit/pro/github/GitHubSyncActivity$9$1;-><init>(Lim/doit/pro/github/GitHubSyncActivity$9;)V

    invoke-static {p1, v0}, Lim/doit/pro/github/GitHubSync;->doRestore(Landroid/app/Activity;Ljava/lang/Runnable;)V

    .line 172
    return-void
.end method
