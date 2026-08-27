.class Lim/doit/pro/github/GitHubSync$2;
.super Ljava/lang/Object;
.source "GitHubSync.java"

# interfaces
.implements Lim/doit/pro/github/GitHubSync$Worker;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/github/GitHubSync;->doUpload(Landroid/app/Activity;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/content/Context;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 122
    invoke-static {p1}, Lim/doit/pro/github/GitHubSync;->access$000(Landroid/content/Context;)[B

    move-result-object v0

    .line 123
    invoke-static {v0}, Lim/doit/pro/github/GitHubSync;->access$100([B)[B

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    .line 124
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/repos/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lim/doit/pro/github/GitHubSync;->repo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/contents/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "doitim.db.gz"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 125
    invoke-static {p1, v1}, Lim/doit/pro/github/GitHubSync;->access$200(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 126
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 127
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Doit backup "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lim/doit/pro/github/GitHubSync;->now()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "message"

    invoke-virtual {v3, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 128
    const-string v4, "content"

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 129
    if-eqz v2, :cond_61

    const-string v0, "sha"

    invoke-virtual {v3, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 130
    :cond_61
    const-string v0, "PUT"

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v0, v1, v2}, Lim/doit/pro/github/GitHubSync;->access$300(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lim/doit/pro/github/GitHubSync$HttpResp;

    move-result-object v0

    .line 131
    iget v1, v0, Lim/doit/pro/github/GitHubSync$HttpResp;->code:I

    const/16 v2, 0xc8

    if-eq v1, v2, :cond_a3

    iget v1, v0, Lim/doit/pro/github/GitHubSync$HttpResp;->code:I

    const/16 v2, 0xc9

    if-ne v1, v2, :cond_78

    goto :goto_a3

    .line 132
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

    invoke-static {v0}, Lim/doit/pro/github/GitHubSync;->access$400(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 134
    :cond_a3
    :goto_a3
    const-string v0, "\u4e0a\u4f20"

    invoke-static {p1, v0}, Lim/doit/pro/github/GitHubSync;->setLastSync(Landroid/content/Context;Ljava/lang/String;)V

    .line 135
    return-void
.end method
