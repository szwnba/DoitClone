.class public abstract Lim/doit/pro/api/parser/BaseParser;
.super Ljava/lang/Object;
.source "BaseParser.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lim/doit/pro/model/BaseEntity;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected entityClazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 19
    .local p0, "this":Lim/doit/pro/api/parser/BaseParser;, "Lim/doit/pro/api/parser/BaseParser<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Ljava/lang/Class;

    iput-object v0, p0, Lim/doit/pro/api/parser/BaseParser;->entityClazz:Ljava/lang/Class;

    .line 21
    return-void
.end method


# virtual methods
.method protected parseItem(Lcom/google/gson/JsonObject;)Lim/doit/pro/model/BaseEntity;
    .locals 4
    .param p1, "node"    # Lcom/google/gson/JsonObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/JsonObject;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 40
    .local p0, "this":Lim/doit/pro/api/parser/BaseParser;, "Lim/doit/pro/api/parser/BaseParser<TT;>;"
    :try_start_0
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->json()Lim/doit/pro/utils/JsonFormat;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/gson/JsonObject;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lim/doit/pro/api/parser/BaseParser;->entityClazz:Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Lim/doit/pro/utils/JsonFormat;->deserialize(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lim/doit/pro/model/BaseEntity;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    :goto_0
    return-object v1

    .line 41
    :catch_0
    move-exception v0

    .line 42
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 44
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public parseItems(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 5
    .param p1, "root"    # Lcom/google/gson/JsonObject;
    .param p2, "pathName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/JsonObject;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 24
    .local p0, "this":Lim/doit/pro/api/parser/BaseParser;, "Lim/doit/pro/api/parser/BaseParser<TT;>;"
    invoke-virtual {p1, p2}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 25
    const/4 v3, 0x0

    .line 35
    :cond_0
    return-object v3

    .line 27
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 28
    .local v3, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    invoke-virtual {p1, p2}, Lcom/google/gson/JsonObject;->getAsJsonArray(Ljava/lang/String;)Lcom/google/gson/JsonArray;

    move-result-object v0

    .line 29
    .local v0, "boxesNode":Lcom/google/gson/JsonArray;
    if-eqz v0, :cond_0

    .line 30
    invoke-virtual {v0}, Lcom/google/gson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/google/gson/JsonElement;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 31
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/gson/JsonElement;

    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v1

    .line 32
    .local v1, "item":Lcom/google/gson/JsonObject;
    invoke-virtual {p0, v1}, Lim/doit/pro/api/parser/BaseParser;->parseItem(Lcom/google/gson/JsonObject;)Lim/doit/pro/model/BaseEntity;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
