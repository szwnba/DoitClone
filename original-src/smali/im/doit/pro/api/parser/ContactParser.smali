.class public Lim/doit/pro/api/parser/ContactParser;
.super Lim/doit/pro/api/parser/BaseParser;
.source "ContactParser.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lim/doit/pro/api/parser/BaseParser",
        "<",
        "Lim/doit/pro/model/Contact;",
        ">;"
    }
.end annotation


# static fields
.field private static contactParser:Lim/doit/pro/api/parser/ContactParser;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lim/doit/pro/api/parser/BaseParser;-><init>()V

    return-void
.end method

.method public static getInstance()Lim/doit/pro/api/parser/ContactParser;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lim/doit/pro/api/parser/ContactParser;->contactParser:Lim/doit/pro/api/parser/ContactParser;

    if-nez v0, :cond_0

    .line 14
    new-instance v0, Lim/doit/pro/api/parser/ContactParser;

    invoke-direct {v0}, Lim/doit/pro/api/parser/ContactParser;-><init>()V

    sput-object v0, Lim/doit/pro/api/parser/ContactParser;->contactParser:Lim/doit/pro/api/parser/ContactParser;

    .line 16
    :cond_0
    sget-object v0, Lim/doit/pro/api/parser/ContactParser;->contactParser:Lim/doit/pro/api/parser/ContactParser;

    return-object v0
.end method


# virtual methods
.method public serializeForDeleted(Lim/doit/pro/model/Contact;)Ljava/lang/String;
    .locals 4
    .param p1, "t"    # Lim/doit/pro/model/Contact;

    .prologue
    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 21
    .local v0, "temp":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "uuid"

    invoke-virtual {p1}, Lim/doit/pro/model/Contact;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    const-string v1, "deleted"

    invoke-virtual {p1}, Lim/doit/pro/model/Contact;->getDeleted()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    const-string v1, "usn"

    invoke-virtual {p1}, Lim/doit/pro/model/Contact;->getUsn()J

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
