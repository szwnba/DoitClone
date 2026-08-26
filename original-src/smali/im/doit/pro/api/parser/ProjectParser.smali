.class public Lim/doit/pro/api/parser/ProjectParser;
.super Lim/doit/pro/api/parser/BaseParser;
.source "ProjectParser.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lim/doit/pro/api/parser/BaseParser",
        "<",
        "Lim/doit/pro/model/Project;",
        ">;"
    }
.end annotation


# static fields
.field private static projectParser:Lim/doit/pro/api/parser/ProjectParser;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lim/doit/pro/api/parser/BaseParser;-><init>()V

    return-void
.end method

.method public static getInstance()Lim/doit/pro/api/parser/ProjectParser;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lim/doit/pro/api/parser/ProjectParser;->projectParser:Lim/doit/pro/api/parser/ProjectParser;

    if-nez v0, :cond_0

    .line 18
    new-instance v0, Lim/doit/pro/api/parser/ProjectParser;

    invoke-direct {v0}, Lim/doit/pro/api/parser/ProjectParser;-><init>()V

    sput-object v0, Lim/doit/pro/api/parser/ProjectParser;->projectParser:Lim/doit/pro/api/parser/ProjectParser;

    .line 20
    :cond_0
    sget-object v0, Lim/doit/pro/api/parser/ProjectParser;->projectParser:Lim/doit/pro/api/parser/ProjectParser;

    return-object v0
.end method


# virtual methods
.method protected bridge synthetic parseItem(Lcom/google/gson/JsonObject;)Lim/doit/pro/model/BaseEntity;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lim/doit/pro/api/parser/ProjectParser;->parseItem(Lcom/google/gson/JsonObject;)Lim/doit/pro/model/Project;

    move-result-object v0

    return-object v0
.end method

.method protected parseItem(Lcom/google/gson/JsonObject;)Lim/doit/pro/model/Project;
    .locals 4
    .param p1, "node"    # Lcom/google/gson/JsonObject;

    .prologue
    .line 57
    invoke-super {p0, p1}, Lim/doit/pro/api/parser/BaseParser;->parseItem(Lcom/google/gson/JsonObject;)Lim/doit/pro/model/BaseEntity;

    move-result-object v1

    check-cast v1, Lim/doit/pro/model/Project;

    .line 58
    .local v1, "project":Lim/doit/pro/model/Project;
    invoke-static {}, Lim/doit/pro/api/parser/ParserUtil;->getInstance()Lim/doit/pro/api/parser/ParserUtil;

    move-result-object v2

    const-string v3, "medias"

    invoke-virtual {v2, p1, v3}, Lim/doit/pro/api/parser/ParserUtil;->getNodeAsString(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 59
    .local v0, "medias":Ljava/lang/String;
    invoke-static {v0}, Lim/doit/pro/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 60
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lim/doit/pro/model/Project;->setJsonMedias(Ljava/lang/String;)V

    .line 64
    :goto_0
    return-object v1

    .line 62
    :cond_0
    invoke-virtual {v1, v0}, Lim/doit/pro/model/Project;->setJsonMedias(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public serializeForArchived(Lim/doit/pro/model/Project;)Ljava/lang/String;
    .locals 4
    .param p1, "t"    # Lim/doit/pro/model/Project;

    .prologue
    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 41
    .local v0, "temp":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "uuid"

    invoke-virtual {p1}, Lim/doit/pro/model/Project;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    const-string v1, "archived"

    invoke-virtual {p1}, Lim/doit/pro/model/Project;->getArchived()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    const-string v1, "usn"

    invoke-virtual {p1}, Lim/doit/pro/model/Project;->getUsn()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->json()Lim/doit/pro/utils/JsonFormat;

    move-result-object v1

    invoke-virtual {v1, v0}, Lim/doit/pro/utils/JsonFormat;->serialize(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public serializeForCompleted(Lim/doit/pro/model/Project;)Ljava/lang/String;
    .locals 4
    .param p1, "t"    # Lim/doit/pro/model/Project;

    .prologue
    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 25
    .local v0, "temp":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "uuid"

    invoke-virtual {p1}, Lim/doit/pro/model/Project;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    const-string v1, "completed"

    invoke-virtual {p1}, Lim/doit/pro/model/Project;->getCompleted()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    const-string v1, "usn"

    invoke-virtual {p1}, Lim/doit/pro/model/Project;->getUsn()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->json()Lim/doit/pro/utils/JsonFormat;

    move-result-object v1

    invoke-virtual {v1, v0}, Lim/doit/pro/utils/JsonFormat;->serialize(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public serializeForDeleted(Lim/doit/pro/model/Project;)Ljava/lang/String;
    .locals 4
    .param p1, "t"    # Lim/doit/pro/model/Project;

    .prologue
    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 49
    .local v0, "temp":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "uuid"

    invoke-virtual {p1}, Lim/doit/pro/model/Project;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    const-string v1, "deleted"

    invoke-virtual {p1}, Lim/doit/pro/model/Project;->getDeleted()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    const-string v1, "usn"

    invoke-virtual {p1}, Lim/doit/pro/model/Project;->getUsn()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->json()Lim/doit/pro/utils/JsonFormat;

    move-result-object v1

    invoke-virtual {v1, v0}, Lim/doit/pro/utils/JsonFormat;->serialize(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public serializeForTrashed(Lim/doit/pro/model/Project;)Ljava/lang/String;
    .locals 4
    .param p1, "t"    # Lim/doit/pro/model/Project;

    .prologue
    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 33
    .local v0, "temp":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "uuid"

    invoke-virtual {p1}, Lim/doit/pro/model/Project;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    const-string v1, "trashed"

    invoke-virtual {p1}, Lim/doit/pro/model/Project;->getTrashed()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    const-string v1, "usn"

    invoke-virtual {p1}, Lim/doit/pro/model/Project;->getUsn()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->json()Lim/doit/pro/utils/JsonFormat;

    move-result-object v1

    invoke-virtual {v1, v0}, Lim/doit/pro/utils/JsonFormat;->serialize(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
