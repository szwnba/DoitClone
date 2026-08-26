.class Lim/doit/pro/github/GitHubSync$7$1;
.super Ljava/lang/Object;
.source "GitHubSync.java"

# interfaces
.implements Lim/doit/pro/github/GitHubSync$Worker;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/github/GitHubSync$7;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/github/GitHubSync$7;


# direct methods
.method constructor <init>(Lim/doit/pro/github/GitHubSync$7;)V
    .registers 2

    .line 207
    iput-object p1, p0, Lim/doit/pro/github/GitHubSync$7$1;->this$0:Lim/doit/pro/github/GitHubSync$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/content/Context;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 210
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/repos/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lim/doit/pro/github/GitHubSync;->access$900(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/contents/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "doitim.db.gz"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 211
    const-string v1, "GET"

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2}, Lim/doit/pro/github/GitHubSync;->access$1200(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lim/doit/pro/github/GitHubSync$HttpResp;

    move-result-object v0

    .line 212
    iget v1, v0, Lim/doit/pro/github/GitHubSync$HttpResp;->code:I

    const/16 v2, 0x194

    if-eq v1, v2, :cond_a3

    .line 213
    iget v1, v0, Lim/doit/pro/github/GitHubSync$HttpResp;->code:I

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_78

    .line 214
    new-instance v1, Lorg/json/JSONObject;

    iget-object v0, v0, Lim/doit/pro/github/GitHubSync$HttpResp;->body:Ljava/lang/String;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "content"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 215
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    invoke-static {v0}, Lim/doit/pro/github/GitHubSync;->access$1400([B)[B

    move-result-object v0

    .line 216
    invoke-static {p1, v0}, Lim/doit/pro/github/GitHubSync;->access$1500(Landroid/content/Context;[B)V

    .line 217
    invoke-static {p1}, Lim/doit/pro/github/GitHubSync;->access$500(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u4e0b\u8f7d "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lim/doit/pro/github/GitHubSync;->access$1100()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "last_sync"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 218
    return-void

    .line 213
    :cond_78
    new-instance p1, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GitHub \u8fd4\u56de "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lim/doit/pro/github/GitHubSync$HttpResp;->code:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, v0, Lim/doit/pro/github/GitHubSync$HttpResp;->body:Ljava/lang/String;

    invoke-static {v0}, Lim/doit/pro/github/GitHubSync;->access$1300(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 212
    :cond_a3
    new-instance p1, Ljava/io/IOException;

    const-string v0, "GitHub \u4e0a\u8fd8\u6ca1\u6709\u5907\u4efd\u6587\u4ef6"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
