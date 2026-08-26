.class public Lim/doit/pro/utils/JsonFormat;
.super Ljava/lang/Object;
.source "JsonFormat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lim/doit/pro/utils/JsonFormat$AttributeSerializer;,
        Lim/doit/pro/utils/JsonFormat$BoxTypeSerializer;,
        Lim/doit/pro/utils/JsonFormat$DateSerializer;,
        Lim/doit/pro/utils/JsonFormat$GroupBySerializer;,
        Lim/doit/pro/utils/JsonFormat$RepeaterModeSerializer;
    }
.end annotation


# instance fields
.field private final gson:Lcom/google/gson/Gson;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->serializeNulls()Lcom/google/gson/GsonBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->excludeFieldsWithoutExposeAnnotation()Lcom/google/gson/GsonBuilder;

    move-result-object v0

    .line 28
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/gson/GsonBuilder;->setDateFormat(I)Lcom/google/gson/GsonBuilder;

    move-result-object v0

    .line 29
    const-class v1, Ljava/util/Calendar;

    new-instance v2, Lim/doit/pro/utils/JsonFormat$DateSerializer;

    invoke-direct {v2, p0, v3}, Lim/doit/pro/utils/JsonFormat$DateSerializer;-><init>(Lim/doit/pro/utils/JsonFormat;Lim/doit/pro/utils/JsonFormat$DateSerializer;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    move-result-object v0

    .line 30
    const-class v1, Ljava/util/GregorianCalendar;

    new-instance v2, Lim/doit/pro/utils/JsonFormat$DateSerializer;

    invoke-direct {v2, p0, v3}, Lim/doit/pro/utils/JsonFormat$DateSerializer;-><init>(Lim/doit/pro/utils/JsonFormat;Lim/doit/pro/utils/JsonFormat$DateSerializer;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    move-result-object v0

    .line 31
    const-class v1, Lim/doit/pro/model/enums/GroupByType;

    new-instance v2, Lim/doit/pro/utils/JsonFormat$GroupBySerializer;

    invoke-direct {v2, p0, v3}, Lim/doit/pro/utils/JsonFormat$GroupBySerializer;-><init>(Lim/doit/pro/utils/JsonFormat;Lim/doit/pro/utils/JsonFormat$GroupBySerializer;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    move-result-object v0

    .line 5
    const-class v1, Lim/doit/pro/model/enums/Attribute;

    new-instance v2, Lim/doit/pro/utils/JsonFormat$AttributeSerializer;

    invoke-direct {v2, p0, v3}, Lim/doit/pro/utils/JsonFormat$AttributeSerializer;-><init>(Lim/doit/pro/utils/JsonFormat;Lim/doit/pro/utils/JsonFormat$AttributeSerializer;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    move-result-object v0

    .line 33
    const-class v1, Lim/doit/pro/model/enums/BoxType;

    new-instance v2, Lim/doit/pro/utils/JsonFormat$BoxTypeSerializer;

    invoke-direct {v2, p0, v3}, Lim/doit/pro/utils/JsonFormat$BoxTypeSerializer;-><init>(Lim/doit/pro/utils/JsonFormat;Lim/doit/pro/utils/JsonFormat$BoxTypeSerializer;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    move-result-object v0

    .line 34
    const-class v1, Lim/doit/pro/model/enums/RepeaterMode;

    new-instance v2, Lim/doit/pro/utils/JsonFormat$RepeaterModeSerializer;

    invoke-direct {v2, p0, v3}, Lim/doit/pro/utils/JsonFormat$RepeaterModeSerializer;-><init>(Lim/doit/pro/utils/JsonFormat;Lim/doit/pro/utils/JsonFormat$RepeaterModeSerializer;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    move-result-object v0

    .line 35
    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v0

    .line 27
    iput-object v0, p0, Lim/doit/pro/utils/JsonFormat;->gson:Lcom/google/gson/Gson;

    .line 36
    return-void
.end method


# virtual methods
.method public deserialize(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .param p1, "json"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 126
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :try_start_0
    iget-object v2, p0, Lim/doit/pro/utils/JsonFormat;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v2, p1, p2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 131
    :goto_0
    return-object v1

    .line 128
    :catch_0
    move-exception v0

    .line 129
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 131
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public serialize(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 135
    iget-object v0, p0, Lim/doit/pro/utils/JsonFormat;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
