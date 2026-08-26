.class public Lim/doit/pro/api/parser/TaskParser;
.super Lim/doit/pro/api/parser/BaseParser;
.source "TaskParser.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lim/doit/pro/api/parser/BaseParser",
        "<",
        "Lim/doit/pro/model/Task;",
        ">;"
    }
.end annotation


# static fields
.field private static taskParser:Lim/doit/pro/api/parser/TaskParser;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lim/doit/pro/api/parser/BaseParser;-><init>()V

    return-void
.end method

.method public static getInstance()Lim/doit/pro/api/parser/TaskParser;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lim/doit/pro/api/parser/TaskParser;->taskParser:Lim/doit/pro/api/parser/TaskParser;

    if-nez v0, :cond_0

    .line 17
    new-instance v0, Lim/doit/pro/api/parser/TaskParser;

    invoke-direct {v0}, Lim/doit/pro/api/parser/TaskParser;-><init>()V

    sput-object v0, Lim/doit/pro/api/parser/TaskParser;->taskParser:Lim/doit/pro/api/parser/TaskParser;

    .line 19
    :cond_0
    sget-object v0, Lim/doit/pro/api/parser/TaskParser;->taskParser:Lim/doit/pro/api/parser/TaskParser;

    return-object v0
.end method


# virtual methods
.method protected bridge synthetic parseItem(Lcom/google/gson/JsonObject;)Lim/doit/pro/model/BaseEntity;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lim/doit/pro/api/parser/TaskParser;->parseItem(Lcom/google/gson/JsonObject;)Lim/doit/pro/model/Task;

    move-result-object v0

    return-object v0
.end method

