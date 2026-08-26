.class public Lim/doit/pro/api/parser/TaskContextParser;
.super Lim/doit/pro/api/parser/BaseParser;
.source "TaskContextParser.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lim/doit/pro/api/parser/BaseParser",
        "<",
        "Lim/doit/pro/model/TaskContext;",
        ">;"
    }
.end annotation


# static fields
.field private static taskContextParser:Lim/doit/pro/api/parser/TaskContextParser;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lim/doit/pro/api/parser/BaseParser;-><init>()V

    return-void
.end method

.method public static getInstance()Lim/doit/pro/api/parser/TaskContextParser;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lim/doit/pro/api/parser/TaskContextParser;->taskContextParser:Lim/doit/pro/api/parser/TaskContextParser;

    if-nez v0, :cond_0

    .line 15
    new-instance v0, Lim/doit/pro/api/parser/TaskContextParser;

    invoke-direct {v0}, Lim/doit/pro/api/parser/TaskContextParser;-><init>()V

    sput-object v0, Lim/doit/pro/api/parser/TaskContextParser;->taskContextParser:Lim/doit/pro/api/parser/TaskContextParser;

    .line 17
    :cond_0
    sget-object v0, Lim/doit/pro/api/parser/TaskContextParser;->taskContextParser:Lim/doit/pro/api/parser/TaskContextParser;

    return-object v0
.end method


# virtual methods
.method public serializeForDeleted(Lim/doit/pro/model/TaskContext;)Ljava/lang/String;
    .locals 4
    .param p1, "t"    # Lim/doit/pro/model/TaskContext;

    .prologue
    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 22
    .local v0, "temp":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "uuid"

    invoke-virtual {p1}, Lim/doit/pro/model/TaskContext;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    const-string v1, "deleted"

    invoke-virtual {p1}, Lim/doit/pro/model/TaskContext;->getDeleted()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    const-string v1, "usn"

    invoke-virtual {p1}, Lim/doit/pro/model/TaskContext;->getUsn()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->json()Lim/doit/pro/utils/JsonFormat;

    move-result-object v1

    invoke-virtual {v1, v0}, Lim/doit/pro/utils/JsonFormat;->serialize(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
