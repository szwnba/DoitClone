.class Lim/doit/pro/github/IssuePickerActivity$3;
.super Ljava/lang/Object;
.source "IssuePickerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/github/IssuePickerActivity;->loadMore()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/github/IssuePickerActivity;

.field final synthetic val$self:Lim/doit/pro/github/IssuePickerActivity;

.field final synthetic val$target:I


# direct methods
.method constructor <init>(Lim/doit/pro/github/IssuePickerActivity;Lim/doit/pro/github/IssuePickerActivity;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 159
    iput-object p1, p0, Lim/doit/pro/github/IssuePickerActivity$3;->this$0:Lim/doit/pro/github/IssuePickerActivity;

    iput-object p2, p0, Lim/doit/pro/github/IssuePickerActivity$3;->val$self:Lim/doit/pro/github/IssuePickerActivity;

    iput p3, p0, Lim/doit/pro/github/IssuePickerActivity$3;->val$target:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    .line 163
    const-string v0, ""

    const/4 v1, 0x0

    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "https://api.github.com/repos/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lim/doit/pro/github/IssuePickerActivity$3;->val$self:Lim/doit/pro/github/IssuePickerActivity;

    invoke-static {v3}, Lim/doit/pro/github/IssuePickerActivity;->issueRepo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/issues?state=all&per_page=50&page="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lim/doit/pro/github/IssuePickerActivity$3;->val$target:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_14c

    .line 165
    nop

    .line 167
    const/4 v3, 0x0

    :try_start_2a
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;
    :try_end_35
    .catchall {:try_start_2a .. :try_end_35} :catchall_145

    .line 168
    const/16 v3, 0x3a98

    :try_start_37
    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 169
    const v3, 0xea60

    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 170
    const-string v3, "GET"

    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 171
    const-string v3, "Authorization"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "token "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lim/doit/pro/github/IssuePickerActivity$3;->val$self:Lim/doit/pro/github/IssuePickerActivity;

    invoke-static {v5}, Lim/doit/pro/github/GitHubSync;->token(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    const-string v3, "Accept"

    const-string v4, "application/vnd.github+json"

    invoke-virtual {v2, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    const-string v3, "User-Agent"

    const-string v4, "DoitLocalSync/1.0"

    invoke-virtual {v2, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    .line 175
    const/16 v4, 0x190

    if-lt v3, v4, :cond_7e

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v4

    goto :goto_82

    :cond_7e
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    :goto_82
    invoke-static {v4}, Lim/doit/pro/github/IssuePickerActivity;->access$600(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v4

    .line 176
    const/16 v5, 0xc8

    if-ne v3, v5, :cond_11f

    .line 177
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, v4}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 178
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 179
    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string v6, "yyyy-MM-dd\'T\'HH:mm:ss"

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v5, v6, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 180
    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string v6, "yyyy-MM-dd"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 181
    const/4 v5, 0x0

    :goto_a9
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_10b

    .line 182
    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 183
    const-string v7, "pull_request"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_bc

    goto :goto_108

    .line 184
    :cond_bc
    new-instance v7, Lim/doit/pro/github/IssuePickerActivity$Issue;

    invoke-direct {v7}, Lim/doit/pro/github/IssuePickerActivity$Issue;-><init>()V

    .line 185
    const-string v8, "number"

    invoke-virtual {v6, v8, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v8

    iput v8, v7, Lim/doit/pro/github/IssuePickerActivity$Issue;->number:I

    .line 186
    const-string v8, "title"

    invoke-virtual {v6, v8, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lim/doit/pro/github/IssuePickerActivity$Issue;->title:Ljava/lang/String;

    .line 187
    const-string v8, "html_url"

    invoke-virtual {v6, v8, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lim/doit/pro/github/IssuePickerActivity$Issue;->url:Ljava/lang/String;

    .line 188
    const-string v8, "state"

    invoke-virtual {v6, v8, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lim/doit/pro/github/IssuePickerActivity$Issue;->state:Ljava/lang/String;
    :try_end_e1
    .catchall {:try_start_37 .. :try_end_e1} :catchall_142

    .line 190
    :try_start_e1
    const-string v8, "updated_at"

    invoke-virtual {v6, v8, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 191
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    const/16 v9, 0xa

    if-lt v8, v9, :cond_f3

    invoke-virtual {v6, v1, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    :cond_f3
    iput-object v6, v7, Lim/doit/pro/github/IssuePickerActivity$Issue;->updated:Ljava/lang/String;
    :try_end_f5
    .catchall {:try_start_e1 .. :try_end_f5} :catchall_f6

    .line 194
    goto :goto_f9

    .line 192
    :catchall_f6
    move-exception v6

    .line 193
    :try_start_f7
    iput-object v0, v7, Lim/doit/pro/github/IssuePickerActivity$Issue;->updated:Ljava/lang/String;

    .line 195
    :goto_f9
    iget v6, v7, Lim/doit/pro/github/IssuePickerActivity$Issue;->number:I

    if-lez v6, :cond_108

    iget-object v6, v7, Lim/doit/pro/github/IssuePickerActivity$Issue;->url:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_108

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    :cond_108
    :goto_108
    add-int/lit8 v5, v5, 0x1

    goto :goto_a9

    .line 197
    :cond_10b
    iget-object v0, p0, Lim/doit/pro/github/IssuePickerActivity$3;->this$0:Lim/doit/pro/github/IssuePickerActivity;

    invoke-static {v0}, Lim/doit/pro/github/IssuePickerActivity;->access$1000(Lim/doit/pro/github/IssuePickerActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v3, Lim/doit/pro/github/IssuePickerActivity$3$1;

    invoke-direct {v3, p0, v4}, Lim/doit/pro/github/IssuePickerActivity$3$1;-><init>(Lim/doit/pro/github/IssuePickerActivity$3;Ljava/util/List;)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_119
    .catchall {:try_start_f7 .. :try_end_119} :catchall_142

    .line 207
    if-eqz v2, :cond_16e

    :try_start_11b
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_11e
    .catchall {:try_start_11b .. :try_end_11e} :catchall_14c

    goto :goto_16e

    .line 176
    :cond_11f
    :try_start_11f
    new-instance v0, Ljava/lang/Exception;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "HTTP "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_142
    .catchall {:try_start_11f .. :try_end_142} :catchall_142

    .line 207
    :catchall_142
    move-exception v0

    move-object v3, v2

    goto :goto_146

    :catchall_145
    move-exception v0

    :goto_146
    if-eqz v3, :cond_14b

    :try_start_148
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 208
    :cond_14b
    throw v0
    :try_end_14c
    .catchall {:try_start_148 .. :try_end_14c} :catchall_14c

    .line 209
    :catchall_14c
    move-exception v0

    .line 210
    :try_start_14d
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_15c

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    goto :goto_160

    :cond_15c
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 211
    :goto_160
    iget-object v2, p0, Lim/doit/pro/github/IssuePickerActivity$3;->this$0:Lim/doit/pro/github/IssuePickerActivity;

    invoke-static {v2}, Lim/doit/pro/github/IssuePickerActivity;->access$1000(Lim/doit/pro/github/IssuePickerActivity;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lim/doit/pro/github/IssuePickerActivity$3$2;

    invoke-direct {v3, p0, v0}, Lim/doit/pro/github/IssuePickerActivity$3$2;-><init>(Lim/doit/pro/github/IssuePickerActivity$3;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_16e
    .catchall {:try_start_14d .. :try_end_16e} :catchall_175

    .line 220
    :cond_16e
    :goto_16e
    iget-object v0, p0, Lim/doit/pro/github/IssuePickerActivity$3;->this$0:Lim/doit/pro/github/IssuePickerActivity;

    invoke-static {v0, v1}, Lim/doit/pro/github/IssuePickerActivity;->access$202(Lim/doit/pro/github/IssuePickerActivity;Z)Z

    .line 221
    nop

    .line 222
    return-void

    .line 220
    :catchall_175
    move-exception v0

    iget-object v2, p0, Lim/doit/pro/github/IssuePickerActivity$3;->this$0:Lim/doit/pro/github/IssuePickerActivity;

    invoke-static {v2, v1}, Lim/doit/pro/github/IssuePickerActivity;->access$202(Lim/doit/pro/github/IssuePickerActivity;Z)Z

    .line 221
    goto :goto_17d

    :goto_17c
    throw v0

    :goto_17d
    goto :goto_17c
.end method
