.class public Lim/doit/pro/utils/JsonUtils;
.super Ljava/lang/Object;
.source "JsonUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseVersion(Lim/doit/pro/api/Response;)Ljava/lang/String;
    .locals 5
    .param p0, "response"    # Lim/doit/pro/api/Response;

    .prologue
    const/4 v2, 0x0

    .line 11
    if-eqz p0, :cond_0

    iget-object v3, p0, Lim/doit/pro/api/Response;->body:Ljava/lang/String;

    if-nez v3, :cond_1

    .line 23
    :cond_0
    :goto_0
    return-object v2

    .line 15
    :cond_1
    :try_start_0
    new-instance v3, Lcom/google/gson/JsonParser;

    invoke-direct {v3}, Lcom/google/gson/JsonParser;-><init>()V

    iget-object v4, p0, Lim/doit/pro/api/Response;->body:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    .line 16
    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v1

    .line 17
    .local v1, "jsonObject":Lcom/google/gson/JsonObject;
    const-string v3, "version"

    invoke-virtual {v1, v3}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 18
    const-string v3, "version"

    invoke-virtual {v1, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 20
    .end local v1    # "jsonObject":Lcom/google/gson/JsonObject;
    :catch_0
    move-exception v0

    .line 21
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
