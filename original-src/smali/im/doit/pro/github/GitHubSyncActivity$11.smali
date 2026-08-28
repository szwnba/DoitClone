.class Lim/doit/pro/github/GitHubSyncActivity$11;
.super Ljava/lang/Object;
.source "GitHubSyncActivity.java"

# interfaces
.implements Lim/doit/pro/github/GitHubSyncActivity$OnOk;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/github/GitHubSyncActivity;->editIssueRepo()V
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

    .line 192
    iput-object p1, p0, Lim/doit/pro/github/GitHubSyncActivity$11;->this$0:Lim/doit/pro/github/GitHubSyncActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public ok(Ljava/lang/String;)V
    .registers 5

    .line 195
    if-nez p1, :cond_5

    const-string p1, ""

    goto :goto_9

    :cond_5
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 196
    :goto_9
    iget-object v0, p0, Lim/doit/pro/github/GitHubSyncActivity$11;->this$0:Lim/doit/pro/github/GitHubSyncActivity;

    invoke-static {v0}, Lim/doit/pro/github/GitHubSync;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 197
    const-string v1, "issue_repo"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 198
    iget-object v0, p0, Lim/doit/pro/github/GitHubSyncActivity$11;->this$0:Lim/doit/pro/github/GitHubSyncActivity;

    .line 199
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_27

    const-string p1, "\u5df2\u6062\u590d\u9ed8\u8ba4 Issue \u4ed3\u5e93"

    goto :goto_3a

    :cond_27
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Issue \u4ed3\u5e93\u5df2\u4fdd\u5b58: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 198
    :goto_3a
    invoke-static {v0, p1}, Lim/doit/pro/github/GitHubSync;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 200
    return-void
.end method
