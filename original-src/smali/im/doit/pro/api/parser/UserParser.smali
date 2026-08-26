.class public Lim/doit/pro/api/parser/UserParser;
.super Lim/doit/pro/api/parser/BaseParser;
.source "UserParser.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lim/doit/pro/api/parser/BaseParser",
        "<",
        "Lim/doit/pro/model/User;",
        ">;"
    }
.end annotation


# static fields
.field private static userParser:Lim/doit/pro/api/parser/UserParser;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lim/doit/pro/api/parser/BaseParser;-><init>()V

    return-void
.end method

.method public static getInstance()Lim/doit/pro/api/parser/UserParser;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lim/doit/pro/api/parser/UserParser;->userParser:Lim/doit/pro/api/parser/UserParser;

    if-nez v0, :cond_0

    .line 15
    new-instance v0, Lim/doit/pro/api/parser/UserParser;

    invoke-direct {v0}, Lim/doit/pro/api/parser/UserParser;-><init>()V

    sput-object v0, Lim/doit/pro/api/parser/UserParser;->userParser:Lim/doit/pro/api/parser/UserParser;

    .line 17
    :cond_0
    sget-object v0, Lim/doit/pro/api/parser/UserParser;->userParser:Lim/doit/pro/api/parser/UserParser;

    return-object v0
.end method

.method private parseAndSave(Lcom/google/gson/JsonObject;)V
    .locals 3
    .param p1, "userNode"    # Lcom/google/gson/JsonObject;

    .prologue
    .line 29
    invoke-virtual {p0, p1}, Lim/doit/pro/api/parser/UserParser;->parseItem(Lcom/google/gson/JsonObject;)Lim/doit/pro/model/BaseEntity;

    move-result-object v0

    check-cast v0, Lim/doit/pro/model/User;

    .line 30
    .local v0, "user":Lim/doit/pro/model/User;
    invoke-static {}, Lim/doit/pro/api/parser/ParserUtil;->getInstance()Lim/doit/pro/api/parser/ParserUtil;

    move-result-object v1

    const-string v2, "google_calendar"

    invoke-virtual {v1, p1, v2}, Lim/doit/pro/api/parser/ParserUtil;->getNodeAsString(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/model/User;->setGoogleCalendar(Ljava/lang/String;)V

    .line 31
    invoke-static {}, Lim/doit/pro/api/parser/ParserUtil;->getInstance()Lim/doit/pro/api/parser/ParserUtil;

    move-result-object v1

    const-string v2, "daily_planning_times"

    invoke-virtual {v1, p1, v2}, Lim/doit/pro/api/parser/ParserUtil;->getNodeAsString(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/model/User;->setDailyPlanningTime(Ljava/lang/String;)V

    .line 32
    invoke-static {}, Lim/doit/pro/api/parser/ParserUtil;->getInstance()Lim/doit/pro/api/parser/ParserUtil;

    move-result-object v1

    const-string v2, "daily_review_times"

    invoke-virtual {v1, p1, v2}, Lim/doit/pro/api/parser/ParserUtil;->getNodeAsString(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/model/User;->setDailyReviewTime(Ljava/lang/String;)V

    .line 33
    invoke-static {}, Lim/doit/pro/api/parser/ParserUtil;->getInstance()Lim/doit/pro/api/parser/ParserUtil;

    move-result-object v1

    const-string v2, "remind"

    invoke-virtual {v1, p1, v2}, Lim/doit/pro/api/parser/ParserUtil;->getNodeAsString(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/model/User;->setRemind(Ljava/lang/String;)V

    .line 34
    invoke-static {}, Lim/doit/pro/api/parser/ParserUtil;->getInstance()Lim/doit/pro/api/parser/ParserUtil;

    move-result-object v1

    const-string v2, "setting"

    invoke-virtual {v1, p1, v2}, Lim/doit/pro/api/parser/ParserUtil;->getNodeAsString(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/model/User;->setSetting(Ljava/lang/String;)V

    .line 35
    invoke-static {}, Lim/doit/pro/api/parser/ParserUtil;->getInstance()Lim/doit/pro/api/parser/ParserUtil;

    move-result-object v1

    const-string v2, "evernote"

    invoke-virtual {v1, p1, v2}, Lim/doit/pro/api/parser/ParserUtil;->getNodeAsString(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/model/User;->setJsonEvernote(Ljava/lang/String;)V

    .line 36
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v1

    iget-object v1, v1, Lim/doit/pro/db/Persist;->userDao:Lim/doit/pro/db/persist/UserDao;

    invoke-virtual {v1, v0}, Lim/doit/pro/db/persist/UserDao;->batchCreateOrUpdate(Lim/doit/pro/model/User;)V

    .line 37
    invoke-static {v0}, Lim/doit/pro/activity/DoitApp;->setUser(Lim/doit/pro/model/User;)V

    .line 38
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->initEvernoteSession()V

    .line 39
    return-void
.end method


# virtual methods
.method public parseAndSave(Lcom/google/gson/JsonObject;Ljava/lang/String;)V
    .locals 2
    .param p1, "root"    # Lcom/google/gson/JsonObject;
    .param p2, "pathName"    # Ljava/lang/String;

    .prologue
    .line 21
    invoke-virtual {p1, p2}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 26
    :goto_0
    return-void

    .line 24
    :cond_0
    invoke-virtual {p1, p2}, Lcom/google/gson/JsonObject;->getAsJsonObject(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object v0

    .line 25
    .local v0, "userNode":Lcom/google/gson/JsonObject;
    invoke-direct {p0, v0}, Lim/doit/pro/api/parser/UserParser;->parseAndSave(Lcom/google/gson/JsonObject;)V

    goto :goto_0
.end method
