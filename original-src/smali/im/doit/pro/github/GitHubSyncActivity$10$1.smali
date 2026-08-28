.class Lim/doit/pro/github/GitHubSyncActivity$10$1;
.super Ljava/lang/Object;
.source "GitHubSyncActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/github/GitHubSyncActivity$10;->ok(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lim/doit/pro/github/GitHubSyncActivity$10;


# direct methods
.method constructor <init>(Lim/doit/pro/github/GitHubSyncActivity$10;)V
    .registers 2

    .line 162
    iput-object p1, p0, Lim/doit/pro/github/GitHubSyncActivity$10$1;->this$1:Lim/doit/pro/github/GitHubSyncActivity$10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    .line 165
    iget-object v0, p0, Lim/doit/pro/github/GitHubSyncActivity$10$1;->this$1:Lim/doit/pro/github/GitHubSyncActivity$10;

    iget-object v1, v0, Lim/doit/pro/github/GitHubSyncActivity$10;->this$0:Lim/doit/pro/github/GitHubSyncActivity;

    const-string v2, "dialog_ghs_confirm"

    const-string v3, "\u4e0b\u8f7d\u5b8c\u6210"

    const-string v4, "\u5907\u4efd\u5df2\u4e0b\u8f7d\u5230\u672c\u673a\u3002\u70b9\u51fb\u300c\u91cd\u542f\u300d\u540e\u5e94\u7528\u4f1a\u81ea\u52a8\u5b8c\u6210\u6570\u636e\u66ff\u6362\u5e76\u91cd\u65b0\u6253\u5f00\u3002"

    const-string v5, "\u91cd\u542f"

    new-instance v6, Lim/doit/pro/github/GitHubSyncActivity$10$1$1;

    invoke-direct {v6, p0}, Lim/doit/pro/github/GitHubSyncActivity$10$1$1;-><init>(Lim/doit/pro/github/GitHubSyncActivity$10$1;)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v1 .. v9}, Lim/doit/pro/github/GitHubSyncActivity;->access$500(Lim/doit/pro/github/GitHubSyncActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lim/doit/pro/github/GitHubSyncActivity$OnOk;ZLjava/lang/String;Z)Landroid/app/Dialog;

    move-result-object v0

    .line 173
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 174
    return-void
.end method
