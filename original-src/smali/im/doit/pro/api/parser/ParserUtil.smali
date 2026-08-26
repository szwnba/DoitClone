.class public Lim/doit/pro/api/parser/ParserUtil;
.super Ljava/lang/Object;
.source "ParserUtil.java"


# static fields
.field private static mySelf:Lim/doit/pro/api/parser/ParserUtil;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lim/doit/pro/api/parser/ParserUtil;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lim/doit/pro/api/parser/ParserUtil;->mySelf:Lim/doit/pro/api/parser/ParserUtil;

    if-nez v0, :cond_0

    .line 16
    new-instance v0, Lim/doit/pro/api/parser/ParserUtil;

    invoke-direct {v0}, Lim/doit/pro/api/parser/ParserUtil;-><init>()V

    .line 18
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lim/doit/pro/api/parser/ParserUtil;->mySelf:Lim/doit/pro/api/parser/ParserUtil;

    goto :goto_0
.end method


# virtual methods
.method protected getBoolean(Lcom/google/gson/JsonObject;Ljava/lang/String;)Z
    .locals 1
    .param p1, "node"    # Lcom/google/gson/JsonObject;
    .param p2, "fieldName"    # Ljava/lang/String;

    .prologue
    .line 40
    invoke-virtual {p1, p2}, Lcom/google/gson/JsonObject;->getAsJsonPrimitive(Ljava/lang/String;)Lcom/google/gson/JsonPrimitive;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonPrimitive;->getAsBoolean()Z

    move-result v0

    return v0
.end method

.method protected getDateLong(Lcom/google/gson/JsonObject;Ljava/lang/String;)J
    .locals 2
    .param p1, "node"    # Lcom/google/gson/JsonObject;
    .param p2, "fieldName"    # Ljava/lang/String;

    .prologue
    .line 48
    invoke-virtual {p1, p2}, Lcom/google/gson/JsonObject;->getAsJsonPrimitive(Ljava/lang/String;)Lcom/google/gson/JsonPrimitive;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonPrimitive;->getAsLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Lim/doit/pro/utils/DateUtils;->changeTimeForDownload(J)J

    move-result-wide v0

    return-wide v0
.end method

.method protected getInt(Lcom/google/gson/JsonObject;Ljava/lang/String;)I
    .locals 1
    .param p1, "node"    # Lcom/google/gson/JsonObject;
    .param p2, "fieldName"    # Ljava/lang/String;

    .prologue
    .line 44
    invoke-virtual {p1, p2}, Lcom/google/gson/JsonObject;->getAsJsonPrimitive(Ljava/lang/String;)Lcom/google/gson/JsonPrimitive;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonPrimitive;->getAsInt()I

    move-result v0

    return v0
.end method

.method public getLong(Lcom/google/gson/JsonObject;Ljava/lang/String;)J
    .locals 2
    .param p1, "node"    # Lcom/google/gson/JsonObject;
    .param p2, "fieldName"    # Ljava/lang/String;

    .prologue
    .line 22
    invoke-virtual {p1, p2}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 23
    const-wide/16 v0, 0x0

    .line 25
    :goto_0
    return-wide v0

    :cond_0
    invoke-virtual {p1, p2}, Lcom/google/gson/JsonObject;->getAsJsonPrimitive(Ljava/lang/String;)Lcom/google/gson/JsonPrimitive;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonPrimitive;->getAsLong()J

    move-result-wide v0

    goto :goto_0
.end method

.method public getNodeAsString(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "node"    # Lcom/google/gson/JsonObject;
    .param p2, "fieldName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 52
    invoke-virtual {p1, p2}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    move-object v1, v2

    .line 63
    :cond_0
    :goto_0
    return-object v1

    .line 55
    :cond_1
    invoke-virtual {p1, p2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v1, v2

    .line 56
    goto :goto_0

    .line 58
    :cond_2
    invoke-virtual {p1, p2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    .line 59
    .local v0, "jsonNode":Lcom/google/gson/JsonElement;
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v1

    .line 60
    .local v1, "str":Ljava/lang/String;
    invoke-static {v1}, Lim/doit/pro/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v1, v2

    .line 61
    goto :goto_0
.end method

.method public getString(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "node"    # Lcom/google/gson/JsonObject;
    .param p2, "fieldName"    # Ljava/lang/String;

    .prologue
    .line 33
    invoke-virtual {p1, p2}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 34
    const/4 v0, 0x0

    .line 36
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1, p2}, Lcom/google/gson/JsonObject;->getAsJsonPrimitive(Ljava/lang/String;)Lcom/google/gson/JsonPrimitive;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonPrimitive;->getAsString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected getUsn(Lcom/google/gson/JsonObject;)J
    .locals 2
    .param p1, "node"    # Lcom/google/gson/JsonObject;

    .prologue
    .line 29
    const-string v0, "usn"

    invoke-virtual {p0, p1, v0}, Lim/doit/pro/api/parser/ParserUtil;->getLong(Lcom/google/gson/JsonObject;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method
