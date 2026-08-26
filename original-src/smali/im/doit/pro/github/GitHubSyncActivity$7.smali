.class Lim/doit/pro/github/GitHubSyncActivity$7;
.super Ljava/lang/Object;
.source "GitHubSyncActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/github/GitHubSyncActivity;->onUpload()V
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

    .line 136
    iput-object p1, p0, Lim/doit/pro/github/GitHubSyncActivity$7;->this$0:Lim/doit/pro/github/GitHubSyncActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 139
    iget-object v0, p0, Lim/doit/pro/github/GitHubSyncActivity$7;->this$0:Lim/doit/pro/github/GitHubSyncActivity;

    const-string v1, "\u2713 \u5907\u4efd\u5df2\u4e0a\u4f20\u5230 GitHub"

    invoke-static {v0, v1}, Lim/doit/pro/github/GitHubSync;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 140
    iget-object v0, p0, Lim/doit/pro/github/GitHubSyncActivity$7;->this$0:Lim/doit/pro/github/GitHubSyncActivity;

    invoke-virtual {v0}, Lim/doit/pro/github/GitHubSyncActivity;->onResume()V

    .line 141
    return-void
.end method
