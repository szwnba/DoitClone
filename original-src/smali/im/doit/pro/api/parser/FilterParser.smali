.class public Lim/doit/pro/api/parser/FilterParser;
.super Lim/doit/pro/api/parser/BaseParser;
.source "FilterParser.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lim/doit/pro/api/parser/BaseParser",
        "<",
        "Lim/doit/pro/model/Filter;",
        ">;"
    }
.end annotation


# static fields
.field private static filterParser:Lim/doit/pro/api/parser/FilterParser;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lim/doit/pro/api/parser/BaseParser;-><init>()V

    return-void
.end method

.method public static getInstance()Lim/doit/pro/api/parser/FilterParser;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lim/doit/pro/api/parser/FilterParser;->filterParser:Lim/doit/pro/api/parser/FilterParser;

    if-nez v0, :cond_0

    .line 15
    new-instance v0, Lim/doit/pro/api/parser/FilterParser;

    invoke-direct {v0}, Lim/doit/pro/api/parser/FilterParser;-><init>()V

    sput-object v0, Lim/doit/pro/api/parser/FilterParser;->filterParser:Lim/doit/pro/api/parser/FilterParser;

    .line 17
    :cond_0
    sget-object v0, Lim/doit/pro/api/parser/FilterParser;->filterParser:Lim/doit/pro/api/parser/FilterParser;

    return-object v0
.end method


# virtual methods
.method protected bridge synthetic parseItem(Lcom/google/gson/JsonObject;)Lim/doit/pro/model/BaseEntity;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lim/doit/pro/api/parser/FilterParser;->parseItem(Lcom/google/gson/JsonObject;)Lim/doit/pro/model/Filter;

    move-result-object v0

    return-object v0
.end method

.method protected parseItem(Lcom/google/gson/JsonObject;)Lim/doit/pro/model/Filter;
    .locals 10
    .param p1, "node"    # Lcom/google/gson/JsonObject;

    .prologue
    .line 22
    invoke-super {p0, p1}, Lim/doit/pro/api/parser/BaseParser;->parseItem(Lcom/google/gson/JsonObject;)Lim/doit/pro/model/BaseEntity;

    move-result-object v2

    check-cast v2, Lim/doit/pro/model/Filter;

    .line 23
    .local v2, "filter":Lim/doit/pro/model/Filter;
    invoke-static {}, Lim/doit/pro/api/parser/ParserUtil;->getInstance()Lim/doit/pro/api/parser/ParserUtil;

    move-result-object v8

    const-string v9, "order_by"

    invoke-virtual {v8, p1, v9}, Lim/doit/pro/api/parser/ParserUtil;->getNodeAsString(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 24
    .local v3, "orderBy":Ljava/lang/String;
    invoke-static {v3}, Lim/doit/pro/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 25
    invoke-virtual {v2, v3}, Lim/doit/pro/model/Filter;->setJsonOrderBy(Ljava/lang/String;)V

    .line 27
    :cond_0
    invoke-static {}, Lim/doit/pro/api/parser/ParserUtil;->getInstance()Lim/doit/pro/api/parser/ParserUtil;

    move-result-object v8

    const-string v9, "assign_to"

    invoke-virtual {v8, p1, v9}, Lim/doit/pro/api/parser/ParserUtil;->getNodeAsString(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 28
    .local v0, "assignTo":Ljava/lang/String;
    invoke-static {v0}, Lim/doit/pro/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 29
    invoke-virtual {v2, v0}, Lim/doit/pro/model/Filter;->setJsonAssignTo(Ljava/lang/String;)V

    .line 31
    :cond_1
    invoke-static {}, Lim/doit/pro/api/parser/ParserUtil;->getInstance()Lim/doit/pro/api/parser/ParserUtil;

    move-result-object v8

    const-string v9, "senders"

    invoke-virtual {v8, p1, v9}, Lim/doit/pro/api/parser/ParserUtil;->getNodeAsString(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 32
    .local v6, "senders":Ljava/lang/String;
    invoke-static {v6}, Lim/doit/pro/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 33
    invoke-virtual {v2, v6}, Lim/doit/pro/model/Filter;->setJsonSenders(Ljava/lang/String;)V

    .line 35
    :cond_2
    invoke-static {}, Lim/doit/pro/api/parser/ParserUtil;->getInstance()Lim/doit/pro/api/parser/ParserUtil;

    move-result-object v8

    const-string v9, "priority"

    invoke-virtual {v8, p1, v9}, Lim/doit/pro/api/parser/ParserUtil;->getNodeAsString(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 36
    .local v4, "priorities":Ljava/lang/String;
    invoke-static {v4}, Lim/doit/pro/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 37
    invoke-virtual {v2, v4}, Lim/doit/pro/model/Filter;->setJsonPriorityes(Ljava/lang/String;)V

    .line 39
    :cond_3
    invoke-static {}, Lim/doit/pro/api/parser/ParserUtil;->getInstance()Lim/doit/pro/api/parser/ParserUtil;

    move-result-object v8

    const-string v9, "contexts"

    invoke-virtual {v8, p1, v9}, Lim/doit/pro/api/parser/ParserUtil;->getNodeAsString(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 40
    .local v1, "contexts":Ljava/lang/String;
    invoke-static {v1}, Lim/doit/pro/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 41
    invoke-virtual {v2, v1}, Lim/doit/pro/model/Filter;->setJsonContexts(Ljava/lang/String;)V

    .line 43
    :cond_4
    invoke-static {}, Lim/doit/pro/api/parser/ParserUtil;->getInstance()Lim/doit/pro/api/parser/ParserUtil;

    move-result-object v8

    const-string v9, "projects"

    invoke-virtual {v8, p1, v9}, Lim/doit/pro/api/parser/ParserUtil;->getNodeAsString(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 44
    .local v5, "projects":Ljava/lang/String;
    invoke-static {v5}, Lim/doit/pro/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 45
    invoke-virtual {v2, v5}, Lim/doit/pro/model/Filter;->setJsonProjects(Ljava/lang/String;)V

    .line 47
    :cond_5
    invoke-static {}, Lim/doit/pro/api/parser/ParserUtil;->getInstance()Lim/doit/pro/api/parser/ParserUtil;

    move-result-object v8

    const-string v9, "tags"

    invoke-virtual {v8, p1, v9}, Lim/doit/pro/api/parser/ParserUtil;->getNodeAsString(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 48
    .local v7, "tags":Ljava/lang/String;
    invoke-static {v7}, Lim/doit/pro/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 49
    invoke-virtual {v2, v7}, Lim/doit/pro/model/Filter;->setJsonTags(Ljava/lang/String;)V

    .line 51
    :cond_6
    return-object v2
.end method
