.class Lim/doit/pro/github/GitHubSync$3;
.super Ljava/lang/Object;
.source "GitHubSync.java"

# interfaces
.implements Lim/doit/pro/github/GitHubSync$Worker;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/github/GitHubSync;->doRestore(Landroid/app/Activity;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 140
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

    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/repos/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lim/doit/pro/github/GitHubSync;->repo(Landroid/content/Context;)Ljava/lang/String;

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

    .line 144
    const-string v1, "GET"

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2}, Lim/doit/pro/github/GitHubSync;->access$300(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lim/doit/pro/github/GitHubSync$HttpResp;

    move-result-object v0

    .line 145
    iget v1, v0, Lim/doit/pro/github/GitHubSync$HttpResp;->code:I

    const/16 v2, 0x194

    if-eq v1, v2, :cond_80

    .line 146
    iget v1, v0, Lim/doit/pro/github/GitHubSync$HttpResp;->code:I

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_55

    .line 147
    new-instance v1, Lorg/json/JSONObject;

    iget-object v0, v0, Lim/doit/pro/github/GitHubSync$HttpResp;->body:Ljava/lang/String;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "content"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 148
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    invoke-static {v0}, Lim/doit/pro/github/GitHubSync;->access$500([B)[B

    move-result-object v0

    .line 149
    invoke-static {p1, v0}, Lim/doit/pro/github/GitHubSync;->access$600(Landroid/content/Context;[B)V

    .line 150
    const-string v0, "\u4e0b\u8f7d"

    invoke-static {p1, v0}, Lim/doit/pro/github/GitHubSync;->setLastSync(Landroid/content/Context;Ljava/lang/String;)V

    .line 151
    return-void

    .line 146
    :cond_55
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

    .line 145
    :cond_80
    new-instance p1, Ljava/io/IOException;

    const-string v0, "GitHub \u4e0a\u8fd8\u6ca1\u6709\u5907\u4efd\u6587\u4ef6"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
