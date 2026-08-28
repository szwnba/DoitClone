.class Lim/doit/pro/github/GitHubSyncActivity$9;
.super Ljava/lang/Object;
.source "GitHubSyncActivity.java"

# interfaces
.implements Lim/doit/pro/github/GitHubSyncActivity$OnOk;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/github/GitHubSyncActivity;->editToken()V
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

    .line 175
    iput-object p1, p0, Lim/doit/pro/github/GitHubSyncActivity$9;->this$0:Lim/doit/pro/github/GitHubSyncActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public ok(Ljava/lang/String;)V
    .registers 4

    .line 178
    if-nez p1, :cond_5

    const-string p1, ""

    goto :goto_9

    :cond_5
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 179
    :goto_9
    iget-object v0, p0, Lim/doit/pro/github/GitHubSyncActivity$9;->this$0:Lim/doit/pro/github/GitHubSyncActivity;

    invoke-static {v0}, Lim/doit/pro/github/GitHubSync;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "token"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 180
    iget-object v0, p0, Lim/doit/pro/github/GitHubSyncActivity$9;->this$0:Lim/doit/pro/github/GitHubSyncActivity;

    .line 181
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_27

    const-string p1, "\u5df2\u6e05\u7a7a Token"

    goto :goto_29

    :cond_27
    const-string p1, "Token \u5df2\u4fdd\u5b58"

    .line 180
    :goto_29
    invoke-static {v0, p1}, Lim/doit/pro/github/GitHubSync;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 182
    return-void
.end method
