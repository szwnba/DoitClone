.class public Lim/doit/pro/api/parser/TagParser;
.super Lim/doit/pro/api/parser/BaseParser;
.source "TagParser.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lim/doit/pro/api/parser/BaseParser",
        "<",
        "Lim/doit/pro/model/Tag;",
        ">;"
    }
.end annotation


# static fields
.field private static tagParser:Lim/doit/pro/api/parser/TagParser;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Lim/doit/pro/api/parser/BaseParser;-><init>()V

    return-void
.end method

.method public static getInstance()Lim/doit/pro/api/parser/TagParser;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lim/doit/pro/api/parser/TagParser;->tagParser:Lim/doit/pro/api/parser/TagParser;

    if-nez v0, :cond_0

    .line 10
    new-instance v0, Lim/doit/pro/api/parser/TagParser;

    invoke-direct {v0}, Lim/doit/pro/api/parser/TagParser;-><init>()V

    sput-object v0, Lim/doit/pro/api/parser/TagParser;->tagParser:Lim/doit/pro/api/parser/TagParser;

    .line 12
    :cond_0
    sget-object v0, Lim/doit/pro/api/parser/TagParser;->tagParser:Lim/doit/pro/api/parser/TagParser;

    return-object v0
.end method
