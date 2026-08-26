.class Lim/doit/pro/utils/JsonFormat$GroupBySerializer;
.super Ljava/lang/Object;
.source "JsonFormat.java"

# interfaces
.implements Lcom/google/gson/JsonDeserializer;
.implements Lcom/google/gson/JsonSerializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/utils/JsonFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GroupBySerializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/gson/JsonDeserializer",
        "<",
        "Lim/doit/pro/model/enums/GroupByType;",
        ">;",
        "Lcom/google/gson/JsonSerializer",
        "<",
        "Lim/doit/pro/model/enums/GroupByType;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/utils/JsonFormat;


# direct methods
.method private constructor <init>(Lim/doit/pro/utils/JsonFormat;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lim/doit/pro/utils/JsonFormat$GroupBySerializer;->this$0:Lim/doit/pro/utils/JsonFormat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lim/doit/pro/utils/JsonFormat;Lim/doit/pro/utils/JsonFormat$GroupBySerializer;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lim/doit/pro/utils/JsonFormat$GroupBySerializer;-><init>(Lim/doit/pro/utils/JsonFormat;)V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/google/gson/JsonDeserializationContext;)Lim/doit/pro/model/enums/GroupByType;
    .locals 2
    .param p1, "element"    # Lcom/google/gson/JsonElement;
    .param p2, "type"    # Ljava/lang/reflect/Type;
    .param p3, "context"    # Lcom/google/gson/JsonDeserializationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 50
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonPrimitive()Lcom/google/gson/JsonPrimitive;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonPrimitive;->getAsString()Ljava/lang/String;

    move-result-object v0

    .line 51
    .local v0, "groupby":Ljava/lang/String;
    invoke-static {v0}, Lim/doit/pro/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 52
    const/4 v1, 0x0

    .line 54
    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0}, Lim/doit/pro/model/enums/GroupByType;->getValue(Ljava/lang/String;)Lim/doit/pro/model/enums/GroupByType;

    move-result-object v1

    goto :goto_0
.end method

.method public bridge synthetic deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/google/gson/JsonDeserializationContext;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lim/doit/pro/utils/JsonFormat$GroupBySerializer;->deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/google/gson/JsonDeserializationContext;)Lim/doit/pro/model/enums/GroupByType;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lim/doit/pro/model/enums/GroupByType;Ljava/lang/reflect/Type;Lcom/google/gson/JsonSerializationContext;)Lcom/google/gson/JsonElement;
    .locals 1
    .param p1, "groupby"    # Lim/doit/pro/model/enums/GroupByType;
    .param p2, "type"    # Ljava/lang/reflect/Type;
    .param p3, "context"    # Lcom/google/gson/JsonSerializationContext;

    .prologue
    .line 42
    if-nez p1, :cond_0

    .line 43
    const/4 v0, 0x0

    .line 45
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Lim/doit/pro/model/enums/GroupByType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v0}, Lcom/google/gson/JsonSerializationContext;->serialize(Ljava/lang/Object;)Lcom/google/gson/JsonElement;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/google/gson/JsonSerializationContext;)Lcom/google/gson/JsonElement;
    .locals 1

    .prologue
    .line 1
    check-cast p1, Lim/doit/pro/model/enums/GroupByType;

    invoke-virtual {p0, p1, p2, p3}, Lim/doit/pro/utils/JsonFormat$GroupBySerializer;->serialize(Lim/doit/pro/model/enums/GroupByType;Ljava/lang/reflect/Type;Lcom/google/gson/JsonSerializationContext;)Lcom/google/gson/JsonElement;

    move-result-object v0

    return-object v0
.end method
