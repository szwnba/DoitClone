.class Lim/doit/pro/ai/AIAssistant$2;
.super Ljava/lang/Object;
.source "AIAssistant.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/ai/AIAssistant;->chatStream(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lim/doit/pro/ai/AIAssistant$StreamCb;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$c:Landroid/content/Context;

.field final synthetic val$cb:Lim/doit/pro/ai/AIAssistant$StreamCb;

.field final synthetic val$system:Ljava/lang/String;

.field final synthetic val$user:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lim/doit/pro/ai/AIAssistant$StreamCb;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 165
    iput-object p1, p0, Lim/doit/pro/ai/AIAssistant$2;->val$c:Landroid/content/Context;

    iput-object p2, p0, Lim/doit/pro/ai/AIAssistant$2;->val$system:Ljava/lang/String;

    iput-object p3, p0, Lim/doit/pro/ai/AIAssistant$2;->val$user:Ljava/lang/String;

    iput-object p4, p0, Lim/doit/pro/ai/AIAssistant$2;->val$cb:Lim/doit/pro/ai/AIAssistant$StreamCb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    .line 168
    const-string v0, "UTF-8"

    const-string v1, ""

    const-string v2, "role"

    const-string v3, "content"

    .line 170
    const/4 v4, 0x0

    :try_start_9
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 171
    const-string v6, "model"

    iget-object v7, p0, Lim/doit/pro/ai/AIAssistant$2;->val$c:Landroid/content/Context;

    invoke-static {v7}, Lim/doit/pro/ai/AIAssistant;->model(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 172
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    .line 173
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    const-string v8, "system"

    invoke-virtual {v7, v2, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v7

    iget-object v8, p0, Lim/doit/pro/ai/AIAssistant$2;->val$system:Ljava/lang/String;

    invoke-virtual {v7, v3, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 174
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    const-string v8, "user"

    invoke-virtual {v7, v2, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    iget-object v7, p0, Lim/doit/pro/ai/AIAssistant$2;->val$user:Ljava/lang/String;

    invoke-virtual {v2, v3, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v6, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 175
    const-string v2, "messages"

    invoke-virtual {v5, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 176
    const-string v2, "temperature"

    const-wide v6, 0x3fd999999999999aL    # 0.4

    invoke-virtual {v5, v2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 177
    const-string v2, "stream"

    const/4 v6, 0x1

    invoke-virtual {v5, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 179
    new-instance v2, Ljava/net/URL;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lim/doit/pro/ai/AIAssistant$2;->val$c:Landroid/content/Context;

    invoke-static {v8}, Lim/doit/pro/ai/AIAssistant;->endpoint(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "/+$"

    invoke-virtual {v8, v9, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/chat/completions"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v7}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;
    :try_end_85
    .catchall {:try_start_9 .. :try_end_85} :catchall_1b5

    .line 180
    const/16 v4, 0x3a98

    :try_start_87
    invoke-virtual {v2, v4}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 181
    const v4, 0x2bf20

    invoke-virtual {v2, v4}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 182
    const-string v4, "POST"

    invoke-virtual {v2, v4}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 183
    const-string v4, "Authorization"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Bearer "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lim/doit/pro/ai/AIAssistant$2;->val$c:Landroid/content/Context;

    invoke-static {v8}, Lim/doit/pro/ai/AIAssistant;->key(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v4, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    const-string v4, "Content-Type"

    const-string v7, "application/json"

    invoke-virtual {v2, v4, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    const-string v4, "Accept"

    const-string v7, "text/event-stream"

    invoke-virtual {v2, v4, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    const-string v4, "User-Agent"

    const-string v7, "DoitLocalAI/1.0"

    invoke-virtual {v2, v4, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    invoke-virtual {v2, v6}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 188
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4
    :try_end_cf
    .catchall {:try_start_87 .. :try_end_cf} :catchall_1b2

    .line 189
    :try_start_cf
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/OutputStream;->write([B)V
    :try_end_da
    .catchall {:try_start_cf .. :try_end_da} :catchall_1ad

    :try_start_da
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    .line 191
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    .line 192
    const/16 v5, 0xc8

    if-eq v4, v5, :cond_11d

    .line 193
    const/16 v0, 0x190

    if-lt v4, v0, :cond_ee

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    goto :goto_f2

    :cond_ee
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    :goto_f2
    invoke-static {v0}, Lim/doit/pro/ai/AIAssistant;->access$000(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    .line 194
    new-instance v1, Ljava/lang/Exception;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "HTTP "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Lim/doit/pro/ai/AIAssistant;->access$100(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 197
    :cond_11d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 198
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-direct {v6, v7, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 200
    :cond_130
    :goto_130
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_190

    .line 201
    const-string v6, "data:"

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_13f

    goto :goto_130

    .line 202
    :cond_13f
    const/4 v6, 0x5

    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 203
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_14f

    goto :goto_130

    .line 204
    :cond_14f
    const-string v6, "[DONE]"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_155
    .catchall {:try_start_da .. :try_end_155} :catchall_1b2

    if-eqz v6, :cond_158

    goto :goto_190

    .line 206
    :cond_158
    :try_start_158
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 207
    const-string v0, "choices"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 208
    if-eqz v0, :cond_130

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-nez v6, :cond_16c

    goto :goto_130

    .line 209
    :cond_16c
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v6, "delta"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 210
    if-nez v0, :cond_17a

    goto :goto_130

    .line 211
    :cond_17a
    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 212
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_18e

    .line 213
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    iget-object v6, p0, Lim/doit/pro/ai/AIAssistant$2;->val$cb:Lim/doit/pro/ai/AIAssistant$StreamCb;

    invoke-interface {v6, v0}, Lim/doit/pro/ai/AIAssistant$StreamCb;->onDelta(Ljava/lang/String;)V
    :try_end_18c
    .catchall {:try_start_158 .. :try_end_18c} :catchall_18d

    goto :goto_18e

    .line 216
    :catchall_18d
    move-exception v0

    :cond_18e
    :goto_18e
    nop

    .line 217
    goto :goto_130

    .line 218
    :cond_190
    :goto_190
    :try_start_190
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-eqz v0, :cond_1a5

    .line 219
    iget-object v0, p0, Lim/doit/pro/ai/AIAssistant$2;->val$cb:Lim/doit/pro/ai/AIAssistant$StreamCb;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lim/doit/pro/ai/AIAssistant$StreamCb;->onDone(Ljava/lang/String;)V
    :try_end_19f
    .catchall {:try_start_190 .. :try_end_19f} :catchall_1b2

    .line 233
    if-eqz v2, :cond_1f0

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_1f0

    .line 218
    :cond_1a5
    :try_start_1a5
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "\u6a21\u578b\u672a\u8fd4\u56de\u5185\u5bb9"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 189
    :catchall_1ad
    move-exception v0

    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    throw v0
    :try_end_1b2
    .catchall {:try_start_1a5 .. :try_end_1b2} :catchall_1b2

    .line 220
    :catchall_1b2
    move-exception v0

    move-object v4, v2

    goto :goto_1b6

    :catchall_1b5
    move-exception v0

    .line 221
    :goto_1b6
    :try_start_1b6
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1c5

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    goto :goto_1c9

    :cond_1c5
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0
    :try_end_1c9
    .catchall {:try_start_1b6 .. :try_end_1c9} :catchall_1f1

    .line 224
    :goto_1c9
    :try_start_1c9
    iget-object v1, p0, Lim/doit/pro/ai/AIAssistant$2;->val$c:Landroid/content/Context;

    iget-object v2, p0, Lim/doit/pro/ai/AIAssistant$2;->val$system:Ljava/lang/String;

    iget-object v3, p0, Lim/doit/pro/ai/AIAssistant$2;->val$user:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lim/doit/pro/ai/AIAssistant;->chat(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 225
    iget-object v2, p0, Lim/doit/pro/ai/AIAssistant$2;->val$cb:Lim/doit/pro/ai/AIAssistant$StreamCb;

    invoke-interface {v2, v1}, Lim/doit/pro/ai/AIAssistant$StreamCb;->onDelta(Ljava/lang/String;)V

    .line 226
    iget-object v2, p0, Lim/doit/pro/ai/AIAssistant$2;->val$cb:Lim/doit/pro/ai/AIAssistant$StreamCb;

    invoke-interface {v2, v1}, Lim/doit/pro/ai/AIAssistant$StreamCb;->onDone(Ljava/lang/String;)V
    :try_end_1dd
    .catchall {:try_start_1c9 .. :try_end_1dd} :catchall_1de

    .line 231
    goto :goto_1eb

    .line 227
    :catchall_1de
    move-exception v1

    .line 228
    :try_start_1df
    invoke-static {}, Lim/doit/pro/ai/AIAssistant;->access$200()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lim/doit/pro/ai/AIAssistant$2$1;

    invoke-direct {v2, p0, v0}, Lim/doit/pro/ai/AIAssistant$2$1;-><init>(Lim/doit/pro/ai/AIAssistant$2;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1eb
    .catchall {:try_start_1df .. :try_end_1eb} :catchall_1f1

    .line 233
    :goto_1eb
    if-eqz v4, :cond_1f0

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 235
    :cond_1f0
    :goto_1f0
    return-void

    .line 233
    :catchall_1f1
    move-exception v0

    if-eqz v4, :cond_1f7

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 234
    :cond_1f7
    goto :goto_1f9

    :goto_1f8
    throw v0

    :goto_1f9
    goto :goto_1f8
.end method