.method protected parseItem(Lcom/google/gson/JsonObject;)Lim/doit/pro/model/Task;
    .locals 10
    .param p1, "node"    # Lcom/google/gson/JsonObject;

    .prologue
    const/4 v9, 0x0

    .line 60
    invoke-super {p0, p1}, Lim/doit/pro/api/parser/BaseParser;->parseItem(Lcom/google/gson/JsonObject;)Lim/doit/pro/model/BaseEntity;

    move-result-object v6

    check-cast v6, Lim/doit/pro/model/Task;

    .line 61
    .local v6, "task":Lim/doit/pro/model/Task;
    invoke-static {}, Lim/doit/pro/api/parser/ParserUtil;->getInstance()Lim/doit/pro/api/parser/ParserUtil;

    move-result-object v7

    const-string v8, "repeater"

    invoke-virtual {v7, p1, v8}, Lim/doit/pro/api/parser/ParserUtil;->getNodeAsString(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 62
    .local v4, "repeater":Ljava/lang/String;
    invoke-static {v4}, Lim/doit/pro/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 63
    invoke-virtual {v6, v9}, Lim/doit/pro/model/Task;->setJsonRepeater(Ljava/lang/String;)V

    .line 67
    :goto_0
    invoke-static {}, Lim/doit/pro/api/parser/ParserUtil;->getInstance()Lim/doit/pro/api/parser/ParserUtil;

    move-result-object v7

    const-string v8, "assignment"

    invoke-virtual {v7, p1, v8}, Lim/doit/pro/api/parser/ParserUtil;->getNodeAsString(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 68
    .local v0, "assignment":Ljava/lang/String;
    invoke-static {v0}, Lim/doit/pro/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 69
    invoke-virtual {v6, v9}, Lim/doit/pro/model/Task;->setJsonAssignment(Ljava/lang/String;)V

    .line 73
    :goto_1
    invoke-static {}, Lim/doit/pro/api/parser/ParserUtil;->getInstance()Lim/doit/pro/api/parser/ParserUtil;

    move-result-object v7

    const-string v8, "reminders"

    invoke-virtual {v7, p1, v8}, Lim/doit/pro/api/parser/ParserUtil;->getNodeAsString(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 74
    .local v3, "reminders":Ljava/lang/String;
    invoke-static {v3}, Lim/doit/pro/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 75
    invoke-virtual {v6, v9}, Lim/doit/pro/model/Task;->setJsonReminders(Ljava/lang/String;)V

    .line 79
    :goto_2
    invoke-static {}, Lim/doit/pro/api/parser/ParserUtil;->getInstance()Lim/doit/pro/api/parser/ParserUtil;

    move-result-object v7

    const-string v8, "tags"

    invoke-virtual {v7, p1, v8}, Lim/doit/pro/api/parser/ParserUtil;->getNodeAsString(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 80
    .local v5, "tags":Ljava/lang/String;
    invoke-static {v5}, Lim/doit/pro/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 81
    invoke-virtual {v6, v9}, Lim/doit/pro/model/Task;->setJsonTags(Ljava/lang/String;)V

    .line 85
    :goto_3
    invoke-static {}, Lim/doit/pro/api/parser/ParserUtil;->getInstance()Lim/doit/pro/api/parser/ParserUtil;

    move-result-object v7

    const-string v8, "local_attachments"

    invoke-virtual {v7, p1, v8}, Lim/doit/pro/api/parser/ParserUtil;->getNodeAsString(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 86
    .local v1, "localAttachments":Ljava/lang/String;
    invoke-static {v1}, Lim/doit/pro/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 87
    invoke-virtual {v6, v9}, Lim/doit/pro/model/Task;->setJsonLocalAttachments(Ljava/lang/String;)V

    .line 91
    :goto_4
    invoke-static {}, Lim/doit/pro/api/parser/ParserUtil;->getInstance()Lim/doit/pro/api/parser/ParserUtil;

    move-result-object v7

    const-string v8, "medias"

    invoke-virtual {v7, p1, v8}, Lim/doit/pro/api/parser/ParserUtil;->getNodeAsString(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 92
    .local v2, "medias":Ljava/lang/String;
    invoke-static {v2}, Lim/doit/pro/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 93
    invoke-virtual {v6, v9}, Lim/doit/pro/model/Task;->setJsonMedias(Ljava/lang/String;)V

    .line 97
    :goto_5
    return-object v6

    .line 65
    .end local v0    # "assignment":Ljava/lang/String;
    .end local v1    # "localAttachments":Ljava/lang/String;
    .end local v2    # "medias":Ljava/lang/String;
    .end local v3    # "reminders":Ljava/lang/String;
    .end local v5    # "tags":Ljava/lang/String;
    :cond_0
    invoke-virtual {v6, v4}, Lim/doit/pro/model/Task;->setJsonRepeater(Ljava/lang/String;)V

    goto :goto_0

    .line 71
    .restart local v0    # "assignment":Ljava/lang/String;
    :cond_1
    invoke-virtual {v6, v0}, Lim/doit/pro/model/Task;->setJsonAssignment(Ljava/lang/String;)V

    goto :goto_1

    .line 77
    .restart local v3    # "reminders":Ljava/lang/String;
    :cond_2
    invoke-virtual {v6, v3}, Lim/doit/pro/model/Task;->setJsonReminders(Ljava/lang/String;)V

    goto :goto_2

    .line 83
    .restart local v5    # "tags":Ljava/lang/String;
    :cond_3
    invoke-virtual {v6, v5}, Lim/doit/pro/model/Task;->setJsonTags(Ljava/lang/String;)V

    goto :goto_3

    .line 89
    .restart local v1    # "localAttachments":Ljava/lang/String;
    :cond_4
    invoke-virtual {v6, v1}, Lim/doit/pro/model/Task;->setJsonLocalAttachments(Ljava/lang/String;)V

    goto :goto_4

    .line 95
    .restart local v2    # "medias":Ljava/lang/String;
    :cond_5
    invoke-virtual {v6, v2}, Lim/doit/pro/model/Task;->setJsonMedias(Ljava/lang/String;)V

    goto :goto_5
.end method

.method public serializeForArchived(Lim/doit/pro/model/Task;)Ljava/lang/String;
    .locals 4
    .param p1, "t"    # Lim/doit/pro/model/Task;

    .prologue
    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 42
    .local v0, "temp":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "uuid"

    invoke-virtual {p1}, Lim/doit/pro/model/Task;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    const-string v1, "repeat_no"

    invoke-virtual {p1}, Lim/doit/pro/model/Task;->getRepeatNo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    const-string v1, "archived"

    invoke-virtual {p1}, Lim/doit/pro/model/Task;->getArchived()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    const-string v1, "usn"

    invoke-virtual {p1}, Lim/doit/pro/model/Task;->getUsn()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->json()Lim/doit/pro/utils/JsonFormat;

    move-result-object v1

    invoke-virtual {v1, v0}, Lim/doit/pro/utils/JsonFormat;->serialize(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public serializeForCompleted(Lim/doit/pro/model/Task;)Ljava/lang/String;
    .locals 4
    .param p1, "t"    # Lim/doit/pro/model/Task;

    .prologue
    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 24
    .local v0, "temp":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "uuid"

    invoke-virtual {p1}, Lim/doit/pro/model/Task;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    const-string v1, "repeat_no"

    invoke-virtual {p1}, Lim/doit/pro/model/Task;->getRepeatNo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    const-string v1, "completed"

    invoke-virtual {p1}, Lim/doit/pro/model/Task;->getCompleted()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    const-string v1, "usn"

    invoke-virtual {p1}, Lim/doit/pro/model/Task;->getUsn()J

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

.method public serializeForDeleted(Lim/doit/pro/model/Task;)Ljava/lang/String;
    .locals 4
    .param p1, "t"    # Lim/doit/pro/model/Task;

    .prologue
    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 51
    .local v0, "temp":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "uuid"

    invoke-virtual {p1}, Lim/doit/pro/model/Task;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    const-string v1, "repeat_no"

    invoke-virtual {p1}, Lim/doit/pro/model/Task;->getRepeatNo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    const-string v1, "deleted"

    invoke-virtual {p1}, Lim/doit/pro/model/Task;->getDeleted()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    const-string v1, "usn"

    invoke-virtual {p1}, Lim/doit/pro/model/Task;->getUsn()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->json()Lim/doit/pro/utils/JsonFormat;

    move-result-object v1

    invoke-virtual {v1, v0}, Lim/doit/pro/utils/JsonFormat;->serialize(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public serializeForTrashed(Lim/doit/pro/model/Task;)Ljava/lang/String;
    .locals 4
    .param p1, "t"    # Lim/doit/pro/model/Task;

    .prologue
    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 33
    .local v0, "temp":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "uuid"

    invoke-virtual {p1}, Lim/doit/pro/model/Task;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    const-string v1, "repeat_no"

    invoke-virtual {p1}, Lim/doit/pro/model/Task;->getRepeatNo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    const-string v1, "trashed"

    invoke-virtual {p1}, Lim/doit/pro/model/Task;->getTrashed()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    const-string v1, "usn"

    invoke-virtual {p1}, Lim/doit/pro/model/Task;->getUsn()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->json()Lim/doit/pro/utils/JsonFormat;

    move-result-object v1

    invoke-virtual {v1, v0}, Lim/doit/pro/utils/JsonFormat;->serialize(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
