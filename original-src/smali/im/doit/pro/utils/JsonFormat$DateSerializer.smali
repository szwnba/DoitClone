.class Lim/doit/pro/utils/JsonFormat$DateSerializer;
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
    name = "DateSerializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/gson/JsonDeserializer",
        "<",
        "Ljava/util/Calendar;",
        ">;",
        "Lcom/google/gson/JsonSerializer",
        "<",
        "Ljava/util/Calendar;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/utils/JsonFormat;


# direct methods
.method private constructor <init>(Lim/doit/pro/utils/JsonFormat;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lim/doit/pro/utils/JsonFormat$DateSerializer;->this$0:Lim/doit/pro/utils/JsonFormat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lim/doit/pro/utils/JsonFormat;Lim/doit/pro/utils/JsonFormat$DateSerializer;)V
    .locals 0

    .prologue
    .line 101
    invoke-direct {p0, p1}, Lim/doit/pro/utils/JsonFormat$DateSerializer;-><init>(Lim/doit/pro/utils/JsonFormat;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/google/gson/JsonDeserializationContext;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lim/doit/pro/utils/JsonFormat$DateSerializer;->deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/google/gson/JsonDeserializationContext;)Ljava/util/Calendar;

    move-result-object v0

    return-object v0
.end method

.method public deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/google/gson/JsonDeserializationContext;)Ljava/util/Calendar;
    .locals 6
    .param p1, "element"    # Lcom/google/gson/JsonElement;
    .param p2, "type"    # Ljava/lang/reflect/Type;
    .param p3, "context"    # Lcom/google/gson/JsonDeserializationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 113
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonPrimitive()Lcom/google/gson/JsonPrimitive;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonPrimitive;->getAsLong()J

    move-result-wide v2

    .line 114
    .local v2, "time":J
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 115
    const/4 v0, 0x0

    .line 119
    :goto_0
    return-object v0

    .line 117
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 118
    .local v0, "date":Ljava/util/Calendar;
    invoke-static {v2, v3}, Lim/doit/pro/utils/DateUtils;->changeTimeForDownload(J)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    goto :goto_0
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/google/gson/JsonSerializationContext;)Lcom/google/gson/JsonElement;
    .locals 1

    .prologue
    .line 1
    check-cast p1, Ljava/util/Calendar;

    invoke-virtual {p0, p1, p2, p3}, Lim/doit/pro/utils/JsonFormat$DateSerializer;->serialize(Ljava/util/Calendar;Ljava/lang/reflect/Type;Lcom/google/gson/JsonSerializationContext;)Lcom/google/gson/JsonElement;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Ljava/util/Calendar;Ljava/lang/reflect/Type;Lcom/google/gson/JsonSerializationContext;)Lcom/google/gson/JsonElement;
    .locals 2
    .param p1, "date"    # Ljava/util/Calendar;
    .param p2, "type"    # Ljava/lang/reflect/Type;
    .param p3, "context"    # Lcom/google/gson/JsonSerializationContext;

    .prologue
    .line 105
    if-nez p1, :cond_0

    .line 106
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p3, v0}, Lcom/google/gson/JsonSerializationContext;->serialize(Ljava/lang/Object;)Lcom/google/gson/JsonElement;

    .line 108
    :cond_0
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lim/doit/pro/utils/DateUtils;->changeTimeForUpload(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p3, v0}, Lcom/google/gson/JsonSerializationContext;->serialize(Ljava/lang/Object;)Lcom/google/gson/JsonElement;

    move-result-object v0

    return-object v0
.end method
