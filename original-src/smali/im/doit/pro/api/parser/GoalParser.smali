.class public Lim/doit/pro/api/parser/GoalParser;
.super Lim/doit/pro/api/parser/BaseParser;
.source "GoalParser.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lim/doit/pro/api/parser/BaseParser",
        "<",
        "Lim/doit/pro/model/Goal;",
        ">;"
    }
.end annotation


# static fields
.field private static goalParser:Lim/doit/pro/api/parser/GoalParser;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lim/doit/pro/api/parser/BaseParser;-><init>()V

    return-void
.end method

.method public static getInstance()Lim/doit/pro/api/parser/GoalParser;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lim/doit/pro/api/parser/GoalParser;->goalParser:Lim/doit/pro/api/parser/GoalParser;

    if-nez v0, :cond_0

    .line 14
    new-instance v0, Lim/doit/pro/api/parser/GoalParser;

    invoke-direct {v0}, Lim/doit/pro/api/parser/GoalParser;-><init>()V

    sput-object v0, Lim/doit/pro/api/parser/GoalParser;->goalParser:Lim/doit/pro/api/parser/GoalParser;

    .line 16
    :cond_0
    sget-object v0, Lim/doit/pro/api/parser/GoalParser;->goalParser:Lim/doit/pro/api/parser/GoalParser;

    return-object v0
.end method


# virtual methods
.method public serializeForArchived(Lim/doit/pro/model/Goal;)Ljava/lang/String;
    .locals 4
    .param p1, "t"    # Lim/doit/pro/model/Goal;

    .prologue
    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 37
    .local v0, "temp":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "uuid"

    invoke-virtual {p1}, Lim/doit/pro/model/Goal;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    const-string v1, "archived"

    invoke-virtual {p1}, Lim/doit/pro/model/Goal;->getArchived()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    const-string v1, "usn"

    invoke-virtual {p1}, Lim/doit/pro/model/Goal;->getUsn()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->json()Lim/doit/pro/utils/JsonFormat;

    move-result-object v1

    invoke-virtual {v1, v0}, Lim/doit/pro/utils/JsonFormat;->serialize(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public serializeForCompleted(Lim/doit/pro/model/Goal;)Ljava/lang/String;
    .locals 4
    .param p1, "t"    # Lim/doit/pro/model/Goal;

    .prologue
    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 21
    .local v0, "temp":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "uuid"

    invoke-virtual {p1}, Lim/doit/pro/model/Goal;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    const-string v1, "completed"

    invoke-virtual {p1}, Lim/doit/pro/model/Goal;->getCompleted()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    const-string v1, "usn"

    invoke-virtual {p1}, Lim/doit/pro/model/Goal;->getUsn()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->json()Lim/doit/pro/utils/JsonFormat;

    move-result-object v1

    invoke-virtual {v1, v0}, Lim/doit/pro/utils/JsonFormat;->serialize(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public serializeForDeleted(Lim/doit/pro/model/Goal;)Ljava/lang/String;
    .locals 4
    .param p1, "t"    # Lim/doit/pro/model/Goal;

    .prologue
    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 45
    .local v0, "temp":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "uuid"

    invoke-virtual {p1}, Lim/doit/pro/model/Goal;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    const-string v1, "deleted"

    invoke-virtual {p1}, Lim/doit/pro/model/Goal;->getDeleted()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    const-string v1, "usn"

    invoke-virtual {p1}, Lim/doit/pro/model/Goal;->getUsn()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->json()Lim/doit/pro/utils/JsonFormat;

    move-result-object v1

    invoke-virtual {v1, v0}, Lim/doit/pro/utils/JsonFormat;->serialize(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public serializeForTrashed(Lim/doit/pro/model/Goal;)Ljava/lang/String;
    .locals 4
    .param p1, "t"    # Lim/doit/pro/model/Goal;

    .prologue
    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 29
    .local v0, "temp":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "uuid"

    invoke-virtual {p1}, Lim/doit/pro/model/Goal;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    const-string v1, "trashed"

    invoke-virtual {p1}, Lim/doit/pro/model/Goal;->getTrashed()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    const-string v1, "usn"

    invoke-virtual {p1}, Lim/doit/pro/model/Goal;->getUsn()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->json()Lim/doit/pro/utils/JsonFormat;

    move-result-object v1

    invoke-virtual {v1, v0}, Lim/doit/pro/utils/JsonFormat;->serialize(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
